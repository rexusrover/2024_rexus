;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::Cane)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'Cane (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::CANE")
  (make-package "CARES_MSGS::CANE"))

(in-package "ROS")
;;//! \htmlinclude Cane.msg.html


(defclass cares_msgs::Cane
  :super ros::object
  :slots (_cane_id _cane_type _internode_length _internode_width _node_count _node_list _origin_node ))

(defmethod cares_msgs::Cane
  (:init
   (&key
    ((:cane_id __cane_id) 0)
    ((:cane_type __cane_type) 0)
    ((:internode_length __internode_length) 0.0)
    ((:internode_width __internode_width) 0.0)
    ((:node_count __node_count) 0)
    ((:node_list __node_list) ())
    ((:origin_node __origin_node) (instance cares_msgs::Node :init))
    )
   (send-super :init)
   (setq _cane_id (round __cane_id))
   (setq _cane_type (round __cane_type))
   (setq _internode_length (float __internode_length))
   (setq _internode_width (float __internode_width))
   (setq _node_count (round __node_count))
   (setq _node_list __node_list)
   (setq _origin_node __origin_node)
   self)
  (:cane_id
   (&optional __cane_id)
   (if __cane_id (setq _cane_id __cane_id)) _cane_id)
  (:cane_type
   (&optional __cane_type)
   (if __cane_type (setq _cane_type __cane_type)) _cane_type)
  (:internode_length
   (&optional __internode_length)
   (if __internode_length (setq _internode_length __internode_length)) _internode_length)
  (:internode_width
   (&optional __internode_width)
   (if __internode_width (setq _internode_width __internode_width)) _internode_width)
  (:node_count
   (&optional __node_count)
   (if __node_count (setq _node_count __node_count)) _node_count)
  (:node_list
   (&rest __node_list)
   (if (keywordp (car __node_list))
       (send* _node_list __node_list)
     (progn
       (if __node_list (setq _node_list (car __node_list)))
       _node_list)))
  (:origin_node
   (&rest __origin_node)
   (if (keywordp (car __origin_node))
       (send* _origin_node __origin_node)
     (progn
       (if __origin_node (setq _origin_node (car __origin_node)))
       _origin_node)))
  (:serialization-length
   ()
   (+
    ;; uint8 _cane_id
    1
    ;; uint8 _cane_type
    1
    ;; float64 _internode_length
    8
    ;; float64 _internode_width
    8
    ;; uint8 _node_count
    1
    ;; cares_msgs/Node[] _node_list
    (apply #'+ (send-all _node_list :serialization-length)) 4
    ;; cares_msgs/Node _origin_node
    (send _origin_node :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cane_id
       (write-byte _cane_id s)
     ;; uint8 _cane_type
       (write-byte _cane_type s)
     ;; float64 _internode_length
       (sys::poke _internode_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _internode_width
       (sys::poke _internode_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _node_count
       (write-byte _node_count s)
     ;; cares_msgs/Node[] _node_list
     (write-long (length _node_list) s)
     (dolist (elem _node_list)
       (send elem :serialize s)
       )
     ;; cares_msgs/Node _origin_node
       (send _origin_node :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cane_id
     (setq _cane_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cane_type
     (setq _cane_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _internode_length
     (setq _internode_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _internode_width
     (setq _internode_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _node_count
     (setq _node_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; cares_msgs/Node[] _node_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_list (let (r) (dotimes (i n) (push (instance cares_msgs::Node :init) r)) r))
     (dolist (elem- _node_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; cares_msgs/Node _origin_node
     (send _origin_node :deserialize buf ptr-) (incf ptr- (send _origin_node :serialization-length))
   ;;
   self)
  )

(setf (get cares_msgs::Cane :md5sum-) "990229165f52a870a5751518d654608f")
(setf (get cares_msgs::Cane :datatype-) "cares_msgs/Cane")
(setf (get cares_msgs::Cane :definition-)
      "uint8 cane_id
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
")



(provide :cares_msgs/Cane "990229165f52a870a5751518d654608f")


