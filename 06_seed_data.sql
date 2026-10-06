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
