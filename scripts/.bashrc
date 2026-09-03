#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
cd
#fastfetch

alias grep='grep --color=auto'
alias i3='startx'
alias update='paru -Syyu'
alias gnome='sudo systemctl start gdm'
alias fastfetch='echo && fastfetch'
alias ff='clear && fastfetch'
alias cls='clear && cd'
alias bc='bluetoothctl'
alias ls='eza --icons=auto'
alias ll='eza -l --icons=auto'
eval "$(zoxide init bash)"
eval "$(starship init bash)"

export PATH="$HOME/.local/bin:$PATH"
