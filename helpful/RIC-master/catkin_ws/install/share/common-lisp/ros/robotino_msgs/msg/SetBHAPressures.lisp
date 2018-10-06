; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-msg)


;//! \htmlinclude SetBHAPressures.msg.html

(cl:defclass <SetBHAPressures> (roslisp-msg-protocol:ros-message)
  ((pressures
    :reader pressures
    :initarg :pressures
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetBHAPressures (<SetBHAPressures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBHAPressures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBHAPressures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-msg:<SetBHAPressures> is deprecated: use robotino_msgs-msg:SetBHAPressures instead.")))

(cl:ensure-generic-function 'pressures-val :lambda-list '(m))
(cl:defmethod pressures-val ((m <SetBHAPressures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-msg:pressures-val is deprecated.  Use robotino_msgs-msg:pressures instead.")
  (pressures m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBHAPressures>) ostream)
  "Serializes a message object of type '<SetBHAPressures>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBHAPressures>) istream)
  "Deserializes a message object of type '<SetBHAPressures>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBHAPressures>)))
  "Returns string type for a message object of type '<SetBHAPressures>"
  "robotino_msgs/SetBHAPressures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBHAPressures)))
  "Returns string type for a message object of type 'SetBHAPressures"
  "robotino_msgs/SetBHAPressures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBHAPressures>)))
  "Returns md5sum for a message object of type '<SetBHAPressures>"
  "f07803ec936ff4605f313dd88545e5bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBHAPressures)))
  "Returns md5sum for a message object of type 'SetBHAPressures"
  "f07803ec936ff4605f313dd88545e5bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBHAPressures>)))
  "Returns full string definition for message of type '<SetBHAPressures>"
  (cl:format cl:nil "float32[] pressures	# must be of size 8~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBHAPressures)))
  "Returns full string definition for message of type 'SetBHAPressures"
  (cl:format cl:nil "float32[] pressures	# must be of size 8~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBHAPressures>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pressures) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBHAPressures>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBHAPressures
    (cl:cons ':pressures (pressures msg))
))
