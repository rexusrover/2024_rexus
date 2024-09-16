; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude SaveCaneGT-request.msg.html

(cl:defclass <SaveCaneGT-request> (roslisp-msg-protocol:ros-message)
  ((filepath
    :reader filepath
    :initarg :filepath
    :type cl:string
    :initform ""))
)

(cl:defclass SaveCaneGT-request (<SaveCaneGT-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveCaneGT-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveCaneGT-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<SaveCaneGT-request> is deprecated: use cares_msgs-srv:SaveCaneGT-request instead.")))

(cl:ensure-generic-function 'filepath-val :lambda-list '(m))
(cl:defmethod filepath-val ((m <SaveCaneGT-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:filepath-val is deprecated.  Use cares_msgs-srv:filepath instead.")
  (filepath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveCaneGT-request>) ostream)
  "Serializes a message object of type '<SaveCaneGT-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filepath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveCaneGT-request>) istream)
  "Deserializes a message object of type '<SaveCaneGT-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveCaneGT-request>)))
  "Returns string type for a service object of type '<SaveCaneGT-request>"
  "cares_msgs/SaveCaneGTRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveCaneGT-request)))
  "Returns string type for a service object of type 'SaveCaneGT-request"
  "cares_msgs/SaveCaneGTRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveCaneGT-request>)))
  "Returns md5sum for a message object of type '<SaveCaneGT-request>"
  "5ef967a25f780d4a216c15b3834dca97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveCaneGT-request)))
  "Returns md5sum for a message object of type 'SaveCaneGT-request"
  "5ef967a25f780d4a216c15b3834dca97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveCaneGT-request>)))
  "Returns full string definition for message of type '<SaveCaneGT-request>"
  (cl:format cl:nil "string filepath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveCaneGT-request)))
  "Returns full string definition for message of type 'SaveCaneGT-request"
  (cl:format cl:nil "string filepath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveCaneGT-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filepath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveCaneGT-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveCaneGT-request
    (cl:cons ':filepath (filepath msg))
))
;//! \htmlinclude SaveCaneGT-response.msg.html

(cl:defclass <SaveCaneGT-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveCaneGT-response (<SaveCaneGT-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveCaneGT-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveCaneGT-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<SaveCaneGT-response> is deprecated: use cares_msgs-srv:SaveCaneGT-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveCaneGT-response>) ostream)
  "Serializes a message object of type '<SaveCaneGT-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveCaneGT-response>) istream)
  "Deserializes a message object of type '<SaveCaneGT-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveCaneGT-response>)))
  "Returns string type for a service object of type '<SaveCaneGT-response>"
  "cares_msgs/SaveCaneGTResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveCaneGT-response)))
  "Returns string type for a service object of type 'SaveCaneGT-response"
  "cares_msgs/SaveCaneGTResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveCaneGT-response>)))
  "Returns md5sum for a message object of type '<SaveCaneGT-response>"
  "5ef967a25f780d4a216c15b3834dca97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveCaneGT-response)))
  "Returns md5sum for a message object of type 'SaveCaneGT-response"
  "5ef967a25f780d4a216c15b3834dca97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveCaneGT-response>)))
  "Returns full string definition for message of type '<SaveCaneGT-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveCaneGT-response)))
  "Returns full string definition for message of type 'SaveCaneGT-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveCaneGT-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveCaneGT-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveCaneGT-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveCaneGT)))
  'SaveCaneGT-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveCaneGT)))
  'SaveCaneGT-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveCaneGT)))
  "Returns string type for a service object of type '<SaveCaneGT>"
  "cares_msgs/SaveCaneGT")