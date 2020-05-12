#!/usr/bin/env bash

join()
{
    IFS="$1"
    shift
    echo "$*"
}

if [[ $# -gt 0 ]]; then
    tags="--tags=$(join , "$@")"
fi

if [[ -z ${tags+x} ]]; then
    ansible-playbook dotfiles.yml --ask-become-pass --extra-vars "localuser=$USER"
else
    ansible-playbook dotfiles.yml --ask-become-pass --extra-vars "localuser=$USER" "$tags"
fi