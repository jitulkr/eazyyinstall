#!/bin/bash
update(){
	sudo apt-get update -y && apt-get upgrade -y
	}

python(){
	sudo apt update -y
	sudo apt-get install python
}

java(){
	sudo apt update -y
	sudo apt-get install openjdk-11-jre openjdk-11-jdk -y
	echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/" >> /etc/environment
	source /etc/environment
}

php(){
	sudo apt install php libapache2-mod-php
	sudo systemctl restart apache2
	sudo apt install php-fpm
	systemctl status php7.2-fpm
	sudo apt update -y
}
nodejs(){
	sudo apt install nodejs
	sudo apt update -y
}

vim(){
	sudo snap install vscode --classic
	sudo apt update -y
}

notepad++(){
	sudo apt update -y
	sudo snap install notepad-plus-plus
}

vscode(){
	sudo snap install vscode --classic
	sudo apt update -y
}

codeblocks(){
	sudo add-apt-repository ppa:damien-moore/codeblocks-stable -y
	sudo apt update -y
	sudo apt install codeblocks codeblocks-contrib -y
}

chrome(){
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome-stable_current_amd64.deb

}

firefox(){
	$ sudo apt install firefox
	sudo apt update -y
}

brave(){
	sudo apt install apt-transport-https curl -y
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update -y
	sudo apt install brave-browser
}

edge(){
	sudo apt update -y
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
		
                                                                             
                                                                                  


	#echo -e "\e[33m#####################################################\e[0m"
	#echo -e "\e[33m#\e[0m            \e[38;5;41mWelcome to EazyyInstall Script\e[0m         \e[33m#"
	#echo -e "\e[33m#####################################################\e[0m"
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
	echo -e "\e[96m5) Exit the installer script\e[0m"
	echo " "
	read option

	case "$option" in
		1)	while true ; do
			echo -e -e "\e[31m\aSoftware Develoment Package Installation selected.\e[0m"
			echo -e -e "\e[33mPlease select the package to be installed>>>>\e[0m"
			echo " "

			echo " "
        	echo -e "\e[34m1) Install Python Packages\e[0m"
	    	echo -e "\e[32m2) Install Java Packages\e[0m"
	    	echo -e "\e[36m3) Install PHP Packages\e[0m"
			echo -e "\e[95m4) Install Node Js Packages\e[0m"
	    	echo -e "\e[96m4) Return to Main Menu\e[0m"
			echo " "
			read selection1

			case "$selection1" in
				p1)echo -e "\e[31mPython Package installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				p2)echo -e "\e[31mJava Package installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				p3)echo -e "\e[31mPHP Package installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				p4)echo -e "\e[31mNode Js Package installation selected.\nPlease wait, processing your installation...\e[0m"
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
        	echo -e "\e[34m1) Install Vim Editor\e[0m"
	    	echo -e "\e[32m2) Install NotePad++ Editor\e[0m"
	    	echo -e "\e[36m3) Install VS Code Editor\e[0m"
			echo -e "\e[95m4) Install CodeBlocks Editor\e[0m"
	    	echo -e "\e[96m4) Return to Main Menu\e[0m"
			echo " "
			read selection2

			case "$selection2" in
				e1)echo -e "\e[31mVim Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				e2)echo -e "\e[31mNotePad++ Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				e3)echo -e "\e[31mVS Code Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				e4)echo -e "\e[31mCodeBlocks Editor installation selected.\nPlease wait, processing your installation...\e[0m"
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
        	echo -e "\e[34m1) Install Google Chrome Browser\e[0m"
	    	echo -e "\e[32m2) Install Mozila Firefox Browser\e[0m"
	    	echo -e "\e[36m3) Install Brave Browser\e[0m"
			echo -e "\e[95m4) Install Microsoft Edge Broswer\e[0m"
	    	echo -e "\e[96m4) Return to Main Menu\e[0m"
			echo " "
			read selection3

			case "$selection2" in
				b1)echo -e "\e[31Google Chrome Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				b2)echo -e "\e[31mMozila Firefox Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				b3)echo -e "\e[31mBrave Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				;;

				b4)echo -e "\e[31mMicrosoft Edge Browser installation selected.\nPlease wait, processing your installation...\e[0m"
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
        	echo -e "\e[34m1) Install VLC Media Player\e[0m"
	    	echo -e "\e[32m2) Install XBMC – Kodi Media Center\e[0m"
	    	echo -e "\e[36m3) Install Miro Music and Video Player\e[0m"
			echo -e "\e[95m4) Install SMPlayer\e[0m"
	    	echo -e "\e[96m4) Return to Main Menu\e[0m"
			echo " "
			read selection3

			case "$selection2" in
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

		5)  echo -e "\e[31mExit option selected.\nExiting Eazyyinstall, Please wait...\e[0m"
                exit 0
                ;;
		*)
                echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
                echo " "

				echo " "
                ;;
	esac
done
