# -----------------------------
# Basic shell behavior
# -----------------------------

setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt AUTO_CD
setopt INTERACTIVE_COMMENTS

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

bindkey -e

# -----------------------------
# Prompt
# -----------------------------

autoload -Uz colors && colors
setopt PROMPT_SUBST

PROMPT='%(?.%F{108}.%F{203})╭─%f %F{252}%~%f %(?.%F{108}.%F{203})●%f
%(?.%F{108}.%F{203})╰─%f '

RPROMPT='%F{240}%*%f'

# -----------------------------
# Completion
# -----------------------------

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format ' %F{240}-- %d --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose true

zstyle ':completion:*' matcher-list \
    'm:{a-z}={A-Z}' \
    'r:|[._-]=* r:|=*'

# -----------------------------
# Colors
# -----------------------------

eval "$(dircolors -b)"

LS_COLORS='di=38;5;108:fi=38;5;252:ln=38;5;181:ex=38;5;174'
export LS_COLORS

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# -----------------------------
# Syntax highlighting
# -----------------------------

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[command]='fg=#c97b63,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#c97b63'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#c97b63'

ZSH_HIGHLIGHT_STYLES[path]='fg=#58705c'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#7d9681'

ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#b8a082'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#b8a082'

ZSH_HIGHLIGHT_STYLES[quoted-argument]='fg=#ece6d9'

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# -----------------------------
# Aliases
# -----------------------------

alias ll="ls -lah --group-directories-first --color=auto"

alias gs="git status"

alias q="exit"

alias home="cd ~"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias documents="cd ~/Documents"

alias config="cd ~/.config"
alias local="cd ~/.local"
alias bin="cd ~/.local/bin"

alias wprojects="cd /media/minty/Shared/Web-Programming"
alias wcode="code /media/minty/Shared/Web-Programming"

alias mziuri="cd /media/minty/Shared/Web-Programming/Mziuri"
alias mzcode="code /media/minty/Shared/Web-Programming/Mziuri"

alias etc="cd /etc"
alias temp="cd /tmp"

# -----------------------------
# Startup
# -----------------------------

if [[ -o interactive ]]; then
    clear
    fastfetch --logo ~/.config/fastfetch/Logo.txt
fi
