;; Auto-generated. Do not edit!


(when (boundp 'robotino_node::ResetOdometry)
  (if (not (find-package "ROBOTINO_NODE"))
    (make-package "ROBOTINO_NODE"))
  (shadow 'ResetOdometry (find-package "ROBOTINO_NODE")))
(unless (find-package "ROBOTINO_NODE::RESETODOMETRY")
  (make-package "ROBOTINO_NODE::RESETODOMETRY"))
(unless (find-package "ROBOTINO_NODE::RESETODOMETRYREQUEST")
  (make-package "ROBOTINO_NODE::RESETODOMETRYREQUEST"))
(unless (find-package "ROBOTINO_NODE::RESETODOMETRYRESPONSE")
  (make-package "ROBOTINO_NODE::RESETODOMETRYRESPONSE"))

(in-package "ROS")





(defclass robotino_node::ResetOdometryRequest
  :super ros::object
  :slots (_x _y _phi ))

(defmethod robotino_node::ResetOdometryRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:phi __phi) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _phi (float __phi))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _phi
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi
     (setq _phi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotino_node::ResetOdometryResponse
  :super ros::object
  :slots ())

(defmethod robotino_node::ResetOdometryResponse
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

(defclass robotino_node::ResetOdometry
  :super ros::object
  :slots ())

(setf (get robotino_node::ResetOdometry :md5sum-) "400210218ff66e5bce9e5be16653c0c8")
(setf (get robotino_node::ResetOdometry :datatype-) "robotino_node/ResetOdometry")
(setf (get robotino_node::ResetOdometry :request) robotino_node::ResetOdometryRequest)
(setf (get robotino_node::ResetOdometry :response) robotino_node::ResetOdometryResponse)

(defmethod robotino_node::ResetOdometryRequest
  (:response () (instance robotino_node::ResetOdometryResponse :init)))

(setf (get robotino_node::ResetOdometryRequest :md5sum-) "400210218ff66e5bce9e5be16653c0c8")
(setf (get robotino_node::ResetOdometryRequest :datatype-) "robotino_node/ResetOdometryRequest")
(setf (get robotino_node::ResetOdometryRequest :definition-)
      "float32 x
float32 y
float32 phi
---
")

(setf (get robotino_node::ResetOdometryResponse :md5sum-) "400210218ff66e5bce9e5be16653c0c8")
(setf (get robotino_node::ResetOdometryResponse :datatype-) "robotino_node/ResetOdometryResponse")
(setf (get robotino_node::ResetOdometryResponse :definition-)
      "float32 x
float32 y
float32 phi
---
")



(provide :robotino_node/ResetOdometry "400210218ff66e5bce9e5be16653c0c8")


