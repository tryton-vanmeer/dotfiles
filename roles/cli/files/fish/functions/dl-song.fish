function dl-song -d "yt-dlp alias to add metadata and embed thumbnail to songs"
    yt-dlp --add-metadata --embed-thumbnail $argv
end
