;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::ExtractThinPoints)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'ExtractThinPoints (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::EXTRACTTHINPOINTS")
  (make-package "CARES_MSGS::EXTRACTTHINPOINTS"))
(unless (find-package "CARES_MSGS::EXTRACTTHINPOINTSREQUEST")
  (make-package "CARES_MSGS::EXTRACTTHINPOINTSREQUEST"))
(unless (find-package "CARES_MSGS::EXTRACTTHINPOINTSRESPONSE")
  (make-package "CARES_MSGS::EXTRACTTHINPOINTSRESPONSE"))

(in-package "ROS")





(defclass cares_msgs::ExtractThinPointsRequest
  :super ros::object
  :slots (_planning_link ))

(defmethod cares_msgs::ExtractThinPointsRequest
  (:init
   (&key
    ((:planning_link __planning_link) "")
    )
   (send-super :init)
   (setq _planning_link (string __planning_link))
   self)
  (:planning_link
   (&optional __planning_link)
   (if __planning_link (setq _planning_link __planning_link)) _planning_link)
  (:serialization-length
   ()
   (+
    ;; string _planning_link
    4 (length _planning_link)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _planning_link
       (write-long (length _planning_link) s) (princ _planning_link s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _planning_link
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planning_link (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cares_msgs::ExtractThinPointsResponse
  :super ros::object
  :slots (_fruitlets _success ))

(defmethod cares_msgs::ExtractThinPointsResponse
  (:init
   (&key
    ((:fruitlets __fruitlets) (instance cares_msgs::Fruitlets :init))
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _fruitlets __fruitlets)
   (setq _success __success)
   self)
  (:fruitlets
   (&rest __fruitlets)
   (if (keywordp (car __fruitlets))
       (send* _fruitlets __fruitlets)
     (progn
       (if __fruitlets (setq _fruitlets (car __fruitlets)))
       _fruitlets)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; cares_msgs/Fruitlets _fruitlets
    (send _fruitlets :serialization-length)
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cares_msgs/Fruitlets _fruitlets
       (send _fruitlets :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cares_msgs/Fruitlets _fruitlets
     (send _fruitlets :deserialize buf ptr-) (incf ptr- (send _fruitlets :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cares_msgs::ExtractThinPoints
  :super ros::object
  :slots ())

(setf (get cares_msgs::ExtractThinPoints :md5sum-) "429375f5dc6bdc8c055d8ba8b52deac1")
(setf (get cares_msgs::ExtractThinPoints :datatype-) "cares_msgs/ExtractThinPoints")
(setf (get cares_msgs::ExtractThinPoints :request) cares_msgs::ExtractThinPointsRequest)
(setf (get cares_msgs::ExtractThinPoints :response) cares_msgs::ExtractThinPointsResponse)

(defmethod cares_msgs::ExtractThinPointsRequest
  (:response () (instance cares_msgs::ExtractThinPointsResponse :init)))

(setf (get cares_msgs::ExtractThinPointsRequest :md5sum-) "429375f5dc6bdc8c055d8ba8b52deac1")
(setf (get cares_msgs::ExtractThinPointsRequest :datatype-) "cares_msgs/ExtractThinPointsRequest")
(setf (get cares_msgs::ExtractThinPointsRequest :definition-)
      "string planning_link 
---
cares_msgs/Fruitlets fruitlets
bool success


================================================================================
MSG: cares_msgs/Fruitlets
cares_msgs/Fruitlet[] fruitlets 

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

(setf (get cares_msgs::ExtractThinPointsResponse :md5sum-) "429375f5dc6bdc8c055d8ba8b52deac1")
(setf (get cares_msgs::ExtractThinPointsResponse :datatype-) "cares_msgs/ExtractThinPointsResponse")
(setf (get cares_msgs::ExtractThinPointsResponse :definition-)
      "string planning_link 
---
cares_msgs/Fruitlets fruitlets
bool success


================================================================================
MSG: cares_msgs/Fruitlets
cares_msgs/Fruitlet[] fruitlets 

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



(provide :cares_msgs/ExtractThinPoints "429375f5dc6bdc8c055d8ba8b52deac1")


