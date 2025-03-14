;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::MergeExtractor)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'MergeExtractor (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::MERGEEXTRACTOR")
  (make-package "CARES_MSGS::MERGEEXTRACTOR"))
(unless (find-package "CARES_MSGS::MERGEEXTRACTORREQUEST")
  (make-package "CARES_MSGS::MERGEEXTRACTORREQUEST"))
(unless (find-package "CARES_MSGS::MERGEEXTRACTORRESPONSE")
  (make-package "CARES_MSGS::MERGEEXTRACTORRESPONSE"))

(in-package "ROS")





(defclass cares_msgs::MergeExtractorRequest
  :super ros::object
  :slots (_extractor_result ))

(defmethod cares_msgs::MergeExtractorRequest
  (:init
   (&key
    ((:extractor_result __extractor_result) (instance cares_msgs::MetricExtractionResult :init))
    )
   (send-super :init)
   (setq _extractor_result __extractor_result)
   self)
  (:extractor_result
   (&rest __extractor_result)
   (if (keywordp (car __extractor_result))
       (send* _extractor_result __extractor_result)
     (progn
       (if __extractor_result (setq _extractor_result (car __extractor_result)))
       _extractor_result)))
  (:serialization-length
   ()
   (+
    ;; cares_msgs/MetricExtractionResult _extractor_result
    (send _extractor_result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cares_msgs/MetricExtractionResult _extractor_result
       (send _extractor_result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cares_msgs/MetricExtractionResult _extractor_result
     (send _extractor_result :deserialize buf ptr-) (incf ptr- (send _extractor_result :serialization-length))
   ;;
   self)
  )

(defclass cares_msgs::MergeExtractorResponse
  :super ros::object
  :slots (_result ))

(defmethod cares_msgs::MergeExtractorResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cares_msgs::MergeExtractor
  :super ros::object
  :slots ())

(setf (get cares_msgs::MergeExtractor :md5sum-) "c7a1e353d0883bc00bd3ab6241f5d431")
(setf (get cares_msgs::MergeExtractor :datatype-) "cares_msgs/MergeExtractor")
(setf (get cares_msgs::MergeExtractor :request) cares_msgs::MergeExtractorRequest)
(setf (get cares_msgs::MergeExtractor :response) cares_msgs::MergeExtractorResponse)

(defmethod cares_msgs::MergeExtractorRequest
  (:response () (instance cares_msgs::MergeExtractorResponse :init)))

(setf (get cares_msgs::MergeExtractorRequest :md5sum-) "c7a1e353d0883bc00bd3ab6241f5d431")
(setf (get cares_msgs::MergeExtractorRequest :datatype-) "cares_msgs/MergeExtractorRequest")
(setf (get cares_msgs::MergeExtractorRequest :definition-)
      "cares_msgs/MetricExtractionResult extractor_result

================================================================================
MSG: cares_msgs/MetricExtractionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
uint8 result
cares_msgs/Vine vine
cares_msgs/Fruitlets fruitlets
sensor_msgs/PointCloud2 point_cloud

================================================================================
MSG: cares_msgs/Vine
cares_msgs/Cane[] cane_list
================================================================================
MSG: cares_msgs/Cane
uint8 cane_id
uint8 cane_type

float64 internode_length
float64 internode_width
uint8 node_count

cares_msgs/Node[] node_list
cares_msgs/Node origin_node

================================================================================
MSG: cares_msgs/Node
uint32 node_id

#Node Type
uint8  PRIMARY_ORIGIN_NODE = 0
uint8  REGULAR_NODE = 1
uint8  MULTI_NODE = 2
uint8  UNLINKED_NODE = 3
uint8  node_type

geometry_msgs/Point position

uint32 sequencial_neighbour_id
cares_msgs/NodeNeighbourInfo[] neighbours


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: cares_msgs/NodeNeighbourInfo
uint32 neighbour_id
float64 internode_length
float64 internode_width
================================================================================
MSG: cares_msgs/Fruitlets
cares_msgs/Fruitlet[] fruitlets 

================================================================================
MSG: cares_msgs/Fruitlet
uint8 ID
geometry_msgs/Point centroid
geometry_msgs/Point calyx 
float32 radius
bool chosen_one

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
bool result
")

(setf (get cares_msgs::MergeExtractorResponse :md5sum-) "c7a1e353d0883bc00bd3ab6241f5d431")
(setf (get cares_msgs::MergeExtractorResponse :datatype-) "cares_msgs/MergeExtractorResponse")
(setf (get cares_msgs::MergeExtractorResponse :definition-)
      "cares_msgs/MetricExtractionResult extractor_result

================================================================================
MSG: cares_msgs/MetricExtractionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
uint8 result
cares_msgs/Vine vine
cares_msgs/Fruitlets fruitlets
sensor_msgs/PointCloud2 point_cloud

================================================================================
MSG: cares_msgs/Vine
cares_msgs/Cane[] cane_list
================================================================================
MSG: cares_msgs/Cane
uint8 cane_id
uint8 cane_type

float64 internode_length
float64 internode_width
uint8 node_count

cares_msgs/Node[] node_list
cares_msgs/Node origin_node

================================================================================
MSG: cares_msgs/Node
uint32 node_id

#Node Type
uint8  PRIMARY_ORIGIN_NODE = 0
uint8  REGULAR_NODE = 1
uint8  MULTI_NODE = 2
uint8  UNLINKED_NODE = 3
uint8  node_type

geometry_msgs/Point position

uint32 sequencial_neighbour_id
cares_msgs/NodeNeighbourInfo[] neighbours


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: cares_msgs/NodeNeighbourInfo
uint32 neighbour_id
float64 internode_length
float64 internode_width
================================================================================
MSG: cares_msgs/Fruitlets
cares_msgs/Fruitlet[] fruitlets 

================================================================================
MSG: cares_msgs/Fruitlet
uint8 ID
geometry_msgs/Point centroid
geometry_msgs/Point calyx 
float32 radius
bool chosen_one

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
bool result
")



(provide :cares_msgs/MergeExtractor "c7a1e353d0883bc00bd3ab6241f5d431")


