--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: consumer; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.consumer (
    id integer NOT NULL,
    name character varying(50),
    email character varying(100),
    phone character varying(20),
    address character varying(150)
);


ALTER TABLE public.consumer OWNER TO admin;

--
-- Name: consumer_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.consumer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.consumer_id_seq OWNER TO admin;

--
-- Name: consumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.consumer_id_seq OWNED BY public.consumer.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    consumer_id integer,
    order_date date,
    total_amount numeric(10,2)
);


ALTER TABLE public.orders OWNER TO admin;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO admin;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(50),
    price numeric(10,2)
);


ALTER TABLE public.product OWNER TO admin;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO admin;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: consumer id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.consumer ALTER COLUMN id SET DEFAULT nextval('public.consumer_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Data for Name: consumer; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.consumer (id, name, email, phone, address) FROM stdin;
1	Alice Smith	alice@example.com	123-456-7890	123 Main St, Springfield
2	Bob Johnson	bob@example.com	234-567-8901	456 Elm St, Springfield
3	Carol Williams	carol@example.com	345-678-9012	789 Maple Ave, Springfield
4	David Brown	david@example.com	456-789-0123	101 Oak St, Springfield
5	Eve Davis	eve@example.com	567-890-1234	202 Pine St, Springfield
6	Frank Thomas	frank@example.com	678-901-2345	303 Birch St, Springfield
7	Grace Lee	grace@example.com	789-012-3456	404 Cedar St, Springfield
8	Henry Wilson	henry@example.com	890-123-4567	505 Walnut St, Springfield
9	Isabella Miller	isabella@example.com	901-234-5678	606 Ash St, Springfield
10	Jack Moore	jack@example.com	012-345-6789	707 Cherry St, Springfield
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.orders (id, consumer_id, order_date, total_amount) FROM stdin;
1	1	2024-01-10	150.75
2	2	2024-02-15	250.00
3	3	2024-03-20	175.50
4	4	2024-04-25	80.00
5	5	2024-05-30	300.25
6	6	2024-06-10	450.00
7	7	2024-07-15	220.35
8	8	2024-08-20	190.50
9	9	2024-09-25	340.00
10	10	2024-10-30	510.75
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.product (id, name, price) FROM stdin;
1	Laptop	999.99
2	Smartphone	699.99
3	Tablet	299.99
4	Headphones	199.99
5	Smartwatch	149.99
6	Monitor	249.99
7	Keyboard	79.99
8	Mouse	49.99
9	Printer	129.99
10	External Hard Drive	89.99
\.


--
-- Name: consumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.consumer_id_seq', 10, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.orders_id_seq', 10, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.product_id_seq', 10, true);


--
-- Name: consumer consumer_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.consumer
    ADD CONSTRAINT consumer_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: orders orders_consumer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_consumer_id_fkey FOREIGN KEY (consumer_id) REFERENCES public.consumer(id);


--
-- PostgreSQL database dump complete
--

