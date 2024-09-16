; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude ExtractCutPoints-request.msg.html

(cl:defclass <ExtractCutPoints-request> (roslisp-msg-protocol:ros-message)
  ((planning_link
    :reader planning_link
    :initarg :planning_link
    :type cl:string
    :initform ""))
)

(cl:defclass ExtractCutPoints-request (<ExtractCutPoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractCutPoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractCutPoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<ExtractCutPoints-request> is deprecated: use cares_msgs-srv:ExtractCutPoints-request instead.")))

(cl:ensure-generic-function 'planning_link-val :lambda-list '(m))
(cl:defmethod planning_link-val ((m <ExtractCutPoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:planning_link-val is deprecated.  Use cares_msgs-srv:planning_link instead.")
  (planning_link m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractCutPoints-request>) ostream)
  "Serializes a message object of type '<ExtractCutPoints-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planning_link))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planning_link))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractCutPoints-request>) istream)
  "Deserializes a message object of type '<ExtractCutPoints-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractCutPoints-request>)))
  "Returns string type for a service object of type '<ExtractCutPoints-request>"
  "cares_msgs/ExtractCutPointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractCutPoints-request)))
  "Returns string type for a service object of type 'ExtractCutPoints-request"
  "cares_msgs/ExtractCutPointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractCutPoints-request>)))
  "Returns md5sum for a message object of type '<ExtractCutPoints-request>"
  "604cb71cb97a878dca81952efa8bdc5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractCutPoints-request)))
  "Returns md5sum for a message object of type 'ExtractCutPoints-request"
  "604cb71cb97a878dca81952efa8bdc5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractCutPoints-request>)))
  "Returns full string definition for message of type '<ExtractCutPoints-request>"
  (cl:format cl:nil "string planning_link ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractCutPoints-request)))
  "Returns full string definition for message of type 'ExtractCutPoints-request"
  (cl:format cl:nil "string planning_link ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractCutPoints-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'planning_link))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractCutPoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractCutPoints-request
    (cl:cons ':planning_link (planning_link msg))
))
;//! \htmlinclude ExtractCutPoints-response.msg.html

(cl:defclass <ExtractCutPoints-response> (roslisp-msg-protocol:ros-message)
  ((cut_points
    :reader cut_points
    :initarg :cut_points
    :type (cl:vector cares_msgs-msg:CutPoint)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:CutPoint :initial-element (cl:make-instance 'cares_msgs-msg:CutPoint)))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ExtractCutPoints-response (<ExtractCutPoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExtractCutPoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExtractCutPoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<ExtractCutPoints-response> is deprecated: use cares_msgs-srv:ExtractCutPoints-response instead.")))

(cl:ensure-generic-function 'cut_points-val :lambda-list '(m))
(cl:defmethod cut_points-val ((m <ExtractCutPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:cut_points-val is deprecated.  Use cares_msgs-srv:cut_points instead.")
  (cut_points m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ExtractCutPoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:success-val is deprecated.  Use cares_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExtractCutPoints-response>) ostream)
  "Serializes a message object of type '<ExtractCutPoints-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cut_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cut_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExtractCutPoints-response>) istream)
  "Deserializes a message object of type '<ExtractCutPoints-response>"
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
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExtractCutPoints-response>)))
  "Returns string type for a service object of type '<ExtractCutPoints-response>"
  "cares_msgs/ExtractCutPointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractCutPoints-response)))
  "Returns string type for a service object of type 'ExtractCutPoints-response"
  "cares_msgs/ExtractCutPointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExtractCutPoints-response>)))
  "Returns md5sum for a message object of type '<ExtractCutPoints-response>"
  "604cb71cb97a878dca81952efa8bdc5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExtractCutPoints-response)))
  "Returns md5sum for a message object of type 'ExtractCutPoints-response"
  "604cb71cb97a878dca81952efa8bdc5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExtractCutPoints-response>)))
  "Returns full string definition for message of type '<ExtractCutPoints-response>"
  (cl:format cl:nil "cares_msgs/CutPoint[] cut_points~%bool success~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExtractCutPoints-response)))
  "Returns full string definition for message of type 'ExtractCutPoints-response"
  (cl:format cl:nil "cares_msgs/CutPoint[] cut_points~%bool success~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExtractCutPoints-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cut_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExtractCutPoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExtractCutPoints-response
    (cl:cons ':cut_points (cut_points msg))
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExtractCutPoints)))
  'ExtractCutPoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExtractCutPoints)))
  'ExtractCutPoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExtractCutPoints)))
  "Returns string type for a service object of type '<ExtractCutPoints>"
  "cares_msgs/ExtractCutPoints")