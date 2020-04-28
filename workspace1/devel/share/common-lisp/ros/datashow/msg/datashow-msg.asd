
(cl:in-package :asdf)

(defsystem "datashow-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Pose_error" :depends-on ("_package_Pose_error"))
    (:file "_package_Pose_error" :depends-on ("_package"))
  ))