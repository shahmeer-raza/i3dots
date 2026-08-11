#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
cd
#fastfetch

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias i3='startx'
alias update='paru -Syu'
alias gnome='sudo systemctl start gdm'
alias fastfetch='echo && fastfetch'
alias ff='clear && fastfetch'
alias cls='clear && cd'
PS1='\n\033[33m$(if [ "$PWD" = "$HOME" ]; then echo "   > "; else echo "   $(echo $PWD | sed "s|$HOME|~|")/ > "; fi)\033[0m '
export PATH="$HOME/.local/bin:$PATH"
