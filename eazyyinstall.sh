#!/bin/bash
update(){
	sudo apt update -y
	}
upgrade(){
	sudo apt upgrade -y
}

snap(){
	update
	sudo apt install snapd
}
python(){
	update
	sudo apt install software-properties-common
	sudo add-apt-repository ppa:deadsnakes/ppa
	update
	sudo apt install python3
}

java(){
	update
	sudo apt-get install openjdk-11-jre openjdk-11-jdk -y
	echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/" >> /etc/environment
	source /etc/environment
}

php(){
	sudo apt install php libapache2-mod-php
	sudo systemctl restart apache2
}

nodejs(){
	update
	sudo apt install nodejs
	sudo apt install npm
}

apache2(){
	update
	sudo apt-get install apache2
}

nginx(){
	update
	sudo apt-get install nginx
}

vim(){
	update
	upgrade
	sudo apt-get install vim

}

notepad++(){
	sudo snap install notepad-plus-plus
}

vscode(){
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	update
	sudo apt install code
}

codeblocks(){
	sudo add-apt-repository ppa:damien-moore/codeblocks-stable -y
	sudo apt update -y
	sudo apt install codeblocks codeblocks-contrib -y
}

chrome(){
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome-stable_current_amd64.deb
}

firefox(){
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
	sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main"
	update
	sudo apt install firefox
}

brave(){
	sudo apt install apt-transport-https curl -y
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update -y
	sudo apt install brave-browser
}

edge(){
	update
	sudo apt install software-properties-common apt-transport-https wget
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
	sudo apt install microsoft-edge-dev
}

vlc(){
	sudo apt install snap -y
	sudo snap install vlc -y
}

xbmc(){
	sudo apt-get install software-properties-common -y
	sudo add-apt-repository ppa:team-xbmc/ppa -y
	sudo apt-get update -y
	sudo apt-get install kodi -y
}

miro(){
	sudo add-apt-repository ppa:pcf/miro-releases -y
	sudo apt-get update -y
	sudo apt-get install miro -y
}

smp(){
	sudo add-apt-repository ppa:rvm/smplayer -y
	sudo apt-get update -y
	sudo apt-get install smplayer smplayer-themes smplayer-skins -y
}



