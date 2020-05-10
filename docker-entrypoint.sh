#!/bin/bash

echo "DB HOST is $DB_HOST";
flask db init || true
sleep 5

# Migrate the database
flask db migrate || true
sleep 5

# Upgrade the dababase
flask db upgrade || true

