#!/bin/bash
#
# instal.sh
#
cd /home/pi/bcm2835-1.52/src
#cd ~/Workspace/random/raspi/bcm2835-1.52/src

gcc -shared -o libbcm2835.so -fPIC bcm2835.c

# type ls to make sure libbcm2835.so is the this dir

cp libbcm2835.so /usr/local/lib

cd

git clone https://github.com/mubeta06/py-libbcm2835.git

cd py-libbcm2835/

sudo python setup.py install
