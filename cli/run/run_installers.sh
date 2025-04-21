#!/bin/bash

source ./cli/function/checker/apt_checker.sh
source ./cli/function/checker/sudo_checker.sh
source ./cli/function/installer/docker_installer.sh

if [ $(sudo_checker) -ne "1" ]; then
    echo "Need Admin permission";
    exit 1;
fi

sudo apt update
sudo apt install which

if [ $(apt_checker docker) -ne "1" ]; then
    docker_installer
fi