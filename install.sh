#!/bin/bash

mkdir -p ~/.local/{bin,share}
mkdir -p ~/.local/share/custom

cp scripts/database-backup.sh ~/.local/share/custom/
chmod u+x ~/.local/share/custom/database-backup.sh
cd ~/.local/bin/
ln -s ../share/custom/database-backup.sh database-backup

