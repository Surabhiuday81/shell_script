#!/bin/bash
db="$1"
table="$2"

if [ -z "$db" ] || [ -z "$table" ]; then
  echo "Database and table required"
  exit 1
fi

if ! [ -f "$db.txt" ]; then
  echo "Database does not exist"
  exit 1
fi

grep -A 1000 "** $table **" "$db.txt" | tail -n +2

