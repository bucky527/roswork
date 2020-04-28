#include "ros/ros.h"
#include  "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseStamped.h"
#include "datashow/Pose_error.h"
#include "message_filters/subscriber.h"
#include "message_filters/time_synchronizer.h"

using namespace message_filters;

datashow::Pose_error Pose_error_msg;

void callback(const nav_msgs::Odometry::ConstPtr& odom_p,const geometry_msgs::PoseStamped::ConstPtr& slam_p)
{

   Pose_error_msg.linear_e=sqrt ((odom_p->pose.pose.position.x-slam_p->pose.position.x)*(odom_p->pose.pose.position.x-slam_p->pose.position.x)+(odom_p->pose.pose.position.y-slam_p->pose.position.y)*(odom_p->pose.pose.position.y-slam_p->pose.position.y));
   Pose_error_msg.angle_e=(odom_p->pose.pose.orientation.w-slam_p->pose.orientation.w);

}

int main(int argc, char **argv)
{
    /* code for main function */

   ros::init(argc,argv,"distance_error");
	ros::NodeHandle n;
    ros::Publisher error_info_pub=n.advertise<datashow::Pose_error>("/pose_error_info",10);

    Pose_error_msg.linear_e=0.0;
    Pose_error_msg.angle_e=0.0;
    ros::Rate loop_rate(10);


    message_filters::Subscriber<nav_msgs::Odometry> Odom_sub(n, "/odom", 1);
   message_filters::Subscriber<geometry_msgs::PoseStamped> slamPose_sub(n,"/slam_out_pose", 1);
   TimeSynchronizer<nav_msgs::Odometry, geometry_msgs::PoseStamped> sync(Odom_sub,slamPose_sub, 10);
    sync.registerCallback(boost::bind(&callback, _1, _2));

    //ros::spin();
    while(ros::ok())
     {
         ros::spinOnce();
         error_info_pub.publish(Pose_error_msg);
         loop_rate.sleep();
     }




    return 0;
}
