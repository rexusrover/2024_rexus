; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude CutAction.msg.html

(cl:defclass <CutAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type cares_msgs-msg:CutActionGoal
    :initform (cl:make-instance 'cares_msgs-msg:CutActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type cares_msgs-msg:CutActionResult
    :initform (cl:make-instance 'cares_msgs-msg:CutActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type cares_msgs-msg:CutActionFeedback
    :initform (cl:make-instance 'cares_msgs-msg:CutActionFeedback)))
)

(cl:defclass CutAction (<CutAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CutAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CutAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<CutAction> is deprecated: use cares_msgs-msg:CutAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <CutAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_goal-val is deprecated.  Use cares_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <CutAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_result-val is deprecated.  Use cares_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <CutAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_feedback-val is deprecated.  Use cares_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CutAction>) ostream)
  "Serializes a message object of type '<CutAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CutAction>) istream)
  "Deserializes a message object of type '<CutAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CutAction>)))
  "Returns string type for a message object of type '<CutAction>"
  "cares_msgs/CutAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CutAction)))
  "Returns string type for a message object of type 'CutAction"
  "cares_msgs/CutAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CutAction>)))
  "Returns md5sum for a message object of type '<CutAction>"
  "adc271611528b18ebdd5b2c2ebb72ec2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CutAction)))
  "Returns md5sum for a message object of type 'CutAction"
  "adc271611528b18ebdd5b2c2ebb72ec2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CutAction>)))
  "Returns full string definition for message of type '<CutAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%CutActionGoal action_goal~%CutActionResult action_result~%CutActionFeedback action_feedback~%~%================================================================================~%MSG: cares_msgs/CutActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%CutGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cares_msgs/CutGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 CUT = 0~%uint8 STOP = 1~%uint8 command~%~%string cutting_frame~%string planning_frame~%cares_msgs/CutPoint[] cut_points~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/CutActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CutResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cares_msgs/CutResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 result~%cares_msgs/CutPoint[] successful_cuts~%cares_msgs/CutPoint[] failed_cuts~%~%================================================================================~%MSG: cares_msgs/CutActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CutFeedback feedback~%~%================================================================================~%MSG: cares_msgs/CutFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 count~%uint8 total~%~%uint8 INIT = 0~%uint8 PROCESSING_CUT_POINTS = 1~%uint8 MAKING_CUT = 2~%uint8 STOPPING = 3~%uint8 TRANSITIONING = 4~%~%uint8 status~%~%cares_msgs/ActuationFeedback actuation_feedback~%~%~%================================================================================~%MSG: cares_msgs/ActuationFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 INIT       = 0~%uint8 MOVING_TO_APPROACH = 1~%uint8 MOVING_TO_TARGET   = 3~%uint8 MOVING_BACK_TO_APPROACH   = 4~%uint8 ACTUATING          = 5~%uint8 STOPPING           = 6~%~%uint8 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CutAction)))
  "Returns full string definition for message of type 'CutAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%CutActionGoal action_goal~%CutActionResult action_result~%CutActionFeedback action_feedback~%~%================================================================================~%MSG: cares_msgs/CutActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%CutGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cares_msgs/CutGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 CUT = 0~%uint8 STOP = 1~%uint8 command~%~%string cutting_frame~%string planning_frame~%cares_msgs/CutPoint[] cut_points~%~%================================================================================~%MSG: cares_msgs/CutPoint~%geometry_msgs/Point cut_point_a~%geometry_msgs/Point cut_point_b~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: cares_msgs/CutActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CutResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cares_msgs/CutResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 result~%cares_msgs/CutPoint[] successful_cuts~%cares_msgs/CutPoint[] failed_cuts~%~%================================================================================~%MSG: cares_msgs/CutActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CutFeedback feedback~%~%================================================================================~%MSG: cares_msgs/CutFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 count~%uint8 total~%~%uint8 INIT = 0~%uint8 PROCESSING_CUT_POINTS = 1~%uint8 MAKING_CUT = 2~%uint8 STOPPING = 3~%uint8 TRANSITIONING = 4~%~%uint8 status~%~%cares_msgs/ActuationFeedback actuation_feedback~%~%~%================================================================================~%MSG: cares_msgs/ActuationFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%uint8 INIT       = 0~%uint8 MOVING_TO_APPROACH = 1~%uint8 MOVING_TO_TARGET   = 3~%uint8 MOVING_BACK_TO_APPROACH   = 4~%uint8 ACTUATING          = 5~%uint8 STOPPING           = 6~%~%uint8 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CutAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CutAction>))
  "Converts a ROS message object to a list"
  (cl:list 'CutAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
