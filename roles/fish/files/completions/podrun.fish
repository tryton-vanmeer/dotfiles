# Images
set -l images fedora ubuntu centos archlinux alpine

# Tags
set -l fedora 33 34 rawhide
set -l ubuntu 20.04 20.10
set -l centos 7 8
set -l archlinux base base-devel

# First argument: DISTRO
complete -f -c podrun -n "not __fish_seen_subcommand_from $images" -a "$images"

# Optional second argument for distro version.
complete -f -c podrun -n "__fish_seen_subcommand_from fedora" -a "$fedora"
complete -f -c podrun -n "__fish_seen_subcommand_from ubuntu" -a "$ubuntu"
complete -f -c podrun -n "__fish_seen_subcommand_from centos " -a "$centos"
complete -f -c podrun -n "__fish_seen_subcommand_from archlinux" -a "$archlinux"
