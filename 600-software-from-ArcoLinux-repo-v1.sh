
echo

sudo pacman -S arcolinux-arc-themes-nico-git --noconfirm --needed
sudo pacman -S arcolinux-bin-git --noconfirm --needed
sudo pacman -S arcolinux-conky-collection-git --noconfirm --needed
sudo pacman -S arcolinux-cron-git --noconfirm --needed
sudo pacman -S arcolinux-fonts-git --noconfirm --needed
sudo pacman -S arcolinux-geany-git --noconfirm --needed
sudo pacman -S arcolinux-hblock-git --noconfirm --needed
sudo pacman -S arcolinux-kvantum-git --noconfirm --needed
sudo pacman -S arcolinux-lightdm-gtk-greeter --noconfirm --needed
sudo pacman -S arcolinux-lightdm-gtk-greeter-settings --noconfirm --needed
sudo pacman -S arcolinux-mirrorlist-git --noconfirm --needed
sudo pacman -S arcolinux-neofetch-git --noconfirm --needed
sudo pacman -S arcolinux-nitrogen-git --noconfirm --needed
sudo pacman -S arcolinux-oblogout --noconfirm --needed
sudo pacman -S arcolinux-oblogout-themes-git --noconfirm --needed
sudo pacman -S arcolinux-pipemenus-git --noconfirm --needed
sudo pacman -S arcolinux-qt5-git --noconfirm --needed
sudo pacman -S arcolinux-rofi-git --noconfirm --needed
sudo pacman -S arcolinux-rofi-themes-git --noconfirm --needed
sudo pacman -S arcolinux-root-git --noconfirm --needed
sudo pacman -S arcolinux-slim --noconfirm --needed
sudo pacman -S arcolinux-slimlock-themes-git --noconfirm --needed
sudo pacman -S arcolinux-system-config-git --noconfirm --needed
sudo pacman -S arcolinux-termite-themes-git --noconfirm --needed
sudo pacman -S arcolinux-tweak-tool-git --noconfirm --needed
sudo pacman -S arcolinux-variety-git --noconfirm --needed
sudo pacman -S arcolinux-wallpapers-git --noconfirm --needed
sudo pacman -S arcolinux-welcome-app-git --noconfirm --needed


echo


sudo pacman -S arcolinux-awesome-git --noconfirm --needed
sudo pacman -S arcolinux-xfce-git --noconfirm --needed

echo


sudo pacman -S arcolinux-config-awesome-git --noconfirm --needed




echo

sudo pacman -S --noconfirm --needed  arcolinux-awesome-dconf-git


echo "Copying all files and folders from /etc/skel to ~"
echo
cp -rT /etc/skel ~


sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed telegram-desktop
sudo pacman -S --noconfirm --needed bibata-cursor-theme

echo

echo "removing all folders and files unnecessary for this dekstop from .config"
echo

echo "removing all folders and files unnecessary for this desktop from .local"
echo
