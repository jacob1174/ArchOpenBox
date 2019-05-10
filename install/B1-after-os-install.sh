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

echo "################################################################"
echo "####             Updating to the latest versions            ####"
echo "################################################################"

sudo pacman -Syyu

echo "################################################################"
echo "####             Your system is now up to date              ####"
echo "################################################################"


echo "################################################################"
echo "####             Installing reflector if needed             ####"
echo "################################################################"


# installing refector to test wich servers are fastest
sudo pacman -S reflector --needed --noconfirm


echo "################################################################"
echo "####        finding fastest servers be patient in US         ###"
echo "################################################################"

sudo reflector -c "United States" -f 12 -l 10 -n 12 --verbose --save /etc/pacman.d/mirrolist


echo "################################################################"
echo "####     fastest arch servers in US saved                   ####"
echo "################################################################"


cat /etc/pacman.d/mirrorlist


echo "################################################################"
echo "####               Checking for possible updates            ####"
echo "################################################################"

sudo pacman -Syu --noconfirm


echo "################################################################"
echo "####             Your system is now up to date              ####"
echo "################################################################"



echo "################################################################"
echo "#######Installing Xorg ###### Installing Xorg ##################"
echo "################################################################"

sudo pacman -S xorg --noconfirm

echo "################################################################"
echo "############# Xorg has been installed  #########################"
echo "################################################################"

echo "################################################################"
echo "#######   Installing AMD Video Drivers        ##################"
echo "################################################################"

sudo pacman -S xf86-video-amdgpu --noconfirm

echo "################################################################"
echo "######## AMD drivers has been installed ########################"
echo "################################################################"

echo "################################################################"
echo "#######Installing Lightdm ### Installing Lightdm ###############"
echo "################################################################"

sudo pacman -S lightdm --noconfirm 
sudo pacman -S lightdm-gtk-greeter --noconfirm
sudo pacman -S lightdm-gtk-greeter-settings --noconfirm

sudo systemctl enable lightdm.service

echo "################################################################"
echo "############# Lightdm has been installed #######################"
echo "###################    and   ###################################"
echo "############# Lightdm has been enabled   #######################"
echo "################################################################"

echo "################################################################"
echo "#######           Installing Openbox and components    #########"
echo "################################################################"

sudo pacman -S openbox  --noconfirm
sudo pacman -S obconf  --noconfirm
sudo pacman -S obmenu  --noconfirm
sudo pacman -S oblogout  --noconfirm

echo "################################################################"
echo "######## Openbox and components has been installed  ############"
echo "################################################################"

echo "################################################################"
echo "########   Installing Network Management Software   ############"
echo "################################################################"

sudo pacman -S networkmanager --noconfirm
sudo pacman -S network-manager-applet --noconfirm
sudo pacman -S wpa_supplicant --noconfirm
sudo pacman -S dhclient --noconfirm
sudo pacman -S dialog --noconfirm

sudo systemctl enable NetworkManager.service



echo "################################################################"
echo "#########   Network Management Software installed  #############"
echo "#########################  and  ################################"
echo "#########         Networkmanger is enabled         #############"
echo "################################################################"




echo "################################################################"
echo "#########   Installing Basic desktop components ################"
echo "################################################################"

echo "################################################################"
echo "#########     Installing from Arch repository   ################"
echo "################################################################"

sudo pacman -S arandr  --noconfirm
sudo pacman -S compton  --noconfirm
sudo pacman -S dmenu  --noconfirm
sudo pacman -S exo  --noconfirm
sudo pacman -S geany  --noconfirm
sudo pacman -S feh  --noconfirm
sudo pacman -S gmrun  --noconfirm
sudo pacman -S gsimplecal  --noconfirm
sudo pacman -S lxrandr  --noconfirm
sudo pacman -S lxterminal --noconfirm
sudo pacman -S pcmanfm --noconfirm
sudo pacman -S plank --noconfirm
sudo pacman -S tint2  --noconfirm
sudo pacman -S xorg-xkill  --noconfirm

