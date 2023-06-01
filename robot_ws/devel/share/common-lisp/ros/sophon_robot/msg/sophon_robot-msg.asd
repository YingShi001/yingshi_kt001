
(cl:in-package :asdf)

(defsystem "sophon_robot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Bbox" :depends-on ("_package_Bbox"))
    (:file "_package_Bbox" :depends-on ("_package"))
    (:file "Bboxes" :depends-on ("_package_Bboxes"))
    (:file "_package_Bboxes" :depends-on ("_package"))
    (:file "Frame" :depends-on ("_package_Frame"))
    (:file "_package_Frame" :depends-on ("_package"))
  ))