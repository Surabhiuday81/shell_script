#!/bin/bash

db="$1"
table="$2"
keyword="$3"

if [ -z "$db" ] || [ -z "$table" ] || [ -z "$keyword" ]; then
  echo "Database, table and keyword are required"
  exit 1
fi

if ! [ -f "$db.txt" ]; then
  echo "Database does not exist"
  exit 1
fi

grep -v "$keyword" "$db.txt" > tmp.txt && mv tmp.txt "$db.txt"
