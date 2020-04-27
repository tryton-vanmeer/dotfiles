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
set -x LESSHISTFILE "-"
set -x _JAVA_OPTIONS "-"
set -x ANDROID_SDK_HOME "$XDG_CONFIG_HOME/android"
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npmrc"
