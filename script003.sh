#!/bin/bash

command=htop

# if [ -f $command ]
if command -v $command
then
    echo "$command is available, let's run it...."
else
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt -y $command
fi

$command