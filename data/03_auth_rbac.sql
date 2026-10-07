--
-- PostgreSQL database dump
--

\restrict aVX5gc9OZn7BMalZgLFkvmyd5khaiWFddg4YdfNUN9cp1OgW3P0s3YGzERVDkXT

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
-- Data for Name: permissions; Type: TABLE DATA; Schema: auth; Owner: -
--

INSERT INTO auth.permissions (id, code, description) VALUES (1, 'dashboard.view', 'View dashboard') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (2, 'motor.quote', 'Create motor quotes') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (3, 'home.quote', 'Create home quotes') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (4, 'travel.quote', 'Create travel quotes') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (5, 'liability.quote', 'Create liability quotes') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (6, 'customers.view', 'View customers') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (7, 'quotes.view', 'View all quotes') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (8, 'quotes.own', 'View own quotes') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (9, 'underwriting.view', 'View underwriting queue') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (10, 'users.manage', 'View and manage users') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (11, 'roles.manage', 'View roles and permissions') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (12, 'reports.view', 'View reports') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (13, 'profile.view', 'View own profile') ON CONFLICT DO NOTHING;
INSERT INTO auth.permissions (id, code, description) VALUES (14, 'policies.view', 'View own policies') ON CONFLICT DO NOTHING;


--
-- Data for Name: roles; Type: TABLE DATA; Schema: auth; Owner: -
--

INSERT INTO auth.roles (id, code, name) VALUES (1, 'ADMIN', 'Administrator') ON CONFLICT DO NOTHING;
INSERT INTO auth.roles (id, code, name) VALUES (2, 'AGENT', 'Agent') ON CONFLICT DO NOTHING;
INSERT INTO auth.roles (id, code, name) VALUES (3, 'UNDERWRITER', 'Underwriter') ON CONFLICT DO NOTHING;
INSERT INTO auth.roles (id, code, name) VALUES (4, 'MANAGER', 'Manager') ON CONFLICT DO NOTHING;
INSERT INTO auth.roles (id, code, name) VALUES (5, 'CUSTOMER', 'Customer') ON CONFLICT DO NOTHING;


--
-- Data for Name: role_permissions; Type: TABLE DATA; Schema: auth; Owner: -
--

INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (5, 1) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (4, 1) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (3, 1) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (2, 1) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 1) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (2, 2) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 2) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (2, 3) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 3) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (4, 4) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (3, 4) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (2, 4) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 4) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (4, 5) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (3, 5) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (2, 5) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 5) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (4, 6) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (2, 6) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 6) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (4, 7) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (3, 7) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (2, 7) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 7) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (5, 8) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (3, 9) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 10) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 11) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (4, 12) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (3, 12) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (1, 12) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (5, 13) ON CONFLICT DO NOTHING;
INSERT INTO auth.role_permissions (role_id, permission_id) VALUES (5, 14) ON CONFLICT DO NOTHING;


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: -
--

SELECT pg_catalog.setval('auth.permissions_id_seq', 42, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: -
--

SELECT pg_catalog.setval('auth.roles_id_seq', 15, true);


--
-- PostgreSQL database dump complete
--

\unrestrict aVX5gc9OZn7BMalZgLFkvmyd5khaiWFddg4YdfNUN9cp1OgW3P0s3YGzERVDkXT
