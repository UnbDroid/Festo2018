;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::GrapplerReadings)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'GrapplerReadings (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::GRAPPLERREADINGS")
  (make-package "ROBOTINO_MSGS::GRAPPLERREADINGS"))

(in-package "ROS")
;;//! \htmlinclude GrapplerReadings.msg.html


(defclass robotino_msgs::GrapplerReadings
  :super ros::object
  :slots (_stamp _seq _numServos _torqueEnabled _angles _velocities _errors _channels _ids _cwAxesLimits _ccwAxesLimits ))

(defmethod robotino_msgs::GrapplerReadings
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:seq __seq) 0)
    ((:numServos __numServos) 0)
    ((:torqueEnabled __torqueEnabled) nil)
    ((:angles __angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocities __velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:errors __errors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:channels __channels) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cwAxesLimits __cwAxesLimits) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ccwAxesLimits __ccwAxesLimits) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _seq (round __seq))
   (setq _numServos (round __numServos))
   (setq _torqueEnabled __torqueEnabled)
   (setq _angles __angles)
   (setq _velocities __velocities)
   (setq _errors __errors)
   (setq _channels __channels)
   (setq _ids __ids)
   (setq _cwAxesLimits __cwAxesLimits)
   (setq _ccwAxesLimits __ccwAxesLimits)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:numServos
   (&optional __numServos)
   (if __numServos (setq _numServos __numServos)) _numServos)
  (:torqueEnabled
   (&optional __torqueEnabled)
   (if __torqueEnabled (setq _torqueEnabled __torqueEnabled)) _torqueEnabled)
  (:angles
   (&optional __angles)
   (if __angles (setq _angles __angles)) _angles)
  (:velocities
   (&optional __velocities)
   (if __velocities (setq _velocities __velocities)) _velocities)
  (:errors
   (&optional __errors)
   (if __errors (setq _errors __errors)) _errors)
  (:channels
   (&optional __channels)
   (if __channels (setq _channels __channels)) _channels)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:cwAxesLimits
   (&optional __cwAxesLimits)
   (if __cwAxesLimits (setq _cwAxesLimits __cwAxesLimits)) _cwAxesLimits)
  (:ccwAxesLimits
   (&optional __ccwAxesLimits)
   (if __ccwAxesLimits (setq _ccwAxesLimits __ccwAxesLimits)) _ccwAxesLimits)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _seq
    4
    ;; uint32 _numServos
    4
    ;; bool _torqueEnabled
    1
    ;; float32[] _angles
    (* 4    (length _angles)) 4
    ;; float32[] _velocities
    (* 4    (length _velocities)) 4
    ;; uint32[] _errors
    (* 4    (length _errors)) 4
    ;; uint32[] _channels
    (* 4    (length _channels)) 4
    ;; uint32[] _ids
    (* 4    (length _ids)) 4
    ;; float32[] _cwAxesLimits
    (* 4    (length _cwAxesLimits)) 4
    ;; float32[] _ccwAxesLimits
    (* 4    (length _ccwAxesLimits)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; uint32 _numServos
       (write-long _numServos s)
     ;; bool _torqueEnabled
       (if _torqueEnabled (write-byte -1 s) (write-byte 0 s))
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
     ;; uint32[] _errors
     (write-long (length _errors) s)
     (dotimes (i (length _errors))
       (write-long (elt _errors i) s)
       )
     ;; uint32[] _channels
     (write-long (length _channels) s)
     (dotimes (i (length _channels))
       (write-long (elt _channels i) s)
       )
     ;; uint32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; float32[] _cwAxesLimits
     (write-long (length _cwAxesLimits) s)
     (dotimes (i (length _cwAxesLimits))
       (sys::poke (elt _cwAxesLimits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ccwAxesLimits
     (write-long (length _ccwAxesLimits) s)
     (dotimes (i (length _ccwAxesLimits))
       (sys::poke (elt _ccwAxesLimits i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _numServos
     (setq _numServos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _torqueEnabled
     (setq _torqueEnabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; uint32[] _errors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _errors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _errors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _channels i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _cwAxesLimits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cwAxesLimits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cwAxesLimits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ccwAxesLimits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ccwAxesLimits (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ccwAxesLimits i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robotino_msgs::GrapplerReadings :md5sum-) "53d1f6c81df9b5242320201fe0231738")
(setf (get robotino_msgs::GrapplerReadings :datatype-) "robotino_msgs/GrapplerReadings")
(setf (get robotino_msgs::GrapplerReadings :definition-)
      "time stamp
uint32 seq
uint32 numServos
bool torqueEnabled
float32[] angles		# in degrees
float32[] velocities	# in rpm
uint32[] errors
uint32[] channels
uint32[] ids
float32[] cwAxesLimits 	# in degrees
float32[] ccwAxesLimits	# in degrees
")



(provide :robotino_msgs/GrapplerReadings "53d1f6c81df9b5242320201fe0231738")


