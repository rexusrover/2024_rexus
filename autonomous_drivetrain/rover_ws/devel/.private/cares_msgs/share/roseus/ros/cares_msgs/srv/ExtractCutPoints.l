;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::ExtractCutPoints)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'ExtractCutPoints (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::EXTRACTCUTPOINTS")
  (make-package "CARES_MSGS::EXTRACTCUTPOINTS"))
(unless (find-package "CARES_MSGS::EXTRACTCUTPOINTSREQUEST")
  (make-package "CARES_MSGS::EXTRACTCUTPOINTSREQUEST"))
(unless (find-package "CARES_MSGS::EXTRACTCUTPOINTSRESPONSE")
  (make-package "CARES_MSGS::EXTRACTCUTPOINTSRESPONSE"))

(in-package "ROS")





(defclass cares_msgs::ExtractCutPointsRequest
  :super ros::object
  :slots (_planning_link ))

(defmethod cares_msgs::ExtractCutPointsRequest
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

(defclass cares_msgs::ExtractCutPointsResponse
  :super ros::object
  :slots (_cut_points _success ))

(defmethod cares_msgs::ExtractCutPointsResponse
  (:init
   (&key
    ((:cut_points __cut_points) ())
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _cut_points __cut_points)
   (setq _success __success)
   self)
  (:cut_points
   (&rest __cut_points)
   (if (keywordp (car __cut_points))
       (send* _cut_points __cut_points)
     (progn
       (if __cut_points (setq _cut_points (car __cut_points)))
       _cut_points)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; cares_msgs/CutPoint[] _cut_points
    (apply #'+ (send-all _cut_points :serialization-length)) 4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cares_msgs/CutPoint[] _cut_points
     (write-long (length _cut_points) s)
     (dolist (elem _cut_points)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cares_msgs/CutPoint[] _cut_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cut_points (let (r) (dotimes (i n) (push (instance cares_msgs::CutPoint :init) r)) r))
     (dolist (elem- _cut_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cares_msgs::ExtractCutPoints
  :super ros::object
  :slots ())

(setf (get cares_msgs::ExtractCutPoints :md5sum-) "604cb71cb97a878dca81952efa8bdc5a")
(setf (get cares_msgs::ExtractCutPoints :datatype-) "cares_msgs/ExtractCutPoints")
(setf (get cares_msgs::ExtractCutPoints :request) cares_msgs::ExtractCutPointsRequest)
(setf (get cares_msgs::ExtractCutPoints :response) cares_msgs::ExtractCutPointsResponse)

(defmethod cares_msgs::ExtractCutPointsRequest
  (:response () (instance cares_msgs::ExtractCutPointsResponse :init)))

(setf (get cares_msgs::ExtractCutPointsRequest :md5sum-) "604cb71cb97a878dca81952efa8bdc5a")
(setf (get cares_msgs::ExtractCutPointsRequest :datatype-) "cares_msgs/ExtractCutPointsRequest")
(setf (get cares_msgs::ExtractCutPointsRequest :definition-)
      "string planning_link 
---
cares_msgs/CutPoint[] cut_points
bool success

================================================================================
MSG: cares_msgs/CutPoint
geometry_msgs/Point cut_point_a
geometry_msgs/Point cut_point_b
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get cares_msgs::ExtractCutPointsResponse :md5sum-) "604cb71cb97a878dca81952efa8bdc5a")
(setf (get cares_msgs::ExtractCutPointsResponse :datatype-) "cares_msgs/ExtractCutPointsResponse")
(setf (get cares_msgs::ExtractCutPointsResponse :definition-)
      "string planning_link 
---
cares_msgs/CutPoint[] cut_points
bool success

================================================================================
MSG: cares_msgs/CutPoint
geometry_msgs/Point cut_point_a
geometry_msgs/Point cut_point_b
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :cares_msgs/ExtractCutPoints "604cb71cb97a878dca81952efa8bdc5a")


