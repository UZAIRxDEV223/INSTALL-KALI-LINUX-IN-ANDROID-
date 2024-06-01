#!/bin/bash
RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
ENDCOLOR="\e[0m"
echo -e "${GREEN}INSTALL ${RED}KALI"
echo -e "${BLUE}Script is starting..."
echo -e "${GREEN}BY UZAIRxDEV223"
sleep 3
echo -e "${GREEN}Script has been started."

# Run update and upgrade
apt update && apt upgrade

# Check if wget is installed
if command -v wget &> /dev/null
then
    echo -e "${GREEN}wget is already installed.${ENDCOLOR}"
else
    echo -e "${RED}wget is not installed. Installing wget...${ENDCOLOR}"
    apt install wget
    echo -e "${GREEN}wget has been installed${ENDCOLOR}."
fi

# Run the specified wget command
echo -e "${GREEN}Installing Kali installation script"
wget -O install-nethunter-termux https://offs.ec/2MceZWr

# Give execute permissions to the downloaded script
echo -e "${BLUE}Executing Kali script"
chmod +x install-nethunter-termux

echo -e "${GREEN}Running Kali Install script${ENDCOLOR}"
./install-nethunter-termux

echo -e "${GREEN}DELETING SCRIPT"
sleep 3 
echo -e "${GREEN} ---DONE---"
