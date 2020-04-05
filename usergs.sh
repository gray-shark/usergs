#!/bin/bash

#colors
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
pink=`tput setaf 5`
cyan=`tput setaf 6`
white=`tput setaf 7`
gray=`tput setaf 8`
lightred=`tput setaf 9`
green43=`tput setaf 43`
purple=`tput setaf 12`
graygreen=`tput setaf 65`
blue33=`tput setaf 33`
red196=`tput setaf 196`
red126=`tput setaf 126`
green36=`tput setaf 36`
gray59=`tput setaf 59`
blue45=`tput setaf 45`

clear

#settings ctrl-c
trap ctrl_c INT
ctrl_c() {
clear
echo
printf "$red126 E";
sleep 0.1
printf "$red126 X";
sleep 0.1
printf "$red126 I";
sleep 0.1
printf "$red126 T ";
sleep 0.1
printf "$red126 .";
sleep 0.3
printf "$red126 .";
sleep 0.3
printf "$red126 .";
sleep 1
echo ; echo
echo "$purple Thanks For Using gs Tools. (*^‿^*)"
sleep 1.75
echo "$white "
exit
}

#checknet
echo
ping -c 1 www.google.com > /dev/null 2>&1
if [ "$?" -eq 0 ]; then
echo "${blue33} Checking internet: ${green43}CONNECTED ${purple}(◕‿◕)"
else
echo "${blue33} Checking internet: ${red196}DISCONNECTED ${gray}(ᗒᗣᗕ)"; echo; echo;
printf "so sorry, this script need to active " | lolcat ; printf "${lightgreen}INTERNET. ${red126}(｡╯︵╰｡)"
echo "$white "
exit
fi
sleep 1
clear

#update && upgrade
printf "$cyan updating AND upgrading  "
printf "${cyan}. "; sleep 0.3
printf "${cyan}. "; sleep 0.3
printf "${cyan}. "; sleep 1.5
echo ; echo "${yellow} "
apt update && apt upgrade -y
sleep 0.5
clear

#installing ruby && ruby-gem
printf "$cyan installing ruby  "
printf "${cyan}. "; sleep 0.3
printf "${cyan}. "; sleep 0.3
printf "${cyan}. "; sleep 1.5
echo ""; echo ; echo "${red}This section of the script maybe long, so ${blue45}\"please wait\" " ; echo "${yellow} "
sleep 2.4
echo ""
apt install ruby -y && pkg install ruby clang make libffi -y
apt install autoconf build-essential -y
gem install jekyll
gem install lolcat
apt-get install cmatrix -y
apt-get install sl

#starting
clear
sleep 1

#menu-1
echo "$blue 88888 88888"; sleep 0.3
echo "$blue 8   8 8    "; sleep 0.3
echo "$blue 88888 88888"; sleep 0.3
echo "$blue     8     8"; sleep 0.3
echo "$blue 88888888888"; sleep 0.3
echo ""
echo "$yellow please ENTER name:"
echo
read -p "...? " name
sleep 0.4
clear
sl | lolcat
clear

figlet -f big hey $name | lolcat
sleep 1.7
clear
toilet -f big -F gay grayshark
echo ; echo
echo "$lightgreen please select your favorite text for first line in termux"
echo

pause(){
  clear
  printf "thanks for using grayshark scripts." | lolcat
  printf " $red ♡" ; printf "(ღ≧⌣≦ღ)" | lolcat ; printf "${red}♡"
  sleep 1.5
  echo ; echo "$white "
  exit
}

one(){
echo "PS1='\$ '" > /data/data/com.termux/files/usr/etc/bash.bashrc
sleep 1
clear
pause
}

two(){
echo "PS1='\# '" > /data/data/com.termux/files/usr/etc/bash.bashrc
sleep 1
clear
pause
}

three(){
echo "PS1='root@termux:~# '" > /data/data/com.termux/files/usr/etc/bash.bashrc
sleep1
clear
pause
}

four(){
echo "PS1='${name} '" > /data/data/com.termux/files/usr/etc/bash.bashrc
sleep 1
clear
pause
}

five(){
echo "PS1='${name}\$ '" > /data/data/com.termux/files/usr/etc/bash.bashrc
sleep 1
clear
pause
}

six(){
echo "PS1='${name}\# '" > /data/data/com.termux/files/usr/etc/bash.bashrc
sleep 1
clear
pause
}

more(){
echo ;echo
echo "please enter your favorite text for first line. ;)"; echo
echo "${red}(* Only letters and numbers *)"
echo "$gray "
read -p ": " moretext
echo "PS1='$moretext '" > /data/data/com.termux/files/usr/etc/bash.bashrc
sleep 1
clear
pause
}

exit1(){
clear
echo
printf "$red126 E";
sleep 0.1
printf "$red126 X";
sleep 0.1
printf "$red126 I";
sleep 0.1
printf "$red126 T ";
sleep 0.1
printf "$red126 .";
sleep 0.3
printf "$red126 .";
sleep 0.3
printf "$red126 .";
sleep 1
echo ; echo
echo "$purple Thanks For Using gs Tools. (*^‿^*)"
sleep 1.75
echo "$white "
exit
}

show_menus(){
        echo "$green  [ 1 ] \$"; sleep 0.1
        echo "$green  [ 2 ] line number (1, 2, 3,...)"; sleep 0.1
        echo "$green  [ 3 ] root@termux:~#"; sleep 0.1
        echo "$green  [ 4 ] ${name} "; sleep 0.1
        echo "$green  [ 5 ] ${name}$ "; sleep 0.1
        echo "$green  [ 6 ] ${name}# "; sleep 0.1
	echo "$green  [ 7 ] more "; sleep 0.1
      	echo "$green  [ 8 ] exit "
}

read_options(){
        local choice
        echo "$cyan [1-7]#? "
        read choice
        case $choice in
                1) one ;;
                2) two ;;
                3) three ;;
                4) four ;;
                5) five ;;
                6) six ;;
		7) more ;;
                8) exit1 ;;
                *) echo "$red Error..." && sleep 1.5
        esac
}

while true
do
        show_menus
        read_options
done
