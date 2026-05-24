--[[
#                                                   
#                                                   
#    ██ ▄█▀ ▄▄▄▄▄ ▄▄ ▄▄ ▄▄▄▄  ▄▄ ▄▄  ▄▄ ▄▄▄▄   ▄▄▄▄ 
#    ████   ██▄▄  ▀███▀ ██▄██ ██ ███▄██ ██▀██ ███▄▄ 
#    ██ ▀█▄ ██▄▄▄   █   ██▄█▀ ██ ██ ▀██ ████▀ ▄▄██▀ 
#                                                   
#                                                   
#    See https://wiki.hypr.land/Configuring/Binds/
]]--
local mainMod = "SUPER" -- Sets "Windows" key as main modifier
hl.bind("SUPER + Q", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close()) -- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. "+ SHIFT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.layout("swapsplit"))    -- dwindle only

-- Scripts --
hl.bind("ALT + SHIFT + X", hl.dsp.exec_cmd("~/.config/hypr/scripts/ocr.sh"))
hl.bind(mainMod .. " + ALT + G", hl.dsp.exec_cmd("~/.config/hypr/scripts/gamemode.sh"))
hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenrec.sh"))

-- Maximize --
hl.bind(mainMod .. " + T", hl.dsp.window.float({ mode = "maximize" }))
hl.bind(mainMod .. " + CTRL + T", hl.dsp.window.float({ mode = "fullscreen" }))

-- Wofi --
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("wofi --show run --term alacritty"))
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd("wofi-emoji"))
hl.bind(mainMod .. " + CTRL + V", hl.dsp.exec_cmd("cliphist list | wofi -S dmenu | cliphist decode | wl-copy"))

-- Waybar --
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("waybar"))
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"))

-- swaync --
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t -sw"))

-- hyprlock --
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- hyprpicker and hyprshot --
hl.bind("ALT + SHIFT + Z", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("pkill hyprshot & hyprshot -m active -m output -o ~/Pictures/Screenshots -z")) -- Screenshot active monitor
hl.bind(mainMod .. " + CTRL + PRINT", hl.dsp.exec_cmd("pkill hyprshot & hyprshot -m region -o ~/Pictures/Screenshots -z")) -- Screenshot region
hl.bind(mainMod .. " + ALT + PRINT", hl.dsp.exec_cmd("pkill hyprshot & hyprshot -m window -o ~/Pictures/Screenshots -z")) -- Screenshot window

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:276", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse:275",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume=5"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume=-5"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("swayosd-client --brightness=+5"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("swayosd-client --brightness=-5"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

