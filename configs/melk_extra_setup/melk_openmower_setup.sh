#!/usr/bin/env sh

# disable unattended upgrades
sudo apt remove unattended-upgrades

# get latest sources and updates
sudo apt update
sudo apt upgrade

# getting ROS
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo apt update
sudo apt install ros-noetic-ros-base



cd ~/OpenMower/configs/melk_extra_setup
