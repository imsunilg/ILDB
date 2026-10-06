-- DEMO / DEVELOPMENT USERS ONLY. Never run against production (run_all skips this when ILPORTAL_ENV=Production).
-- Passwords are hashed with bcrypt (pgcrypto); no plain text is stored in the database.
WITH d(username, email, display_name, role_code, pw) AS (VALUES
 ('admin',       'admin@demo.local',       'System Administrator', 'ADMIN',       'Admin@123'),
 ('agent',       'agent@demo.local',       'Demo Agent',           'AGENT',       'Agent@123'),
 ('underwriter', 'underwriter@demo.local', 'Demo Underwriter',     'UNDERWRITER', 'Underwriter@123'),
 ('manager',     'manager@demo.local',     'Demo Manager',         'MANAGER',     'Manager@123'),
 ('customer',    'customer@demo.local',    'Demo Customer',        'CUSTOMER',    'Customer@123')
), ins AS (
  INSERT INTO auth.users(username, email, password_hash, full_name)
  SELECT username, email, crypt(pw, gen_salt('bf', 11)), display_name FROM d
  ON CONFLICT DO NOTHING
  RETURNING id, username
)
INSERT INTO auth.user_roles(user_id, role_id)
SELECT ins.id, r.id FROM ins JOIN d ON d.username = ins.username JOIN auth.roles r ON r.code = d.role_code
ON CONFLICT DO NOTHING;

INSERT INTO customer.customers(user_id, full_name, email)
SELECT id, full_name, email FROM auth.users WHERE username = 'customer'
ON CONFLICT (user_id) DO NOTHING;
