; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude NorthStarReadings.msg.html

(cl:defclass <NorthStarReadings> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (roomId
    :reader roomId
    :initarg :roomId
    :type cl:integer
    :initform 0)
   (numSpotsVisible
    :reader numSpotsVisible
    :initarg :numSpotsVisible
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (magSpot0
    :reader magSpot0
    :initarg :magSpot0
    :type cl:integer
    :initform 0)
   (magSpot1
    :reader magSpot1
    :initarg :magSpot1
    :type cl:integer
    :initform 0))
)

(cl:defclass NorthStarReadings (<NorthStarReadings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NorthStarReadings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NorthStarReadings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<NorthStarReadings> is deprecated: use robotino_msgs-msg:NorthStarReadings instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <NorthStarReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:stamp-val is deprecated.  Use robotino_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <NorthStarReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:seq-val is deprecated.  Use robotino_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'roomId-val :lambda-list '(m))
(cl:defmethod roomId-val ((m <NorthStarReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:roomId-val is deprecated.  Use robotino_msgs-msg:roomId instead.")
  (roomId m))

(cl:ensure-generic-function 'numSpotsVisible-val :lambda-list '(m))
(cl:defmethod numSpotsVisible-val ((m <NorthStarReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:numSpotsVisible-val is deprecated.  Use robotino_msgs-msg:numSpotsVisible instead.")
  (numSpotsVisible m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <NorthStarReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:pose-val is deprecated.  Use robotino_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'magSpot0-val :lambda-list '(m))
(cl:defmethod magSpot0-val ((m <NorthStarReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:magSpot0-val is deprecated.  Use robotino_msgs-msg:magSpot0 instead.")
  (magSpot0 m))

(cl:ensure-generic-function 'magSpot1-val :lambda-list '(m))
(cl:defmethod magSpot1-val ((m <NorthStarReadings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:magSpot1-val is deprecated.  Use robotino_msgs-msg:magSpot1 instead.")
  (magSpot1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NorthStarReadings>) ostream)
  "Serializes a message object of type '<NorthStarReadings>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roomId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roomId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roomId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roomId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSpotsVisible)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numSpotsVisible)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numSpotsVisible)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numSpotsVisible)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magSpot0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'magSpot0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'magSpot0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'magSpot0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magSpot1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'magSpot1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'magSpot1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'magSpot1)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NorthStarReadings>) istream)
  "Deserializes a message object of type '<NorthStarReadings>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roomId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'roomId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'roomId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'roomId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSpotsVisible)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numSpotsVisible)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numSpotsVisible)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numSpotsVisible)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magSpot0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'magSpot0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'magSpot0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'magSpot0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'magSpot1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'magSpot1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'magSpot1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'magSpot1)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NorthStarReadings>)))
  "Returns string type for a message object of type '<NorthStarReadings>"
  "robotino_msgs/NorthStarReadings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NorthStarReadings)))
  "Returns string type for a message object of type 'NorthStarReadings"
  "robotino_msgs/NorthStarReadings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NorthStarReadings>)))
  "Returns md5sum for a message object of type '<NorthStarReadings>"
  "b8db44cc88a378f5282e8add1661d1e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NorthStarReadings)))
  "Returns md5sum for a message object of type 'NorthStarReadings"
  "b8db44cc88a378f5282e8add1661d1e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NorthStarReadings>)))
  "Returns full string definition for message of type '<NorthStarReadings>"
  (cl:format cl:nil "time stamp~%uint32 seq~%uint32 roomId~%uint32 numSpotsVisible~%geometry_msgs/Pose pose~%uint32 magSpot0~%uint32 magSpot1~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NorthStarReadings)))
  "Returns full string definition for message of type 'NorthStarReadings"
  (cl:format cl:nil "time stamp~%uint32 seq~%uint32 roomId~%uint32 numSpotsVisible~%geometry_msgs/Pose pose~%uint32 magSpot0~%uint32 magSpot1~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NorthStarReadings>))
  (cl:+ 0
     8
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NorthStarReadings>))
  "Converts a ROS message object to a list"
  (cl:list 'NorthStarReadings
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':roomId (roomId msg))
    (cl:cons ':numSpotsVisible (numSpotsVisible msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':magSpot0 (magSpot0 msg))
    (cl:cons ':magSpot1 (magSpot1 msg))
))
