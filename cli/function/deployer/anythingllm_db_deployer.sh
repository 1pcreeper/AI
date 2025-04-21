#!/bin/bash

function anythingllm_db_deployer() {
    if [ -e "./docker/dockerfile/anythingllm_db/sql" ]; then
        rm -rf "./docker/dockerfile/anythingllm_db/sql";
    fi
    cp -r "./database/anythingllm_db/sql" "./docker/dockerfile/anythingllm_db/sql";
}

export -f anythingllm_db_deployer;


