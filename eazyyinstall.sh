#!/bin/bash
update(){
	sudo apt update -y
	}
upgrade(){
	sudo apt upgrade -y
}

snap(){
	update
	sudo apt install snapd -y
}
python(){
	NAME="python3"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

            update
			sudo apt install software-properties-common
			sudo add-apt-repository ppa:deadsnakes/ppa
			update
			sudo apt install python3

        	else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Python selected."
					sudo apt-get install --only-upgrade python3
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

java(){
	NAME1="openjdk-11-jdk"
	NAME2="openjdk-11-jre"
	dpkg -s $NAME1 $NAME2 &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"
			update
			sudo apt-get install openjdk-11-jre openjdk-11-jdk -y
			echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/" >> /etc/environment
			source /etc/environment

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Java selected."
					sudo apt-get install --only-upgrade openjdk-11-jdk
					sudo apt-get install --only-upgrade openjdk-11-jre
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi


}

php(){
	NAME="php"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo apt install php libapache2-mod-php
			#sudo systemctl restart apache2

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Php selected."
					sudo apt-get install --only-upgrade php
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi

}

nodejs(){
	NAME1="nodejs"
	NAME2="npm"
	dpkg -s $NAME1 $NAME2 &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"
			update
			sudo apt install nodejs
			sudo apt install npm

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Nodejs selected."
					sudo apt-get install --only-upgrade nodejs
					sudo apt-get install --only-upgrade npm
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

apache2(){
	NAME="apache2"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			update
			sudo apt-get install apache2

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Apache2 selected."
					sudo apt-get install --only-upgrade apache2
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

nginx(){
	NAME="nginx"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			update
			sudo apt-get install nginx

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Nginx selected."
					sudo apt-get install --only-upgrade nginx
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

vim(){
	NAME="vim"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			update
			upgrade
			sudo apt-get install vim

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Vim selected."
					sudo apt-get install --only-upgrade vim
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi

}

notepad++(){
	NAME="notepad-plus-plus"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo snap install notepad-plus-plus

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Notepad++ selected."
					sudo apt-get install --only-upgrade notepad-plus-plus
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

vscode(){
	NAME="code"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
			update
			sudo apt install code

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade VScode selected."
					sudo apt-get install --only-upgrade code
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

codeblocks(){
	NAME="codeblocks"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo add-apt-repository ppa:damien-moore/codeblocks-stable -y
			sudo apt update -y
			sudo apt install codeblocks codeblocks-contrib -y

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Codeblocks selected."
					sudo apt-get install --only-upgrade codeblocks
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

chrome(){
	NAME="google-chrome-stable"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
			sudo dpkg -i google-chrome-stable_current_amd64.deb

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Google Chrome selected."
					sudo apt-get install --only-upgrade google-chrome-stable
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

firefox(){
	NAME="firefox"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
			sudo apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main"
			update
			sudo apt install firefox

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Mozila Firefox selected."
					sudo apt-get install --only-upgrade firefox
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

brave(){
	NAME="brave-browser"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo apt install apt-transport-https curl -y
			sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
			echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
			sudo apt update -y
			sudo apt install brave-browser

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Brave Browser selected."
					sudo apt-get install --only-upgrade brave-browser
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

edge(){
	NAME="microsoft-edge-dev"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			update
			sudo apt install software-properties-common apt-transport-https wget
			wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
			sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
			sudo apt install microsoft-edge-dev
			
			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Microsoft Edge selected."
					sudo apt-get install --only-upgrade microsoft-edge-dev
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi

}

vlc(){
	NAME="vlc"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			#sudo apt install snap -
			snap
			sudo snap install vlc -y

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade VLC Media Player selected."
					sudo apt-get install --only-upgrade vlc
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

xbmc(){
	NAME="kodi"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo apt-get install software-properties-common -y
			sudo add-apt-repository ppa:team-xbmc/ppa -y
			sudo apt-get update -y
			sudo apt-get install kodi -y

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade XBMC-kodi Media Player selected."
					sudo apt-get install --only-upgrade kodi
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

miro(){
	NAME="miro"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo add-apt-repository ppa:pcf/miro-releases -y
			sudo apt-get update -y
			sudo apt-get install miro -y

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade Miro Media Player selected."
					sudo apt-get install --only-upgrade miro
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}

smp(){
NAME="smp"
	dpkg -s $NAME &> /dev/null

		if [ $? -ne 0 ]

			then
			echo " "
            echo -e "\e[31mNo Previous Package Found\e[0m"
            echo -e "\e[33m Downloading & Installing Packages.....\e[0m"

			sudo add-apt-repository ppa:rvm/smplayer -y
			sudo apt-get update -y
			sudo apt-get install smplayer smplayer-themes smplayer-skins -y

			else
            	echo -e "\e[32m Already installed"
				read -e -p "Check for Update(Latest Version) and Install ? [Y/n] " RESP

				if [ "$RESP" = "y" ]; then
  					echo -e "\e[32mUpgrade SMP Media Player selected."
					sudo apt-get install --only-upgrade smplayer
				else
  					echo -e "\e[31mDo not Upgrade selected"
					echo -e "\e[31mExiting to Main Menu....."
					echo " "

					echo " "
				fi
		fi
}



while  true
do
		clear
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
			clear
			echo -e -e "\e[36m\aSoftware Develoment Package Installation selected.\e[0m"
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
				1)echo -e "\e[31mPython Package installation selected.\nPlease wait, processing your installation...\e[0m"
				python
				;;

				2)echo -e "\e[31mJava (Open JDk-JRE) Package installation selected.\nPlease wait, processing your installation...\e[0m"
				java
				;;

				3)echo -e "\e[31mPHP Package installation selected.\nPlease wait, processing your installation...\e[0m"
				php
				;;

				4)echo -e "\e[31mNode Js Package installation selected.\nPlease wait, processing your installation...\e[0m"
				nodejs
				;;

				5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				break
				exit 0
				;;

				*)echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
				echo " "

                ;;
			esac
			break
			done
			;;

		2)	while true ; do
			clear
			echo -e -e "\e[36mCode & Text Editor Installation selected.\e[0m"
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
				1)echo -e "\e[31mVim Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				vim
				;;

				2)echo -e "\e[31mNotePad++ Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				notepad++
				;;

				3)echo -e "\e[31mVS Code Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				vscode
				;;

				4)echo -e "\e[31mCodeBlocks Editor installation selected.\nPlease wait, processing your installation...\e[0m"
				codeblocks
				;;

				5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				break
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
			clear
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
				1)echo -e "\e[31Google Chrome Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				chrome
				;;

				2)echo -e "\e[31mMozila Firefox Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				firefox
				;;

				3)echo -e "\e[31mBrave Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				brave
				;;

				4)echo -e "\e[31mMicrosoft Edge Browser installation selected.\nPlease wait, processing your installation...\e[0m"
				edge
				;;

				5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
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
		4)  while true ; do
			clear
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
				1)echo -e "\e[31VLC Media Player installation selected.\nPlease wait, processing your installation...\e[0m"
				vlc
				;;

				2)echo -e "\e[31mXBMC – Kodi Media Center installation selected.\nPlease wait, processing your installation...\e[0m"
				xbmc
				;;

				3)echo -e "\e[31mMiro Music and Video Player installation selected.\nPlease wait, processing your installation...\e[0m"
				miro
				;;

				4)echo -e "\e[31mSMPlayer installation selected.\nPlease wait, processing your installation...\e[0m"
				smp
				;;

				5)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
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
		5)  while true ; do
			clear
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
				1)echo -e "\e[31Apache Web Server installation selected.\nPlease wait, processing your installation...\e[0m"
				apache2
				;;

				2)echo -e "\e[31mNginx Web Server installation selected.\nPlease wait, processing your installation...\e[0m"
				nginx
				;;

				3)echo -e "\e[31mReturn to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				break
				;;

				*)echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
				echo " "

				echo " "
				;;
			esac
			break
			done
			;;

		6)  clear
			echo -e "\e[96mExit option selected.\nExiting Eazyyinstall, Please wait...\e[0m"
                exit 0
                ;;

		*)
                echo -e "\e[31m\e[5m \e[1mInvalid selection, please try again.\e[0m"
                echo " "

                ;;
	esac
done
