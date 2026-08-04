#!/usr/bin/env bash

#                                                      
#                                                      
#    ▄█████  ▄▄▄▄ ▄▄▄▄  ▄▄▄▄▄ ▄▄▄▄▄ ▄▄  ▄▄             
#    ▀▀▀▄▄▄ ██▀▀▀ ██▄█▄ ██▄▄  ██▄▄  ███▄██             
#    █████▀ ▀████ ██ ██ ██▄▄▄ ██▄▄▄ ██ ▀██             
#                                                      
#    █████▄  ▄▄▄▄▄  ▄▄▄▄  ▄▄▄  ▄▄▄▄  ▄▄▄▄  ▄▄▄▄▄ ▄▄▄▄  
#    ██▄▄██▄ ██▄▄  ██▀▀▀ ██▀██ ██▄█▄ ██▀██ ██▄▄  ██▄█▄ 
#    ██   ██ ██▄▄▄ ▀████ ▀███▀ ██ ██ ████▀ ██▄▄▄ ██ ██ 
#                                                      
#  Dependencies: extra/gpu-screen-recorder, extra/slurp

mkdir -p "$HOME/Videos/Screencasts/"
SROUTPUT="$HOME/Videos/Screencasts/$(date "+%m-%d-%Y %I-%M-%S %p").mp4"

end() {
	kill -15 "$(cat /tmp/screenrecording)" && rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
	notify-send -t 3000 'Screen recording stopped' "Saved as $SROUTPUT"
}

endsilent() {
	kill -15 "$(cat /tmp/screenrecording)" && rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
}

killallprocs() {
	killall -15 "gpu-screen-recorder" ; rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
}

record() {
	gpu-screen-recorder -cr limited -bm cbr -q 3000 -a default_output -f 70 -w eDP-1 -o "$SROUTPUT" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	}
	
record2() {
	gpu-screen-recorder -cr limited -bm cbr -q 3000 -a default_output -f 70 -w HDMI-A-1 -o "$SROUTPUT" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	}

region() {
	gpu-screen-recorder -cr limited -bm cbr -q 3000 -a default_output -f 70 -w $(slurp -f "%wx%h+%x+%y") -o "$SROUTPUT" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	}

if [[ $1 == "record" ]]; then
 record
fi
if [[ $1 == "record2" ]]; then
 record2
fi
if [[ $1 == "region" ]]; then
 region
fi
if [[ $1 == "end" ]]; then
 end
fi
if [[ $1 == "endsilent" ]]; then
 endsilent
fi
if [[ $1 == "killallprocs" ]]; then
 killallprocs
fi
