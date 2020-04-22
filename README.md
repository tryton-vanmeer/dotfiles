# Dotfiles

Dotfiles and system configuration managed by Ansible.

Execute `bootstrap.sh` to run the playbook.

You can also specify the role(s) to run instead of all of them.

`./bootstrap.sh <role>`

## Roles

### bat

Configs for [bat](https://github.com/sharkdp/bat).

### fish

Configs for [fish shell](https://github.com/fish-shell/fish-shell).

### git

Configs for Git.

### groups

Add the user to various groups.

### hide_apps

Symlinks a .desktop file to ~/.local/share/applications to hide
multiple apps from the menu.

### nano

Configs for nano.

### ncspot

Configs for [ncspot](https://github.com/hrkfdn/ncspot).

### packages

The packages to install based on Distro or Host.

Currently the supported Distros are:

+ Arch Linux (including AUR packages)

And Flatpak packages are installed on all systems.

### pacman

Configs for pacman, enabling repos, and adding pacman hooks.

### starship

Configs for [starship](https://github.com/starship/starship).

### sudo

Enable sudo access for users in the sudo group.

### systemd

Services to enable based on Distro or Host.

Currently the supported Distros are:

+ Arch Linux

### tilix

Configs for [tilix](https://github.com/gnunn1/tilix)

### wget

Configs for wget.