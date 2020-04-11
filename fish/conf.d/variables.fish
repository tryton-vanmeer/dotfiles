set -U fish_user_paths ~/.local/bin $fish_user_paths
set -U fish_emoji_width 2

set -x BROWSER /usr/bin/firefox
set -x EDITOR /usr/bin/nano

set -x XDG_DATA_HOME "$HOME"/.local/share

set -x XAUTHORITY "$XDG_RUNTIME_DIR"/Xauthority
set -x WINEPREFIX "$XDG_DATA_HOME"/wineprefixes/default
