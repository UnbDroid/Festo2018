; Auto-generated. Do not edit!


(cl:in-package robotino_node-msg)


;//! \htmlinclude AnalogReadings.msg.html

(cl:defclass <AnalogReadings> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AnalogReadings (<AnalogReadings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalogReadings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalogReadings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_node-msg:<AnalogReadings> is deprecated: use robotino_node-msg:AnalogReadings instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <AnalogReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_node-msg:stamp-val is deprecated.  Use robotino_node-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <AnalogReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_node-msg:values-val is deprecated.  Use robotino_node-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalogReadings>) ostream)
  "Serializes a message object of type '<AnalogReadings>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalogReadings>) istream)
  "Deserializes a message object of type '<AnalogReadings>"
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
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalogReadings>)))
  "Returns string type for a message object of type '<AnalogReadings>"
  "robotino_node/AnalogReadings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalogReadings)))
  "Returns string type for a message object of type 'AnalogReadings"
  "robotino_node/AnalogReadings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalogReadings>)))
  "Returns md5sum for a message object of type '<AnalogReadings>"
  "b18badc07ef45644f603212cc1654669")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalogReadings)))
  "Returns md5sum for a message object of type 'AnalogReadings"
  "b18badc07ef45644f603212cc1654669")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalogReadings>)))
  "Returns full string definition for message of type '<AnalogReadings>"
  (cl:format cl:nil "time stamp~%float32[] values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalogReadings)))
  "Returns full string definition for message of type 'AnalogReadings"
  (cl:format cl:nil "time stamp~%float32[] values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalogReadings>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalogReadings>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalogReadings
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':values (values msg))
))
