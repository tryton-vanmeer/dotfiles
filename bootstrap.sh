#!/usr/bin/env sh

ansible-playbook -i .inventory -K dotfiles.yml -e "localuser=$USER"