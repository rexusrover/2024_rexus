; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude ThinResult.msg.html

(cl:defclass <ThinResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (succeeded
    :reader succeeded
    :initarg :succeeded
    :type (cl:vector cares_msgs-msg:Fruitlet)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:Fruitlet :initial-element (cl:make-instance 'cares_msgs-msg:Fruitlet)))
   (failed
    :reader failed
    :initarg :failed
    :type (cl:vector cares_msgs-msg:Fruitlet)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:Fruitlet :initial-element (cl:make-instance 'cares_msgs-msg:Fruitlet))))
)

(cl:defclass ThinResult (<ThinResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThinResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThinResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<ThinResult> is deprecated: use cares_msgs-msg:ThinResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ThinResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:result-val is deprecated.  Use cares_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'succeeded-val :lambda-list '(m))
(cl:defmethod succeeded-val ((m <ThinResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:succeeded-val is deprecated.  Use cares_msgs-msg:succeeded instead.")
  (succeeded m))

(cl:ensure-generic-function 'failed-val :lambda-list '(m))
(cl:defmethod failed-val ((m <ThinResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:failed-val is deprecated.  Use cares_msgs-msg:failed instead.")
  (failed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThinResult>) ostream)
  "Serializes a message object of type '<ThinResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'succeeded))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'succeeded))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'failed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'failed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThinResult>) istream)
  "Deserializes a message object of type '<ThinResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'succeeded) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'succeeded)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:Fruitlet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'failed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'failed)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:Fruitlet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThinResult>)))
  "Returns string type for a message object of type '<ThinResult>"
  "cares_msgs/ThinResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThinResult)))
  "Returns string type for a message object of type 'ThinResult"
  "cares_msgs/ThinResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThinResult>)))
  "Returns md5sum for a message object of type '<ThinResult>"
  "8c9c3d8639eec8f454cb407630537d31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThinResult)))
  "Returns md5sum for a message object of type 'ThinResult"
  "8c9c3d8639eec8f454cb407630537d31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThinResult>)))
  "Returns full string definition for message of type '<ThinResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 result~%cares_msgs/Fruitlet[] succeeded~%cares_msgs/Fruitlet[] failed~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThinResult)))
  "Returns full string definition for message of type 'ThinResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 result~%cares_msgs/Fruitlet[] succeeded~%cares_msgs/Fruitlet[] failed~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThinResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'succeeded) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'failed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThinResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ThinResult
    (cl:cons ':result (result msg))
    (cl:cons ':succeeded (succeeded msg))
    (cl:cons ':failed (failed msg))
))
