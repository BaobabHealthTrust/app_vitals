#!/bin/bash
cd /var/www/app_vitals

if [ -f /dev/ttyUSB0 ] && [ -f /dev/ttyS0 ]; then
	./vitalsserver -b /dev/ttyS0 -s /dev/ttyUSB0 &
elif [ -f /dev/ttyUSB0 ]; then
	./vitalsserver -b /dev/ttyUSB0 &
elif [ -f /dev/ttyS0 ]; then
	./vitalsserver -b /dev/ttyS0 &
else
	./vitalsserver &
fi
#firefox 192.168.18.213:3012
