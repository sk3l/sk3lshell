#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

# Custom shell prompt; will show as user@hostname
export PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\] \[\e[1;37m\]\w $ \[\e[m\]'
export TERM=xterm-256color
export EDITOR=vim

# basic command aliases
echo "Sourcing basic command aliases..."
alias    edt="sudo vim"
alias    fnd="sudo find"
alias    lsa="sudo ls -lah --color=auto"
alias    lsd="sudo ls -lhd --color=auto */"
alias    lsl="sudo ls -lh  --color=auto"
alias   psef="ps -ef | grep"
alias    prt="sudo cat"
alias  ptree="sudo pstree"

# systemd aliases
systemctl > /dev/null 2>&1
if [ $? -eq 0 ]; then
   echo "Found systemd on system; setting systemd aliases..."
   alias sctl="sudo systemctl"
   alias jctl="sudo journalctl -b"
fi

# Dir colors
eval $(dircolors)

# TO DO - source misc utilities, if they exist, or do this in .bash_local
# alias sshk="ssh-keygen"
# alias luks="sudo cryptsetup"

# Source local env if present
if [ -f ~/.bash_local ]; then
   echo "Found local system env override; sourcing it..."
   . ~/.bash_local
fi

echo "Environment setup complete"
