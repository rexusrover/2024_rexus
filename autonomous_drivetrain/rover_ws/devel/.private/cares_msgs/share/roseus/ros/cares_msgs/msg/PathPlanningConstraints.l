;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::PathPlanningConstraints)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'PathPlanningConstraints (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS")
  (make-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))

(in-package "ROS")
;;//! \htmlinclude PathPlanningConstraints.msg.html
(if (not (find-package "MOVEIT_MSGS"))
  (ros::roseus-add-msgs "moveit_msgs"))


(intern "*DEFAULT_ORIENT*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*DEFAULT_ORIENT* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*DEFAULT_ORIENT* 0)
(intern "*NO_ORIENT*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*NO_ORIENT* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*NO_ORIENT* 1)
(intern "*FIXED_ORIENT*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*FIXED_ORIENT* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*FIXED_ORIENT* 2)
(intern "*BETWEEN_ORIENT*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*BETWEEN_ORIENT* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*BETWEEN_ORIENT* 3)
(intern "*DEFAULT_VOL*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*DEFAULT_VOL* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*DEFAULT_VOL* 0)
(intern "*NO_VOL*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*NO_VOL* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*NO_VOL* 1)
(intern "*BOX*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*BOX* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*BOX* 2)
(intern "*SPHERE*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*SPHERE* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*SPHERE* 3)
(intern "*CYLINDER*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*CYLINDER* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*CYLINDER* 4)
(intern "*CONE*" (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(shadow '*CONE* (find-package "CARES_MSGS::PATHPLANNINGCONSTRAINTS"))
(defconstant cares_msgs::PathPlanningConstraints::*CONE* 5)

(defun cares_msgs::PathPlanningConstraints-to-symbol (const)
  (cond
        ((= const 0) 'cares_msgs::PathPlanningConstraints::*DEFAULT_ORIENT*)
        ((= const 1) 'cares_msgs::PathPlanningConstraints::*NO_ORIENT*)
        ((= const 2) 'cares_msgs::PathPlanningConstraints::*FIXED_ORIENT*)
        ((= const 3) 'cares_msgs::PathPlanningConstraints::*BETWEEN_ORIENT*)
        ((= const 0) 'cares_msgs::PathPlanningConstraints::*DEFAULT_VOL*)
        ((= const 1) 'cares_msgs::PathPlanningConstraints::*NO_VOL*)
        ((= const 2) 'cares_msgs::PathPlanningConstraints::*BOX*)
        ((= const 3) 'cares_msgs::PathPlanningConstraints::*SPHERE*)
        ((= const 4) 'cares_msgs::PathPlanningConstraints::*CYLINDER*)
        ((= const 5) 'cares_msgs::PathPlanningConstraints::*CONE*)
        (t nil)))

(defclass cares_msgs::PathPlanningConstraints
  :super ros::object
  :slots (_orientation_constraint_type _volume_constraint_type _allowed_planning_time _max_retries _replanning_multiplier _max_planning_time _path_constraints ))

(defmethod cares_msgs::PathPlanningConstraints
  (:init
   (&key
    ((:orientation_constraint_type __orientation_constraint_type) 0)
    ((:volume_constraint_type __volume_constraint_type) 0)
    ((:allowed_planning_time __allowed_planning_time) 0.0)
    ((:max_retries __max_retries) 0)
    ((:replanning_multiplier __replanning_multiplier) 0.0)
    ((:max_planning_time __max_planning_time) 0.0)
    ((:path_constraints __path_constraints) (instance moveit_msgs::Constraints :init))
    )
   (send-super :init)
   (setq _orientation_constraint_type (round __orientation_constraint_type))
   (setq _volume_constraint_type (round __volume_constraint_type))
   (setq _allowed_planning_time (float __allowed_planning_time))
   (setq _max_retries (round __max_retries))
   (setq _replanning_multiplier (float __replanning_multiplier))
   (setq _max_planning_time (float __max_planning_time))
   (setq _path_constraints __path_constraints)
   self)
  (:orientation_constraint_type
   (&optional __orientation_constraint_type)
   (if __orientation_constraint_type (setq _orientation_constraint_type __orientation_constraint_type)) _orientation_constraint_type)
  (:volume_constraint_type
   (&optional __volume_constraint_type)
   (if __volume_constraint_type (setq _volume_constraint_type __volume_constraint_type)) _volume_constraint_type)
  (:allowed_planning_time
   (&optional __allowed_planning_time)
   (if __allowed_planning_time (setq _allowed_planning_time __allowed_planning_time)) _allowed_planning_time)
  (:max_retries
   (&optional __max_retries)
   (if __max_retries (setq _max_retries __max_retries)) _max_retries)
  (:replanning_multiplier
   (&optional __replanning_multiplier)
   (if __replanning_multiplier (setq _replanning_multiplier __replanning_multiplier)) _replanning_multiplier)
  (:max_planning_time
   (&optional __max_planning_time)
   (if __max_planning_time (setq _max_planning_time __max_planning_time)) _max_planning_time)
  (:path_constraints
   (&rest __path_constraints)
   (if (keywordp (car __path_constraints))
       (send* _path_constraints __path_constraints)
     (progn
       (if __path_constraints (setq _path_constraints (car __path_constraints)))
       _path_constraints)))
  (:serialization-length
   ()
   (+
    ;; uint8 _orientation_constraint_type
    1
    ;; uint8 _volume_constraint_type
    1
    ;; float64 _allowed_planning_time
    8
    ;; uint8 _max_retries
    1
    ;; float64 _replanning_multiplier
    8
    ;; float64 _max_planning_time
    8
    ;; moveit_msgs/Constraints _path_constraints
    (send _path_constraints :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _orientation_constraint_type
       (write-byte _orientation_constraint_type s)
     ;; uint8 _volume_constraint_type
       (write-byte _volume_constraint_type s)
     ;; float64 _allowed_planning_time
       (sys::poke _allowed_planning_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _max_retries
       (write-byte _max_retries s)
     ;; float64 _replanning_multiplier
       (sys::poke _replanning_multiplier (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_planning_time
       (sys::poke _max_planning_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; moveit_msgs/Constraints _path_constraints
       (send _path_constraints :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _orientation_constraint_type
     (setq _orientation_constraint_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _volume_constraint_type
     (setq _volume_constraint_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _allowed_planning_time
     (setq _allowed_planning_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _max_retries
     (setq _max_retries (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _replanning_multiplier
     (setq _replanning_multiplier (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_planning_time
     (setq _max_planning_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; moveit_msgs/Constraints _path_constraints
     (send _path_constraints :deserialize buf ptr-) (incf ptr- (send _path_constraints :serialization-length))
   ;;
   self)
  )

(setf (get cares_msgs::PathPlanningConstraints :md5sum-) "d902e08c4f7b8ac5f42349a281e44e8e")
(setf (get cares_msgs::PathPlanningConstraints :datatype-) "cares_msgs/PathPlanningConstraints")
(setf (get cares_msgs::PathPlanningConstraints :definition-)
      "# Orientation Constraint Type
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

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

")



(provide :cares_msgs/PathPlanningConstraints "d902e08c4f7b8ac5f42349a281e44e8e")


