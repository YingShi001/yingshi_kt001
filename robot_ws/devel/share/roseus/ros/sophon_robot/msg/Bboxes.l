;; Auto-generated. Do not edit!


(when (boundp 'sophon_robot::Bboxes)
  (if (not (find-package "SOPHON_ROBOT"))
    (make-package "SOPHON_ROBOT"))
  (shadow 'Bboxes (find-package "SOPHON_ROBOT")))
(unless (find-package "SOPHON_ROBOT::BBOXES")
  (make-package "SOPHON_ROBOT::BBOXES"))

(in-package "ROS")
;;//! \htmlinclude Bboxes.msg.html


(defclass sophon_robot::Bboxes
  :super ros::object
  :slots (_frame_id _num_object _bboxes ))

(defmethod sophon_robot::Bboxes
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:num_object __num_object) 0)
    ((:bboxes __bboxes) ())
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _num_object (round __num_object))
   (setq _bboxes __bboxes)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:num_object
   (&optional __num_object)
   (if __num_object (setq _num_object __num_object)) _num_object)
  (:bboxes
   (&rest __bboxes)
   (if (keywordp (car __bboxes))
       (send* _bboxes __bboxes)
     (progn
       (if __bboxes (setq _bboxes (car __bboxes)))
       _bboxes)))
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint32 _num_object
    4
    ;; sophon_robot/Bbox[] _bboxes
    (apply #'+ (send-all _bboxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint32 _num_object
       (write-long _num_object s)
     ;; sophon_robot/Bbox[] _bboxes
     (write-long (length _bboxes) s)
     (dolist (elem _bboxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_object
     (setq _num_object (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sophon_robot/Bbox[] _bboxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bboxes (let (r) (dotimes (i n) (push (instance sophon_robot::Bbox :init) r)) r))
     (dolist (elem- _bboxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sophon_robot::Bboxes :md5sum-) "bce7b973189104571425eaff14883c6a")
(setf (get sophon_robot::Bboxes :datatype-) "sophon_robot/Bboxes")
(setf (get sophon_robot::Bboxes :definition-)
      "uint32 frame_id
uint32 num_object
Bbox[] bboxes

================================================================================
MSG: sophon_robot/Bbox
uint32 frame_id
uint32 object_id 
int32  track_id
string object_name
float32  left_top_x
float32  left_top_y
float32  width
float32  height
float32  conf
")



(provide :sophon_robot/Bboxes "bce7b973189104571425eaff14883c6a")


