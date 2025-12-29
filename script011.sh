#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/update.log
errorlog=/var/log/updater_error.log

check_exit_status(){
    if [ $? -ne 0 ]
    then
        echo "An error occurred, please check the $errorlog file."
    fi
}

if grep -q "Ubuntu" $release_file
then
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status()
    sudo apt upgrade -y 1>>$logfile 2>>$errorlog
    check_exit_status()
fi