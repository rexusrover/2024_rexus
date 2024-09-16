; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude Vine.msg.html

(cl:defclass <Vine> (roslisp-msg-protocol:ros-message)
  ((cane_list
    :reader cane_list
    :initarg :cane_list
    :type (cl:vector cares_msgs-msg:Cane)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:Cane :initial-element (cl:make-instance 'cares_msgs-msg:Cane))))
)

(cl:defclass Vine (<Vine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<Vine> is deprecated: use cares_msgs-msg:Vine instead.")))

(cl:ensure-generic-function 'cane_list-val :lambda-list '(m))
(cl:defmethod cane_list-val ((m <Vine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:cane_list-val is deprecated.  Use cares_msgs-msg:cane_list instead.")
  (cane_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vine>) ostream)
  "Serializes a message object of type '<Vine>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cane_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cane_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vine>) istream)
  "Deserializes a message object of type '<Vine>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cane_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cane_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:Cane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vine>)))
  "Returns string type for a message object of type '<Vine>"
  "cares_msgs/Vine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vine)))
  "Returns string type for a message object of type 'Vine"
  "cares_msgs/Vine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vine>)))
  "Returns md5sum for a message object of type '<Vine>"
  "12a641acbf6a778d8aed58c6eaa43379")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vine)))
  "Returns md5sum for a message object of type 'Vine"
  "12a641acbf6a778d8aed58c6eaa43379")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vine>)))
  "Returns full string definition for message of type '<Vine>"
  (cl:format cl:nil "cares_msgs/Cane[] cane_list~%================================================================================~%MSG: cares_msgs/Cane~%uint8 cane_id~%uint8 cane_type~%~%float64 internode_length~%float64 internode_width~%uint8 node_count~%~%cares_msgs/Node[] node_list~%cares_msgs/Node origin_node~%~%================================================================================~%MSG: cares_msgs/Node~%uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vine)))
  "Returns full string definition for message of type 'Vine"
  (cl:format cl:nil "cares_msgs/Cane[] cane_list~%================================================================================~%MSG: cares_msgs/Cane~%uint8 cane_id~%uint8 cane_type~%~%float64 internode_length~%float64 internode_width~%uint8 node_count~%~%cares_msgs/Node[] node_list~%cares_msgs/Node origin_node~%~%================================================================================~%MSG: cares_msgs/Node~%uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vine>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cane_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vine>))
  "Converts a ROS message object to a list"
  (cl:list 'Vine
    (cl:cons ':cane_list (cane_list msg))
))
