#!/bin/bash

# Modified from https://github.com/wekan/wekan/wiki/Export-Docker-Mongo-Data

SCRIPTPATH="/tmp"
DATE=$(date +%Y-%m-%d-%H-%M)
BACKUP_DIR="${SCRIPTPATH}/backups/${DATE}"
FILENAME="${BACKUP_DIR}.tgz"
mkdir -p "${BACKUP_DIR}"

docker ps -a | grep 'wekan-db' &> /dev/null

if [ $? = 0 ]; then
  docker exec -t wekan-db bash -c "rm -fr /dump/* ; mongodump -o /dump/"
  docker cp wekan-db:/dump "${BACKUP_DIR}"
  tar -cvzf "${FILENAME}" "${BACKUP_DIR}"
  if [ -f "${FILENAME}" ]; then
    # rm -fr ${BACKUP_DIR}
    find "${SCRIPTPATH}/backups/" -name "*.tgz" -mtime +7 -delete
  fi
else
  echo "wekan-db container is not running"
  exit 1
fi

