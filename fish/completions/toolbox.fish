#
# Completions for the toolbox command
#

function __toolbox_list_images
    toolbox list --images | cut -f3 -d " " | sed -e '1d'
end

# Create
complete -c toolbox -n "__fish_use_subcommand" -xa create -d "Create a new toolbox container"
complete -c toolbox -n "__fish_seen_subcommand_from create" -l candidate-registry -d "Pull  the  base  image  from candidate-registry.fedoraproject.org"
complete -c toolbox -n "__fish_seen_subcommand_from create" -s c -l container -d "Assign a different NAME to the toolbox container"
complete -c toolbox -n "__fish_seen_subcommand_from create" -s i -l image -d "Change the NAME of the base image used to create the toolbox container" -xa "(__toolbox_list_images)"
complete -c toolbox -n "__fish_seen_subcommand_from create" -s r -l release -d "Create a toolbox container for a different operating system RELEASE than the host"

# Enter
complete -c toolbox -n "__fish_use_subcommand" -xa enter -d "Enter a toolbox container for interactive use"

# Help
complete -c toolbox -n "__fish_use_subcommand" -xa help -d "Display help information about Toolbox"

# List
complete -c toolbox -n "__fish_use_subcommand" -xa list -d "List existing toolbox containers and images"

# Reset
complete -c toolbox -n "__fish_use_subcommand" -xa reset -d "Remove all local podman (and toolbox) state"

# RM
complete -c toolbox -n "__fish_use_subcommand" -xa rm -d "Remove one or more toolbox containers"

# RMI
complete -c toolbox -n "__fish_use_subcommand" -xa rmi -d "Remove one or more toolbox images"

# Run
complete -c toolbox -n "__fish_use_subcommand" -xa run -d "Run a command in an existing toolbox container"