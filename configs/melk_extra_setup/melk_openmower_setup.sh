#!/usr/bin/env sh

# disable unattended upgrades
sudo apt remove unattended-upgrades -y

# get latest sources and updates
sudo apt update 
sudo apt upgrade -y

# getting ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update 
sudo apt install ros-noetic-ros-base -y

# source ROS installation for all new bash shells
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
# source in this shell
source /opt/ros/noetic/setup.bash

# setting up OpenMower
sudo apt install python3-rosdep -y
sudo rosdep init
rosdep update
cd ~/OpenMower/ROS/
rosdep install --from-paths src --ignore-src -y

# compiling 
catkin_make
catkin_make
catkin_make
catkin_make


cd ~/OpenMower/configs/melk_extra_setup
