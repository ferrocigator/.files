#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias pac='sudo pacman'				# pacman
alias pacs='sudo pacman -S'			# install
alias pacsy='sudo pacman -Syu'			# update
alias pacr='sudo pacman -Rsn'			# remove
alias pacss='sudo pacman -Ss'			# search
alias paci='sudo pacman -Si'			# info
alias pacq='sudo pacman -Qdt'			# list orphan
alias pacro='sudo pacman -Rsn $(pacman -Qqdt)'	# remove orphan
alias pacc='sudo pacman -Sc'			# clean cache
alias paclf='sudo pacman -Ql'			# list files
alias pacqe='sudo pacman -Qe'			# list pkg
alias mirror='sudo reflector --verbose --latest 200 --number 5 --sort rate --save /etc/pacman.d/mirrorlist'

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\]>_ \[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]:\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
