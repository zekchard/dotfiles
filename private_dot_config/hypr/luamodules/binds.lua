--[[

#                                                   
#                                                   
#    ██ ▄█▀ ▄▄▄▄▄ ▄▄ ▄▄ ▄▄▄▄  ▄▄ ▄▄  ▄▄ ▄▄▄▄   ▄▄▄▄ 
#    ████   ██▄▄  ▀███▀ ██▄██ ██ ███▄██ ██▀██ ███▄▄ 
#    ██ ▀█▄ ██▄▄▄   █   ██▄█▀ ██ ██ ▀██ ████▀ ▄▄██▀ 
#                                                   
#                                                   
#  See https://wiki.hypr.land/Configuring/Basics/Binds/

]]--

local mainMod = "SUPER" -- Sets "Windows" key as main modifier


hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("kdeconnect-app"))
hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("waypaper", { float = true, center = true }))
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))

hl.bind(mainMod .. " + Z", hl.dsp.window.float({ action = "toggle" }))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close()) -- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + X", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + CTRL + X", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind(mainMod .. " + V", hl.dsp.window.pseudo())

hl.bind(mainMod .. " + A", hl.dsp.window.cycle_next())
hl.bind(mainMod .. " + SHIFT + A",  hl.dsp.focus({ urgent_or_last = "1" }))
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("S"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:S" }))
hl.bind(mainMod .. " + D",  hl.dsp.window.move({ monitor = "+1" }))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.workspace.swap_monitors({ monitor1 = "0", monitor2 = "1" }))

hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. "+ SHIFT + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

hl.bind(mainMod .. " + ESCAPE", hl.dsp.exec_cmd("sleep 0.25 && hyprctl kill"))

-- Scripts --
hl.bind("ALT + SHIFT + X", hl.dsp.exec_cmd("~/.config/hypr/scripts/ocr.sh"))
hl.bind(mainMod .. " + ALT + G", hl.dsp.exec_cmd("~/.config/hypr/scripts/gamemode.sh"))
hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenrec.sh"))

-- Wofi --
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + PERIOD", hl.dsp.exec_cmd("wofi-emoji"))
hl.bind(mainMod .. " + CTRL + V", hl.dsp.exec_cmd("cliphist list | wofi -S dmenu | cliphist decode | wl-copy"))

-- Waybar --
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd("waybar"))
hl.bind(mainMod .. " + CTRL + T", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("killall -SIGUSR1 waybar"))

-- swaync --
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("swaync-client -t -sw"))

-- hyprlock --
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

-- hyprpicker and hyprshot --
hl.bind("ALT + SHIFT + Z", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind("PRINT", hl.dsp.exec_cmd("pkill hyprshot & hyprshot -m active -m output -o ~/Pictures/Screenshots -z")) -- Screenshot active monitor
hl.bind("CTRL + PRINT", hl.dsp.exec_cmd("pkill hyprshot & hyprshot -m region -o ~/Pictures/Screenshots -z")) -- Screenshot region
hl.bind("ALT + PRINT", hl.dsp.exec_cmd("pkill hyprshot & hyprshot -m window -o ~/Pictures/Screenshots -z")) -- Screenshot window

-- was going to replace hyprshot with HyprCapture but it seems to be a lil underbaked for me (especially in multi-monitor setups like mine) --

--hl.bind("CTRL + PRINT", function()
--    hl.plugin.hyprcapture.open("region")
--end)
--hl.bind("PRINT", function()
--    hl.plugin.hyprcapture.quick("fullscreen")
--end)
--hl.bind("ALT + PRINT", function()
--    hl.plugin.hyprcapture.open("window")
--end)


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

-- Layout switch bind
hl.bind("SUPER + tab", function ()
    local layouts     = { "scrolling", "dwindle", "master", "monocle" }
    local workspace   = hl.get_active_workspace()
    local next_layout = "dwindle"

    if not workspace then
        return
    end

    for i = 1, #layouts do
        if layouts[i] == workspace.tiled_layout then
            local next_layout_idx = (i % #layouts) + 1
            next_layout = layouts[next_layout_idx]
            
            break
        end
    end
    hl.workspace_rule({ workspace = workspace.name, layout = next_layout })
    hl.dsp.exec_cmd("swayosd-client --custom-message")
end)


-- Per layout binds

local function layout_bind(bind_table)
    return function ()
        local workspace = hl.get_active_special_workspace() or
                          hl.get_active_workspace()

        if not workspace then
            return
        end

        local layout = workspace.tiled_layout
                
        if bind_table[layout] then
            hl.dispatch(bind_table[layout])
        end
    end
end

hl.bind("SUPER + SHIFT + J", layout_bind({
    scrolling = hl.dsp.layout("swapcol l"),  -- Scrolling: swap column with left one
    dwindle   = hl.dsp.layout("swapsplit"),  -- Dwindle: swap window split 
    monocle   = hl.dsp.layout("cycleprev"),  -- Monocle and master: cycle prev window
    master    = hl.dsp.layout("orientationprev"),
}))

hl.bind("SUPER + J", layout_bind({
    scrolling = hl.dsp.layout("swapcol r"),   -- Scrolling: swap column with right one
    dwindle   = hl.dsp.layout("togglesplit"), -- Dwindle: toggle window split 
    monocle   = hl.dsp.layout("cyclenext"),   -- Monocle and master: cycle next window
    master    = hl.dsp.layout("orientationnext"),
}))

-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))    -- dwindle only
-- hl.bind(mainMod .. " + SHIFT + J", hl.dsp.layout("swapsplit"))    -- dwindle only
