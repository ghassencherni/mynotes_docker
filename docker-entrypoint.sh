#!/bin/bash

echo "DB HOST is $DB_HOST"
# Migrate the database
flask db migrate
sleep 5

# Upgrade the dababase
flask db upgrade

