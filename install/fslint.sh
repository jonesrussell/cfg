#!/bin/bash

# fslint
# Not in 20.04 LTS repositories / Python 2 deprecated stuff

if [ ! -r /etc/os-release ]; then
 exit 1
fi

. /etc/os-release

if [ "${VERSION}" = "20.04 LTS (Focal Fossa)" ]; then
    mkdir -p /tmp/fslint
    cd /tmp/fslint
    wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-6_amd64.deb
    wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-glade2_2.24.0-6_amd64.deb
    wget http://archive.ubuntu.com/ubuntu/pool/universe/f/fslint/fslint_2.46-1_all.deb

    # sudo apt-get install ./*.deb
    exit
fi

