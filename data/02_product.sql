--
-- PostgreSQL database dump
--

\restrict LcQKxwbrGMX39k3MIhUykP5ELrpsfr2ItATLXnWOIc5UVSNE1nHFku3gMsbCSQm

-- Dumped from database version 16.11
-- Dumped by pg_dump version 16.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: products; Type: TABLE DATA; Schema: product; Owner: -
--

INSERT INTO product.products (id, code, name, description, base_rate, is_active) VALUES (1, 'MOTOR', 'Motor Insurance', 'Cover for cars and light vehicles', 0.0350, true) ON CONFLICT DO NOTHING;
INSERT INTO product.products (id, code, name, description, base_rate, is_active) VALUES (2, 'HOME', 'Home Insurance', 'Buildings and contents cover', 0.0012, true) ON CONFLICT DO NOTHING;
INSERT INTO product.products (id, code, name, description, base_rate, is_active) VALUES (3, 'TRAVEL', 'Travel Insurance', 'Single-trip travel cover', 0.0400, true) ON CONFLICT DO NOTHING;
INSERT INTO product.products (id, code, name, description, base_rate, is_active) VALUES (4, 'LIABILITY', 'Public Liability', 'Business public liability cover', 0.0025, true) ON CONFLICT DO NOTHING;


--
-- Data for Name: coverages; Type: TABLE DATA; Schema: product; Owner: -
--

INSERT INTO product.coverages (id, product_id, code, name, loading_pct) VALUES (1, 1, 'THIRD_PARTY', 'Third party only', -30.00) ON CONFLICT DO NOTHING;
INSERT INTO product.coverages (id, product_id, code, name, loading_pct) VALUES (2, 1, 'COMPREHENSIVE', 'Comprehensive', 0.00) ON CONFLICT DO NOTHING;


--
-- Name: coverages_id_seq; Type: SEQUENCE SET; Schema: product; Owner: -
--

SELECT pg_catalog.setval('product.coverages_id_seq', 10, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: product; Owner: -
--

SELECT pg_catalog.setval('product.products_id_seq', 20, true);


--
-- PostgreSQL database dump complete
--

\unrestrict LcQKxwbrGMX39k3MIhUykP5ELrpsfr2ItATLXnWOIc5UVSNE1nHFku3gMsbCSQm
