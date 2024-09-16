; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude CutPoint.msg.html

(cl:defclass <CutPoint> (roslisp-msg-protocol:ros-message)
  ((cut_point_a
    :reader cut_point_a
    :initarg :cut_point_a
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (cut_point_b
    :reader cut_point_b
    :initarg :cut_point_b
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass CutPoint (<CutPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CutPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CutPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<CutPoint> is deprecated: use cares_msgs-msg:CutPoint instead.")))

(cl:ensure-generic-function 'cut_point_a-val :lambda-list '(m))
(cl:defmethod cut_point_a-val ((m <CutPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:cut_point_a-val is deprecated.  Use cares_msgs-msg:cut_point_a instead.")
  (cut_point_a m))

(cl:ensure-generic-function 'cut_point_b-val :lambda-list '(m))
(cl:defmethod cut_point_b-val ((m <CutPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:cut_point_b-val is deprecated.  Use cares_msgs-msg:cut_point_b instead.")
  (cut_point_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CutPoint>) ostream)
  "Serializes a message object of type '<CutPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cut_point_a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cut_point_b) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CutPoint>) istream)
  "Deserializes a message object of type '<CutPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cut_point_a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cut_point_b) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CutPoint>)))
  "Returns string type for a message object of type '<CutPoint>"
  "cares_msgs/CutPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CutPoint)))
  "Returns string type for a message object of type 'CutPoint"
  "cares_msgs/CutPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CutPoint>)))
  "Returns md5sum for a message object of type '<CutPoint>"
  "fc7606e3618b83242d933976407b43fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CutPoint)))
  "Returns md5sum for a message object of type 'CutPoint"
  "fc7606e3618b83242d933976407b43fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CutPoint>)))
  "Returns full string definition for message of type '<CutPoint>"
  (cl:format cl:nil "geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CutPoint)))
  "Returns full string definition for message of type 'CutPoint"
  (cl:format cl:nil "geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CutPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cut_point_a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cut_point_b))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CutPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'CutPoint
    (cl:cons ':cut_point_a (cut_point_a msg))
    (cl:cons ':cut_point_b (cut_point_b msg))
))
