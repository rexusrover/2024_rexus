; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude CutGoal.msg.html

(cl:defclass <CutGoal> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (cutting_frame
    :reader cutting_frame
    :initarg :cutting_frame
    :type cl:string
    :initform "")
   (planning_frame
    :reader planning_frame
    :initarg :planning_frame
    :type cl:string
    :initform "")
   (cut_points
    :reader cut_points
    :initarg :cut_points
    :type (cl:vector cares_msgs-msg:CutPoint)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:CutPoint :initial-element (cl:make-instance 'cares_msgs-msg:CutPoint))))
)

(cl:defclass CutGoal (<CutGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CutGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CutGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<CutGoal> is deprecated: use cares_msgs-msg:CutGoal instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CutGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:command-val is deprecated.  Use cares_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'cutting_frame-val :lambda-list '(m))
(cl:defmethod cutting_frame-val ((m <CutGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:cutting_frame-val is deprecated.  Use cares_msgs-msg:cutting_frame instead.")
  (cutting_frame m))

(cl:ensure-generic-function 'planning_frame-val :lambda-list '(m))
(cl:defmethod planning_frame-val ((m <CutGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:planning_frame-val is deprecated.  Use cares_msgs-msg:planning_frame instead.")
  (planning_frame m))

(cl:ensure-generic-function 'cut_points-val :lambda-list '(m))
(cl:defmethod cut_points-val ((m <CutGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:cut_points-val is deprecated.  Use cares_msgs-msg:cut_points instead.")
  (cut_points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CutGoal>)))
    "Constants for message type '<CutGoal>"
  '((:CUT . 0)
    (:STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CutGoal)))
    "Constants for message type 'CutGoal"
  '((:CUT . 0)
    (:STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CutGoal>) ostream)
  "Serializes a message object of type '<CutGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cutting_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cutting_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cut_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cut_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CutGoal>) istream)
  "Deserializes a message object of type '<CutGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cutting_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cutting_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planning_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planning_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cut_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cut_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:CutPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CutGoal>)))
  "Returns string type for a message object of type '<CutGoal>"
  "cares_msgs/CutGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CutGoal)))
  "Returns string type for a message object of type 'CutGoal"
  "cares_msgs/CutGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CutGoal>)))
  "Returns md5sum for a message object of type '<CutGoal>"
  "f760b5a102c579d359a8e31180574d7a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CutGoal)))
  "Returns md5sum for a message object of type 'CutGoal"
  "f760b5a102c579d359a8e31180574d7a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CutGoal>)))
  "Returns full string definition for message of type '<CutGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 CUT = 0~%uint8 STOP = 1~%uint8 command~%~%string cutting_frame~%string planning_frame~%cares_msgs/CutPoint[] cut_points~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CutGoal)))
  "Returns full string definition for message of type 'CutGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 CUT = 0~%uint8 STOP = 1~%uint8 command~%~%string cutting_frame~%string planning_frame~%cares_msgs/CutPoint[] cut_points~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CutGoal>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'cutting_frame))
     4 (cl:length (cl:slot-value msg 'planning_frame))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cut_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CutGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CutGoal
    (cl:cons ':command (command msg))
    (cl:cons ':cutting_frame (cutting_frame msg))
    (cl:cons ':planning_frame (planning_frame msg))
    (cl:cons ':cut_points (cut_points msg))
))
