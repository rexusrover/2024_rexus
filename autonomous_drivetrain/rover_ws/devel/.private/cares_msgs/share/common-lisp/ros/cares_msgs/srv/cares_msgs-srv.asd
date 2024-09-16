
(cl:in-package :asdf)

(defsystem "cares_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cares_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ArucoDetect" :depends-on ("_package_ArucoDetect"))
    (:file "_package_ArucoDetect" :depends-on ("_package"))
    (:file "CalibrationService" :depends-on ("_package_CalibrationService"))
    (:file "_package_CalibrationService" :depends-on ("_package"))
    (:file "Detection" :depends-on ("_package_Detection"))
    (:file "_package_Detection" :depends-on ("_package"))
    (:file "ExtractCutPoints" :depends-on ("_package_ExtractCutPoints"))
    (:file "_package_ExtractCutPoints" :depends-on ("_package"))
    (:file "ExtractThinPoints" :depends-on ("_package_ExtractThinPoints"))
    (:file "_package_ExtractThinPoints" :depends-on ("_package"))
    (:file "LoadVine" :depends-on ("_package_LoadVine"))
    (:file "_package_LoadVine" :depends-on ("_package"))
    (:file "MergeExtractor" :depends-on ("_package_MergeExtractor"))
    (:file "_package_MergeExtractor" :depends-on ("_package"))
    (:file "SaveCaneGT" :depends-on ("_package_SaveCaneGT"))
    (:file "_package_SaveCaneGT" :depends-on ("_package"))
    (:file "SetThinPoints" :depends-on ("_package_SetThinPoints"))
    (:file "_package_SetThinPoints" :depends-on ("_package"))
  ))