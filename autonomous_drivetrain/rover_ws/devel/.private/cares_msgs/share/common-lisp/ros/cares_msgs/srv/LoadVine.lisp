; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude LoadVine-request.msg.html

(cl:defclass <LoadVine-request> (roslisp-msg-protocol:ros-message)
  ((filepath
    :reader filepath
    :initarg :filepath
    :type cl:string
    :initform "")
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass LoadVine-request (<LoadVine-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadVine-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadVine-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<LoadVine-request> is deprecated: use cares_msgs-srv:LoadVine-request instead.")))

(cl:ensure-generic-function 'filepath-val :lambda-list '(m))
(cl:defmethod filepath-val ((m <LoadVine-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:filepath-val is deprecated.  Use cares_msgs-srv:filepath instead.")
  (filepath m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <LoadVine-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:frame_id-val is deprecated.  Use cares_msgs-srv:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadVine-request>) ostream)
  "Serializes a message object of type '<LoadVine-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filepath))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadVine-request>) istream)
  "Deserializes a message object of type '<LoadVine-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadVine-request>)))
  "Returns string type for a service object of type '<LoadVine-request>"
  "cares_msgs/LoadVineRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadVine-request)))
  "Returns string type for a service object of type 'LoadVine-request"
  "cares_msgs/LoadVineRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadVine-request>)))
  "Returns md5sum for a message object of type '<LoadVine-request>"
  "3b42825adf3b6e5196f28f221c0c9959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadVine-request)))
  "Returns md5sum for a message object of type 'LoadVine-request"
  "3b42825adf3b6e5196f28f221c0c9959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadVine-request>)))
  "Returns full string definition for message of type '<LoadVine-request>"
  (cl:format cl:nil "string filepath~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadVine-request)))
  "Returns full string definition for message of type 'LoadVine-request"
  (cl:format cl:nil "string filepath~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadVine-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filepath))
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadVine-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadVine-request
    (cl:cons ':filepath (filepath msg))
    (cl:cons ':frame_id (frame_id msg))
))
;//! \htmlinclude LoadVine-response.msg.html

(cl:defclass <LoadVine-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass LoadVine-response (<LoadVine-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoadVine-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoadVine-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<LoadVine-response> is deprecated: use cares_msgs-srv:LoadVine-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoadVine-response>) ostream)
  "Serializes a message object of type '<LoadVine-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoadVine-response>) istream)
  "Deserializes a message object of type '<LoadVine-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoadVine-response>)))
  "Returns string type for a service object of type '<LoadVine-response>"
  "cares_msgs/LoadVineResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadVine-response)))
  "Returns string type for a service object of type 'LoadVine-response"
  "cares_msgs/LoadVineResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoadVine-response>)))
  "Returns md5sum for a message object of type '<LoadVine-response>"
  "3b42825adf3b6e5196f28f221c0c9959")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoadVine-response)))
  "Returns md5sum for a message object of type 'LoadVine-response"
  "3b42825adf3b6e5196f28f221c0c9959")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoadVine-response>)))
  "Returns full string definition for message of type '<LoadVine-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoadVine-response)))
  "Returns full string definition for message of type 'LoadVine-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoadVine-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoadVine-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LoadVine-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LoadVine)))
  'LoadVine-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LoadVine)))
  'LoadVine-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoadVine)))
  "Returns string type for a service object of type '<LoadVine>"
  "cares_msgs/LoadVine")