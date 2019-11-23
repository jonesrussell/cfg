#!/bin/bash

FILENAME="${HOME}/.zshrc"

echo $@ >> "${FILENAME}"

source $FILENAME

