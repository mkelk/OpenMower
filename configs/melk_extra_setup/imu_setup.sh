#!/usr/bin/env sh

# install qwiic library for regular user 
# note not for su, so must be regular user to use it
# needs /dev/i2c-* to read/writable for user
pip3 install sparkfun-qwiic-icm20948