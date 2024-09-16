;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::LoadVine)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'LoadVine (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::LOADVINE")
  (make-package "CARES_MSGS::LOADVINE"))
(unless (find-package "CARES_MSGS::LOADVINEREQUEST")
  (make-package "CARES_MSGS::LOADVINEREQUEST"))
(unless (find-package "CARES_MSGS::LOADVINERESPONSE")
  (make-package "CARES_MSGS::LOADVINERESPONSE"))

(in-package "ROS")





(defclass cares_msgs::LoadVineRequest
  :super ros::object
  :slots (_filepath _frame_id ))

(defmethod cares_msgs::LoadVineRequest
  (:init
   (&key
    ((:filepath __filepath) "")
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _filepath (string __filepath))
   (setq _frame_id (string __frame_id))
   self)
  (:filepath
   (&optional __filepath)
   (if __filepath (setq _filepath __filepath)) _filepath)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; string _filepath
    4 (length _filepath)
    ;; string _frame_id
    4 (length _frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filepath
       (write-long (length _filepath) s) (princ _filepath s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cares_msgs::LoadVineResponse
  :super ros::object
  :slots ())

(defmethod cares_msgs::LoadVineResponse
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

(defclass cares_msgs::LoadVine
  :super ros::object
  :slots ())

(setf (get cares_msgs::LoadVine :md5sum-) "3b42825adf3b6e5196f28f221c0c9959")
(setf (get cares_msgs::LoadVine :datatype-) "cares_msgs/LoadVine")
(setf (get cares_msgs::LoadVine :request) cares_msgs::LoadVineRequest)
(setf (get cares_msgs::LoadVine :response) cares_msgs::LoadVineResponse)

(defmethod cares_msgs::LoadVineRequest
  (:response () (instance cares_msgs::LoadVineResponse :init)))

(setf (get cares_msgs::LoadVineRequest :md5sum-) "3b42825adf3b6e5196f28f221c0c9959")
(setf (get cares_msgs::LoadVineRequest :datatype-) "cares_msgs/LoadVineRequest")
(setf (get cares_msgs::LoadVineRequest :definition-)
      "string filepath
string frame_id
---

")

(setf (get cares_msgs::LoadVineResponse :md5sum-) "3b42825adf3b6e5196f28f221c0c9959")
(setf (get cares_msgs::LoadVineResponse :datatype-) "cares_msgs/LoadVineResponse")
(setf (get cares_msgs::LoadVineResponse :definition-)
      "string filepath
string frame_id
---

")



(provide :cares_msgs/LoadVine "3b42825adf3b6e5196f28f221c0c9959")


