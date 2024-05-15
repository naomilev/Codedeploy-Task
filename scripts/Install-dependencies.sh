#!/bin/bash

# check if Docker is installed
if ! command -v docker &> /dev/null; then
    # install Docker
    echo "Docker is not installed. Installing Docker..."
    if command -v yum &> /dev/null; then
        sudo yum install -y docker
    elif command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y docker.io
    else
        echo "Unsupported package manager. Please install Docker manually."
        exit 1
    fi
fi
