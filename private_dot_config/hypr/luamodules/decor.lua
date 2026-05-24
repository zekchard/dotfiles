--[[

#                                                               
#                                                               
#    ████▄  ▄▄▄▄▄  ▄▄▄▄  ▄▄▄  ▄▄▄▄   ▄▄▄ ▄▄▄▄▄▄ ▄▄  ▄▄▄  ▄▄  ▄▄ 
#    ██  ██ ██▄▄  ██▀▀▀ ██▀██ ██▄█▄ ██▀██  ██   ██ ██▀██ ███▄██ 
#    ████▀  ██▄▄▄ ▀████ ▀███▀ ██ ██ ██▀██  ██   ██ ▀███▀ ██ ▀██ 
#                                                               
#                                                               
#    https://wiki.hypr.land/Configuring/Variables/#decoration

# https://wiki.hypr.land/Configuring/Variables/#general
general {
    gaps_in = 3
    gaps_out = 5

    border_size = 2

    # https://wiki.hypr.land/Configuring/Variables/#variable-types for info about colors
    col.active_border = rgba($primary,0.8) rgba($secondary_fixed_dim,0.8) 90deg
    col.inactive_border = rgba($outline_variant,0.8)

    # Resizing windows by clicking and dragging on borders and gaps
    resize_on_border = false

    # Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
    allow_tearing = false

    layout = dwindle
}

# https://wiki.hypr.land/Configuring/Variables/#decoration
decoration {

    rounding = 5
    rounding_power = 2.5

    active_opacity = 1.0
    inactive_opacity = 0.85

    dim_inactive = true
    dim_strength = 0.055

    border_part_of_window = false

    ########################################################
	# Shadow                                               #
    # https://wiki.hypr.land/Configuring/Variables/#shadow #
    ########################################################

    shadow {
        enabled = true
        sharp = false
        range = 6
        render_power = 1
        color = rgba(1a1a1add)
        color_inactive = rgba(1a1a1a33)
    }
    
    ######################################################
	# Blur                                               #
    # https://wiki.hypr.land/Configuring/Variables/#blur #
    ######################################################
    
    blur {
        enabled = true
        new_optimizations = true
        size = 4
        xray = false
        passes = 2
        noise = 0.08
        contrast = 1.45
        brightness = 0.759
        vibrancy_darkness = 0.0
        vibrancy = 0.0
    }
    
}

# https://wiki.hypr.land/Configuring/Variables/#animations
animations {
    enabled = 1

    ###########
    # Beziers #
	###########
	
    bezier = linear,0,0,1,1
    bezier = almostLinear,0.5,0.5,0.75,1.0
    bezier = quick,0.15,0,0.1,1
    
    bezier = easeOutQuint,0.23,1,0.32,1
	bezier = easeInOutQuint,0.83, 0, 0.17, 1
	
    bezier = easeInOutCubic,0.65,0.05,0.36,1
    
    bezier = easeInOutExpo,0.87, 0, 0.13, 1
    bezier = easeOutExpo,0.16, 1, 0.3, 1
    bezier = easeInExpo,0.7, 0, 0.84, 0
    
    bezier = easeInOutCirc,0.85, 0, 0.15, 1
    bezier = easeOutCirc,0, 0.55, 0.45, 1
    
	#########################
    # The actual animations #
    #########################
    
    animation = global, 1, 10, default
    animation = border, 1, 3, linear
    animation = borderangle, 1, 10, easeOutCirc, once
    
    animation = windows, 1, 4.49, easeInOutCirc
    animation = windowsIn, 1, 3.85, easeInOutExpo, popin 92%
    animation = windowsOut, 1, 1.80, easeInOutExpo, popin 92%
    animation = windowsMove, 1, 6.5, easeOutExpo
    
    animation = fadeIn, 1, 1.73, linear
    animation = fadeOut, 1, 1.46, linear
    animation = fade, 1, 3.03, quick
    
    animation = layers, 1, 3.81, easeInOutExpo
    animation = layersIn, 1, 4, easeOutExpo, popin 97%
    animation = layersOut, 1, 1.5, easeOutExpo, popin 97%
    
    animation = fadeLayersIn, 1, 1.79, almostLinear
    animation = fadeLayersOut, 1, 1.39, almostLinear
    
    animation = workspaces, 1, 2, easeInOutExpo, slidefade 70%
    animation = workspacesIn, 1, 3.01, easeInOutExpo, slidefade 70%
    animation = workspacesOut, 1, 3.74, easeInOutExpo, slidefade 70%
}

]]--
hl.config({
    general = {
        gaps_in  = 3,
        gaps_out = 5,

        border_size = 2,

        col = {
            active_border   ={ colors = { primary, secondary_fixed_dim }, angle = 45 },
            inactive_border = outline_variant,
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = false,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 5,
        rounding_power = 2.5,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 0.85,

        dim_inactive = true,
        dim_strength = 0.055,

        border_part_of_window = false,

        shadow = {
            enabled = true,
			sharp = false,
	        range = 6,
	        render_power = 1,
	        color = "rgba(1a1a1add)",
	        color_inactive = "rgba(1a1a1a33)",
        },

        blur = {
            enabled = true,
	        new_optimizations = true,
	        size = 4,
	        xray = false,
	        passes = 2,
	        noise = 0.08,
	        contrast = 1.45,
	        brightness = 0.759,
	        vibrancy_darkness = 0.0,
	        vibrancy = 0.0, 
	     },
    },

    animations = {
        enabled = true,
    },
})

-- Beziers --

hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })

hl.curve("easeOutCirc", { type = "bezier", points = { {0, 0.55}, {0.45, 1}    } })
hl.curve("easeInOutCirc", { type = "bezier", points = { {0.85, 0}, {0.15, 1}    } })

hl.curve("easeInOutExpo", { type = "bezier", points = { {0.87, 0}, {0.13, 1}    } })
hl.curve("easeOutExpo", { type = "bezier", points = { {0.16, 1}, {0.3, 1}    } })

-- Springs --

hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

---------------------------
-- The actual Animations --
---------------------------

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 3, bezier = "linear" })
hl.animation({ leaf = "borderangle",        enabled = true,  speed = 10, bezier = "easeOutCirc", style = "once" })

hl.animation({ leaf = "windows",       enabled = true,  speed = 4.49, bezier = "easeInOutCirc" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 3.85,  bezier = "easeInOutExpo",         style = "popin 92%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.80, bezier = "easeInOutExpo",       style = "popin 92%" })
hl.animation({ leaf = "windowsMove",    enabled = true,  speed = 6.5, bezier = "easeOutExpo"})

hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })

hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeInOutExpo" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutExpo", style = "popin 97%" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "easeOutExpo",       style = "popin 97%" })

hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })

hl.animation({ leaf = "workspaces",    enabled = true,  speed = 2, bezier = "easeInOutExpo", style = "slidefade 70%" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 3.01, bezier = "easeInOutExpo", style = "slidefade 70%" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 3.74, bezier = "easeInOutExpo", style = "slidefade 70%" })

hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })
