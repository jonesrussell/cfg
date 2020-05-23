#!/bin/zsh

TERMINUS_DIR=${SHARE}/terminus

mkdir -p ${TERMINUS_DIR} 

cd /tmp

curl -O https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar

php installer.phar --bin-dir=${BIN}/ --install-dir=${TERMINUS_DIR} install

