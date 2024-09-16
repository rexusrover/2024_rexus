; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude Metrics.msg.html

(cl:defclass <Metrics> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:fixnum
    :initform 0)
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (calyx
    :reader calyx
    :initarg :calyx
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (Radius
    :reader Radius
    :initarg :Radius
    :type cl:float
    :initform 0.0)
   (chosen_one
    :reader chosen_one
    :initarg :chosen_one
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Metrics (<Metrics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Metrics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Metrics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<Metrics> is deprecated: use cares_msgs-msg:Metrics instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <Metrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:ID-val is deprecated.  Use cares_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <Metrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:centroid-val is deprecated.  Use cares_msgs-msg:centroid instead.")
  (centroid m))

(cl:ensure-generic-function 'calyx-val :lambda-list '(m))
(cl:defmethod calyx-val ((m <Metrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:calyx-val is deprecated.  Use cares_msgs-msg:calyx instead.")
  (calyx m))

(cl:ensure-generic-function 'Radius-val :lambda-list '(m))
(cl:defmethod Radius-val ((m <Metrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:Radius-val is deprecated.  Use cares_msgs-msg:Radius instead.")
  (Radius m))

(cl:ensure-generic-function 'chosen_one-val :lambda-list '(m))
(cl:defmethod chosen_one-val ((m <Metrics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:chosen_one-val is deprecated.  Use cares_msgs-msg:chosen_one instead.")
  (chosen_one m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Metrics>) ostream)
  "Serializes a message object of type '<Metrics>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'calyx) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'chosen_one) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Metrics>) istream)
  "Deserializes a message object of type '<Metrics>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'calyx) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'chosen_one) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Metrics>)))
  "Returns string type for a message object of type '<Metrics>"
  "cares_msgs/Metrics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Metrics)))
  "Returns string type for a message object of type 'Metrics"
  "cares_msgs/Metrics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Metrics>)))
  "Returns md5sum for a message object of type '<Metrics>"
  "50ad2f167aef563f731444e44444c393")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Metrics)))
  "Returns md5sum for a message object of type 'Metrics"
  "50ad2f167aef563f731444e44444c393")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Metrics>)))
  "Returns full string definition for message of type '<Metrics>"
  (cl:format cl:nil "uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 Radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Metrics)))
  "Returns full string definition for message of type 'Metrics"
  (cl:format cl:nil "uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 Radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Metrics>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'calyx))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Metrics>))
  "Converts a ROS message object to a list"
  (cl:list 'Metrics
    (cl:cons ':ID (ID msg))
    (cl:cons ':centroid (centroid msg))
    (cl:cons ':calyx (calyx msg))
    (cl:cons ':Radius (Radius msg))
    (cl:cons ':chosen_one (chosen_one msg))
))
