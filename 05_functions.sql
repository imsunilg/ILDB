CREATE OR REPLACE FUNCTION quote.fn_next_quote_number() RETURNS text
LANGUAGE sql AS $$ SELECT 'IL-' || to_char(now(),'YYYY') || '-' || lpad(nextval('quote.quote_number_seq')::text, 6, '0') $$;

CREATE OR REPLACE FUNCTION product.fn_active_products()
RETURNS TABLE(id int, code text, name text, description text, base_rate numeric)
LANGUAGE sql STABLE AS $$ SELECT p.id, p.code, p.name, p.description, p.base_rate FROM product.products p WHERE p.is_active ORDER BY p.id $$;

CREATE OR REPLACE FUNCTION quote.fn_expire_quotes() RETURNS int
LANGUAGE plpgsql AS $$
DECLARE n int;
BEGIN
  UPDATE quote.quotes SET status='expired' WHERE status='quoted' AND expires_at < now();
  GET DIAGNOSTICS n = ROW_COUNT; RETURN n;
END $$;
