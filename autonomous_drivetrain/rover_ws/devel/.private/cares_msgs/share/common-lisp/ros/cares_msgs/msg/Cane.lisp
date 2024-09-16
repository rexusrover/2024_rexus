; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude Cane.msg.html

(cl:defclass <Cane> (roslisp-msg-protocol:ros-message)
  ((cane_id
    :reader cane_id
    :initarg :cane_id
    :type cl:fixnum
    :initform 0)
   (cane_type
    :reader cane_type
    :initarg :cane_type
    :type cl:fixnum
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
    :initform 0.0)
   (node_count
    :reader node_count
    :initarg :node_count
    :type cl:fixnum
    :initform 0)
   (node_list
    :reader node_list
    :initarg :node_list
    :type (cl:vector cares_msgs-msg:Node)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:Node :initial-element (cl:make-instance 'cares_msgs-msg:Node)))
   (origin_node
    :reader origin_node
    :initarg :origin_node
    :type cares_msgs-msg:Node
    :initform (cl:make-instance 'cares_msgs-msg:Node)))
)

(cl:defclass Cane (<Cane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<Cane> is deprecated: use cares_msgs-msg:Cane instead.")))

(cl:ensure-generic-function 'cane_id-val :lambda-list '(m))
(cl:defmethod cane_id-val ((m <Cane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:cane_id-val is deprecated.  Use cares_msgs-msg:cane_id instead.")
  (cane_id m))

(cl:ensure-generic-function 'cane_type-val :lambda-list '(m))
(cl:defmethod cane_type-val ((m <Cane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:cane_type-val is deprecated.  Use cares_msgs-msg:cane_type instead.")
  (cane_type m))

(cl:ensure-generic-function 'internode_length-val :lambda-list '(m))
(cl:defmethod internode_length-val ((m <Cane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:internode_length-val is deprecated.  Use cares_msgs-msg:internode_length instead.")
  (internode_length m))

(cl:ensure-generic-function 'internode_width-val :lambda-list '(m))
(cl:defmethod internode_width-val ((m <Cane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:internode_width-val is deprecated.  Use cares_msgs-msg:internode_width instead.")
  (internode_width m))

(cl:ensure-generic-function 'node_count-val :lambda-list '(m))
(cl:defmethod node_count-val ((m <Cane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:node_count-val is deprecated.  Use cares_msgs-msg:node_count instead.")
  (node_count m))

(cl:ensure-generic-function 'node_list-val :lambda-list '(m))
(cl:defmethod node_list-val ((m <Cane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:node_list-val is deprecated.  Use cares_msgs-msg:node_list instead.")
  (node_list m))

(cl:ensure-generic-function 'origin_node-val :lambda-list '(m))
(cl:defmethod origin_node-val ((m <Cane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:origin_node-val is deprecated.  Use cares_msgs-msg:origin_node instead.")
  (origin_node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cane>) ostream)
  "Serializes a message object of type '<Cane>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cane_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cane_type)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_count)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin_node) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cane>) istream)
  "Deserializes a message object of type '<Cane>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cane_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cane_type)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_count)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:Node))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin_node) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cane>)))
  "Returns string type for a message object of type '<Cane>"
  "cares_msgs/Cane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cane)))
  "Returns string type for a message object of type 'Cane"
  "cares_msgs/Cane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cane>)))
  "Returns md5sum for a message object of type '<Cane>"
  "990229165f52a870a5751518d654608f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cane)))
  "Returns md5sum for a message object of type 'Cane"
  "990229165f52a870a5751518d654608f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cane>)))
  "Returns full string definition for message of type '<Cane>"
  (cl:format cl:nil "uint8 cane_id~%uint8 cane_type~%~%float64 internode_length~%float64 internode_width~%uint8 node_count~%~%cares_msgs/Node[] node_list~%cares_msgs/Node origin_node~%~%================================================================================~%MSG: cares_msgs/Node~%uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cane)))
  "Returns full string definition for message of type 'Cane"
  (cl:format cl:nil "uint8 cane_id~%uint8 cane_type~%~%float64 internode_length~%float64 internode_width~%uint8 node_count~%~%cares_msgs/Node[] node_list~%cares_msgs/Node origin_node~%~%================================================================================~%MSG: cares_msgs/Node~%uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cane>))
  (cl:+ 0
     1
     1
     8
     8
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin_node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cane>))
  "Converts a ROS message object to a list"
  (cl:list 'Cane
    (cl:cons ':cane_id (cane_id msg))
    (cl:cons ':cane_type (cane_type msg))
    (cl:cons ':internode_length (internode_length msg))
    (cl:cons ':internode_width (internode_width msg))
    (cl:cons ':node_count (node_count msg))
    (cl:cons ':node_list (node_list msg))
    (cl:cons ':origin_node (origin_node msg))
))
