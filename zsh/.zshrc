# Set up the prompt

autoload -Uz promptinit
promptinit
PROMPT='%F{180}╭─%f %F{223}%1~%f
%F{180}╰◆%f '

setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
LS_COLORS='di=38;5;108:fi=38;5;252:ln=38;5;181:ex=38;5;174'
export LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' menu yes
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias ll="ls -lah --group-directories-first --color=auto" 
alias gs="git status" 
alias q="exit"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias documents="cd ~/Documents"
alias home="cd ~"

alias config="cd ~/.config"
alias local="cd ~/.local"
alias bin="cd ~/.local/bin"

alias wprojects="cd /media/minty/Shared/Web-Programming"
alias wcode="code /media/minty/Shared/Web-Programming"

alias mziuri="cd /media/minty/Shared/Web-Programming/Mziuri"
alias mzcode="code /media/minty/Shared/Web-Programming/Mziuri"

alias etc="cd /etc"
alias temp="cd /tmp"

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
