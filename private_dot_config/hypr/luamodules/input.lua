--[[

#                                 
#                                 
#            ██ ▄▄  ▄▄ ▄▄▄▄  ▄▄ ▄▄ ▄▄▄▄▄▄ 
#            ██ ███▄██ ██▄█▀ ██ ██   ██   
#            ██ ██ ▀██ ██    ▀███▀   ██   
#                                 
#                                 
# https://wiki.hypr.land/Configuring/Variables/#input

]]--

hl.config({
    input = {
    
        follow_mouse = 1,
 	    follow_mouse_threshold = 1,
	    mouse_refocus = 1,
	    
        accel_profile = "flat",
        sensitivity = -0.865, -- -1.0 - 1.0, 0 means no modification.
        force_no_accel = false,

        touchpad = {
            natural_scroll = false,
        },

        tablet = {
        	output = "current",
        }
    },
    gestures = {
  	  workspace_swipe_touch = false,
  	  workspace_swipe_distance = 400,
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name = "opentabletdriver-virtual-artist-tablet",
	enabled = true,
	output = "current",
})

hl.device({
    name        = "ugreen-mouse-1",
    enabled = true,
    sensitivity = -0.865,
    scroll_factor = 1.0,
})

hl.device({
    name        = "asue1201:00-04f3:3125-touchpad",
    sensitivity = 0.4,
    accel_profile = "flat",
    scroll_factor = 0.3,
})

hl.device({
    name        = "asue1201:00-04f3:3125-mouse",
    sensitivity = 0.4,
    accel_profile = "flat",
    scroll_factor = 0.3,
})
