; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude Node.msg.html

(cl:defclass <Node> (roslisp-msg-protocol:ros-message)
  ((node_id
    :reader node_id
    :initarg :node_id
    :type cl:integer
    :initform 0)
   (node_type
    :reader node_type
    :initarg :node_type
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (sequencial_neighbour_id
    :reader sequencial_neighbour_id
    :initarg :sequencial_neighbour_id
    :type cl:integer
    :initform 0)
   (neighbours
    :reader neighbours
    :initarg :neighbours
    :type (cl:vector cares_msgs-msg:NodeNeighbourInfo)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:NodeNeighbourInfo :initial-element (cl:make-instance 'cares_msgs-msg:NodeNeighbourInfo))))
)

(cl:defclass Node (<Node>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Node>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Node)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<Node> is deprecated: use cares_msgs-msg:Node instead.")))

(cl:ensure-generic-function 'node_id-val :lambda-list '(m))
(cl:defmethod node_id-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:node_id-val is deprecated.  Use cares_msgs-msg:node_id instead.")
  (node_id m))

(cl:ensure-generic-function 'node_type-val :lambda-list '(m))
(cl:defmethod node_type-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:node_type-val is deprecated.  Use cares_msgs-msg:node_type instead.")
  (node_type m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:position-val is deprecated.  Use cares_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'sequencial_neighbour_id-val :lambda-list '(m))
(cl:defmethod sequencial_neighbour_id-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:sequencial_neighbour_id-val is deprecated.  Use cares_msgs-msg:sequencial_neighbour_id instead.")
  (sequencial_neighbour_id m))

(cl:ensure-generic-function 'neighbours-val :lambda-list '(m))
(cl:defmethod neighbours-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:neighbours-val is deprecated.  Use cares_msgs-msg:neighbours instead.")
  (neighbours m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Node>)))
    "Constants for message type '<Node>"
  '((:PRIMARY_ORIGIN_NODE . 0)
    (:REGULAR_NODE . 1)
    (:MULTI_NODE . 2)
    (:UNLINKED_NODE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Node)))
    "Constants for message type 'Node"
  '((:PRIMARY_ORIGIN_NODE . 0)
    (:REGULAR_NODE . 1)
    (:MULTI_NODE . 2)
    (:UNLINKED_NODE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Node>) ostream)
  "Serializes a message object of type '<Node>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequencial_neighbour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequencial_neighbour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequencial_neighbour_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequencial_neighbour_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'neighbours))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'neighbours))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Node>) istream)
  "Deserializes a message object of type '<Node>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'node_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'node_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sequencial_neighbour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sequencial_neighbour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sequencial_neighbour_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sequencial_neighbour_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'neighbours) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'neighbours)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:NodeNeighbourInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Node>)))
  "Returns string type for a message object of type '<Node>"
  "cares_msgs/Node")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Node)))
  "Returns string type for a message object of type 'Node"
  "cares_msgs/Node")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Node>)))
  "Returns md5sum for a message object of type '<Node>"
  "e9d632a96747680a83b13f1ba6df5723")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Node)))
  "Returns md5sum for a message object of type 'Node"
  "e9d632a96747680a83b13f1ba6df5723")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Node>)))
  "Returns full string definition for message of type '<Node>"
  (cl:format cl:nil "uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Node)))
  "Returns full string definition for message of type 'Node"
  (cl:format cl:nil "uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Node>))
  (cl:+ 0
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'neighbours) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Node>))
  "Converts a ROS message object to a list"
  (cl:list 'Node
    (cl:cons ':node_id (node_id msg))
    (cl:cons ':node_type (node_type msg))
    (cl:cons ':position (position msg))
    (cl:cons ':sequencial_neighbour_id (sequencial_neighbour_id msg))
    (cl:cons ':neighbours (neighbours msg))
))
