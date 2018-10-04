; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude BHAReadings.msg.html

(cl:defclass <BHAReadings> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (pressures
    :reader pressures
    :initarg :pressures
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (cablepull
    :reader cablepull
    :initarg :cablepull
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass BHAReadings (<BHAReadings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BHAReadings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BHAReadings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<BHAReadings> is deprecated: use robotino_msgs-msg:BHAReadings instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BHAReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:stamp-val is deprecated.  Use robotino_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'pressures-val :lambda-list '(m))
(cl:defmethod pressures-val ((m <BHAReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:pressures-val is deprecated.  Use robotino_msgs-msg:pressures instead.")
  (pressures m))

(cl:ensure-generic-function 'cablepull-val :lambda-list '(m))
(cl:defmethod cablepull-val ((m <BHAReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:cablepull-val is deprecated.  Use robotino_msgs-msg:cablepull instead.")
  (cablepull m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BHAReadings>) ostream)
  "Serializes a message object of type '<BHAReadings>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pressures))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pressures))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cablepull))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cablepull))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BHAReadings>) istream)
  "Deserializes a message object of type '<BHAReadings>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pressures) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pressures)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cablepull) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cablepull)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BHAReadings>)))
  "Returns string type for a message object of type '<BHAReadings>"
  "robotino_msgs/BHAReadings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BHAReadings)))
  "Returns string type for a message object of type 'BHAReadings"
  "robotino_msgs/BHAReadings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BHAReadings>)))
  "Returns md5sum for a message object of type '<BHAReadings>"
  "db28e0e5f4b0a0da881baf9c7f3c94a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BHAReadings)))
  "Returns md5sum for a message object of type 'BHAReadings"
  "db28e0e5f4b0a0da881baf9c7f3c94a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BHAReadings>)))
  "Returns full string definition for message of type '<BHAReadings>"
  (cl:format cl:nil "time stamp~%float32[] pressures	# in bar~%float32[] cablepull~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BHAReadings)))
  "Returns full string definition for message of type 'BHAReadings"
  (cl:format cl:nil "time stamp~%float32[] pressures	# in bar~%float32[] cablepull~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BHAReadings>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pressures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cablepull) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BHAReadings>))
  "Converts a ROS message object to a list"
  (cl:list 'BHAReadings
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':pressures (pressures msg))
    (cl:cons ':cablepull (cablepull msg))
))
