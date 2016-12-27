#!/bin/bash

cp /etc/pulse/default.pa ~/.config/pulse/
echo "set-default-sink alsa_output.usb-XMOS_xCORE_USB_Audio_2.0-00.analog-stereo" >> ~/.config/pulse/default.pa
