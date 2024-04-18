#!/usr/bin/env bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Add microsoft's repository to apt
    sudo apt update
    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

    # install
    sudo apt install code
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install --cask visual-studio-code
else
    echo "Unsupported platform, exiting"
    return 1
fi
