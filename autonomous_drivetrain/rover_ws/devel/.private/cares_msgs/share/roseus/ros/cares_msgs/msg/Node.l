;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::Node)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'Node (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::NODE")
  (make-package "CARES_MSGS::NODE"))

(in-package "ROS")
;;//! \htmlinclude Node.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*PRIMARY_ORIGIN_NODE*" (find-package "CARES_MSGS::NODE"))
(shadow '*PRIMARY_ORIGIN_NODE* (find-package "CARES_MSGS::NODE"))
(defconstant cares_msgs::Node::*PRIMARY_ORIGIN_NODE* 0)
(intern "*REGULAR_NODE*" (find-package "CARES_MSGS::NODE"))
(shadow '*REGULAR_NODE* (find-package "CARES_MSGS::NODE"))
(defconstant cares_msgs::Node::*REGULAR_NODE* 1)
(intern "*MULTI_NODE*" (find-package "CARES_MSGS::NODE"))
(shadow '*MULTI_NODE* (find-package "CARES_MSGS::NODE"))
(defconstant cares_msgs::Node::*MULTI_NODE* 2)
(intern "*UNLINKED_NODE*" (find-package "CARES_MSGS::NODE"))
(shadow '*UNLINKED_NODE* (find-package "CARES_MSGS::NODE"))
(defconstant cares_msgs::Node::*UNLINKED_NODE* 3)

(defun cares_msgs::Node-to-symbol (const)
  (cond
        ((= const 0) 'cares_msgs::Node::*PRIMARY_ORIGIN_NODE*)
        ((= const 1) 'cares_msgs::Node::*REGULAR_NODE*)
        ((= const 2) 'cares_msgs::Node::*MULTI_NODE*)
        ((= const 3) 'cares_msgs::Node::*UNLINKED_NODE*)
        (t nil)))

(defclass cares_msgs::Node
  :super ros::object
  :slots (_node_id _node_type _position _sequencial_neighbour_id _neighbours ))

(defmethod cares_msgs::Node
  (:init
   (&key
    ((:node_id __node_id) 0)
    ((:node_type __node_type) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:sequencial_neighbour_id __sequencial_neighbour_id) 0)
    ((:neighbours __neighbours) ())
    )
   (send-super :init)
   (setq _node_id (round __node_id))
   (setq _node_type (round __node_type))
   (setq _position __position)
   (setq _sequencial_neighbour_id (round __sequencial_neighbour_id))
   (setq _neighbours __neighbours)
   self)
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_type
   (&optional __node_type)
   (if __node_type (setq _node_type __node_type)) _node_type)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:sequencial_neighbour_id
   (&optional __sequencial_neighbour_id)
   (if __sequencial_neighbour_id (setq _sequencial_neighbour_id __sequencial_neighbour_id)) _sequencial_neighbour_id)
  (:neighbours
   (&rest __neighbours)
   (if (keywordp (car __neighbours))
       (send* _neighbours __neighbours)
     (progn
       (if __neighbours (setq _neighbours (car __neighbours)))
       _neighbours)))
  (:serialization-length
   ()
   (+
    ;; uint32 _node_id
    4
    ;; uint8 _node_type
    1
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; uint32 _sequencial_neighbour_id
    4
    ;; cares_msgs/NodeNeighbourInfo[] _neighbours
    (apply #'+ (send-all _neighbours :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _node_id
       (write-long _node_id s)
     ;; uint8 _node_type
       (write-byte _node_type s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; uint32 _sequencial_neighbour_id
       (write-long _sequencial_neighbour_id s)
     ;; cares_msgs/NodeNeighbourInfo[] _neighbours
     (write-long (length _neighbours) s)
     (dolist (elem _neighbours)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _node_id
     (setq _node_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _node_type
     (setq _node_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; uint32 _sequencial_neighbour_id
     (setq _sequencial_neighbour_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; cares_msgs/NodeNeighbourInfo[] _neighbours
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _neighbours (let (r) (dotimes (i n) (push (instance cares_msgs::NodeNeighbourInfo :init) r)) r))
     (dolist (elem- _neighbours)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cares_msgs::Node :md5sum-) "e9d632a96747680a83b13f1ba6df5723")
(setf (get cares_msgs::Node :datatype-) "cares_msgs/Node")
(setf (get cares_msgs::Node :definition-)
      "uint32 node_id

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



(provide :cares_msgs/Node "e9d632a96747680a83b13f1ba6df5723")


