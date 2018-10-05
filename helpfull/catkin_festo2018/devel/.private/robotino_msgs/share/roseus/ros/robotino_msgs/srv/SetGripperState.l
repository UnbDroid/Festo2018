;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::SetGripperState)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'SetGripperState (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::SETGRIPPERSTATE")
  (make-package "ROBOTINO_MSGS::SETGRIPPERSTATE"))
(unless (find-package "ROBOTINO_MSGS::SETGRIPPERSTATEREQUEST")
  (make-package "ROBOTINO_MSGS::SETGRIPPERSTATEREQUEST"))
(unless (find-package "ROBOTINO_MSGS::SETGRIPPERSTATERESPONSE")
  (make-package "ROBOTINO_MSGS::SETGRIPPERSTATERESPONSE"))

(in-package "ROS")





(defclass robotino_msgs::SetGripperStateRequest
  :super ros::object
  :slots (_state ))

(defmethod robotino_msgs::SetGripperStateRequest
  (:init
   (&key
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotino_msgs::SetGripperStateResponse
  :super ros::object
  :slots ())

(defmethod robotino_msgs::SetGripperStateResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robotino_msgs::SetGripperState
  :super ros::object
  :slots ())

(setf (get robotino_msgs::SetGripperState :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get robotino_msgs::SetGripperState :datatype-) "robotino_msgs/SetGripperState")
(setf (get robotino_msgs::SetGripperState :request) robotino_msgs::SetGripperStateRequest)
(setf (get robotino_msgs::SetGripperState :response) robotino_msgs::SetGripperStateResponse)

(defmethod robotino_msgs::SetGripperStateRequest
  (:response () (instance robotino_msgs::SetGripperStateResponse :init)))

(setf (get robotino_msgs::SetGripperStateRequest :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get robotino_msgs::SetGripperStateRequest :datatype-) "robotino_msgs/SetGripperStateRequest")
(setf (get robotino_msgs::SetGripperStateRequest :definition-)
      "bool state
---
")

(setf (get robotino_msgs::SetGripperStateResponse :md5sum-) "001fde3cab9e313a150416ff09c08ee4")
(setf (get robotino_msgs::SetGripperStateResponse :datatype-) "robotino_msgs/SetGripperStateResponse")
(setf (get robotino_msgs::SetGripperStateResponse :definition-)
      "bool state
---
")



(provide :robotino_msgs/SetGripperState "001fde3cab9e313a150416ff09c08ee4")


