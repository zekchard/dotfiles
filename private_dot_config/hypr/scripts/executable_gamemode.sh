#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = true ] ; then
    hyprctl --batch "\
        eval hl.config({ animations = { enabled = false } });\
        eval hl.config({ decoration = { shadow = { enabled = false } } });\
        eval hl.config({ decoration = { blur = { enabled = false } } });"
	swayosd-client --custom-message "Decorations disabled"
    exit
fi

hyprctl reload
swayosd-client --custom-message "Decorations enabled"
