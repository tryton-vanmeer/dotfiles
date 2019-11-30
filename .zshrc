#  _________  _   _ ____   ____ 
# |__  / ___|| | | |  _ \ / ___|
#   / /\___ \| |_| | |_) | |
#  / /_ ___) |  _  |  _ <| |___ 
# /____|____/|_| |_|_| \_\\____|
#

# History
HISTFILE="$HOME/.cache/.zsh_history"
HISTSIZE=1000
SAVEHIST=1000
# Ignore duplicate in history.
setopt hist_ignore_dups

# Variables
export PATH="${PATH}:${HOME}/.local/bin"
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nano

setopt COMPLETE_ALIASES
setopt +o nomatch
unsetopt beep
bindkey -e

# Keep history of `cd` with `pushd` and make `cd -<TAB> work.
DIRSTACKSIZE=16
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus

# Completion
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
zstyle ':completion:*' menu select

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"


# Aliases
alias proton='STEAM_COMPAT_DATA_PATH=~/.proton/ /home/tryton-vanmeer/.steam/steamapps/common/Proton\ 4.2/proton run'
alias ls='ls --color=auto --group-directories-first -v'
alias la='ls -a'
alias cdg='cd $(git rev-parse --show-toplevel)'
alias weather='curl http://wttr.in/Ottawa?1n'
alias py='python3 -ic "from math import *"'
alias ranfile='ls | sort -R | tail -n1'
alias clock='tty-clock -ct -C5'
alias df='df -h -x squashfs'
alias 🐈="echo meow"
alias yay='yay -a'
alias ip='ip -c'

# Functions
slash-backward-kill-word()
{
    local WORDCHARS="${WORDCHARS:s@/@}"
    zle backward-kill-word
}

get()
{
    local filename=$(basename -- "$1")
    local extension="${filename##*.}"
    filename="${filename%.*}"
    
    wget $1 -O "$2.$extension"
}

# Keybinds
zle -N slash-backward-kill-word
bindkey '\e^?' slash-backward-kill-word
