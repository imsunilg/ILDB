CREATE INDEX IF NOT EXISTS ix_refresh_user ON auth.refresh_tokens(user_id);
CREATE INDEX IF NOT EXISTS ix_customer_email ON customer.customers(email);
CREATE INDEX IF NOT EXISTS ix_quotes_customer ON quote.quotes(customer_id, created_at DESC);
CREATE INDEX IF NOT EXISTS ix_quotes_product ON quote.quotes(product_id);
CREATE INDEX IF NOT EXISTS ix_audit_created ON audit.audit_log(created_at DESC);
