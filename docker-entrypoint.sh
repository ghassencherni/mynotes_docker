#!/bin/bash

flask db init
RESULT=$?
if [ $RESULT -eq 0 ]; then
  echo success
else
  echo "DB already configured"; exit 0
fi

sleep 5
# Migrate the database
flask db migrate
RESULT=$?
if [ $RESULT -eq 0 ]; then
  echo success
else
  echo "DB already configured"; exit 0
fi
sleep 5

# Upgrade the dababase
flask db upgrade 
exit 0

exec "$@"
