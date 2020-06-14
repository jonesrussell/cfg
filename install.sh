#!/bin/bash

#
# Detect OS
#
case "$OSTYPE" in
  solaris*) echo "SOLARIS" ;;
  darwin*)  echo "OSX" ;;
  linux*)   echo "LINUX" ;;
  bsd*)     echo "BSD" ;;
  msys*)    echo "WINDOWS" ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

# Update base system, install git
sudo apt update \
    && sudo apt upgrade -y

# Clone the "cfg" repository
REPO="${DEV_SHELL}/cfg"
if [ ! -d "${REPO}" ]; then
    git clone https://github.com/jonesrussell/cfg.git ${REPO}
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
