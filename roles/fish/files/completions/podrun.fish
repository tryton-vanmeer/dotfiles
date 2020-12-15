set -l distros fedora ubuntu centos archlinux

# First argument: DISTRO
complete -f -c podrun -n "not __fish_seen_subcommand_from $distros" -a "$distros"