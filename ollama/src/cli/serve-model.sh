#!/bin/sh
ollama serve &
sleep 5;
ollama create main -f /app/model-file/ModelFile;