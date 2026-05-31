--[[

#                                                  
#                                                  
#            ██████ ▄▄  ▄▄ ▄▄ ▄▄  ██  ██  ▄▄▄  ▄▄▄▄   ▄▄▄▄ 
#            ██▄▄   ███▄██ ██▄██  ██▄▄██ ██▀██ ██▄█▄ ███▄▄ 
#            ██▄▄▄▄ ██ ▀██  ▀█▀  ▄ ▀██▀  ██▀██ ██ ██ ▄▄██▀ 
#                                                  
#                                                  
#      https://wiki.hypr.land/Configuring/Environment-variables/
# https://wiki.hypr.land/Configuring/Keywords/#setting-the-environment

env = GDK_BACKEND,wayland,x11,*
env = QT_QPA_PLATFORM,wayland;xcb
env = CLUTTER_BACKEND,wayland
env = QT_QPA_PLATFORMTHEME,qt5ct
env = XCURSOR_SIZE,20
env = HYPRCURSOR_SIZE,20
env = TERM,alacritty
env = TERMINAL,alacritty
env = BROWSER,waterfox
env = EDITOR,micro
env = OCL_ICD_VENDORS,/etc/OpenCL/vendors/rusticl.icd
env = RUSTICL_ENABLE,radeonsi
	
]]--

hl.env("XCURSOR_SIZE", "20")
hl.env("HYPRCURSOR_SIZE", "20")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("TERM", "kitty")
hl.env("TERMINAL", "kitty")
hl.env("BROWSER", "waterfox")
hl.env("EDITOR", "micro")
hl.env("OCL_ICD_VENDORS", "/etc/OpenCL/vendors/rusticl.icd")
hl.env("RUSTICL_ENABLE", "radeonsi")
