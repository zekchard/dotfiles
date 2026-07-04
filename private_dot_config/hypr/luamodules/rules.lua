--[[
#                                                                  
#                                                                  
#    ██     ██ ▄▄ ▄▄  ▄▄ ▄▄▄▄   ▄▄▄  ▄▄   ▄▄                       
#    ██ ▄█▄ ██ ██ ███▄██ ██▀██ ██▀██ ██ ▄ ██                       
#     ▀██▀██▀  ██ ██ ▀██ ████▀ ▀███▀  ▀█▀█▀  ▄                     
#                                           ▀                                                                                      
#    ██     ██  ▄▄▄  ▄▄▄▄  ▄▄ ▄▄  ▄▄▄▄ ▄▄▄▄   ▄▄▄   ▄▄▄▄ ▄▄▄▄▄     
#    ██ ▄█▄ ██ ██▀██ ██▄█▄ ██▄█▀ ███▄▄ ██▄█▀ ██▀██ ██▀▀▀ ██▄▄      
#     ▀██▀██▀  ▀███▀ ██ ██ ██ ██ ▄▄██▀ ██    ██▀██ ▀████ ██▄▄▄  ▄  
#                                                              ▀     
#     ▄▄▄  ▄▄  ▄▄ ▄▄▄▄    ██      ▄▄▄  ▄▄ ▄▄ ▄▄▄▄▄ ▄▄▄▄            
#    ██▀██ ███▄██ ██▀██   ██     ██▀██ ▀███▀ ██▄▄  ██▄█▄           
#    ██▀██ ██ ▀██ ████▀   ██████ ██▀██   █   ██▄▄▄ ██ ██           
#                                                                  
#    █████▄  ▄▄ ▄▄ ▄▄    ▄▄▄▄▄  ▄▄▄▄                               
#    ██▄▄██▄ ██ ██ ██    ██▄▄  ███▄▄                               
#    ██   ██ ▀███▀ ██▄▄▄ ██▄▄▄ ▄▄██▀                               
#                                                                  
#                                                                  
# See https://wiki.hypr.land/Configuring/Window-Rules/ for more
# See https://wiki.hypr.land/Configuring/Workspace-Rules/ for workspace rules
]]--

------------------
-- Window Rules --
------------------

local floatfocusfix = hl.window_rule({
  name = "floatfocusfix",
  no_initial_focus = 1,
  float = 1,
  match = {
  	float = 1,
  	initial_class = ".*",
  	},
})

floatfocusfix:set_enabled(true)

local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- suppressMaximizeRule:set_enabled(false)
-- Ignore maximize requests from all apps. Uncomment line above to disable

hl.window_rule({
  name = "smart-gaps1",
  border_size = 2,
  rounding = 5,
  border_color = surface_container_highest,
  match = {
  	float = 0,
  	workspace = "w[tv1]"
  	},
})

hl.window_rule({
  name = "smart-gaps2",
  border_size = 2,
  rounding = 5,
  border_color = surface_container_highest,
  match = {
  	float = 0,
  	workspace = "f[1]"
  	},
})

hl.window_rule({
  name = "pip",
  float = 1,
  pin = 1,
  keep_aspect_ratio = 1,
  content = "video",
  match = {
  	class = ".*zen.*",
 	title = "^(Picture-in-Picture)$",
 	},
})

hl.window_rule({
  name = "nautiluspreview",
  match = {class = "^(org.gnome.NautilusPreviewer)$"},
  float = true,
  move = {"(monitor_w*0.05)", "(monitor_h*0.075)"},
  dim_around = 0,
  min_size = {0,0},
  opacity = 1.0,
})

hl.window_rule({
  name = "xwayland",
  no_focus = 1,
  match = {
  	class = "^$",
  	title = "^$",
  	xwayland = 1,
  	float = 1,
  	fullscreen = 0,
  	pin = 0,
  	},
})


-- Disabling that thing that bugged me from dragging anything in Photoshop --
hl.window_rule({
  name = "photoshop",
  match = {
  	class = ".*steam_proton.*",
  	xwayland = 1,
  	float = 1,
  	},
  no_initial_focus = 1,
  no_blur = 1,
  no_dim = 1,
  no_anim = 1,
  nearest_neighbor = 1,
  no_max_size = 1,
  force_rgbx = 0,
  float = 1,
})

hl.window_rule({
  name = "dvr",
  match = {
  	class = "resolve",
  	},
  no_blur = 1,
  no_dim = 1,
  no_anim = 1,
  nearest_neighbor = 1,
  no_max_size = 1,
  force_rgbx = 0,
})

-- The one above but for everything now because i also encountered that in Audacity aswell lmao --

hl.window_rule({
  name = "desktop-portal",
  match = {
    	class = ".*desktop-portal.*",
    	initial_class = ".*desktop-portal.*"
    	},
  float = 1,
  size = {"(monitor_w*0.8)", "(monitor_h*0.8)"},
})

hl.window_rule({
  name = "polkit",
  match = {
    	class = ".*hyprpolkitagent.*",
    	},
  no_initial_focus = 0,
  stay_focused = 1,
  dim_around = 1,
})

hl.window_rule({
  name = "kdeconnectd",
  match = { class = ".*org.kde.kdeconnect.daemon.*" },
  float = 1,
})

hl.window_rule({
  name = "pulsevis",
  match = {
  	class = ".*pulse-visualizer.*",
  	title = "Pulse.*"
  	},
  size = {1280, 200},
  persistent_size = 1,
  pseudo = 1,
  tile = 1,
  keep_aspect_ratio = 1
})

hl.window_rule({
  name = "airctl",
  match = { class = ".*io.github.airctl.*" },
  float = 1,
})


-----------------
-- Layer Rules --
-----------------

hl.layer_rule({
  match        = { namespace = "wofi" },
  blur         = 1,
  ignore_alpha = 0.5,
})

hl.layer_rule({
  name = "wlogout",
  match = { namespace = "logout_dialog" },
  blur = 1,
})

hl.layer_rule({
  name = "waybar",
  blur = 1,
  ignore_alpha = 0.5,
  animation = "slideFade top",
  match = { namespace = "waybar" },
})

hl.layer_rule({
  name = "swaync",
  blur = 1,
  ignore_alpha = 0.7,
  animation = "slideFade right",
  match = { namespace = "swaync-notification-window" },
})

hl.layer_rule({
  name = "swaync2",
  blur = 1,
  blur_popups = 0,
  ignore_alpha = 0.5,
  animation = "slideFade right",
  match = { namespace = "swaync-control-center" },
})

hl.layer_rule({
  name = "hyprpicker",
  blur = 0,
  no_anim = 1,
  match = { namespace = "hyprpicker" },
})

hl.layer_rule({
  name = "selection",
  blur = 0,
  no_anim = 1,
  match = { namespace = "selection" },
})

