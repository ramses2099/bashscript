#!/bin/bash

release_file=/etc/os-release

if grep -q "Ubuntu" $release_file
then
  sudo apt updte
  sudo apt upgrade
fi
