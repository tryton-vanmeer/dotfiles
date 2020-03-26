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

    echo -n "Creating folders..."
    mkdir -p ~/.config/bat/themes
    checkmark

    echo -n "Symlinking config..."
    ln -s "${DIR}/bat/config" ~/.config/bat/
    checkmark

    echo -n "Symlinking themes..."
    ln -s "${DIR}/bat/themes/Dracula.tmTheme" ~/.config/bat/themes/
    checkmark

    echo -n "Building cache..."
    bat cache --build 1>/dev/null
    checkmark
}

setup_bat
