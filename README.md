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

## Data export (current database contents)
`data/0*.sql` are `INSERT` scripts for the data currently in the database (`pg_dump --column-inserts --on-conflict-do-nothing`), in dependency order: countries, products, roles/permissions, users, customers, quotes (token tables and the audit log are not exported).

    $env:PGPASSWORD = '<password>'
    ./run_all.ps1        # schema (+ seed); use ILPORTAL_ENV=Production to skip demo users
    ./load_data.ps1      # loads data/*.sql; safe to re-run

`data/04_auth_users.sql` contains password hashes, so it is git-ignored and stays on this machine. Re-create it with:

    pg_dump -h localhost -U postgres -d ILPortal --data-only --column-inserts --on-conflict-do-nothing -t auth.users -t auth.user_roles -f data/04_auth_users.sql
