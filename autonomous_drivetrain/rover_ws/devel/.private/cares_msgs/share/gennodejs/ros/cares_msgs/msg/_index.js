
"use strict";

let ArucoMarkers = require('./ArucoMarkers.js');
let InstanceMasks = require('./InstanceMasks.js');
let Cane = require('./Cane.js');
let Fruitlets = require('./Fruitlets.js');
let StereoCameraInfo = require('./StereoCameraInfo.js');
let CutPoint = require('./CutPoint.js');
let NodeNeighbourInfo = require('./NodeNeighbourInfo.js');
let PathPlanningConstraints = require('./PathPlanningConstraints.js');
let Metrics = require('./Metrics.js');
let Node = require('./Node.js');
let Fruitlet = require('./Fruitlet.js');
let Vine = require('./Vine.js');
let MetricExtractionAction = require('./MetricExtractionAction.js');
let ScanningFeedback = require('./ScanningFeedback.js');
let ScanningResult = require('./ScanningResult.js');
let ThinFeedback = require('./ThinFeedback.js');
let CutGoal = require('./CutGoal.js');
let ScanningActionResult = require('./ScanningActionResult.js');
let CutActionResult = require('./CutActionResult.js');
let ThinAction = require('./ThinAction.js');
let ArchieRailCmdAction = require('./ArchieRailCmdAction.js');
let ThinActionFeedback = require('./ThinActionFeedback.js');
let MappingGoal = require('./MappingGoal.js');
let CutActionGoal = require('./CutActionGoal.js');
let MetricExtractionActionResult = require('./MetricExtractionActionResult.js');
let PlatformGoalFeedback = require('./PlatformGoalFeedback.js');
let CutResult = require('./CutResult.js');
let NavigationFeedback = require('./NavigationFeedback.js');
let CutActionFeedback = require('./CutActionFeedback.js');
let ArchieRailCmdFeedback = require('./ArchieRailCmdFeedback.js');
let MetricExtractionGoal = require('./MetricExtractionGoal.js');
let MetricExtractionActionFeedback = require('./MetricExtractionActionFeedback.js');
let ThinGoal = require('./ThinGoal.js');
let ActuationAction = require('./ActuationAction.js');
let MappingAction = require('./MappingAction.js');
let ThinResult = require('./ThinResult.js');
let PlatformGoalActionResult = require('./PlatformGoalActionResult.js');
let NavigationAction = require('./NavigationAction.js');
let NavigationActionGoal = require('./NavigationActionGoal.js');
let ScanningAction = require('./ScanningAction.js');
let ArchieRailCmdActionResult = require('./ArchieRailCmdActionResult.js');
let NavigationActionFeedback = require('./NavigationActionFeedback.js');
let ScanningGoal = require('./ScanningGoal.js');
let NavigationResult = require('./NavigationResult.js');
let MetricExtractionActionGoal = require('./MetricExtractionActionGoal.js');
let CutAction = require('./CutAction.js');
let NavigationGoal = require('./NavigationGoal.js');
let MappingActionResult = require('./MappingActionResult.js');
let ArchieRailCmdGoal = require('./ArchieRailCmdGoal.js');
let ActuationGoal = require('./ActuationGoal.js');
let ArchieRailCmdActionFeedback = require('./ArchieRailCmdActionFeedback.js');
let PlatformGoalGoal = require('./PlatformGoalGoal.js');
let MappingActionFeedback = require('./MappingActionFeedback.js');
let ActuationActionGoal = require('./ActuationActionGoal.js');
let CutFeedback = require('./CutFeedback.js');
let PlatformGoalResult = require('./PlatformGoalResult.js');
let PlatformGoalAction = require('./PlatformGoalAction.js');
let MappingActionGoal = require('./MappingActionGoal.js');
let ThinActionGoal = require('./ThinActionGoal.js');
let ActuationFeedback = require('./ActuationFeedback.js');
let MappingResult = require('./MappingResult.js');
let ActuationResult = require('./ActuationResult.js');
let MetricExtractionResult = require('./MetricExtractionResult.js');
let ThinActionResult = require('./ThinActionResult.js');
let ActuationActionFeedback = require('./ActuationActionFeedback.js');
let ArchieRailCmdResult = require('./ArchieRailCmdResult.js');
let MetricExtractionFeedback = require('./MetricExtractionFeedback.js');
let MappingFeedback = require('./MappingFeedback.js');
let ActuationActionResult = require('./ActuationActionResult.js');
let PlatformGoalActionFeedback = require('./PlatformGoalActionFeedback.js');
let NavigationActionResult = require('./NavigationActionResult.js');
let PlatformGoalActionGoal = require('./PlatformGoalActionGoal.js');
let ScanningActionGoal = require('./ScanningActionGoal.js');
let ScanningActionFeedback = require('./ScanningActionFeedback.js');
let ArchieRailCmdActionGoal = require('./ArchieRailCmdActionGoal.js');

