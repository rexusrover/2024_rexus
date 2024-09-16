// Generated by gencpp from file cares_msgs/SaveCaneGTResponse.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_SAVECANEGTRESPONSE_H
#define CARES_MSGS_MESSAGE_SAVECANEGTRESPONSE_H


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
struct SaveCaneGTResponse_
{
  typedef SaveCaneGTResponse_<ContainerAllocator> Type;

  SaveCaneGTResponse_()
    {
    }
  SaveCaneGTResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SaveCaneGTResponse_

typedef ::cares_msgs::SaveCaneGTResponse_<std::allocator<void> > SaveCaneGTResponse;

typedef boost::shared_ptr< ::cares_msgs::SaveCaneGTResponse > SaveCaneGTResponsePtr;
typedef boost::shared_ptr< ::cares_msgs::SaveCaneGTResponse const> SaveCaneGTResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/SaveCaneGTResponse";
  }

  static const char* value(const ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaveCaneGTResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::cares_msgs::SaveCaneGTResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_SAVECANEGTRESPONSE_H
