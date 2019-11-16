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
