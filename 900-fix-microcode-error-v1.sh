#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# [    0.000000] [Firmware Bug]: TSC_DEADLINE disabled due to Errata; please update microcode to version: 0x52 (or later)

echo "Run this if you see an error in your bootup screen or dmesg about microcode"

sudo pacman -S intel-ucode --noconfirm
sudo grub-mkconfig -o /boot/grub/grub.cfg


echo "################################################################"
echo "####                             Fix done                 ######"
echo "################################################################"
