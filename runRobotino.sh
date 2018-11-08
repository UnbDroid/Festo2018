#/bin/bash

cd catkin_festo2018

catkin build && \
source devel/setup.bash && \
roslaunch droid.launch

rosservice call /reset_odometry "x: 0.0
y: 0.0
phi: 0.0" 
