#!/bin/bash
# Script for update Androwind
clear
echo -e "\e[91m

██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██████╗
██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ██████╔╝
██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗
╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██║  ██║
 ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
        \e[97m\e[92m                      Email: umerfarid53@gmail.com
                              Facebook: facebook.com/cybernetics.me

\e[97m"

echo -e "[\e[5m\e[32m...\e[97m\e[25m] Updating, Please wait!";
git clone --depth=1 https://github.com/MrRobot-hub/androwind.git
sudo chmod +x androwind/install.sh
sudo bash androwind/install.sh
