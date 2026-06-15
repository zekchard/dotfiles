--[[

#                                                            
#                                                            
#    ▄████▄ ▄▄ ▄▄ ▄▄▄▄▄▄ ▄▄▄   ▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄  ▄▄▄▄  ▄▄▄▄▄▄ 
#    ██▄▄██ ██ ██   ██  ██▀██ ███▄▄   ██  ██▀██ ██▄█▄   ██   
#    ██  ██ ▀███▀   ██  ▀███▀ ▄▄██▀   ██  ██▀██ ██ ██   ██   
#                                                                                                                          

exec-once = dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
exec-once = wlsunset -l 13.6 -L 121.1 -t 3700
exec-once = waypaper --restore --no-post-command
exec-once = alacritty
exec-once = waybar
exec-once = hyprctl setcursor Posy_Cursor_Black 20
exec-once = nm-applet --indicator
exec-once = jamesdsp -t 
exec-once = blueberry-tray
exec-once = udiskie --tray
exec-once = hypridle
exec-once = swaync
exec-once = swayosd-server
exec-once = wl-paste --watch cliphist store 
exec-once = cliphist wipe
exec-once = systemctl --user start hyprpolkitagent
exec-once = batsignal -b -p -e -m 5 -w 20 -c 10 -d 5 -W 'Battery is at 20%, consider charging' -C 'Battery is at 10%, consider charging' -P 'Battery is charging' -U 'Battery is disconnected from power source' -M notify-send
exec-once = pano-scrobbler -m
exec-once = kdeconnectd
exec-once = kdeconnect-indicator
	
]]--

hl.on("hyprland.start", function () 
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  hl.exec_cmd("wlsunset -l 13.6 -L 121.1 -t 3700")
  hl.exec_cmd("waypaper --restore --no-post-command")
  hl.exec_cmd(terminal)
  hl.exec_cmd("waybar")
  hl.exec_cmd("hyprctl setcursor Bibata-Modern-Classic 22")
  hl.exec_cmd("nm-applet --indicator")
  --hl.exec_cmd("jamesdsp -t")
  hl.exec_cmd("easyeffects -w --service-mode")
  hl.exec_cmd("blueberry-tray")
  hl.exec_cmd("udiskie --tray")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("swaync")
  hl.exec_cmd("swayosd-server")
  hl.exec_cmd("wl-paste --watch cliphist store")
  hl.exec_cmd("cliphist wipe")
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("batsignal -b -p -e -m 5 -w 20 -c 10 -d 5 -W 'Battery is at 20%, consider charging' -C 'Battery is at 10%, consider charging' -P 'Battery is charging' -U 'Battery is disconnected from power source' -M notify-send")
  hl.exec_cmd("pano-scrobbler -m")
  hl.exec_cmd("kdeconnectd")
  hl.exec_cmd("kdeconnect-indicator")
end)
