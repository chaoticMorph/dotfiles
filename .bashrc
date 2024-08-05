# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


alias cls='clear'
alias sdi='sudo dnf install'
alias pc='sudo pacman -S'
alias cdd='cd /home/ayush/Documents/My\ Things/Development'
alias isc='code $(fzf -m --preview="bat --color=always {}")'
alias ls='exa'
# PS1='\[\033[01;32m\] \[\033[01;32m\]\u@terminal \[\033[01;36m\]\w\[\033[00m\] \> '



##-----------------------------------------------------
## synth-shell-greeter.sh
# if [ -f /home/ayush/.config/synth-shell/synth-shell-greeter.sh ] && [ -n "$( echo $- | grep i )" ]; then
# 	source /home/ayush/.config/synth-shell/synth-shell-greeter.sh
# fi

##-----------------------------------------------------
# synth-shell-prompt.sh
if [ -f /home/ayush/.config/synth-shell/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ayush/.config/synth-shell/synth-shell-prompt.sh
fi

##-----------------------------------------------------
# better-ls
if [ -f /home/ayush/.config/synth-shell/better-ls.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ayush/.config/synth-shell/better-ls.sh
fi

##-----------------------------------------------------
# alias
if [ -f /home/ayush/.config/synth-shell/alias.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ayush/.config/synth-shell/alias.sh
fi

##-----------------------------------------------------
# better-history
if [ -f /home/ayush/.config/synth-shell/better-history.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /home/ayush/.config/synth-shell/better-history.sh
fi
. ~/.config/synth-shell/synth-shell-prompt.sh


eval "$(fzf --bash)"


#:fortune | cowsay -f  tux
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

tmux
eval "$(zoxide init  bash)"


