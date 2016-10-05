#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

#PS1='[\u@\h \W]\$ '

export PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\] \[\e[1;37m\]\w $ \[\e[m\]'

export TERM=xterm-256color

export EDITOR=vim

# Python virtual env
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code/M45
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# package manager aliases
# Arch Linux (pacman)
#alias apm="sudo pacman"
# Aptitude (Ubuntu)
alias upm="sudo apt"

# system aliases
alias edt="sudo vim"
alias lsa="sudo ls -lah --color=auto"
alias lsd="sudo ls -lhd --color=auto */"
alias lsl="sudo ls -lh  --color=auto"
alias lsx="sudo ls -lhX --color=auto"
alias psef="ps -ef | grep"
alias prt="sudo cat"
alias fnd="sudo find"

# systemd aliases
alias sctl="sudo systemctl"
alias jctl="sudo journalctl -b"
alias fnd="sudo find"

# tmux aliases
alias tmxk="tmux kill-session"
alias tmxl="tmux list-session"

# docker aliases
alias dckps='docker ps -a --format "table {{.Names}}\t{{.Command}}\t{{.Image}}\t{{.Status}}"'

# Dir colors
eval $(dircolors)

alias sshk="ssh-keygen"

alias luks="sudo cryptsetup"

# Apache
