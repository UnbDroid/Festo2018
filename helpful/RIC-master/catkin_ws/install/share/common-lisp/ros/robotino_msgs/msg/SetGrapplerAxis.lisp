; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude SetGrapplerAxis.msg.html

(cl:defclass <SetGrapplerAxis> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (axis
    :reader axis
    :initarg :axis
    :type cl:integer
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetGrapplerAxis (<SetGrapplerAxis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGrapplerAxis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGrapplerAxis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<SetGrapplerAxis> is deprecated: use robotino_msgs-msg:SetGrapplerAxis instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <SetGrapplerAxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:stamp-val is deprecated.  Use robotino_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'axis-val :lambda-list '(m))
(cl:defmethod axis-val ((m <SetGrapplerAxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:axis-val is deprecated.  Use robotino_msgs-msg:axis instead.")
  (axis m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SetGrapplerAxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:angle-val is deprecated.  Use robotino_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SetGrapplerAxis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:velocity-val is deprecated.  Use robotino_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGrapplerAxis>) ostream)
  "Serializes a message object of type '<SetGrapplerAxis>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'axis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'axis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'axis)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGrapplerAxis>) istream)
  "Deserializes a message object of type '<SetGrapplerAxis>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'axis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'axis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'axis)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGrapplerAxis>)))
  "Returns string type for a message object of type '<SetGrapplerAxis>"
  "robotino_msgs/SetGrapplerAxis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGrapplerAxis)))
  "Returns string type for a message object of type 'SetGrapplerAxis"
  "robotino_msgs/SetGrapplerAxis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGrapplerAxis>)))
  "Returns md5sum for a message object of type '<SetGrapplerAxis>"
  "a709aba75be9516258888daf559c39d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGrapplerAxis)))
  "Returns md5sum for a message object of type 'SetGrapplerAxis"
  "a709aba75be9516258888daf559c39d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGrapplerAxis>)))
  "Returns full string definition for message of type '<SetGrapplerAxis>"
  (cl:format cl:nil "time stamp~%uint32 axis			# axis number (axes start from 0)~%float32 angle		# in degrees~%float32 velocity	# in rpm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGrapplerAxis)))
  "Returns full string definition for message of type 'SetGrapplerAxis"
  (cl:format cl:nil "time stamp~%uint32 axis			# axis number (axes start from 0)~%float32 angle		# in degrees~%float32 velocity	# in rpm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGrapplerAxis>))
  (cl:+ 0
     8
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGrapplerAxis>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGrapplerAxis
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':axis (axis msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':velocity (velocity msg))
))
