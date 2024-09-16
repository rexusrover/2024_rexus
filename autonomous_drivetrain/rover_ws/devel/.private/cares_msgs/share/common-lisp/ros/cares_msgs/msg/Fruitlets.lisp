; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude Fruitlets.msg.html

(cl:defclass <Fruitlets> (roslisp-msg-protocol:ros-message)
  ((fruitlets
    :reader fruitlets
    :initarg :fruitlets
    :type (cl:vector cares_msgs-msg:Fruitlet)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:Fruitlet :initial-element (cl:make-instance 'cares_msgs-msg:Fruitlet))))
)

(cl:defclass Fruitlets (<Fruitlets>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fruitlets>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fruitlets)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<Fruitlets> is deprecated: use cares_msgs-msg:Fruitlets instead.")))

(cl:ensure-generic-function 'fruitlets-val :lambda-list '(m))
(cl:defmethod fruitlets-val ((m <Fruitlets>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:fruitlets-val is deprecated.  Use cares_msgs-msg:fruitlets instead.")
  (fruitlets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fruitlets>) ostream)
  "Serializes a message object of type '<Fruitlets>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fruitlets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fruitlets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fruitlets>) istream)
  "Deserializes a message object of type '<Fruitlets>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fruitlets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fruitlets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:Fruitlet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fruitlets>)))
  "Returns string type for a message object of type '<Fruitlets>"
  "cares_msgs/Fruitlets")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fruitlets)))
  "Returns string type for a message object of type 'Fruitlets"
  "cares_msgs/Fruitlets")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fruitlets>)))
  "Returns md5sum for a message object of type '<Fruitlets>"
  "3a50bac84a40bdba57cf28160438a73e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fruitlets)))
  "Returns md5sum for a message object of type 'Fruitlets"
  "3a50bac84a40bdba57cf28160438a73e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fruitlets>)))
  "Returns full string definition for message of type '<Fruitlets>"
  (cl:format cl:nil "cares_msgs/Fruitlet[] fruitlets ~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fruitlets)))
  "Returns full string definition for message of type 'Fruitlets"
  (cl:format cl:nil "cares_msgs/Fruitlet[] fruitlets ~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fruitlets>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fruitlets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fruitlets>))
  "Converts a ROS message object to a list"
  (cl:list 'Fruitlets
    (cl:cons ':fruitlets (fruitlets msg))
))
