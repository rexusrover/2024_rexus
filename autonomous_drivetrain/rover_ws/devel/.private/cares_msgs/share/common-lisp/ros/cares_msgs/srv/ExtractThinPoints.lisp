; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude ExtractThinPoints-request.msg.html

(cl:defclass <ExtractThinPoints-request> (roslisp-msg-protocol:ros-message)
  ((planning_link
    :reader planning_link
    :initarg :planning_link
    :type cl:string
    :initform ""))
)

(cl:defclass ExtractThinPoints-request (<ExtractThinPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractThinPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractThinPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<ExtractThinPoints-request> is deprecated: use cares_msgs-srv:ExtractThinPoints-request instead.")))

(cl:ensure-generic-function 'planning_link-val :lambda-list '(m))
(cl:defmethod planning_link-val ((m <ExtractThinPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:planning_link-val is deprecated.  Use cares_msgs-srv:planning_link instead.")
  (planning_link m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractThinPoints-request>) ostream)
  "Serializes a message object of type '<ExtractThinPoints-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_link))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractThinPoints-request>) istream)
  "Deserializes a message object of type '<ExtractThinPoints-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planning_link) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planning_link) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractThinPoints-request>)))
  "Returns string type for a service object of type '<ExtractThinPoints-request>"
  "cares_msgs/ExtractThinPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractThinPoints-request)))
  "Returns string type for a service object of type 'ExtractThinPoints-request"
  "cares_msgs/ExtractThinPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractThinPoints-request>)))
  "Returns md5sum for a message object of type '<ExtractThinPoints-request>"
  "429375f5dc6bdc8c055d8ba8b52deac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractThinPoints-request)))
  "Returns md5sum for a message object of type 'ExtractThinPoints-request"
  "429375f5dc6bdc8c055d8ba8b52deac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractThinPoints-request>)))
  "Returns full string definition for message of type '<ExtractThinPoints-request>"
  (cl:format cl:nil "string planning_link ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractThinPoints-request)))
  "Returns full string definition for message of type 'ExtractThinPoints-request"
  (cl:format cl:nil "string planning_link ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractThinPoints-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planning_link))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractThinPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractThinPoints-request
    (cl:cons ':planning_link (planning_link msg))
))
;//! \htmlinclude ExtractThinPoints-response.msg.html

(cl:defclass <ExtractThinPoints-response> (roslisp-msg-protocol:ros-message)
  ((fruitlets
    :reader fruitlets
    :initarg :fruitlets
    :type cares_msgs-msg:Fruitlets
    :initform (cl:make-instance 'cares_msgs-msg:Fruitlets))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ExtractThinPoints-response (<ExtractThinPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractThinPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractThinPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<ExtractThinPoints-response> is deprecated: use cares_msgs-srv:ExtractThinPoints-response instead.")))

(cl:ensure-generic-function 'fruitlets-val :lambda-list '(m))
(cl:defmethod fruitlets-val ((m <ExtractThinPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:fruitlets-val is deprecated.  Use cares_msgs-srv:fruitlets instead.")
  (fruitlets m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExtractThinPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:success-val is deprecated.  Use cares_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractThinPoints-response>) ostream)
  "Serializes a message object of type '<ExtractThinPoints-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fruitlets) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractThinPoints-response>) istream)
  "Deserializes a message object of type '<ExtractThinPoints-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fruitlets) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractThinPoints-response>)))
  "Returns string type for a service object of type '<ExtractThinPoints-response>"
  "cares_msgs/ExtractThinPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractThinPoints-response)))
  "Returns string type for a service object of type 'ExtractThinPoints-response"
  "cares_msgs/ExtractThinPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractThinPoints-response>)))
  "Returns md5sum for a message object of type '<ExtractThinPoints-response>"
  "429375f5dc6bdc8c055d8ba8b52deac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractThinPoints-response)))
  "Returns md5sum for a message object of type 'ExtractThinPoints-response"
  "429375f5dc6bdc8c055d8ba8b52deac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractThinPoints-response>)))
  "Returns full string definition for message of type '<ExtractThinPoints-response>"
  (cl:format cl:nil "cares_msgs/Fruitlets fruitlets~%bool success~%~%~%================================================================================~%MSG: cares_msgs/Fruitlets~%cares_msgs/Fruitlet[] fruitlets ~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractThinPoints-response)))
  "Returns full string definition for message of type 'ExtractThinPoints-response"
  (cl:format cl:nil "cares_msgs/Fruitlets fruitlets~%bool success~%~%~%================================================================================~%MSG: cares_msgs/Fruitlets~%cares_msgs/Fruitlet[] fruitlets ~%~%================================================================================~%MSG: cares_msgs/Fruitlet~%uint8 ID~%geometry_msgs/Point centroid~%geometry_msgs/Point calyx ~%float32 radius~%bool chosen_one~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractThinPoints-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fruitlets))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractThinPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractThinPoints-response
    (cl:cons ':fruitlets (fruitlets msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExtractThinPoints)))
  'ExtractThinPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExtractThinPoints)))
  'ExtractThinPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractThinPoints)))
  "Returns string type for a service object of type '<ExtractThinPoints>"
  "cares_msgs/ExtractThinPoints")