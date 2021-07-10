function lsdu -d "du with only the current folder; human readable and sorted"
    du -d 1 -h 2>/dev/null | sort -h
end
