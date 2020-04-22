#!/bin/bash

COMPOSER=$(which composer)
$COMPOSER create-project drupal-composer/drupal-project:8.x-dev $@ --no-interaction
