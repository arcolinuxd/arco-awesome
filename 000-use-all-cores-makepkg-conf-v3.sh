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

N_CORES=$(grep -c ^processor /proc/cpuinfo)

[[ $((N_CORES%2)) != 0 ]] && echo ":: Suspicious - odd - number of cores (${N_CORES}) ... I give up!" && exit 0

echo ":: You have "$N_CORES" cores."
echo ":: Changing the makeflags for "$N_CORES" cores."
sudo sed -i "s/#MAKEFLAGS=\"-j2\"/MAKEFLAGS=\"-j$((N_CORES + 1))\"/g" /etc/makepkg.conf
echo ":: Changing the compression settings for "$N_CORES" cores."
sudo sed -i "s/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T ${N_CORES} -z -)/g" /etc/makepkg.conf

echo "################################################################"
echo "###  All cores will be used during building and compression ####"
echo "################################################################"
