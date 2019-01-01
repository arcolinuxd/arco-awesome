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

echo "Receiving, local signing and refreshing keys"

sudo pacman-key -r 74F5DE85A506BF64
sudo pacman-key --lsign-key 74F5DE85A506BF64
sudo pacman-key --refresh-keys

echo "################################################################"
echo "###                   key trusted                           ####"
echo "################################################################"
