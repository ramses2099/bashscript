#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
    echo "What is your favorite Linux distribution?"

    echo "1 - Arch"
    echo "2 - Debian"
    echo "3 - Ubuntu"
    echo "4 - Exit"

    read distro;

    case $distro in
      1) echo "Arch is a rolling release.";;
      2) echo "Debian is a rolling release.";;
      3) echo "Ubuntu is a rolling release.";;
      4) finished=1;;
      *) echo "you didn't enter an appropiate choice"
    esac
done
    
echo "Thank you for using script."