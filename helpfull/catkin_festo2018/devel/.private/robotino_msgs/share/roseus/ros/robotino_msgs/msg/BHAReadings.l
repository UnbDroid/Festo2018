;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::BHAReadings)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'BHAReadings (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::BHAREADINGS")
  (make-package "ROBOTINO_MSGS::BHAREADINGS"))

(in-package "ROS")
;;//! \htmlinclude BHAReadings.msg.html


(defclass robotino_msgs::BHAReadings
  :super ros::object
  :slots (_stamp _pressures _cablepull ))

(defmethod robotino_msgs::BHAReadings
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:pressures __pressures) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cablepull __cablepull) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _pressures __pressures)
   (setq _cablepull __cablepull)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:pressures
   (&optional __pressures)
   (if __pressures (setq _pressures __pressures)) _pressures)
  (:cablepull
   (&optional __cablepull)
   (if __cablepull (setq _cablepull __cablepull)) _cablepull)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32[] _pressures
    (* 4    (length _pressures)) 4
    ;; float32[] _cablepull
    (* 4    (length _cablepull)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32[] _pressures
     (write-long (length _pressures) s)
     (dotimes (i (length _pressures))
       (sys::poke (elt _pressures i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _cablepull
     (write-long (length _cablepull) s)
     (dotimes (i (length _cablepull))
       (sys::poke (elt _cablepull i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _pressures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pressures (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pressures i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _cablepull
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cablepull (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cablepull i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robotino_msgs::BHAReadings :md5sum-) "db28e0e5f4b0a0da881baf9c7f3c94a1")
(setf (get robotino_msgs::BHAReadings :datatype-) "robotino_msgs/BHAReadings")
(setf (get robotino_msgs::BHAReadings :definition-)
      "time stamp
float32[] pressures	# in bar
float32[] cablepull
")



(provide :robotino_msgs/BHAReadings "db28e0e5f4b0a0da881baf9c7f3c94a1")


