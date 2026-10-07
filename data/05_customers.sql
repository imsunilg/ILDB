--
-- PostgreSQL database dump
--

\restrict BYbZNdegiLDBG8GWE7sJMDCtAwIeytbPwA2JuhSYa6tjCggAhqEvCLPPcVMbDYw

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
-- Data for Name: customers; Type: TABLE DATA; Schema: customer; Owner: -
--

INSERT INTO customer.customers (id, user_id, full_name, email, phone, date_of_birth, created_at) VALUES ('65cfb096-20b6-4930-9e7f-c7a913b6af06', '63d79902-b1fe-4ff6-9cdb-c782e4717e58', 'Test User', 't1739224489@example.com', NULL, NULL, '2026-10-06 17:37:05.937461+00') ON CONFLICT DO NOTHING;
INSERT INTO customer.customers (id, user_id, full_name, email, phone, date_of_birth, created_at) VALUES ('932d91df-4d39-4584-ab2a-481658708a85', '8c33e104-f10b-4bd8-808c-31f9173e00a5', 'Demo Customer', 'customer@demo.local', NULL, NULL, '2026-10-06 17:52:41.877458+00') ON CONFLICT DO NOTHING;
INSERT INTO customer.customers (id, user_id, full_name, email, phone, date_of_birth, created_at) VALUES ('050f199c-b164-480c-bc62-dcd24f266dc1', '4c795372-e183-4b9c-854c-101979587c72', 'System Administrator', 'admin@demo.local', NULL, NULL, '2026-10-06 17:55:09.227561+00') ON CONFLICT DO NOTHING;
INSERT INTO customer.customers (id, user_id, full_name, email, phone, date_of_birth, created_at) VALUES ('74060c49-27b4-4fc9-951b-08d6d707090b', '1ed5b2db-f3a6-42e3-8db1-7e20b76dbe75', 'Demo Agent', 'agent@demo.local', NULL, NULL, '2026-10-06 17:55:10.307269+00') ON CONFLICT DO NOTHING;
INSERT INTO customer.customers (id, user_id, full_name, email, phone, date_of_birth, created_at) VALUES ('99349497-1057-455d-8ca9-06827812133a', 'b3b1a4cf-e296-4968-8d04-a23cd78525b0', 'Demo Underwriter', 'underwriter@demo.local', NULL, NULL, '2026-10-06 17:55:11.24193+00') ON CONFLICT DO NOTHING;
INSERT INTO customer.customers (id, user_id, full_name, email, phone, date_of_birth, created_at) VALUES ('c6d42280-a6f5-48fd-ba66-8ce55295252a', '0464bfa3-5c52-488b-91eb-f61112a314d6', 'Demo Manager', 'manager@demo.local', NULL, NULL, '2026-10-06 17:55:12.093297+00') ON CONFLICT DO NOTHING;


--
-- PostgreSQL database dump complete
--

\unrestrict BYbZNdegiLDBG8GWE7sJMDCtAwIeytbPwA2JuhSYa6tjCggAhqEvCLPPcVMbDYw

