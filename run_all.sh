#!/usr/bin/env bash
# Requires PGPASSWORD in the environment.
set -euo pipefail
: "${PGPASSWORD:?PGPASSWORD is not set. Run: export PGPASSWORD=<password>}"
cd "$(dirname "$0")"
H=(-h localhost -p 5432 -U postgres -v ON_ERROR_STOP=1)
psql "${H[@]}" -d postgres -f 00_create_database.sql
for f in 01_database 02_schema 03_tables 04_indexes 05_functions 06_seed_data 07_views; do
  psql "${H[@]}" -d ILPortal -f "$f.sql"
done
echo "ILPortal database scripts applied successfully."
psql "${H[@]}" -d ILPortal -c "SELECT schema_name FROM information_schema.schemata WHERE schema_name IN ('auth','customer','product','motor','home','travel','liability','quote','common','audit') ORDER BY schema_name;"
