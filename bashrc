#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias mirrors='sudo reflector --verbose --latest 200 --number 5 --sort rate --save /etc/pacman.d/mirrorlist'
alias dotf='/usr/bin/git --git-dir=/home/ffs/dotf/ --work-tree=/home/ffs'
