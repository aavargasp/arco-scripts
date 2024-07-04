#!/bin/bash
#set -e
###############################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################


###############################################################################
#
#   DECLARATION OF FUNCTIONS
#
###############################################################################


func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

###############################################################################
echo "Installation of the core software"
###############################################################################

list=(
linux-zen
linux-zen-headers
nvidia-dkms
nvidia-settings
nvidia-utils
arcolinux-bootloader-refind-git
arcolinux-refind-theme-arco-specs-git
sddm
awesome-terminal-fonts
arcolinux-root-git
archlinux-logout-git
arcolinux-config-all-desktops-git
arcolinux-dconf-all-desktops-git
arcolinux-keyring
arcolinux-powermenu-git
arcolinux-mirrorlist-git
arcolinux-paru-git
fastfetch-git
picom
polkit-gnome
xcb-util-cursor
arcolinux-keyring
# arcolinux-qtile-git
# arcolinux-rofi-git
# arcolinux-rofi-themes-git
lxappearance
picom
polkit-gnome
python-psutil
python-setuptools
qtile
dmenu
rofi
rofi-lbonn-wayland
# thunar
# thunar-archive-plugin
# thunar-volman
pcmanfm-gtk3
pipewire
pipewire-pulse
pipewire-alsa
pipewire-jack
pipewire-zeroconf
pavucontrol
alsa-utils
alsa-plugins
alsa-lib
alsa-firmware
gstreamer
gst-plugins-good
gst-plugins-bad
gst-plugins-base
gst-plugins-ugly   
volumeicon
playerctl
alacritty
# arcolinux-alacritty-git
# qemu-base

# qemu-full
# quickemu
# quickgui-bin
# virt-manager
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 6;echo "################################################################"
echo "Copying all files and folders from /etc/skel to ~"
echo "################################################################"
echo;tput sgr0
cp -Rf ~/.config ~/.install-config-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf /etc/skel/. ~

tput setaf 5;
echo "################################################################"
echo "Enabling sddm as display manager"
echo "################################################################"
echo;tput sgr0
sudo systemctl enable sddm.service -f

# tput setaf 5;echo "################################################################"
# echo "Enabling libvrt socket"
# echo "################################################################"
# echo;tput sgr0
# sudo systemctl enable libvirtd.socket -f

tput setaf 7;echo "################################################################"
echo "You now have a very minimal functional desktop"
echo "################################################################"
echo;tput sgr0

tput setaf 11;
echo "################################################################"
echo "Reboot your system"
echo "################################################################"
echo;tput sgr0