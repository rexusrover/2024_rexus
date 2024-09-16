; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude NodeNeighbourInfo.msg.html

(cl:defclass <NodeNeighbourInfo> (roslisp-msg-protocol:ros-message)
  ((neighbour_id
    :reader neighbour_id
    :initarg :neighbour_id
    :type cl:integer
    :initform 0)
   (internode_length
    :reader internode_length
    :initarg :internode_length
    :type cl:float
    :initform 0.0)
   (internode_width
    :reader internode_width
    :initarg :internode_width
    :type cl:float
    :initform 0.0))
)

(cl:defclass NodeNeighbourInfo (<NodeNeighbourInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeNeighbourInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeNeighbourInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<NodeNeighbourInfo> is deprecated: use cares_msgs-msg:NodeNeighbourInfo instead.")))

(cl:ensure-generic-function 'neighbour_id-val :lambda-list '(m))
(cl:defmethod neighbour_id-val ((m <NodeNeighbourInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:neighbour_id-val is deprecated.  Use cares_msgs-msg:neighbour_id instead.")
  (neighbour_id m))

(cl:ensure-generic-function 'internode_length-val :lambda-list '(m))
(cl:defmethod internode_length-val ((m <NodeNeighbourInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:internode_length-val is deprecated.  Use cares_msgs-msg:internode_length instead.")
  (internode_length m))

(cl:ensure-generic-function 'internode_width-val :lambda-list '(m))
(cl:defmethod internode_width-val ((m <NodeNeighbourInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:internode_width-val is deprecated.  Use cares_msgs-msg:internode_width instead.")
  (internode_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeNeighbourInfo>) ostream)
  "Serializes a message object of type '<NodeNeighbourInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'neighbour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'neighbour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'neighbour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'neighbour_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'internode_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'internode_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeNeighbourInfo>) istream)
  "Deserializes a message object of type '<NodeNeighbourInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'neighbour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'neighbour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'neighbour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'neighbour_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'internode_length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'internode_width) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeNeighbourInfo>)))
  "Returns string type for a message object of type '<NodeNeighbourInfo>"
  "cares_msgs/NodeNeighbourInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeNeighbourInfo)))
  "Returns string type for a message object of type 'NodeNeighbourInfo"
  "cares_msgs/NodeNeighbourInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeNeighbourInfo>)))
  "Returns md5sum for a message object of type '<NodeNeighbourInfo>"
  "3aef3f6e3c3519213f12eb0d4b43fe3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeNeighbourInfo)))
  "Returns md5sum for a message object of type 'NodeNeighbourInfo"
  "3aef3f6e3c3519213f12eb0d4b43fe3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeNeighbourInfo>)))
  "Returns full string definition for message of type '<NodeNeighbourInfo>"
  (cl:format cl:nil "uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeNeighbourInfo)))
  "Returns full string definition for message of type 'NodeNeighbourInfo"
  (cl:format cl:nil "uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeNeighbourInfo>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeNeighbourInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeNeighbourInfo
    (cl:cons ':neighbour_id (neighbour_id msg))
    (cl:cons ':internode_length (internode_length msg))
    (cl:cons ':internode_width (internode_width msg))
))
