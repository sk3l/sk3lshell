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
#source /usr/bin/virtualenvwrapper.sh

# Arch Linux aliases
#alias apm="sudo pacman"

# system aliases
alias edt="sudo vim"
alias lsa="sudo ls -lah --color=auto"
alias lsd="sudo ls -lhd --color=auto */"
alias lsl="sudo ls -lh  --color=auto"
alias psef="ps -ef | grep"
alias prt="sudo cat"
alias fnd="sudo find"

# systemd aliases
alias sctl="sudo systemctl"
alias dlg="journalctl -b"

alias sshk="ssh-keygen"

alias luks="sudo cryptsetup"

# Apache
