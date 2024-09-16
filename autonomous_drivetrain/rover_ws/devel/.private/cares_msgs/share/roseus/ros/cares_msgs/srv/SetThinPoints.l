;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::SetThinPoints)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'SetThinPoints (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::SETTHINPOINTS")
  (make-package "CARES_MSGS::SETTHINPOINTS"))
(unless (find-package "CARES_MSGS::SETTHINPOINTSREQUEST")
  (make-package "CARES_MSGS::SETTHINPOINTSREQUEST"))
(unless (find-package "CARES_MSGS::SETTHINPOINTSRESPONSE")
  (make-package "CARES_MSGS::SETTHINPOINTSRESPONSE"))

(in-package "ROS")





(defclass cares_msgs::SetThinPointsRequest
  :super ros::object
  :slots (_fruitlet_ids _overwrite ))

(defmethod cares_msgs::SetThinPointsRequest
  (:init
   (&key
    ((:fruitlet_ids __fruitlet_ids) (make-array 0 :initial-element 0 :element-type :char))
    ((:overwrite __overwrite) nil)
    )
   (send-super :init)
   (setq _fruitlet_ids __fruitlet_ids)
   (setq _overwrite __overwrite)
   self)
  (:fruitlet_ids
   (&optional __fruitlet_ids)
   (if __fruitlet_ids (setq _fruitlet_ids __fruitlet_ids)) _fruitlet_ids)
  (:overwrite
   (&optional (__overwrite :null))
   (if (not (eq __overwrite :null)) (setq _overwrite __overwrite)) _overwrite)
  (:serialization-length
   ()
   (+
    ;; uint8[] _fruitlet_ids
    (* 1    (length _fruitlet_ids)) 4
    ;; bool _overwrite
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _fruitlet_ids
     (write-long (length _fruitlet_ids) s)
     (princ _fruitlet_ids s)
     ;; bool _overwrite
       (if _overwrite (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _fruitlet_ids
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _fruitlet_ids (make-array n :element-type :char))
     (replace _fruitlet_ids buf :start2 ptr-) (incf ptr- n))
   ;; bool _overwrite
     (setq _overwrite (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cares_msgs::SetThinPointsResponse
  :super ros::object
  :slots (_success ))

(defmethod cares_msgs::SetThinPointsResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cares_msgs::SetThinPoints
  :super ros::object
  :slots ())

(setf (get cares_msgs::SetThinPoints :md5sum-) "573d05f4ca7b95d5cf43deacddad077a")
(setf (get cares_msgs::SetThinPoints :datatype-) "cares_msgs/SetThinPoints")
(setf (get cares_msgs::SetThinPoints :request) cares_msgs::SetThinPointsRequest)
(setf (get cares_msgs::SetThinPoints :response) cares_msgs::SetThinPointsResponse)

(defmethod cares_msgs::SetThinPointsRequest
  (:response () (instance cares_msgs::SetThinPointsResponse :init)))

(setf (get cares_msgs::SetThinPointsRequest :md5sum-) "573d05f4ca7b95d5cf43deacddad077a")
(setf (get cares_msgs::SetThinPointsRequest :datatype-) "cares_msgs/SetThinPointsRequest")
(setf (get cares_msgs::SetThinPointsRequest :definition-)
      "uint8[] fruitlet_ids
bool overwrite
---
bool success

")

(setf (get cares_msgs::SetThinPointsResponse :md5sum-) "573d05f4ca7b95d5cf43deacddad077a")
(setf (get cares_msgs::SetThinPointsResponse :datatype-) "cares_msgs/SetThinPointsResponse")
(setf (get cares_msgs::SetThinPointsResponse :definition-)
      "uint8[] fruitlet_ids
bool overwrite
---
bool success

")



(provide :cares_msgs/SetThinPoints "573d05f4ca7b95d5cf43deacddad077a")


