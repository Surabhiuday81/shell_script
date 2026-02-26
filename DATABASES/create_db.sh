#!/bin/bash

db_name="$1"

if [ -z "$db_name" ]; then
  echo "Database name required"
  exit 1
fi

if [ -f "$db_name.txt" ]; then
  echo "Database already exists"
  exit 1
fi

touch "$db_name.txt"

echo "Database $db_name created"
