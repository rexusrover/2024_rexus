// Generated by gencpp from file cares_msgs/ThinAction.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_THINACTION_H
#define CARES_MSGS_MESSAGE_THINACTION_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cares_msgs/ThinActionGoal.h>
#include <cares_msgs/ThinActionResult.h>
#include <cares_msgs/ThinActionFeedback.h>

namespace cares_msgs
{
template <class ContainerAllocator>
struct ThinAction_
{
  typedef ThinAction_<ContainerAllocator> Type;

  ThinAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  ThinAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::cares_msgs::ThinActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::cares_msgs::ThinActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::cares_msgs::ThinActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::cares_msgs::ThinAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::ThinAction_<ContainerAllocator> const> ConstPtr;

}; // struct ThinAction_

typedef ::cares_msgs::ThinAction_<std::allocator<void> > ThinAction;

typedef boost::shared_ptr< ::cares_msgs::ThinAction > ThinActionPtr;
typedef boost::shared_ptr< ::cares_msgs::ThinAction const> ThinActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::ThinAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::ThinAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::ThinAction_<ContainerAllocator1> & lhs, const ::cares_msgs::ThinAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::ThinAction_<ContainerAllocator1> & lhs, const ::cares_msgs::ThinAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ThinAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ThinAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ThinAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ThinAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ThinAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ThinAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::ThinAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "57ad36a52cb79efd1f39720ed041205a";
  }

  static const char* value(const ::cares_msgs::ThinAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x57ad36a52cb79efdULL;
  static const uint64_t static_value2 = 0x1f39720ed041205aULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::ThinAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/ThinAction";
  }

  static const char* value(const ::cares_msgs::ThinAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::ThinAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"ThinActionGoal action_goal\n"
"ThinActionResult action_result\n"
"ThinActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/ThinActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"ThinGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/ThinGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint8 THIN = 0\n"
"uint8 STOP = 1\n"
"uint8 command\n"
"\n"
"string thinning_frame\n"
"string planning_frame\n"
"cares_msgs/Fruitlet[] fruitlets\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/Fruitlet\n"
"uint8 ID\n"
"geometry_msgs/Point centroid\n"
"geometry_msgs/Point calyx \n"
"float32 radius\n"
"bool chosen_one\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/ThinActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"ThinResult result\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/ThinResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint8 result\n"
"cares_msgs/Fruitlet[] succeeded\n"
"cares_msgs/Fruitlet[] failed\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/ThinActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"ThinFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/ThinFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint8 count\n"
"uint8 total\n"
"\n"
"uint8 INIT = 0\n"
"uint8 PROCESSING_THIN_POINTS = 1\n"
"uint8 THINNING_FRUITLET = 2\n"
"uint8 STOPPING = 3\n"
"uint8 TRANSITIONING = 4\n"
"\n"
"uint8 status\n"
"cares_msgs/ActuationFeedback actuation_feedback\n"
"\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/ActuationFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint8 INIT       = 0\n"
"uint8 MOVING_TO_APPROACH = 1\n"
"uint8 MOVING_TO_TARGET   = 3\n"
"uint8 MOVING_BACK_TO_APPROACH   = 4\n"
"uint8 ACTUATING          = 5\n"
"uint8 STOPPING           = 6\n"
"\n"
"uint8 feedback\n"
"\n"
;
  }

  static const char* value(const ::cares_msgs::ThinAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::ThinAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ThinAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::ThinAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::ThinAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::cares_msgs::ThinActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::cares_msgs::ThinActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::cares_msgs::ThinActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_THINACTION_H
