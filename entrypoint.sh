#!/usr/bin/bash
source /opt/ros/noetic/setup.bash

# build catkin workspace
cd barracuda-localization/catkin_ws
catkin_make
source devel/setup.bash

# roslaunch barracuda_localization barracuda_localization.launch

exec tail -f /dev/null
