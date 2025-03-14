// Generated by gencpp from file cares_msgs/MetricExtractionResult.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_METRICEXTRACTIONRESULT_H
#define CARES_MSGS_MESSAGE_METRICEXTRACTIONRESULT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cares_msgs/Vine.h>
#include <cares_msgs/Fruitlets.h>
#include <sensor_msgs/PointCloud2.h>

namespace cares_msgs
{
template <class ContainerAllocator>
struct MetricExtractionResult_
{
  typedef MetricExtractionResult_<ContainerAllocator> Type;

  MetricExtractionResult_()
    : result(0)
    , vine()
    , fruitlets()
    , point_cloud()  {
    }
  MetricExtractionResult_(const ContainerAllocator& _alloc)
    : result(0)
    , vine(_alloc)
    , fruitlets(_alloc)
    , point_cloud(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;

   typedef  ::cares_msgs::Vine_<ContainerAllocator>  _vine_type;
  _vine_type vine;

   typedef  ::cares_msgs::Fruitlets_<ContainerAllocator>  _fruitlets_type;
  _fruitlets_type fruitlets;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _point_cloud_type;
  _point_cloud_type point_cloud;





  typedef boost::shared_ptr< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> const> ConstPtr;

}; // struct MetricExtractionResult_

typedef ::cares_msgs::MetricExtractionResult_<std::allocator<void> > MetricExtractionResult;

typedef boost::shared_ptr< ::cares_msgs::MetricExtractionResult > MetricExtractionResultPtr;
typedef boost::shared_ptr< ::cares_msgs::MetricExtractionResult const> MetricExtractionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::MetricExtractionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::MetricExtractionResult_<ContainerAllocator1> & lhs, const ::cares_msgs::MetricExtractionResult_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result &&
    lhs.vine == rhs.vine &&
    lhs.fruitlets == rhs.fruitlets &&
    lhs.point_cloud == rhs.point_cloud;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::MetricExtractionResult_<ContainerAllocator1> & lhs, const ::cares_msgs::MetricExtractionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c2a9ce6ac04d25549c31e0c74e3f8c2d";
  }

  static const char* value(const ::cares_msgs::MetricExtractionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc2a9ce6ac04d2554ULL;
  static const uint64_t static_value2 = 0x9c31e0c74e3f8c2dULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/MetricExtractionResult";
  }

  static const char* value(const ::cares_msgs::MetricExtractionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"uint8 result\n"
"cares_msgs/Vine vine\n"
"cares_msgs/Fruitlets fruitlets\n"
"sensor_msgs/PointCloud2 point_cloud\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/Vine\n"
"cares_msgs/Cane[] cane_list\n"
"================================================================================\n"
"MSG: cares_msgs/Cane\n"
"uint8 cane_id\n"
"uint8 cane_type\n"
"\n"
"float64 internode_length\n"
"float64 internode_width\n"
"uint8 node_count\n"
"\n"
"cares_msgs/Node[] node_list\n"
"cares_msgs/Node origin_node\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/Node\n"
"uint32 node_id\n"
"\n"
"#Node Type\n"
"uint8  PRIMARY_ORIGIN_NODE = 0\n"
"uint8  REGULAR_NODE = 1\n"
"uint8  MULTI_NODE = 2\n"
"uint8  UNLINKED_NODE = 3\n"
"uint8  node_type\n"
"\n"
"geometry_msgs/Point position\n"
"\n"
"uint32 sequencial_neighbour_id\n"
"cares_msgs/NodeNeighbourInfo[] neighbours\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: cares_msgs/NodeNeighbourInfo\n"
"uint32 neighbour_id\n"
"float64 internode_length\n"
"float64 internode_width\n"
"================================================================================\n"
"MSG: cares_msgs/Fruitlets\n"
"cares_msgs/Fruitlet[] fruitlets \n"
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
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
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
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
;
  }

  static const char* value(const ::cares_msgs::MetricExtractionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
      stream.next(m.vine);
      stream.next(m.fruitlets);
      stream.next(m.point_cloud);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MetricExtractionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::MetricExtractionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::MetricExtractionResult_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
    s << indent << "vine: ";
    s << std::endl;
    Printer< ::cares_msgs::Vine_<ContainerAllocator> >::stream(s, indent + "  ", v.vine);
    s << indent << "fruitlets: ";
    s << std::endl;
    Printer< ::cares_msgs::Fruitlets_<ContainerAllocator> >::stream(s, indent + "  ", v.fruitlets);
    s << indent << "point_cloud: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.point_cloud);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_METRICEXTRACTIONRESULT_H
