#!/bin/bash

display_usage() {
	COMMAND="${0##*/}"
	echo "Usage: ${COMMAND} [username]"
}

# Display usage if argument is "--help" or "-h"
if [ "$1" = "--help" ] ||  [ "$1" = "-h" ] ; then
	display_usage
	exit 0
fi

# Ensure username is provided
if [ -z "$1" ] ; then
	echo -e "A username must be provided.\n"
	display_usage
	exit 1
fi

USERNAME="${1}"
USERHOME="/home/${USERNAME}"

if [ ! -d "${USERHOME}" ] ; then
	echo "${USERHOME} does not exist."
	exit 1
fi

tar \
	--exclude="${USERHOME}/.atom" \
	--exclude="${USERHOME}/.cache" \
	--exclude="${USERHOME}/.config/chromium" \
	--exclude="${USERHOME}/.config/opera" \
	--exclude="${USERHOME}/.config/Code/Cache" \
	--exclude="${USERHOME}/.config/Code/CachedData" \
	--exclude="${USERHOME}/.dbus" \
	--exclude="${USERHOME}/.electron" \
	--exclude="${USERHOME}/.electron-gyp" \
	--exclude="${USERHOME}/.foo" \
	--exclude="${USERHOME}/.fnm" \
	--exclude="${USERHOME}/.gconf" \
	--exclude="${USERHOME}/.local/share/Postman" \
	--exclude="${USERHOME}/.npm" \
	--exclude="${USERHOME}/.oh-my-zsh" \
	--exclude="${USERHOME}/.thunderbird" \
	--exclude="${USERHOME}/.vscode" \
	--exclude="${USERHOME}/node_modules" \
	--exclude="${USERHOME}/snap" \
	--exclude="${USERHOME}/Downloads" \
	--exclude="${USERHOME}/Dropbox" \
	--exclude="${USERHOME}/Music" \
	--exclude="${USERHOME}/Videos" \
	-zcvf "/tmp/${USERNAME}-home.tgz" \
	"${USERHOME}"

