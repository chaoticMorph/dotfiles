# # If you come from bash you might have to change your $PATH.
# # export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# # Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# # Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"



# # Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# # Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
# zinit snippet OMZP::fedora
zinit snippet OMZP::aws
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found

# # Load completions
autoload -Uz compinit && compinit

echo 'eval "$(atuin init zsh)"' >> ~/.zshrc

# zinit cdreplay -q


# # Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region
# bindkey '^t' launch_tmux


# # History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# # Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# # Aliases
alias ls='ls --color'
alias vim='nvim'
alias cls='clear'

# # Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

alias cls='clear'
alias sdi='sudo dnf install'
alias pc='sudo pacman -S'
alias tkill='tmux kill-server'
alias chdev='cd /home/ayush/Documents/My\ Things/Development'
alias isc='code $(fzf -m --preview="bat --color=always {}")'
alias ls='exa --tree --level=1 --icons --sort=Name'
alias find='atuin search'


# # eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/base.json)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# eval "$(tmux ls)"

tmux ls

tmux a -t second

# tty-clock

figlet "Fedora" | lolcat

# fortune | cowsay -f  tux
# # Start tmux automatically if not already inside a tmux session
# if command -v tmux &> /dev/null; then
#     if [[ ! $TERM =~ screen ]]; then
#         if [[ -z $TMUX ]]; then
#             tmux attach-session -t default || tmux new-session -s default
#         fi
#     fi
# fi


eval $(thefuck --alias)
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
eval "$(atuin init zsh)"
