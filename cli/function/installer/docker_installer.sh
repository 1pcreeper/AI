#!/bin/bash

function docker_installer() {

    # Install required packages
    echo "Installing required packages..."
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

    # Add Docker’s official GPG key
    echo "Adding Docker’s GPG key..."
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    # Set up the stable Docker repository
    echo "Setting up Docker repository..."
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

    # Update package index again
    echo "Updating package index again..."
    sudo apt update

    # Install Docker
    echo "Installing Docker..."
    sudo apt install -y docker-ce

    # Enable Docker service
    echo "Enabling Docker service..."
    sudo systemctl start docker
    sudo systemctl enable docker

    # Install Docker Compose
    echo "Installing Docker Compose..."
    DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)
    sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose

    # Verify installation
    echo "Verifying installations..."
    docker --version
    docker-compose --version

    # Install Docker Desktop (optional)
    echo "Installing Docker Desktop..."
    sudo apt install -y docker-desktop

    echo "Installation completed successfully!"
}
export -f docker_installer;