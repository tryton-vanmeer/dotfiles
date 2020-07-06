#!/usr/bin/env sh

run_ansible()
{
    if [ -z "$1" ]; then
        ansible-playbook dotfiles.yml --ask-become-pass --extra-vars "localuser=$USER"
    else
        ansible-playbook dotfiles.yml --ask-become-pass --extra-vars "localuser=$USER" "$1"
    fi
}

if [ -z "$1" ]; then
    run_ansible
else
    run_ansible "--tags=$1"
fi