#!/usr/bin/env bash

#                                                                                        
#                                                                                        
#      █████   ██████  ████████   ██████   ██████  ████████   ████████   ██████   ██████ 
#     ███▒▒   ███▒▒███▒▒███▒▒███ ███▒▒███ ███▒▒███▒▒███▒▒███ ▒▒███▒▒███ ███▒▒███ ███▒▒███
#    ▒▒█████ ▒███ ▒▒▒  ▒███ ▒▒▒ ▒███████ ▒███████  ▒███ ▒███  ▒███ ▒▒▒ ▒███████ ▒███ ▒▒▒ 
#     ▒▒▒▒███▒███  ███ ▒███     ▒███▒▒▒  ▒███▒▒▒   ▒███ ▒███  ▒███     ▒███▒▒▒  ▒███  ███
#     ██████ ▒▒██████  █████    ▒▒██████ ▒▒██████  ████ █████ █████    ▒▒██████ ▒▒██████ 
#    ▒▒▒▒▒▒   ▒▒▒▒▒▒  ▒▒▒▒▒      ▒▒▒▒▒▒   ▒▒▒▒▒▒  ▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒      ▒▒▒▒▒▒   ▒▒▒▒▒▒  
#                                                                                        
#                                                                                        
#                                                                                                                                                    
#    Dependencies: extra/gpu-screen-recorder, extra/slurp

mkdir -p "$HOME/Videos/Screencasts/"
SROUTPUT="$HOME/Videos/Screencasts/$(date "+%m-%d-%Y %I-%M-%S %p").mp4"

end() {
	kill -15 "$(cat /tmp/screenrecording)" && rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
	notify-send -t 3000 'Screen recording stopped' "Saved to $(cat /tmp/srfname)"
}

endsilent() {
	kill -15 "$(cat /tmp/screenrecording)" && rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
	rm -f /tmp/srfname
}

killallprocs() {
	killall -15 "gpu-screen-recorder" ; rm -f /tmp/screenrecording
	echo "" > /tmp/srstatus
	rm -f /tmp/srfname
}

record() {
	gpu-screen-recorder -bm cbr -q 4250 -a 'alsa_output.pci-0000_03_00.6.analog-stereo.monitor' -f 70 -w eDP-1 -o "$SROUTPUT" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	echo "$SROUTPUT" > /tmp/srfname
	}
	
record2() {
	gpu-screen-recorder -bm cbr -q 4250 -a 'alsa_output.pci-0000_03_00.6.analog-stereo.monitor' -f 70 -w HDMI-A-1 -o "$SROUTPUT" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	echo "$SROUTPUT" > /tmp/srfname
	}

region() {
	gpu-screen-recorder -bm cbr -q 4250 -a 'alsa_output.pci-0000_03_00.6.analog-stereo.monitor' -f 70 -w $(slurp -f "%wx%h+%x+%y") -o "$SROUTPUT" & echo $! > /tmp/screenrecording
	echo " Rec" > /tmp/srstatus
	echo "$SROUTPUT" > /tmp/srfname
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
