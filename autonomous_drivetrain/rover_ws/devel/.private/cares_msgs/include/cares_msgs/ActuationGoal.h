// Generated by gencpp from file cares_msgs/ActuationGoal.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_ACTUATIONGOAL_H
#define CARES_MSGS_MESSAGE_ACTUATIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <cares_msgs/PathPlanningConstraints.h>
#include <cares_msgs/PathPlanningConstraints.h>

namespace cares_msgs
{
template <class ContainerAllocator>
struct ActuationGoal_
{
  typedef ActuationGoal_<ContainerAllocator> Type;

  ActuationGoal_()
    : command(0)
    , link_id()
    , target_pose()
    , approach_pose()
    , target_constraints()
    , approach_constraints()  {
    }
  ActuationGoal_(const ContainerAllocator& _alloc)
    : command(0)
    , link_id(_alloc)
    , target_pose(_alloc)
    , approach_pose(_alloc)
    , target_constraints(_alloc)
    , approach_constraints(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _command_type;
  _command_type command;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _link_id_type;
  _link_id_type link_id;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _approach_pose_type;
  _approach_pose_type approach_pose;

   typedef  ::cares_msgs::PathPlanningConstraints_<ContainerAllocator>  _target_constraints_type;
  _target_constraints_type target_constraints;

   typedef  ::cares_msgs::PathPlanningConstraints_<ContainerAllocator>  _approach_constraints_type;
  _approach_constraints_type approach_constraints;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(STOP)
  #undef STOP
#endif
#if defined(_WIN32) && defined(MOVE)
  #undef MOVE
#endif
#if defined(_WIN32) && defined(ACTUATE)
  #undef ACTUATE
#endif

  enum {
    STOP = 0u,
    MOVE = 1u,
    ACTUATE = 2u,
  };


  typedef boost::shared_ptr< ::cares_msgs::ActuationGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::ActuationGoal_<ContainerAllocator> const> ConstPtr;

}; // struct ActuationGoal_

typedef ::cares_msgs::ActuationGoal_<std::allocator<void> > ActuationGoal;

typedef boost::shared_ptr< ::cares_msgs::ActuationGoal > ActuationGoalPtr;
typedef boost::shared_ptr< ::cares_msgs::ActuationGoal const> ActuationGoalConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::ActuationGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::ActuationGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::ActuationGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::ActuationGoal_<ContainerAllocator2> & rhs)
{
  return lhs.command == rhs.command &&
    lhs.link_id == rhs.link_id &&
    lhs.target_pose == rhs.target_pose &&
    lhs.approach_pose == rhs.approach_pose &&
    lhs.target_constraints == rhs.target_constraints &&
    lhs.approach_constraints == rhs.approach_constraints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::ActuationGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::ActuationGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::ActuationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::ActuationGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::ActuationGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "15712a66a54952f9e4f9304a32959641";
  }

  static const char* value(const ::cares_msgs::ActuationGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x15712a66a54952f9ULL;
  static const uint64_t static_value2 = 0xe4f9304a32959641ULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/ActuationGoal";
  }

