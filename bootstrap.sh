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

ansible-playbook dotfiles.yml --ask-become-pass --extra-vars "localuser=$USER" "$tags"