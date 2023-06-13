#!/bin/bash

# Function to update apt package manager
update_apt() {
    sudo apt update && sudo apt upgrade
}

# Function to update pacman package manager
update_pacman() {
    sudo pacman -Syu
    yay -Syu
}

# Check if apt command exists
if command -v apt &> /dev/null; then
    update_apt
# Check if pacman command exists
elif command -v pacman &> /dev/null; then
    update_pacman
else
    echo -e "\e[1;31m No supported package manager (apt or pacman) found on your system. \e[0m"
fi
echo -e "\e[1;32m [!] Packages have been Updated \e[0m";
# Made By Rohan Sharma
