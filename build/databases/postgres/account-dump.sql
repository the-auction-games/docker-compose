--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0 (Debian 15.0-1.pgdg110+1)
-- Dumped by pg_dump version 15.0 (Debian 15.0-1.pgdg110+1)

CREATE DATABASE account;
\c account;

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
last-cleanup	2023-03-14 18:12:15.447883+00
\.


--
-- Data for Name: state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.state (key, value, isbinary, insertdate, updatedate, expiredate) FROM stdin;
account-api||ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa	{"id": "ba9c4910-8f16-4b1e-a2a3-bd9b61cbd2aa", "name": "Joel", "email": "joel@gmail.com", "password": "$2b$10$0.Y7dLrYam8Sn1KeBn9Cp.bOmKj2lOfhboCy3EpPrJNyhQ4dwML2m"}	f	2023-03-14 15:15:31.933154+00	\N	\N
account-api||31fbf6be-24a8-46db-80fe-b50b471333f7	{"id": "31fbf6be-24a8-46db-80fe-b50b471333f7", "name": "Sammy", "email": "sammy@gmail.com", "password": "$2b$10$4gg1fgzLJcnord6icRjxyewulolSz.JMhvNvNczAhrimOcqXR/rsG"}	f	2023-03-14 15:15:51.970608+00	\N	\N
account-api||40141de9-3e63-4ca8-acb2-459a1a8af467	{"id": "40141de9-3e63-4ca8-acb2-459a1a8af467", "name": "Steven", "email": "steven@gmail.com", "password": "$2b$10$rkwnc5GHSdpOUKiTKPEqo.oYrkBg8hTUCjH2X8/LHt3osvgrS6B3e"}	f	2023-03-14 15:16:02.651695+00	\N	\N
account-api||0c04fb65-f7e9-4c47-a522-2b538ada8afb	{"id": "0c04fb65-f7e9-4c47-a522-2b538ada8afb", "name": "Frank", "email": "frank@gmail.com", "password": "$2b$10$.eniiqRZs4tSDoG7X28OmO.bw3z85zWklKxAVoaNhDz4yIKuWu4b2"}	f	2023-03-14 15:16:13.824717+00	\N	\N
account-api||03c24796-e7f1-46e5-bdb0-26bb15d7767a	{"id": "03c24796-e7f1-46e5-bdb0-26bb15d7767a", "name": "Jess", "email": "jess@gmail.com", "password": "$2b$10$T2PJLlwvwRxcNfy0UHHipuPV6FDsEl4jOpsDos3atUkPiiOTkShfO"}	f	2023-03-14 15:16:24.05137+00	\N	\N
account-api||c8cc1cab-f892-40f5-a5aa-10fccb95072b	{"id": "c8cc1cab-f892-40f5-a5aa-10fccb95072b", "name": "Bill", "email": "bill@gmail.com", "password": "$2b$10$X5b4M3bTuKBUozKxoLXfPOVKVrI3zbTu7pU7JYhcLsYvtNPeof3Sm"}	f	2023-03-14 15:27:49.909336+00	\N	\N
account-api||cfe27e0a-fb06-4ce1-b727-812762eb0783	{"id": "cfe27e0a-fb06-4ce1-b727-812762eb0783", "name": "Carlos", "email": "carlos@gmail.com", "password": "$2b$10$G/8NNXSzu7lta907jUddOuHbNDMt.c527UYYC1EHx/5tcmZNwqd8m"}	f	2023-03-14 15:30:56.030392+00	\N	\N
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

