#!/bin/bash
cd ~/vitals2/app_vitals
#cd /home/user/
pwd
#firefox 192.168.18.213:3012
#rackup -p 3000
#if [ -f /dev/ttyUSB0 ]; then
	./vitalsserver -b /dev/ttyS0 -s /dev/ttyUSB0 &
#else
#	sudo ./vitalsserver -b /dev/ttyS0 &
#fi
#firefox 192.168.18.213:3012
