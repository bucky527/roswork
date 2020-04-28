;; Auto-generated. Do not edit!


(when (boundp 'datashow::Pose_error)
  (if (not (find-package "DATASHOW"))
    (make-package "DATASHOW"))
  (shadow 'Pose_error (find-package "DATASHOW")))
(unless (find-package "DATASHOW::POSE_ERROR")
  (make-package "DATASHOW::POSE_ERROR"))

(in-package "ROS")
;;//! \htmlinclude Pose_error.msg.html


(defclass datashow::Pose_error
  :super ros::object
  :slots (_linear_e _angle_e ))

(defmethod datashow::Pose_error
  (:init
   (&key
    ((:linear_e __linear_e) 0.0)
    ((:angle_e __angle_e) 0.0)
    )
   (send-super :init)
   (setq _linear_e (float __linear_e))
   (setq _angle_e (float __angle_e))
   self)
  (:linear_e
   (&optional __linear_e)
   (if __linear_e (setq _linear_e __linear_e)) _linear_e)
  (:angle_e
   (&optional __angle_e)
   (if __angle_e (setq _angle_e __angle_e)) _angle_e)
  (:serialization-length
   ()
   (+
    ;; float64 _linear_e
    8
    ;; float64 _angle_e
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _linear_e
       (sys::poke _linear_e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_e
       (sys::poke _angle_e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _linear_e
     (setq _linear_e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_e
     (setq _angle_e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get datashow::Pose_error :md5sum-) "11596aec3b6d70c9624c2fe748bd31cb")
(setf (get datashow::Pose_error :datatype-) "datashow/Pose_error")
(setf (get datashow::Pose_error :definition-)
      "float64 linear_e
float64 angle_e
")



(provide :datashow/Pose_error "11596aec3b6d70c9624c2fe748bd31cb")


