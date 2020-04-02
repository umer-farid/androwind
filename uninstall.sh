#!/bin/bash
clear
echo "
██╗   ██╗███╗   ██╗██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗
██║   ██║████╗  ██║██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
██║   ██║██╔██╗ ██║██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
██║   ██║██║╚██╗██║██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
╚██████╔╝██║ ╚████║██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
 ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝

";

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/androwind"
    BIN_DIR="$PREFIX/bin/"
    BASH_PATH="$PREFIX/bin/bash"
    TERMUX=true

    pkg install -y git python3
    pkg install python3-pip
elif [ "$(uname)" = "Darwin" ]; then
    INSTALL_DIR="/usr/local/androwind"
    BIN_DIR="/usr/local/bin"
    BASH_PATH="/bin/bash"
    TERMUX=false
else
    INSTALL_DIR="$HOME/.androwind"
    BIN_DIR="/usr/local/bin"
    BASH_PATH="/bin/bash"
    TERMUX=false

fi

echo "[✔] Checking directories...";

if [ -d "$INSTALL_DIR" ]; then

    sudo rm -rf "$INSTALL_DIR"

    sudo rm "$BIN_DIR/androwind"

    sudo rm -rf /root/.ngrok2/

    echo "[✔] Uninstalled Successfully!"

    else

        echo "[✘] Installation not found! ";

        echo "[✘] Failed! ";
fi


#echo "[✔] Cleaning up old directories...";

if [ -d "$ETC_DIR/MrRobot-hub" ]; then

    echo "$DIR_FOUND_TEXT"

    if [ "$TERMUX" = true ]; then

        rm -rf "$ETC_DIR/MrRobot-hub"

    else

        sudo rm -rf "$ETC_DIR/MrRobot-hub"

    fi

fi

