if status is-interactive
    # Commands to run in interactive sessions can go here

cat ~/.cache/matugen/sequences.txt 2> /dev/null
set -gx fish_greeting ' '

# Created by `pipx` on 2025-03-15 20:43:40
set -gx PATH "$PATH:/home/zek/.local/bin"

# cargo path
set -gx PATH "$PATH:/home/zek/.cargo/bin"

fish_add_path /home/zek/.spicetify

# autostart
# fastfetch -c /home/zek/wriorinde.jsonc --logo-recache
$HOME/scripts/shipfetch/shipfetch.sh
starship init fish | source
set -gx SUDO_PROMPT "$(tput setaf 1)󱈸 Password for $(tput setaf 1 bold)%p:$(tput sgr0) "

# aliases
alias ls='eza -A'
alias grep='grep --color=auto'
alias configdotfish='$EDITOR ~/.config/fish/config.fish'
alias eimikosfetch='fastfetch -c ~/eimikosff3.jsonc'
alias wriorindefetch='fastfetch -c /home/zek/wriorinde.jsonc --logo-recache'
alias shipfetch="~/scripts/shipfetch/shipfetch.sh"

alias screenrec="/home/zek/scripts/screenrec.sh"

alias hyprconf='yazi ~/.config/hypr/'
alias wbref='killall -SIGUSR2 waybar'
alias wbconf='yazi ~/.config/waybar'

alias cl="matugen --dry-run --verbose --show-colors --continue-on-error -r gaussian -t scheme-tonal-spot color hex $(cat ~/.config/matugen/current-color)"
alias cr="matugen --verbose --show-colors --continue-on-error -r gaussian -t scheme-tonal-spot color hex $(cat ~/.config/matugen/current-color)"

alias psyu='sudo pacman -Syu'
alias psy='sudo pacman -Sy'
alias psyy='sudo pacman -Syy'

alias syu='sudo pacman -Syu'
alias sy='sudo pacman -Sy'
alias syy='sudo pacman -Syy'

alias ysyu='paru -Syu'
alias ysy='paru -Sy'
alias ysyy='paru -Syy'

end




