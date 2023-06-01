;; Auto-generated. Do not edit!


(when (boundp 'sophon_robot::Bbox)
  (if (not (find-package "SOPHON_ROBOT"))
    (make-package "SOPHON_ROBOT"))
  (shadow 'Bbox (find-package "SOPHON_ROBOT")))
(unless (find-package "SOPHON_ROBOT::BBOX")
  (make-package "SOPHON_ROBOT::BBOX"))

(in-package "ROS")
;;//! \htmlinclude Bbox.msg.html


(defclass sophon_robot::Bbox
  :super ros::object
  :slots (_frame_id _object_id _track_id _object_name _left_top_x _left_top_y _width _height _conf ))

(defmethod sophon_robot::Bbox
  (:init
   (&key
    ((:frame_id __frame_id) 0)
    ((:object_id __object_id) 0)
    ((:track_id __track_id) 0)
    ((:object_name __object_name) "")
    ((:left_top_x __left_top_x) 0.0)
    ((:left_top_y __left_top_y) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:conf __conf) 0.0)
    )
   (send-super :init)
   (setq _frame_id (round __frame_id))
   (setq _object_id (round __object_id))
   (setq _track_id (round __track_id))
   (setq _object_name (string __object_name))
   (setq _left_top_x (float __left_top_x))
   (setq _left_top_y (float __left_top_y))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _conf (float __conf))
   self)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:left_top_x
   (&optional __left_top_x)
   (if __left_top_x (setq _left_top_x __left_top_x)) _left_top_x)
  (:left_top_y
   (&optional __left_top_y)
   (if __left_top_y (setq _left_top_y __left_top_y)) _left_top_y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:conf
   (&optional __conf)
   (if __conf (setq _conf __conf)) _conf)
  (:serialization-length
   ()
   (+
    ;; uint32 _frame_id
    4
    ;; uint32 _object_id
    4
    ;; int32 _track_id
    4
    ;; string _object_name
    4 (length _object_name)
    ;; float32 _left_top_x
    4
    ;; float32 _left_top_y
    4
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _conf
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frame_id
       (write-long _frame_id s)
     ;; uint32 _object_id
       (write-long _object_id s)
     ;; int32 _track_id
       (write-long _track_id s)
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; float32 _left_top_x
       (sys::poke _left_top_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_top_y
       (sys::poke _left_top_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _conf
       (sys::poke _conf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frame_id
     (setq _frame_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _track_id
     (setq _track_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _left_top_x
     (setq _left_top_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_top_y
     (setq _left_top_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _conf
     (setq _conf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sophon_robot::Bbox :md5sum-) "57b21a664452e94c7dc920b3df79aeaf")
(setf (get sophon_robot::Bbox :datatype-) "sophon_robot/Bbox")
(setf (get sophon_robot::Bbox :definition-)
      "uint32 frame_id
uint32 object_id 
int32  track_id
string object_name
float32  left_top_x
float32  left_top_y
float32  width
float32  height
float32  conf
")



(provide :sophon_robot/Bbox "57b21a664452e94c7dc920b3df79aeaf")


