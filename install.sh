#!/bin/bash

# Full path of this script
# SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null 2>&1 && pwd  )"

# Ensure running with sudo
#if [ "${SUDO_USER}" = "" ]; then
#	echo "Must be run with sudo."
#	exit 1
#fi

# Define user's local directories
cat <<- "EOF" > "${HOME}/.env.home"
export LOCAL="${HOME}/.local"
***REMOVED***
***REMOVED***
***REMOVED***
export DEV="${HOME}/Development"
***REMOVED***
EOF
source "${HOME}/.env.home"

# Create local directories
mkdir -p ${LOCAL}
mkdir -p ${LOCAL_BIN}
mkdir -p ${LOCAL_SHARE}
mkdir -p ${LOCAL_CUSTOM}
mkdir -p ${DEV_SHELL}

# Update base system, install git
sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y

# Clone the "home-directory" repository
REPO="${DEV_SHELL}/home-directory"
if [ ! -d "${REPO}" ]; then
    git clone https://github.com/jonesrussell/home-directory.git ${REPO}
fi

INSTALL_SCRIPTS="${REPO}/scripts/install"
CUSTOM_SCRIPTS="${REPO}/scripts/custom"

sudo bash ${REPO}/scripts/initial.sh

# Run software install scripts
bash ${INSTALL_SCRIPTS}/composer.sh
zsh ${INSTALL_SCRIPTS}/cgr.zsh
bash ${INSTALL_SCRIPTS}/drush.sh
bash ${INSTALL_SCRIPTS}/thefuck.sh
bash ${INSTALL_SCRIPTS}/oh-my-zsh.sh

# Setup custom scripts
ORIG_FILE="${CUSTOM_SCRIPTS}/database-backup.sh"
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

