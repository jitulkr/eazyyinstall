#!/bin/bash
update(){
	sudo apt-get update -y && apt-get upgrade -y
	}


while  true
do
	echo -e "\e[33m#####################################################\e[0m"
	echo -e "\e[33m#\e[0m            \e[38;5;41mWelcome to EazyyInstall Script\e[0m         \e[33m#"
	echo -e "\e[33m#####################################################\e[0m"
	echo " "
	echo -e  "\e[38;5;32m#Author: Jitul Kumar Laphong & Luknu Lomri#\e[0m"
	echo -e  "\e[95m#Automated Software Installation Script for Ubuntu Operating System#\e[0m"
	echo " "

	echo " "
	echo -e "\e[31mPlease select your option-\e[0m"
	echo " "
	echo -e "\e[34m1) Install Software Development Packages\e[0m"
	echo -e "\e[32m2) Install Code & Text Editors\e[0m"
	echo -e "\e[36m3) Install Web Browsers\e[0m"
	echo -e "\e[95m4) Install Media Players\e[0m"
	echo -e "\e[96m5) Exit the installer script\e[0m"
	echo " "
	read option

	case "$option" in
		1)	
			while true ; do
			echo -e -e "\e[31mSoftware Develoment Package Installation selected.\e[0m"
			echo -e -e "\e[31mPlease select the package to be installed>>>>\e[0m"
			echo " "

			echo " "
        	echo -e "\e[34m1) Install Python Packages\e[0m"
	    	echo -e "\e[32m2) Install Java Packages\e[0m"
	    	echo -e "\e[36m3) Install PHP Packages\e[0m"
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

				p4)echo -e "\e[31mExit to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				break
				;;
			esac
			done
			;;
		2)	
			while true ; do
			echo -e -e "\e[31mCode & Text Editor Installation selected.\e[0m"
			echo -e -e "\e[31mPlease select the editor to be installed>>>>\e[0m"
			echo " "

			echo " "
        	echo -e "\e[34m1) Install Vim Editor\e[0m"
	    	echo -e "\e[32m2) Install NotePad++ Editor\e[0m"
	    	echo -e "\e[36m3) Install VS Code Editor\e[0m"
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

				e4)echo -e "\e[31mExit to Main Menu  selected.\nPlease wait, processing your request...\e[0m"
				Return
				;;
			esac
			done
			;;
                
		3)  #echo -e "\e[31m installation selected.\nPlease wait, processing your installation...\e[0m"
                ssh
                ;;
		4)  #echo -e "\e[31minstallation selected.\nPlease wait, processing your installation...\e[0m"
                dhcp
                ;;
		5)  #echo -e "\e[31mExit option selected.\nExiting, Please wait...\e[0m"
                exit 0
                ;;
		*)
                echo -e "\e[31mInvalid selection, please try again.\e[0m"
                
                ;;
	esac
done
