function ranfile -d "Select a random file in the current directory"
    ls | sort -R | tail -n1
end
