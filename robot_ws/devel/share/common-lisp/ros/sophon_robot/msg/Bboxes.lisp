; Auto-generated. Do not edit!


(cl:in-package sophon_robot-msg)


;//! \htmlinclude Bboxes.msg.html

(cl:defclass <Bboxes> (roslisp-msg-protocol:ros-message)
  ((frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (num_object
    :reader num_object
    :initarg :num_object
    :type cl:integer
    :initform 0)
   (bboxes
    :reader bboxes
    :initarg :bboxes
    :type (cl:vector sophon_robot-msg:Bbox)
   :initform (cl:make-array 0 :element-type 'sophon_robot-msg:Bbox :initial-element (cl:make-instance 'sophon_robot-msg:Bbox))))
)

(cl:defclass Bboxes (<Bboxes>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bboxes>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bboxes)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sophon_robot-msg:<Bboxes> is deprecated: use sophon_robot-msg:Bboxes instead.")))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Bboxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:frame_id-val is deprecated.  Use sophon_robot-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'num_object-val :lambda-list '(m))
(cl:defmethod num_object-val ((m <Bboxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:num_object-val is deprecated.  Use sophon_robot-msg:num_object instead.")
  (num_object m))

(cl:ensure-generic-function 'bboxes-val :lambda-list '(m))
(cl:defmethod bboxes-val ((m <Bboxes>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sophon_robot-msg:bboxes-val is deprecated.  Use sophon_robot-msg:bboxes instead.")
  (bboxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bboxes>) ostream)
  "Serializes a message object of type '<Bboxes>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_object)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_object)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_object)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_object)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bboxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bboxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bboxes>) istream)
  "Deserializes a message object of type '<Bboxes>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_object)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_object)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_object)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_object)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bboxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bboxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sophon_robot-msg:Bbox))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bboxes>)))
  "Returns string type for a message object of type '<Bboxes>"
  "sophon_robot/Bboxes")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bboxes)))
  "Returns string type for a message object of type 'Bboxes"
  "sophon_robot/Bboxes")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bboxes>)))
  "Returns md5sum for a message object of type '<Bboxes>"
  "bce7b973189104571425eaff14883c6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bboxes)))
  "Returns md5sum for a message object of type 'Bboxes"
  "bce7b973189104571425eaff14883c6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bboxes>)))
  "Returns full string definition for message of type '<Bboxes>"
  (cl:format cl:nil "uint32 frame_id~%uint32 num_object~%Bbox[] bboxes~%~%================================================================================~%MSG: sophon_robot/Bbox~%uint32 frame_id~%uint32 object_id ~%int32  track_id~%string object_name~%float32  left_top_x~%float32  left_top_y~%float32  width~%float32  height~%float32  conf~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bboxes)))
  "Returns full string definition for message of type 'Bboxes"
  (cl:format cl:nil "uint32 frame_id~%uint32 num_object~%Bbox[] bboxes~%~%================================================================================~%MSG: sophon_robot/Bbox~%uint32 frame_id~%uint32 object_id ~%int32  track_id~%string object_name~%float32  left_top_x~%float32  left_top_y~%float32  width~%float32  height~%float32  conf~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bboxes>))
  (cl:+ 0
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bboxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bboxes>))
  "Converts a ROS message object to a list"
  (cl:list 'Bboxes
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':num_object (num_object msg))
    (cl:cons ':bboxes (bboxes msg))
))
