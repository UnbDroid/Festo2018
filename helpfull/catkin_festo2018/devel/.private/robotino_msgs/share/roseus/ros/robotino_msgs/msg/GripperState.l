;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::GripperState)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'GripperState (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::GRIPPERSTATE")
  (make-package "ROBOTINO_MSGS::GRIPPERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperState.msg.html


(defclass robotino_msgs::GripperState
  :super ros::object
  :slots (_stamp _state ))

(defmethod robotino_msgs::GripperState
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _state __state)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotino_msgs::GripperState :md5sum-) "9aa764d58396f955a97125bca8f1e897")
(setf (get robotino_msgs::GripperState :datatype-) "robotino_msgs/GripperState")
(setf (get robotino_msgs::GripperState :definition-)
      "time stamp
bool state	# true if open else false if closed
")



(provide :robotino_msgs/GripperState "9aa764d58396f955a97125bca8f1e897")


