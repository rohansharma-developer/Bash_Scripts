#!/bin/bash

# Function to update apt package manager
update_apt() {
    sudo apt update && sudo apt upgrade;
    sudo apt install flatpak;
}

# Function to update pacman package manager
update_pacman() {
    sudo pacman -Syu
    sudo yay -Syu
    sudo pacman -S flatpak
}

# Check if apt command exists
if command -v apt &> /dev/null; then
    update_apt
    sudo apt install flatpak
# Check if pacman command exists
elif command -v pacman &> /dev/null; then
    update_pacman
else
    echo "No supported package manager (apt or pacman) found on your system."
fi
sudo flatpak install com.mattjakeman.ExtensionManager;
sudo flatpak install com.visualstudio.code;
sudo flatpak install io.github.mimbrero.WhatsAppDesktop;
sudo flatpak install com.discordapp.Discord;
sudo flatpak install com.github.wwmm.easyeffects;
sudo flatpak install io.gitlab.adhami3310.Impression;
sudo flatpak install com.brave.Browser;
read -p "[!] Do you want to Gaming Dependencies and apps? (y/n): " choice

# Convert the choice to lowercase for case-insensitive comparison
choice=${choice,,}

if [[ $choice == "y" ]]; then
sudo flatpak install com.valvesoftware.Steam;
sudo flatpak install net.lutris.Lutris;
read -p "[!] Do you want to install Graphics Drivers for gaming? (y/n): " choice2

# Convert the choice to lowercase for case-insensitive comparison
choice2=${choice2,,}

if [[ $choice2 == "y" ]]; then
s/ppa && sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y nvidia-driver-515 libvulkan1 libvulkan1:i386
else
    echo "Commands not executed."
fi
else
    echo "Gaming Category Skipped."
fi
echo "[+] All packages have been Installed";
