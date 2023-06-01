; Auto-generated. Do not edit!


(cl:in-package sophon_robot-msg)


;//! \htmlinclude Bbox.msg.html

(cl:defclass <Bbox> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type cl:integer
    :initform 0)
   (object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (left_top_x
    :reader left_top_x
    :initarg :left_top_x
    :type cl:float
    :initform 0.0)
   (left_top_y
    :reader left_top_y
    :initarg :left_top_y
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (conf
    :reader conf
    :initarg :conf
    :type cl:float
    :initform 0.0))
)

(cl:defclass Bbox (<Bbox>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bbox>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bbox)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sophon_robot-msg:<Bbox> is deprecated: use sophon_robot-msg:Bbox instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:frame_id-val is deprecated.  Use sophon_robot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:object_id-val is deprecated.  Use sophon_robot-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:track_id-val is deprecated.  Use sophon_robot-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:object_name-val is deprecated.  Use sophon_robot-msg:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'left_top_x-val :lambda-list '(m))
(cl:defmethod left_top_x-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:left_top_x-val is deprecated.  Use sophon_robot-msg:left_top_x instead.")
  (left_top_x m))

(cl:ensure-generic-function 'left_top_y-val :lambda-list '(m))
(cl:defmethod left_top_y-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:left_top_y-val is deprecated.  Use sophon_robot-msg:left_top_y instead.")
  (left_top_y m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:width-val is deprecated.  Use sophon_robot-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:height-val is deprecated.  Use sophon_robot-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'conf-val :lambda-list '(m))
(cl:defmethod conf-val ((m <Bbox>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:conf-val is deprecated.  Use sophon_robot-msg:conf instead.")
  (conf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bbox>) ostream)
  "Serializes a message object of type '<Bbox>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'track_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_top_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_top_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'conf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bbox>) istream)
  "Deserializes a message object of type '<Bbox>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'track_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_top_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_top_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'conf) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bbox>)))
  "Returns string type for a message object of type '<Bbox>"
  "sophon_robot/Bbox")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bbox)))
  "Returns string type for a message object of type 'Bbox"
  "sophon_robot/Bbox")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bbox>)))
  "Returns md5sum for a message object of type '<Bbox>"
  "57b21a664452e94c7dc920b3df79aeaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bbox)))
  "Returns md5sum for a message object of type 'Bbox"
  "57b21a664452e94c7dc920b3df79aeaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bbox>)))
  "Returns full string definition for message of type '<Bbox>"
  (cl:format cl:nil "uint32 frame_id~%uint32 object_id ~%int32  track_id~%string object_name~%float32  left_top_x~%float32  left_top_y~%float32  width~%float32  height~%float32  conf~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bbox)))
  "Returns full string definition for message of type 'Bbox"
  (cl:format cl:nil "uint32 frame_id~%uint32 object_id ~%int32  track_id~%string object_name~%float32  left_top_x~%float32  left_top_y~%float32  width~%float32  height~%float32  conf~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bbox>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'object_name))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bbox>))
  "Converts a ROS message object to a list"
  (cl:list 'Bbox
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':left_top_x (left_top_x msg))
    (cl:cons ':left_top_y (left_top_y msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':conf (conf msg))
))