while  true
do

		echo -e "\e[92m \e[1m ########    ###    ######## ##    ## ##    ## #### ##    ##  ######  ########     ##      ##       ##  "
		echo -e "\e[92m \e[1m ##         ## ##        ##   ##  ##   ##  ##   ##  ###   ## ##    ##    ##       ####     ##       ##  "
		echo -e "\e[92m \e[1m ##        ##   ##      ##     ####     ####    ##  ####  ## ##          ##      ##  ##    ##       ##  "
		echo -e "\e[92m \e[1m ######   ##     ##    ##       ##       ##     ##  ## ## ##  ######     ##     ##    ##   ##       ##  "
		echo -e "\e[92m \e[1m ##       #########   ##        ##       ##     ##  ##  ####       ##    ##    ##########  ##       ##  "
		echo -e "\e[92m \e[1m ##       ##     ##  ##         ##       ##     ##  ##   ### ##    ##    ##    ##      ##  ##       ##    "
		echo -e "\e[92m \e[1m ######## ##     ## ########    ##       ##    #### ##    ##  ######     ##    ##      ##  ######## ########  "



	echo " "
	echo -e  "\e[38;5;32m#Author: Jitul Kumar Laphong & Luknu Lomri#\e[0m"
	echo -e  "\e[95m#Automated Software Installation Script for Ubuntu Operating System#\e[0m"
	echo " "

	echo " "
	echo -e "\e[31m \e[93m \e[1mPlease select your option-\e[0m"
	echo " "
	echo -e "\e[34m1) Install Software Development Packages\e[0m"
	echo -e "\e[32m2) Install Code & Text Editors\e[0m"
	echo -e "\e[36m3) Install Web Browsers\e[0m"
	echo -e "\e[95m4) Install Media Players\e[0m"
	echo -e "\e[33m5) Install Web Servers\e[0m"
	echo -e "\e[96m6) Exit the installer script\e[0m"
	echo " "
	read option

	case "$option" in
		1)	while true ; do
			echo -e -e "\e[31m\aSoftware Develoment Package Installation selected.\e[0m"
			echo -e -e "\e[33mPlease select the package to be installed>>>>\e[0m"
			echo " "

			echo " "
			echo -e "\e[34m1) Install Python3 Packages\e[0m"
			echo -e "\e[34m2) Install Java (Open JDK-JRE) Packages\e[0m"
			echo -e "\e[34m3) Install PHP Packages\e[0m"
			echo -e "\e[34m4) Install Node Js Packages\e[0m"
			echo -e "\e[93m5) Return to Main Menu\e[0m"
			echo " "
			read selection1

			case "$selection1" in
				p1)echo -e "\e[31mPython Package installation selected.\nPlease wait, processing your installation...\e[0m"
				python
				;;

				p2)echo -e "\e[31mJava (Open JDk-JRE) Package installation selected.\nPlease wait, processing your installation...\e[0m"
				java
				;;

				p3)echo -e "\e[31mPHP Package installation selected.\nPlease wait, processing your installation...\e[0m"
				php
				;;

				p4)echo -e "\e[31mNode Js Package installation selected.\nPlease wait, processing your installation...\e[0m"
				nodejs
				;;

				p5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				break
				exit 0
				;;
				*)echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
				echo " "

				echo " "
                ;;
			esac
			break
			done
			;;

		2)	while true ; do
			echo -e -e "\e[31mCode & Text Editor Installation selected.\e[0m"
			echo -e -e "\e[31mPlease select the editor to be installed>>>>\e[0m"
			echo " "

			echo " "
			echo -e "\e[32m1) Install Vim Editor\e[0m"
			echo -e "\e[32m2) Install NotePad++ Editor\e[0m"
			echo -e "\e[32m3) Install VS Code Editor\e[0m"
			echo -e "\e[32m4) Install CodeBlocks Editor\e[0m"
			echo -e "\e[93m5) Return to Main Menu\e[0m"
			echo " "
			read selection2

			case "$selection2" in
				e1)echo -e "\e[31mVim Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				vim
				;;

				e2)echo -e "\e[31mNotePad++ Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				notepad++
				;;

				e3)echo -e "\e[31mVS Code Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				vscode
				;;

				e4)echo -e "\e[31mCodeBlocks Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				codeblocks
				;;

				e5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				exit 0
				;;

				*)echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
				echo " "
				;;
			esac
			break
			done
			;;
		3)  while true ; do
			echo -e -e "\e[31mWeb Browser Installation selected.\e[0m"
			echo -e -e "\e[31mPlease select the browser to be installed>>>>\e[0m"
			echo " "

			echo " "
			echo -e "\e[36m1) Install Google Chrome Broswer\e[0m"
			echo -e "\e[36m2) Install Mozila Firefox Broswer\e[0m"
			echo -e "\e[36m3) Install Brave Broswer\e[0m"
			echo -e "\e[36m4) Install Microsoft Edge Broswer\e[0m"
	    	echo -e "\e[93m5) Return to Main Menu\e[0m"
			echo " "
			read selection3

			case "$selection3" in
				b1)echo -e "\e[31Google Chrome Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				chrome
				;;

				b2)echo -e "\e[31mMozila Firefox Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				firefox
				;;

				b3)echo -e "\e[31mBrave Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				brave
				;;

				b4)echo -e "\e[31mMicrosoft Edge Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				edge
				;;

				b5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				exit 0
				;;

				*)echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
				echo " "

				echo " "
				;;
			esac
			break
			done
			;;
		4)  while true ; do
			echo -e -e "\e[31mMedia Players Installation selected.\e[0m"
			echo -e -e "\e[31mPlease select the MEdia Player to be installed>>>>\e[0m"
			echo " "

			echo " "
			echo -e "\e[95m1) Install VLC Media Player\e[0m"
			echo -e "\e[95m2) Install XBMC – Kodi Media Center\e[0m"
	    	echo -e "\e[95m3) Install Miro Music and Video Player\e[0m"
			echo -e "\e[95m4) Install SMPlayer\e[0m"
	    	echo -e "\e[93m5) Return to Main Menu\e[0m"
			echo " "
			read selection4

			case "$selection4" in
				b1)echo -e "\e[31VLC Media Player installation selected.\nPlease wait, processing your installation...\e[0m"
				vlc
				;;

				b2)echo -e "\e[31mXBMC – Kodi Media Center installation selected.\nPlease wait, processing your installation...\e[0m"
				xbmc
				;;

				b3)echo -e "\e[31mMiro Music and Video Player installation selected.\nPlease wait, processing your installation...\e[0m"
				miro
				;;

				b4)echo -e "\e[31mSMPlayer installation selected.\nPlease wait, processing your installation...\e[0m"
				smp
				;;

				b5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				exit 0
				;;

				*)echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
				echo " "

				echo " "
				;;
			esac
			break
			done
			;;
		5)  while true ; do
			echo -e -e "\e[31mWeb Servers Installation selected.\e[0m"
			echo -e -e "\e[31mPlease select the Web Server to be installed>>>>\e[0m"
			echo " "

			echo " "
			echo -e "\e[33m1) Install Apache Web Server\e[0m"
			echo -e "\e[33m2) Install Nginx Web Server\e[0m"
	    	echo -e "\e[93m3) Return to Main Menu\e[0m"
			echo " "
			read selection5

			case "$selection5" in
				b1)echo -e "\e[31Apache Web Server installation selected.\nPlease wait, processing your installation...\e[0m"
				apache2
				;;

				b2)echo -e "\e[31mNginx Web Server installation selected.\nPlease wait, processing your installation...\e[0m"
				nginx
				;;

				b3)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				exit 0
				;;

				*)echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
				echo " "

				echo " "
				;;
			esac
			break
			done
			;;

		6)  echo -e "\e[96mExit option selected.\nExiting Eazyyinstall, Please wait...\e[0m"
                exit 0
                ;;
		*)
                echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
                echo " "

                ;;
	esac
done
