#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias sudo='sudo '
alias s='sudo '
alias up='pacman -Syu'
alias yup='yay -Syu'
alias ls='ls --color=auto'
alias la='ls -A'
alias ci='ping archlinux.org'
alias n='nvim'
alias p='pacman'
alias r='ranger'
alias nv='nordvpn'
alias py='python'
alias wt='curl wttr.in/alexandria'
alias spl='spotify-lyrics'
alias serve='browser-sync start --server --files '
PS1='[\u@\h \W]\$ '

# Set defaults
export EDITOR='nvim'
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/Desktop/r2mod_cli:$PATH"

# Enable auto cd 
shopt -s autocd
# Enable compose key (right context key)
xmodmap -e "keycode 135  = Multi_key"
# Increase keyboard cursor speed
xset r rate 320 45

# Enable dynamic titles for Alacritty
case ${TERM} in
 alacritty)
          PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
          ;;
esac
