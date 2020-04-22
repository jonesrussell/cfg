#!/bin/bash

// @TODO check for existance of composer
COMPOSER=$(which composer)
// @TODO check for arguments
$COMPOSER create-project drupal-composer/drupal-project:8.x-dev $@ --no-interaction
