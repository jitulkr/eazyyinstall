#!/bin/bash
update(){
	sudo apt-get update -y && apt-get upgrade -y
	}


while  true
do
	echo -e "\e[33m#####################################################\e[0m"
	echo -e "\e[33m#\e[0m            \e[38;5;41mWelcome to EazyyInstall Script\e[0m            \e[33m#"
	echo -e "\e[33m#####################################################\e[0m"
	echo " "
	echo -e  "\e[38;5;32m#Author: JitulKumarL & Luknu Lomri#\e[0m"
	echo -e  "\e[95m#Software Installation Script#\e[0m"
	echo " "

	echo " "
	echo -e "\e[31mPlease select your option-\e[0m"
	echo " "
	echo -e "\e[34m1) Install Software Development Packages\e[0m"
	echo -e "\e[32m2) Install Code Editors\e[0m"
	echo -e "\e[36m3) Install Web Browsers\e[0m"
	echo -e "\e[95m4) Install Media Players\e[0m"
	echo -e "\e[96m5) Exit the installer script\e[0m"
	echo " "
	read option

	case "$option" in
		1)echo -e -e "\e[31mSoftware Develoment Package Installation selected.\e[0m"
            	#echo -e "\e[34m1) Install Python Packages\e[0m"
	        #echo -e "\e[32m2) Install Code Editors\e[0m"
	        #echo -e "\e[36m3) Install Web Browsers\e[0m"
	        #echo -e "\e[95m4) Install Media Players\e[0m"
	        #echo -e "\e[96m5) Exit the installer script\e[0m"
        #echo -e "\e[31mHTTP installation selected.\nPlease wait, processing your installation...\e[0m"
		http

		;;
		2)  #echo -e "\e[31minstallation selected.\nPlease wait, processing your installation...\e[0m"
                ftp
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
