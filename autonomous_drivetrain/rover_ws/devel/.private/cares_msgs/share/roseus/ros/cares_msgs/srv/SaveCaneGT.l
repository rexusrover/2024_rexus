;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::SaveCaneGT)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'SaveCaneGT (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::SAVECANEGT")
  (make-package "CARES_MSGS::SAVECANEGT"))
(unless (find-package "CARES_MSGS::SAVECANEGTREQUEST")
  (make-package "CARES_MSGS::SAVECANEGTREQUEST"))
(unless (find-package "CARES_MSGS::SAVECANEGTRESPONSE")
  (make-package "CARES_MSGS::SAVECANEGTRESPONSE"))

(in-package "ROS")





(defclass cares_msgs::SaveCaneGTRequest
  :super ros::object
  :slots (_filepath ))

(defmethod cares_msgs::SaveCaneGTRequest
  (:init
   (&key
    ((:filepath __filepath) "")
    )
   (send-super :init)
   (setq _filepath (string __filepath))
   self)
  (:filepath
   (&optional __filepath)
   (if __filepath (setq _filepath __filepath)) _filepath)
  (:serialization-length
   ()
   (+
    ;; string _filepath
    4 (length _filepath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filepath
       (write-long (length _filepath) s) (princ _filepath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cares_msgs::SaveCaneGTResponse
  :super ros::object
  :slots ())

(defmethod cares_msgs::SaveCaneGTResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cares_msgs::SaveCaneGT
  :super ros::object
  :slots ())

(setf (get cares_msgs::SaveCaneGT :md5sum-) "5ef967a25f780d4a216c15b3834dca97")
(setf (get cares_msgs::SaveCaneGT :datatype-) "cares_msgs/SaveCaneGT")
(setf (get cares_msgs::SaveCaneGT :request) cares_msgs::SaveCaneGTRequest)
(setf (get cares_msgs::SaveCaneGT :response) cares_msgs::SaveCaneGTResponse)

(defmethod cares_msgs::SaveCaneGTRequest
  (:response () (instance cares_msgs::SaveCaneGTResponse :init)))

(setf (get cares_msgs::SaveCaneGTRequest :md5sum-) "5ef967a25f780d4a216c15b3834dca97")
(setf (get cares_msgs::SaveCaneGTRequest :datatype-) "cares_msgs/SaveCaneGTRequest")
(setf (get cares_msgs::SaveCaneGTRequest :definition-)
      "string filepath
---

")

(setf (get cares_msgs::SaveCaneGTResponse :md5sum-) "5ef967a25f780d4a216c15b3834dca97")
(setf (get cares_msgs::SaveCaneGTResponse :datatype-) "cares_msgs/SaveCaneGTResponse")
(setf (get cares_msgs::SaveCaneGTResponse :definition-)
      "string filepath
---

")



(provide :cares_msgs/SaveCaneGT "5ef967a25f780d4a216c15b3834dca97")


