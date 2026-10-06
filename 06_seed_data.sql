INSERT INTO product.products(code,name,description,base_rate) VALUES
 ('MOTOR','Motor Insurance','Cover for cars and light vehicles',0.0350),
 ('HOME','Home Insurance','Buildings and contents cover',0.0012),
 ('TRAVEL','Travel Insurance','Single-trip travel cover',0.0400),
 ('LIABILITY','Public Liability','Business public liability cover',0.0025)
ON CONFLICT (code) DO NOTHING;
INSERT INTO product.coverages(product_id,code,name,loading_pct)
SELECT p.id,c.code,c.name,c.pct FROM product.products p JOIN (VALUES
 ('MOTOR','THIRD_PARTY','Third party only',-30),('MOTOR','COMPREHENSIVE','Comprehensive',0)) c(pcode,code,name,pct) ON c.pcode=p.code
ON CONFLICT (product_id,code) DO NOTHING;
INSERT INTO common.countries(code,name,travel_risk_factor) VALUES
 ('GB','United Kingdom',1.00),('US','United States',2.50),('FR','France',1.10),('DE','Germany',1.10),
 ('ES','Spain',1.15),('AU','Australia',1.80),('IN','India',1.60),('JP','Japan',1.30)
ON CONFLICT (code) DO NOTHING;

-- ===== Roles, permissions (production-safe; no users are created here) =====
INSERT INTO auth.roles(code,name) VALUES
 ('ADMIN','Administrator'),('AGENT','Agent'),('UNDERWRITER','Underwriter'),('MANAGER','Manager'),('CUSTOMER','Customer')
ON CONFLICT (code) DO NOTHING;

INSERT INTO auth.permissions(code,description) VALUES
 ('dashboard.view','View dashboard'),
 ('motor.quote','Create motor quotes'),('home.quote','Create home quotes'),
 ('travel.quote','Create travel quotes'),('liability.quote','Create liability quotes'),
 ('customers.view','View customers'),
 ('quotes.view','View all quotes'),('quotes.own','View own quotes'),
 ('underwriting.view','View underwriting queue'),
 ('users.manage','View and manage users'),('roles.manage','View roles and permissions'),
 ('reports.view','View reports'),
 ('profile.view','View own profile'),('policies.view','View own policies')
ON CONFLICT (code) DO NOTHING;

INSERT INTO auth.role_permissions(role_id, permission_id)
SELECT r.id, p.id FROM (VALUES
 ('ADMIN','dashboard.view'),('ADMIN','motor.quote'),('ADMIN','home.quote'),('ADMIN','travel.quote'),('ADMIN','liability.quote'),
 ('ADMIN','customers.view'),('ADMIN','quotes.view'),('ADMIN','users.manage'),('ADMIN','roles.manage'),('ADMIN','reports.view'),('ADMIN','underwriting.view'),
 ('AGENT','dashboard.view'),('AGENT','motor.quote'),('AGENT','home.quote'),('AGENT','travel.quote'),('AGENT','liability.quote'),
 ('AGENT','customers.view'),('AGENT','quotes.view'),
 ('UNDERWRITER','dashboard.view'),('UNDERWRITER','quotes.view'),('UNDERWRITER','underwriting.view'),('UNDERWRITER','reports.view'),
 ('UNDERWRITER','travel.quote'),('UNDERWRITER','liability.quote'),
 ('MANAGER','dashboard.view'),('MANAGER','quotes.view'),('MANAGER','customers.view'),('MANAGER','reports.view'),
 ('MANAGER','travel.quote'),('MANAGER','liability.quote'),
 ('CUSTOMER','dashboard.view'),('CUSTOMER','profile.view'),('CUSTOMER','quotes.own'),('CUSTOMER','policies.view')
) m(role_code, perm_code)
JOIN auth.roles r ON r.code = m.role_code JOIN auth.permissions p ON p.code = m.perm_code
ON CONFLICT DO NOTHING;

-- upgrade path: move the old auth.users.role column into auth.user_roles
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM information_schema.columns
             WHERE table_schema='auth' AND table_name='users' AND column_name='role') THEN
    INSERT INTO auth.user_roles(user_id, role_id)
    SELECT u.id, r.id FROM auth.users u JOIN auth.roles r ON r.code = upper(u.role)
    ON CONFLICT DO NOTHING;
    ALTER TABLE auth.users DROP COLUMN role;
  END IF;
END $$;
