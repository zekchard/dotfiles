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

local modalMatches = {
    { title = "^(Open|Authentication Required|Add Folder to Workspace|Choose Files|Save As|Confirm to replace files|File Operation Progress)$" },
    { initial_title = "^(Open File)$" },
    { class = "^([Xx]dg-desktop-portal-gtk)$" },
    { title = "^(File Upload|Choose wallpaper|Library)(.*)$" },
    { class = "^(.*dialog.*)$" },
    { title = "^(.*dialog.*)$" },
    { class = "^(hyprland-share-picker)$"},
}
for _, m in ipairs(modalMatches) do hl.window_rule({match = m, float = true, size = {"max(monitor_w, monitor_h)*0.8", "min(monitor_w, monitor_h)*0.8"}, }) end

local gameClass = "^(steam_app.*|gamescope|genshinimpact.*|zenlesszonezero.*)$"
hl.window_rule({
	match = { class = gameClass },
	float = 0,
	monitor = 0,
	fullscreen_state = 3,
	center = true,
	immediate = true,
	content = "game",
	no_blur = 1,
})

local opacityOverride = {
    { class = "^(kitty|ghostty|[Kk]onsole|Alacritty|gnome-terminal|xfce[0-9]?-terminal)$" },
    { class = "^(mpv|org.kde.haruna|.*plex.*|org\\.kde\\.gwenview|.*vlc.*)$" },
    { class = "^(firefox|zen.*|goofcord)$" },
}
for _, m in ipairs(opacityOverride) do hl.window_rule({ match = m, opacity = "1.0 override" }) end

local floatApps = {
    { class = "^(kvantummanager|qt[56]ct|nwg-look)$" },
    { class = "^(org.pulseaudio.pavucontrol|blueman-manager|nm-applet|nm-connection-editor)$" },
    { title = "^(Winetricks.*|Protontricks.*)$" },
    { title = ".*QuickCSS.*" },
}
for _, m in ipairs(floatApps) do hl.window_rule({ match = m, float = true }) end

hl.window_rule({
	match = { class = "^(.*[Cc]alculator.*)$" },
	float = true,
	size = { "max(monitor_w, monitor_h)*0.17", "min(monitor_w, monitor_h)*0.43" }
})

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

suppressMaximizeRule:set_enabled(true)
-- Ignore maximize requests from all apps. set_enabled(false) to disable

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

hl.window_rule({ match = { float = true }, center = true })

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
  center = false,
})

hl.window_rule({
  name = "pip",
  float = 1,
  pin = 1,
  keep_aspect_ratio = 1,
  size = {
  	"max(monitor_w, monitor_h)*0.25",
  	"min(monitor_w, monitor_h)*0.25" 
  	},
  content = "video",
  match = {
 	title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$",
 	},
})

hl.window_rule({
  name = "nautiluspreview",
  match = {class = "^(org.gnome.NautilusPreviewer)$"},
  float = true,
  dim_around = false,
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

hl.window_rule({
  name = "polkit",
  match = {
    	class = ".*hyprpolkitagent.*",
    	},
  no_initial_focus = 0,
  stay_focused = 1,
  pin = 1,
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
  	title = "Pulse .*"
  	},
  size = {1280, 200},
  persistent_size = 1,
  pseudo = 1,
  tile = 1,
  keep_aspect_ratio = 1,
  opacity = 0.85
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

