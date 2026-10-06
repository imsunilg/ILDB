-- Run connected to the target database.
CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS citext;
DO $$ BEGIN EXECUTE format('ALTER DATABASE %I SET timezone TO ''UTC''', current_database()); END $$;
