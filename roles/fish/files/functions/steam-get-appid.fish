function steam-get-appid
    # Grep appmanifest files in all Steam libraries for games with $arg in name

    grep -Ei "name.*$argv[1]" $steam_dirs \
    /opt/Steam/steamapps/appmanifest_*.acf \
    ~/.steam/steam/steamapps/appmanifest_*.acf \
    /mnt/HDD/Steam/steamapps/appmanifest_*.acf
end
