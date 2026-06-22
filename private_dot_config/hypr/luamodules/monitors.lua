--[[

#                                                     
#                                                     
#    ██▄  ▄██  ▄▄▄  ▄▄  ▄▄ ▄▄ ▄▄▄▄▄▄ ▄▄▄  ▄▄▄▄   ▄▄▄▄ 
#    ██ ▀▀ ██ ██▀██ ███▄██ ██   ██  ██▀██ ██▄█▄ ███▄▄ 
#    ██    ██ ▀███▀ ██ ▀██ ██   ██  ▀███▀ ██ ██ ▄▄██▀ 
# 
#                                                                     
#   See https://wiki.hyprland.org/Configuring/Monitors/

monitorv2 {
	output = eDP-1
	mode = 1366x768@67
	position = 0x0
	scale = 1
}

monitorv2 {
	output = HDMI-A-1
	mode = 1280x1024@67
	position = auto-left
	scale = 1
}

	
]]--

hl.monitor({
	output = "eDP-1",
	mode = "1366x768@67",
	position = "0x0",
	scale = "1",
})

hl.monitor({
	output = "desc:XXX AAA",
	mode = "1280x1024@67",
	position = "auto-center-left",
	scale = "1",
	vrr = 1
})
