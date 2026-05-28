#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
fastfetch

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias i3='startx'
alias update='sudo pacman -Syu'
PS1='\n      \[\e[38;5;39m\][ \w ]~ \[\e[0m '
