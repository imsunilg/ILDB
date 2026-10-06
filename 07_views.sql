CREATE OR REPLACE VIEW quote.v_quote_summary AS
SELECT q.id, q.quote_number, q.status, q.base_premium, q.tax, q.total_premium, q.created_at, q.expires_at,
       p.code AS product_code, p.name AS product_name, c.id AS customer_id, c.full_name AS customer_name, c.email AS customer_email
FROM quote.quotes q JOIN product.products p ON p.id=q.product_id JOIN customer.customers c ON c.id=q.customer_id;
