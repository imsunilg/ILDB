-- Run connected to the "postgres" maintenance database. Usage: psql -v dbname=ILPortal -f 00_create_database.sql
SELECT format('CREATE DATABASE %I ENCODING ''UTF8''', :'dbname')
WHERE NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = :'dbname')\gexec
