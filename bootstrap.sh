#!/usr/bin/env sh

ansible-playbook -i .inventory dotfiles.yml --ask-become-pass --extra-vars "localuser=$USER"