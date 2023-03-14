--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Debian 15.0-1.pgdg110+1)
-- Dumped by pg_dump version 15.0 (Debian 15.0-1.pgdg110+1)

CREATE DATABASE activity;
\c activity;

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dapr_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dapr_metadata (
    key text NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.dapr_metadata OWNER TO postgres;

--
-- Name: state; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.state (
    key text NOT NULL,
    value jsonb NOT NULL,
    isbinary boolean NOT NULL,
    insertdate timestamp with time zone DEFAULT now() NOT NULL,
    updatedate timestamp with time zone,
    expiredate timestamp with time zone
);


ALTER TABLE public.state OWNER TO postgres;

--
-- Data for Name: dapr_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dapr_metadata (key, value) FROM stdin;
migrations	2
last-cleanup	2023-03-14 17:12:41.237853+00
\.


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.state (key, value, isbinary, insertdate, updatedate, expiredate) FROM stdin;
activity-api||7b8bcf42-469c-41c1-a189-d281a7a70431	{"id": "7b8bcf42-469c-41c1-a189-d281a7a70431", "type": "CREATE_ACCOUNT", "userId": "ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "description": "Joel created a new account", "urlRedirect": "/account/ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "creationTimestamp": 1678806931965}	f	2023-03-14 15:15:32.132817+00	\N	\N
activity-api||11f45001-bc81-4cd3-850f-0d1e7a16de60	{"id": "11f45001-bc81-4cd3-850f-0d1e7a16de60", "type": "CREATE_ACCOUNT", "userId": "31fbf6be-24a8-46db-80fe-b50b471333f7", "description": "Sammy created a new account", "urlRedirect": "/account/31fbf6be-24a8-46db-80fe-b50b471333f7", "creationTimestamp": 1678806951999}	f	2023-03-14 15:15:52.026985+00	\N	\N
activity-api||95faf8ea-a613-42ee-88df-fb2c5282a3bd	{"id": "95faf8ea-a613-42ee-88df-fb2c5282a3bd", "type": "CREATE_ACCOUNT", "userId": "40141de9-3e63-4ca8-acb2-459a1a8af467", "description": "Steven created a new account", "urlRedirect": "/account/40141de9-3e63-4ca8-acb2-459a1a8af467", "creationTimestamp": 1678806962682}	f	2023-03-14 15:16:02.704737+00	\N	\N
activity-api||d4f23e82-d1ed-4797-af02-7ad1fdca0fa4	{"id": "d4f23e82-d1ed-4797-af02-7ad1fdca0fa4", "type": "CREATE_ACCOUNT", "userId": "0c04fb65-f7e9-4c47-a522-2b538ada8afb", "description": "Frank created a new account", "urlRedirect": "/account/0c04fb65-f7e9-4c47-a522-2b538ada8afb", "creationTimestamp": 1678806973859}	f	2023-03-14 15:16:13.880007+00	\N	\N
activity-api||821f07d4-f0cc-463a-965c-ce7fd281b2b2	{"id": "821f07d4-f0cc-463a-965c-ce7fd281b2b2", "type": "CREATE_ACCOUNT", "userId": "03c24796-e7f1-46e5-bdb0-26bb15d7767a", "description": "Jess created a new account", "urlRedirect": "/account/03c24796-e7f1-46e5-bdb0-26bb15d7767a", "creationTimestamp": 1678806984083}	f	2023-03-14 15:16:24.103567+00	\N	\N
activity-api||f54e1120-1cbb-4f84-90e8-c2e1f09cba1f	{"id": "f54e1120-1cbb-4f84-90e8-c2e1f09cba1f", "type": "CREATE_AUCTION", "userId": "0c04fb65-f7e9-4c47-a522-2b538ada8afb", "description": "Frank created a new auction", "urlRedirect": "/market/6f00a76d-860f-4529-8077-de589a4a3299", "creationTimestamp": 1678807073251}	f	2023-03-14 15:17:53.303529+00	\N	\N
activity-api||1cd8d84c-8aa2-45d5-b098-f0ee80782fa4	{"id": "1cd8d84c-8aa2-45d5-b098-f0ee80782fa4", "type": "CREATE_AUCTION", "userId": "0c04fb65-f7e9-4c47-a522-2b538ada8afb", "description": "Frank created a new auction", "urlRedirect": "/market/fba75221-fca0-4a9c-88f2-a915eaac4fea", "creationTimestamp": 1678807123790}	f	2023-03-14 15:18:43.820236+00	\N	\N
activity-api||758ddf2b-54b7-4e3a-b97e-d877d4ad3733	{"id": "758ddf2b-54b7-4e3a-b97e-d877d4ad3733", "type": "CREATE_AUCTION", "userId": "03c24796-e7f1-46e5-bdb0-26bb15d7767a", "description": "Jess created a new auction", "urlRedirect": "/market/5ca6504d-45af-4ce1-86a7-4c0219a8c84a", "creationTimestamp": 1678807174935}	f	2023-03-14 15:19:34.962578+00	\N	\N
activity-api||eba57e83-3d35-4f98-878b-a3d500d9706b	{"id": "eba57e83-3d35-4f98-878b-a3d500d9706b", "type": "CREATE_AUCTION", "userId": "03c24796-e7f1-46e5-bdb0-26bb15d7767a", "description": "Jess created a new auction", "urlRedirect": "/market/f24b77ee-0981-4ab4-8b54-da3e1d2200c9", "creationTimestamp": 1678807267797}	f	2023-03-14 15:21:07.826997+00	\N	\N
activity-api||7fbeb6ed-e569-4df4-babd-bf6cbdfa326d	{"id": "7fbeb6ed-e569-4df4-babd-bf6cbdfa326d", "type": "CREATE_AUCTION", "userId": "ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "description": "Joel created a new auction", "urlRedirect": "/market/d8e6ea3d-f99f-4a5e-92f0-ff824ebdd22c", "creationTimestamp": 1678807340209}	f	2023-03-14 15:22:20.247178+00	\N	\N
activity-api||6d439235-af16-4668-b0ea-5a76848c36c8	{"id": "6d439235-af16-4668-b0ea-5a76848c36c8", "type": "CREATE_AUCTION", "userId": "ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "description": "Joel created a new auction", "urlRedirect": "/market/145caf8b-4d83-4211-858a-8f11ac014325", "creationTimestamp": 1678807389729}	f	2023-03-14 15:23:09.763839+00	\N	\N
activity-api||80b86673-6fee-4036-86b5-6e386f948f0e	{"id": "80b86673-6fee-4036-86b5-6e386f948f0e", "type": "CREATE_AUCTION", "userId": "ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "description": "Joel created a new auction", "urlRedirect": "/market/3e13bff2-a378-4ebb-a02f-da673df4a7ce", "creationTimestamp": 1678807436577}	f	2023-03-14 15:23:56.607114+00	\N	\N
activity-api||2028eb37-8793-4cd7-8bbe-57b094fa1320	{"id": "2028eb37-8793-4cd7-8bbe-57b094fa1320", "type": "CREATE_AUCTION", "userId": "40141de9-3e63-4ca8-acb2-459a1a8af467", "description": "Steven created a new auction", "urlRedirect": "/market/cbd8f6b4-58f9-4ffe-9e64-24977a3de544", "creationTimestamp": 1678807496465}	f	2023-03-14 15:24:56.500852+00	\N	\N
activity-api||cac8ead7-6b8c-4155-bc9c-f171cc222fe1	{"id": "cac8ead7-6b8c-4155-bc9c-f171cc222fe1", "type": "CREATE_AUCTION", "userId": "31fbf6be-24a8-46db-80fe-b50b471333f7", "description": "Sammy created a new auction", "urlRedirect": "/market/ed7954b3-173d-4aea-a420-5e0e3e3ad3c5", "creationTimestamp": 1678807552722}	f	2023-03-14 15:25:52.756808+00	\N	\N
activity-api||2bca2d13-bb82-410d-95a3-8b09fc4b5b38	{"id": "2bca2d13-bb82-410d-95a3-8b09fc4b5b38", "type": "CREATE_AUCTION", "userId": "31fbf6be-24a8-46db-80fe-b50b471333f7", "description": "Sammy created a new auction", "urlRedirect": "/market/37633818-2870-4f92-9ce5-d20fae412e3b", "creationTimestamp": 1678807616095}	f	2023-03-14 15:26:56.130803+00	\N	\N
activity-api||55928a0e-5166-4c97-8530-0d298a5ebdb8	{"id": "55928a0e-5166-4c97-8530-0d298a5ebdb8", "type": "CREATE_ACCOUNT", "userId": "c8cc1cab-f892-40f5-a5aa-10fccb95072b", "description": "Bill created a new account", "urlRedirect": "/account/c8cc1cab-f892-40f5-a5aa-10fccb95072b", "creationTimestamp": 1678807669938}	f	2023-03-14 15:27:49.962688+00	\N	\N
activity-api||efadee24-2f7f-4052-8fca-d5488b812bb6	{"id": "efadee24-2f7f-4052-8fca-d5488b812bb6", "type": "CREATE_BID", "userId": "c8cc1cab-f892-40f5-a5aa-10fccb95072b", "description": "Bill placed a bid on an auction", "urlRedirect": "/market/5ca6504d-45af-4ce1-86a7-4c0219a8c84a", "creationTimestamp": 1678807683801}	f	2023-03-14 15:28:03.817584+00	\N	\N
activity-api||1b32ac56-0414-4ca6-875b-be4dfc70bff6	{"id": "1b32ac56-0414-4ca6-875b-be4dfc70bff6", "type": "PURCHASE_AUCTION", "userId": "31fbf6be-24a8-46db-80fe-b50b471333f7", "description": "Sammy purchased an auction", "urlRedirect": "/market/cbd8f6b4-58f9-4ffe-9e64-24977a3de544", "creationTimestamp": 1678807705643}	f	2023-03-14 15:28:25.658486+00	\N	\N
activity-api||0a4ef487-ae18-4950-91dc-34391717db07	{"id": "0a4ef487-ae18-4950-91dc-34391717db07", "type": "CREATE_BID", "userId": "31fbf6be-24a8-46db-80fe-b50b471333f7", "description": "Sammy placed a bid on an auction", "urlRedirect": "/market/f24b77ee-0981-4ab4-8b54-da3e1d2200c9", "creationTimestamp": 1678807719861}	f	2023-03-14 15:28:39.876819+00	\N	\N
activity-api||1eaeae03-6c87-400f-a9b0-c3eb5c1fd6c1	{"id": "1eaeae03-6c87-400f-a9b0-c3eb5c1fd6c1", "type": "CREATE_BID", "userId": "ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "description": "Joel placed a bid on an auction", "urlRedirect": "/market/6f00a76d-860f-4529-8077-de589a4a3299", "creationTimestamp": 1678807759135}	f	2023-03-14 15:29:19.150878+00	\N	\N
activity-api||e5469d1e-3bbb-4578-9874-b5a3397c06b6	{"id": "e5469d1e-3bbb-4578-9874-b5a3397c06b6", "type": "CREATE_BID", "userId": "ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "description": "Joel placed a bid on an auction", "urlRedirect": "/market/5ca6504d-45af-4ce1-86a7-4c0219a8c84a", "creationTimestamp": 1678807781902}	f	2023-03-14 15:29:41.919329+00	\N	\N
activity-api||ac0c12f4-dfa6-4489-8f4b-70e6b18e01bf	{"id": "ac0c12f4-dfa6-4489-8f4b-70e6b18e01bf", "type": "CREATE_BID", "userId": "40141de9-3e63-4ca8-acb2-459a1a8af467", "description": "Steven placed a bid on an auction", "urlRedirect": "/market/5ca6504d-45af-4ce1-86a7-4c0219a8c84a", "creationTimestamp": 1678807794340}	f	2023-03-14 15:29:54.358022+00	\N	\N
activity-api||de040314-d936-416e-a432-798ae4b93a38	{"id": "de040314-d936-416e-a432-798ae4b93a38", "type": "CREATE_BID", "userId": "40141de9-3e63-4ca8-acb2-459a1a8af467", "description": "Steven placed a bid on an auction", "urlRedirect": "/market/ed7954b3-173d-4aea-a420-5e0e3e3ad3c5", "creationTimestamp": 1678807812406}	f	2023-03-14 15:30:12.423077+00	\N	\N
activity-api||0dd50a82-2f24-4aa1-8232-ce613d8445fa	{"id": "0dd50a82-2f24-4aa1-8232-ce613d8445fa", "type": "PURCHASE_AUCTION", "userId": "40141de9-3e63-4ca8-acb2-459a1a8af467", "description": "Steven purchased an auction", "urlRedirect": "/market/145caf8b-4d83-4211-858a-8f11ac014325", "creationTimestamp": 1678807818500}	f	2023-03-14 15:30:18.515663+00	\N	\N
activity-api||6ce86ee5-9867-46f6-856e-2db9cbe6b140	{"id": "6ce86ee5-9867-46f6-856e-2db9cbe6b140", "type": "CREATE_ACCOUNT", "userId": "cfe27e0a-fb06-4ce1-b727-812762eb0783", "description": "Carlos created a new account", "urlRedirect": "/account/cfe27e0a-fb06-4ce1-b727-812762eb0783", "creationTimestamp": 1678807856062}	f	2023-03-14 15:30:56.082097+00	\N	\N
activity-api||9e36c8d9-c143-49b5-9a2e-179d674596a3	{"id": "9e36c8d9-c143-49b5-9a2e-179d674596a3", "type": "CREATE_AUCTION", "userId": "cfe27e0a-fb06-4ce1-b727-812762eb0783", "description": "Carlos created a new auction", "urlRedirect": "/market/1465279b-1f67-4683-94b7-37436712d387", "creationTimestamp": 1678807927218}	f	2023-03-14 15:32:07.257359+00	\N	\N
\.


--
-- Name: dapr_metadata dapr_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dapr_metadata
    ADD CONSTRAINT dapr_metadata_pkey PRIMARY KEY (key);


--
-- Name: state state_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.state
    ADD CONSTRAINT state_pkey PRIMARY KEY (key);


--
-- PostgreSQL database dump complete
--