  static const char* value(const ::cares_msgs::ActuationGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"uint8 STOP    = 0\n"
"uint8 MOVE = 1\n"
"uint8 ACTUATE = 2\n"
"\n"
"uint8 command\n"
"string link_id\n"
"\n"
"geometry_msgs/PoseStamped target_pose\n"
"geometry_msgs/PoseStamped approach_pose\n"
"\n"
"#Please use this to specify bounding volumes or need to fix end effector\n"
"#Init constraints is constraints moving to approach position, \n"
"#Final constraints moving between approach pose and target pose\n"
"cares_msgs/PathPlanningConstraints target_constraints\n"
"cares_msgs/PathPlanningConstraints approach_constraints\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
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
"\n"
"================================================================================\n"
"MSG: cares_msgs/PathPlanningConstraints\n"
"# Orientation Constraint Type\n"
"uint8 DEFAULT_ORIENT = 0\n"
"uint8 NO_ORIENT = 1\n"
"uint8 FIXED_ORIENT = 2\n"
"uint8 BETWEEN_ORIENT = 3\n"
"\n"
"uint8 orientation_constraint_type\n"
"\n"
"#Constrain EE to volume between current and target path\n"
"uint8 DEFAULT_VOL = 0\n"
"uint8 NO_VOL = 1\n"
"uint8 BOX = 2\n"
"uint8 SPHERE = 3\n"
"uint8 CYLINDER = 4\n"
"uint8 CONE = 5\n"
"\n"
"uint8 volume_constraint_type\n"
"\n"
"# Set planning time, if no time is set default planning time will be used\n"
"float64 allowed_planning_time\n"
"\n"
"# Maximum number of retries for planning\n"
"uint8 max_retries\n"
"\n"
"# Multipler used to increase planning after each unsuccessful attempt\n"
"float64 replanning_multiplier\n"
"# If planning time increases above this value, this value will be used\n"
"float64 max_planning_time\n"
"\n"
"moveit_msgs/Constraints path_constraints\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/Constraints\n"
"# This message contains a list of motion planning constraints.\n"
"# All constraints must be satisfied for a goal to be considered valid\n"
"\n"
"string name\n"
"\n"
"JointConstraint[] joint_constraints\n"
"\n"
"PositionConstraint[] position_constraints\n"
"\n"
"OrientationConstraint[] orientation_constraints\n"
"\n"
"VisibilityConstraint[] visibility_constraints\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/JointConstraint\n"
"# Constrain the position of a joint to be within a certain bound\n"
"string joint_name\n"
"\n"
"# the bound to be achieved is [position - tolerance_below, position + tolerance_above]\n"
"float64 position\n"
"float64 tolerance_above\n"
"float64 tolerance_below\n"
"\n"
"# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)\n"
"float64 weight\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/PositionConstraint\n"
"# This message contains the definition of a position constraint.\n"
"\n"
"Header header\n"
"\n"
"# The robot link this constraint refers to\n"
"string link_name\n"
"\n"
"# The offset (in the link frame) for the target point on the link we are planning for\n"
"geometry_msgs/Vector3 target_point_offset\n"
"\n"
"# The volume this constraint refers to\n"
"BoundingVolume constraint_region\n"
"\n"
"# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)\n"
"float64 weight\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: moveit_msgs/BoundingVolume\n"
"# Define a volume in 3D\n"
"\n"
"# A set of solid geometric primitives that make up the volume to define (as a union)\n"
"shape_msgs/SolidPrimitive[] primitives\n"
"\n"
"# The poses at which the primitives are located\n"
"geometry_msgs/Pose[] primitive_poses\n"
"\n"
"# In addition to primitives, meshes can be specified to add to the bounding volume (again, as union)\n"
"shape_msgs/Mesh[] meshes\n"
"\n"
"# The poses at which the meshes are located\n"
"geometry_msgs/Pose[] mesh_poses\n"
"\n"
"================================================================================\n"
"MSG: shape_msgs/SolidPrimitive\n"
"# Define box, sphere, cylinder, cone \n"
"# All shapes are defined to have their bounding boxes centered around 0,0,0.\n"
"\n"
"uint8 BOX=1\n"
"uint8 SPHERE=2\n"
"uint8 CYLINDER=3\n"
"uint8 CONE=4\n"
"\n"
"# The type of the shape\n"
"uint8 type\n"
"\n"
"\n"
"# The dimensions of the shape\n"
"float64[] dimensions\n"
"\n"
"# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array\n"
"\n"
"# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding\n"
"# sides of the box.\n"
"uint8 BOX_X=0\n"
"uint8 BOX_Y=1\n"
"uint8 BOX_Z=2\n"
"\n"
"\n"
"# For the SPHERE type, only one component is used, and it gives the radius of\n"
"# the sphere.\n"
"uint8 SPHERE_RADIUS=0\n"
"\n"
"\n"
"# For the CYLINDER and CONE types, the center line is oriented along\n"
"# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component\n"
"# of dimensions gives the height of the cylinder (cone).  The\n"
"# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the\n"
"# radius of the base of the cylinder (cone).  Cone and cylinder\n"
"# primitives are defined to be circular. The tip of the cone is\n"
"# pointing up, along +Z axis.\n"
"\n"
"uint8 CYLINDER_HEIGHT=0\n"
"uint8 CYLINDER_RADIUS=1\n"
"\n"
"uint8 CONE_HEIGHT=0\n"
"uint8 CONE_RADIUS=1\n"
"\n"
"================================================================================\n"
"MSG: shape_msgs/Mesh\n"
"# Definition of a mesh\n"
"\n"
"# list of triangles; the index values refer to positions in vertices[]\n"
"MeshTriangle[] triangles\n"
"\n"
"# the actual vertices that make up the mesh\n"
"geometry_msgs/Point[] vertices\n"
"\n"
"================================================================================\n"
"MSG: shape_msgs/MeshTriangle\n"
"# Definition of a triangle's vertices\n"
"uint32[3] vertex_indices\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/OrientationConstraint\n"
"# This message contains the definition of an orientation constraint.\n"
"\n"
"Header header\n"
"\n"
"# The desired orientation of the robot link specified as a quaternion\n"
"geometry_msgs/Quaternion orientation\n"
"\n"
"# The robot link this constraint refers to\n"
"string link_name\n"
"\n"
"# Tolerance on the three vector components of the orientation error (optional)\n"
"float64 absolute_x_axis_tolerance\n"
"float64 absolute_y_axis_tolerance\n"
"float64 absolute_z_axis_tolerance\n"
"\n"
"# Defines how the orientation error is calculated\n"
"# The error is compared to the tolerance defined above\n"
"uint8 parameterization\n"
"\n"
"# The different options for the orientation error parameterization\n"
"# - Intrinsic xyz Euler angles (default value)\n"
"uint8 XYZ_EULER_ANGLES=0\n"
"# - A rotation vector. This is similar to the angle-axis representation,\n"
"# but the magnitude of the vector represents the rotation angle.\n"
"uint8 ROTATION_VECTOR=1\n"
"\n"
"# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)\n"
"float64 weight\n"
"\n"
"================================================================================\n"
"MSG: moveit_msgs/VisibilityConstraint\n"
"# The constraint is useful to maintain visibility to a disc (the target) in a particular frame.\n"
"# This disc forms the base of a visibiliy cone whose tip is at the origin of the sensor.\n"
"# Maintaining visibility is done by ensuring the robot does not obstruct the visibility cone.\n"
"# Note:\n"
"# This constraint does NOT enforce minimum or maximum distances between the sensor\n"
"# and the target, nor does it enforce the target to be in the field of view of\n"
"# the sensor. A PositionConstraint can (and probably should) be used for such purposes.\n"
"\n"
"# The radius of the disc that should be maintained visible\n"
"float64 target_radius\n"
"\n"
"# The pose of the disc; as the robot moves, the pose of the disc may change as well\n"
"# This can be in the frame of a particular robot link, for example\n"
"geometry_msgs/PoseStamped target_pose\n"
"\n"
"# From the sensor origin towards the target, the disc forms a visibility cone\n"
"# This cone is approximated using many sides. For example, when using 4 sides,\n"
"# that in fact makes the visibility region be a pyramid.\n"
"# This value should always be 3 or more.\n"
"int32 cone_sides\n"
"\n"
"# The pose in which visibility is to be maintained.\n"
"# The frame id should represent the robot link to which the sensor is attached.\n"
"# It is assumed the sensor can look directly at the target, in any direction.\n"
"# This assumption is usually not true, but additional PositionConstraints\n"
"# can resolve this issue.\n"
"geometry_msgs/PoseStamped sensor_pose\n"
"\n"
"# Even though the disc is maintained visible, the visibility cone can be very small\n"
"# because of the orientation of the disc with respect to the sensor. It is possible\n"
"# for example to view the disk almost from a side, in which case the visibility cone\n"
"# can end up having close to 0 volume. The view angle is defined to be the angle between\n"
"# the normal to the visibility disc and the direction vector from the sensor origin.\n"
"# The value below represents the minimum desired view angle. For a perfect view,\n"
"# this value will be 0 (the two vectors are exact opposites). For a completely obstructed view\n"
"# this value will be Pi/2 (the vectors are perpendicular). This value defined below\n"
"# is the maximum view angle to be maintained. This should be a value in the open interval\n"
"# (0, Pi/2). If 0 is set, the view angle is NOT enforced.\n"
"float64 max_view_angle\n"
"\n"
"# This angle is used similarly to max_view_angle but limits the maximum angle\n"
"# between the sensor origin direction vector and the axis that connects the\n"
"# sensor origin to the target frame origin. The value is again in the range (0, Pi/2)\n"
"# and is NOT enforced if set to 0.\n"
"float64 max_range_angle\n"
"\n"
"# The axis that is assumed to indicate the direction of view for the sensor\n"
"# X = 2, Y = 1, Z = 0\n"
"uint8 SENSOR_Z=0\n"
"uint8 SENSOR_Y=1\n"
"uint8 SENSOR_X=2\n"
"uint8 sensor_view_direction\n"
"\n"
"# A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)\n"
"float64 weight\n"
;
  }

  static const char* value(const ::cares_msgs::ActuationGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.command);
      stream.next(m.link_id);
      stream.next(m.target_pose);
      stream.next(m.approach_pose);
      stream.next(m.target_constraints);
      stream.next(m.approach_constraints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActuationGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::ActuationGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::ActuationGoal_<ContainerAllocator>& v)
  {
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
    s << indent << "link_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.link_id);
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
    s << indent << "approach_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.approach_pose);
    s << indent << "target_constraints: ";
    s << std::endl;
    Printer< ::cares_msgs::PathPlanningConstraints_<ContainerAllocator> >::stream(s, indent + "  ", v.target_constraints);
    s << indent << "approach_constraints: ";
    s << std::endl;
    Printer< ::cares_msgs::PathPlanningConstraints_<ContainerAllocator> >::stream(s, indent + "  ", v.approach_constraints);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_ACTUATIONGOAL_H
