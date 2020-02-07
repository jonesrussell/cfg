#!/bin/zsh

# Install xclip
sudo apt install xclip

# Send xclip's selection to clipboard by default
echo 'alias xclip="xclip -selection clipboard"' >> ${HOME}/.zshrc

source ${HOME}/.zshrc

# du -hd 1 -t 100M

