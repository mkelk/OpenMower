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

# get RTKLIB
source ~/OpenMower/configs/melk_extra_setup/rtklib_setup.sh $REPODIR

# install sparkfun-qwiic-icm20948 for IMU
source ~/OpenMower/configs/melk_extra_setup/imu_setup.sh $REPODIR





cd ~/OpenMower/configs/melk_extra_setup
