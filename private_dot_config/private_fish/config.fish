if status is-interactive
    # Commands to run in interactive sessions can go here
set -gx RUSTICL_ENABLE radeonsi
set -gx OCL_ICD_VENDORS /etc/OpenCL/vendors/rusticl.icd
set -gx TERMINAL alacritty
set -gx TERM alacritty

# Created by `pipx` on 2025-03-15 20:43:40
set -gx PATH "$PATH:/home/zek/.local/bin"

# cargo path
set -gx PATH "$PATH:/home/zek/.cargo/bin"

set -gx fish_greeting ' '

# autostart
fastfetch -c /home/zek/wriorinde.jsonc --logo-recache

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias configdotfish='$EDITOR /home/zek/.config/fish/config.fish'
alias eimikosfetch='fastfetch -c ~/eimikosff3.jsonc'
alias wriorindefetch='fastfetch -c /home/zek/wriorinde.jsonc --logo-recache'
alias screenrec="/home/zek/scripts/screenrec.sh"
alias hyprconf='yazi ~/.config/hypr/'
alias wbref='killall -SIGUSR2 waybar'
alias wbconf='yazi ~/.config/waybar'
alias xterm='xterm -fg white -bg black'
alias tuifi="env tuifi_theme=azawy tuitilities_default_background=True tuifi_vim_mode=True tuifi_show_hidden=True tuifi_ctrl_scroll_sensitivity=14 tuifi_scroll_sensitivity=7 tuifi"

# aagl stuff, notanymore
# alias aagl-run="env DXVK_ASYNC="1" GST_PLUGIN_PATH="" LD_LIBRARY_PATH="/home/zek/.local/share/anime-game-launcher/runners/wine-spritz-10.12-1-staging-tkg-aagl-amd64-wow64/lib:/home/zek/.local/share/anime-game-launcher/runners/wine-spritz-10.12-1-staging-tkg-aagl-amd64-wow64/lib/wine/x86_64-unix" MANGOHUD="1" WINEARCH="win64" WINEFSYNC="1" WINEPREFIX="/home/zek/.local/share/anime-game-launcher/prefix" WINE_FULLSCREEN_FSR="0" '/home/zek/.local/share/anime-game-launcher/runners/wine-spritz-10.12-1-staging-tkg-aagl-amd64-wow64/bin/wine' "
# alias aagl-gmrun="env DXVK_ASYNC="1" GST_PLUGIN_PATH="" LD_LIBRARY_PATH="/home/zek/.local/share/anime-game-launcher/runners/wine-spritz-10.12-1-staging-tkg-aagl-amd64-wow64/lib:/home/zek/.local/share/anime-game-launcher/runners/wine-spritz-10.12-1-staging-tkg-aagl-amd64-wow64/lib/wine/x86_64-unix" MANGOHUD="1" WINEARCH="win64" WINEFSYNC="1" WINEPREFIX="/home/zek/.local/share/anime-game-launcher/prefix" WINE_FULLSCREEN_FSR="0" gamemoderun '/home/zek/.local/share/anime-game-launcher/runners/wine-spritz-10.12-1-staging-tkg-aagl-amd64-wow64/bin/wine' "

end

fish_add_path /home/zek/.spicetify
