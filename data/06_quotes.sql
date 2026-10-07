--
-- PostgreSQL database dump
--

\restrict vbVFZeiKzt69cE3h4tfh0R0Ff3Jnyivf7rGOs3dsFvgWKRbsLNK0NcZL7kKGDP4

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
-- Data for Name: quotes; Type: TABLE DATA; Schema: quote; Owner: -
--

INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('bd219df6-4010-42b9-a069-db7a5fdc8bfe', 'IL-2026-001001', '65cfb096-20b6-4930-9e7f-c7a913b6af06', 1, 'quoted', 700.00, 70.00, 770.00, '2026-10-06 17:37:06.536694+00', '2026-11-05 17:37:06.536694+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('d571361b-d0fb-4e0c-bb89-391c8f604d76', 'IL-2026-001002', '65cfb096-20b6-4930-9e7f-c7a913b6af06', 3, 'quoted', 475.00, 47.50, 522.50, '2026-10-06 17:37:06.62389+00', '2026-11-05 17:37:06.62389+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('554cb99a-4249-4f4a-8612-21a75b022c70', 'IL-2026-001003', '050f199c-b164-480c-bc62-dcd24f266dc1', 1, 'quoted', 350.00, 35.00, 385.00, '2026-10-06 17:55:09.227561+00', '2026-11-05 17:55:09.227561+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('86ab8522-6a46-4e7e-9681-3ea6db686a7e', 'IL-2026-001004', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 17:55:09.350839+00', '2026-11-05 17:55:09.350839+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('d60e9c12-e931-44a3-9f3c-a4befb508c53', 'IL-2026-001005', '74060c49-27b4-4fc9-951b-08d6d707090b', 1, 'quoted', 350.00, 35.00, 385.00, '2026-10-06 17:55:10.307269+00', '2026-11-05 17:55:10.307269+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('ebf5c895-d8d7-4dd7-b3bd-fafdf6a982f5', 'IL-2026-001006', '74060c49-27b4-4fc9-951b-08d6d707090b', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 17:55:10.349774+00', '2026-11-05 17:55:10.349774+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('f00321fa-d14f-442f-a846-22f95bb8fb18', 'IL-2026-001007', '99349497-1057-455d-8ca9-06827812133a', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 17:55:11.24193+00', '2026-11-05 17:55:11.24193+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('2c01b8fb-2858-4665-9081-3c863ce5e7e4', 'IL-2026-001008', 'c6d42280-a6f5-48fd-ba66-8ce55295252a', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 17:55:12.093297+00', '2026-11-05 17:55:12.093297+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('d3ca070e-4ab2-42ec-b55c-33db9dc8fa5b', 'IL-2026-001009', '050f199c-b164-480c-bc62-dcd24f266dc1', 1, 'quoted', 350.00, 35.00, 385.00, '2026-10-06 18:04:05.343997+00', '2026-11-05 18:04:05.343997+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('07c04df4-cc70-4d3d-828e-c8c733b1baed', 'IL-2026-001010', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:04:05.460371+00', '2026-11-05 18:04:05.460371+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('9c10da32-d2db-415c-b073-2638e8c88f4c', 'IL-2026-001011', '74060c49-27b4-4fc9-951b-08d6d707090b', 1, 'quoted', 350.00, 35.00, 385.00, '2026-10-06 18:04:06.291854+00', '2026-11-05 18:04:06.291854+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('19364bca-bb33-4cea-8082-c05add0d29d3', 'IL-2026-001012', '74060c49-27b4-4fc9-951b-08d6d707090b', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:04:06.332386+00', '2026-11-05 18:04:06.332386+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('f049b60e-0891-4c5f-9513-e46fd49759b3', 'IL-2026-001013', '99349497-1057-455d-8ca9-06827812133a', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:04:07.194077+00', '2026-11-05 18:04:07.194077+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('340b219c-1ef6-4c25-be66-ecdc27d5e297', 'IL-2026-001014', 'c6d42280-a6f5-48fd-ba66-8ce55295252a', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:04:07.998687+00', '2026-11-05 18:04:07.998687+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('c973b7ce-842b-4602-b64e-ebb4c82145fc', 'IL-2026-001015', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-06 18:34:40.493286+00', '2026-11-05 18:34:40.493286+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('179d08ae-6caf-46cd-8f01-95e24e043476', 'IL-2026-001016', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-06 18:35:27.361759+00', '2026-11-05 18:35:27.361759+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('6a939608-28e9-4c6f-a49a-ec7fe4bf739f', 'IL-2026-001017', '050f199c-b164-480c-bc62-dcd24f266dc1', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-06 18:35:28.364632+00', '2026-11-05 18:35:28.364632+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('c3f4a2f5-9cfc-4598-8d9f-ec21fa4004c0', 'IL-2026-001018', '74060c49-27b4-4fc9-951b-08d6d707090b', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-06 18:36:16.419868+00', '2026-11-05 18:36:16.419868+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('7541a48f-a5cc-4ea1-8e82-4a789ffd0d72', 'IL-2026-001019', '74060c49-27b4-4fc9-951b-08d6d707090b', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-06 18:36:17.407689+00', '2026-11-05 18:36:17.407689+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('06a2a840-0eac-4208-a1a1-d05ae1173213', 'IL-2026-001020', '99349497-1057-455d-8ca9-06827812133a', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-06 18:37:00.914787+00', '2026-11-05 18:37:00.914787+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('f1db8753-02d7-44e3-a416-37beed408b81', 'IL-2026-001021', '99349497-1057-455d-8ca9-06827812133a', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-06 18:37:01.917421+00', '2026-11-05 18:37:01.917421+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('69ee90f2-f7ee-4036-982b-66bfe416d123', 'IL-2026-001022', 'c6d42280-a6f5-48fd-ba66-8ce55295252a', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-06 18:37:45.679637+00', '2026-11-05 18:37:45.679637+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('0d4f8975-76ce-4d5c-a22c-5b15bf286e6e', 'IL-2026-001023', 'c6d42280-a6f5-48fd-ba66-8ce55295252a', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-06 18:37:46.637437+00', '2026-11-05 18:37:46.637437+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('0fb110ea-e928-45f9-82fb-ef7455036890', 'IL-2026-001024', '050f199c-b164-480c-bc62-dcd24f266dc1', 1, 'quoted', 350.00, 35.00, 385.00, '2026-10-06 18:40:28.930035+00', '2026-11-05 18:40:28.930035+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('6fc8b2c8-6dfb-46ed-a0c6-1d4d931f2887', 'IL-2026-001025', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:40:28.969703+00', '2026-11-05 18:40:28.969703+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('6db1e610-ced4-4377-9bf3-cbbb448d5f3e', 'IL-2026-001026', '74060c49-27b4-4fc9-951b-08d6d707090b', 1, 'quoted', 350.00, 35.00, 385.00, '2026-10-06 18:40:29.369996+00', '2026-11-05 18:40:29.369996+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('9b014458-42a5-4bde-9158-ab4ff09e9532', 'IL-2026-001027', '74060c49-27b4-4fc9-951b-08d6d707090b', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:40:29.390643+00', '2026-11-05 18:40:29.390643+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('5b40e731-a65e-4866-a83b-db40caf73286', 'IL-2026-001028', '99349497-1057-455d-8ca9-06827812133a', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:40:29.783327+00', '2026-11-05 18:40:29.783327+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('ec9ffcf1-ff0c-4023-9731-54d120a83c71', 'IL-2026-001029', 'c6d42280-a6f5-48fd-ba66-8ce55295252a', 3, 'quoted', 52.25, 5.23, 57.48, '2026-10-06 18:40:30.169588+00', '2026-11-05 18:40:30.169588+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('756f9169-e43f-463a-9a17-4afdbc056c35', 'IL-2026-001030', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-06 18:49:15.522643+00', '2026-11-05 18:49:15.522643+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('35b89454-7b8e-401b-b369-62a932c4fa7b', 'IL-2026-001031', '050f199c-b164-480c-bc62-dcd24f266dc1', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-06 18:49:16.462163+00', '2026-11-05 18:49:16.462163+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('05a00e6b-ff11-42cc-b24b-6cf0ab591876', 'IL-2026-001032', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-06 18:52:18.91565+00', '2026-11-05 18:52:18.91565+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('c165693b-401d-4842-88ec-3a4e0c43a1be', 'IL-2026-001033', '050f199c-b164-480c-bc62-dcd24f266dc1', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-06 18:52:19.886294+00', '2026-11-05 18:52:19.886294+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('ef177a1a-4394-4e9a-88d0-da231abdb5c2', 'IL-2026-001034', '74060c49-27b4-4fc9-951b-08d6d707090b', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-07 02:02:06.004001+00', '2026-11-06 02:02:06.004001+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('e8cdb6ef-872b-410d-a9d7-e3c2b7b5b4d2', 'IL-2026-001035', '74060c49-27b4-4fc9-951b-08d6d707090b', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-07 02:02:06.880571+00', '2026-11-06 02:02:06.880571+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('495d6969-fc40-4111-8c38-e0cbe85958e8', 'IL-2026-001036', '050f199c-b164-480c-bc62-dcd24f266dc1', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-07 02:02:56.748447+00', '2026-11-06 02:02:56.748447+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('07bcb1c6-7550-454a-9e8c-56f4fc7fbb8e', 'IL-2026-001037', '050f199c-b164-480c-bc62-dcd24f266dc1', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-07 02:02:57.676175+00', '2026-11-06 02:02:57.676175+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('371f353f-468e-4b0a-88a6-e50d3b7faf46', 'IL-2026-001038', '99349497-1057-455d-8ca9-06827812133a', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-07 02:03:40.405195+00', '2026-11-06 02:03:40.405195+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('73009565-afca-4b9e-b64a-7496264bfd11', 'IL-2026-001039', '99349497-1057-455d-8ca9-06827812133a', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-07 02:03:41.355605+00', '2026-11-06 02:03:41.355605+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('fa651505-bc80-4ed6-8b53-26400d6b5f18', 'IL-2026-001040', 'c6d42280-a6f5-48fd-ba66-8ce55295252a', 3, 'quoted', 155.10, 15.51, 170.61, '2026-10-07 02:04:23.986681+00', '2026-11-06 02:04:23.986681+00') ON CONFLICT DO NOTHING;
INSERT INTO quote.quotes (id, quote_number, customer_id, product_id, status, base_premium, tax, total_premium, created_at, expires_at) VALUES ('e248d2c2-7e5c-4c36-9766-1b6ca962cd06', 'IL-2026-001041', 'c6d42280-a6f5-48fd-ba66-8ce55295252a', 4, 'quoted', 1250.00, 125.00, 1375.00, '2026-10-07 02:04:24.921297+00', '2026-11-06 02:04:24.921297+00') ON CONFLICT DO NOTHING;


--
-- Data for Name: property_quotes; Type: TABLE DATA; Schema: home; Owner: -
--



--
-- Data for Name: liability_quotes; Type: TABLE DATA; Schema: liability; Owner: -
--

INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('6a939608-28e9-4c6f-a49a-ec7fe4bf739f', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('7541a48f-a5cc-4ea1-8e82-4a789ffd0d72', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('f1db8753-02d7-44e3-a416-37beed408b81', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('0d4f8975-76ce-4d5c-a22c-5b15bf286e6e', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('35b89454-7b8e-401b-b369-62a932c4fa7b', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('c165693b-401d-4842-88ec-3a4e0c43a1be', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('e8cdb6ef-872b-410d-a9d7-e3c2b7b5b4d2', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('07bcb1c6-7550-454a-9e8c-56f4fc7fbb8e', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('73009565-afca-4b9e-b64a-7496264bfd11', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;
INSERT INTO liability.liability_quotes (quote_id, business_type, annual_turnover, employees, limit_amount) VALUES ('e248d2c2-7e5c-4c36-9766-1b6ca962cd06', 'Retail', 500000.00, 0, 1000000.00) ON CONFLICT DO NOTHING;


--
-- Data for Name: vehicle_quotes; Type: TABLE DATA; Schema: motor; Owner: -
--

INSERT INTO motor.vehicle_quotes (quote_id, make, model, year, vehicle_value, driver_age, claims_last_5_years, coverage_code) VALUES ('bd219df6-4010-42b9-a069-db7a5fdc8bfe', 'Toyota', 'Corolla', 2020, 20000.00, 35, 0, 'COMPREHENSIVE') ON CONFLICT DO NOTHING;
INSERT INTO motor.vehicle_quotes (quote_id, make, model, year, vehicle_value, driver_age, claims_last_5_years, coverage_code) VALUES ('554cb99a-4249-4f4a-8612-21a75b022c70', 'A', 'B', 2022, 10000.00, 40, 0, 'COMPREHENSIVE') ON CONFLICT DO NOTHING;
INSERT INTO motor.vehicle_quotes (quote_id, make, model, year, vehicle_value, driver_age, claims_last_5_years, coverage_code) VALUES ('d60e9c12-e931-44a3-9f3c-a4befb508c53', 'A', 'B', 2022, 10000.00, 40, 0, 'COMPREHENSIVE') ON CONFLICT DO NOTHING;
INSERT INTO motor.vehicle_quotes (quote_id, make, model, year, vehicle_value, driver_age, claims_last_5_years, coverage_code) VALUES ('d3ca070e-4ab2-42ec-b55c-33db9dc8fa5b', 'A', 'B', 2022, 10000.00, 40, 0, 'COMPREHENSIVE') ON CONFLICT DO NOTHING;
INSERT INTO motor.vehicle_quotes (quote_id, make, model, year, vehicle_value, driver_age, claims_last_5_years, coverage_code) VALUES ('9c10da32-d2db-415c-b073-2638e8c88f4c', 'A', 'B', 2022, 10000.00, 40, 0, 'COMPREHENSIVE') ON CONFLICT DO NOTHING;
INSERT INTO motor.vehicle_quotes (quote_id, make, model, year, vehicle_value, driver_age, claims_last_5_years, coverage_code) VALUES ('0fb110ea-e928-45f9-82fb-ef7455036890', 'A', 'B', 2022, 10000.00, 40, 0, 'COMPREHENSIVE') ON CONFLICT DO NOTHING;
INSERT INTO motor.vehicle_quotes (quote_id, make, model, year, vehicle_value, driver_age, claims_last_5_years, coverage_code) VALUES ('6db1e610-ced4-4377-9bf3-cbbb448d5f3e', 'A', 'B', 2022, 10000.00, 40, 0, 'COMPREHENSIVE') ON CONFLICT DO NOTHING;


--
-- Data for Name: trip_quotes; Type: TABLE DATA; Schema: travel; Owner: -
--

INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('d571361b-d0fb-4e0c-bb89-391c8f604d76', 'US', '2026-12-01', '2026-12-10', 2, 4000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('86ab8522-6a46-4e7e-9681-3ea6db686a7e', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('ebf5c895-d8d7-4dd7-b3bd-fafdf6a982f5', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('f00321fa-d14f-442f-a846-22f95bb8fb18', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('2c01b8fb-2858-4665-9081-3c863ce5e7e4', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('07c04df4-cc70-4d3d-828e-c8c733b1baed', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('19364bca-bb33-4cea-8082-c05add0d29d3', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('f049b60e-0891-4c5f-9513-e46fd49759b3', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('340b219c-1ef6-4c25-be66-ecdc27d5e297', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('c973b7ce-842b-4602-b64e-ebb4c82145fc', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('179d08ae-6caf-46cd-8f01-95e24e043476', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('c3f4a2f5-9cfc-4598-8d9f-ec21fa4004c0', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('06a2a840-0eac-4208-a1a1-d05ae1173213', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('69ee90f2-f7ee-4036-982b-66bfe416d123', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('6fc8b2c8-6dfb-46ed-a0c6-1d4d931f2887', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('9b014458-42a5-4bde-9158-ab4ff09e9532', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('5b40e731-a65e-4866-a83b-db40caf73286', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('ec9ffcf1-ff0c-4023-9731-54d120a83c71', 'FR', '2027-01-01', '2027-01-05', 1, 1000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('756f9169-e43f-463a-9a17-4afdbc056c35', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('05a00e6b-ff11-42cc-b24b-6cf0ab591876', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('ef177a1a-4394-4e9a-88d0-da231abdb5c2', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('495d6969-fc40-4111-8c38-e0cbe85958e8', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('371f353f-468e-4b0a-88a6-e50d3b7faf46', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;
INSERT INTO travel.trip_quotes (quote_id, destination_code, start_date, end_date, travellers, trip_cost) VALUES ('fa651505-bc80-4ed6-8b53-26400d6b5f18', 'FR', '2027-02-01', '2027-02-07', 2, 3000.00) ON CONFLICT DO NOTHING;


--
-- PostgreSQL database dump complete
--

\unrestrict vbVFZeiKzt69cE3h4tfh0R0Ff3Jnyivf7rGOs3dsFvgWKRbsLNK0NcZL7kKGDP4


-- continue quote numbers after the highest exported one
SELECT setval('quote.quote_number_seq', GREATEST(1000, COALESCE((SELECT max(right(quote_number, 6)::int) FROM quote.quotes), 1000)));
