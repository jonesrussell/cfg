#!/bin/zsh

CMD=${LOCAL_BIN}/drupal
curl https://drupalconsole.com/installer -L -o ${CMD}
chmod u+x ${CMD}

echo "Installed Drupal Console to ${CMD}"
