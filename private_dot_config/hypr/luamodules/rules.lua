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

hl.window_rule({
  name = "smart-gaps1",
  border_size = 2,
  rounding = 5,
  border_color = outline_variant,
  match = {
  	float = 0,
  	workspace = "w[tv1]"
  	},
})

hl.window_rule({
  name = "smart-gaps2",
  border_size = 2,
  rounding = 5,
  border_color = outline_variant,
  match = {
  	float = 0,
  	workspace = "f[1]"
  	},
})

hl.window_rule({
  name = "pip",
  float = on,
  pin = on,
  keep_aspect_ratio = on,
  match = {
  	class = ".*waterfox.*",
 	title = "^(Picture-in-Picture)$",
 	},
})

hl.window_rule({
  name = "nautiluspreview",
  float = 1,
  match = {class = "^(org.gnome.NautilusPreviewer)$"}
})

hl.window_rule({
  name = "xwayland",
  no_focus = on,
  match = {
  	class = "^$",
  	title = "^$",
  	xwayland = 1,
  	float = 1,
  	fullscreen = 0,
  	pin = 0,
  	},
})

hl.window_rule({
  name = "windowrule-5",
  no_initial_focus = on,
  opacity = 0.9,
  match = { class = "^(wine-.*)" },
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

-- The one above but for everything now because i also encountered that in Audacity aswell lmao --
hl.window_rule({
  name = "dragall",
  no_initial_focus = 1,
  float = 1,
  match = {
  	float = 1,
  	initial_class = ".*",
  	},
})

hl.window_rule({
  name = "desktop-portal",
  float = on,
  match = {
  	class = ".*desktop-portal.*",
  	initial_class = ".*desktop-portal.*"
  	}
})

hl.window_rule({
  name = "kdeconnectd",
  float = on,
  match = { class = ".*org.kde.kdeconnect.daemon.*" }
})

hl.window_rule({
  name = "pulsevis",
  match = { class = ".*pulse-visualizer.*" },
  size = {1280, 200},
  persistent_size = 1,
  pseudo = 1,
  tile = 1,
  keep_aspect_ratio = 1
})

hl.window_rule({
  name = "airctl",
  match = { class = ".*io.github.airctl.*" },
  float = on,
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
  blur = on,
})

hl.layer_rule({
  name = "waybar",
  blur = 1,
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
  animation = 0,
  match = { namespace = "hyprpicker" },
})

hl.layer_rule({
  name = "selection",
  blur = 0,
  animation = 0,
  match = { namespace = "selection" },
})

