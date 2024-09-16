// Generated by gencpp from file cares_msgs/LoadVineRequest.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_LOADVINEREQUEST_H
#define CARES_MSGS_MESSAGE_LOADVINEREQUEST_H


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
struct LoadVineRequest_
{
  typedef LoadVineRequest_<ContainerAllocator> Type;

  LoadVineRequest_()
    : filepath()
    , frame_id()  {
    }
  LoadVineRequest_(const ContainerAllocator& _alloc)
    : filepath(_alloc)
    , frame_id(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _filepath_type;
  _filepath_type filepath;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _frame_id_type;
  _frame_id_type frame_id;





  typedef boost::shared_ptr< ::cares_msgs::LoadVineRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::LoadVineRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LoadVineRequest_

typedef ::cares_msgs::LoadVineRequest_<std::allocator<void> > LoadVineRequest;

typedef boost::shared_ptr< ::cares_msgs::LoadVineRequest > LoadVineRequestPtr;
typedef boost::shared_ptr< ::cares_msgs::LoadVineRequest const> LoadVineRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::LoadVineRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::LoadVineRequest_<ContainerAllocator1> & lhs, const ::cares_msgs::LoadVineRequest_<ContainerAllocator2> & rhs)
{
  return lhs.filepath == rhs.filepath &&
    lhs.frame_id == rhs.frame_id;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::LoadVineRequest_<ContainerAllocator1> & lhs, const ::cares_msgs::LoadVineRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::LoadVineRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::LoadVineRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::LoadVineRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b42825adf3b6e5196f28f221c0c9959";
  }

  static const char* value(const ::cares_msgs::LoadVineRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b42825adf3b6e51ULL;
  static const uint64_t static_value2 = 0x96f28f221c0c9959ULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/LoadVineRequest";
  }

  static const char* value(const ::cares_msgs::LoadVineRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string filepath\n"
"string frame_id\n"
;
  }

  static const char* value(const ::cares_msgs::LoadVineRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filepath);
      stream.next(m.frame_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LoadVineRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::LoadVineRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::LoadVineRequest_<ContainerAllocator>& v)
  {
    s << indent << "filepath: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.filepath);
    s << indent << "frame_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.frame_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_LOADVINEREQUEST_H
