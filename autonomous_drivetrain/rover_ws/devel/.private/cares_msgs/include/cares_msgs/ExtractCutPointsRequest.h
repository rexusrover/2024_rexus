// Generated by gencpp from file cares_msgs/ExtractCutPointsRequest.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_EXTRACTCUTPOINTSREQUEST_H
#define CARES_MSGS_MESSAGE_EXTRACTCUTPOINTSREQUEST_H


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
struct ExtractCutPointsRequest_
{
  typedef ExtractCutPointsRequest_<ContainerAllocator> Type;

  ExtractCutPointsRequest_()
    : planning_link()  {
    }
  ExtractCutPointsRequest_(const ContainerAllocator& _alloc)
    : planning_link(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _planning_link_type;
  _planning_link_type planning_link;





  typedef boost::shared_ptr< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ExtractCutPointsRequest_

typedef ::cares_msgs::ExtractCutPointsRequest_<std::allocator<void> > ExtractCutPointsRequest;

typedef boost::shared_ptr< ::cares_msgs::ExtractCutPointsRequest > ExtractCutPointsRequestPtr;
typedef boost::shared_ptr< ::cares_msgs::ExtractCutPointsRequest const> ExtractCutPointsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator1> & lhs, const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.planning_link == rhs.planning_link;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator1> & lhs, const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3eddc39b43c875e3035ded64c19645af";
  }

  static const char* value(const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3eddc39b43c875e3ULL;
  static const uint64_t static_value2 = 0x035ded64c19645afULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/ExtractCutPointsRequest";
  }

  static const char* value(const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string planning_link \n"
;
  }

  static const char* value(const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.planning_link);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExtractCutPointsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::ExtractCutPointsRequest_<ContainerAllocator>& v)
  {
    s << indent << "planning_link: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.planning_link);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_EXTRACTCUTPOINTSREQUEST_H
