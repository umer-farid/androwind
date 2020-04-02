clear
echo -e "\e[91m

 █████╗ ███╗   ██╗██████╗ ██████╗  ██████╗ ██╗    ██╗██╗███╗   ██╗██████╗
██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔═══██╗██║    ██║██║████╗  ██║██╔══██╗
███████║██╔██╗ ██║██║  ██║██████╔╝██║   ██║██║ █╗ ██║██║██╔██╗ ██║██║  ██║
██╔══██║██║╚██╗██║██║  ██║██╔══██╗██║   ██║██║███╗██║██║██║╚██╗██║██║  ██║
██║  ██║██║ ╚████║██████╔╝██║  ██║╚██████╔╝╚███╔███╔╝██║██║ ╚████║██████╔╝
╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝
                                     \e[97m\e[92m         Email: umerfarid53@gmail.com
                                              Facebook: facebook.com/cybernetics.me

\e[97m"

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
    BIN_DIR="/usr/local/bin/"
    BASH_PATH="/bin/bash"
    TERMUX=false

    sudo apt update; sudo apt-get install -y git python3; sudo apt install python3-pip
fi

echo -e "\n[\e[32m✔\e[97m] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo -e "\n[\e[5m\e[32m◉\e[97m\e[25m] A directory androwind was found! Do you want to replace it? [Y/n]:" ;
    read -r mama
    if [ "$mama" = "y" ]; then
        if [ "$TERMUX" = true ]; then
            rm -rf "$INSTALL_DIR"
            rm -rf "$BIN_DIR/androwind*"
        else
            sudo rm -rf "$INSTALL_DIR"
            sudo rm -rf "$BIN_DIR/androwind*"
        fi
    else
        echo -e "\n[\e[91m✘\e[97m] If you want to install you must remove previous installations [✘] ";
        echo -e "[\e[91m✘\e[97m] Installation failed! [✘] \n";
        exit
    fi
fi
echo -e "[\e[32m✔\e[97m] Cleaning up old directories...";
if [ -d "$ETC_DIR/MrRobot-hub" ]; then
    echo "$DIR_FOUND_TEXT"
    if [ "$TERMUX" = true ]; then
        rm -rf "$ETC_DIR/MrRobot-hub"
    else
        sudo rm -rf "$ETC_DIR/MrRobot-hub"
    fi
fi

echo -e "[\e[5m\e[32m✔\e[97m\e[25m] Installing ...";
echo "";
git clone --depth=1 https://github.com/MrRobot-hub/androwind "$INSTALL_DIR";
echo "#!$BASH_PATH
python $INSTALL_DIR/androwind.py" "${1+"$@"}" > "$INSTALL_DIR/androwind";
chmod +x "$INSTALL_DIR/androwind";
if [ "$TERMUX" = true ]; then
    cp "$INSTALL_DIR/androwind" "$BIN_DIR"
    cp "$INSTALL_DIR/androwind.cfg" "$BIN_DIR"
else
    sudo cp "$INSTALL_DIR/androwind" "$BIN_DIR"
    sudo cp "$INSTALL_DIR/androwind.cfg" "$BIN_DIR"
fi
rm "$INSTALL_DIR/androwind";


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo -e "\n[\e[32m✔\e[97m] Tool installed successfully!";
    echo "";
    echo "[✔]====================================================================[✔]";
    echo -e "[\e[32m✔\e[97m]      All is done!! You can execute tool by typing androwind !       [✔]";
    echo "[✔]====================================================================[✔]";
    echo "";
else
    echo -e "\n[\e[5m\e[91m✘\e[97m\e[25m] Installation failed! [✘] ";
    exit
fi
