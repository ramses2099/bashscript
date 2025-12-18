#!/bin/bash

package=htopxs

sudo apt install $package >> package_isntall_results.log

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is availabe here:"
    which $package
else
    echo "$package failed to install"
fi