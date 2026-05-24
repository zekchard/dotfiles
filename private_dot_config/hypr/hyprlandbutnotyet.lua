--[[
                                                        
                                                        
██  ██ ▄▄ ▄▄ ▄▄▄▄  ▄▄▄▄  ▄▄     ▄▄▄  ▄▄  ▄▄ ▄▄▄▄        
██████ ▀███▀ ██▄█▀ ██▄█▄ ██    ██▀██ ███▄██ ██▀██       
██  ██   █   ██    ██ ██ ██▄▄▄ ██▀██ ██ ▀██ ████▀       
                                                                                                            
█████▄   ▄▄▄   ▄▄▄ ▄▄▄▄▄▄   ▄█████  ▄▄▄  ▄▄  ▄▄ ▄▄▄▄▄   
██▄▄██▄ ██▀██ ██▀██  ██     ██     ██▀██ ███▄██ ██▄▄    
██   ██ ▀███▀ ▀███▀  ██     ▀█████ ▀███▀ ██ ▀██ ██    ▄ 
                                                       
  ▄                                ▄                    
▄█▀ ▄▄ ▄▄  ▄▄   ██     ▄▄ ▄▄  ▄▄▄  ▀█▄                  
██  ██ ███▄██   ██     ██ ██ ██▀██  ██                  
▀█▄ ██ ██ ▀██   ██████ ▀███▀ ██▀██ ▄█▀                  
  ▀                                ▀                    


  
--]]

require("colors")
require("luamodules/env")
require("luamodules/monitors")
require("luamodules/start")
require("luamodules/programs")
require("luamodules/decor")
require("luamodules/rules")
require("luamodules/input")
require("luamodules/binds")

hl.config({
  dwindle = {
      preserve_split               = true,
  },
  master = {
      new_status = master,
  },
  misc {
      force_default_wallpaper = 2,
      disable_hyprland_logo = false,

      font_family = "Readex",
      splash_font_family = "Readex",

      background_color = rgba(background,1),
      
      always_follow_on_dnd = 1,
      anr_missed_pings = 30,
  },
  debug {
  
    full_cm_proto = true,
    disable_logs = true,
    
    },
    xwayland {
    
    create_abstract_socket = true,
    
    },
    render {
    
    xp_mode = false,
    new_render_scheduling = false,
    
    }
})
