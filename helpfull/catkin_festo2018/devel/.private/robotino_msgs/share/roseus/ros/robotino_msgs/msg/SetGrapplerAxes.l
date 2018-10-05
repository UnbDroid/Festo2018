;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::SetGrapplerAxes)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'SetGrapplerAxes (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::SETGRAPPLERAXES")
  (make-package "ROBOTINO_MSGS::SETGRAPPLERAXES"))

(in-package "ROS")
;;//! \htmlinclude SetGrapplerAxes.msg.html


(defclass robotino_msgs::SetGrapplerAxes
  :super ros::object
  :slots (_stamp _angles _velocities ))

(defmethod robotino_msgs::SetGrapplerAxes
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocities __velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _angles __angles)
   (setq _velocities __velocities)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:velocities
   (&optional __velocities)
   (if __velocities (setq _velocities __velocities)) _velocities)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ;; float32[] _velocities
    (* 4    (length _velocities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32[] _angles
     (write-long (length _angles) s)
     (dotimes (i (length _angles))
       (sys::poke (elt _angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocities
     (write-long (length _velocities) s)
     (dotimes (i (length _velocities))
       (sys::poke (elt _velocities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robotino_msgs::SetGrapplerAxes :md5sum-) "2d3c214086c6fdfe1e85f9e5abf4507a")
(setf (get robotino_msgs::SetGrapplerAxes :datatype-) "robotino_msgs/SetGrapplerAxes")
(setf (get robotino_msgs::SetGrapplerAxes :definition-)
      "time stamp
float32[] angles		# in degrees
float32[] velocities	# in rpm
")



(provide :robotino_msgs/SetGrapplerAxes "2d3c214086c6fdfe1e85f9e5abf4507a")