sudo pacman -S --noconfirm  archey3 baobab bleachbit catfish conky curl
sudo pacman -S --noconfirm  dconf-editor dmidecode 
sudo pacman -S --noconfirm  filezilla firefox
sudo pacman -S --noconfirm  galculator git glances 
sudo pacman -S --noconfirm  gparted gpick #
sudo pacman -S --noconfirm  hardinfo hddtemp htop 
sudo pacman -S --noconfirm  lm_sensors lsb-release meld
sudo pacman -S --noconfirm  net-tools notify-osd plank polkit-gnome 
sudo pacman -S --noconfirm  ristretto sane screenfetch scrot 
sudo pacman -S --noconfirm  simple-scan smplayer sysstat 
sudo pacman -S --noconfirm  terminator transmission-cli transmission-gtk tumbler
sudo pacman -S --noconfirm  variety vlc vnstat wget unclutter  


sudo systemctl enable vnstat
sudo systemctl start vnstat

###############################################################################################

# installation of zippers and unzippers
sudo pacman -S --noconfirm  unace unrar zip unzip sharutils  uudeview  arj cabextract file-roller

###############################################################################################

echo "################################################################"
echo "#########          Installing from AUR          ################"
echo "################################################################"

echo "################################################################"
echo "obmenu-generator"   
echo "################################################################"


package="obmenu-generator"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi


echo "################################################################"
echo "perl-file-desktopentry"   
echo "################################################################"


package="perl-file-desktopentry"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi



echo "################################################################"
echo "gtk2-perl"   
echo "################################################################"


package="gtk2-perl"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi



echo "################################################################"
echo "openbox-themes"   
echo "################################################################"


package="openbox-themes"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed 

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi



echo "################################################################"
echo "lxinput"   
echo "################################################################"


package="lxinput"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi



echo "################################################################"
echo "lxappearance-obconf"   
echo "################################################################"


package="lxappearance-obconf"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi


echo "################################################################"
echo "obkey-git"   
echo "################################################################"


package="obkey-git"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
	 	
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi


echo "################################################################"
echo "openbox-arc-git"
echo "################################################################"


package="openbox-arc-git"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi



echo "################################################################"
echo "playerctl"
echo "################################################################"


package="playerctl"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi


echo "################################################################"
echo "inxi"
echo "################################################################"


package="inxi"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

echo "################################################################"
echo "gksu"
echo "################################################################"


package="gksu"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
		 	
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

echo "################################################################"
echo "######## Basic desktop components have been installed  #########"
echo "################################################################"

echo "################################################################"
echo "###        Installing extra desktop components     #############"
echo "################################################################"


echo "################################################################"
echo "## Installing extra desktop components from Arch repository  ###"
echo "################################################################"

sudo pacman -S atom --noconfirm
sudo pacman -S audacious --noconfirm
sudo pacman -S libreoffice-fresh --noconfirm
sudo pacman -S xfburn --noconfirm
sudo pacman -S xfce4-appfinder --noconfirm
sudo pacman -S xfce4-notifyd --noconfirm
sudo pacman -S xfce4-power-manager --noconfirm
sudo pacman -S xfce4-screenshooter --noconfirm
sudo pacman -S xfce4-settings --noconfirm
sudo pacman -S xorg-xkill --noconfirm


echo "################################################################"
echo "###   Installing extra software from AUR repository    #########"
echo "################################################################"

package="aarchup"
command="aarchup"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package

	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="google-chrome"
command="google-chrome"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="google-earth"
command="google-earth"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

# dependency
package="python2-pyparted"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed

	if pacman -Qi yay &> /dev/null; then
		
		echo "Installing with yay"
		yay -S --noconfirm $package
			  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi


package="mintstick-git"
command="mintstick"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm $package
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="neofetch"
command="neofetch"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm $package
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

package="sublime-text-dev"
command="subl3"
#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur helpers
if pacman -Qi $package &> /dev/null; then

	echo "################################################################"
	echo "################## "$package" is already installed"
	echo "################################################################"

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		echo "Installing with yay"
		yay -S --noconfirm $package
		  	
	fi

	# Just checking if installation was successful
	if pacman -Qi $package &> /dev/null; then
	
	echo "################################################################"
	echo "#########  "$package" has been installed"
	echo "################################################################"

	else

	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed"
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

	fi

fi

echo "################################################################"
echo "######## Extra desktop components have been installed  #########"
echo "################################################################"

obmenu-generator -p -i
	
echo "################################################################"
echo "######## Please reboot and sign in and setup network   #########"
echo "################################################################"