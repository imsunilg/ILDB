#!/usr/bin/env bash
# Requires PGPASSWORD in the environment.
set -euo pipefail
: "${PGPASSWORD:?PGPASSWORD is not set. Run: export PGPASSWORD=<password>}"
cd "$(dirname "$0")"
H=(-h localhost -p 5432 -U postgres -v ON_ERROR_STOP=1)
DB="${ILPORTAL_DB:-ILPortal}"
FILES=(01_database 02_schema 03_tables 04_indexes 05_functions 06_seed_data 07_views)
if [ "${ILPORTAL_ENV:-}" = "Production" ]; then echo "Production: demo users NOT seeded."; else FILES+=(08_demo_users); fi
export PGOPTIONS="-c client_min_messages=warning"
psql "${H[@]}" -d postgres -v dbname="$DB" -f 00_create_database.sql
for f in "${FILES[@]}"; do
  psql "${H[@]}" -d "$DB" -f "$f.sql"
done
echo "ILPortal database scripts applied successfully."
psql "${H[@]}" -d "$DB" -c "SELECT schema_name FROM information_schema.schemata WHERE schema_name IN ('auth','customer','product','motor','home','travel','liability','quote','common','audit') ORDER BY schema_name;"
