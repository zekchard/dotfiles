#!/usr/bin/env bash

# Simpler version of ./scripts/screenrec.sh


SROUTPUT="$HOME/Videos/Screencasts/$(date "+%m-%d-%Y %I-%M-%S %p").mp4"

record() {
	notify-send -t 3000 'Screen recording' 'gpu-screen-recorder will be recording the laptop monitor (eDP-1) in 3 seconds...'
	sleep 3
	gpu-screen-recorder -cr limited -bm cbr -q 3000 -a default_output -fm vfr -f 70 -w eDP-1 -o "$SROUTPUT" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	}

end() {
	kill -15 "$(cat /tmp/screenrecording)"
	rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
	notify-send -t 3000 'Screen recording stopped' "Saved to $SROUTPUT"
}

([[ -f /tmp/screenrecording ]] && end && exit 0) || record
