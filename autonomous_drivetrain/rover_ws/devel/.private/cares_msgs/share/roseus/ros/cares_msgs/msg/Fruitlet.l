;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::Fruitlet)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'Fruitlet (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::FRUITLET")
  (make-package "CARES_MSGS::FRUITLET"))

(in-package "ROS")
;;//! \htmlinclude Fruitlet.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cares_msgs::Fruitlet
  :super ros::object
  :slots (_ID _centroid _calyx _radius _chosen_one ))

(defmethod cares_msgs::Fruitlet
  (:init
   (&key
    ((:ID __ID) 0)
    ((:centroid __centroid) (instance geometry_msgs::Point :init))
    ((:calyx __calyx) (instance geometry_msgs::Point :init))
    ((:radius __radius) 0.0)
    ((:chosen_one __chosen_one) nil)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _centroid __centroid)
   (setq _calyx __calyx)
   (setq _radius (float __radius))
   (setq _chosen_one __chosen_one)
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:calyx
   (&rest __calyx)
   (if (keywordp (car __calyx))
       (send* _calyx __calyx)
     (progn
       (if __calyx (setq _calyx (car __calyx)))
       _calyx)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:chosen_one
   (&optional (__chosen_one :null))
   (if (not (eq __chosen_one :null)) (setq _chosen_one __chosen_one)) _chosen_one)
  (:serialization-length
   ()
   (+
    ;; uint8 _ID
    1
    ;; geometry_msgs/Point _centroid
    (send _centroid :serialization-length)
    ;; geometry_msgs/Point _calyx
    (send _calyx :serialization-length)
    ;; float32 _radius
    4
    ;; bool _chosen_one
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ID
       (write-byte _ID s)
     ;; geometry_msgs/Point _centroid
       (send _centroid :serialize s)
     ;; geometry_msgs/Point _calyx
       (send _calyx :serialize s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _chosen_one
       (if _chosen_one (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ID
     (setq _ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; geometry_msgs/Point _calyx
     (send _calyx :deserialize buf ptr-) (incf ptr- (send _calyx :serialization-length))
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _chosen_one
     (setq _chosen_one (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cares_msgs::Fruitlet :md5sum-) "d6af9bf7da42bdf2fe66980eb97b7b05")
(setf (get cares_msgs::Fruitlet :datatype-) "cares_msgs/Fruitlet")
(setf (get cares_msgs::Fruitlet :definition-)
      "uint8 ID
geometry_msgs/Point centroid
geometry_msgs/Point calyx 
float32 radius
bool chosen_one

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :cares_msgs/Fruitlet "d6af9bf7da42bdf2fe66980eb97b7b05")


