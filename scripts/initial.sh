#/bin/bash

# Ensure running with sudo
if [ "${SUDO_USER}" = "" ]; then
	echo "Must be run with sudo."
	exit 1
fi

sudo apt install \
    build-essential curl php wget zip unzip zsh -y
