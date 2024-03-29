#!/bin/bash
set -e
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Jacob Lutz
# email 	: 	jlutz152
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#cd ~

#echo "################################################################"
#echo "####             Checking for updates                       ####"
#echo "################################################################"

#sudo pacman -Syyu

#echo "################################################################"
#echo "####             Your system is now up to date              ####"
#echo "################################################################"

#echo "################################################################"
#echo "####             Installing reflector if needed             ####"
#echo "################################################################"


# installing refector to test which servers are fastest
#sudo pacman -S reflector --needed --noconfirm

#echo "################################################################"
#echo "####        finding fastest servers be patient in US         ###"
#echo "################################################################"

#sudo reflector -c "United States" -f 12 -l 10 -n 12 --verbose --save /etc/pacman.d/mirrolist

#echo "################################################################"
#echo "####     fastest arch servers in US saved                   ####"
#echo "################################################################"

#cat /etc/pacman.d/mirrorlist


#echo "################################################################"
#echo "####               Checking for possible updates            ####"
#echo "################################################################"

#sudo pacman -Syu --noconfirm

#echo "################################################################"
#echo "####             Your system is now up to date              ####"
#echo "################################################################"

#echo "################################################################"
#echo "#######Installing Xorg ###### Installing Xorg ##################"
#echo "################################################################"

#sudo pacman -S xorg-server xorg-xinit --noconfirm

#cp /etc/X11/xinit/xinitrc .xinitrc

#echo "################################################################"
#echo "############# Xorg has been installed  #########################"
#echo "################################################################"

#echo "################################################################"
#echo "#######   Installing AMD Video Drivers        ##################"
#echo "################################################################"

#sudo pacman -S xf86-video-amdgpu --noconfirm

#echo "################################################################"
#echo "######## AMD drivers has been installed ########################"
#echo "################################################################"

#echo "################################################################"
#echo "#######Installing Lightdm ### Installing Lightdm ###############"
#echo "################################################################"

#sudo pacman -S lightdm --noconfirm
#sudo pacman -S lightdm-gtk-greeter --noconfirm
#sudo pacman -S lightdm-gtk-greeter-settings --noconfirm
#sudo pacman -S ttf-dejavu
#sudo pacman -S ttf-dejavu

#sudo systemctl enable lightdm.service

#echo "################################################################"
#echo "############# Lightdm has been installed #######################"
#echo "###################    and   ###################################"
#echo "############# Lightdm has been enabled   #######################"

#echo "################################################################"


#echo "################################################################"
#echo "#######           Installing Openbox and components    #########"
#echo "################################################################"

#sudo pacman -S openbox  --noconfirm
#sudo pacman -S obconf  --noconfirm
#sudo pacman -S oblogout  --noconfirm aur
#sudo pacman -S xfce4-terminal --noconfirm
#sudo pacman -S pcmanfm --noconfirm
#sudo pacman -S kate --noconfirm
#sudo pacman -S menumaker --noconfirm
#sudo pacman -S firefox --noconfirm

#echo "################################################################"
#echo "######## Openbox and components has been installed  ############"
#echo "################################################################"

#echo "################################################################"
#echo "#########        Install Sound Software         ################"
#echo "################################################################"

#sudo pacman -S pulseaudio pulseaudio-alsa pavucontrol pasystray --noconfirm --needed
#sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
#sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly  gstreamer  --noconfirm --needed

#echo "################################################################"
#echo "#########      Sound Software installed         ################"
#echo "################################################################"


#echo "################################################################"
#echo "########   Installing Network Management Software   ############"
#echo "################################################################"

#sudo pacman -S networkmanager --noconfirm
#sudo pacman -S network-manager-applet --noconfirm

#sudo systemctl enable NetworkManager.service


#echo "################################################################"
#echo "#########   Network Management Software installed  #############"
#echo "#########################  and  ################################"
#echo "#########         Networkmanger is enabled         #############"
#echo "################################################################"

#echo "################################################################"
#echo "#########   Installing Basic desktop components ################"
#echo "################################################################"

#echo "################################################################"
#echo "#########     Installing from Arch repository   ################"
#echo "################################################################"


