#!/bin/bash

# Create the migration plan 
flask db init

# Migrate the database
flask db migrate

# Upgrade the dababase
flask db upgrade
