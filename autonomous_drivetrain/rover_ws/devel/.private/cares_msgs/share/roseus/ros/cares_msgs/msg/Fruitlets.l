;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::Fruitlets)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'Fruitlets (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::FRUITLETS")
  (make-package "CARES_MSGS::FRUITLETS"))

(in-package "ROS")
;;//! \htmlinclude Fruitlets.msg.html


(defclass cares_msgs::Fruitlets
  :super ros::object
  :slots (_fruitlets ))

(defmethod cares_msgs::Fruitlets
  (:init
   (&key
    ((:fruitlets __fruitlets) ())
    )
   (send-super :init)
   (setq _fruitlets __fruitlets)
   self)
  (:fruitlets
   (&rest __fruitlets)
   (if (keywordp (car __fruitlets))
       (send* _fruitlets __fruitlets)
     (progn
       (if __fruitlets (setq _fruitlets (car __fruitlets)))
       _fruitlets)))
  (:serialization-length
   ()
   (+
    ;; cares_msgs/Fruitlet[] _fruitlets
    (apply #'+ (send-all _fruitlets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cares_msgs/Fruitlet[] _fruitlets
     (write-long (length _fruitlets) s)
     (dolist (elem _fruitlets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cares_msgs/Fruitlet[] _fruitlets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fruitlets (let (r) (dotimes (i n) (push (instance cares_msgs::Fruitlet :init) r)) r))
     (dolist (elem- _fruitlets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cares_msgs::Fruitlets :md5sum-) "3a50bac84a40bdba57cf28160438a73e")
(setf (get cares_msgs::Fruitlets :datatype-) "cares_msgs/Fruitlets")
(setf (get cares_msgs::Fruitlets :definition-)
      "cares_msgs/Fruitlet[] fruitlets 

================================================================================
MSG: cares_msgs/Fruitlet
uint8 ID
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



(provide :cares_msgs/Fruitlets "3a50bac84a40bdba57cf28160438a73e")


