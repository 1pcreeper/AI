#!/bin/bash

function sudo_checker() {
    if sudo -l &>/dev/null; then
        echo "1"
    else
        echo "0"
    fi
}

export -f sudo_checker;