// Generated by gencpp from file cares_msgs/SetThinPointsRequest.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_SETTHINPOINTSREQUEST_H
#define CARES_MSGS_MESSAGE_SETTHINPOINTSREQUEST_H


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
struct SetThinPointsRequest_
{
  typedef SetThinPointsRequest_<ContainerAllocator> Type;

  SetThinPointsRequest_()
    : fruitlet_ids()
    , overwrite(false)  {
    }
  SetThinPointsRequest_(const ContainerAllocator& _alloc)
    : fruitlet_ids(_alloc)
    , overwrite(false)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<uint8_t>> _fruitlet_ids_type;
  _fruitlet_ids_type fruitlet_ids;

   typedef uint8_t _overwrite_type;
  _overwrite_type overwrite;





  typedef boost::shared_ptr< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetThinPointsRequest_

typedef ::cares_msgs::SetThinPointsRequest_<std::allocator<void> > SetThinPointsRequest;

typedef boost::shared_ptr< ::cares_msgs::SetThinPointsRequest > SetThinPointsRequestPtr;
typedef boost::shared_ptr< ::cares_msgs::SetThinPointsRequest const> SetThinPointsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator1> & lhs, const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.fruitlet_ids == rhs.fruitlet_ids &&
    lhs.overwrite == rhs.overwrite;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator1> & lhs, const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a5bbb21233813c217b7fff5207655641";
  }

  static const char* value(const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa5bbb21233813c21ULL;
  static const uint64_t static_value2 = 0x7b7fff5207655641ULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/SetThinPointsRequest";
  }

  static const char* value(const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8[] fruitlet_ids\n"
"bool overwrite\n"
;
  }

  static const char* value(const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fruitlet_ids);
      stream.next(m.overwrite);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetThinPointsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::SetThinPointsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::SetThinPointsRequest_<ContainerAllocator>& v)
  {
    s << indent << "fruitlet_ids[]" << std::endl;
    for (size_t i = 0; i < v.fruitlet_ids.size(); ++i)
    {
      s << indent << "  fruitlet_ids[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.fruitlet_ids[i]);
    }
    s << indent << "overwrite: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.overwrite);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_SETTHINPOINTSREQUEST_H
