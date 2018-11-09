#/bin/bash

cd catkin_festo2018

catkin build && \
source devel/setup.bash && \
roslaunch droid.launch
