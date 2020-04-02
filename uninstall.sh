#!/bin/bash
clear
echo -e "\e[91m
██╗   ██╗███╗   ██╗██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗
██║   ██║████╗  ██║██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗
██║   ██║██╔██╗ ██║██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝
██║   ██║██║╚██╗██║██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗
╚██████╔╝██║ ╚████║██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║
 ╚═════╝ ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝
                                                             \e[97m\e[92mEmail: umerfarid53@gmail.com
                                                             Facebook: facebook.com/cybernetics.me


\e[97m";

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

echo -e "[\e[32m✔\e[97m] Checking directories...";

if [ -d "$INSTALL_DIR" ]; then

    sudo rm -rf "$INSTALL_DIR"

     echo -e "[\e[32m✔\e[97m] Androwind removed from: $INSTALL_DIR"

    sudo rm "$BIN_DIR/androwind"

     echo -e "[\e[32m✔\e[97m] Androwind removed from: $BIN_DIR!"

    sudo rm -rf /root/.ngrok2/

     echo -e "[\e[32m✔\e[97m] Ngrok configurations removed!"

    sudo rm -rf /usr/local/bin/ngrok

    echo -e "[\e[32m✔\e[97m] Ngrok removed!"


else

    echo -e "[\e[5m\e[91m✘\e[97m\e[25m] Installation not found!";
fi


echo -e "[\e[32m✔\e[97m] Cleaning up old directories...\n";

if [ -d "$ETC_DIR/MrRobot-hub" ]; then

    echo "$DIR_FOUND_TEXT"

    if [ "$TERMUX" = true ]; then

        rm -rf "$ETC_DIR/MrRobot-hub"

    else

        sudo rm -rf "$ETC_DIR/MrRobot-hub"

    fi
else
     echo -e "[\e[32m✔\e[97m] Uninstalled Successfully!"
fi

