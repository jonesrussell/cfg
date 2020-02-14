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
# SHARE_USB_80="/mnt/usb-80"
SHARE_USB_500="/mnt/usb-500/media"
SHARE_MEDIA="/srv/media"
SHARE_TRANSMISSION="/srv/transmission"

# Local directories for mounts
DIR_DEV="/mnt/${SERVER}/dev"
# DIR_USB_80="/mnt/${SERVER}/usb-80"
DIR_USB_500="/mnt/${SERVER}/usb-500"
DIR_MEDIA="/mnt/${SERVER}/media"
DIR_TRANSMISSION="/mnt/${SERVER}/transmission"

if [ ! -x "$(command -v sshfs)" ]; then
    sudo apt update
    sudo apt install sshfs -y
fi

if [ ! -d "${DIR_TRANSMISSION}" ]; then
	# Ensure mount points exist
	sudo mkdir -p "${DIR_DEV}" \
		# "${DIR_USB_80}" \
		"${DIR_USB_500}" \
		"${DIR_MEDIA}" \
		"${DIR_TRANSMISSION}"

	# Set permission
	sudo chown "${USERNAME}" "${DIR_DEV}" \
		# "${DIR_USB_80}" \
		"${DIR_USB_500}" \
		"${DIR_MEDIA}" \
		"${DIR_TRANSMISSION}"
fi

# TODO: Check if already mounted
# foo
if [ "$(ls -A ${DIR_DEV})" ]; then
	echo "${DIR_DEV} is not empty, will not mount ssh://${SERVER}:${SHARE_DEV}"
else
	# TODO: sshfs error handling
	sshfs "${USERNAME}@${SERVER}:${SHARE_DEV}" "${DIR_DEV}"

	echo "${DIR_DEV} -> ${SERVER}:${SHARE_DEV}"
fi

# foo
# if [ "$(ls -A ${DIR_USB_80})" ]; then
#	echo "${DIR_USB_80} is not empty, will not mount ssh://${SERVER}:${SHARE_USB_80}"
# else
	# TODO: sshfs error handling
# 	sshfs "${USERNAME}@${SERVER}:${SHARE_USB_80}" "${DIR_USB_80}"

# 	echo "${DIR_USB_80} -> ${SERVER}:${SHARE_USB_80}"
# fi

# foo
if [ "$(ls -A ${DIR_USB_500})" ]; then
	echo "${DIR_USB_500} is not empty, will not mount ssh://${SERVER}:${SHARE_USB_500}"
else
	# TODO: sshfs error handling
	sshfs "${USERNAME}@${SERVER}:${SHARE_USB_500}" "${DIR_USB_500}"

	echo "${DIR_USB_500} -> ${SERVER}:${SHARE_USB_500}"
fi

# Media
if [ "$(ls -A ${DIR_MEDIA})" ]; then
	echo "${DIR_MEDIA} is not empty, will not mount ssh://${SERVER}:${SHARE_MEDIA}"
else
	# TODO: sshfs error handling
	sshfs "${USERNAME}@${SERVER}:${SHARE_MEDIA}" "${DIR_MEDIA}"
	echo "${DIR_MEDIA} -> ${SERVER}:${SHARE_MEDIA}"
fi

# Media
if [ "$(ls -A ${DIR_TRANSMISSION})" ]; then
	echo "${DIR_TRANSMISSION} is not empty, will not mount ssh://${SERVER}:${SHARE_TRANSMISSION}"
else
	# TODO: sshfs error handling
	sshfs "${USERNAME}@${SERVER}:${SHARE_TRANSMISSION}" "${DIR_TRANSMISSION}"
	echo "${DIR_TRANSMISSION} -> ${SERVER}:${SHARE_TRANSMISSION}"
fi



echo ""

# echo $(df -h|grep "bserve.galaxy.lan")
df -h|head -n 1
df -h|grep "bserve.galaxy.lan"

