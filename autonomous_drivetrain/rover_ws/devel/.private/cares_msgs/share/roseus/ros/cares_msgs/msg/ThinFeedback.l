;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::ThinFeedback)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'ThinFeedback (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::THINFEEDBACK")
  (make-package "CARES_MSGS::THINFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ThinFeedback.msg.html


(intern "*INIT*" (find-package "CARES_MSGS::THINFEEDBACK"))
(shadow '*INIT* (find-package "CARES_MSGS::THINFEEDBACK"))
(defconstant cares_msgs::ThinFeedback::*INIT* 0)
(intern "*PROCESSING_THIN_POINTS*" (find-package "CARES_MSGS::THINFEEDBACK"))
(shadow '*PROCESSING_THIN_POINTS* (find-package "CARES_MSGS::THINFEEDBACK"))
(defconstant cares_msgs::ThinFeedback::*PROCESSING_THIN_POINTS* 1)
(intern "*THINNING_FRUITLET*" (find-package "CARES_MSGS::THINFEEDBACK"))
(shadow '*THINNING_FRUITLET* (find-package "CARES_MSGS::THINFEEDBACK"))
(defconstant cares_msgs::ThinFeedback::*THINNING_FRUITLET* 2)
(intern "*STOPPING*" (find-package "CARES_MSGS::THINFEEDBACK"))
(shadow '*STOPPING* (find-package "CARES_MSGS::THINFEEDBACK"))
(defconstant cares_msgs::ThinFeedback::*STOPPING* 3)
(intern "*TRANSITIONING*" (find-package "CARES_MSGS::THINFEEDBACK"))
(shadow '*TRANSITIONING* (find-package "CARES_MSGS::THINFEEDBACK"))
(defconstant cares_msgs::ThinFeedback::*TRANSITIONING* 4)

(defun cares_msgs::ThinFeedback-to-symbol (const)
  (cond
        ((= const 0) 'cares_msgs::ThinFeedback::*INIT*)
        ((= const 1) 'cares_msgs::ThinFeedback::*PROCESSING_THIN_POINTS*)
        ((= const 2) 'cares_msgs::ThinFeedback::*THINNING_FRUITLET*)
        ((= const 3) 'cares_msgs::ThinFeedback::*STOPPING*)
        ((= const 4) 'cares_msgs::ThinFeedback::*TRANSITIONING*)
        (t nil)))

(defclass cares_msgs::ThinFeedback
  :super ros::object
  :slots (_count _total _status _actuation_feedback ))

(defmethod cares_msgs::ThinFeedback
  (:init
   (&key
    ((:count __count) 0)
    ((:total __total) 0)
    ((:status __status) 0)
    ((:actuation_feedback __actuation_feedback) (instance cares_msgs::ActuationFeedback :init))
    )
   (send-super :init)
   (setq _count (round __count))
   (setq _total (round __total))
   (setq _status (round __status))
   (setq _actuation_feedback __actuation_feedback)
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:actuation_feedback
   (&rest __actuation_feedback)
   (if (keywordp (car __actuation_feedback))
       (send* _actuation_feedback __actuation_feedback)
     (progn
       (if __actuation_feedback (setq _actuation_feedback (car __actuation_feedback)))
       _actuation_feedback)))
  (:serialization-length
   ()
   (+
    ;; uint8 _count
    1
    ;; uint8 _total
    1
    ;; uint8 _status
    1
    ;; cares_msgs/ActuationFeedback _actuation_feedback
    (send _actuation_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _count
       (write-byte _count s)
     ;; uint8 _total
       (write-byte _total s)
     ;; uint8 _status
       (write-byte _status s)
     ;; cares_msgs/ActuationFeedback _actuation_feedback
       (send _actuation_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _total
     (setq _total (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; cares_msgs/ActuationFeedback _actuation_feedback
     (send _actuation_feedback :deserialize buf ptr-) (incf ptr- (send _actuation_feedback :serialization-length))
   ;;
   self)
  )

(setf (get cares_msgs::ThinFeedback :md5sum-) "2bdcbbbd3184582bccd9e58d21052bb2")
(setf (get cares_msgs::ThinFeedback :datatype-) "cares_msgs/ThinFeedback")
(setf (get cares_msgs::ThinFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint8 count
uint8 total

uint8 INIT = 0
uint8 PROCESSING_THIN_POINTS = 1
uint8 THINNING_FRUITLET = 2
uint8 STOPPING = 3
uint8 TRANSITIONING = 4

uint8 status
cares_msgs/ActuationFeedback actuation_feedback


================================================================================
MSG: cares_msgs/ActuationFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
uint8 INIT       = 0
uint8 MOVING_TO_APPROACH = 1
uint8 MOVING_TO_TARGET   = 3
uint8 MOVING_BACK_TO_APPROACH   = 4
uint8 ACTUATING          = 5
uint8 STOPPING           = 6

uint8 feedback


")



(provide :cares_msgs/ThinFeedback "2bdcbbbd3184582bccd9e58d21052bb2")


