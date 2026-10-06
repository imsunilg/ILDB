-- Tables (idempotent)
CREATE TABLE IF NOT EXISTS auth.users (
  id            uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  email         citext NOT NULL UNIQUE,
  username      citext,
  password_hash text   NOT NULL,
  full_name     text   NOT NULL,
  is_active     boolean NOT NULL DEFAULT true,
  created_at    timestamptz NOT NULL DEFAULT now()
);
-- upgrade path for databases created before usernames/roles tables existed
ALTER TABLE auth.users ADD COLUMN IF NOT EXISTS username citext;
UPDATE auth.users SET username = email WHERE username IS NULL;
ALTER TABLE auth.users ALTER COLUMN username SET NOT NULL;
CREATE UNIQUE INDEX IF NOT EXISTS ux_users_username ON auth.users(username);

CREATE TABLE IF NOT EXISTS auth.roles (
  id   serial PRIMARY KEY,
  code text NOT NULL UNIQUE,
  name text NOT NULL
);
CREATE TABLE IF NOT EXISTS auth.permissions (
  id          serial PRIMARY KEY,
  code        text NOT NULL UNIQUE,
  description text NOT NULL
);
CREATE TABLE IF NOT EXISTS auth.user_roles (
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  role_id int  NOT NULL REFERENCES auth.roles(id),
  PRIMARY KEY (user_id, role_id)
);
CREATE TABLE IF NOT EXISTS auth.role_permissions (
  role_id       int NOT NULL REFERENCES auth.roles(id) ON DELETE CASCADE,
  permission_id int NOT NULL REFERENCES auth.permissions(id) ON DELETE CASCADE,
  PRIMARY KEY (role_id, permission_id)
);
CREATE TABLE IF NOT EXISTS auth.refresh_tokens (
  id         uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id    uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  token_hash text NOT NULL UNIQUE,
  expires_at timestamptz NOT NULL,
  revoked_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS auth.handoff_tokens (
  id         uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id    uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  token_hash text NOT NULL UNIQUE,
  expires_at timestamptz NOT NULL,
  used_at    timestamptz,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS customer.customers (
  id         uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id    uuid UNIQUE REFERENCES auth.users(id) ON DELETE SET NULL,
  full_name  text NOT NULL,
  email      citext NOT NULL,
  phone      text,
  date_of_birth date,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS common.countries (
  code char(2) PRIMARY KEY,
  name text NOT NULL,
  travel_risk_factor numeric(4,2) NOT NULL DEFAULT 1.00
);
CREATE TABLE IF NOT EXISTS product.products (
  id        serial PRIMARY KEY,
  code      text NOT NULL UNIQUE CHECK (code IN ('MOTOR','HOME','TRAVEL','LIABILITY')),
  name      text NOT NULL,
  description text,
  base_rate numeric(10,4) NOT NULL,
  is_active boolean NOT NULL DEFAULT true
);
CREATE TABLE IF NOT EXISTS product.coverages (
  id         serial PRIMARY KEY,
  product_id int NOT NULL REFERENCES product.products(id),
  code       text NOT NULL,
  name       text NOT NULL,
  loading_pct numeric(5,2) NOT NULL DEFAULT 0,
  UNIQUE (product_id, code)
);
CREATE SEQUENCE IF NOT EXISTS quote.quote_number_seq START 1000;
CREATE TABLE IF NOT EXISTS quote.quotes (
  id           uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  quote_number text NOT NULL UNIQUE,
  customer_id  uuid NOT NULL REFERENCES customer.customers(id),
  product_id   int  NOT NULL REFERENCES product.products(id),
  status       text NOT NULL DEFAULT 'quoted' CHECK (status IN ('draft','quoted','accepted','expired','cancelled')),
  base_premium numeric(12,2) NOT NULL,
  tax          numeric(12,2) NOT NULL,
  total_premium numeric(12,2) NOT NULL,
  created_at   timestamptz NOT NULL DEFAULT now(),
  expires_at   timestamptz NOT NULL DEFAULT now() + interval '30 days'
);
CREATE TABLE IF NOT EXISTS motor.vehicle_quotes (
  quote_id uuid PRIMARY KEY REFERENCES quote.quotes(id) ON DELETE CASCADE,
  make text NOT NULL, model text NOT NULL, year int NOT NULL,
  vehicle_value numeric(12,2) NOT NULL, driver_age int NOT NULL,
  claims_last_5_years int NOT NULL DEFAULT 0, coverage_code text NOT NULL
);
CREATE TABLE IF NOT EXISTS home.property_quotes (
  quote_id uuid PRIMARY KEY REFERENCES quote.quotes(id) ON DELETE CASCADE,
  property_type text NOT NULL, postcode text NOT NULL, year_built int NOT NULL,
  rebuild_value numeric(12,2) NOT NULL, contents_value numeric(12,2) NOT NULL DEFAULT 0
);
CREATE TABLE IF NOT EXISTS travel.trip_quotes (
  quote_id uuid PRIMARY KEY REFERENCES quote.quotes(id) ON DELETE CASCADE,
  destination_code char(2) NOT NULL REFERENCES common.countries(code),
  start_date date NOT NULL, end_date date NOT NULL,
  travellers int NOT NULL CHECK (travellers > 0), trip_cost numeric(12,2) NOT NULL
);
CREATE TABLE IF NOT EXISTS liability.liability_quotes (
  quote_id uuid PRIMARY KEY REFERENCES quote.quotes(id) ON DELETE CASCADE,
  business_type text NOT NULL, annual_turnover numeric(14,2) NOT NULL,
  employees int NOT NULL DEFAULT 0, limit_amount numeric(14,2) NOT NULL
);
CREATE TABLE IF NOT EXISTS audit.audit_log (
  id bigserial PRIMARY KEY,
  user_id uuid, action text NOT NULL, entity text, entity_id text, details jsonb,
  created_at timestamptz NOT NULL DEFAULT now()
);
