;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::CutPoint)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'CutPoint (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::CUTPOINT")
  (make-package "CARES_MSGS::CUTPOINT"))

(in-package "ROS")
;;//! \htmlinclude CutPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cares_msgs::CutPoint
  :super ros::object
  :slots (_cut_point_a _cut_point_b ))

(defmethod cares_msgs::CutPoint
  (:init
   (&key
    ((:cut_point_a __cut_point_a) (instance geometry_msgs::Point :init))
    ((:cut_point_b __cut_point_b) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _cut_point_a __cut_point_a)
   (setq _cut_point_b __cut_point_b)
   self)
  (:cut_point_a
   (&rest __cut_point_a)
   (if (keywordp (car __cut_point_a))
       (send* _cut_point_a __cut_point_a)
     (progn
       (if __cut_point_a (setq _cut_point_a (car __cut_point_a)))
       _cut_point_a)))
  (:cut_point_b
   (&rest __cut_point_b)
   (if (keywordp (car __cut_point_b))
       (send* _cut_point_b __cut_point_b)
     (progn
       (if __cut_point_b (setq _cut_point_b (car __cut_point_b)))
       _cut_point_b)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _cut_point_a
    (send _cut_point_a :serialization-length)
    ;; geometry_msgs/Point _cut_point_b
    (send _cut_point_b :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _cut_point_a
       (send _cut_point_a :serialize s)
     ;; geometry_msgs/Point _cut_point_b
       (send _cut_point_b :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _cut_point_a
     (send _cut_point_a :deserialize buf ptr-) (incf ptr- (send _cut_point_a :serialization-length))
   ;; geometry_msgs/Point _cut_point_b
     (send _cut_point_b :deserialize buf ptr-) (incf ptr- (send _cut_point_b :serialization-length))
   ;;
   self)
  )

(setf (get cares_msgs::CutPoint :md5sum-) "fc7606e3618b83242d933976407b43fe")
(setf (get cares_msgs::CutPoint :datatype-) "cares_msgs/CutPoint")
(setf (get cares_msgs::CutPoint :definition-)
      "geometry_msgs/Point cut_point_a
geometry_msgs/Point cut_point_b
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :cares_msgs/CutPoint "fc7606e3618b83242d933976407b43fe")


