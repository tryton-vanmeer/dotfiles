function ytdl -w "youtube-dl"
    youtube-dl -f bestvideo+bestaudio/best \
    -o '%(uploader)s - %(title)s.%(ext)s' \
    "$argv[1]"
end