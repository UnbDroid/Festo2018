; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-srv)


;//! \htmlinclude SetGripperState-request.msg.html

(cl:defclass <SetGripperState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGripperState-request (<SetGripperState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGripperState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGripperState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-srv:<SetGripperState-request> is deprecated: use robotino_msgs-srv:SetGripperState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetGripperState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-srv:state-val is deprecated.  Use robotino_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGripperState-request>) ostream)
  "Serializes a message object of type '<SetGripperState-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGripperState-request>) istream)
  "Deserializes a message object of type '<SetGripperState-request>"
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGripperState-request>)))
  "Returns string type for a service object of type '<SetGripperState-request>"
  "robotino_msgs/SetGripperStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGripperState-request)))
  "Returns string type for a service object of type 'SetGripperState-request"
  "robotino_msgs/SetGripperStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGripperState-request>)))
  "Returns md5sum for a message object of type '<SetGripperState-request>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGripperState-request)))
  "Returns md5sum for a message object of type 'SetGripperState-request"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGripperState-request>)))
  "Returns full string definition for message of type '<SetGripperState-request>"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGripperState-request)))
  "Returns full string definition for message of type 'SetGripperState-request"
  (cl:format cl:nil "bool state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGripperState-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGripperState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGripperState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetGripperState-response.msg.html

(cl:defclass <SetGripperState-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetGripperState-response (<SetGripperState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGripperState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGripperState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-srv:<SetGripperState-response> is deprecated: use robotino_msgs-srv:SetGripperState-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGripperState-response>) ostream)
  "Serializes a message object of type '<SetGripperState-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGripperState-response>) istream)
  "Deserializes a message object of type '<SetGripperState-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGripperState-response>)))
  "Returns string type for a service object of type '<SetGripperState-response>"
  "robotino_msgs/SetGripperStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGripperState-response)))
  "Returns string type for a service object of type 'SetGripperState-response"
  "robotino_msgs/SetGripperStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGripperState-response>)))
  "Returns md5sum for a message object of type '<SetGripperState-response>"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGripperState-response)))
  "Returns md5sum for a message object of type 'SetGripperState-response"
  "001fde3cab9e313a150416ff09c08ee4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGripperState-response>)))
  "Returns full string definition for message of type '<SetGripperState-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGripperState-response)))
  "Returns full string definition for message of type 'SetGripperState-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGripperState-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGripperState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGripperState-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGripperState)))
  'SetGripperState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGripperState)))
  'SetGripperState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGripperState)))
  "Returns string type for a service object of type '<SetGripperState>"
  "robotino_msgs/SetGripperState")