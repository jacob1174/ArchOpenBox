#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################


echo "################################################################"
echo "#########          Installing policy settings       ################"
echo "################################################################"


sudo cp settings/PolicySettings/50-udiskie.rules  roup /etc/polkit-1/rules.d/50-udiskie.rules


echo "################################################################"
echo "#########       policy settings installed     ################"
echo "################################################################"
