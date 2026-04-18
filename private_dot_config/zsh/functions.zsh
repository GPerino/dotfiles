mkcd() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: mkcd DIRECTORY"
        return 1
    fi
    mkdir -p "$1" && cd "$1"
}

check_dir_exists() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: check_dir_exists DIRECTORY"
        return 1
    fi
    [ -d "$1" ] && echo "Le répertoire existe"
}


connect_rdp() {
    if [ "$#" -lt 2 ]; then
        echo "Usage: connect_rdp <ip_address> <username>"
        return 1
    fi

    local ip="$1"
    local username="$2"

    xfreerdp /v:"$ip" /u:"$username" /smart-sizing
}
