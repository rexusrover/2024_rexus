;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::Vine)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'Vine (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::VINE")
  (make-package "CARES_MSGS::VINE"))

(in-package "ROS")
;;//! \htmlinclude Vine.msg.html


(defclass cares_msgs::Vine
  :super ros::object
  :slots (_cane_list ))

(defmethod cares_msgs::Vine
  (:init
   (&key
    ((:cane_list __cane_list) ())
    )
   (send-super :init)
   (setq _cane_list __cane_list)
   self)
  (:cane_list
   (&rest __cane_list)
   (if (keywordp (car __cane_list))
       (send* _cane_list __cane_list)
     (progn
       (if __cane_list (setq _cane_list (car __cane_list)))
       _cane_list)))
  (:serialization-length
   ()
   (+
    ;; cares_msgs/Cane[] _cane_list
    (apply #'+ (send-all _cane_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cares_msgs/Cane[] _cane_list
     (write-long (length _cane_list) s)
     (dolist (elem _cane_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cares_msgs/Cane[] _cane_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cane_list (let (r) (dotimes (i n) (push (instance cares_msgs::Cane :init) r)) r))
     (dolist (elem- _cane_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cares_msgs::Vine :md5sum-) "12a641acbf6a778d8aed58c6eaa43379")
(setf (get cares_msgs::Vine :datatype-) "cares_msgs/Vine")
(setf (get cares_msgs::Vine :definition-)
      "cares_msgs/Cane[] cane_list
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
")



(provide :cares_msgs/Vine "12a641acbf6a778d8aed58c6eaa43379")


