;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::SetGrapplerAxis)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'SetGrapplerAxis (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::SETGRAPPLERAXIS")
  (make-package "ROBOTINO_MSGS::SETGRAPPLERAXIS"))

(in-package "ROS")
;;//! \htmlinclude SetGrapplerAxis.msg.html


(defclass robotino_msgs::SetGrapplerAxis
  :super ros::object
  :slots (_stamp _axis _angle _velocity ))

(defmethod robotino_msgs::SetGrapplerAxis
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:axis __axis) 0)
    ((:angle __angle) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _axis (round __axis))
   (setq _angle (float __angle))
   (setq _velocity (float __velocity))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:axis
   (&optional __axis)
   (if __axis (setq _axis __axis)) _axis)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _axis
    4
    ;; float32 _angle
    4
    ;; float32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _axis
       (write-long _axis s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _axis
     (setq _axis (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotino_msgs::SetGrapplerAxis :md5sum-) "a709aba75be9516258888daf559c39d4")
(setf (get robotino_msgs::SetGrapplerAxis :datatype-) "robotino_msgs/SetGrapplerAxis")
(setf (get robotino_msgs::SetGrapplerAxis :definition-)
      "time stamp
uint32 axis			# axis number (axes start from 0)
float32 angle		# in degrees
float32 velocity	# in rpm
")



(provide :robotino_msgs/SetGrapplerAxis "a709aba75be9516258888daf559c39d4")


