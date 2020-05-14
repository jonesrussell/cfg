#!/bin/bash

URL=https://github.com/cheat/cheat/releases/download/3.8.0
FILE=cheat-linux-amd64.gz

wget -O - ${URL}/${FILE} | gunzip -c > ~/.local/bin/cheat

chmod u+x ~/.local/bin/cheat

