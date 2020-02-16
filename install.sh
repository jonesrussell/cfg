#!/bin/bash

# Full path of this script
# SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null 2>&1 && pwd  )"

# Ensure running with sudo
#if [ "${SUDO_USER}" = "" ]; then
#	echo "Must be run with sudo."
#	exit 1
#fi

# Detect OS
case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" ;;
  linux*)   echo "LINUX" ;;
  bsd*)     echo "BSD" ;;
  msys*)    echo "WINDOWS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

exit 0

# Define user's local directories
cat <<- "EOF" > "${HOME}/.env.home"
# Personal /usr/local
export LOCAL="${HOME}/russell/.local"
export LOCAL_BIN="${LOCAL}/bin"
export LOCAL_SHARE="${LOCAL}/share"
export LOCAL_CUSTOM="${LOCAL_SHARE}/custom"

# Development / Programming
export DEV="${HOME}/Development"
export DEVS="${DEV}/Shell"
export DEVDO="${DEV}/DigitalOcean"
export DEVR="${DEV}/Research"

export DEVPC="${DEVDO}/content.russelljones.ca-drupal"
export DEVPF="${DEVDO}/www.russelljones.ca-react"
export DEVH="${DEVS}/home-directory"
EOF
source "${HOME}/.env.home"

# Create local directories
mkdir -p ${LOCAL}
mkdir -p ${LOCAL_BIN}
mkdir -p ${LOCAL_SHARE}
mkdir -p ${LOCAL_CUSTOM}
mkdir -p ${DEV}
mkdir -p ${DEVS}
mkdir -p ${DEVDO}

# Update base system, install git
sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y

# Clone the "home-directory" repository
REPO="${DEV_SHELL}/home-directory"
if [ ! -d "${REPO}" ]; then
    git clone https://github.com/jonesrussell/home-directory.git ${REPO}
fi

INSTALL_SCRIPTS="${REPO}/install"
CUSTOM_SCRIPTS="${REPO}/custom"

sudo bash ${REPO}/initial.sh

# Run software install scripts
for f in ${INSTALL_SCRIPTS}/*.zsh; do
  zsh "$f" -H
done

##
## Install oh-my-zsh plugins
##

# Set the plugins directory
ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH/custom}

# Install plugins
bash ${INSTALL_SCRIPTS}/zsh-safe-rm.sh
bash ${INSTALL_SCRIPTS}/zsh-autosuggestions.sh

##
## Setup custom scripts
##
ORIG_FILE="${CUSTOM_SCRIPTS}/database-backup.sh"
TARGET_FILE="${LOCAL_CUSTOM}/database-backup.sh"
TARGET_LINK="${LOCAL_BIN}/database-backup"
if [ ! -f "${TARGET_FILE}"  ]; then
    cp ${ORIG_FILE} ${TARGET_FILE}
    chmod u+x ${TARGET_FILE}
    ln -s ${TARGET_FILE} ${TARGET_LINK}
fi


