function qmk_make -d "Compile QMK firmware"
    set QMK_PATH "/home/tryton/Code/qmk_firmware"

    if string match $QMK_PATH (pwd) > /dev/null
        CFLAGS="$CFLAGS -fcommon" make -j12 massdrop/alt:tryton-vanmeer
    else
        set_color red
        echo "Not in qmk_firmware"
        set_color normal
    end
end
