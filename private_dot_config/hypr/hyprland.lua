--[[
                                                                                                                                    
██  ██ ██  ██ █████▄ █████▄  ██     ▄████▄ ███  ██ ████▄          
██████  ▀██▀  ██▄▄█▀ ██▄▄██▄ ██     ██▄▄██ ██ ▀▄██ ██  ██         
██  ██   ██   ██     ██   ██ ██████ ██  ██ ██   ██ ████▀          
                                                                  
█████▄   ▄▄▄   ▄▄▄ ▄▄▄▄▄▄   ▄█████  ▄▄▄  ▄▄  ▄▄ ▄▄▄▄▄             
██▄▄██▄ ██▀██ ██▀██  ██     ██     ██▀██ ███▄██ ██▄▄              
██   ██ ▀███▀ ▀███▀  ██     ▀█████ ▀███▀ ██ ▀██ ██    ▄                                                           
  ▄                                                        ▄▄ ▄   
▄█▀ ▄▄  ▄▄  ▄▄▄  ▄▄   ▄▄   ▄▄ ▄▄  ▄▄   ██     ▄▄ ▄▄  ▄▄▄   ██ ▀█▄ 
██  ███▄██ ██▀██ ██ ▄ ██   ██ ███▄██   ██     ██ ██ ██▀██  ██  ██ 
▀█▄ ██ ▀██ ▀███▀  ▀█▀█▀    ██ ██ ▀██   ██████ ▀███▀ ██▀██  ▄▄ ▄█▀ 
  ▀                                                           ▀   

i adapted it finally bruhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh 

--]]

require("colors")
require("luamodules/env")
require("luamodules/programs")
require("luamodules/monitors")
require("luamodules/input")
require("luamodules/binds")
require("luamodules/start")
require("luamodules/decor")
require("luamodules/rules")

--require("luamodules/plugins")

hl.config({
  dwindle = {
      force_split                  = 0,
      preserve_split               = true,
      smart_split                  = true,
      smart_resizing               = true,
      permanent_direction_override = false,
      special_scale_factor         = 1,
      split_width_multiplier       = 1.0,
      use_active_for_splits        = true,
      default_split_ratio          = 1.0,
      split_bias                   = 0,
      precise_mouse_move           = false,
  },
  master = {
      new_status = master,
  },
  misc = {
  	  size_limits_tiled = true,
  	  
      force_default_wallpaper = 1,
      disable_hyprland_logo = true,

      font_family = "Readex Pro",
      splash_font_family = "Readex Pro",

      background_color = background,
      
      always_follow_on_dnd = 1,
      anr_missed_pings = 30,
  },
  debug = {
  
    full_cm_proto = true,
    disable_logs = true,
    
    },
    xwayland = {
    
    create_abstract_socket = true,
    
    },
    render = {
    
    xp_mode = false,
    new_render_scheduling = false,
    
    }
})
