#!/bin/bash

flask db init
exec "$@"

sleep 5
# Migrate the database
flask db migrate
exec "$@"

sleep 5

# Upgrade the dababase
flask db upgrade 
exec "$@"
