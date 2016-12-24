#!/bin/bash

cp /etc/pulse/default.pa ~/.config/pulse/
#echo "set-default-sink output alsa_output.usb-XMOS_xCORE_USB_Audio_2.0-00.analog-stereo/#0" >> ~/.config/pulse/default.pa
echo "set-card-profile 0 output:analog-stereo" >> ~/.config/pulse/default.pa
