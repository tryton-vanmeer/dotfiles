function qmk_flash -d "Flash QMK firmware"
    set QMK_PATH "/home/tryton-vanmeer/Code/qmk_firmware"

    if string match $QMK_PATH (pwd) > /dev/null
        sudo mdloader --first --download massdrop_alt_tryton-vanmeer.bin --restart
    else
        set_color red
        echo "Not in qmk_firmware"
        set_color normal
    end
end
