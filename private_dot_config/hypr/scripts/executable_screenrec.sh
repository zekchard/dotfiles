#!/usr/bin/env bash

record() {
	notify-send -t 3000 'Screen recording' 'wl-screenrec will be recording the laptop monitor (eDP-1) in 3 seconds...'
	sleep 3
	wl-screenrec -b 1.5MB --audio --audio-device alsa_output.pci-0000_03_00.6.analog-stereo.monitor -m 60 -o eDP-1 --filename "/home/zek/Videos/Screencasts/$(date "+%m-%d-%Y %I-%M-%S %p").mp4" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	}

end() {
	kill -15 "$(cat /tmp/screenrecording)"
	rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
	notify-send -t 3000 'Screen recording stopped' 'wl-screenrec has stopped recording'
}

([[ -f /tmp/screenrecording ]] && end && exit 0) || record