module.exports = {
  ArucoMarkers: ArucoMarkers,
  InstanceMasks: InstanceMasks,
  Cane: Cane,
  Fruitlets: Fruitlets,
  StereoCameraInfo: StereoCameraInfo,
  CutPoint: CutPoint,
  NodeNeighbourInfo: NodeNeighbourInfo,
  PathPlanningConstraints: PathPlanningConstraints,
  Metrics: Metrics,
  Node: Node,
  Fruitlet: Fruitlet,
  Vine: Vine,
  MetricExtractionAction: MetricExtractionAction,
  ScanningFeedback: ScanningFeedback,
  ScanningResult: ScanningResult,
  ThinFeedback: ThinFeedback,
  CutGoal: CutGoal,
  ScanningActionResult: ScanningActionResult,
  CutActionResult: CutActionResult,
  ThinAction: ThinAction,
  ArchieRailCmdAction: ArchieRailCmdAction,
  ThinActionFeedback: ThinActionFeedback,
  MappingGoal: MappingGoal,
  CutActionGoal: CutActionGoal,
  MetricExtractionActionResult: MetricExtractionActionResult,
  PlatformGoalFeedback: PlatformGoalFeedback,
  CutResult: CutResult,
  NavigationFeedback: NavigationFeedback,
  CutActionFeedback: CutActionFeedback,
  ArchieRailCmdFeedback: ArchieRailCmdFeedback,
  MetricExtractionGoal: MetricExtractionGoal,
  MetricExtractionActionFeedback: MetricExtractionActionFeedback,
  ThinGoal: ThinGoal,
  ActuationAction: ActuationAction,
  MappingAction: MappingAction,
  ThinResult: ThinResult,
  PlatformGoalActionResult: PlatformGoalActionResult,
  NavigationAction: NavigationAction,
  NavigationActionGoal: NavigationActionGoal,
  ScanningAction: ScanningAction,
  ArchieRailCmdActionResult: ArchieRailCmdActionResult,
  NavigationActionFeedback: NavigationActionFeedback,
  ScanningGoal: ScanningGoal,
  NavigationResult: NavigationResult,
  MetricExtractionActionGoal: MetricExtractionActionGoal,
  CutAction: CutAction,
  NavigationGoal: NavigationGoal,
  MappingActionResult: MappingActionResult,
  ArchieRailCmdGoal: ArchieRailCmdGoal,
  ActuationGoal: ActuationGoal,
  ArchieRailCmdActionFeedback: ArchieRailCmdActionFeedback,
  PlatformGoalGoal: PlatformGoalGoal,
  MappingActionFeedback: MappingActionFeedback,
  ActuationActionGoal: ActuationActionGoal,
  CutFeedback: CutFeedback,
  PlatformGoalResult: PlatformGoalResult,
  PlatformGoalAction: PlatformGoalAction,
  MappingActionGoal: MappingActionGoal,
  ThinActionGoal: ThinActionGoal,
  ActuationFeedback: ActuationFeedback,
  MappingResult: MappingResult,
  ActuationResult: ActuationResult,
  MetricExtractionResult: MetricExtractionResult,
  ThinActionResult: ThinActionResult,
  ActuationActionFeedback: ActuationActionFeedback,
  ArchieRailCmdResult: ArchieRailCmdResult,
  MetricExtractionFeedback: MetricExtractionFeedback,
  MappingFeedback: MappingFeedback,
  ActuationActionResult: ActuationActionResult,
  PlatformGoalActionFeedback: PlatformGoalActionFeedback,
  NavigationActionResult: NavigationActionResult,
  PlatformGoalActionGoal: PlatformGoalActionGoal,
  ScanningActionGoal: ScanningActionGoal,
  ScanningActionFeedback: ScanningActionFeedback,
  ArchieRailCmdActionGoal: ArchieRailCmdActionGoal,
};
