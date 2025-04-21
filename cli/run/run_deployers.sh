#!/bin/bash

source ./cli/function/deployer/ollama_deployer.sh
source ./cli/function/deployer/anythingllm_db_deployer.sh

ollama_deployer
anythingllm_db_deployer