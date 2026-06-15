if status is-interactive
    # Commands to run in interactive sessions can go here

cat ~/.cache/matugen/sequences.txt 2> /dev/null

# Created by `pipx` on 2025-03-15 20:43:40
set -gx PATH "$PATH:/home/zek/.local/bin"

# cargo path
set -gx PATH "$PATH:/home/zek/.cargo/bin"

fish_add_path /home/zek/.spicetify

set -gx fish_greeting ' '

# autostart
# fastfetch -c /home/zek/wriorinde.jsonc --logo-recache
$HOME/scripts/shipfetch/shipfetch.sh
starship init fish | source

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
alias cl="matugen --dry-run --verbose --show-colors --continue-on-error -r gaussian -t scheme-tonal-spot color hex $(cat ~/.config/matugen/current-color)"
alias cr="matugen --verbose --show-colors --continue-on-error -r gaussian -t scheme-tonal-spot color hex $(cat ~/.config/matugen/current-color)"

end




