#/bin/bash

# Ensure running with sudo
if [ "${SUDO_USER}" = "" ]; then
	echo "Must be run with sudo."
	exit 1
fi

apt install \
    build-essential curl git php ruby \
    wget unzip zip zsh -y

