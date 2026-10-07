--
-- PostgreSQL database dump
--

\restrict wYDfWnBDbDpEx1YV2nM4ViAthHpou8TR8uBjAspbvETZrjXgAucqpaxb01ZYe5r

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
-- Data for Name: countries; Type: TABLE DATA; Schema: common; Owner: -
--

INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('GB', 'United Kingdom', 1.00) ON CONFLICT DO NOTHING;
INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('US', 'United States', 2.50) ON CONFLICT DO NOTHING;
INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('FR', 'France', 1.10) ON CONFLICT DO NOTHING;
INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('DE', 'Germany', 1.10) ON CONFLICT DO NOTHING;
INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('ES', 'Spain', 1.15) ON CONFLICT DO NOTHING;
INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('AU', 'Australia', 1.80) ON CONFLICT DO NOTHING;
INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('IN', 'India', 1.60) ON CONFLICT DO NOTHING;
INSERT INTO common.countries (code, name, travel_risk_factor) VALUES ('JP', 'Japan', 1.30) ON CONFLICT DO NOTHING;


--
-- PostgreSQL database dump complete
--

\unrestrict wYDfWnBDbDpEx1YV2nM4ViAthHpou8TR8uBjAspbvETZrjXgAucqpaxb01ZYe5r

