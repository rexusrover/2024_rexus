
(cl:in-package :asdf)

(defsystem "cares_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :moveit_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActuationAction" :depends-on ("_package_ActuationAction"))
    (:file "_package_ActuationAction" :depends-on ("_package"))
    (:file "ActuationActionFeedback" :depends-on ("_package_ActuationActionFeedback"))
    (:file "_package_ActuationActionFeedback" :depends-on ("_package"))
    (:file "ActuationActionGoal" :depends-on ("_package_ActuationActionGoal"))
    (:file "_package_ActuationActionGoal" :depends-on ("_package"))
    (:file "ActuationActionResult" :depends-on ("_package_ActuationActionResult"))
    (:file "_package_ActuationActionResult" :depends-on ("_package"))
    (:file "ActuationFeedback" :depends-on ("_package_ActuationFeedback"))
    (:file "_package_ActuationFeedback" :depends-on ("_package"))
    (:file "ActuationGoal" :depends-on ("_package_ActuationGoal"))
    (:file "_package_ActuationGoal" :depends-on ("_package"))
    (:file "ActuationResult" :depends-on ("_package_ActuationResult"))
    (:file "_package_ActuationResult" :depends-on ("_package"))
    (:file "ArchieRailCmdAction" :depends-on ("_package_ArchieRailCmdAction"))
    (:file "_package_ArchieRailCmdAction" :depends-on ("_package"))
    (:file "ArchieRailCmdActionFeedback" :depends-on ("_package_ArchieRailCmdActionFeedback"))
    (:file "_package_ArchieRailCmdActionFeedback" :depends-on ("_package"))
    (:file "ArchieRailCmdActionGoal" :depends-on ("_package_ArchieRailCmdActionGoal"))
    (:file "_package_ArchieRailCmdActionGoal" :depends-on ("_package"))
    (:file "ArchieRailCmdActionResult" :depends-on ("_package_ArchieRailCmdActionResult"))
    (:file "_package_ArchieRailCmdActionResult" :depends-on ("_package"))
    (:file "ArchieRailCmdFeedback" :depends-on ("_package_ArchieRailCmdFeedback"))
    (:file "_package_ArchieRailCmdFeedback" :depends-on ("_package"))
    (:file "ArchieRailCmdGoal" :depends-on ("_package_ArchieRailCmdGoal"))
    (:file "_package_ArchieRailCmdGoal" :depends-on ("_package"))
    (:file "ArchieRailCmdResult" :depends-on ("_package_ArchieRailCmdResult"))
    (:file "_package_ArchieRailCmdResult" :depends-on ("_package"))
    (:file "ArucoMarkers" :depends-on ("_package_ArucoMarkers"))
    (:file "_package_ArucoMarkers" :depends-on ("_package"))
    (:file "Cane" :depends-on ("_package_Cane"))
    (:file "_package_Cane" :depends-on ("_package"))
    (:file "CutAction" :depends-on ("_package_CutAction"))
    (:file "_package_CutAction" :depends-on ("_package"))
    (:file "CutActionFeedback" :depends-on ("_package_CutActionFeedback"))
    (:file "_package_CutActionFeedback" :depends-on ("_package"))
    (:file "CutActionGoal" :depends-on ("_package_CutActionGoal"))
    (:file "_package_CutActionGoal" :depends-on ("_package"))
    (:file "CutActionResult" :depends-on ("_package_CutActionResult"))
    (:file "_package_CutActionResult" :depends-on ("_package"))
    (:file "CutFeedback" :depends-on ("_package_CutFeedback"))
    (:file "_package_CutFeedback" :depends-on ("_package"))
    (:file "CutGoal" :depends-on ("_package_CutGoal"))
    (:file "_package_CutGoal" :depends-on ("_package"))
    (:file "CutPoint" :depends-on ("_package_CutPoint"))
    (:file "_package_CutPoint" :depends-on ("_package"))
    (:file "CutResult" :depends-on ("_package_CutResult"))
    (:file "_package_CutResult" :depends-on ("_package"))
    (:file "Fruitlet" :depends-on ("_package_Fruitlet"))
    (:file "_package_Fruitlet" :depends-on ("_package"))
    (:file "Fruitlets" :depends-on ("_package_Fruitlets"))
    (:file "_package_Fruitlets" :depends-on ("_package"))
    (:file "InstanceMasks" :depends-on ("_package_InstanceMasks"))
    (:file "_package_InstanceMasks" :depends-on ("_package"))
    (:file "MappingAction" :depends-on ("_package_MappingAction"))
    (:file "_package_MappingAction" :depends-on ("_package"))
    (:file "MappingActionFeedback" :depends-on ("_package_MappingActionFeedback"))
    (:file "_package_MappingActionFeedback" :depends-on ("_package"))
    (:file "MappingActionGoal" :depends-on ("_package_MappingActionGoal"))
    (:file "_package_MappingActionGoal" :depends-on ("_package"))
    (:file "MappingActionResult" :depends-on ("_package_MappingActionResult"))
    (:file "_package_MappingActionResult" :depends-on ("_package"))
    (:file "MappingFeedback" :depends-on ("_package_MappingFeedback"))
    (:file "_package_MappingFeedback" :depends-on ("_package"))
    (:file "MappingGoal" :depends-on ("_package_MappingGoal"))
    (:file "_package_MappingGoal" :depends-on ("_package"))
    (:file "MappingResult" :depends-on ("_package_MappingResult"))
    (:file "_package_MappingResult" :depends-on ("_package"))
    (:file "MetricExtractionAction" :depends-on ("_package_MetricExtractionAction"))
    (:file "_package_MetricExtractionAction" :depends-on ("_package"))
    (:file "MetricExtractionActionFeedback" :depends-on ("_package_MetricExtractionActionFeedback"))
    (:file "_package_MetricExtractionActionFeedback" :depends-on ("_package"))
    (:file "MetricExtractionActionGoal" :depends-on ("_package_MetricExtractionActionGoal"))
    (:file "_package_MetricExtractionActionGoal" :depends-on ("_package"))
    (:file "MetricExtractionActionResult" :depends-on ("_package_MetricExtractionActionResult"))
    (:file "_package_MetricExtractionActionResult" :depends-on ("_package"))
    (:file "MetricExtractionFeedback" :depends-on ("_package_MetricExtractionFeedback"))
    (:file "_package_MetricExtractionFeedback" :depends-on ("_package"))
    (:file "MetricExtractionGoal" :depends-on ("_package_MetricExtractionGoal"))
    (:file "_package_MetricExtractionGoal" :depends-on ("_package"))
    (:file "MetricExtractionResult" :depends-on ("_package_MetricExtractionResult"))
    (:file "_package_MetricExtractionResult" :depends-on ("_package"))
    (:file "Metrics" :depends-on ("_package_Metrics"))
    (:file "_package_Metrics" :depends-on ("_package"))
    (:file "NavigationAction" :depends-on ("_package_NavigationAction"))
    (:file "_package_NavigationAction" :depends-on ("_package"))
    (:file "NavigationActionFeedback" :depends-on ("_package_NavigationActionFeedback"))
    (:file "_package_NavigationActionFeedback" :depends-on ("_package"))
    (:file "NavigationActionGoal" :depends-on ("_package_NavigationActionGoal"))
    (:file "_package_NavigationActionGoal" :depends-on ("_package"))
    (:file "NavigationActionResult" :depends-on ("_package_NavigationActionResult"))
    (:file "_package_NavigationActionResult" :depends-on ("_package"))
    (:file "NavigationFeedback" :depends-on ("_package_NavigationFeedback"))
    (:file "_package_NavigationFeedback" :depends-on ("_package"))
    (:file "NavigationGoal" :depends-on ("_package_NavigationGoal"))
    (:file "_package_NavigationGoal" :depends-on ("_package"))
    (:file "NavigationResult" :depends-on ("_package_NavigationResult"))
    (:file "_package_NavigationResult" :depends-on ("_package"))
    (:file "Node" :depends-on ("_package_Node"))
    (:file "_package_Node" :depends-on ("_package"))
    (:file "NodeNeighbourInfo" :depends-on ("_package_NodeNeighbourInfo"))
    (:file "_package_NodeNeighbourInfo" :depends-on ("_package"))
    (:file "PathPlanningConstraints" :depends-on ("_package_PathPlanningConstraints"))
    (:file "_package_PathPlanningConstraints" :depends-on ("_package"))
    (:file "PlatformGoalAction" :depends-on ("_package_PlatformGoalAction"))
    (:file "_package_PlatformGoalAction" :depends-on ("_package"))
    (:file "PlatformGoalActionFeedback" :depends-on ("_package_PlatformGoalActionFeedback"))
    (:file "_package_PlatformGoalActionFeedback" :depends-on ("_package"))
    (:file "PlatformGoalActionGoal" :depends-on ("_package_PlatformGoalActionGoal"))
    (:file "_package_PlatformGoalActionGoal" :depends-on ("_package"))
    (:file "PlatformGoalActionResult" :depends-on ("_package_PlatformGoalActionResult"))
    (:file "_package_PlatformGoalActionResult" :depends-on ("_package"))
    (:file "PlatformGoalFeedback" :depends-on ("_package_PlatformGoalFeedback"))
    (:file "_package_PlatformGoalFeedback" :depends-on ("_package"))
    (:file "PlatformGoalGoal" :depends-on ("_package_PlatformGoalGoal"))
    (:file "_package_PlatformGoalGoal" :depends-on ("_package"))
    (:file "PlatformGoalResult" :depends-on ("_package_PlatformGoalResult"))
    (:file "_package_PlatformGoalResult" :depends-on ("_package"))
    (:file "ScanningAction" :depends-on ("_package_ScanningAction"))
    (:file "_package_ScanningAction" :depends-on ("_package"))
    (:file "ScanningActionFeedback" :depends-on ("_package_ScanningActionFeedback"))
    (:file "_package_ScanningActionFeedback" :depends-on ("_package"))
    (:file "ScanningActionGoal" :depends-on ("_package_ScanningActionGoal"))
    (:file "_package_ScanningActionGoal" :depends-on ("_package"))
    (:file "ScanningActionResult" :depends-on ("_package_ScanningActionResult"))
    (:file "_package_ScanningActionResult" :depends-on ("_package"))
    (:file "ScanningFeedback" :depends-on ("_package_ScanningFeedback"))
    (:file "_package_ScanningFeedback" :depends-on ("_package"))
    (:file "ScanningGoal" :depends-on ("_package_ScanningGoal"))
    (:file "_package_ScanningGoal" :depends-on ("_package"))
    (:file "ScanningResult" :depends-on ("_package_ScanningResult"))
    (:file "_package_ScanningResult" :depends-on ("_package"))
    (:file "StereoCameraInfo" :depends-on ("_package_StereoCameraInfo"))
    (:file "_package_StereoCameraInfo" :depends-on ("_package"))
    (:file "ThinAction" :depends-on ("_package_ThinAction"))
    (:file "_package_ThinAction" :depends-on ("_package"))
    (:file "ThinActionFeedback" :depends-on ("_package_ThinActionFeedback"))
    (:file "_package_ThinActionFeedback" :depends-on ("_package"))
    (:file "ThinActionGoal" :depends-on ("_package_ThinActionGoal"))
    (:file "_package_ThinActionGoal" :depends-on ("_package"))
    (:file "ThinActionResult" :depends-on ("_package_ThinActionResult"))
    (:file "_package_ThinActionResult" :depends-on ("_package"))
    (:file "ThinFeedback" :depends-on ("_package_ThinFeedback"))
    (:file "_package_ThinFeedback" :depends-on ("_package"))
    (:file "ThinGoal" :depends-on ("_package_ThinGoal"))
    (:file "_package_ThinGoal" :depends-on ("_package"))
    (:file "ThinResult" :depends-on ("_package_ThinResult"))
    (:file "_package_ThinResult" :depends-on ("_package"))
    (:file "Vine" :depends-on ("_package_Vine"))
    (:file "_package_Vine" :depends-on ("_package"))
  ))