function podrun -d "Run container interactively and delete after"
    if count $argv > /dev/null
        if test $argv[2]
            podman run -it --rm $argv[1]:$argv[2]
        else
            podman run -it --rm $argv[1]
        end
    else
        echo "podrun DISTRO <VERSION>"
    end
end
