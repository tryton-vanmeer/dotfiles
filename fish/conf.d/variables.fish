set -U fish_user_paths ~/.local/bin $fish_user_paths
set -U fish_emoji_width 2

# Default Programs
set -x BROWSER /usr/bin/firefox
set -x EDITOR /usr/bin/nano

# XDG
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"

# Dotfiles
set -x XAUTHORITY "$XDG_RUNTIME_DIR/Xauthority"
set -x WINEPREFIX "$XDG_DATA_HOME/wineprefixes/default"
set -x WGETRC "$XDG_CONFIG_HOME/wgetrc"
