#!/usr/bin/env bash

# Full path of this script
# SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" >/dev/null 2>&1 && pwd  )"

# Define user's local directories
export LOCAL="${HOME}/.local"
***REMOVED***
***REMOVED***
***REMOVED***

INSTALL_SCRIPTS="scripts/install"
USER_SCRIPTS="scripts/user"

# Create local directories
mkdir -p ${LOCAL}
mkdir -p ${LOCAL_BIN}
mkdir -p ${LOCAL_SHARE}
mkdir -p ${LOCAL_CUSTOM}

# Run software install scripts
bash ${INSTALL_SCRIPTS}/drush.sh

# Setup user scripts
ORIG_FILE="${USER_SCRIPTS}/database-backup.sh"
TARGET_FILE="${LOCAL_CUSTOM}/database-backup.sh"
TARGET_LINK="${LOCAL_BIN}/database-backup"
if [ ! -f "${TARGET_FILE}"  ]; then
    cp ${ORIG_FILE} ${TARGET_FILE}
    chmod u+x ${TARGET_FILE}
    ln -s ${TARGET_FILE} ${TARGET_LINK}
fi

