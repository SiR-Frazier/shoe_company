--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO "Guest";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO "Guest";

--
-- Name: shoes; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE shoes (
    id bigint NOT NULL,
    brand character varying,
    price integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE shoes OWNER TO "Guest";

--
-- Name: shoes_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE shoes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shoes_id_seq OWNER TO "Guest";

--
-- Name: shoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE shoes_id_seq OWNED BY shoes.id;


--
-- Name: shoes_stores; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE shoes_stores (
    id bigint NOT NULL,
    shoes_id integer,
    store_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE shoes_stores OWNER TO "Guest";

--
-- Name: shoes_stores_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE shoes_stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE shoes_stores_id_seq OWNER TO "Guest";

--
-- Name: shoes_stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE shoes_stores_id_seq OWNED BY shoes_stores.id;


--
-- Name: stores; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE stores (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE stores OWNER TO "Guest";

--
-- Name: stores_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE stores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stores_id_seq OWNER TO "Guest";

--
-- Name: stores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE stores_id_seq OWNED BY stores.id;


--
-- Name: shoes id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY shoes ALTER COLUMN id SET DEFAULT nextval('shoes_id_seq'::regclass);


--
-- Name: shoes_stores id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY shoes_stores ALTER COLUMN id SET DEFAULT nextval('shoes_stores_id_seq'::regclass);


--
-- Name: stores id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY stores ALTER COLUMN id SET DEFAULT nextval('stores_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2018-03-02 16:56:58.305318	2018-03-02 16:56:58.305318
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY schema_migrations (version) FROM stdin;
20180302165034
20180302165750
20180302170208
\.


--
-- Data for Name: shoes; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY shoes (id, brand, price, created_at, updated_at) FROM stdin;
1	\N	\N	2018-03-02 19:43:45.250833	2018-03-02 19:43:45.250833
2	\N	\N	2018-03-02 19:46:05.36627	2018-03-02 19:46:05.36627
3	\N	\N	2018-03-02 21:04:12.171016	2018-03-02 21:04:12.171016
4	\N	\N	2018-03-02 21:04:15.68129	2018-03-02 21:04:15.68129
5	\N	\N	2018-03-02 21:47:40.072408	2018-03-02 21:47:40.072408
6	\N	\N	2018-03-02 22:14:34.397323	2018-03-02 22:14:34.397323
7	\N	\N	2018-03-02 22:33:11.089901	2018-03-02 22:33:11.089901
8	\N	\N	2018-03-02 22:33:44.181659	2018-03-02 22:33:44.181659
9		\N	2018-03-02 22:56:43.562287	2018-03-02 22:56:43.562287
\.


--
-- Name: shoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('shoes_id_seq', 9, true);


--
-- Data for Name: shoes_stores; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY shoes_stores (id, shoes_id, store_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: shoes_stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('shoes_stores_id_seq', 1, false);


--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY stores (id, name, created_at, updated_at) FROM stdin;
1	\N	2018-03-02 18:42:16.904583	2018-03-02 18:42:16.904583
2	\N	2018-03-02 18:42:43.065861	2018-03-02 18:42:43.065861
3	\N	2018-03-02 18:42:47.41214	2018-03-02 18:42:47.41214
4	\N	2018-03-02 18:42:59.155205	2018-03-02 18:42:59.155205
5	\N	2018-03-02 18:43:01.787889	2018-03-02 18:43:01.787889
6	\N	2018-03-02 18:43:16.57651	2018-03-02 18:43:16.57651
7	\N	2018-03-02 18:44:50.365998	2018-03-02 18:44:50.365998
8	\N	2018-03-02 18:44:53.234905	2018-03-02 18:44:53.234905
9	\N	2018-03-02 18:45:14.914759	2018-03-02 18:45:14.914759
10	\N	2018-03-02 18:48:31.637802	2018-03-02 18:48:31.637802
11	\N	2018-03-02 18:48:47.815441	2018-03-02 18:48:47.815441
12	\N	2018-03-02 19:11:16.620951	2018-03-02 19:11:16.620951
13	\N	2018-03-02 19:37:19.661608	2018-03-02 19:37:19.661608
14	\N	2018-03-02 19:37:29.266522	2018-03-02 19:37:29.266522
15	\N	2018-03-02 19:37:43.737999	2018-03-02 19:37:43.737999
16	\N	2018-03-02 21:17:51.99596	2018-03-02 21:17:51.99596
17	\N	2018-03-02 21:17:56.716188	2018-03-02 21:17:56.716188
18	\N	2018-03-02 21:18:13.348981	2018-03-02 21:18:13.348981
19	\N	2018-03-02 21:24:43.946158	2018-03-02 21:24:43.946158
20	\N	2018-03-02 21:35:20.998898	2018-03-02 21:35:20.998898
21	\N	2018-03-02 21:51:29.322693	2018-03-02 21:51:29.322693
22	\N	2018-03-02 22:02:21.63074	2018-03-02 22:02:21.63074
23	\N	2018-03-02 22:02:25.078692	2018-03-02 22:02:25.078692
24	\N	2018-03-02 22:03:30.571249	2018-03-02 22:03:30.571249
25	\N	2018-03-02 22:04:24.309968	2018-03-02 22:04:24.309968
26	\N	2018-03-02 22:04:35.701975	2018-03-02 22:04:35.701975
27	\N	2018-03-02 22:08:44.0842	2018-03-02 22:08:44.0842
28	\N	2018-03-02 22:09:47.693137	2018-03-02 22:09:47.693137
29	\N	2018-03-02 22:10:00.178602	2018-03-02 22:10:00.178602
30	\N	2018-03-02 22:14:23.657361	2018-03-02 22:14:23.657361
31	\N	2018-03-02 22:14:26.929755	2018-03-02 22:14:26.929755
32	\N	2018-03-02 22:22:24.219274	2018-03-02 22:22:24.219274
33	\N	2018-03-02 22:23:07.55837	2018-03-02 22:23:07.55837
34		2018-03-03 00:07:55.43711	2018-03-03 00:07:55.43711
35	xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx	2018-03-03 00:22:04.40713	2018-03-03 00:22:04.40713
\.


--
-- Name: stores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('stores_id_seq', 35, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: shoes shoes_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY shoes
    ADD CONSTRAINT shoes_pkey PRIMARY KEY (id);


--
-- Name: shoes_stores shoes_stores_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY shoes_stores
    ADD CONSTRAINT shoes_stores_pkey PRIMARY KEY (id);


--
-- Name: stores stores_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

