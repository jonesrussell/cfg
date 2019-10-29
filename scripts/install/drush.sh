#!/usr/bin/env bash

################
# Drupal Stuff #
################

# Drush Launcher
echo "Installing Drush Launcher..."

TARGET_FILE="${LOCAL_SHARE}/drush.phar"
if [ ! -f "${TARGET_FILE}"  ]; then
    wget -O ${TARGET_FILE} https://github.com/drush-ops/drush-launcher/releases/download/0.6.0/drush.phar
    chmod u+x ${TARGET_FILE}

    if [ ! -f "${TARGET_FILE}"  ]; then
        # Create a symlink
        ln -s ${TARGET_FILE} ${LOCAL_BIN}/drush
        # Reload $PATH
        hash -r
    fi
fi

drush --version
