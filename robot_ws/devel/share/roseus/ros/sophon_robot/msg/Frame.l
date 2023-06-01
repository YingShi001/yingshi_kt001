;; Auto-generated. Do not edit!


(when (boundp 'sophon_robot::Frame)
  (if (not (find-package "SOPHON_ROBOT"))
    (make-package "SOPHON_ROBOT"))
  (shadow 'Frame (find-package "SOPHON_ROBOT")))
(unless (find-package "SOPHON_ROBOT::FRAME")
  (make-package "SOPHON_ROBOT::FRAME"))

(in-package "ROS")
;;//! \htmlinclude Frame.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass sophon_robot::Frame
  :super ros::object
  :slots (_frame_id _img _bboxes ))

(defmethod sophon_robot::Frame
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:img __img) (instance sensor_msgs::CompressedImage :init))
    ((:bboxes __bboxes) (instance sophon_robot::Bboxes :init))
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _img __img)
   (setq _bboxes __bboxes)
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:img
   (&rest __img)
   (if (keywordp (car __img))
       (send* _img __img)
     (progn
       (if __img (setq _img (car __img)))
       _img)))
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
    ;; sensor_msgs/CompressedImage _img
    (send _img :serialization-length)
    ;; sophon_robot/Bboxes _bboxes
    (send _bboxes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; sensor_msgs/CompressedImage _img
       (send _img :serialize s)
     ;; sophon_robot/Bboxes _bboxes
       (send _bboxes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/CompressedImage _img
     (send _img :deserialize buf ptr-) (incf ptr- (send _img :serialization-length))
   ;; sophon_robot/Bboxes _bboxes
     (send _bboxes :deserialize buf ptr-) (incf ptr- (send _bboxes :serialization-length))
   ;;
   self)
  )

(setf (get sophon_robot::Frame :md5sum-) "c73f23c5150c19b07c35b376f304e421")
(setf (get sophon_robot::Frame :datatype-) "sophon_robot/Frame")
(setf (get sophon_robot::Frame :definition-)
      "uint32 frame_id
sensor_msgs/CompressedImage img
Bboxes bboxes
================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

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
MSG: sophon_robot/Bboxes
uint32 frame_id
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



(provide :sophon_robot/Frame "c73f23c5150c19b07c35b376f304e421")


