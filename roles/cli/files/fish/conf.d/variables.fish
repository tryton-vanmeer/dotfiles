set -U fish_emoji_width 2
set -U fish_features qmark-noglob

# Default Programs
set -x BROWSER /usr/bin/firefox
set -x EDITOR /usr/bin/micro

# App Settings
set -x MICRO_TRUECOLOR 1
set -x DOTNET_CLI_TELEMETRY_OPTOUT "1"

# XDG
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"

# Dotfiles
set -x ICEAUTHORITY "$XDG_CACHE_HOME/ICEauthority"
set -x XAUTHORITY "$XDG_RUNTIME_DIR/Xauthority"
set -x WGETRC "$XDG_CONFIG_HOME/wgetrc"
set -x LESSHISTFILE "-"
set -x ANDROID_SDK_HOME "$XDG_CONFIG_HOME/android"
set -x ADB_VENDOR_KEYS "$XDG_CONFIG_HOME/android"
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -x NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -x HISTFILE "$XDG_DATA_HOME/bash/history"
set -x CCACHE_DIR "$XDG_CACHE_HOME/ccache"
set -x PYLINTHOME "$XDG_CACHE_HOME/pylint"
set -x NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"
set -x PSQL_HISTORY "$XDG_CACHE_HOME/pg/psql_history"
set -x SQLITE_HISTORY "$XDG_DATA_HOME/sqlite_history"
set -x JULIA_DEPOT_PATH "$XDG_DATA_HOME/julia"
set -x GRADLE_USER_HOME "$XDG_DATA_HOME/gradle"
set -x TS3_CONFIG_DIR "$XDG_CONFIG_HOME/ts3client"
set -x GOPATH "$XDG_DATA_HOME/go"
set -x TEXMFHOME "$XDG_CONFIG_HOME/texmf"

