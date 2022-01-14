function fd-ext -d "list of file extensions recursivly in current directory"
    fd --type file | \
    perl -ne 'print $1 if m/\\.([^.\\/]+)$/' | \
    sort -u
end
