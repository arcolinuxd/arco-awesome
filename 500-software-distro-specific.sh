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

func_category() {
	tput setaf 5;
	echo "################################################################"
	echo "Installing software for category " $1
	echo "################################################################"
	echo;tput sgr0
}

###############################################################################

func_category Additional-distro-specific

list=(
dmenu
gtk-engine-murrine
lxappearance
lxrandr
w3m
xfce4-appfinder
xfce4-notifyd
xfce4-power-manager
xfce4-screenshooter
xfce4-taskmanager
xfce4-terminal
hardcode-fixer-git
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done
echo "Fixing hardcoded icon paths for applications - Wait for it"
sudo hardcode-fixer

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0


sudo pacman -S xfce4-terminal --noconfirm --needed

echo "Installing category Development"

echo "Installing category Education"

echo "Installing category Games"

echo "Installing category Graphics"

echo "Installing category Internet"

echo "Installing category Multimedia"

#sh AUR/install-mpd-ncmpcpp-v*.sh

echo "Installing category Office"

echo "Installing category Other"

echo "Installing category System"

sudo pacman -S arandr --noconfirm --needed
sudo pacman -S awesome-terminal-fonts --noconfirm --needed
sudo pacman -S picom  --noconfirm --needed
sudo pacman -S dmenu  --noconfirm --needed
sudo pacman -S feh --noconfirm --needed
sudo pacman -S gmrun --noconfirm --needed
sudo pacman -S gtop --noconfirm --needed
sudo pacman -S imagemagick --noconfirm --needed
sudo pacman -S lxappearance-gtk3 --noconfirm --needed
sudo pacman -S lxrandr --noconfirm --needed
sudo pacman -S nitrogen --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed
sudo pacman -S rofi --noconfirm --needed
sudo pacman -S thunar --noconfirm --needed
sudo pacman -S volumeicon  --noconfirm --needed
sudo pacman -S w3m  --noconfirm --needed
sudo pacman -S xfce4-appfinder --noconfirm --needed
sudo pacman -S xfce4-power-manager --noconfirm --needed
sudo pacman -S xfce4-screenshooter --noconfirm --needed
#sudo pacman -S xfce4-settings --noconfirm --needed
sudo pacman -S xfce4-taskmanager --noconfirm --needed

sh AUR-DS/install-gtk2-perl-v*.sh

sh AUR-DS/install-perl-linux-desktopfiles-v*.sh

sh AUR-DS/install-urxvt-resize-font-git-v*.sh

sh AUR-DS/install-python-pywal-v*.sh
