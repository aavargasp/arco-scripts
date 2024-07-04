#!/bin/bash
#set -e
##################################################################################################################
# Author    : Erik Dubois
# Website   : https://www.erikdubois.be
# Website   : https://www.alci.online
# Website   : https://www.ariser.eu
# Website   : https://www.arcolinux.info
# Website   : https://www.arcolinux.com
# Website   : https://www.arcolinuxd.com
# Website   : https://www.arcolinuxb.com
# Website   : https://www.arcolinuxiso.com
# Website   : https://www.arcolinuxforum.com
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

echo
tput setaf 3
echo "######################################################"
echo "################### Remove software for all"
echo "######################################################"
tput sgr0
echo


sudo pacman -Rs --noconfirm nomacs
sudo pacman -Rs --noconfirm hardinfo-gtk3
sudo pacman -Rs --noconfirm yay-git
sudo pacman -Rs --noconfirm broadcom-wl-dkms
sudo pacman -Rs --noconfirm rtl8821cu-morrownr-dkms-git
sudo pacman -Rs --noconfirm archinstall
sudo pacman -Rs --noconfirm pragha
sudo pacman -Rs --noconfirm lftp


sudo pacman -Rs --noconfirm xf86-video-amdgpu 
sudo pacman -Rs --noconfirm xf86-video-fbdev
sudo pacman -Rs --noconfirm xf86-video-openchrome
if pacman -Qi xf86-video-vmware &> /dev/null; then
  sudo pacman -Rs --noconfirm xf86-video-vmware
fi
sudo pacman -Rs --noconfirm xf86-video-intel
sudo pacman -Rs --noconfirm xf86-video-ati
sudo pacman -Rs --noconfirm xf86-video-nouveau
sudo pacman -Rs --noconfirm xf86-video-vesa
sudo pacman -Rs --noconfirm xfce4-artwork
sudo rm -rf /usr/share/backgrounds/xfce

sudo pacman -Rs --noconfirm adobe-source-han-sans-cn-fonts
sudo pacman -Rs --noconfirm adobe-source-han-sans-jp-fonts
sudo pacman -Rs --noconfirm adobe-source-han-sans-kr-fonts
sudo pacman -Rs --noconfirm vim vim-runtime

sudo pacman -Rs --noconfirm archlinux-tweak-tool-git
sudo pacman -Rs --noconfirm arcolinux-gtk-surfn-arc-git
sudo pacman -Rs --noconfirm arcolinux-desktop-trasher-git
sudo pacman -Rs --noconfirm arcolinux-arc-dawn-git
rm -rf ~/.gtkrc-2.0 ~/.config/gtk-3.0/