if status is-interactive

cat ~/.cache/matugen/sequences.txt 2> /dev/null
function fish_greeting
    $HOME/scripts/shipfetch/shipfetch.sh
end

set -gx PATH "$PATH:/home/zek/.local/bin"
set -gx PATH "$PATH:/home/zek/.cargo/bin"

# autostart
starship init fish | source
set -gx SUDO_PROMPT "$(tput setaf 1)󱈸 Password for $(tput setaf 1 bold)%p:$(tput sgr0) "

# aliases
alias ls='eza --all --icons=auto'
alias grep='grep --color=auto'
alias configdotfish='$EDITOR ~/.config/fish/config.fish'
alias eimikosfetch='fastfetch -c ~/eimikosff3.jsonc'
alias wriorindefetch='fastfetch -c /home/zek/wriorinde.jsonc --logo-recache'
alias shipfetch="~/scripts/shipfetch/shipfetch.sh"

alias screenrec="/home/zek/scripts/screenrec.sh"

alias hyprconf='yazi ~/.config/hypr/modules'
alias wbref='killall -SIGUSR2 waybar'
alias wbconf='yazi ~/.config/waybar'

alias cl="$HOME/.config/matugen/cliparams.sh --dry-run color hex $(cat ~/.config/matugen/current-color)"
alias cr="$HOME/.config/matugen/cliparams.sh color hex $(cat ~/.config/matugen/current-color)"

alias psyu='sudo pacman -Syu'
alias psy='sudo pacman -Sy'
alias psyy='sudo pacman -Syy'

alias pm='sudo pacman'

alias syu='sudo pacman -Syu'
alias sy='sudo pacman -Sy'
alias syy='sudo pacman -Syy'

alias ysyu='paru -Syu'
alias ysy='paru -Sy'
alias ysyy='paru -Syy'

alias radj='sudo ryzenadj'


end




