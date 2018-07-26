#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

# Custom shell prompt; will show as user@hostname
export PS1='\[\e[1;36m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\] \[\e[1;37m\]\W $ \[\e[m\]'
export TERM=xterm-256color
export EDITOR=vim

# basic command aliases
echo "Sourcing basic command aliases..."
alias   diff="diff -u --color=auto"
alias    edt="sudo vim"
alias    fnd="sudo find"
alias    lsa="sudo ls -lah --color=auto"
alias    lsd="sudo ls -lhd --color=auto */"
alias    lsl="sudo ls -lh  --color=auto"
alias    lsx="sudo ls -lhX --color=auto"
alias   psef="ps -ef | grep -v 'grep' | grep"
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

#Git aliases
git --version > /dev/null 2>&1
if [ $? -eq 0 ]; then
   echo "Found Git on system; setting Git aliases..."
   alias gitb="git branch -va"
   alias gitc="git checkout"
   alias gitd="git diff"
   alias gitf="git fetch"
   alias gith="git --help"
   alias gitl="git log"
   alias gits="git status"
   alias gitr="git remote -v"
fi

# tmux aliases
tmux -V > /dev/null 2>&1
if [ $? -eq 0 ]; then
   echo "Found tmux on system; setting systemd aliases..."
   alias tmuxl="tmux list-sessions"
   alias tmuxa="tmux attach"
   alias tmuxk="tmux kill-session"
fi

# TO DO - source misc utilities, if they exist, or do this in .bash_local
# alias sshk="ssh-keygen"
# alias luks="sudo cryptsetup"

# Source local env if present
if [ -f ~/.bash_local ]; then
   echo "Found local system env override; sourcing it..."
   . ~/.bash_local
fi

echo "Environment setup complete"
