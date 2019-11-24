#/bin/bash

# Ensure running with sudo
if [ "${SUDO_USER}" = "" ]; then
	echo "Must be run with sudo."
	exit 1
fi

sudo apt update
sudo apt upgrade -y
sudo apt install \
    build-essentials git wget zip unzip -y
