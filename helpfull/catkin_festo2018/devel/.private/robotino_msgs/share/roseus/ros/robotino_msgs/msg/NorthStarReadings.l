;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::NorthStarReadings)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'NorthStarReadings (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::NORTHSTARREADINGS")
  (make-package "ROBOTINO_MSGS::NORTHSTARREADINGS"))

(in-package "ROS")
;;//! \htmlinclude NorthStarReadings.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotino_msgs::NorthStarReadings
  :super ros::object
  :slots (_stamp _seq _roomId _numSpotsVisible _pose _magSpot0 _magSpot1 ))

(defmethod robotino_msgs::NorthStarReadings
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:seq __seq) 0)
    ((:roomId __roomId) 0)
    ((:numSpotsVisible __numSpotsVisible) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:magSpot0 __magSpot0) 0)
    ((:magSpot1 __magSpot1) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _seq (round __seq))
   (setq _roomId (round __roomId))
   (setq _numSpotsVisible (round __numSpotsVisible))
   (setq _pose __pose)
   (setq _magSpot0 (round __magSpot0))
   (setq _magSpot1 (round __magSpot1))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:roomId
   (&optional __roomId)
   (if __roomId (setq _roomId __roomId)) _roomId)
  (:numSpotsVisible
   (&optional __numSpotsVisible)
   (if __numSpotsVisible (setq _numSpotsVisible __numSpotsVisible)) _numSpotsVisible)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:magSpot0
   (&optional __magSpot0)
   (if __magSpot0 (setq _magSpot0 __magSpot0)) _magSpot0)
  (:magSpot1
   (&optional __magSpot1)
   (if __magSpot1 (setq _magSpot1 __magSpot1)) _magSpot1)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _seq
    4
    ;; uint32 _roomId
    4
    ;; uint32 _numSpotsVisible
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; uint32 _magSpot0
    4
    ;; uint32 _magSpot1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; uint32 _roomId
       (write-long _roomId s)
     ;; uint32 _numSpotsVisible
       (write-long _numSpotsVisible s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; uint32 _magSpot0
       (write-long _magSpot0 s)
     ;; uint32 _magSpot1
       (write-long _magSpot1 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _roomId
     (setq _roomId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _numSpotsVisible
     (setq _numSpotsVisible (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint32 _magSpot0
     (setq _magSpot0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _magSpot1
     (setq _magSpot1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotino_msgs::NorthStarReadings :md5sum-) "b8db44cc88a378f5282e8add1661d1e7")
(setf (get robotino_msgs::NorthStarReadings :datatype-) "robotino_msgs/NorthStarReadings")
(setf (get robotino_msgs::NorthStarReadings :definition-)
      "time stamp
uint32 seq
uint32 roomId
uint32 numSpotsVisible
geometry_msgs/Pose pose
uint32 magSpot0
uint32 magSpot1
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :robotino_msgs/NorthStarReadings "b8db44cc88a378f5282e8add1661d1e7")


