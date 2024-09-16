; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude ThinGoal.msg.html

(cl:defclass <ThinGoal> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (thinning_frame
    :reader thinning_frame
    :initarg :thinning_frame
    :type cl:string
    :initform "")
   (planning_frame
    :reader planning_frame
    :initarg :planning_frame
    :type cl:string
    :initform "")
   (fruitlets
    :reader fruitlets
    :initarg :fruitlets
    :type (cl:vector cares_msgs-msg:Fruitlet)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:Fruitlet :initial-element (cl:make-instance 'cares_msgs-msg:Fruitlet))))
)

(cl:defclass ThinGoal (<ThinGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThinGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThinGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<ThinGoal> is deprecated: use cares_msgs-msg:ThinGoal instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ThinGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:command-val is deprecated.  Use cares_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'thinning_frame-val :lambda-list '(m))
(cl:defmethod thinning_frame-val ((m <ThinGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:thinning_frame-val is deprecated.  Use cares_msgs-msg:thinning_frame instead.")
  (thinning_frame m))

(cl:ensure-generic-function 'planning_frame-val :lambda-list '(m))
(cl:defmethod planning_frame-val ((m <ThinGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:planning_frame-val is deprecated.  Use cares_msgs-msg:planning_frame instead.")
  (planning_frame m))

(cl:ensure-generic-function 'fruitlets-val :lambda-list '(m))
(cl:defmethod fruitlets-val ((m <ThinGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:fruitlets-val is deprecated.  Use cares_msgs-msg:fruitlets instead.")
  (fruitlets m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ThinGoal>)))
    "Constants for message type '<ThinGoal>"
  '((:THIN . 0)
    (:STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ThinGoal)))
    "Constants for message type 'ThinGoal"
  '((:THIN . 0)
    (:STOP . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThinGoal>) ostream)
  "Serializes a message object of type '<ThinGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'thinning_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'thinning_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_frame))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fruitlets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fruitlets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThinGoal>) istream)
  "Deserializes a message object of type '<ThinGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'thinning_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'thinning_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  (cl:setf (cl:slot-value msg 'fruitlets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fruitlets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:Fruitlet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThinGoal>)))
  "Returns string type for a message object of type '<ThinGoal>"
  "cares_msgs/ThinGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThinGoal)))
  "Returns string type for a message object of type 'ThinGoal"
  "cares_msgs/ThinGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThinGoal>)))
  "Returns md5sum for a message object of type '<ThinGoal>"
  "a338ed5ae0657bbc06b75728fb076848")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThinGoal)))
  "Returns md5sum for a message object of type 'ThinGoal"
  "a338ed5ae0657bbc06b75728fb076848")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThinGoal>)))
  "Returns full string definition for message of type '<ThinGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 THIN = 0~%uint8 STOP = 1~%uint8 command~%~%string thinning_frame~%string planning_frame~%cares_msgs/Fruitlet[] fruitlets~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThinGoal)))
  "Returns full string definition for message of type 'ThinGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 THIN = 0~%uint8 STOP = 1~%uint8 command~%~%string thinning_frame~%string planning_frame~%cares_msgs/Fruitlet[] fruitlets~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThinGoal>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'thinning_frame))
     4 (cl:length (cl:slot-value msg 'planning_frame))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fruitlets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThinGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ThinGoal
    (cl:cons ':command (command msg))
    (cl:cons ':thinning_frame (thinning_frame msg))
    (cl:cons ':planning_frame (planning_frame msg))
    (cl:cons ':fruitlets (fruitlets msg))
))
