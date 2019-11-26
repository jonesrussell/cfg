#!/bin/bash

if [ ! -x "$(command -v composer)" ]; then
    SETUP="/tmp/composer-setup.php"
    # From https://getcomposer.org/download/
    php -r "copy('https://getcomposer.org/installer', '${SETUP}');"
    php -r "if (hash_file('sha384', '${SETUP}') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('${SETUP}'); } echo PHP_EOL;"
    php ${SETUP} --install-dir="${LOCAL_BIN}" --filename=composer
    php -r "unlink('${SETUP}');"

    echo 'export PATH="$(composer config -g home)/vendor/bin:$PATH"' >> "${HOME}/.zshrc"
fi
