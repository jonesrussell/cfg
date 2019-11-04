#!/bin/bash

##
# Use 'sshfs' to mount a few directories from the server
#
# TODO:
# * Check if directories exist
# * Remount if connection lost
##

# Hostname of server
SERVER="bserve.galaxy.lan"

# User with ssh and r/w access to server directories to mount
USERNAME="russell"

# Directories on server to mount
SHARE_DEV="/home/russell/Development"
SHARE_USB_80="/mnt/usb-80"
SHARE_USB_500="/mnt/usb-500/media"
SHARE_MEDIA="/srv/media"

# Local directories for mounts
DIR_DEV="/mnt/${SERVER}/dev"
DIR_USB_80="/mnt/${SERVER}/usb-80"
DIR_USB_500="/mnt/${SERVER}/usb-500"
DIR_MEDIA="/mnt/${SERVER}/media"

sshfs "${USERNAME}@${SERVER}:${SHARE_DEV}" "${DIR_DEV}"
echo "${SERVER}:${SHARE_DEV} -> ${DIR_DEV}"

sshfs "${USERNAME}@${SERVER}:${SHARE_USB_80}" "${DIR_USB_80}"
echo "${SERVER}:${SHARE_USB_80} -> ${DIR_USB_80}"

sshfs "${USERNAME}@${SERVER}:${SHARE_USB_500}" "${DIR_USB_500}"
echo "${SERVER}:${SHARE_USB_500} -> ${DIR_USB_500}"

sshfs "${USERNAME}@${SERVER}:${SHARE_MEDIA}" "${DIR_MEDIA}"
echo "${SERVER}:${SHARE_MEDIA} -> ${DIR_MEDIA}"

echo ""

# echo $(df -h|grep "bserve.galaxy.lan")
df -h|head -n 1
df -h|grep "bserve.galaxy.lan"

