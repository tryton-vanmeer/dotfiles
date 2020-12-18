function hugo-serve -d "Run Hugo server"
    hugo serve --baseURL https://hugo.lh --appendPort=false --liveReloadPort=443 --buildDrafts
end
