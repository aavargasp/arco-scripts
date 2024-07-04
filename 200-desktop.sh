#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.arcolinux.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

##################################################################################################################

if [ "$DEBUG" = true ]; then
    echo
    echo "------------------------------------------------------------"
    echo "Running $(basename $0)"
    echo "------------------------------------------------------------"
    echo
    read -n 1 -s -r -p "Debug mode is on. Press any key to continue..."
    echo
fi

##################################################################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Display Manager"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed sddm
sudo pacman -S --noconfirm --needed arcolinux-sddm-simplicity-git

tput setaf 5;
echo "################################################################"
echo "Enabling sddm as display manager"
echo "################################################################"
echo;tput sgr0
sudo systemctl enable sddm.service -f

##################################################################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Desktop"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed arcolinux-root-git
sudo pacman -S --noconfirm --needed archlinux-logout-git
sudo pacman -S --noconfirm --needed arcolinux-config-all-desktops-git
sudo pacman -S --noconfirm --needed arcolinux-dconf-all-desktops-git
sudo pacman -S --noconfirm --needed arcolinux-keyring
sudo pacman -S --noconfirm --needed arcolinux-powermenu-git
sudo pacman -S --noconfirm --needed arcolinux-mirrorlist-git

###############################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Sound"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed pavucontrol
sudo pacman -S --noconfirm --needed 
sudo pacman -S --noconfirm --needed pipewire-alsa
sudo pacman -S --noconfirm --needed pipewire-jack
sudo pacman -S --noconfirm --needed pipewire-zeroconf
sudo pacman -S --noconfirm --needed alsa-utils
sudo pacman -S --noconfirm --needed alsa-plugins
sudo pacman -S --noconfirm --needed alsa-lib
sudo pacman -S --noconfirm --needed alsa-firmware
sudo pacman -S --noconfirm --needed gstreamer
sudo pacman -S --noconfirm --needed gst-plugins-good
sudo pacman -S --noconfirm --needed gst-plugins-bad
sudo pacman -S --noconfirm --needed gst-plugins-base
sudo pacman -S --noconfirm --needed gst-plugins-ugly

###############################################################################

echo
tput setaf 2
echo "################################################################"
echo "################### Video"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed mesa
sudo pacman -S --noconfirm --needed nvidia-dkms
sudo pacman -S --noconfirm --needed nvidia-settings
sudo pacman -S --noconfirm --needed nvidia-utils

###############################################################################


echo
tput setaf 6
echo "######################################################"
echo "###################  $(basename $0) done"
echo "######################################################"
tput sgr0
echo