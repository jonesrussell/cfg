#!/bin/bash

LOCAL="~/.local"
LOCAL_BIN="$LOCAL/bin"
LOCAL_SHARE="$LOCAL/share"
LOCAL_CUSTOM="$LOCAL_SHARE/custom"

# Create local directories
mkdir -p $LOCAL_BIN
mkdir -p $LOCAL_SHARE
mkdir -p $LOCAL_CUSTOM

# Setup scripts
cp scripts/database-backup.sh $LOCAL_CUSTOM
chmod u+x $LOCAL_CUSTOM/database-backup.sh
# cd $LOCAL_BIN
ln -s $LOCAL_CUSTOM/database-backup.sh $LOCAL_BIN/database-backup

