# bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#Aliases
alias vi="vim"
alias ls="ls -FG"

# Machine local definitions.
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi

