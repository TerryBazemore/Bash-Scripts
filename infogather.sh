#!/bin/bash
clear
echo
#Some Variables
IP=`ifconfig | grep 'broadcast' |awk '{print $2}'`
MAC=`ifconfig | grep 'ether' | awk '{print $2}'`
process=`ps -aux | grep 'root' | wc -l`
processs=`ps -aux | grep 'Debian-+' | wc -l`
fullname="$fname $lname"
user=$(whoami)
break="============================================================================="
echo $break
echo
echo "Hello, Welcome to the User Identification area."
echo  -n "What is your First name: "
read fname
echo
echo  -n "What is your Last name: "
read lname
echo
echo $break
echo -e 'Hello,' "\e[1;34m$fname $lname\e[0m"! 'You are logged in as '"\e[1;31m$user\e[0m"
echo
echo "Lets begin processing some local data for you."


#Commented out for a later time total=($process+$processs)

echo
echo $fullname', your information is as follows: '
echo
echo 'Your IP address is '$IP
echo 'Your MAC address is ' $MAC
echo -e 'You have ' "\e[1;36m$process\e[0m" ' processes running as ' "\e[1;31m$user\e[0m"
echo -e 'You have ' "\e[1;36m$processs\e[0m" ' processes running as ' "\e[1;31mDebian-+\e[0m"
#echo 'Total Processes running '$total
echo 'You have successfully idenitified all pertinent information for your machine.'



echo $break
echo
echo 'Now lets perform a little reconnaisance...'
read -p "Press <enter> to continue."
echo
#echo "The following processes are malicious and should be removed IMMEDIATELY."
echo 
echo 


