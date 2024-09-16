// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PathPlanningConstraints = require('./PathPlanningConstraints.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ScanningGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.marker_type = null;
      this.pose = null;
      this.rail_pose = null;
      this.rail_marker_target = null;
      this.planning_link = null;
      this.world_link = null;
      this.file_path = null;
      this.path_constraints = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
      }
      if (initObj.hasOwnProperty('marker_type')) {
        this.marker_type = initObj.marker_type
      }
      else {
        this.marker_type = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('rail_pose')) {
        this.rail_pose = initObj.rail_pose
      }
      else {
        this.rail_pose = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('rail_marker_target')) {
        this.rail_marker_target = initObj.rail_marker_target
      }
      else {
        this.rail_marker_target = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('planning_link')) {
        this.planning_link = initObj.planning_link
      }
      else {
        this.planning_link = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('world_link')) {
        this.world_link = initObj.world_link
      }
      else {
        this.world_link = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('file_path')) {
        this.file_path = initObj.file_path
      }
      else {
        this.file_path = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('path_constraints')) {
        this.path_constraints = initObj.path_constraints
      }
      else {
        this.path_constraints = new PathPlanningConstraints();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScanningGoal
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [marker_type]
    bufferOffset = _serializer.uint8(obj.marker_type, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [rail_pose]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.rail_pose, buffer, bufferOffset);
    // Serialize message field [rail_marker_target]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.rail_marker_target, buffer, bufferOffset);
    // Serialize message field [planning_link]
    bufferOffset = std_msgs.msg.String.serialize(obj.planning_link, buffer, bufferOffset);
    // Serialize message field [world_link]
    bufferOffset = std_msgs.msg.String.serialize(obj.world_link, buffer, bufferOffset);
    // Serialize message field [file_path]
    bufferOffset = std_msgs.msg.String.serialize(obj.file_path, buffer, bufferOffset);
    // Serialize message field [path_constraints]
    bufferOffset = PathPlanningConstraints.serialize(obj.path_constraints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScanningGoal
    let len;
    let data = new ScanningGoal(null);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [marker_type]
    data.marker_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [rail_pose]
    data.rail_pose = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [rail_marker_target]
    data.rail_marker_target = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [planning_link]
    data.planning_link = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [world_link]
    data.world_link = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [file_path]
    data.file_path = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [path_constraints]
    data.path_constraints = PathPlanningConstraints.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.rail_pose);
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.rail_marker_target);
    length += std_msgs.msg.String.getMessageSize(object.planning_link);
    length += std_msgs.msg.String.getMessageSize(object.world_link);
    length += std_msgs.msg.String.getMessageSize(object.file_path);
    length += PathPlanningConstraints.getMessageSize(object.path_constraints);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/ScanningGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e318ff248a9956ef2cf074c8e1f2c43d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    # Arm Command Enumeration
    uint8 STOP       = 0
    uint8 START      = 1
    uint8 GET_MARKER = 2
    uint8 MAP        = 3
    uint8 MOVE       = 4 # Move Arm to Position
    uint8 ACTUATE    = 5 # e.g. prune/pick/thin
    
    # Arm command
    uint8 command
    
    # Marker Type
    uint8 MARKER_ARUCO = 0
    uint8 MARKER_CHARUCO = 1
    uint8 marker_type
    
    # Initial Pose to move arm too
    geometry_msgs/PoseStamped pose
    geometry_msgs/PointStamped rail_pose
    geometry_msgs/PointStamped rail_marker_target
    
    # Planning Link
    std_msgs/String planning_link
    
    # World Link
    std_msgs/String world_link
    
    # Path to save data too
    std_msgs/String file_path
    
    cares_msgs/PathPlanningConstraints path_constraints
    
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: cares_msgs/PathPlanningConstraints
    # Orientation Constraint Type
    uint8 DEFAULT_ORIENT = 0
    uint8 NO_ORIENT = 1
    uint8 FIXED_ORIENT = 2
    uint8 BETWEEN_ORIENT = 3
    
    uint8 orientation_constraint_type
    
    #Constrain EE to volume between current and target path
    uint8 DEFAULT_VOL = 0
    uint8 NO_VOL = 1
    uint8 BOX = 2
    uint8 SPHERE = 3
    uint8 CYLINDER = 4
    uint8 CONE = 5
    
    uint8 volume_constraint_type
    
    # Set planning time, if no time is set default planning time will be used
    float64 allowed_planning_time
    
    # Maximum number of retries for planning
    uint8 max_retries
    
    # Multipler used to increase planning after each unsuccessful attempt
    float64 replanning_multiplier
    # If planning time increases above this value, this value will be used
    float64 max_planning_time
    
    moveit_msgs/Constraints path_constraints
    
    ================================================================================
    MSG: moveit_msgs/Constraints
    # This message contains a list of motion planning constraints.
    # All constraints must be satisfied for a goal to be considered valid
    
    string name
    
    JointConstraint[] joint_constraints
    
    PositionConstraint[] position_constraints
    
    OrientationConstraint[] orientation_constraints
    
    VisibilityConstraint[] visibility_constraints
    
    ================================================================================
    MSG: moveit_msgs/JointConstraint
    # Constrain the position of a joint to be within a certain bound
    string joint_name
    
    # the bound to be achieved is [position - tolerance_below, position + tolerance_above]
    float64 position
    float64 tolerance_above
    float64 tolerance_below
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/PositionConstraint
    # This message contains the definition of a position constraint.
    
    Header header
    
    # The robot link this constraint refers to
    string link_name
    
    # The offset (in the link frame) for the target point on the link we are planning for
    geometry_msgs/Vector3 target_point_offset
    
    # The volume this constraint refers to
    BoundingVolume constraint_region
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: moveit_msgs/BoundingVolume
    # Define a volume in 3D
    
    # A set of solid geometric primitives that make up the volume to define (as a union)
    shape_msgs/SolidPrimitive[] primitives
    
    # The poses at which the primitives are located
    geometry_msgs/Pose[] primitive_poses
    
    # In addition to primitives, meshes can be specified to add to the bounding volume (again, as union)
    shape_msgs/Mesh[] meshes
    
    # The poses at which the meshes are located
    geometry_msgs/Pose[] mesh_poses
    
    ================================================================================
    MSG: shape_msgs/SolidPrimitive
    # Define box, sphere, cylinder, cone 
    # All shapes are defined to have their bounding boxes centered around 0,0,0.
    
    uint8 BOX=1
    uint8 SPHERE=2
    uint8 CYLINDER=3
    uint8 CONE=4
    
    # The type of the shape
    uint8 type
    
    
    # The dimensions of the shape
    float64[] dimensions
    
    # The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array
    
    # For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
    # sides of the box.
    uint8 BOX_X=0
    uint8 BOX_Y=1
    uint8 BOX_Z=2
    
    
    # For the SPHERE type, only one component is used, and it gives the radius of
    # the sphere.
    uint8 SPHERE_RADIUS=0
    
    
    # For the CYLINDER and CONE types, the center line is oriented along
    # the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
    # of dimensions gives the height of the cylinder (cone).  The
    # CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
    # radius of the base of the cylinder (cone).  Cone and cylinder
    # primitives are defined to be circular. The tip of the cone is
    # pointing up, along +Z axis.
    
    uint8 CYLINDER_HEIGHT=0
    uint8 CYLINDER_RADIUS=1
    
    uint8 CONE_HEIGHT=0
    uint8 CONE_RADIUS=1
    
    ================================================================================
    MSG: shape_msgs/Mesh
    # Definition of a mesh
    
    # list of triangles; the index values refer to positions in vertices[]
    MeshTriangle[] triangles
    
    # the actual vertices that make up the mesh
    geometry_msgs/Point[] vertices
    
    ================================================================================
    MSG: shape_msgs/MeshTriangle
    # Definition of a triangle's vertices
    uint32[3] vertex_indices
    
    ================================================================================
    MSG: moveit_msgs/OrientationConstraint
    # This message contains the definition of an orientation constraint.
    
    Header header
    
    # The desired orientation of the robot link specified as a quaternion
    geometry_msgs/Quaternion orientation
    
    # The robot link this constraint refers to
    string link_name
    
    # Tolerance on the three vector components of the orientation error (optional)
    float64 absolute_x_axis_tolerance
    float64 absolute_y_axis_tolerance
    float64 absolute_z_axis_tolerance
    
    # Defines how the orientation error is calculated
    # The error is compared to the tolerance defined above
    uint8 parameterization
    
    # The different options for the orientation error parameterization
    # - Intrinsic xyz Euler angles (default value)
    uint8 XYZ_EULER_ANGLES=0
    # - A rotation vector. This is similar to the angle-axis representation,
    # but the magnitude of the vector represents the rotation angle.
    uint8 ROTATION_VECTOR=1
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    ================================================================================
    MSG: moveit_msgs/VisibilityConstraint
    # The constraint is useful to maintain visibility to a disc (the target) in a particular frame.
    # This disc forms the base of a visibiliy cone whose tip is at the origin of the sensor.
    # Maintaining visibility is done by ensuring the robot does not obstruct the visibility cone.
    # Note:
    # This constraint does NOT enforce minimum or maximum distances between the sensor
    # and the target, nor does it enforce the target to be in the field of view of
    # the sensor. A PositionConstraint can (and probably should) be used for such purposes.
    
    # The radius of the disc that should be maintained visible
    float64 target_radius
    
    # The pose of the disc; as the robot moves, the pose of the disc may change as well
    # This can be in the frame of a particular robot link, for example
    geometry_msgs/PoseStamped target_pose
    
    # From the sensor origin towards the target, the disc forms a visibility cone
    # This cone is approximated using many sides. For example, when using 4 sides,
    # that in fact makes the visibility region be a pyramid.
    # This value should always be 3 or more.
    int32 cone_sides
    
    # The pose in which visibility is to be maintained.
    # The frame id should represent the robot link to which the sensor is attached.
    # It is assumed the sensor can look directly at the target, in any direction.
    # This assumption is usually not true, but additional PositionConstraints
    # can resolve this issue.
    geometry_msgs/PoseStamped sensor_pose
    
    # Even though the disc is maintained visible, the visibility cone can be very small
    # because of the orientation of the disc with respect to the sensor. It is possible
    # for example to view the disk almost from a side, in which case the visibility cone
    # can end up having close to 0 volume. The view angle is defined to be the angle between
    # the normal to the visibility disc and the direction vector from the sensor origin.
    # The value below represents the minimum desired view angle. For a perfect view,
    # this value will be 0 (the two vectors are exact opposites). For a completely obstructed view
    # this value will be Pi/2 (the vectors are perpendicular). This value defined below
    # is the maximum view angle to be maintained. This should be a value in the open interval
    # (0, Pi/2). If 0 is set, the view angle is NOT enforced.
    float64 max_view_angle
    
    # This angle is used similarly to max_view_angle but limits the maximum angle
    # between the sensor origin direction vector and the axis that connects the
    # sensor origin to the target frame origin. The value is again in the range (0, Pi/2)
    # and is NOT enforced if set to 0.
    float64 max_range_angle
    
    # The axis that is assumed to indicate the direction of view for the sensor
    # X = 2, Y = 1, Z = 0
    uint8 SENSOR_Z=0
    uint8 SENSOR_Y=1
    uint8 SENSOR_X=2
    uint8 sensor_view_direction
    
    # A weighting factor for this constraint (denotes relative importance to other constraints. Closer to zero means less important)
    float64 weight
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScanningGoal(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
    }

    if (msg.marker_type !== undefined) {
      resolved.marker_type = msg.marker_type;
    }
    else {
      resolved.marker_type = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.rail_pose !== undefined) {
      resolved.rail_pose = geometry_msgs.msg.PointStamped.Resolve(msg.rail_pose)
    }
    else {
      resolved.rail_pose = new geometry_msgs.msg.PointStamped()
    }

    if (msg.rail_marker_target !== undefined) {
      resolved.rail_marker_target = geometry_msgs.msg.PointStamped.Resolve(msg.rail_marker_target)
    }
    else {
      resolved.rail_marker_target = new geometry_msgs.msg.PointStamped()
    }

    if (msg.planning_link !== undefined) {
      resolved.planning_link = std_msgs.msg.String.Resolve(msg.planning_link)
    }
    else {
      resolved.planning_link = new std_msgs.msg.String()
    }

    if (msg.world_link !== undefined) {
      resolved.world_link = std_msgs.msg.String.Resolve(msg.world_link)
    }
    else {
      resolved.world_link = new std_msgs.msg.String()
    }

    if (msg.file_path !== undefined) {
      resolved.file_path = std_msgs.msg.String.Resolve(msg.file_path)
    }
    else {
      resolved.file_path = new std_msgs.msg.String()
    }

    if (msg.path_constraints !== undefined) {
      resolved.path_constraints = PathPlanningConstraints.Resolve(msg.path_constraints)
    }
    else {
      resolved.path_constraints = new PathPlanningConstraints()
    }

    return resolved;
    }
};

// Constants for message
ScanningGoal.Constants = {
  STOP: 0,
  START: 1,
  GET_MARKER: 2,
  MAP: 3,
  MOVE: 4,
  ACTUATE: 5,
  MARKER_ARUCO: 0,
  MARKER_CHARUCO: 1,
}

module.exports = ScanningGoal;
