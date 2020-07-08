#
# Completions for the dnf command
#

source /usr/share/fish/completions/dnf.fish

function __dnf_list_installed_packages
    dnf repoquery --cacheonly "$cur*" --qf "%{NAME}" --installed
end

function __dnf_list_available_packages
    if type -q sqlite3
        sqlite3 /var/cache/dnf/packages.db "SELECT pkg FROM available WHERE pkg LIKE \"$cur%\"" 2>/dev/null | string replace -r ".fc.*" "" | string replace -r "\-[0-9].*" ""
    end
end

function __dnf_list_transactions
    if type -q sqlite3
        sqlite3 /var/lib/dnf/history.sqlite "SELECT id, cmdline FROM trans" 2>/dev/null | string replace "|" \t
    end
end
