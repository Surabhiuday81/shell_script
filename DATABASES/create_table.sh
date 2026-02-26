#!/bin/bash

db="$1"
table="$2"
shift 2
fields="$*"

if [ -z "$db" ] || [ -z "$table" ] || [ -z "$fields" ]; then
  echo "Database, table name and fields required"
  exit 1
fi

if ! [ -f "$db.txt" ]; then
  echo "Database does not exist"
  exit 1
fi

echo "** $table **" >> "$db.txt"
echo "** $fields **" >> "$db.txt"
