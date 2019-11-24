#!/bin/bash

# Full path of this script
# SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null 2>&1 && pwd  )"

# Ensure running with sudo
if [ "${SUDO_USER}" = "" ]; then
	echo "Must be run with sudo."
	exit 1
fi

# Define user's local directories
export LOCAL="${HOME}/.local"
export LOCAL_BIN="${LOCAL}/bin"
export LOCAL_SHARE="${LOCAL}/share"
export LOCAL_CUSTOM="${LOCAL_SHARE}/custom"

# Create local directories
mkdir -p ${LOCAL}
mkdir -p ${LOCAL_BIN}
mkdir -p ${LOCAL_SHARE}
mkdir -p ${LOCAL_CUSTOM}

sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y

git clone https://github.com/jonesrussell/home-directory.git "${LOCAL_SHARE}/home-directory"

INSTALL_SCRIPTS="scripts/install"
# USER_SCRIPTS="scripts/user"

# Run software install scripts
bash ${INSTALL_SCRIPTS}/initial.sh
bash ${INSTALL_SCRIPTS}/drush.sh
bash ${INSTALL_SCRIPTS}/thefuck.sh

# Setup user scripts
ORIG_FILE="${USER_SCRIPTS}/database-backup.sh"
TARGET_FILE="${LOCAL_CUSTOM}/database-backup.sh"
TARGET_LINK="${LOCAL_BIN}/database-backup"
if [ ! -f "${TARGET_FILE}"  ]; then
    cp ${ORIG_FILE} ${TARGET_FILE}
    chmod u+x ${TARGET_FILE}
    ln -s ${TARGET_FILE} ${TARGET_LINK}
fi

##
## Install oh-my-zsh plugins
##

# Set the plugins directory
ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH/custom}

# Safe rm
git clone --recursive --depth 1 https://github.com/mattmc3/zsh-safe-rm.git $ZSH_CUSTOM/zsh-safe-rm

