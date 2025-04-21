#!/bin/bash

function ollama_deployer() {
    if [ -e "./docker/dockerfile/ollama/dist" ]; then
        rm -rf "./docker/dockerfile/ollama/dist";
    fi
    cp -r "./ollama/src" "./docker/dockerfile/ollama/dist";
}

export -f ollama_deployer;