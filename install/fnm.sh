#!/bin/bash

curl -fsSL https://github.com/Schniz/fnm/raw/master/.ci/install.sh | bash -s -- --install-dir "${SHARE}/fnm" --skip-shell
