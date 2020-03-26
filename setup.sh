#!/usr/bin/bash

exec 2>> /tmp/setup.log

NC="\033[0m"
RED="\033[0;31m"
GREEN="\033[0;32m"
PURPLE="\033[0;35m"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function title()
{
    echo -e "${PURPLE}----- ${1} -----${NC}"
    >&2 echo "----- ${1} -----"
}

function subtitle()
{
    echo -n "${1}..."
    >&2 echo "${1}..."
}

function checkmark()
{
    if [ "$?" -eq 0 ]; then
        echo -e " ${GREEN}✓${NC}"
    else
        echo -e " ${RED}✗${NC}"
    fi
}

function setup_bat()
{
    title "Bat"

    subtitle "Creating folders"
    mkdir -p ~/.config/bat/themes
    checkmark

    subtitle "Symlinking config"
    ln -s "${DIR}/bat/config" ~/.config/bat/
    checkmark

    subtitle "Symlinking themes"
    ln -s "${DIR}/bat/themes/Dracula.tmTheme" ~/.config/bat/themes/
    checkmark

    subtitle "Building cache"
    bat cache --build 1>/dev/null
    checkmark
}

function setup_fish()
{
    title "Fish"

    subtitle "Creating folders"
    mkdir -p ~/.config/fish/completions
    mkdir -p ~/.config/fish/conf.d
    mkdir -p ~/.config/fish/functions
    checkmark

    subtitle "Symlinking completions"
    ln -s "${DIR}/fish/completions"/* ~/.config/fish/completions
    checkmark

    subtitle "Symlinking configs"
    ln -s "${DIR}/fish/conf.d"/* ~/.config/fish/conf.d
    checkmark

    subtitle "Symlinking functions"
    ln -s "${DIR}/fish/functions"/* ~/.config/fish/functions
    checkmark
}

function setup_git()
{
    title "Git"

    subtitle "Symlinking .gitconfig"
    ln -s "${DIR}/git/gitconfig" ~/.gitconfig
    checkmark

    subtitle "Symlinking .gitignore"
    ln -s "${DIR}/git/gitignore" ~/.gitignore
    checkmark
}

date > /tmp/setup.log
setup_bat
setup_fish
setup_git
