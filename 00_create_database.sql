-- Run connected to the "postgres" maintenance database.
SELECT 'CREATE DATABASE "ILPortal" ENCODING ''UTF8'''
WHERE NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'ILPortal')\gexec
