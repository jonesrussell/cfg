#!/bin/bash

display_usage() {
	COMMAND="${0##*/}"
	echo "Usage: ${COMMAND} [alias] [command]"
    echo -e "ali saug sudo apt upgrade -y"
}

# Display usage if argument is "--help" or "-h"
if [ "$1" = "--help" ] ||  [ "$1" = "-h" ] ; then
	display_usage
	exit 0
fi

# Ensure alias is provided
if [ -z "$1" ] ; then
	echo -e "An alias name must be provided.\n"
	display_usage
	exit 1
fi

# Ensure alias is provided
if [ -z "$2" ] ; then
	echo -e "A command must be provided.\n"
	display_usage
	exit 1
fi

FILENAME="${HOME}/.oh-my-zsh/custom/zaliases.zsh"

echo alias $1=\"${@:2}\" >> "${FILENAME}"

