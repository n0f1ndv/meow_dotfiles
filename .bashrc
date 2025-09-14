#
# ~/.bashrc
#

echo $(fortune) | cowsay -r | lolcat

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

force_color_prompt=yes

PS1='\[\e[38;5;63;1m\]\u\[\e[38;5;219m\]@\[\e[38;5;63m\]\H\[\e[0m\](\[\e[38;5;219;1;3m\]\W\[\e[0m\])\[\e[38;5;63;1m\]\[\e[0m\]'
