#!/usr/bin/env sh

ansible-playbook -i .inventory dotfiles.yml -e "localuser=$USER"