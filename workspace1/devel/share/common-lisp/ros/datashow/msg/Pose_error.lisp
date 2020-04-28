; Auto-generated. Do not edit!


(cl:in-package datashow-msg)


;//! \htmlinclude Pose_error.msg.html

(cl:defclass <Pose_error> (roslisp-msg-protocol:ros-message)
  ((linear_e
    :reader linear_e
    :initarg :linear_e
    :type cl:float
    :initform 0.0)
   (angle_e
    :reader angle_e
    :initarg :angle_e
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pose_error (<Pose_error>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose_error>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose_error)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name datashow-msg:<Pose_error> is deprecated: use datashow-msg:Pose_error instead.")))

(cl:ensure-generic-function 'linear_e-val :lambda-list '(m))
(cl:defmethod linear_e-val ((m <Pose_error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader datashow-msg:linear_e-val is deprecated.  Use datashow-msg:linear_e instead.")
  (linear_e m))

(cl:ensure-generic-function 'angle_e-val :lambda-list '(m))
(cl:defmethod angle_e-val ((m <Pose_error>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader datashow-msg:angle_e-val is deprecated.  Use datashow-msg:angle_e instead.")
  (angle_e m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose_error>) ostream)
  "Serializes a message object of type '<Pose_error>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle_e))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose_error>) istream)
  "Deserializes a message object of type '<Pose_error>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_e) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_e) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose_error>)))
  "Returns string type for a message object of type '<Pose_error>"
  "datashow/Pose_error")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose_error)))
  "Returns string type for a message object of type 'Pose_error"
  "datashow/Pose_error")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose_error>)))
  "Returns md5sum for a message object of type '<Pose_error>"
  "11596aec3b6d70c9624c2fe748bd31cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose_error)))
  "Returns md5sum for a message object of type 'Pose_error"
  "11596aec3b6d70c9624c2fe748bd31cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose_error>)))
  "Returns full string definition for message of type '<Pose_error>"
  (cl:format cl:nil "float64 linear_e~%float64 angle_e~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose_error)))
  "Returns full string definition for message of type 'Pose_error"
  (cl:format cl:nil "float64 linear_e~%float64 angle_e~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose_error>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose_error>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose_error
    (cl:cons ':linear_e (linear_e msg))
    (cl:cons ':angle_e (angle_e msg))
))
