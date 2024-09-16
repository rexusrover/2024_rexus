; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude CutResult.msg.html

(cl:defclass <CutResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (successful_cuts
    :reader successful_cuts
    :initarg :successful_cuts
    :type (cl:vector cares_msgs-msg:CutPoint)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:CutPoint :initial-element (cl:make-instance 'cares_msgs-msg:CutPoint)))
   (failed_cuts
    :reader failed_cuts
    :initarg :failed_cuts
    :type (cl:vector cares_msgs-msg:CutPoint)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:CutPoint :initial-element (cl:make-instance 'cares_msgs-msg:CutPoint))))
)

(cl:defclass CutResult (<CutResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CutResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CutResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<CutResult> is deprecated: use cares_msgs-msg:CutResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CutResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:result-val is deprecated.  Use cares_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'successful_cuts-val :lambda-list '(m))
(cl:defmethod successful_cuts-val ((m <CutResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:successful_cuts-val is deprecated.  Use cares_msgs-msg:successful_cuts instead.")
  (successful_cuts m))

(cl:ensure-generic-function 'failed_cuts-val :lambda-list '(m))
(cl:defmethod failed_cuts-val ((m <CutResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:failed_cuts-val is deprecated.  Use cares_msgs-msg:failed_cuts instead.")
  (failed_cuts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CutResult>) ostream)
  "Serializes a message object of type '<CutResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'successful_cuts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'successful_cuts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'failed_cuts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'failed_cuts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CutResult>) istream)
  "Deserializes a message object of type '<CutResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'successful_cuts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'successful_cuts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:CutPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'failed_cuts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'failed_cuts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:CutPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CutResult>)))
  "Returns string type for a message object of type '<CutResult>"
  "cares_msgs/CutResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CutResult)))
  "Returns string type for a message object of type 'CutResult"
  "cares_msgs/CutResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CutResult>)))
  "Returns md5sum for a message object of type '<CutResult>"
  "e20698bfa6757b52e96eeb2fe94ba71b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CutResult)))
  "Returns md5sum for a message object of type 'CutResult"
  "e20698bfa6757b52e96eeb2fe94ba71b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CutResult>)))
  "Returns full string definition for message of type '<CutResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 result~%cares_msgs/CutPoint[] successful_cuts~%cares_msgs/CutPoint[] failed_cuts~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CutResult)))
  "Returns full string definition for message of type 'CutResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 result~%cares_msgs/CutPoint[] successful_cuts~%cares_msgs/CutPoint[] failed_cuts~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CutResult>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'successful_cuts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'failed_cuts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CutResult>))
  "Converts a ROS message object to a list"
  (cl:list 'CutResult
    (cl:cons ':result (result msg))
    (cl:cons ':successful_cuts (successful_cuts msg))
    (cl:cons ':failed_cuts (failed_cuts msg))
))
