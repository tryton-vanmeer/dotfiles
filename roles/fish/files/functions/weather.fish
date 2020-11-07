function weather -d "curl weather from wttr.in"
    if string match "$argv" "2" > /dev/null
        set wttr_version "v2"
    else if string match "$argv" "3" > /dev/null
        set wttr_version "v3"
    else
        set wttr_version "v1"
    end

    curl -s $wttr_version.wttr.in/Ottawa
end
