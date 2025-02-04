#!/usr/bin/env sh

REPODIR="misc_repos"

# create misc_repos repodir if missing
cd ~
echo "Testing ${REPODIR}"
if [ ! -d "$REPODIR" ]; then
  echo "Creating misc repodir in ${REPODIR}..."
  mkdir "${REPODIR}"
else
  echo "Misc repodir already exists in ${REPODIR}..."
fi

# make sure we have pip3
sudo apt install python3-pip -y

# get RTKLIB
source ~/OpenMower/configs/melk_extra_setup/rtklib_setup.sh $REPODIR

# install sparkfun-qwiic-icm20948 for IMU
source ~/OpenMower/configs/melk_extra_setup/imu_setup.sh $REPODIR

# install gpsdecode - for testing both serial and ntrip gps incoming data
sudo apt install gpsd-clients -y

# set my git username and email
git config --global user.email "morten@elk.dk"
git config --global user.name "Morten Elk"

# set git to remember my credentials
git config --global credential.helper 'cache --timeout=360000'

# install rosserial
sudo apt-get install ros-noetic-rosserial-arduino -y
sudo apt-get install ros-noetic-rosserial -y





cd ~/OpenMower/configs/melk_extra_setup
