#!/bin/bash

flask db init
sleep 5

# Migrate the database
flask db migrate  
exec "$@"


