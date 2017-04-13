#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#add scripts to path
alias wal='~/scripts/wal.sh -t -i ~/Dropbox/wal-papers'

# Import colorscheme from 'wal'
(~/scripts/wal.sh -t -r &)

#add configuration dot files
alias config='/usr/bin/git --git-dir=/home/juri/.cfg/ --work-tree=/home/juri'
