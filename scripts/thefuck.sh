#!/bin/bash

`` Installs thefuck
``
`` "Magnificent app which corrects your previous console command."

# Upgrade python
sudo apt install python3-dev python3-pip python3-setuptools -y

# Install thefuck
sudo pip3 install thefuck

# Setup alias
echo 'eval $(thefuck --alias)' >> ${HOME}/.zshrc

source ${HOME}/.zshrc

