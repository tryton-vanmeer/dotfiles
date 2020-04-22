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

### hide_apps


### nano

Configs for nano.

### ncspot

Configs for [ncspot](https://github.com/hrkfdn/ncspot).

### packages

The packages to install based on Distro or Host.

Currently the supported Distros are:

+ Arch Linux (including AUR packages)

And Flatpak packages are installed on all systems.

### starship

Configs for [starship](https://github.com/starship/starship).

### systemd

Services to enable based on Distro or Host.

Currently the supported Distros are:

+ Arch Linux

### tilix

Configs for [tilix](https://github.com/gnunn1/tilix)

### wget

Configs for wget.