#sudo pacman -S --noconfirm --needed catfish
#sudo pacman -S --noconfirm --needed dconf-editor dialog
#sudo pacman -S --noconfirm --needed dmidecode feh
#sudo pacman -S --noconfirm --needed filezilla firefox
#sudo pacman -S --noconfirm --needed gnome-disk-utility
#sudo pacman -S --noconfirm --needed gparted gpick
#sudo pacman -S --noconfirm --needed hardinfo htop
#sudo pacman -S --noconfirm --needed lm_sensors lsb-release
#sudo pacman -S --noconfirm --needed net-tools notify-osd openvpn plank
#sudo pacman -S --noconfirm --needed smplayer sysstat
#sudo pacman -S --noconfirm --needed terminator transmission-gtk tint2
#sudo pacman -S --noconfirm --needed variety vnstat wget unclutter
#sudo pacman -S --noconfirm --needed polkit udisks2 udiskie
#sudo pacman -S --noconfirm --needed smplayer sysstat ntfs-3g
#sudo pacman -S --noconfirm --needed terminator transmission-gtk
#sudo pacman -S --noconfirm --needed variety vnstat wget unclutter
#sudo pacman -S --noconfirm --needed geany
#sudo pacman -S --noconfirm --needed pcmanfm
#sudo pacman -S --noconfirm --needed lxinput
#sudo pacman -S --noconfirm --needed xterm
#sudo pacman -S --noconfirm --needed lxappearance
#sudo pacman -S --noconfirm --needed lxappearance-obconf
#sudo pacman -S --noconfirm --needed libglade
#sudo pacman -S --noconfirm --needed python2-cairo
#sudo pacman -S --noconfirm --needed python2-numpy
#sudo pacman -S --noconfirm --needed python2
# sudo pacman -S atom --noconfirm
sudo pacman -S audacious --noconfirm
sudo pacman -S libreoffice-fresh --noconfirm
sudo pacman -S xfburn --noconfirm
sudo pacman -S xfce4-appfinder --noconfirm
sudo pacman -S xfce4-notifyd --noconfirm
sudo pacman -S xfce4-power-manager --noconfirm
sudo pacman -S xfce4-screenshooter --noconfirm
sudo pacman -S xfce4-settings --noconfirm
sudo pacman -S xorg-xkill --noconfirm


#sudo systemctl enable vnstat
#sudo systemctl start vnstat


#echo "################################################################"
#echo "#########     Arch repository Complete          ################"
#echo "################################################################"

#echo "################################################################"
#echo "#########    Installing Obmenu-Generator        ################"
#echo "################################################################"

#sudo pacman -S perl-data-dump --noconfirm --needed

#cd ~
#cd src
#git clone https://aur.archlinux.org/perl-linux-desktopfiles.git
#cd perl-linux-desktopfiles
#makepkg -si

#cd ..
#git clone https://aur.archlinux.org/obmenu-generator.git
#cd obmenu-generator

#makepkg -si

#echo "################################################################"
#echo "#########   Obmenu-Generator Installed          ################"
#echo "################################################################"


#echo "################################################################"
#echo "#########    Installing Openbox Themes          ################"
#echo "################################################################"

#cd ~
#cd src
#git clone https://aur.archlinux.org/openbox-themes.git
#cd openbox-themes
#makepkg -si

#echo "################################################################"
#echo "#########   Obmenu-Generator Installed          ################"
#echo "################################################################"


#echo "################################################################"
#echo "#########            Installing Obkey           ################"
#echo "################################################################"

#cd ~
#cd src
#git clone https://aur.archlinux.org/python2-gobject2.git
#cd python2-gobject2
#makepkg -si --noconfirm

#cd ~
#cd src
#git clone https://aur.archlinux.org/pygtk.git
#cd pygtk
#makepkg -si --noconfirm


#cd ~
#cd src
#git clone https://aur.archlinux.org/obkey.git
#cd obkey
#makepkg -si --noconfirm


#echo "################################################################"
#echo "#########          Obkey Installed              ################"
#echo "################################################################"

#echo "################################################################"
#echo "#########    Installing Openbox-Arc          ################"
#echo "################################################################"

#cd ~
#cd src
#git clone https://aur.archlinux.org/openbox-arc-git.git
#cd openbox-arc-git
#makepkg -si --noconfirm

#echo "################################################################"
#echo "#########        Openbox-Arc Installed          ################"
#echo "################################################################"

obmenu-generator -p -i






