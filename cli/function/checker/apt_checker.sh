#!/bin/bash

function apt_checker() {
    local apt_name=$1;
    if [ ! -z $(which $apt_name) ]; then
        echo "1"; 
    else
        echo "0";
    fi
}

export -f apt_checker;