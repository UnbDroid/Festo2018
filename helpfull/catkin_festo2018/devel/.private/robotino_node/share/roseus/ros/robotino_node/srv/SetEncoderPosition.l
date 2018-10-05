;; Auto-generated. Do not edit!


(when (boundp 'robotino_node::SetEncoderPosition)
  (if (not (find-package "ROBOTINO_NODE"))
    (make-package "ROBOTINO_NODE"))
  (shadow 'SetEncoderPosition (find-package "ROBOTINO_NODE")))
(unless (find-package "ROBOTINO_NODE::SETENCODERPOSITION")
  (make-package "ROBOTINO_NODE::SETENCODERPOSITION"))
(unless (find-package "ROBOTINO_NODE::SETENCODERPOSITIONREQUEST")
  (make-package "ROBOTINO_NODE::SETENCODERPOSITIONREQUEST"))
(unless (find-package "ROBOTINO_NODE::SETENCODERPOSITIONRESPONSE")
  (make-package "ROBOTINO_NODE::SETENCODERPOSITIONRESPONSE"))

(in-package "ROS")





(defclass robotino_node::SetEncoderPositionRequest
  :super ros::object
  :slots (_position _velocity ))

(defmethod robotino_node::SetEncoderPositionRequest
  (:init
   (&key
    ((:position __position) 0)
    ((:velocity __velocity) 0)
    )
   (send-super :init)
   (setq _position (round __position))
   (setq _velocity (round __velocity))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; uint32 _position
    4
    ;; uint32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _position
       (write-long _position s)
     ;; uint32 _velocity
       (write-long _velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _velocity
     (setq _velocity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotino_node::SetEncoderPositionResponse
  :super ros::object
  :slots ())

(defmethod robotino_node::SetEncoderPositionResponse
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

(defclass robotino_node::SetEncoderPosition
  :super ros::object
  :slots ())

(setf (get robotino_node::SetEncoderPosition :md5sum-) "e17f4b08b3e2cdbbf2b0d78e4f62e5d6")
(setf (get robotino_node::SetEncoderPosition :datatype-) "robotino_node/SetEncoderPosition")
(setf (get robotino_node::SetEncoderPosition :request) robotino_node::SetEncoderPositionRequest)
(setf (get robotino_node::SetEncoderPosition :response) robotino_node::SetEncoderPositionResponse)

(defmethod robotino_node::SetEncoderPositionRequest
  (:response () (instance robotino_node::SetEncoderPositionResponse :init)))

(setf (get robotino_node::SetEncoderPositionRequest :md5sum-) "e17f4b08b3e2cdbbf2b0d78e4f62e5d6")
(setf (get robotino_node::SetEncoderPositionRequest :datatype-) "robotino_node/SetEncoderPositionRequest")
(setf (get robotino_node::SetEncoderPositionRequest :definition-)
      "uint32 position
uint32 velocity
---
")

(setf (get robotino_node::SetEncoderPositionResponse :md5sum-) "e17f4b08b3e2cdbbf2b0d78e4f62e5d6")
(setf (get robotino_node::SetEncoderPositionResponse :datatype-) "robotino_node/SetEncoderPositionResponse")
(setf (get robotino_node::SetEncoderPositionResponse :definition-)
      "uint32 position
uint32 velocity
---
")



(provide :robotino_node/SetEncoderPosition "e17f4b08b3e2cdbbf2b0d78e4f62e5d6")


