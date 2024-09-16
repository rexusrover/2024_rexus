; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude MetricExtractionResult.msg.html

(cl:defclass <MetricExtractionResult> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (vine
    :reader vine
    :initarg :vine
    :type cares_msgs-msg:Vine
    :initform (cl:make-instance 'cares_msgs-msg:Vine))
   (fruitlets
    :reader fruitlets
    :initarg :fruitlets
    :type cares_msgs-msg:Fruitlets
    :initform (cl:make-instance 'cares_msgs-msg:Fruitlets))
   (point_cloud
    :reader point_cloud
    :initarg :point_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass MetricExtractionResult (<MetricExtractionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MetricExtractionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MetricExtractionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<MetricExtractionResult> is deprecated: use cares_msgs-msg:MetricExtractionResult instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MetricExtractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:result-val is deprecated.  Use cares_msgs-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'vine-val :lambda-list '(m))
(cl:defmethod vine-val ((m <MetricExtractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:vine-val is deprecated.  Use cares_msgs-msg:vine instead.")
  (vine m))

(cl:ensure-generic-function 'fruitlets-val :lambda-list '(m))
(cl:defmethod fruitlets-val ((m <MetricExtractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:fruitlets-val is deprecated.  Use cares_msgs-msg:fruitlets instead.")
  (fruitlets m))

(cl:ensure-generic-function 'point_cloud-val :lambda-list '(m))
(cl:defmethod point_cloud-val ((m <MetricExtractionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:point_cloud-val is deprecated.  Use cares_msgs-msg:point_cloud instead.")
  (point_cloud m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MetricExtractionResult>) ostream)
  "Serializes a message object of type '<MetricExtractionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vine) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fruitlets) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point_cloud) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MetricExtractionResult>) istream)
  "Deserializes a message object of type '<MetricExtractionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vine) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fruitlets) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point_cloud) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MetricExtractionResult>)))
  "Returns string type for a message object of type '<MetricExtractionResult>"
  "cares_msgs/MetricExtractionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MetricExtractionResult)))
  "Returns string type for a message object of type 'MetricExtractionResult"
  "cares_msgs/MetricExtractionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MetricExtractionResult>)))
  "Returns md5sum for a message object of type '<MetricExtractionResult>"
  "c2a9ce6ac04d25549c31e0c74e3f8c2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MetricExtractionResult)))
  "Returns md5sum for a message object of type 'MetricExtractionResult"
  "c2a9ce6ac04d25549c31e0c74e3f8c2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MetricExtractionResult>)))
  "Returns full string definition for message of type '<MetricExtractionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 result~%cares_msgs/Vine vine~%cares_msgs/Fruitlets fruitlets~%sensor_msgs/PointCloud2 point_cloud~%~%================================================================================~%MSG: cares_msgs/Vine~%cares_msgs/Cane[] cane_list~%================================================================================~%MSG: cares_msgs/Cane~%uint8 cane_id~%uint8 cane_type~%~%float64 internode_length~%float64 internode_width~%uint8 node_count~%~%cares_msgs/Node[] node_list~%cares_msgs/Node origin_node~%~%================================================================================~%MSG: cares_msgs/Node~%uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%================================================================================~%MSG: cares_msgs/Fruitlets~%cares_msgs/Fruitlet[] fruitlets ~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MetricExtractionResult)))
  "Returns full string definition for message of type 'MetricExtractionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 result~%cares_msgs/Vine vine~%cares_msgs/Fruitlets fruitlets~%sensor_msgs/PointCloud2 point_cloud~%~%================================================================================~%MSG: cares_msgs/Vine~%cares_msgs/Cane[] cane_list~%================================================================================~%MSG: cares_msgs/Cane~%uint8 cane_id~%uint8 cane_type~%~%float64 internode_length~%float64 internode_width~%uint8 node_count~%~%cares_msgs/Node[] node_list~%cares_msgs/Node origin_node~%~%================================================================================~%MSG: cares_msgs/Node~%uint32 node_id~%~%#Node Type~%uint8  PRIMARY_ORIGIN_NODE = 0~%uint8  REGULAR_NODE = 1~%uint8  MULTI_NODE = 2~%uint8  UNLINKED_NODE = 3~%uint8  node_type~%~%geometry_msgs/Point position~%~%uint32 sequencial_neighbour_id~%cares_msgs/NodeNeighbourInfo[] neighbours~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/NodeNeighbourInfo~%uint32 neighbour_id~%float64 internode_length~%float64 internode_width~%================================================================================~%MSG: cares_msgs/Fruitlets~%cares_msgs/Fruitlet[] fruitlets ~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MetricExtractionResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vine))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fruitlets))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point_cloud))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MetricExtractionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MetricExtractionResult
    (cl:cons ':result (result msg))
    (cl:cons ':vine (vine msg))
    (cl:cons ':fruitlets (fruitlets msg))
    (cl:cons ':point_cloud (point_cloud msg))
))
