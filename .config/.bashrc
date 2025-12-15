#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliaseisi
alias vim=nvim
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Prompt
PS1='[\u@\h \W]\$ '

# Rust
# . "$HOME/.cargo/env"

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# PATH
export PATH="$HOME/.local/bin:$PATH"

# Safe terminal type
export TERM=xterm-256color
# Only run wal if in a normal interactive shell, not inside tmux
wal -n -R -f /home/I40S/.config/wal/current.json >/dev/null 2>&1

# Neofetch last so colors already applied
neofetch

eval "$(starship init bash)"
