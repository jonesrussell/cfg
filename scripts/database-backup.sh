#!/bin/bash

# Create a backup of the Drupal database
#
# To be used with https://github.com/jonesrussell/vessel

if [ -f vessel ]; then
    # Load up .env
    set -o allexport
    [[ -f .env  ]] && source .env
    set +o allexport

    DIR="docroot/sites/default/files/backups"
    FILE="database-$(/bin/date +"%Y_%m_%d_%I_%M_%p").sql"

    if [ ! -d "$DIR" ]; then
        /bin/mkdir -p "$DIR"
    fi

    ./vessel drush cr

    ./vessel exec mysql mysqldump -u $DB_USERNAME -p$DB_PASSWORD $DB_DATABASE > "$DIR/$FILE"

    /bin/gzip -f "$DIR/$FILE"

    echo "Database backup: $DIR/$FILE.gz"
fi;

