;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::NodeNeighbourInfo)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'NodeNeighbourInfo (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::NODENEIGHBOURINFO")
  (make-package "CARES_MSGS::NODENEIGHBOURINFO"))

(in-package "ROS")
;;//! \htmlinclude NodeNeighbourInfo.msg.html


(defclass cares_msgs::NodeNeighbourInfo
  :super ros::object
  :slots (_neighbour_id _internode_length _internode_width ))

(defmethod cares_msgs::NodeNeighbourInfo
  (:init
   (&key
    ((:neighbour_id __neighbour_id) 0)
    ((:internode_length __internode_length) 0.0)
    ((:internode_width __internode_width) 0.0)
    )
   (send-super :init)
   (setq _neighbour_id (round __neighbour_id))
   (setq _internode_length (float __internode_length))
   (setq _internode_width (float __internode_width))
   self)
  (:neighbour_id
   (&optional __neighbour_id)
   (if __neighbour_id (setq _neighbour_id __neighbour_id)) _neighbour_id)
  (:internode_length
   (&optional __internode_length)
   (if __internode_length (setq _internode_length __internode_length)) _internode_length)
  (:internode_width
   (&optional __internode_width)
   (if __internode_width (setq _internode_width __internode_width)) _internode_width)
  (:serialization-length
   ()
   (+
    ;; uint32 _neighbour_id
    4
    ;; float64 _internode_length
    8
    ;; float64 _internode_width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _neighbour_id
       (write-long _neighbour_id s)
     ;; float64 _internode_length
       (sys::poke _internode_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _internode_width
       (sys::poke _internode_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _neighbour_id
     (setq _neighbour_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _internode_length
     (setq _internode_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _internode_width
     (setq _internode_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cares_msgs::NodeNeighbourInfo :md5sum-) "3aef3f6e3c3519213f12eb0d4b43fe3e")
(setf (get cares_msgs::NodeNeighbourInfo :datatype-) "cares_msgs/NodeNeighbourInfo")
(setf (get cares_msgs::NodeNeighbourInfo :definition-)
      "uint32 neighbour_id
float64 internode_length
float64 internode_width
")



(provide :cares_msgs/NodeNeighbourInfo "3aef3f6e3c3519213f12eb0d4b43fe3e")


