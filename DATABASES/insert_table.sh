#!/bin/bash

db="$1"
table="$2"
shift 2
data="$*"

if [ -z "$db" ] || [ -z "$table" ] || [ -z "$data" ]; then
  echo "Database,table and data are required"
  exit 1
fi

if ! [ -f "$db.txt" ]; then
  echo "Database does not  exist"
  exit 1
fi

echo "** $data **" >> "$db.txt"
