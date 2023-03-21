#!/bin/bash
function makedirs () {
echo "1. create dirs"
cd ~
pwd
mkdir -p Cloud/{services/CloudTrail,Region/{Availability_Zone,LocalZone}}

echo "2. go to localzone in abs"
cd ${PWD}/Cloud/Region/Availability_Zone

echo "3. add new dir cloudwatch in services"
mkdir ../../services/cloudwatch

echo "4. add dir wavelengthzone"
mkdir ../LocalZone/wavelengthzone

echo "5. echo text to cloudtrail"
echo "The Difference between CloudWatch and CloudTrail: CloudWatch
focuses on the activity of AWS services and resources, reporting
on their health and performance. On the other hand, CloudTrail is
a log of all actions that have taken place inside your AWS
environment" > ../../services/CloudTrail/trailvswatch

echo "6. copy trailvswatch to cloudwatch"
cp ../../services/CloudTrail/trailvswatch ../../services/cloudwatch/

echo "7. print my home path"
echo ~

echo "8. delete Cloud"
echo "ATTENTION DELETING!!!!!!!!"
sleep 3
rm -rvf ~/Cloud

}

function scriptU () {
flag=1
while [[ $flag -ne 0 ]]
	do
		echo -e "\n\n\n***************************"
		echo          "***************************"
		echo          "MAKE YOUR CHOISE RIGHT NOW!"
		echo          "***************************"
		echo          "***************************"
		echo "1. Show system information"
		echo "2. Update packages"	
		echo "3. Reboot"
		echo -e "4. QUIT\n\n\n\n\n"
			read -p "take your choice: " c
				case $c in
					1) uname -a ;;
					2) sudo pacman -Syu ;;
					3) shutdown -r now ;;
					4) flag=0 ;;
					*) echo "Enter nums from 1 to 4 ONLY!" ; sleep 3 ;;
				esac
	
	done	
main

}

function main () {
while :
	do
		echo -e "\n\n\n***************************"
		echo          "***************************"
		echo          "MAKE YOUR CHOISE RIGHT NOW!"
		echo          "***************************"
		echo          "***************************"
		echo "1. dir script"
		echo "2. Another menu"	
		echo "3. QUIT"
			read -p "take your choice: " choice
				case $choice in
					1) makedirs ;;
					2) scriptU ;;
					3) break ;;
					*) echo "Enter nums from 1 to 3 ONLY!" ; sleep 3 ;;
				esac

	done
}

main
