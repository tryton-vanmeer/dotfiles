#!/usr/bin/env sh

run_init()
{
    os_release=$(grep "NAME=" /etc/os-release)

    case "$os_release" in
    *"Arch Linux"*)
        sudo pacman -S ansible python-psutil
        ;;
    *"Fedora"*)
        sudo dnf install ansible python3-psutil
        ;;
    esac

    git submodule update --init --recursive
}

run_ansible()
{
    if [ -z "$1" ]; then
        ansible-playbook dotfiles.yaml --ask-become-pass --extra-vars "localuser=$USER"
    else
        ansible-playbook dotfiles.yaml --ask-become-pass --extra-vars "localuser=$USER" "$1"
    fi
}

while test -n "$1"; do
    case "$1" in
    "init")
        run_init
        exit
        ;;
    *)
        run_ansible "--tags=$1"
        exit
        ;;
    esac
done

run_ansible