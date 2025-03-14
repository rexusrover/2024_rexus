// Generated by gencpp from file cares_msgs/ArucoMarkers.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_ARUCOMARKERS_H
#define CARES_MSGS_MESSAGE_ARUCOMARKERS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>

namespace cares_msgs
{
template <class ContainerAllocator>
struct ArucoMarkers_
{
  typedef ArucoMarkers_<ContainerAllocator> Type;

  ArucoMarkers_()
    : header()
    , marker_ids()
    , marker_poses()  {
    }
  ArucoMarkers_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , marker_ids(_alloc)
    , marker_poses(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<int32_t, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<int32_t>> _marker_ids_type;
  _marker_ids_type marker_ids;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Pose_<ContainerAllocator> >> _marker_poses_type;
  _marker_poses_type marker_poses;





  typedef boost::shared_ptr< ::cares_msgs::ArucoMarkers_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::ArucoMarkers_<ContainerAllocator> const> ConstPtr;

}; // struct ArucoMarkers_

typedef ::cares_msgs::ArucoMarkers_<std::allocator<void> > ArucoMarkers;

typedef boost::shared_ptr< ::cares_msgs::ArucoMarkers > ArucoMarkersPtr;
typedef boost::shared_ptr< ::cares_msgs::ArucoMarkers const> ArucoMarkersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::ArucoMarkers_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::ArucoMarkers_<ContainerAllocator1> & lhs, const ::cares_msgs::ArucoMarkers_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.marker_ids == rhs.marker_ids &&
    lhs.marker_poses == rhs.marker_poses;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::ArucoMarkers_<ContainerAllocator1> & lhs, const ::cares_msgs::ArucoMarkers_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ArucoMarkers_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ArucoMarkers_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ArucoMarkers_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f03d453faaf4783302237f1ff76f0e3";
  }

  static const char* value(const ::cares_msgs::ArucoMarkers_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f03d453faaf4783ULL;
  static const uint64_t static_value2 = 0x302237f1ff76f0e3ULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/ArucoMarkers";
  }

  static const char* value(const ::cares_msgs::ArucoMarkers_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"int32[] marker_ids\n"
"geometry_msgs/Pose[] marker_poses\n"
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
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::cares_msgs::ArucoMarkers_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.marker_ids);
      stream.next(m.marker_poses);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArucoMarkers_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::ArucoMarkers_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::ArucoMarkers_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "marker_ids[]" << std::endl;
    for (size_t i = 0; i < v.marker_ids.size(); ++i)
    {
      s << indent << "  marker_ids[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.marker_ids[i]);
    }
    s << indent << "marker_poses[]" << std::endl;
    for (size_t i = 0; i < v.marker_poses.size(); ++i)
    {
      s << indent << "  marker_poses[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.marker_poses[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_ARUCOMARKERS_H
