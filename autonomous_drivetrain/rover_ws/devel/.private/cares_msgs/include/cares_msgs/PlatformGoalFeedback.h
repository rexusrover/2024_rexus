// Generated by gencpp from file cares_msgs/PlatformGoalFeedback.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_PLATFORMGOALFEEDBACK_H
#define CARES_MSGS_MESSAGE_PLATFORMGOALFEEDBACK_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cares_msgs
{
template <class ContainerAllocator>
struct PlatformGoalFeedback_
{
  typedef PlatformGoalFeedback_<ContainerAllocator> Type;

  PlatformGoalFeedback_()
    : status(0)  {
    }
  PlatformGoalFeedback_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef uint8_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct PlatformGoalFeedback_

typedef ::cares_msgs::PlatformGoalFeedback_<std::allocator<void> > PlatformGoalFeedback;

typedef boost::shared_ptr< ::cares_msgs::PlatformGoalFeedback > PlatformGoalFeedbackPtr;
typedef boost::shared_ptr< ::cares_msgs::PlatformGoalFeedback const> PlatformGoalFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator1> & lhs, const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator1> & lhs, const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "284aa12dd9e9e760802ac9f38036ea5e";
  }

  static const char* value(const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x284aa12dd9e9e760ULL;
  static const uint64_t static_value2 = 0x802ac9f38036ea5eULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/PlatformGoalFeedback";
  }

  static const char* value(const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback\n"
"\n"
"# Enumeration 0 - 255\n"
"uint8 status\n"
;
  }

  static const char* value(const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlatformGoalFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::PlatformGoalFeedback_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_PLATFORMGOALFEEDBACK_H
