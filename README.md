# ILDB

PostgreSQL scripts for the `ILPortal` database (used only by **ILAPI**). All scripts are idempotent and safe to re-run.

| Script | Purpose |
|---|---|
| `00_create_database.sql` | creates the database if missing (`psql -v dbname=...`) |
| `01_database.sql` | extensions (pgcrypto, uuid-ossp, citext), UTC |
| `02_schema.sql` | schemas: auth, customer, product, motor, home, travel, liability, quote, common, audit |
| `03_tables.sql` | tables incl. users, roles, permissions, quotes |
| `04_indexes.sql`, `05_functions.sql`, `07_views.sql` | indexes, functions, views |
| `06_seed_data.sql` | products, countries, roles, permissions (safe for production) |
| `08_demo_users.sql` | **development/demo users only**, bcrypt-hashed passwords |

```
$env:PGPASSWORD = "<password>"      # never saved in a file
./run_all.ps1                       # or ./run_all.sh
```
`ILPORTAL_ENV=Production` skips `08_demo_users.sql`; `ILPORTAL_DB` overrides the database name.

Demo accounts: admin/Admin@123, agent/Agent@123, underwriter/Underwriter@123, manager/Manager@123, customer/Customer@123.
