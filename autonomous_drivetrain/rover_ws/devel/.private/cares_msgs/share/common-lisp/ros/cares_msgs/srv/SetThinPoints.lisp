; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude SetThinPoints-request.msg.html

(cl:defclass <SetThinPoints-request> (roslisp-msg-protocol:ros-message)
  ((fruitlet_ids
    :reader fruitlet_ids
    :initarg :fruitlet_ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (overwrite
    :reader overwrite
    :initarg :overwrite
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetThinPoints-request (<SetThinPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetThinPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetThinPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<SetThinPoints-request> is deprecated: use cares_msgs-srv:SetThinPoints-request instead.")))

(cl:ensure-generic-function 'fruitlet_ids-val :lambda-list '(m))
(cl:defmethod fruitlet_ids-val ((m <SetThinPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:fruitlet_ids-val is deprecated.  Use cares_msgs-srv:fruitlet_ids instead.")
  (fruitlet_ids m))

(cl:ensure-generic-function 'overwrite-val :lambda-list '(m))
(cl:defmethod overwrite-val ((m <SetThinPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:overwrite-val is deprecated.  Use cares_msgs-srv:overwrite instead.")
  (overwrite m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetThinPoints-request>) ostream)
  "Serializes a message object of type '<SetThinPoints-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fruitlet_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'fruitlet_ids))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overwrite) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetThinPoints-request>) istream)
  "Deserializes a message object of type '<SetThinPoints-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fruitlet_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fruitlet_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'overwrite) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetThinPoints-request>)))
  "Returns string type for a service object of type '<SetThinPoints-request>"
  "cares_msgs/SetThinPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetThinPoints-request)))
  "Returns string type for a service object of type 'SetThinPoints-request"
  "cares_msgs/SetThinPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetThinPoints-request>)))
  "Returns md5sum for a message object of type '<SetThinPoints-request>"
  "573d05f4ca7b95d5cf43deacddad077a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetThinPoints-request)))
  "Returns md5sum for a message object of type 'SetThinPoints-request"
  "573d05f4ca7b95d5cf43deacddad077a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetThinPoints-request>)))
  "Returns full string definition for message of type '<SetThinPoints-request>"
  (cl:format cl:nil "uint8[] fruitlet_ids~%bool overwrite~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetThinPoints-request)))
  "Returns full string definition for message of type 'SetThinPoints-request"
  (cl:format cl:nil "uint8[] fruitlet_ids~%bool overwrite~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetThinPoints-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fruitlet_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetThinPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetThinPoints-request
    (cl:cons ':fruitlet_ids (fruitlet_ids msg))
    (cl:cons ':overwrite (overwrite msg))
))
;//! \htmlinclude SetThinPoints-response.msg.html

(cl:defclass <SetThinPoints-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetThinPoints-response (<SetThinPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetThinPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetThinPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<SetThinPoints-response> is deprecated: use cares_msgs-srv:SetThinPoints-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetThinPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:success-val is deprecated.  Use cares_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetThinPoints-response>) ostream)
  "Serializes a message object of type '<SetThinPoints-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetThinPoints-response>) istream)
  "Deserializes a message object of type '<SetThinPoints-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetThinPoints-response>)))
  "Returns string type for a service object of type '<SetThinPoints-response>"
  "cares_msgs/SetThinPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetThinPoints-response)))
  "Returns string type for a service object of type 'SetThinPoints-response"
  "cares_msgs/SetThinPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetThinPoints-response>)))
  "Returns md5sum for a message object of type '<SetThinPoints-response>"
  "573d05f4ca7b95d5cf43deacddad077a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetThinPoints-response)))
  "Returns md5sum for a message object of type 'SetThinPoints-response"
  "573d05f4ca7b95d5cf43deacddad077a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetThinPoints-response>)))
  "Returns full string definition for message of type '<SetThinPoints-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetThinPoints-response)))
  "Returns full string definition for message of type 'SetThinPoints-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetThinPoints-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetThinPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetThinPoints-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetThinPoints)))
  'SetThinPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetThinPoints)))
  'SetThinPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetThinPoints)))
  "Returns string type for a service object of type '<SetThinPoints>"
  "cares_msgs/SetThinPoints")