;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::MappingFeedback)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'MappingFeedback (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::MAPPINGFEEDBACK")
  (make-package "CARES_MSGS::MAPPINGFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude MappingFeedback.msg.html


(intern "*INIT*" (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(shadow '*INIT* (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(defconstant cares_msgs::MappingFeedback::*INIT* 0)
(intern "*SCANNING*" (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(shadow '*SCANNING* (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(defconstant cares_msgs::MappingFeedback::*SCANNING* 1)
(intern "*EXTRACTING*" (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(shadow '*EXTRACTING* (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(defconstant cares_msgs::MappingFeedback::*EXTRACTING* 2)
(intern "*ACTUATING*" (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(shadow '*ACTUATING* (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(defconstant cares_msgs::MappingFeedback::*ACTUATING* 3)
(intern "*STOPPING*" (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(shadow '*STOPPING* (find-package "CARES_MSGS::MAPPINGFEEDBACK"))
(defconstant cares_msgs::MappingFeedback::*STOPPING* 4)

(defun cares_msgs::MappingFeedback-to-symbol (const)
  (cond
        ((= const 0) 'cares_msgs::MappingFeedback::*INIT*)
        ((= const 1) 'cares_msgs::MappingFeedback::*SCANNING*)
        ((= const 2) 'cares_msgs::MappingFeedback::*EXTRACTING*)
        ((= const 3) 'cares_msgs::MappingFeedback::*ACTUATING*)
        ((= const 4) 'cares_msgs::MappingFeedback::*STOPPING*)
        (t nil)))

(defclass cares_msgs::MappingFeedback
  :super ros::object
  :slots (_status _scanning_feedback _metric_feedback _count _total ))

(defmethod cares_msgs::MappingFeedback
  (:init
   (&key
    ((:status __status) 0)
    ((:scanning_feedback __scanning_feedback) ())
    ((:metric_feedback __metric_feedback) ())
    ((:count __count) 0)
    ((:total __total) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _scanning_feedback __scanning_feedback)
   (setq _metric_feedback __metric_feedback)
   (setq _count (round __count))
   (setq _total (round __total))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:scanning_feedback
   (&rest __scanning_feedback)
   (if (keywordp (car __scanning_feedback))
       (send* _scanning_feedback __scanning_feedback)
     (progn
       (if __scanning_feedback (setq _scanning_feedback (car __scanning_feedback)))
       _scanning_feedback)))
  (:metric_feedback
   (&rest __metric_feedback)
   (if (keywordp (car __metric_feedback))
       (send* _metric_feedback __metric_feedback)
     (progn
       (if __metric_feedback (setq _metric_feedback (car __metric_feedback)))
       _metric_feedback)))
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; cares_msgs/ScanningFeedback[] _scanning_feedback
    (apply #'+ (send-all _scanning_feedback :serialization-length)) 4
    ;; cares_msgs/MetricExtractionFeedback[] _metric_feedback
    (apply #'+ (send-all _metric_feedback :serialization-length)) 4
    ;; uint8 _count
    1
    ;; uint8 _total
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; cares_msgs/ScanningFeedback[] _scanning_feedback
     (write-long (length _scanning_feedback) s)
     (dolist (elem _scanning_feedback)
       (send elem :serialize s)
       )
     ;; cares_msgs/MetricExtractionFeedback[] _metric_feedback
     (write-long (length _metric_feedback) s)
     (dolist (elem _metric_feedback)
       (send elem :serialize s)
       )
     ;; uint8 _count
       (write-byte _count s)
     ;; uint8 _total
       (write-byte _total s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; cares_msgs/ScanningFeedback[] _scanning_feedback
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scanning_feedback (let (r) (dotimes (i n) (push (instance cares_msgs::ScanningFeedback :init) r)) r))
     (dolist (elem- _scanning_feedback)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; cares_msgs/MetricExtractionFeedback[] _metric_feedback
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _metric_feedback (let (r) (dotimes (i n) (push (instance cares_msgs::MetricExtractionFeedback :init) r)) r))
     (dolist (elem- _metric_feedback)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _total
     (setq _total (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get cares_msgs::MappingFeedback :md5sum-) "6ae1ba1e50a20d1a52a1745cc6000ec6")
(setf (get cares_msgs::MappingFeedback :datatype-) "cares_msgs/MappingFeedback")
(setf (get cares_msgs::MappingFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback

#Enumeration
uint8 INIT       = 0
uint8 SCANNING   = 1
uint8 EXTRACTING = 2
uint8 ACTUATING  = 3
uint8 STOPPING   = 4
#Task status
uint8 status

cares_msgs/ScanningFeedback[] scanning_feedback
cares_msgs/MetricExtractionFeedback[] metric_feedback

uint8 count
uint8 total


================================================================================
MSG: cares_msgs/ScanningFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback

#Enumeration
uint8 INIT       = 0
uint8 MARKER     = 1
uint8 CAPTURING  = 2
uint8 ERROR      = 3
#Task status
uint8 status

#Enumeration
uint8 MOVING  = 4
uint8 IDLE    = 5
uint8 arm_status


================================================================================
MSG: cares_msgs/MetricExtractionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback definition
#Enumeration
uint8 CAPTURING = 0
uint8 MEASURING = 1
#Task status
uint8 status

uint8 processed
uint8 queued


")



(provide :cares_msgs/MappingFeedback "6ae1ba1e50a20d1a52a1745cc6000ec6")


