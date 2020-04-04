#!/bin/zsh

sudo apt-get install software-properties-common -y


sudo apt-add-repository -y ppa:rael-gc/rvm \
  && sudo apt-get update \
  && sudo apt-get install rvm -y
