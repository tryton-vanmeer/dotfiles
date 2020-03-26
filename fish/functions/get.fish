function get
    set filename (basename -- $argv[1])
    set extension (echo $filename | cut -f 2 -d '.')

    wget $argv[1] -O $argv[2].$extension
end