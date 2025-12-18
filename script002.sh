#!/bin/bash

# mynum=200

# if [ $mynum -eq 200 ]
# then
#     echo "The condition is true"
# fi

if [ -f ~/myfile ]
then
    echo "The file exists"
else
    echo "The file dosen't exists"
fi