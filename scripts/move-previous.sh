#!/bin/bash

BACKUP_DIR=$(mktemp -d)
mv /var/www/html $BACKUP_DIR