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
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***

***REMOVED***
***REMOVED***
***REMOVED***
***REMOVED***
EOF
source "${HOME}/.env.home"

# Create local directories
mkdir -p ${LOCAL}
mkdir -p ${LOCAL_BIN}
mkdir -p ${LOCAL_SHARE}
mkdir -p ${LOCAL_CUSTOM}
mkdir -p ${DEV}
mkdir -p ${DEV_SHELL}
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

INSTALL_SCRIPTS="${REPO}/scripts/install"
CUSTOM_SCRIPTS="${REPO}/scripts/custom"

sudo bash ${REPO}/scripts/initial.sh

# Run software install scripts
bash ${INSTALL_SCRIPTS}/composer.sh
bash ${INSTALL_SCRIPTS}/cgr.zsh
bash ${INSTALL_SCRIPTS}/drush.sh
bash ${INSTALL_SCRIPTS}/oh-my-zsh.sh
bash ${INSTALL_SCRIPTS}/thefuck.sh

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


