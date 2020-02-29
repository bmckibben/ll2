--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

--CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

--COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: active_admin_comments; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.active_admin_comments (
    id bigint NOT NULL,
    namespace character varying,
    body text,
    resource_type character varying,
    resource_id bigint,
    author_type character varying,
    author_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_admin_comments OWNER TO bykjxnbvvtcrnw;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: paxxa
--

CREATE SEQUENCE public.active_admin_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_admin_comments_id_seq OWNER TO bykjxnbvvtcrnw;

--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: paxxa
--

ALTER SEQUENCE public.active_admin_comments_id_seq OWNED BY public.active_admin_comments.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO bykjxnbvvtcrnw;

--
-- Name: histories; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.histories (
    id bigint NOT NULL,
    date timestamp without time zone,
    ball_1 integer,
    ball_2 integer,
    ball_3 integer,
    ball_4 integer,
    ball_5 integer,
    powerball integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    predicted_1 numeric,
    predicted_2 numeric,
    predicted_3 numeric,
    predicted_4 numeric,
    predicted_5 numeric,
    predicted_powerball numeric
);


ALTER TABLE public.histories OWNER TO bykjxnbvvtcrnw;

--
-- Name: histories_id_seq; Type: SEQUENCE; Schema: public; Owner: paxxa
--

CREATE SEQUENCE public.histories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.histories_id_seq OWNER TO bykjxnbvvtcrnw;

--
-- Name: histories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: paxxa
--

ALTER SEQUENCE public.histories_id_seq OWNED BY public.histories.id;


--
-- Name: html_pages; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.html_pages (
    id bigint NOT NULL,
    title character varying,
    content text,
    active boolean,
    slug character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.html_pages OWNER TO bykjxnbvvtcrnw;

--
-- Name: html_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: paxxa
--

CREATE SEQUENCE public.html_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.html_pages_id_seq OWNER TO bykjxnbvvtcrnw;

--
-- Name: html_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: paxxa
--

ALTER SEQUENCE public.html_pages_id_seq OWNED BY public.html_pages.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO bykjxnbvvtcrnw;

--
-- Name: section_footnotes; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.section_footnotes (
    id bigint NOT NULL,
    a_number integer,
    footnote text,
    section_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.section_footnotes OWNER TO bykjxnbvvtcrnw;

--
-- Name: section_footnotes_id_seq; Type: SEQUENCE; Schema: public; Owner: paxxa
--

CREATE SEQUENCE public.section_footnotes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.section_footnotes_id_seq OWNER TO bykjxnbvvtcrnw;

--
-- Name: section_footnotes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: paxxa
--

ALTER SEQUENCE public.section_footnotes_id_seq OWNED BY public.section_footnotes.id;


--
-- Name: section_notes; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.section_notes (
    id bigint NOT NULL,
    note text,
    section_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.section_notes OWNER TO bykjxnbvvtcrnw;

--
-- Name: section_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: paxxa
--

CREATE SEQUENCE public.section_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.section_notes_id_seq OWNER TO bykjxnbvvtcrnw;

--
-- Name: section_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: paxxa
--

ALTER SEQUENCE public.section_notes_id_seq OWNED BY public.section_notes.id;


--
-- Name: sections; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.sections (
    id bigint NOT NULL,
    title character varying,
    sequence integer,
    summary text,
    body text,
    throughline character varying,
    resolution text,
    conflict text,
    story_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sections OWNER TO bykjxnbvvtcrnw;

--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: paxxa
--

CREATE SEQUENCE public.sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_id_seq OWNER TO bykjxnbvvtcrnw;

--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: paxxa
--

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;


--
-- Name: stories; Type: TABLE; Schema: public; Owner: paxxa
--

CREATE TABLE public.stories (
    id bigint NOT NULL,
    title text,
    subtitle text,
    abbreviated_title character varying,
    short_summary text,
    long_summary text,
    word_count integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.stories OWNER TO bykjxnbvvtcrnw;

--
-- Name: stories_id_seq; Type: SEQUENCE; Schema: public; Owner: paxxa
--

CREATE SEQUENCE public.stories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stories_id_seq OWNER TO bykjxnbvvtcrnw;

--
-- Name: stories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: paxxa
--

ALTER SEQUENCE public.stories_id_seq OWNED BY public.stories.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    login character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    role_cd integer DEFAULT 0 NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: wiki_tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wiki_tags (
    id integer NOT NULL,
    wiki_id integer,
    tag_id integer
);


ALTER TABLE public.wiki_tags OWNER TO postgres;

--
-- Name: wiki_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wiki_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wiki_tags_id_seq OWNER TO postgres;

--
-- Name: wiki_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wiki_tags_id_seq OWNED BY public.wiki_tags.id;


--
-- Name: wikis; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wikis (
    id integer NOT NULL,
    title character varying,
    user_id integer,
    body text,
    parent integer,
    version integer,
    deleted boolean DEFAULT false,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    default_sort integer DEFAULT 0 NOT NULL,
    last_revision integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.wikis OWNER TO postgres;

--
-- Name: wikis_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.wikis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wikis_id_seq OWNER TO postgres;

--
-- Name: wikis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.wikis_id_seq OWNED BY public.wikis.id;


--
-- Name: active_admin_comments id; Type: DEFAULT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.active_admin_comments ALTER COLUMN id SET DEFAULT nextval('public.active_admin_comments_id_seq'::regclass);


--
-- Name: histories id; Type: DEFAULT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.histories ALTER COLUMN id SET DEFAULT nextval('public.histories_id_seq'::regclass);


--
-- Name: html_pages id; Type: DEFAULT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.html_pages ALTER COLUMN id SET DEFAULT nextval('public.html_pages_id_seq'::regclass);


--
-- Name: section_footnotes id; Type: DEFAULT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.section_footnotes ALTER COLUMN id SET DEFAULT nextval('public.section_footnotes_id_seq'::regclass);


--
-- Name: section_notes id; Type: DEFAULT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.section_notes ALTER COLUMN id SET DEFAULT nextval('public.section_notes_id_seq'::regclass);


--
-- Name: sections id; Type: DEFAULT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- Name: stories id; Type: DEFAULT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.stories ALTER COLUMN id SET DEFAULT nextval('public.stories_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: wiki_tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_tags ALTER COLUMN id SET DEFAULT nextval('public.wiki_tags_id_seq'::regclass);


--
-- Name: wikis id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wikis ALTER COLUMN id SET DEFAULT nextval('public.wikis_id_seq'::regclass);


--
-- Data for Name: active_admin_comments; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.active_admin_comments (id, namespace, body, resource_type, resource_id, author_type, author_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-02-02 21:29:59.377916	2019-02-02 21:29:59.377916
\.


--
-- Data for Name: histories; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.histories (id, date, ball_1, ball_2, ball_3, ball_4, ball_5, powerball, created_at, updated_at, predicted_1, predicted_2, predicted_3, predicted_4, predicted_5, predicted_powerball) FROM stdin;
1	2019-02-13 00:00:00	2	24	8	69	14	26	2019-02-16 02:41:06.311394	2019-02-16 02:41:06.311394	\N	\N	\N	\N	\N	\N
2	2019-02-09 00:00:00	7	39	2	3	1	25	2019-02-16 02:41:06.378369	2019-02-16 02:41:06.378369	\N	\N	\N	\N	\N	\N
3	2019-02-06 00:00:00	13	28	5	63	38	21	2019-02-16 02:41:06.405444	2019-02-16 02:41:06.405444	\N	\N	\N	\N	\N	\N
4	2019-02-02 00:00:00	10	43	17	18	65	13	2019-02-16 02:41:06.443653	2019-02-16 02:41:06.443653	\N	\N	\N	\N	\N	\N
5	2019-01-30 00:00:00	16	2	12	29	54	6	2019-02-16 02:41:06.492124	2019-02-16 02:41:06.492124	\N	\N	\N	\N	\N	\N
6	2019-01-26 00:00:00	12	8	21	32	20	10	2019-02-16 02:41:06.531384	2019-02-16 02:41:06.531384	\N	\N	\N	\N	\N	\N
7	2019-01-23 00:00:00	50	25	48	23	47	24	2019-02-16 02:41:06.572002	2019-02-16 02:41:06.572002	\N	\N	\N	\N	\N	\N
8	2019-01-19 00:00:00	5	65	8	66	41	20	2019-02-16 02:41:06.606225	2019-02-16 02:41:06.606225	\N	\N	\N	\N	\N	\N
9	2019-01-16 00:00:00	14	61	29	31	56	1	2019-02-16 02:41:06.650279	2019-02-16 02:41:06.650279	\N	\N	\N	\N	\N	\N
10	2019-01-12 00:00:00	57	58	7	36	48	24	2019-02-16 02:41:06.691608	2019-02-16 02:41:06.691608	\N	\N	\N	\N	\N	\N
11	2019-01-09 00:00:00	19	59	37	6	49	22	2019-02-16 02:41:06.715564	2019-02-16 02:41:06.715564	\N	\N	\N	\N	\N	\N
12	2019-01-05 00:00:00	15	27	69	7	3	19	2019-02-16 02:41:06.733488	2019-02-16 02:41:06.733488	\N	\N	\N	\N	\N	\N
13	2019-01-02 00:00:00	56	46	42	12	8	12	2019-02-16 02:41:06.756866	2019-02-16 02:41:06.756866	\N	\N	\N	\N	\N	\N
14	2018-12-29 00:00:00	51	53	42	62	12	25	2019-02-16 02:41:06.776213	2019-02-16 02:41:06.776213	\N	\N	\N	\N	\N	\N
15	2018-12-26 00:00:00	52	38	25	67	5	24	2019-02-16 02:41:06.797047	2019-02-16 02:41:06.797047	\N	\N	\N	\N	\N	\N
16	2018-12-22 00:00:00	40	59	28	21	30	26	2019-02-16 02:41:06.817597	2019-02-16 02:41:06.817597	\N	\N	\N	\N	\N	\N
17	2018-12-19 00:00:00	43	31	29	37	15	16	2019-02-16 02:41:06.837311	2019-02-16 02:41:06.837311	\N	\N	\N	\N	\N	\N
18	2018-12-15 00:00:00	8	38	55	52	43	17	2019-02-16 02:41:06.856641	2019-02-16 02:41:06.856641	\N	\N	\N	\N	\N	\N
19	2018-12-12 00:00:00	9	64	29	21	4	26	2019-02-16 02:41:06.874112	2019-02-16 02:41:06.874112	\N	\N	\N	\N	\N	\N
20	2018-12-08 00:00:00	61	14	34	32	46	10	2019-02-16 02:41:06.897826	2019-02-16 02:41:06.897826	\N	\N	\N	\N	\N	\N
21	2018-12-05 00:00:00	36	38	9	11	37	11	2019-02-16 02:41:06.916398	2019-02-16 02:41:06.916398	\N	\N	\N	\N	\N	\N
22	2018-12-01 00:00:00	10	58	47	11	55	26	2019-02-16 02:41:06.938487	2019-02-16 02:41:06.938487	\N	\N	\N	\N	\N	\N
23	2018-11-28 00:00:00	4	68	59	69	19	21	2019-02-16 02:41:06.963856	2019-02-16 02:41:06.963856	\N	\N	\N	\N	\N	\N
24	2018-11-24 00:00:00	56	33	58	51	11	18	2019-02-16 02:41:06.983665	2019-02-16 02:41:06.983665	\N	\N	\N	\N	\N	\N
25	2018-11-21 00:00:00	14	23	38	7	55	18	2019-02-16 02:41:07.000322	2019-02-16 02:41:07.000322	\N	\N	\N	\N	\N	\N
26	2018-11-17 00:00:00	8	6	68	20	52	5	2019-02-16 02:41:07.023328	2019-02-16 02:41:07.023328	\N	\N	\N	\N	\N	\N
27	2018-11-14 00:00:00	49	62	42	7	69	23	2019-02-16 02:41:07.042827	2019-02-16 02:41:07.042827	\N	\N	\N	\N	\N	\N
28	2018-11-10 00:00:00	53	29	5	57	34	24	2019-02-16 02:41:07.058482	2019-02-16 02:41:07.058482	\N	\N	\N	\N	\N	\N
29	2018-11-07 00:00:00	50	28	34	42	26	25	2019-02-16 02:41:07.073818	2019-02-16 02:41:07.073818	\N	\N	\N	\N	\N	\N
30	2018-11-03 00:00:00	24	65	21	32	15	11	2019-02-16 02:41:07.089624	2019-02-16 02:41:07.089624	\N	\N	\N	\N	\N	\N
31	2018-10-31 00:00:00	40	39	47	7	25	20	2019-02-16 02:41:07.104746	2019-02-16 02:41:07.104746	\N	\N	\N	\N	\N	\N
32	2018-10-27 00:00:00	13	12	8	27	19	4	2019-02-16 02:41:07.119323	2019-02-16 02:41:07.119323	\N	\N	\N	\N	\N	\N
33	2018-10-24 00:00:00	56	53	45	21	3	22	2019-02-16 02:41:07.135944	2019-02-16 02:41:07.135944	\N	\N	\N	\N	\N	\N
34	2018-10-20 00:00:00	62	16	54	57	69	23	2019-02-16 02:41:07.150628	2019-02-16 02:41:07.150628	\N	\N	\N	\N	\N	\N
35	2018-10-17 00:00:00	3	64	69	68	57	15	2019-02-16 02:41:07.165938	2019-02-16 02:41:07.165938	\N	\N	\N	\N	\N	\N
36	2018-10-13 00:00:00	14	65	11	43	32	15	2019-02-16 02:41:07.180491	2019-02-16 02:41:07.180491	\N	\N	\N	\N	\N	\N
37	2018-10-10 00:00:00	27	60	42	23	8	7	2019-02-16 02:41:07.196503	2019-02-16 02:41:07.196503	\N	\N	\N	\N	\N	\N
38	2018-10-06 00:00:00	22	53	27	67	1	15	2019-02-16 02:41:07.212339	2019-02-16 02:41:07.212339	\N	\N	\N	\N	\N	\N
39	2018-10-03 00:00:00	63	66	53	59	41	3	2019-02-16 02:41:07.227985	2019-02-16 02:41:07.227985	\N	\N	\N	\N	\N	\N
40	2018-09-29 00:00:00	9	17	34	59	64	22	2019-02-16 02:41:07.24333	2019-02-16 02:41:07.24333	\N	\N	\N	\N	\N	\N
41	2018-09-26 00:00:00	7	1	30	50	2	8	2019-02-16 02:41:07.258839	2019-02-16 02:41:07.258839	\N	\N	\N	\N	\N	\N
42	2018-09-22 00:00:00	61	24	69	64	63	18	2019-02-16 02:41:07.274328	2019-02-16 02:41:07.274328	\N	\N	\N	\N	\N	\N
43	2018-09-19 00:00:00	50	4	51	48	39	11	2019-02-16 02:41:07.290715	2019-02-16 02:41:07.290715	\N	\N	\N	\N	\N	\N
44	2018-09-15 00:00:00	19	18	24	34	2	3	2019-02-16 02:41:07.305488	2019-02-16 02:41:07.305488	\N	\N	\N	\N	\N	\N
45	2018-09-12 00:00:00	28	48	63	6	64	24	2019-02-16 02:41:07.321437	2019-02-16 02:41:07.321437	\N	\N	\N	\N	\N	\N
46	2018-09-08 00:00:00	20	32	3	33	13	21	2019-02-16 02:41:07.336058	2019-02-16 02:41:07.336058	\N	\N	\N	\N	\N	\N
47	2018-09-05 00:00:00	59	60	6	50	15	13	2019-02-16 02:41:07.352344	2019-02-16 02:41:07.352344	\N	\N	\N	\N	\N	\N
48	2018-09-01 00:00:00	54	66	55	61	11	9	2019-02-16 02:41:07.367795	2019-02-16 02:41:07.367795	\N	\N	\N	\N	\N	\N
49	2018-08-29 00:00:00	53	25	41	67	57	12	2019-02-16 02:41:07.385216	2019-02-16 02:41:07.385216	\N	\N	\N	\N	\N	\N
50	2018-08-25 00:00:00	25	20	57	63	54	8	2019-02-16 02:41:07.399376	2019-02-16 02:41:07.399376	\N	\N	\N	\N	\N	\N
51	2018-08-22 00:00:00	45	1	47	69	7	13	2019-02-16 02:41:07.415895	2019-02-16 02:41:07.415895	\N	\N	\N	\N	\N	\N
52	2018-08-18 00:00:00	34	67	52	61	24	16	2019-02-16 02:41:07.432093	2019-02-16 02:41:07.432093	\N	\N	\N	\N	\N	\N
53	2018-08-15 00:00:00	28	15	12	47	48	16	2019-02-16 02:41:07.447644	2019-02-16 02:41:07.447644	\N	\N	\N	\N	\N	\N
54	2018-08-11 00:00:00	56	43	5	68	62	24	2019-02-16 02:41:07.463948	2019-02-16 02:41:07.463948	\N	\N	\N	\N	\N	\N
55	2018-08-08 00:00:00	21	63	30	43	10	17	2019-02-16 02:41:07.478328	2019-02-16 02:41:07.478328	\N	\N	\N	\N	\N	\N
56	2018-08-04 00:00:00	38	58	3	11	44	2	2019-02-16 02:41:07.494488	2019-02-16 02:41:07.494488	\N	\N	\N	\N	\N	\N
57	2018-08-01 00:00:00	5	38	22	58	32	26	2019-02-16 02:41:07.511588	2019-02-16 02:41:07.511588	\N	\N	\N	\N	\N	\N
58	2018-07-28 00:00:00	27	65	56	46	22	13	2019-02-16 02:41:07.527798	2019-02-16 02:41:07.527798	\N	\N	\N	\N	\N	\N
59	2018-07-25 00:00:00	64	44	18	2	41	26	2019-02-16 02:41:07.54168	2019-02-16 02:41:07.54168	\N	\N	\N	\N	\N	\N
60	2018-07-21 00:00:00	9	56	58	23	68	1	2019-02-16 02:41:07.56095	2019-02-16 02:41:07.56095	\N	\N	\N	\N	\N	\N
61	2018-07-18 00:00:00	28	36	10	1	27	12	2019-02-16 02:41:07.574465	2019-02-16 02:41:07.574465	\N	\N	\N	\N	\N	\N
62	2018-07-14 00:00:00	49	22	41	67	42	11	2019-02-16 02:41:07.591395	2019-02-16 02:41:07.591395	\N	\N	\N	\N	\N	\N
63	2018-07-11 00:00:00	21	19	47	27	46	7	2019-02-16 02:41:07.608027	2019-02-16 02:41:07.608027	\N	\N	\N	\N	\N	\N
64	2018-07-07 00:00:00	45	43	1	10	64	22	2019-02-16 02:41:07.630344	2019-02-16 02:41:07.630344	\N	\N	\N	\N	\N	\N
65	2018-07-04 00:00:00	7	41	15	4	44	10	2019-02-16 02:41:07.646404	2019-02-16 02:41:07.646404	\N	\N	\N	\N	\N	\N
66	2018-06-30 00:00:00	9	3	20	42	61	24	2019-02-16 02:41:07.671486	2019-02-16 02:41:07.671486	\N	\N	\N	\N	\N	\N
67	2018-06-27 00:00:00	63	28	62	7	37	15	2019-02-16 02:41:07.683665	2019-02-16 02:41:07.683665	\N	\N	\N	\N	\N	\N
68	2018-06-23 00:00:00	29	56	45	16	43	25	2019-02-16 02:41:07.700815	2019-02-16 02:41:07.700815	\N	\N	\N	\N	\N	\N
69	2018-06-20 00:00:00	14	56	27	4	23	13	2019-02-16 02:41:07.716829	2019-02-16 02:41:07.716829	\N	\N	\N	\N	\N	\N
70	2018-06-16 00:00:00	65	9	58	57	45	9	2019-02-16 02:41:07.740761	2019-02-16 02:41:07.740761	\N	\N	\N	\N	\N	\N
71	2018-06-13 00:00:00	13	38	45	20	55	1	2019-02-16 02:41:07.756266	2019-02-16 02:41:07.756266	\N	\N	\N	\N	\N	\N
72	2018-06-09 00:00:00	36	10	25	6	15	14	2019-02-16 02:41:07.771937	2019-02-16 02:41:07.771937	\N	\N	\N	\N	\N	\N
73	2018-06-06 00:00:00	53	28	41	23	56	14	2019-02-16 02:41:07.787263	2019-02-16 02:41:07.787263	\N	\N	\N	\N	\N	\N
74	2018-06-02 00:00:00	23	37	64	44	25	7	2019-02-16 02:41:07.803414	2019-02-16 02:41:07.803414	\N	\N	\N	\N	\N	\N
75	2018-05-30 00:00:00	46	23	26	17	68	20	2019-02-16 02:41:07.818829	2019-02-16 02:41:07.818829	\N	\N	\N	\N	\N	\N
76	2018-05-26 00:00:00	45	31	21	1	49	21	2019-02-16 02:41:07.836252	2019-02-16 02:41:07.836252	\N	\N	\N	\N	\N	\N
77	2018-05-23 00:00:00	20	54	61	56	64	7	2019-02-16 02:41:07.853049	2019-02-16 02:41:07.853049	\N	\N	\N	\N	\N	\N
78	2018-05-19 00:00:00	56	9	17	3	6	25	2019-02-16 02:41:07.871475	2019-02-16 02:41:07.871475	\N	\N	\N	\N	\N	\N
79	2018-05-16 00:00:00	17	22	21	19	51	19	2019-02-16 02:41:07.886373	2019-02-16 02:41:07.886373	\N	\N	\N	\N	\N	\N
80	2018-05-12 00:00:00	42	56	22	55	45	14	2019-02-16 02:41:07.903606	2019-02-16 02:41:07.903606	\N	\N	\N	\N	\N	\N
81	2018-05-09 00:00:00	50	69	16	38	11	19	2019-02-16 02:41:07.919494	2019-02-16 02:41:07.919494	\N	\N	\N	\N	\N	\N
82	2018-05-05 00:00:00	29	36	14	61	57	17	2019-02-16 02:41:07.943797	2019-02-16 02:41:07.943797	\N	\N	\N	\N	\N	\N
83	2018-05-02 00:00:00	40	5	31	50	14	6	2019-02-16 02:41:07.960129	2019-02-16 02:41:07.960129	\N	\N	\N	\N	\N	\N
84	2018-04-28 00:00:00	28	50	22	45	20	8	2019-02-16 02:41:07.97665	2019-02-16 02:41:07.97665	\N	\N	\N	\N	\N	\N
85	2018-04-25 00:00:00	18	17	39	64	56	12	2019-02-16 02:41:07.9939	2019-02-16 02:41:07.9939	\N	\N	\N	\N	\N	\N
86	2018-04-21 00:00:00	50	69	54	62	40	19	2019-02-16 02:41:08.008958	2019-02-16 02:41:08.008958	\N	\N	\N	\N	\N	\N
87	2018-04-18 00:00:00	12	17	10	9	23	9	2019-02-16 02:41:08.024532	2019-02-16 02:41:08.024532	\N	\N	\N	\N	\N	\N
88	2018-04-14 00:00:00	61	17	19	26	62	15	2019-02-16 02:41:08.063899	2019-02-16 02:41:08.063899	\N	\N	\N	\N	\N	\N
89	2018-04-11 00:00:00	67	18	16	55	27	18	2019-02-16 02:41:08.072761	2019-02-16 02:41:08.072761	\N	\N	\N	\N	\N	\N
90	2018-04-07 00:00:00	38	2	20	17	39	20	2019-02-16 02:41:08.089668	2019-02-16 02:41:08.089668	\N	\N	\N	\N	\N	\N
91	2018-04-04 00:00:00	42	64	54	8	24	24	2019-02-16 02:41:08.09881	2019-02-16 02:41:08.09881	\N	\N	\N	\N	\N	\N
92	2018-03-31 00:00:00	24	55	52	61	8	21	2019-02-16 02:41:08.121719	2019-02-16 02:41:08.121719	\N	\N	\N	\N	\N	\N
93	2018-03-28 00:00:00	53	8	52	6	26	21	2019-02-16 02:41:08.130385	2019-02-16 02:41:08.130385	\N	\N	\N	\N	\N	\N
94	2018-03-24 00:00:00	33	56	53	10	45	24	2019-02-16 02:41:08.151924	2019-02-16 02:41:08.151924	\N	\N	\N	\N	\N	\N
95	2018-03-21 00:00:00	29	4	61	3	18	25	2019-02-16 02:41:08.161406	2019-02-16 02:41:08.161406	\N	\N	\N	\N	\N	\N
96	2018-03-17 00:00:00	60	66	22	59	57	7	2019-02-16 02:41:08.183696	2019-02-16 02:41:08.183696	\N	\N	\N	\N	\N	\N
97	2018-03-14 00:00:00	12	24	6	41	68	9	2019-02-16 02:41:08.192995	2019-02-16 02:41:08.192995	\N	\N	\N	\N	\N	\N
98	2018-03-10 00:00:00	69	43	54	44	61	22	2019-02-16 02:41:08.202023	2019-02-16 02:41:08.202023	\N	\N	\N	\N	\N	\N
99	2018-03-07 00:00:00	36	6	19	13	51	18	2019-02-16 02:41:08.219177	2019-02-16 02:41:08.219177	\N	\N	\N	\N	\N	\N
100	2018-03-03 00:00:00	40	17	36	25	13	5	2019-02-16 02:41:08.244185	2019-02-16 02:41:08.244185	\N	\N	\N	\N	\N	\N
101	2018-02-28 00:00:00	69	12	65	59	30	16	2019-02-16 02:41:08.252892	2019-02-16 02:41:08.252892	\N	\N	\N	\N	\N	\N
102	2018-02-24 00:00:00	38	25	62	63	24	6	2019-02-16 02:41:08.276669	2019-02-16 02:41:08.276669	\N	\N	\N	\N	\N	\N
103	2018-02-21 00:00:00	7	36	31	15	34	8	2019-02-16 02:41:08.284985	2019-02-16 02:41:08.284985	\N	\N	\N	\N	\N	\N
104	2018-02-17 00:00:00	26	62	39	13	44	2	2019-02-16 02:41:08.293971	2019-02-16 02:41:08.293971	\N	\N	\N	\N	\N	\N
105	2018-02-14 00:00:00	44	46	37	39	69	26	2019-02-16 02:41:08.325224	2019-02-16 02:41:08.325224	\N	\N	\N	\N	\N	\N
106	2018-02-10 00:00:00	27	13	41	59	1	20	2019-02-16 02:41:08.339364	2019-02-16 02:41:08.339364	\N	\N	\N	\N	\N	\N
107	2018-02-07 00:00:00	40	35	34	47	23	10	2019-02-16 02:41:08.354207	2019-02-16 02:41:08.354207	\N	\N	\N	\N	\N	\N
108	2018-02-03 00:00:00	15	48	23	27	53	6	2019-02-16 02:41:08.368605	2019-02-16 02:41:08.368605	\N	\N	\N	\N	\N	\N
109	2018-01-31 00:00:00	7	4	14	59	46	22	2019-02-16 02:41:08.382944	2019-02-16 02:41:08.382944	\N	\N	\N	\N	\N	\N
110	2018-01-27 00:00:00	54	26	17	21	47	7	2019-02-16 02:41:08.39768	2019-02-16 02:41:08.39768	\N	\N	\N	\N	\N	\N
111	2018-01-24 00:00:00	11	9	5	33	64	21	2019-02-16 02:41:08.412205	2019-02-16 02:41:08.412205	\N	\N	\N	\N	\N	\N
112	2018-01-20 00:00:00	28	26	58	47	49	3	2019-02-16 02:41:08.421149	2019-02-16 02:41:08.421149	\N	\N	\N	\N	\N	\N
113	2018-01-17 00:00:00	33	51	3	37	57	21	2019-02-16 02:41:08.435661	2019-02-16 02:41:08.435661	\N	\N	\N	\N	\N	\N
114	2018-01-13 00:00:00	69	25	35	14	58	24	2019-02-16 02:41:08.449117	2019-02-16 02:41:08.449117	\N	\N	\N	\N	\N	\N
115	2018-01-10 00:00:00	7	24	50	49	33	4	2019-02-16 02:41:08.464078	2019-02-16 02:41:08.464078	\N	\N	\N	\N	\N	\N
116	2018-01-06 00:00:00	12	61	30	29	33	26	2019-02-16 02:41:08.473421	2019-02-16 02:41:08.473421	\N	\N	\N	\N	\N	\N
117	2018-01-03 00:00:00	42	39	18	2	37	12	2019-02-16 02:41:08.481836	2019-02-16 02:41:08.481836	\N	\N	\N	\N	\N	\N
118	2017-12-30 00:00:00	58	28	51	41	36	24	2019-02-16 02:41:08.503012	2019-02-16 02:41:08.503012	\N	\N	\N	\N	\N	\N
119	2017-12-27 00:00:00	16	60	3	56	9	3	2019-02-16 02:41:08.513355	2019-02-16 02:41:08.513355	\N	\N	\N	\N	\N	\N
120	2017-12-23 00:00:00	44	15	1	13	3	25	2019-02-16 02:41:08.529665	2019-02-16 02:41:08.529665	\N	\N	\N	\N	\N	\N
121	2017-12-20 00:00:00	20	61	64	1	69	20	2019-02-16 02:41:08.538499	2019-02-16 02:41:08.538499	\N	\N	\N	\N	\N	\N
122	2017-12-16 00:00:00	35	63	37	9	50	11	2019-02-16 02:41:08.558616	2019-02-16 02:41:08.558616	\N	\N	\N	\N	\N	\N
123	2017-12-13 00:00:00	2	28	51	58	24	7	2019-02-16 02:41:08.566882	2019-02-16 02:41:08.566882	\N	\N	\N	\N	\N	\N
124	2017-12-09 00:00:00	36	60	55	37	25	6	2019-02-16 02:41:08.588795	2019-02-16 02:41:08.588795	\N	\N	\N	\N	\N	\N
125	2017-12-06 00:00:00	50	19	55	62	20	9	2019-02-16 02:41:08.602371	2019-02-16 02:41:08.602371	\N	\N	\N	\N	\N	\N
126	2017-12-02 00:00:00	32	30	36	28	58	6	2019-02-16 02:41:08.617943	2019-02-16 02:41:08.617943	\N	\N	\N	\N	\N	\N
127	2017-11-29 00:00:00	59	28	26	24	63	16	2019-02-16 02:41:08.633109	2019-02-16 02:41:08.633109	\N	\N	\N	\N	\N	\N
128	2017-11-25 00:00:00	53	8	54	27	13	4	2019-02-16 02:41:08.648216	2019-02-16 02:41:08.648216	\N	\N	\N	\N	\N	\N
129	2017-11-22 00:00:00	61	51	37	46	35	13	2019-02-16 02:41:08.663077	2019-02-16 02:41:08.663077	\N	\N	\N	\N	\N	\N
130	2017-11-18 00:00:00	17	31	28	32	39	26	2019-02-16 02:41:08.678312	2019-02-16 02:41:08.678312	\N	\N	\N	\N	\N	\N
131	2017-11-15 00:00:00	48	32	44	50	23	25	2019-02-16 02:41:08.690515	2019-02-16 02:41:08.690515	\N	\N	\N	\N	\N	\N
132	2017-11-11 00:00:00	56	6	4	30	16	18	2019-02-16 02:41:08.702258	2019-02-16 02:41:08.702258	\N	\N	\N	\N	\N	\N
133	2017-11-08 00:00:00	12	21	14	34	20	22	2019-02-16 02:41:08.714947	2019-02-16 02:41:08.714947	\N	\N	\N	\N	\N	\N
134	2017-11-04 00:00:00	51	48	12	26	14	13	2019-02-16 02:41:08.739701	2019-02-16 02:41:08.739701	\N	\N	\N	\N	\N	\N
135	2017-11-01 00:00:00	26	3	19	6	44	1	2019-02-16 02:41:08.748509	2019-02-16 02:41:08.748509	\N	\N	\N	\N	\N	\N
136	2017-10-28 00:00:00	35	27	57	66	38	10	2019-02-16 02:41:08.762183	2019-02-16 02:41:08.762183	\N	\N	\N	\N	\N	\N
137	2017-10-25 00:00:00	57	54	29	22	18	8	2019-02-16 02:41:08.777153	2019-02-16 02:41:08.777153	\N	\N	\N	\N	\N	\N
138	2017-10-21 00:00:00	14	45	69	41	42	4	2019-02-16 02:41:08.793129	2019-02-16 02:41:08.793129	\N	\N	\N	\N	\N	\N
139	2017-10-18 00:00:00	69	54	49	30	66	8	2019-02-16 02:41:08.808252	2019-02-16 02:41:08.808252	\N	\N	\N	\N	\N	\N
140	2017-10-14 00:00:00	56	37	69	32	66	11	2019-02-16 02:41:08.82515	2019-02-16 02:41:08.82515	\N	\N	\N	\N	\N	\N
141	2017-10-11 00:00:00	1	69	19	3	13	23	2019-02-16 02:41:08.838177	2019-02-16 02:41:08.838177	\N	\N	\N	\N	\N	\N
142	2017-10-07 00:00:00	61	10	49	65	63	7	2019-02-16 02:41:08.854	2019-02-16 02:41:08.854	\N	\N	\N	\N	\N	\N
143	2017-10-04 00:00:00	23	63	62	66	22	24	2019-02-16 02:41:08.868215	2019-02-16 02:41:08.868215	\N	\N	\N	\N	\N	\N
144	2017-09-30 00:00:00	8	25	12	41	64	15	2019-02-16 02:41:08.882977	2019-02-16 02:41:08.882977	\N	\N	\N	\N	\N	\N
145	2017-09-27 00:00:00	21	25	10	23	8	22	2019-02-16 02:41:08.897901	2019-02-16 02:41:08.897901	\N	\N	\N	\N	\N	\N
146	2017-09-23 00:00:00	45	24	56	55	57	19	2019-02-16 02:41:08.91383	2019-02-16 02:41:08.91383	\N	\N	\N	\N	\N	\N
147	2017-09-20 00:00:00	68	48	67	39	53	26	2019-02-16 02:41:08.936042	2019-02-16 02:41:08.936042	\N	\N	\N	\N	\N	\N
148	2017-09-16 00:00:00	31	24	25	17	18	24	2019-02-16 02:41:08.947068	2019-02-16 02:41:08.947068	\N	\N	\N	\N	\N	\N
149	2017-09-13 00:00:00	24	63	35	57	17	19	2019-02-16 02:41:08.964005	2019-02-16 02:41:08.964005	\N	\N	\N	\N	\N	\N
150	2017-09-09 00:00:00	59	20	6	57	29	22	2019-02-16 02:41:08.973511	2019-02-16 02:41:08.973511	\N	\N	\N	\N	\N	\N
151	2017-09-06 00:00:00	32	14	8	58	67	17	2019-02-16 02:41:08.98217	2019-02-16 02:41:08.98217	\N	\N	\N	\N	\N	\N
152	2017-09-02 00:00:00	62	41	21	52	6	26	2019-02-16 02:41:09.001475	2019-02-16 02:41:09.001475	\N	\N	\N	\N	\N	\N
153	2017-08-30 00:00:00	43	19	69	28	67	7	2019-02-16 02:41:09.014098	2019-02-16 02:41:09.014098	\N	\N	\N	\N	\N	\N
154	2017-08-26 00:00:00	66	15	7	38	32	15	2019-02-16 02:41:09.031007	2019-02-16 02:41:09.031007	\N	\N	\N	\N	\N	\N
155	2017-08-23 00:00:00	7	26	16	23	6	4	2019-02-16 02:41:09.055728	2019-02-16 02:41:09.055728	\N	\N	\N	\N	\N	\N
156	2017-08-19 00:00:00	17	68	19	43	39	13	2019-02-16 02:41:09.06495	2019-02-16 02:41:09.06495	\N	\N	\N	\N	\N	\N
157	2017-08-16 00:00:00	64	43	60	9	15	4	2019-02-16 02:41:09.089673	2019-02-16 02:41:09.089673	\N	\N	\N	\N	\N	\N
158	2017-08-12 00:00:00	35	20	49	26	24	19	2019-02-16 02:41:09.098659	2019-02-16 02:41:09.098659	\N	\N	\N	\N	\N	\N
159	2017-08-09 00:00:00	12	30	47	62	36	9	2019-02-16 02:41:09.122067	2019-02-16 02:41:09.122067	\N	\N	\N	\N	\N	\N
160	2017-08-05 00:00:00	33	21	45	11	28	11	2019-02-16 02:41:09.131206	2019-02-16 02:41:09.131206	\N	\N	\N	\N	\N	\N
161	2017-08-02 00:00:00	16	1	54	63	69	18	2019-02-16 02:41:09.152385	2019-02-16 02:41:09.152385	\N	\N	\N	\N	\N	\N
162	2017-07-29 00:00:00	1	40	28	48	45	12	2019-02-16 02:41:09.161415	2019-02-16 02:41:09.161415	\N	\N	\N	\N	\N	\N
163	2017-07-26 00:00:00	19	42	21	7	69	12	2019-02-16 02:41:09.183592	2019-02-16 02:41:09.183592	\N	\N	\N	\N	\N	\N
164	2017-07-22 00:00:00	44	32	60	5	53	9	2019-02-16 02:41:09.194085	2019-02-16 02:41:09.194085	\N	\N	\N	\N	\N	\N
165	2017-07-19 00:00:00	63	51	59	61	50	4	2019-02-16 02:41:09.20288	2019-02-16 02:41:09.20288	\N	\N	\N	\N	\N	\N
166	2017-07-15 00:00:00	40	66	9	64	63	17	2019-02-16 02:41:09.219632	2019-02-16 02:41:09.219632	\N	\N	\N	\N	\N	\N
167	2017-07-12 00:00:00	18	23	2	61	1	9	2019-02-16 02:41:09.244987	2019-02-16 02:41:09.244987	\N	\N	\N	\N	\N	\N
168	2017-07-08 00:00:00	29	8	40	59	10	26	2019-02-16 02:41:09.254712	2019-02-16 02:41:09.254712	\N	\N	\N	\N	\N	\N
169	2017-07-05 00:00:00	54	9	68	4	16	21	2019-02-16 02:41:09.276945	2019-02-16 02:41:09.276945	\N	\N	\N	\N	\N	\N
170	2017-07-01 00:00:00	45	19	42	53	48	16	2019-02-16 02:41:09.286594	2019-02-16 02:41:09.286594	\N	\N	\N	\N	\N	\N
171	2017-06-28 00:00:00	46	37	29	53	68	8	2019-02-16 02:41:09.308946	2019-02-16 02:41:09.308946	\N	\N	\N	\N	\N	\N
172	2017-06-24 00:00:00	36	32	22	58	10	10	2019-02-16 02:41:09.317951	2019-02-16 02:41:09.317951	\N	\N	\N	\N	\N	\N
173	2017-06-21 00:00:00	65	14	46	68	61	13	2019-02-16 02:41:09.32775	2019-02-16 02:41:09.32775	\N	\N	\N	\N	\N	\N
174	2017-06-17 00:00:00	13	62	10	53	32	21	2019-02-16 02:41:09.344704	2019-02-16 02:41:09.344704	\N	\N	\N	\N	\N	\N
175	2017-06-14 00:00:00	63	22	5	43	57	24	2019-02-16 02:41:09.358678	2019-02-16 02:41:09.358678	\N	\N	\N	\N	\N	\N
176	2017-06-10 00:00:00	32	26	20	38	58	3	2019-02-16 02:41:09.375372	2019-02-16 02:41:09.375372	\N	\N	\N	\N	\N	\N
177	2017-06-07 00:00:00	66	57	5	69	21	13	2019-02-16 02:41:09.399452	2019-02-16 02:41:09.399452	\N	\N	\N	\N	\N	\N
178	2017-06-03 00:00:00	54	41	9	3	21	25	2019-02-16 02:41:09.409251	2019-02-16 02:41:09.409251	\N	\N	\N	\N	\N	\N
179	2017-05-31 00:00:00	60	39	33	4	46	6	2019-02-16 02:41:09.43266	2019-02-16 02:41:09.43266	\N	\N	\N	\N	\N	\N
180	2017-05-27 00:00:00	55	10	5	67	28	9	2019-02-16 02:41:09.442629	2019-02-16 02:41:09.442629	\N	\N	\N	\N	\N	\N
181	2017-05-24 00:00:00	38	28	33	32	62	15	2019-02-16 02:41:09.4696	2019-02-16 02:41:09.4696	\N	\N	\N	\N	\N	\N
182	2017-05-20 00:00:00	45	5	47	54	22	3	2019-02-16 02:41:09.48067	2019-02-16 02:41:09.48067	\N	\N	\N	\N	\N	\N
183	2017-05-17 00:00:00	39	4	48	45	11	9	2019-02-16 02:41:09.498601	2019-02-16 02:41:09.498601	\N	\N	\N	\N	\N	\N
184	2017-05-13 00:00:00	68	17	20	63	32	19	2019-02-16 02:41:09.513952	2019-02-16 02:41:09.513952	\N	\N	\N	\N	\N	\N
185	2017-05-10 00:00:00	62	31	56	46	29	8	2019-02-16 02:41:09.529889	2019-02-16 02:41:09.529889	\N	\N	\N	\N	\N	\N
186	2017-05-06 00:00:00	31	21	11	41	59	21	2019-02-16 02:41:09.539263	2019-02-16 02:41:09.539263	\N	\N	\N	\N	\N	\N
187	2017-05-03 00:00:00	18	49	66	17	59	9	2019-02-16 02:41:09.559516	2019-02-16 02:41:09.559516	\N	\N	\N	\N	\N	\N
188	2017-04-29 00:00:00	24	22	23	62	45	5	2019-02-16 02:41:09.568167	2019-02-16 02:41:09.568167	\N	\N	\N	\N	\N	\N
189	2017-04-26 00:00:00	18	1	51	15	26	26	2019-02-16 02:41:09.590107	2019-02-16 02:41:09.590107	\N	\N	\N	\N	\N	\N
190	2017-04-22 00:00:00	39	21	48	41	63	6	2019-02-16 02:41:09.598802	2019-02-16 02:41:09.598802	\N	\N	\N	\N	\N	\N
191	2017-04-19 00:00:00	1	19	52	40	37	15	2019-02-16 02:41:09.622468	2019-02-16 02:41:09.622468	\N	\N	\N	\N	\N	\N
192	2017-04-15 00:00:00	61	26	45	5	22	13	2019-02-16 02:41:09.631388	2019-02-16 02:41:09.631388	\N	\N	\N	\N	\N	\N
193	2017-04-12 00:00:00	68	63	14	8	61	24	2019-02-16 02:41:09.652175	2019-02-16 02:41:09.652175	\N	\N	\N	\N	\N	\N
194	2017-04-08 00:00:00	51	53	36	23	60	15	2019-02-16 02:41:09.66161	2019-02-16 02:41:09.66161	\N	\N	\N	\N	\N	\N
195	2017-04-05 00:00:00	53	20	54	46	8	13	2019-02-16 02:41:09.670072	2019-02-16 02:41:09.670072	\N	\N	\N	\N	\N	\N
196	2017-04-01 00:00:00	65	9	44	36	32	1	2019-02-16 02:41:09.689268	2019-02-16 02:41:09.689268	\N	\N	\N	\N	\N	\N
197	2017-03-29 00:00:00	8	62	31	36	15	11	2019-02-16 02:41:09.712311	2019-02-16 02:41:09.712311	\N	\N	\N	\N	\N	\N
198	2017-03-25 00:00:00	32	18	31	48	45	16	2019-02-16 02:41:09.721686	2019-02-16 02:41:09.721686	\N	\N	\N	\N	\N	\N
199	2017-03-22 00:00:00	2	29	9	27	42	9	2019-02-16 02:41:09.744053	2019-02-16 02:41:09.744053	\N	\N	\N	\N	\N	\N
200	2017-03-18 00:00:00	25	67	54	44	13	5	2019-02-16 02:41:09.752817	2019-02-16 02:41:09.752817	\N	\N	\N	\N	\N	\N
201	2017-03-15 00:00:00	30	16	41	48	53	16	2019-02-16 02:41:09.776964	2019-02-16 02:41:09.776964	\N	\N	\N	\N	\N	\N
202	2017-03-11 00:00:00	57	41	50	26	1	11	2019-02-16 02:41:09.785701	2019-02-16 02:41:09.785701	\N	\N	\N	\N	\N	\N
203	2017-03-08 00:00:00	42	23	59	46	33	4	2019-02-16 02:41:09.809329	2019-02-16 02:41:09.809329	\N	\N	\N	\N	\N	\N
204	2017-03-04 00:00:00	2	22	63	19	18	19	2019-02-16 02:41:09.818235	2019-02-16 02:41:09.818235	\N	\N	\N	\N	\N	\N
205	2017-03-01 00:00:00	16	10	52	40	55	17	2019-02-16 02:41:09.841034	2019-02-16 02:41:09.841034	\N	\N	\N	\N	\N	\N
206	2017-02-25 00:00:00	6	62	32	47	65	19	2019-02-16 02:41:09.849871	2019-02-16 02:41:09.849871	\N	\N	\N	\N	\N	\N
207	2017-02-22 00:00:00	52	10	61	28	13	2	2019-02-16 02:41:09.869091	2019-02-16 02:41:09.869091	\N	\N	\N	\N	\N	\N
208	2017-02-18 00:00:00	9	3	33	7	31	20	2019-02-16 02:41:09.8782	2019-02-16 02:41:09.8782	\N	\N	\N	\N	\N	\N
209	2017-02-15 00:00:00	33	5	42	38	28	19	2019-02-16 02:41:09.900277	2019-02-16 02:41:09.900277	\N	\N	\N	\N	\N	\N
210	2017-02-11 00:00:00	37	64	17	9	5	2	2019-02-16 02:41:09.91043	2019-02-16 02:41:09.91043	\N	\N	\N	\N	\N	\N
211	2017-02-08 00:00:00	49	20	42	14	66	5	2019-02-16 02:41:09.932677	2019-02-16 02:41:09.932677	\N	\N	\N	\N	\N	\N
212	2017-02-04 00:00:00	52	17	16	13	6	25	2019-02-16 02:41:09.941705	2019-02-16 02:41:09.941705	\N	\N	\N	\N	\N	\N
213	2017-02-01 00:00:00	9	60	64	43	57	10	2019-02-16 02:41:09.950061	2019-02-16 02:41:09.950061	\N	\N	\N	\N	\N	\N
214	2017-01-28 00:00:00	39	12	49	69	20	17	2019-02-16 02:41:09.96989	2019-02-16 02:41:09.96989	\N	\N	\N	\N	\N	\N
215	2017-01-25 00:00:00	18	62	66	68	28	22	2019-02-16 02:41:09.995029	2019-02-16 02:41:09.995029	\N	\N	\N	\N	\N	\N
216	2017-01-21 00:00:00	45	25	23	67	52	2	2019-02-16 02:41:10.004456	2019-02-16 02:41:10.004456	\N	\N	\N	\N	\N	\N
217	2017-01-18 00:00:00	41	9	58	40	53	12	2019-02-16 02:41:10.013562	2019-02-16 02:41:10.013562	\N	\N	\N	\N	\N	\N
218	2017-01-14 00:00:00	55	69	23	64	59	13	2019-02-16 02:41:10.033559	2019-02-16 02:41:10.033559	\N	\N	\N	\N	\N	\N
219	2017-01-11 00:00:00	1	16	13	43	3	24	2019-02-16 02:41:10.056322	2019-02-16 02:41:10.056322	\N	\N	\N	\N	\N	\N
220	2017-01-07 00:00:00	37	63	12	24	3	10	2019-02-16 02:41:10.06574	2019-02-16 02:41:10.06574	\N	\N	\N	\N	\N	\N
221	2017-01-04 00:00:00	17	16	42	41	29	4	2019-02-16 02:41:10.089608	2019-02-16 02:41:10.089608	\N	\N	\N	\N	\N	\N
222	2016-12-31 00:00:00	1	28	3	67	57	9	2019-02-16 02:41:10.099344	2019-02-16 02:41:10.099344	\N	\N	\N	\N	\N	\N
223	2016-12-28 00:00:00	30	23	44	58	16	4	2019-02-16 02:41:10.121403	2019-02-16 02:41:10.121403	\N	\N	\N	\N	\N	\N
224	2016-12-24 00:00:00	38	52	42	51	28	21	2019-02-16 02:41:10.130989	2019-02-16 02:41:10.130989	\N	\N	\N	\N	\N	\N
225	2016-12-21 00:00:00	25	68	40	54	33	3	2019-02-16 02:41:10.152506	2019-02-16 02:41:10.152506	\N	\N	\N	\N	\N	\N
226	2016-12-17 00:00:00	16	40	8	48	1	10	2019-02-16 02:41:10.162273	2019-02-16 02:41:10.162273	\N	\N	\N	\N	\N	\N
227	2016-12-14 00:00:00	39	18	66	37	26	15	2019-02-16 02:41:10.18227	2019-02-16 02:41:10.18227	\N	\N	\N	\N	\N	\N
228	2016-12-10 00:00:00	32	21	12	44	66	15	2019-02-16 02:41:10.192428	2019-02-16 02:41:10.192428	\N	\N	\N	\N	\N	\N
229	2016-12-07 00:00:00	49	64	48	41	53	20	2019-02-16 02:41:10.202736	2019-02-16 02:41:10.202736	\N	\N	\N	\N	\N	\N
230	2016-12-03 00:00:00	27	26	33	8	10	22	2019-02-16 02:41:10.218289	2019-02-16 02:41:10.218289	\N	\N	\N	\N	\N	\N
231	2016-11-30 00:00:00	3	45	25	14	18	7	2019-02-16 02:41:10.228247	2019-02-16 02:41:10.228247	\N	\N	\N	\N	\N	\N
232	2016-11-26 00:00:00	21	17	37	44	19	16	2019-02-16 02:41:10.248014	2019-02-16 02:41:10.248014	\N	\N	\N	\N	\N	\N
233	2016-11-23 00:00:00	7	61	41	47	32	3	2019-02-16 02:41:10.258359	2019-02-16 02:41:10.258359	\N	\N	\N	\N	\N	\N
234	2016-11-19 00:00:00	24	61	43	16	28	21	2019-02-16 02:41:10.278009	2019-02-16 02:41:10.278009	\N	\N	\N	\N	\N	\N
235	2016-11-16 00:00:00	28	61	63	41	65	7	2019-02-16 02:41:10.287292	2019-02-16 02:41:10.287292	\N	\N	\N	\N	\N	\N
236	2016-11-12 00:00:00	20	8	27	52	17	24	2019-02-16 02:41:10.308997	2019-02-16 02:41:10.308997	\N	\N	\N	\N	\N	\N
237	2016-11-09 00:00:00	28	31	54	25	1	2	2019-02-16 02:41:10.318165	2019-02-16 02:41:10.318165	\N	\N	\N	\N	\N	\N
238	2016-11-05 00:00:00	31	50	69	21	51	8	2019-02-16 02:41:10.338725	2019-02-16 02:41:10.338725	\N	\N	\N	\N	\N	\N
239	2016-11-02 00:00:00	18	54	61	13	37	5	2019-02-16 02:41:10.348393	2019-02-16 02:41:10.348393	\N	\N	\N	\N	\N	\N
240	2016-10-29 00:00:00	42	48	20	21	19	23	2019-02-16 02:41:10.358624	2019-02-16 02:41:10.358624	\N	\N	\N	\N	\N	\N
241	2016-10-26 00:00:00	48	56	2	16	3	24	2019-02-16 02:41:10.375755	2019-02-16 02:41:10.375755	\N	\N	\N	\N	\N	\N
242	2016-10-22 00:00:00	1	55	33	28	56	22	2019-02-16 02:41:10.399818	2019-02-16 02:41:10.399818	\N	\N	\N	\N	\N	\N
243	2016-10-19 00:00:00	43	63	16	38	10	23	2019-02-16 02:41:10.409704	2019-02-16 02:41:10.409704	\N	\N	\N	\N	\N	\N
244	2016-10-15 00:00:00	64	49	57	23	67	20	2019-02-16 02:41:10.433967	2019-02-16 02:41:10.433967	\N	\N	\N	\N	\N	\N
245	2016-10-12 00:00:00	34	44	30	16	37	16	2019-02-16 02:41:10.443679	2019-02-16 02:41:10.443679	\N	\N	\N	\N	\N	\N
246	2016-10-08 00:00:00	3	64	68	61	54	9	2019-02-16 02:41:10.466	2019-02-16 02:41:10.466	\N	\N	\N	\N	\N	\N
247	2016-10-05 00:00:00	60	29	18	27	8	15	2019-02-16 02:41:10.476494	2019-02-16 02:41:10.476494	\N	\N	\N	\N	\N	\N
248	2016-10-01 00:00:00	12	64	50	61	2	1	2019-02-16 02:41:10.503515	2019-02-16 02:41:10.503515	\N	\N	\N	\N	\N	\N
249	2016-09-28 00:00:00	30	53	62	38	52	1	2019-02-16 02:41:10.513748	2019-02-16 02:41:10.513748	\N	\N	\N	\N	\N	\N
250	2016-09-24 00:00:00	15	7	29	41	20	22	2019-02-16 02:41:10.529461	2019-02-16 02:41:10.529461	\N	\N	\N	\N	\N	\N
251	2016-09-21 00:00:00	63	67	1	69	28	17	2019-02-16 02:41:10.539772	2019-02-16 02:41:10.539772	\N	\N	\N	\N	\N	\N
252	2016-09-17 00:00:00	51	19	9	62	55	14	2019-02-16 02:41:10.559253	2019-02-16 02:41:10.559253	\N	\N	\N	\N	\N	\N
253	2016-09-14 00:00:00	10	31	23	28	11	14	2019-02-16 02:41:10.568718	2019-02-16 02:41:10.568718	\N	\N	\N	\N	\N	\N
254	2016-09-10 00:00:00	3	17	49	55	68	8	2019-02-16 02:41:10.590199	2019-02-16 02:41:10.590199	\N	\N	\N	\N	\N	\N
255	2016-09-07 00:00:00	23	55	33	22	29	21	2019-02-16 02:41:10.599484	2019-02-16 02:41:10.599484	\N	\N	\N	\N	\N	\N
256	2016-09-03 00:00:00	39	59	7	67	50	25	2019-02-16 02:41:10.621676	2019-02-16 02:41:10.621676	\N	\N	\N	\N	\N	\N
257	2016-08-31 00:00:00	10	56	24	61	5	12	2019-02-16 02:41:10.631134	2019-02-16 02:41:10.631134	\N	\N	\N	\N	\N	\N
258	2016-08-27 00:00:00	48	32	63	4	49	20	2019-02-16 02:41:10.652837	2019-02-16 02:41:10.652837	\N	\N	\N	\N	\N	\N
259	2016-08-24 00:00:00	25	11	9	65	64	16	2019-02-16 02:41:10.662348	2019-02-16 02:41:10.662348	\N	\N	\N	\N	\N	\N
260	2016-08-20 00:00:00	68	3	21	6	60	24	2019-02-16 02:41:10.672499	2019-02-16 02:41:10.672499	\N	\N	\N	\N	\N	\N
261	2016-08-17 00:00:00	44	49	33	50	52	8	2019-02-16 02:41:10.689034	2019-02-16 02:41:10.689034	\N	\N	\N	\N	\N	\N
262	2016-08-13 00:00:00	44	38	64	69	60	6	2019-02-16 02:41:10.702734	2019-02-16 02:41:10.702734	\N	\N	\N	\N	\N	\N
263	2016-08-10 00:00:00	64	56	61	23	67	12	2019-02-16 02:41:10.718421	2019-02-16 02:41:10.718421	\N	\N	\N	\N	\N	\N
264	2016-08-06 00:00:00	52	33	47	36	20	12	2019-02-16 02:41:10.728211	2019-02-16 02:41:10.728211	\N	\N	\N	\N	\N	\N
265	2016-08-03 00:00:00	66	27	11	9	67	2	2019-02-16 02:41:10.748014	2019-02-16 02:41:10.748014	\N	\N	\N	\N	\N	\N
266	2016-07-30 00:00:00	32	21	17	23	11	5	2019-02-16 02:41:10.758847	2019-02-16 02:41:10.758847	\N	\N	\N	\N	\N	\N
267	2016-07-27 00:00:00	10	47	68	65	50	24	2019-02-16 02:41:10.778159	2019-02-16 02:41:10.778159	\N	\N	\N	\N	\N	\N
268	2016-07-23 00:00:00	39	5	35	7	23	11	2019-02-16 02:41:10.788597	2019-02-16 02:41:10.788597	\N	\N	\N	\N	\N	\N
269	2016-07-20 00:00:00	6	58	66	25	35	5	2019-02-16 02:41:10.810263	2019-02-16 02:41:10.810263	\N	\N	\N	\N	\N	\N
270	2016-07-16 00:00:00	11	50	40	17	62	26	2019-02-16 02:41:10.821088	2019-02-16 02:41:10.821088	\N	\N	\N	\N	\N	\N
271	2016-07-13 00:00:00	57	15	29	3	54	10	2019-02-16 02:41:10.840901	2019-02-16 02:41:10.840901	\N	\N	\N	\N	\N	\N
272	2016-07-09 00:00:00	32	28	10	64	61	12	2019-02-16 02:41:10.850648	2019-02-16 02:41:10.850648	\N	\N	\N	\N	\N	\N
273	2016-07-06 00:00:00	66	57	2	31	24	18	2019-02-16 02:41:10.869912	2019-02-16 02:41:10.869912	\N	\N	\N	\N	\N	\N
274	2016-07-02 00:00:00	63	39	59	34	10	4	2019-02-16 02:41:10.883234	2019-02-16 02:41:10.883234	\N	\N	\N	\N	\N	\N
275	2016-06-29 00:00:00	29	37	23	64	60	6	2019-02-16 02:41:10.901933	2019-02-16 02:41:10.901933	\N	\N	\N	\N	\N	\N
276	2016-06-25 00:00:00	36	3	56	69	27	25	2019-02-16 02:41:10.911727	2019-02-16 02:41:10.911727	\N	\N	\N	\N	\N	\N
277	2016-06-22 00:00:00	14	42	43	52	40	17	2019-02-16 02:41:10.936685	2019-02-16 02:41:10.936685	\N	\N	\N	\N	\N	\N
278	2016-06-18 00:00:00	53	2	23	63	41	11	2019-02-16 02:41:10.947124	2019-02-16 02:41:10.947124	\N	\N	\N	\N	\N	\N
279	2016-06-15 00:00:00	33	4	24	31	22	10	2019-02-16 02:41:10.965267	2019-02-16 02:41:10.965267	\N	\N	\N	\N	\N	\N
280	2016-06-11 00:00:00	36	58	27	41	20	7	2019-02-16 02:41:10.975951	2019-02-16 02:41:10.975951	\N	\N	\N	\N	\N	\N
281	2016-06-08 00:00:00	37	69	12	25	60	20	2019-02-16 02:41:10.996928	2019-02-16 02:41:10.996928	\N	\N	\N	\N	\N	\N
282	2016-06-04 00:00:00	20	16	43	64	22	17	2019-02-16 02:41:11.007431	2019-02-16 02:41:11.007431	\N	\N	\N	\N	\N	\N
283	2016-06-01 00:00:00	40	69	33	23	30	12	2019-02-16 02:41:11.026537	2019-02-16 02:41:11.026537	\N	\N	\N	\N	\N	\N
284	2016-05-28 00:00:00	6	34	33	59	58	12	2019-02-16 02:41:11.036746	2019-02-16 02:41:11.036746	\N	\N	\N	\N	\N	\N
285	2016-05-25 00:00:00	64	24	59	41	11	15	2019-02-16 02:41:11.056549	2019-02-16 02:41:11.056549	\N	\N	\N	\N	\N	\N
286	2016-05-21 00:00:00	9	32	5	7	23	26	2019-02-16 02:41:11.066376	2019-02-16 02:41:11.066376	\N	\N	\N	\N	\N	\N
287	2016-05-18 00:00:00	25	67	39	23	54	11	2019-02-16 02:41:11.092142	2019-02-16 02:41:11.092142	\N	\N	\N	\N	\N	\N
288	2016-05-14 00:00:00	64	27	65	13	47	9	2019-02-16 02:41:11.102788	2019-02-16 02:41:11.102788	\N	\N	\N	\N	\N	\N
289	2016-05-11 00:00:00	69	32	52	66	20	23	2019-02-16 02:41:11.121975	2019-02-16 02:41:11.121975	\N	\N	\N	\N	\N	\N
290	2016-05-07 00:00:00	25	66	44	5	26	9	2019-02-16 02:41:11.131524	2019-02-16 02:41:11.131524	\N	\N	\N	\N	\N	\N
291	2016-05-04 00:00:00	47	69	30	66	57	3	2019-02-16 02:41:11.153236	2019-02-16 02:41:11.153236	\N	\N	\N	\N	\N	\N
292	2016-04-30 00:00:00	32	16	3	34	12	14	2019-02-16 02:41:11.163265	2019-02-16 02:41:11.163265	\N	\N	\N	\N	\N	\N
293	2016-04-27 00:00:00	25	39	64	2	33	17	2019-02-16 02:41:11.18296	2019-02-16 02:41:11.18296	\N	\N	\N	\N	\N	\N
294	2016-04-23 00:00:00	46	62	59	35	19	13	2019-02-16 02:41:11.19304	2019-02-16 02:41:11.19304	\N	\N	\N	\N	\N	\N
295	2016-04-20 00:00:00	62	30	12	25	52	8	2019-02-16 02:41:11.202734	2019-02-16 02:41:11.202734	\N	\N	\N	\N	\N	\N
296	2016-04-16 00:00:00	32	3	25	51	18	3	2019-02-16 02:41:11.219069	2019-02-16 02:41:11.219069	\N	\N	\N	\N	\N	\N
297	2016-04-13 00:00:00	30	35	38	33	64	22	2019-02-16 02:41:11.243636	2019-02-16 02:41:11.243636	\N	\N	\N	\N	\N	\N
298	2016-04-09 00:00:00	14	23	41	61	22	9	2019-02-16 02:41:11.253012	2019-02-16 02:41:11.253012	\N	\N	\N	\N	\N	\N
299	2016-04-06 00:00:00	65	28	49	60	4	25	2019-02-16 02:41:11.277165	2019-02-16 02:41:11.277165	\N	\N	\N	\N	\N	\N
300	2016-04-02 00:00:00	9	61	28	40	30	3	2019-02-16 02:41:11.287821	2019-02-16 02:41:11.287821	\N	\N	\N	\N	\N	\N
301	2016-03-30 00:00:00	55	24	63	53	44	19	2019-02-16 02:41:11.308993	2019-02-16 02:41:11.308993	\N	\N	\N	\N	\N	\N
302	2016-03-26 00:00:00	23	42	68	52	11	6	2019-02-16 02:41:11.317475	2019-02-16 02:41:11.317475	\N	\N	\N	\N	\N	\N
303	2016-03-23 00:00:00	22	15	49	5	8	25	2019-02-16 02:41:11.32658	2019-02-16 02:41:11.32658	\N	\N	\N	\N	\N	\N
304	2016-03-19 00:00:00	11	60	23	54	43	3	2019-02-16 02:41:11.344581	2019-02-16 02:41:11.344581	\N	\N	\N	\N	\N	\N
305	2016-03-16 00:00:00	46	50	12	13	10	21	2019-02-16 02:41:11.358932	2019-02-16 02:41:11.358932	\N	\N	\N	\N	\N	\N
306	2016-03-12 00:00:00	28	11	50	57	62	23	2019-02-16 02:41:11.375134	2019-02-16 02:41:11.375134	\N	\N	\N	\N	\N	\N
307	2016-03-09 00:00:00	32	34	14	23	68	3	2019-02-16 02:41:11.383738	2019-02-16 02:41:11.383738	\N	\N	\N	\N	\N	\N
308	2016-03-05 00:00:00	3	34	27	59	69	19	2019-02-16 02:41:11.404573	2019-02-16 02:41:11.404573	\N	\N	\N	\N	\N	\N
309	2016-03-02 00:00:00	62	52	13	12	44	6	2019-02-16 02:41:11.420697	2019-02-16 02:41:11.420697	\N	\N	\N	\N	\N	\N
310	2016-02-27 00:00:00	22	11	53	21	10	18	2019-02-16 02:41:11.434961	2019-02-16 02:41:11.434961	\N	\N	\N	\N	\N	\N
311	2016-02-24 00:00:00	67	21	65	31	64	5	2019-02-16 02:41:11.448924	2019-02-16 02:41:11.448924	\N	\N	\N	\N	\N	\N
312	2016-02-20 00:00:00	54	12	11	16	15	25	2019-02-16 02:41:11.464072	2019-02-16 02:41:11.464072	\N	\N	\N	\N	\N	\N
313	2016-02-17 00:00:00	29	27	7	40	17	25	2019-02-16 02:41:11.48074	2019-02-16 02:41:11.48074	\N	\N	\N	\N	\N	\N
314	2016-02-13 00:00:00	7	15	36	18	19	20	2019-02-16 02:41:11.4981	2019-02-16 02:41:11.4981	\N	\N	\N	\N	\N	\N
315	2016-02-10 00:00:00	2	62	40	50	3	5	2019-02-16 02:41:11.514101	2019-02-16 02:41:11.514101	\N	\N	\N	\N	\N	\N
316	2016-02-06 00:00:00	13	4	36	31	52	8	2019-02-16 02:41:11.529118	2019-02-16 02:41:11.529118	\N	\N	\N	\N	\N	\N
317	2016-02-03 00:00:00	26	60	67	31	28	23	2019-02-16 02:41:11.537616	2019-02-16 02:41:11.537616	\N	\N	\N	\N	\N	\N
318	2016-01-30 00:00:00	16	5	12	31	43	18	2019-02-16 02:41:11.546619	2019-02-16 02:41:11.546619	\N	\N	\N	\N	\N	\N
319	2016-01-27 00:00:00	40	52	3	67	12	21	2019-02-16 02:41:11.564695	2019-02-16 02:41:11.564695	\N	\N	\N	\N	\N	\N
320	2016-01-23 00:00:00	32	22	40	69	34	19	2019-02-16 02:41:11.588296	2019-02-16 02:41:11.588296	\N	\N	\N	\N	\N	\N
321	2016-01-20 00:00:00	44	5	39	69	47	24	2019-02-16 02:41:11.602045	2019-02-16 02:41:11.602045	\N	\N	\N	\N	\N	\N
322	2016-01-16 00:00:00	61	52	51	64	3	6	2019-02-16 02:41:11.628734	2019-02-16 02:41:11.628734	\N	\N	\N	\N	\N	\N
323	2016-01-13 00:00:00	8	27	34	4	19	10	2019-02-16 02:41:11.637171	2019-02-16 02:41:11.637171	\N	\N	\N	\N	\N	\N
324	2016-01-09 00:00:00	32	16	19	57	34	13	2019-02-16 02:41:11.651433	2019-02-16 02:41:11.651433	\N	\N	\N	\N	\N	\N
325	2016-01-06 00:00:00	47	2	63	62	11	17	2019-02-16 02:41:11.666546	2019-02-16 02:41:11.666546	\N	\N	\N	\N	\N	\N
326	2016-01-02 00:00:00	42	15	6	5	29	10	2019-02-16 02:41:11.68071	2019-02-16 02:41:11.68071	\N	\N	\N	\N	\N	\N
327	2015-12-30 00:00:00	12	61	54	38	36	22	2019-02-16 02:41:11.696673	2019-02-16 02:41:11.696673	\N	\N	\N	\N	\N	\N
328	2015-12-26 00:00:00	65	40	44	59	27	20	2019-02-16 02:41:11.711008	2019-02-16 02:41:11.711008	\N	\N	\N	\N	\N	\N
329	2015-12-23 00:00:00	67	16	63	38	55	25	2019-02-16 02:41:11.725152	2019-02-16 02:41:11.725152	\N	\N	\N	\N	\N	\N
330	2015-12-19 00:00:00	30	68	59	41	28	10	2019-02-16 02:41:11.741765	2019-02-16 02:41:11.741765	\N	\N	\N	\N	\N	\N
331	2015-12-16 00:00:00	9	42	10	55	32	6	2019-02-16 02:41:11.756687	2019-02-16 02:41:11.756687	\N	\N	\N	\N	\N	\N
332	2015-12-12 00:00:00	62	2	30	19	14	22	2019-02-16 02:41:11.765069	2019-02-16 02:41:11.765069	\N	\N	\N	\N	\N	\N
333	2015-12-09 00:00:00	16	46	10	56	7	1	2019-02-16 02:41:11.78069	2019-02-16 02:41:11.78069	\N	\N	\N	\N	\N	\N
334	2015-12-05 00:00:00	47	33	68	27	13	13	2019-02-16 02:41:11.792468	2019-02-16 02:41:11.792468	\N	\N	\N	\N	\N	\N
335	2015-12-02 00:00:00	14	18	19	64	32	9	2019-02-16 02:41:11.80818	2019-02-16 02:41:11.80818	\N	\N	\N	\N	\N	\N
336	2015-11-28 00:00:00	47	2	66	67	6	2	2019-02-16 02:41:11.81667	2019-02-16 02:41:11.81667	\N	\N	\N	\N	\N	\N
337	2015-11-25 00:00:00	53	16	69	58	29	21	2019-02-16 02:41:11.825706	2019-02-16 02:41:11.825706	\N	\N	\N	\N	\N	\N
338	2015-11-21 00:00:00	37	57	47	50	52	21	2019-02-16 02:41:11.844106	2019-02-16 02:41:11.844106	\N	\N	\N	\N	\N	\N
339	2015-11-18 00:00:00	40	17	46	69	41	6	2019-02-16 02:41:11.858707	2019-02-16 02:41:11.858707	\N	\N	\N	\N	\N	\N
340	2015-11-14 00:00:00	66	37	22	14	45	5	2019-02-16 02:41:11.874845	2019-02-16 02:41:11.874845	\N	\N	\N	\N	\N	\N
341	2015-11-11 00:00:00	26	4	32	55	64	18	2019-02-16 02:41:11.883216	2019-02-16 02:41:11.883216	\N	\N	\N	\N	\N	\N
342	2015-11-07 00:00:00	50	53	7	16	25	15	2019-02-16 02:41:11.902861	2019-02-16 02:41:11.902861	\N	\N	\N	\N	\N	\N
343	2015-11-04 00:00:00	12	2	17	20	65	17	2019-02-16 02:41:11.911896	2019-02-16 02:41:11.911896	\N	\N	\N	\N	\N	\N
344	2015-10-31 00:00:00	9	47	20	25	68	7	2019-02-16 02:41:11.93306	2019-02-16 02:41:11.93306	\N	\N	\N	\N	\N	\N
345	2015-10-28 00:00:00	56	62	54	63	4	10	2019-02-16 02:41:11.942056	2019-02-16 02:41:11.942056	\N	\N	\N	\N	\N	\N
346	2015-10-24 00:00:00	20	31	56	60	64	2	2019-02-16 02:41:11.950306	2019-02-16 02:41:11.950306	\N	\N	\N	\N	\N	\N
347	2015-10-21 00:00:00	57	32	30	42	56	11	2019-02-16 02:41:11.968697	2019-02-16 02:41:11.968697	\N	\N	\N	\N	\N	\N
348	2015-10-17 00:00:00	57	62	69	49	48	19	2019-02-16 02:41:11.98069	2019-02-16 02:41:11.98069	\N	\N	\N	\N	\N	\N
349	2015-10-14 00:00:00	20	15	31	40	29	1	2019-02-16 02:41:11.999887	2019-02-16 02:41:11.999887	\N	\N	\N	\N	\N	\N
350	2015-10-10 00:00:00	27	68	12	43	29	1	2019-02-16 02:41:12.014088	2019-02-16 02:41:12.014088	\N	\N	\N	\N	\N	\N
351	2015-10-07 00:00:00	52	40	48	18	30	9	2019-02-16 02:41:12.029939	2019-02-16 02:41:12.029939	\N	\N	\N	\N	\N	\N
352	2015-10-03 00:00:00	33	6	46	44	26	4	2019-02-16 02:41:12.039287	2019-02-16 02:41:12.039287	\N	\N	\N	\N	\N	\N
353	2015-09-30 00:00:00	40	59	21	39	55	17	2019-02-16 02:41:12.058761	2019-02-16 02:41:12.058761	\N	\N	\N	\N	\N	\N
354	2015-09-26 00:00:00	23	57	42	31	50	5	2019-02-16 02:41:12.067328	2019-02-16 02:41:12.067328	\N	\N	\N	\N	\N	\N
355	2015-09-23 00:00:00	8	29	51	58	41	5	2019-02-16 02:41:12.089241	2019-02-16 02:41:12.089241	\N	\N	\N	\N	\N	\N
356	2015-09-19 00:00:00	12	43	17	26	48	24	2019-02-16 02:41:12.097695	2019-02-16 02:41:12.097695	\N	\N	\N	\N	\N	\N
357	2015-09-16 00:00:00	7	5	39	24	31	7	2019-02-16 02:41:12.121472	2019-02-16 02:41:12.121472	\N	\N	\N	\N	\N	\N
358	2015-09-12 00:00:00	35	3	16	2	13	27	2019-02-16 02:41:12.131362	2019-02-16 02:41:12.131362	\N	\N	\N	\N	\N	\N
359	2015-09-09 00:00:00	50	44	45	51	47	8	2019-02-16 02:41:12.158459	2019-02-16 02:41:12.158459	\N	\N	\N	\N	\N	\N
360	2015-09-05 00:00:00	29	10	18	16	45	19	2019-02-16 02:41:12.169684	2019-02-16 02:41:12.169684	\N	\N	\N	\N	\N	\N
361	2015-09-02 00:00:00	17	46	22	30	56	16	2019-02-16 02:41:12.184785	2019-02-16 02:41:12.184785	\N	\N	\N	\N	\N	\N
362	2015-08-29 00:00:00	25	18	29	21	28	16	2019-02-16 02:41:12.199069	2019-02-16 02:41:12.199069	\N	\N	\N	\N	\N	\N
363	2015-08-26 00:00:00	22	56	2	45	32	12	2019-02-16 02:41:12.215315	2019-02-16 02:41:12.215315	\N	\N	\N	\N	\N	\N
364	2015-08-22 00:00:00	12	14	21	4	55	7	2019-02-16 02:41:12.228135	2019-02-16 02:41:12.228135	\N	\N	\N	\N	\N	\N
365	2015-08-19 00:00:00	6	43	48	50	8	7	2019-02-16 02:41:12.247395	2019-02-16 02:41:12.247395	\N	\N	\N	\N	\N	\N
366	2015-08-15 00:00:00	3	17	13	52	42	24	2019-02-16 02:41:12.259631	2019-02-16 02:41:12.259631	\N	\N	\N	\N	\N	\N
367	2015-08-12 00:00:00	29	38	8	13	52	28	2019-02-16 02:41:12.275927	2019-02-16 02:41:12.275927	\N	\N	\N	\N	\N	\N
368	2015-08-08 00:00:00	34	48	54	52	9	15	2019-02-16 02:41:12.290311	2019-02-16 02:41:12.290311	\N	\N	\N	\N	\N	\N
369	2015-08-05 00:00:00	42	14	9	16	11	19	2019-02-16 02:41:12.304753	2019-02-16 02:41:12.304753	\N	\N	\N	\N	\N	\N
370	2015-08-01 00:00:00	13	7	49	24	57	15	2019-02-16 02:41:12.318718	2019-02-16 02:41:12.318718	\N	\N	\N	\N	\N	\N
371	2015-07-29 00:00:00	4	52	22	27	28	35	2019-02-16 02:41:12.32764	2019-02-16 02:41:12.32764	\N	\N	\N	\N	\N	\N
372	2015-07-25 00:00:00	27	44	41	29	34	2	2019-02-16 02:41:12.340425	2019-02-16 02:41:12.340425	\N	\N	\N	\N	\N	\N
373	2015-07-22 00:00:00	31	12	57	44	43	11	2019-02-16 02:41:12.358722	2019-02-16 02:41:12.358722	\N	\N	\N	\N	\N	\N
374	2015-07-18 00:00:00	39	6	37	45	55	33	2019-02-16 02:41:12.370886	2019-02-16 02:41:12.370886	\N	\N	\N	\N	\N	\N
375	2015-07-15 00:00:00	45	34	13	50	16	11	2019-02-16 02:41:12.387873	2019-02-16 02:41:12.387873	\N	\N	\N	\N	\N	\N
376	2015-07-11 00:00:00	46	39	52	11	54	3	2019-02-16 02:41:12.402753	2019-02-16 02:41:12.402753	\N	\N	\N	\N	\N	\N
377	2015-07-08 00:00:00	30	27	25	15	4	18	2019-02-16 02:41:12.420513	2019-02-16 02:41:12.420513	\N	\N	\N	\N	\N	\N
378	2015-07-04 00:00:00	24	18	6	3	14	21	2019-02-16 02:41:12.444253	2019-02-16 02:41:12.444253	\N	\N	\N	\N	\N	\N
379	2015-07-01 00:00:00	24	41	31	26	7	25	2019-02-16 02:41:12.460069	2019-02-16 02:41:12.460069	\N	\N	\N	\N	\N	\N
380	2015-06-27 00:00:00	35	18	46	49	28	27	2019-02-16 02:41:12.475405	2019-02-16 02:41:12.475405	\N	\N	\N	\N	\N	\N
381	2015-06-24 00:00:00	5	10	3	22	32	7	2019-02-16 02:41:12.491423	2019-02-16 02:41:12.491423	\N	\N	\N	\N	\N	\N
382	2015-06-20 00:00:00	20	16	10	57	9	15	2019-02-16 02:41:12.508498	2019-02-16 02:41:12.508498	\N	\N	\N	\N	\N	\N
383	2015-06-17 00:00:00	22	20	21	54	41	7	2019-02-16 02:41:12.524034	2019-02-16 02:41:12.524034	\N	\N	\N	\N	\N	\N
384	2015-06-13 00:00:00	41	29	52	54	48	29	2019-02-16 02:41:12.540087	2019-02-16 02:41:12.540087	\N	\N	\N	\N	\N	\N
385	2015-06-10 00:00:00	49	32	31	53	48	25	2019-02-16 02:41:12.55484	2019-02-16 02:41:12.55484	\N	\N	\N	\N	\N	\N
386	2015-06-06 00:00:00	18	43	13	8	27	15	2019-02-16 02:41:12.568733	2019-02-16 02:41:12.568733	\N	\N	\N	\N	\N	\N
387	2015-06-03 00:00:00	6	40	37	13	8	11	2019-02-16 02:41:12.585313	2019-02-16 02:41:12.585313	\N	\N	\N	\N	\N	\N
388	2015-05-30 00:00:00	57	25	8	56	9	22	2019-02-16 02:41:12.6007	2019-02-16 02:41:12.6007	\N	\N	\N	\N	\N	\N
389	2015-05-27 00:00:00	8	15	59	34	53	23	2019-02-16 02:41:12.615635	2019-02-16 02:41:12.615635	\N	\N	\N	\N	\N	\N
390	2015-05-23 00:00:00	31	9	43	17	15	16	2019-02-16 02:41:12.630829	2019-02-16 02:41:12.630829	\N	\N	\N	\N	\N	\N
391	2015-05-20 00:00:00	12	1	44	28	35	25	2019-02-16 02:41:12.640119	2019-02-16 02:41:12.640119	\N	\N	\N	\N	\N	\N
392	2015-05-16 00:00:00	48	24	38	52	29	32	2019-02-16 02:41:12.662891	2019-02-16 02:41:12.662891	\N	\N	\N	\N	\N	\N
393	2015-05-13 00:00:00	31	29	1	47	25	7	2019-02-16 02:41:12.671426	2019-02-16 02:41:12.671426	\N	\N	\N	\N	\N	\N
394	2015-05-09 00:00:00	58	4	17	35	15	17	2019-02-16 02:41:12.692067	2019-02-16 02:41:12.692067	\N	\N	\N	\N	\N	\N
395	2015-05-06 00:00:00	24	41	39	23	27	30	2019-02-16 02:41:12.711879	2019-02-16 02:41:12.711879	\N	\N	\N	\N	\N	\N
396	2015-05-02 00:00:00	2	31	6	11	30	33	2019-02-16 02:41:12.72075	2019-02-16 02:41:12.72075	\N	\N	\N	\N	\N	\N
397	2015-04-29 00:00:00	26	1	38	34	51	6	2019-02-16 02:41:12.744843	2019-02-16 02:41:12.744843	\N	\N	\N	\N	\N	\N
398	2015-04-25 00:00:00	45	21	35	33	38	12	2019-02-16 02:41:12.753566	2019-02-16 02:41:12.753566	\N	\N	\N	\N	\N	\N
399	2015-04-22 00:00:00	10	14	25	39	53	18	2019-02-16 02:41:12.777203	2019-02-16 02:41:12.777203	\N	\N	\N	\N	\N	\N
400	2015-04-18 00:00:00	31	22	13	23	29	17	2019-02-16 02:41:12.787643	2019-02-16 02:41:12.787643	\N	\N	\N	\N	\N	\N
401	2015-04-15 00:00:00	1	21	29	16	40	30	2019-02-16 02:41:12.814152	2019-02-16 02:41:12.814152	\N	\N	\N	\N	\N	\N
402	2015-04-11 00:00:00	58	1	32	42	12	12	2019-02-16 02:41:12.825276	2019-02-16 02:41:12.825276	\N	\N	\N	\N	\N	\N
403	2015-04-08 00:00:00	1	19	45	58	46	29	2019-02-16 02:41:12.841223	2019-02-16 02:41:12.841223	\N	\N	\N	\N	\N	\N
404	2015-04-04 00:00:00	41	33	39	54	40	28	2019-02-16 02:41:12.85529	2019-02-16 02:41:12.85529	\N	\N	\N	\N	\N	\N
405	2015-04-01 00:00:00	44	39	30	33	2	1	2019-02-16 02:41:12.871947	2019-02-16 02:41:12.871947	\N	\N	\N	\N	\N	\N
406	2015-03-28 00:00:00	38	2	12	4	6	17	2019-02-16 02:41:12.884735	2019-02-16 02:41:12.884735	\N	\N	\N	\N	\N	\N
407	2015-03-25 00:00:00	54	23	19	7	50	14	2019-02-16 02:41:12.902993	2019-02-16 02:41:12.902993	\N	\N	\N	\N	\N	\N
408	2015-03-21 00:00:00	30	38	16	11	42	7	2019-02-16 02:41:12.915186	2019-02-16 02:41:12.915186	\N	\N	\N	\N	\N	\N
409	2015-03-18 00:00:00	30	47	33	25	14	8	2019-02-16 02:41:12.932209	2019-02-16 02:41:12.932209	\N	\N	\N	\N	\N	\N
410	2015-03-14 00:00:00	46	47	8	14	39	18	2019-02-16 02:41:12.946492	2019-02-16 02:41:12.946492	\N	\N	\N	\N	\N	\N
411	2015-03-11 00:00:00	24	44	31	11	40	27	2019-02-16 02:41:12.961161	2019-02-16 02:41:12.961161	\N	\N	\N	\N	\N	\N
412	2015-03-07 00:00:00	50	42	36	38	34	33	2019-02-16 02:41:12.975901	2019-02-16 02:41:12.975901	\N	\N	\N	\N	\N	\N
413	2015-03-04 00:00:00	8	35	15	12	50	32	2019-02-16 02:41:12.984364	2019-02-16 02:41:12.984364	\N	\N	\N	\N	\N	\N
414	2015-02-28 00:00:00	25	28	11	17	46	12	2019-02-16 02:41:12.996847	2019-02-16 02:41:12.996847	\N	\N	\N	\N	\N	\N
415	2015-02-25 00:00:00	39	17	21	32	19	8	2019-02-16 02:41:13.014167	2019-02-16 02:41:13.014167	\N	\N	\N	\N	\N	\N
416	2015-02-21 00:00:00	18	51	14	34	10	26	2019-02-16 02:41:13.02813	2019-02-16 02:41:13.02813	\N	\N	\N	\N	\N	\N
417	2015-02-18 00:00:00	29	1	49	9	32	22	2019-02-16 02:41:13.043014	2019-02-16 02:41:13.043014	\N	\N	\N	\N	\N	\N
418	2015-02-14 00:00:00	44	45	1	24	51	28	2019-02-16 02:41:13.05967	2019-02-16 02:41:13.05967	\N	\N	\N	\N	\N	\N
419	2015-02-11 00:00:00	25	11	54	13	39	19	2019-02-16 02:41:13.072403	2019-02-16 02:41:13.072403	\N	\N	\N	\N	\N	\N
420	2015-02-07 00:00:00	34	58	5	21	10	33	2019-02-16 02:41:13.088454	2019-02-16 02:41:13.088454	\N	\N	\N	\N	\N	\N
421	2015-02-04 00:00:00	51	52	36	24	56	22	2019-02-16 02:41:13.101979	2019-02-16 02:41:13.101979	\N	\N	\N	\N	\N	\N
422	2015-01-31 00:00:00	16	5	50	11	26	34	2019-02-16 02:41:13.118066	2019-02-16 02:41:13.118066	\N	\N	\N	\N	\N	\N
423	2015-01-28 00:00:00	49	24	12	36	35	1	2019-02-16 02:41:13.132874	2019-02-16 02:41:13.132874	\N	\N	\N	\N	\N	\N
424	2015-01-24 00:00:00	19	16	20	33	29	10	2019-02-16 02:41:13.147204	2019-02-16 02:41:13.147204	\N	\N	\N	\N	\N	\N
425	2015-01-21 00:00:00	57	12	28	15	11	23	2019-02-16 02:41:13.163547	2019-02-16 02:41:13.163547	\N	\N	\N	\N	\N	\N
426	2015-01-17 00:00:00	15	27	23	36	16	9	2019-02-16 02:41:13.179251	2019-02-16 02:41:13.179251	\N	\N	\N	\N	\N	\N
427	2015-01-14 00:00:00	10	4	53	2	41	22	2019-02-16 02:41:13.194288	2019-02-16 02:41:13.194288	\N	\N	\N	\N	\N	\N
428	2015-01-10 00:00:00	19	9	29	2	28	19	2019-02-16 02:41:13.202718	2019-02-16 02:41:13.202718	\N	\N	\N	\N	\N	\N
429	2015-01-07 00:00:00	47	49	59	15	14	10	2019-02-16 02:41:13.215278	2019-02-16 02:41:13.215278	\N	\N	\N	\N	\N	\N
430	2015-01-03 00:00:00	4	43	46	55	18	25	2019-02-16 02:41:13.240608	2019-02-16 02:41:13.240608	\N	\N	\N	\N	\N	\N
431	2014-12-31 00:00:00	40	27	17	53	37	35	2019-02-16 02:41:13.249069	2019-02-16 02:41:13.249069	\N	\N	\N	\N	\N	\N
432	2014-12-27 00:00:00	36	14	10	11	7	15	2019-02-16 02:41:13.261925	2019-02-16 02:41:13.261925	\N	\N	\N	\N	\N	\N
433	2014-12-24 00:00:00	46	11	12	47	50	22	2019-02-16 02:41:13.277287	2019-02-16 02:41:13.277287	\N	\N	\N	\N	\N	\N
434	2014-12-20 00:00:00	19	15	56	31	14	5	2019-02-16 02:41:13.291956	2019-02-16 02:41:13.291956	\N	\N	\N	\N	\N	\N
435	2014-12-17 00:00:00	47	31	48	38	22	15	2019-02-16 02:41:13.306527	2019-02-16 02:41:13.306527	\N	\N	\N	\N	\N	\N
436	2014-12-13 00:00:00	5	13	43	55	28	33	2019-02-16 02:41:13.320754	2019-02-16 02:41:13.320754	\N	\N	\N	\N	\N	\N
437	2014-12-10 00:00:00	48	34	55	44	54	10	2019-02-16 02:41:13.335738	2019-02-16 02:41:13.335738	\N	\N	\N	\N	\N	\N
438	2014-12-06 00:00:00	43	22	49	15	12	14	2019-02-16 02:41:13.351756	2019-02-16 02:41:13.351756	\N	\N	\N	\N	\N	\N
439	2014-12-03 00:00:00	54	30	32	46	25	26	2019-02-16 02:41:13.366934	2019-02-16 02:41:13.366934	\N	\N	\N	\N	\N	\N
440	2014-11-29 00:00:00	13	30	24	42	48	27	2019-02-16 02:41:13.382231	2019-02-16 02:41:13.382231	\N	\N	\N	\N	\N	\N
441	2014-11-26 00:00:00	46	17	22	16	54	35	2019-02-16 02:41:13.40356	2019-02-16 02:41:13.40356	\N	\N	\N	\N	\N	\N
442	2014-11-22 00:00:00	54	53	23	57	49	35	2019-02-16 02:41:13.415348	2019-02-16 02:41:13.415348	\N	\N	\N	\N	\N	\N
443	2014-11-19 00:00:00	38	6	36	48	51	17	2019-02-16 02:41:13.432424	2019-02-16 02:41:13.432424	\N	\N	\N	\N	\N	\N
444	2014-11-15 00:00:00	35	16	33	51	13	28	2019-02-16 02:41:13.446589	2019-02-16 02:41:13.446589	\N	\N	\N	\N	\N	\N
445	2014-11-12 00:00:00	55	37	39	52	51	11	2019-02-16 02:41:13.461887	2019-02-16 02:41:13.461887	\N	\N	\N	\N	\N	\N
446	2014-11-08 00:00:00	9	33	19	38	54	15	2019-02-16 02:41:13.476598	2019-02-16 02:41:13.476598	\N	\N	\N	\N	\N	\N
447	2014-11-05 00:00:00	19	2	11	21	42	34	2019-02-16 02:41:13.491891	2019-02-16 02:41:13.491891	\N	\N	\N	\N	\N	\N
448	2014-11-01 00:00:00	1	38	25	13	3	17	2019-02-16 02:41:13.506658	2019-02-16 02:41:13.506658	\N	\N	\N	\N	\N	\N
449	2014-10-29 00:00:00	48	28	59	25	57	16	2019-02-16 02:41:13.515142	2019-02-16 02:41:13.515142	\N	\N	\N	\N	\N	\N
450	2014-10-25 00:00:00	54	57	51	6	10	12	2019-02-16 02:41:13.527798	2019-02-16 02:41:13.527798	\N	\N	\N	\N	\N	\N
451	2014-10-22 00:00:00	40	42	30	29	50	16	2019-02-16 02:41:13.542436	2019-02-16 02:41:13.542436	\N	\N	\N	\N	\N	\N
452	2014-10-18 00:00:00	36	20	54	27	26	19	2019-02-16 02:41:13.558809	2019-02-16 02:41:13.558809	\N	\N	\N	\N	\N	\N
453	2014-10-15 00:00:00	5	7	28	27	19	20	2019-02-16 02:41:13.569919	2019-02-16 02:41:13.569919	\N	\N	\N	\N	\N	\N
454	2014-10-11 00:00:00	37	39	38	19	10	28	2019-02-16 02:41:13.590408	2019-02-16 02:41:13.590408	\N	\N	\N	\N	\N	\N
455	2014-10-08 00:00:00	46	50	16	31	5	18	2019-02-16 02:41:13.599285	2019-02-16 02:41:13.599285	\N	\N	\N	\N	\N	\N
456	2014-10-04 00:00:00	13	33	18	24	25	31	2019-02-16 02:41:13.622235	2019-02-16 02:41:13.622235	\N	\N	\N	\N	\N	\N
457	2014-10-01 00:00:00	20	1	45	18	4	7	2019-02-16 02:41:13.631028	2019-02-16 02:41:13.631028	\N	\N	\N	\N	\N	\N
458	2014-09-27 00:00:00	54	11	52	35	2	13	2019-02-16 02:41:13.652114	2019-02-16 02:41:13.652114	\N	\N	\N	\N	\N	\N
459	2014-09-24 00:00:00	7	14	24	41	21	26	2019-02-16 02:41:13.661227	2019-02-16 02:41:13.661227	\N	\N	\N	\N	\N	\N
460	2014-09-20 00:00:00	23	22	30	39	37	16	2019-02-16 02:41:13.683625	2019-02-16 02:41:13.683625	\N	\N	\N	\N	\N	\N
461	2014-09-17 00:00:00	36	18	25	50	48	23	2019-02-16 02:41:13.692763	2019-02-16 02:41:13.692763	\N	\N	\N	\N	\N	\N
462	2014-09-13 00:00:00	37	6	1	53	16	27	2019-02-16 02:41:13.713616	2019-02-16 02:41:13.713616	\N	\N	\N	\N	\N	\N
463	2014-09-10 00:00:00	14	39	2	40	43	13	2019-02-16 02:41:13.723218	2019-02-16 02:41:13.723218	\N	\N	\N	\N	\N	\N
464	2014-09-06 00:00:00	29	43	31	50	9	18	2019-02-16 02:41:13.745453	2019-02-16 02:41:13.745453	\N	\N	\N	\N	\N	\N
465	2014-09-03 00:00:00	43	2	51	45	16	35	2019-02-16 02:41:13.754609	2019-02-16 02:41:13.754609	\N	\N	\N	\N	\N	\N
466	2014-08-30 00:00:00	5	52	28	59	31	27	2019-02-16 02:41:13.777465	2019-02-16 02:41:13.777465	\N	\N	\N	\N	\N	\N
467	2014-08-27 00:00:00	24	17	45	46	26	19	2019-02-16 02:41:13.785946	2019-02-16 02:41:13.785946	\N	\N	\N	\N	\N	\N
468	2014-08-23 00:00:00	52	28	36	32	35	31	2019-02-16 02:41:13.795173	2019-02-16 02:41:13.795173	\N	\N	\N	\N	\N	\N
469	2014-08-20 00:00:00	21	40	8	38	4	3	2019-02-16 02:41:13.813281	2019-02-16 02:41:13.813281	\N	\N	\N	\N	\N	\N
470	2014-08-16 00:00:00	7	8	17	59	48	9	2019-02-16 02:41:13.822977	2019-02-16 02:41:13.822977	\N	\N	\N	\N	\N	\N
471	2014-08-13 00:00:00	37	8	40	52	39	24	2019-02-16 02:41:13.841619	2019-02-16 02:41:13.841619	\N	\N	\N	\N	\N	\N
472	2014-08-09 00:00:00	34	12	31	51	3	24	2019-02-16 02:41:13.850083	2019-02-16 02:41:13.850083	\N	\N	\N	\N	\N	\N
473	2014-08-06 00:00:00	49	1	8	24	28	24	2019-02-16 02:41:13.859387	2019-02-16 02:41:13.859387	\N	\N	\N	\N	\N	\N
474	2014-08-02 00:00:00	12	46	44	47	26	29	2019-02-16 02:41:13.875419	2019-02-16 02:41:13.875419	\N	\N	\N	\N	\N	\N
475	2014-07-30 00:00:00	49	13	30	53	42	29	2019-02-16 02:41:13.899693	2019-02-16 02:41:13.899693	\N	\N	\N	\N	\N	\N
476	2014-07-26 00:00:00	38	39	28	24	30	16	2019-02-16 02:41:13.909286	2019-02-16 02:41:13.909286	\N	\N	\N	\N	\N	\N
477	2014-07-23 00:00:00	22	12	4	31	10	3	2019-02-16 02:41:13.936413	2019-02-16 02:41:13.936413	\N	\N	\N	\N	\N	\N
478	2014-07-19 00:00:00	10	53	17	25	45	9	2019-02-16 02:41:13.947702	2019-02-16 02:41:13.947702	\N	\N	\N	\N	\N	\N
479	2014-07-16 00:00:00	5	32	26	18	15	35	2019-02-16 02:41:13.965113	2019-02-16 02:41:13.965113	\N	\N	\N	\N	\N	\N
480	2014-07-12 00:00:00	23	7	2	3	51	26	2019-02-16 02:41:13.97396	2019-02-16 02:41:13.97396	\N	\N	\N	\N	\N	\N
481	2014-07-09 00:00:00	9	55	42	25	57	14	2019-02-16 02:41:13.982048	2019-02-16 02:41:13.982048	\N	\N	\N	\N	\N	\N
482	2014-07-05 00:00:00	34	58	24	36	57	11	2019-02-16 02:41:14.00334	2019-02-16 02:41:14.00334	\N	\N	\N	\N	\N	\N
483	2014-07-02 00:00:00	58	18	53	8	45	35	2019-02-16 02:41:14.014304	2019-02-16 02:41:14.014304	\N	\N	\N	\N	\N	\N
484	2014-06-28 00:00:00	56	8	12	43	34	9	2019-02-16 02:41:14.03079	2019-02-16 02:41:14.03079	\N	\N	\N	\N	\N	\N
485	2014-06-25 00:00:00	50	53	10	20	25	35	2019-02-16 02:41:14.039943	2019-02-16 02:41:14.039943	\N	\N	\N	\N	\N	\N
486	2014-06-21 00:00:00	41	6	54	5	37	26	2019-02-16 02:41:14.059089	2019-02-16 02:41:14.059089	\N	\N	\N	\N	\N	\N
487	2014-06-18 00:00:00	6	52	59	29	9	7	2019-02-16 02:41:14.068214	2019-02-16 02:41:14.068214	\N	\N	\N	\N	\N	\N
488	2014-06-14 00:00:00	33	54	42	9	45	30	2019-02-16 02:41:14.089245	2019-02-16 02:41:14.089245	\N	\N	\N	\N	\N	\N
489	2014-06-11 00:00:00	14	25	33	18	49	23	2019-02-16 02:41:14.102323	2019-02-16 02:41:14.102323	\N	\N	\N	\N	\N	\N
490	2014-06-07 00:00:00	58	30	35	28	59	15	2019-02-16 02:41:14.117909	2019-02-16 02:41:14.117909	\N	\N	\N	\N	\N	\N
491	2014-06-04 00:00:00	22	7	1	10	49	24	2019-02-16 02:41:14.133125	2019-02-16 02:41:14.133125	\N	\N	\N	\N	\N	\N
492	2014-05-31 00:00:00	34	15	48	27	31	1	2019-02-16 02:41:14.147146	2019-02-16 02:41:14.147146	\N	\N	\N	\N	\N	\N
493	2014-05-28 00:00:00	24	2	28	32	59	25	2019-02-16 02:41:14.163528	2019-02-16 02:41:14.163528	\N	\N	\N	\N	\N	\N
494	2014-05-24 00:00:00	55	15	49	16	28	18	2019-02-16 02:41:14.179258	2019-02-16 02:41:14.179258	\N	\N	\N	\N	\N	\N
495	2014-05-21 00:00:00	20	34	58	4	39	31	2019-02-16 02:41:14.194482	2019-02-16 02:41:14.194482	\N	\N	\N	\N	\N	\N
496	2014-05-17 00:00:00	32	23	47	39	49	22	2019-02-16 02:41:14.21	2019-02-16 02:41:14.21	\N	\N	\N	\N	\N	\N
497	2014-05-14 00:00:00	55	7	52	33	39	33	2019-02-16 02:41:14.218781	2019-02-16 02:41:14.218781	\N	\N	\N	\N	\N	\N
498	2014-05-10 00:00:00	41	47	55	31	4	1	2019-02-16 02:41:14.241705	2019-02-16 02:41:14.241705	\N	\N	\N	\N	\N	\N
499	2014-05-07 00:00:00	48	31	17	49	29	34	2019-02-16 02:41:14.256658	2019-02-16 02:41:14.256658	\N	\N	\N	\N	\N	\N
500	2014-05-03 00:00:00	15	5	46	49	16	26	2019-02-16 02:41:14.265119	2019-02-16 02:41:14.265119	\N	\N	\N	\N	\N	\N
501	2014-04-30 00:00:00	9	2	19	50	11	32	2019-02-16 02:41:14.281157	2019-02-16 02:41:14.281157	\N	\N	\N	\N	\N	\N
502	2014-04-26 00:00:00	30	3	22	7	33	20	2019-02-16 02:41:14.292784	2019-02-16 02:41:14.292784	\N	\N	\N	\N	\N	\N
503	2014-04-23 00:00:00	29	48	36	19	25	12	2019-02-16 02:41:14.309558	2019-02-16 02:41:14.309558	\N	\N	\N	\N	\N	\N
504	2014-04-19 00:00:00	35	6	51	5	29	21	2019-02-16 02:41:14.341155	2019-02-16 02:41:14.341155	\N	\N	\N	\N	\N	\N
505	2014-04-16 00:00:00	42	34	59	39	44	8	2019-02-16 02:41:14.353167	2019-02-16 02:41:14.353167	\N	\N	\N	\N	\N	\N
506	2014-04-12 00:00:00	26	45	14	55	54	20	2019-02-16 02:41:14.369317	2019-02-16 02:41:14.369317	\N	\N	\N	\N	\N	\N
507	2014-04-09 00:00:00	49	14	48	9	44	29	2019-02-16 02:41:14.394623	2019-02-16 02:41:14.394623	\N	\N	\N	\N	\N	\N
508	2014-04-05 00:00:00	26	11	21	34	33	29	2019-02-16 02:41:14.404555	2019-02-16 02:41:14.404555	\N	\N	\N	\N	\N	\N
509	2014-04-02 00:00:00	19	22	13	53	8	24	2019-02-16 02:41:14.418327	2019-02-16 02:41:14.418327	\N	\N	\N	\N	\N	\N
510	2014-03-29 00:00:00	3	12	27	38	2	17	2019-02-16 02:41:14.436246	2019-02-16 02:41:14.436246	\N	\N	\N	\N	\N	\N
511	2014-03-26 00:00:00	33	41	59	44	28	21	2019-02-16 02:41:14.449139	2019-02-16 02:41:14.449139	\N	\N	\N	\N	\N	\N
512	2014-03-22 00:00:00	55	13	28	58	31	15	2019-02-16 02:41:14.465418	2019-02-16 02:41:14.465418	\N	\N	\N	\N	\N	\N
513	2014-03-19 00:00:00	34	23	43	19	2	14	2019-02-16 02:41:14.481003	2019-02-16 02:41:14.481003	\N	\N	\N	\N	\N	\N
514	2014-03-15 00:00:00	34	5	51	2	58	9	2019-02-16 02:41:14.49552	2019-02-16 02:41:14.49552	\N	\N	\N	\N	\N	\N
515	2014-03-12 00:00:00	28	54	14	15	37	10	2019-02-16 02:41:14.514327	2019-02-16 02:41:14.514327	\N	\N	\N	\N	\N	\N
516	2014-03-08 00:00:00	14	24	32	41	10	30	2019-02-16 02:41:14.525553	2019-02-16 02:41:14.525553	\N	\N	\N	\N	\N	\N
517	2014-03-05 00:00:00	26	3	9	7	54	19	2019-02-16 02:41:14.541637	2019-02-16 02:41:14.541637	\N	\N	\N	\N	\N	\N
518	2014-03-01 00:00:00	3	8	25	47	30	13	2019-02-16 02:41:14.556761	2019-02-16 02:41:14.556761	\N	\N	\N	\N	\N	\N
519	2014-02-26 00:00:00	42	11	12	38	17	2	2019-02-16 02:41:14.571182	2019-02-16 02:41:14.571182	\N	\N	\N	\N	\N	\N
520	2014-02-22 00:00:00	13	2	54	14	3	4	2019-02-16 02:41:14.586222	2019-02-16 02:41:14.586222	\N	\N	\N	\N	\N	\N
521	2014-02-19 00:00:00	17	49	54	35	1	34	2019-02-16 02:41:14.601501	2019-02-16 02:41:14.601501	\N	\N	\N	\N	\N	\N
522	2014-02-15 00:00:00	9	23	2	14	21	3	2019-02-16 02:41:14.618107	2019-02-16 02:41:14.618107	\N	\N	\N	\N	\N	\N
523	2014-02-12 00:00:00	52	49	36	57	44	1	2019-02-16 02:41:14.633157	2019-02-16 02:41:14.633157	\N	\N	\N	\N	\N	\N
524	2014-02-08 00:00:00	54	37	34	25	24	29	2019-02-16 02:41:14.660281	2019-02-16 02:41:14.660281	\N	\N	\N	\N	\N	\N
525	2014-02-05 00:00:00	8	57	17	59	32	24	2019-02-16 02:41:14.669395	2019-02-16 02:41:14.669395	\N	\N	\N	\N	\N	\N
526	2014-02-01 00:00:00	12	15	38	5	27	7	2019-02-16 02:41:14.684498	2019-02-16 02:41:14.684498	\N	\N	\N	\N	\N	\N
527	2014-01-29 00:00:00	47	23	11	28	32	20	2019-02-16 02:41:14.70908	2019-02-16 02:41:14.70908	\N	\N	\N	\N	\N	\N
528	2014-01-25 00:00:00	57	8	55	12	18	2	2019-02-16 02:41:14.718166	2019-02-16 02:41:14.718166	\N	\N	\N	\N	\N	\N
529	2014-01-22 00:00:00	55	2	7	1	9	29	2019-02-16 02:41:14.741532	2019-02-16 02:41:14.741532	\N	\N	\N	\N	\N	\N
530	2014-01-18 00:00:00	38	14	13	19	31	25	2019-02-16 02:41:14.75964	2019-02-16 02:41:14.75964	\N	\N	\N	\N	\N	\N
531	2014-01-15 00:00:00	29	8	9	7	24	25	2019-02-16 02:41:14.774773	2019-02-16 02:41:14.774773	\N	\N	\N	\N	\N	\N
532	2014-01-11 00:00:00	54	15	48	33	10	34	2019-02-16 02:41:14.789801	2019-02-16 02:41:14.789801	\N	\N	\N	\N	\N	\N
533	2014-01-08 00:00:00	39	28	58	47	10	22	2019-02-16 02:41:14.805454	2019-02-16 02:41:14.805454	\N	\N	\N	\N	\N	\N
534	2014-01-04 00:00:00	19	58	37	20	41	14	2019-02-16 02:41:14.821056	2019-02-16 02:41:14.821056	\N	\N	\N	\N	\N	\N
535	2014-01-01 00:00:00	52	48	15	24	40	23	2019-02-16 02:41:14.835621	2019-02-16 02:41:14.835621	\N	\N	\N	\N	\N	\N
536	2013-12-28 00:00:00	56	51	35	44	8	18	2019-02-16 02:41:14.851332	2019-02-16 02:41:14.851332	\N	\N	\N	\N	\N	\N
537	2013-12-25 00:00:00	38	56	28	39	23	32	2019-02-16 02:41:14.866569	2019-02-16 02:41:14.866569	\N	\N	\N	\N	\N	\N
538	2013-12-21 00:00:00	36	51	45	25	40	8	2019-02-16 02:41:14.881405	2019-02-16 02:41:14.881405	\N	\N	\N	\N	\N	\N
539	2013-12-18 00:00:00	39	7	40	24	37	1	2019-02-16 02:41:14.896925	2019-02-16 02:41:14.896925	\N	\N	\N	\N	\N	\N
540	2013-12-14 00:00:00	33	41	25	14	32	34	2019-02-16 02:41:14.912205	2019-02-16 02:41:14.912205	\N	\N	\N	\N	\N	\N
541	2013-12-11 00:00:00	10	18	19	1	13	27	2019-02-16 02:41:14.929122	2019-02-16 02:41:14.929122	\N	\N	\N	\N	\N	\N
542	2013-12-07 00:00:00	45	13	48	32	20	17	2019-02-16 02:41:14.945249	2019-02-16 02:41:14.945249	\N	\N	\N	\N	\N	\N
543	2013-12-04 00:00:00	9	6	11	44	31	25	2019-02-16 02:41:14.959909	2019-02-16 02:41:14.959909	\N	\N	\N	\N	\N	\N
544	2013-11-30 00:00:00	26	5	45	44	57	29	2019-02-16 02:41:14.975409	2019-02-16 02:41:14.975409	\N	\N	\N	\N	\N	\N
545	2013-11-27 00:00:00	57	25	18	55	50	17	2019-02-16 02:41:14.983764	2019-02-16 02:41:14.983764	\N	\N	\N	\N	\N	\N
546	2013-11-23 00:00:00	12	52	55	43	5	10	2019-02-16 02:41:15.007548	2019-02-16 02:41:15.007548	\N	\N	\N	\N	\N	\N
547	2013-11-20 00:00:00	32	4	45	23	18	7	2019-02-16 02:41:15.02296	2019-02-16 02:41:15.02296	\N	\N	\N	\N	\N	\N
548	2013-11-16 00:00:00	29	37	59	10	44	10	2019-02-16 02:41:15.037006	2019-02-16 02:41:15.037006	\N	\N	\N	\N	\N	\N
549	2013-11-13 00:00:00	31	5	55	50	56	9	2019-02-16 02:41:15.053325	2019-02-16 02:41:15.053325	\N	\N	\N	\N	\N	\N
550	2013-11-09 00:00:00	37	56	3	49	9	32	2019-02-16 02:41:15.068432	2019-02-16 02:41:15.068432	\N	\N	\N	\N	\N	\N
551	2013-11-06 00:00:00	49	1	5	10	15	22	2019-02-16 02:41:15.085375	2019-02-16 02:41:15.085375	\N	\N	\N	\N	\N	\N
552	2013-11-02 00:00:00	27	40	13	23	24	17	2019-02-16 02:41:15.100887	2019-02-16 02:41:15.100887	\N	\N	\N	\N	\N	\N
553	2013-10-30 00:00:00	54	2	49	36	40	10	2019-02-16 02:41:15.117094	2019-02-16 02:41:15.117094	\N	\N	\N	\N	\N	\N
554	2013-10-26 00:00:00	56	6	4	34	49	29	2019-02-16 02:41:15.132209	2019-02-16 02:41:15.132209	\N	\N	\N	\N	\N	\N
555	2013-10-23 00:00:00	47	34	23	31	3	13	2019-02-16 02:41:15.146543	2019-02-16 02:41:15.146543	\N	\N	\N	\N	\N	\N
556	2013-10-19 00:00:00	33	9	56	54	57	5	2019-02-16 02:41:15.163755	2019-02-16 02:41:15.163755	\N	\N	\N	\N	\N	\N
557	2013-10-16 00:00:00	3	42	26	34	28	28	2019-02-16 02:41:15.179412	2019-02-16 02:41:15.179412	\N	\N	\N	\N	\N	\N
558	2013-10-12 00:00:00	10	58	26	57	8	4	2019-02-16 02:41:15.194392	2019-02-16 02:41:15.194392	\N	\N	\N	\N	\N	\N
559	2013-10-09 00:00:00	9	38	3	33	19	18	2019-02-16 02:41:15.210218	2019-02-16 02:41:15.210218	\N	\N	\N	\N	\N	\N
560	2013-10-05 00:00:00	11	39	40	17	12	5	2019-02-16 02:41:15.225224	2019-02-16 02:41:15.225224	\N	\N	\N	\N	\N	\N
561	2013-10-02 00:00:00	6	51	42	4	25	17	2019-02-16 02:41:15.242031	2019-02-16 02:41:15.242031	\N	\N	\N	\N	\N	\N
562	2013-09-28 00:00:00	47	53	14	52	54	5	2019-02-16 02:41:15.256782	2019-02-16 02:41:15.256782	\N	\N	\N	\N	\N	\N
563	2013-09-25 00:00:00	49	7	17	53	2	23	2019-02-16 02:41:15.274107	2019-02-16 02:41:15.274107	\N	\N	\N	\N	\N	\N
564	2013-09-21 00:00:00	58	54	45	17	12	13	2019-02-16 02:41:15.288844	2019-02-16 02:41:15.288844	\N	\N	\N	\N	\N	\N
565	2013-09-18 00:00:00	7	10	35	32	22	19	2019-02-16 02:41:15.305669	2019-02-16 02:41:15.305669	\N	\N	\N	\N	\N	\N
566	2013-09-14 00:00:00	1	25	44	17	37	20	2019-02-16 02:41:15.321345	2019-02-16 02:41:15.321345	\N	\N	\N	\N	\N	\N
567	2013-09-11 00:00:00	19	33	42	52	11	33	2019-02-16 02:41:15.336566	2019-02-16 02:41:15.336566	\N	\N	\N	\N	\N	\N
568	2013-09-07 00:00:00	2	22	19	45	26	24	2019-02-16 02:41:15.351857	2019-02-16 02:41:15.351857	\N	\N	\N	\N	\N	\N
569	2013-09-04 00:00:00	2	45	26	9	47	11	2019-02-16 02:41:15.367518	2019-02-16 02:41:15.367518	\N	\N	\N	\N	\N	\N
570	2013-08-31 00:00:00	40	25	7	56	2	20	2019-02-16 02:41:15.382611	2019-02-16 02:41:15.382611	\N	\N	\N	\N	\N	\N
571	2013-08-28 00:00:00	32	19	7	9	6	13	2019-02-16 02:41:15.397922	2019-02-16 02:41:15.397922	\N	\N	\N	\N	\N	\N
572	2013-08-24 00:00:00	45	17	59	12	25	19	2019-02-16 02:41:15.412372	2019-02-16 02:41:15.412372	\N	\N	\N	\N	\N	\N
573	2013-08-21 00:00:00	30	48	42	46	40	23	2019-02-16 02:41:15.429708	2019-02-16 02:41:15.429708	\N	\N	\N	\N	\N	\N
574	2013-08-17 00:00:00	18	54	56	21	46	23	2019-02-16 02:41:15.445064	2019-02-16 02:41:15.445064	\N	\N	\N	\N	\N	\N
575	2013-08-14 00:00:00	17	43	11	4	51	20	2019-02-16 02:41:15.460266	2019-02-16 02:41:15.460266	\N	\N	\N	\N	\N	\N
576	2013-08-10 00:00:00	37	58	14	4	12	13	2019-02-16 02:41:15.475382	2019-02-16 02:41:15.475382	\N	\N	\N	\N	\N	\N
577	2013-08-07 00:00:00	58	5	25	59	30	32	2019-02-16 02:41:15.483943	2019-02-16 02:41:15.483943	\N	\N	\N	\N	\N	\N
578	2013-08-03 00:00:00	24	36	21	45	42	15	2019-02-16 02:41:15.507505	2019-02-16 02:41:15.507505	\N	\N	\N	\N	\N	\N
579	2013-07-31 00:00:00	8	24	59	39	49	5	2019-02-16 02:41:15.522986	2019-02-16 02:41:15.522986	\N	\N	\N	\N	\N	\N
580	2013-07-27 00:00:00	58	53	40	23	9	6	2019-02-16 02:41:15.536915	2019-02-16 02:41:15.536915	\N	\N	\N	\N	\N	\N
581	2013-07-24 00:00:00	44	29	54	40	9	7	2019-02-16 02:41:15.552596	2019-02-16 02:41:15.552596	\N	\N	\N	\N	\N	\N
582	2013-07-20 00:00:00	14	27	58	25	38	6	2019-02-16 02:41:15.562228	2019-02-16 02:41:15.562228	\N	\N	\N	\N	\N	\N
583	2013-07-17 00:00:00	22	1	42	38	34	17	2019-02-16 02:41:15.584885	2019-02-16 02:41:15.584885	\N	\N	\N	\N	\N	\N
584	2013-07-13 00:00:00	8	37	2	35	22	6	2019-02-16 02:41:15.601137	2019-02-16 02:41:15.601137	\N	\N	\N	\N	\N	\N
585	2013-07-10 00:00:00	55	45	31	30	59	27	2019-02-16 02:41:15.617088	2019-02-16 02:41:15.617088	\N	\N	\N	\N	\N	\N
586	2013-07-06 00:00:00	52	2	36	35	13	11	2019-02-16 02:41:15.632258	2019-02-16 02:41:15.632258	\N	\N	\N	\N	\N	\N
587	2013-07-03 00:00:00	40	6	51	29	3	4	2019-02-16 02:41:15.64683	2019-02-16 02:41:15.64683	\N	\N	\N	\N	\N	\N
588	2013-06-29 00:00:00	28	8	56	53	30	16	2019-02-16 02:41:15.663604	2019-02-16 02:41:15.663604	\N	\N	\N	\N	\N	\N
589	2013-06-26 00:00:00	1	46	39	33	18	33	2019-02-16 02:41:15.679429	2019-02-16 02:41:15.679429	\N	\N	\N	\N	\N	\N
590	2013-06-22 00:00:00	33	57	19	23	13	28	2019-02-16 02:41:15.695402	2019-02-16 02:41:15.695402	\N	\N	\N	\N	\N	\N
591	2013-06-19 00:00:00	57	47	46	52	7	17	2019-02-16 02:41:15.710925	2019-02-16 02:41:15.710925	\N	\N	\N	\N	\N	\N
592	2013-06-15 00:00:00	48	55	28	40	36	1	2019-02-16 02:41:15.726758	2019-02-16 02:41:15.726758	\N	\N	\N	\N	\N	\N
593	2013-06-12 00:00:00	22	16	42	23	55	32	2019-02-16 02:41:15.742354	2019-02-16 02:41:15.742354	\N	\N	\N	\N	\N	\N
594	2013-06-08 00:00:00	2	26	11	32	22	19	2019-02-16 02:41:15.756645	2019-02-16 02:41:15.756645	\N	\N	\N	\N	\N	\N
595	2013-06-05 00:00:00	4	36	26	33	55	32	2019-02-16 02:41:15.773878	2019-02-16 02:41:15.773878	\N	\N	\N	\N	\N	\N
596	2013-06-01 00:00:00	33	53	59	22	28	14	2019-02-16 02:41:15.788827	2019-02-16 02:41:15.788827	\N	\N	\N	\N	\N	\N
597	2013-05-29 00:00:00	49	14	9	17	57	2	2019-02-16 02:41:15.803435	2019-02-16 02:41:15.803435	\N	\N	\N	\N	\N	\N
598	2013-05-25 00:00:00	27	21	19	6	2	25	2019-02-16 02:41:15.818947	2019-02-16 02:41:15.818947	\N	\N	\N	\N	\N	\N
599	2013-05-22 00:00:00	31	35	41	9	57	26	2019-02-16 02:41:15.827962	2019-02-16 02:41:15.827962	\N	\N	\N	\N	\N	\N
600	2013-05-18 00:00:00	22	10	13	14	52	11	2019-02-16 02:41:15.850747	2019-02-16 02:41:15.850747	\N	\N	\N	\N	\N	\N
601	2013-05-15 00:00:00	2	34	11	41	26	32	2019-02-16 02:41:15.866828	2019-02-16 02:41:15.866828	\N	\N	\N	\N	\N	\N
602	2013-05-11 00:00:00	6	23	19	43	13	16	2019-02-16 02:41:15.881416	2019-02-16 02:41:15.881416	\N	\N	\N	\N	\N	\N
603	2013-05-08 00:00:00	21	57	26	22	30	27	2019-02-16 02:41:15.897045	2019-02-16 02:41:15.897045	\N	\N	\N	\N	\N	\N
604	2013-05-04 00:00:00	26	36	40	7	12	17	2019-02-16 02:41:15.906274	2019-02-16 02:41:15.906274	\N	\N	\N	\N	\N	\N
605	2013-05-01 00:00:00	31	22	55	26	54	18	2019-02-16 02:41:15.929125	2019-02-16 02:41:15.929125	\N	\N	\N	\N	\N	\N
606	2013-04-27 00:00:00	55	54	48	23	3	5	2019-02-16 02:41:15.944927	2019-02-16 02:41:15.944927	\N	\N	\N	\N	\N	\N
607	2013-04-24 00:00:00	9	59	31	56	19	2	2019-02-16 02:41:15.959942	2019-02-16 02:41:15.959942	\N	\N	\N	\N	\N	\N
608	2013-04-20 00:00:00	6	39	8	30	48	20	2019-02-16 02:41:15.974946	2019-02-16 02:41:15.974946	\N	\N	\N	\N	\N	\N
609	2013-04-17 00:00:00	58	18	48	13	36	28	2019-02-16 02:41:15.983424	2019-02-16 02:41:15.983424	\N	\N	\N	\N	\N	\N
610	2013-04-13 00:00:00	10	57	31	12	56	33	2019-02-16 02:41:16.007465	2019-02-16 02:41:16.007465	\N	\N	\N	\N	\N	\N
611	2013-04-10 00:00:00	40	1	52	36	53	20	2019-02-16 02:41:16.023263	2019-02-16 02:41:16.023263	\N	\N	\N	\N	\N	\N
612	2013-04-06 00:00:00	39	29	4	8	7	24	2019-02-16 02:41:16.037317	2019-02-16 02:41:16.037317	\N	\N	\N	\N	\N	\N
613	2013-04-03 00:00:00	35	8	12	1	6	3	2019-02-16 02:41:16.053121	2019-02-16 02:41:16.053121	\N	\N	\N	\N	\N	\N
614	2013-03-30 00:00:00	23	46	11	26	55	27	2019-02-16 02:41:16.068121	2019-02-16 02:41:16.068121	\N	\N	\N	\N	\N	\N
615	2013-03-27 00:00:00	43	48	7	37	52	16	2019-02-16 02:41:16.085171	2019-02-16 02:41:16.085171	\N	\N	\N	\N	\N	\N
616	2013-03-23 00:00:00	29	53	52	17	31	31	2019-02-16 02:41:16.100615	2019-02-16 02:41:16.100615	\N	\N	\N	\N	\N	\N
617	2013-03-20 00:00:00	43	17	14	13	54	15	2019-02-16 02:41:16.117347	2019-02-16 02:41:16.117347	\N	\N	\N	\N	\N	\N
618	2013-03-16 00:00:00	44	53	7	21	3	16	2019-02-16 02:41:16.132273	2019-02-16 02:41:16.132273	\N	\N	\N	\N	\N	\N
619	2013-03-13 00:00:00	38	9	32	28	5	29	2019-02-16 02:41:16.146827	2019-02-16 02:41:16.146827	\N	\N	\N	\N	\N	\N
620	2013-03-09 00:00:00	46	52	37	10	40	12	2019-02-16 02:41:16.163668	2019-02-16 02:41:16.163668	\N	\N	\N	\N	\N	\N
621	2013-03-06 00:00:00	45	10	6	23	41	1	2019-02-16 02:41:16.17904	2019-02-16 02:41:16.17904	\N	\N	\N	\N	\N	\N
622	2013-03-02 00:00:00	56	13	8	41	3	16	2019-02-16 02:41:16.194434	2019-02-16 02:41:16.194434	\N	\N	\N	\N	\N	\N
623	2013-02-27 00:00:00	48	20	14	34	3	21	2019-02-16 02:41:16.209858	2019-02-16 02:41:16.209858	\N	\N	\N	\N	\N	\N
624	2013-02-23 00:00:00	41	31	39	2	5	29	2019-02-16 02:41:16.218778	2019-02-16 02:41:16.218778	\N	\N	\N	\N	\N	\N
625	2013-02-20 00:00:00	25	3	32	17	19	17	2019-02-16 02:41:16.242005	2019-02-16 02:41:16.242005	\N	\N	\N	\N	\N	\N
626	2013-02-16 00:00:00	58	16	15	46	50	29	2019-02-16 02:41:16.25727	2019-02-16 02:41:16.25727	\N	\N	\N	\N	\N	\N
627	2013-02-13 00:00:00	12	43	27	25	23	29	2019-02-16 02:41:16.27505	2019-02-16 02:41:16.27505	\N	\N	\N	\N	\N	\N
628	2013-02-09 00:00:00	58	36	16	6	5	3	2019-02-16 02:41:16.289763	2019-02-16 02:41:16.289763	\N	\N	\N	\N	\N	\N
629	2013-02-06 00:00:00	36	38	5	27	41	12	2019-02-16 02:41:16.304407	2019-02-16 02:41:16.304407	\N	\N	\N	\N	\N	\N
630	2013-02-02 00:00:00	41	33	16	40	11	34	2019-02-16 02:41:16.318871	2019-02-16 02:41:16.318871	\N	\N	\N	\N	\N	\N
631	2013-01-30 00:00:00	47	16	14	32	52	16	2019-02-16 02:41:16.328058	2019-02-16 02:41:16.328058	\N	\N	\N	\N	\N	\N
632	2013-01-26 00:00:00	22	49	41	26	3	18	2019-02-16 02:41:16.350765	2019-02-16 02:41:16.350765	\N	\N	\N	\N	\N	\N
633	2013-01-23 00:00:00	24	43	11	12	45	9	2019-02-16 02:41:16.366753	2019-02-16 02:41:16.366753	\N	\N	\N	\N	\N	\N
634	2013-01-19 00:00:00	29	8	28	34	38	35	2019-02-16 02:41:16.381427	2019-02-16 02:41:16.381427	\N	\N	\N	\N	\N	\N
635	2013-01-16 00:00:00	51	21	32	28	9	35	2019-02-16 02:41:16.39702	2019-02-16 02:41:16.39702	\N	\N	\N	\N	\N	\N
636	2013-01-12 00:00:00	47	21	23	14	10	7	2019-02-16 02:41:16.406501	2019-02-16 02:41:16.406501	\N	\N	\N	\N	\N	\N
637	2013-01-09 00:00:00	11	20	13	27	59	26	2019-02-16 02:41:16.428834	2019-02-16 02:41:16.428834	\N	\N	\N	\N	\N	\N
638	2013-01-05 00:00:00	30	49	54	26	51	25	2019-02-16 02:41:16.444949	2019-02-16 02:41:16.444949	\N	\N	\N	\N	\N	\N
639	2013-01-02 00:00:00	20	18	53	28	35	20	2019-02-16 02:41:16.461473	2019-02-16 02:41:16.461473	\N	\N	\N	\N	\N	\N
640	2012-12-29 00:00:00	55	52	46	50	36	14	2019-02-16 02:41:16.47692	2019-02-16 02:41:16.47692	\N	\N	\N	\N	\N	\N
641	2012-12-26 00:00:00	54	43	13	11	23	4	2019-02-16 02:41:16.491099	2019-02-16 02:41:16.491099	\N	\N	\N	\N	\N	\N
642	2012-12-22 00:00:00	18	44	35	39	1	11	2019-02-16 02:41:16.5078	2019-02-16 02:41:16.5078	\N	\N	\N	\N	\N	\N
643	2012-12-19 00:00:00	23	20	5	30	8	3	2019-02-16 02:41:16.522847	2019-02-16 02:41:16.522847	\N	\N	\N	\N	\N	\N
644	2012-12-15 00:00:00	40	23	44	55	15	14	2019-02-16 02:41:16.537624	2019-02-16 02:41:16.537624	\N	\N	\N	\N	\N	\N
645	2012-12-12 00:00:00	36	25	44	8	10	28	2019-02-16 02:41:16.552639	2019-02-16 02:41:16.552639	\N	\N	\N	\N	\N	\N
646	2012-12-08 00:00:00	23	40	53	26	7	21	2019-02-16 02:41:16.568019	2019-02-16 02:41:16.568019	\N	\N	\N	\N	\N	\N
647	2012-12-05 00:00:00	27	19	38	13	17	12	2019-02-16 02:41:16.585201	2019-02-16 02:41:16.585201	\N	\N	\N	\N	\N	\N
648	2012-12-01 00:00:00	46	10	3	19	36	3	2019-02-16 02:41:16.600908	2019-02-16 02:41:16.600908	\N	\N	\N	\N	\N	\N
649	2012-11-28 00:00:00	5	23	16	22	29	6	2019-02-16 02:41:16.617395	2019-02-16 02:41:16.617395	\N	\N	\N	\N	\N	\N
650	2012-11-24 00:00:00	22	32	37	44	50	34	2019-02-16 02:41:16.63316	2019-02-16 02:41:16.63316	\N	\N	\N	\N	\N	\N
651	2012-11-21 00:00:00	24	30	8	18	39	26	2019-02-16 02:41:16.647297	2019-02-16 02:41:16.647297	\N	\N	\N	\N	\N	\N
652	2012-11-17 00:00:00	15	59	27	58	3	20	2019-02-16 02:41:16.663642	2019-02-16 02:41:16.663642	\N	\N	\N	\N	\N	\N
653	2012-11-14 00:00:00	44	10	58	8	30	13	2019-02-16 02:41:16.679775	2019-02-16 02:41:16.679775	\N	\N	\N	\N	\N	\N
654	2012-11-10 00:00:00	55	32	50	54	42	32	2019-02-16 02:41:16.695633	2019-02-16 02:41:16.695633	\N	\N	\N	\N	\N	\N
655	2012-11-07 00:00:00	32	45	34	52	58	20	2019-02-16 02:41:16.710807	2019-02-16 02:41:16.710807	\N	\N	\N	\N	\N	\N
656	2012-11-03 00:00:00	54	4	7	9	30	25	2019-02-16 02:41:16.725354	2019-02-16 02:41:16.725354	\N	\N	\N	\N	\N	\N
657	2012-10-31 00:00:00	45	31	1	48	27	5	2019-02-16 02:41:16.742295	2019-02-16 02:41:16.742295	\N	\N	\N	\N	\N	\N
658	2012-10-27 00:00:00	34	56	36	32	22	33	2019-02-16 02:41:16.757184	2019-02-16 02:41:16.757184	\N	\N	\N	\N	\N	\N
659	2012-10-24 00:00:00	18	50	23	3	21	4	2019-02-16 02:41:16.773706	2019-02-16 02:41:16.773706	\N	\N	\N	\N	\N	\N
660	2012-10-20 00:00:00	4	28	31	44	21	10	2019-02-16 02:41:16.788666	2019-02-16 02:41:16.788666	\N	\N	\N	\N	\N	\N
661	2012-10-17 00:00:00	42	23	10	7	1	35	2019-02-16 02:41:16.803422	2019-02-16 02:41:16.803422	\N	\N	\N	\N	\N	\N
662	2012-10-13 00:00:00	5	2	26	25	49	18	2019-02-16 02:41:16.819755	2019-02-16 02:41:16.819755	\N	\N	\N	\N	\N	\N
663	2012-10-10 00:00:00	35	18	43	29	26	28	2019-02-16 02:41:16.834586	2019-02-16 02:41:16.834586	\N	\N	\N	\N	\N	\N
664	2012-10-06 00:00:00	36	59	26	15	34	35	2019-02-16 02:41:16.851508	2019-02-16 02:41:16.851508	\N	\N	\N	\N	\N	\N
665	2012-10-03 00:00:00	55	23	17	59	36	10	2019-02-16 02:41:16.866838	2019-02-16 02:41:16.866838	\N	\N	\N	\N	\N	\N
666	2012-09-29 00:00:00	57	14	29	18	28	8	2019-02-16 02:41:16.881449	2019-02-16 02:41:16.881449	\N	\N	\N	\N	\N	\N
667	2012-09-26 00:00:00	41	26	42	13	39	10	2019-02-16 02:41:16.897044	2019-02-16 02:41:16.897044	\N	\N	\N	\N	\N	\N
668	2012-09-22 00:00:00	40	42	18	16	2	33	2019-02-16 02:41:16.906459	2019-02-16 02:41:16.906459	\N	\N	\N	\N	\N	\N
669	2012-09-19 00:00:00	50	1	8	39	5	23	2019-02-16 02:41:16.929001	2019-02-16 02:41:16.929001	\N	\N	\N	\N	\N	\N
670	2012-09-15 00:00:00	43	26	3	20	48	1	2019-02-16 02:41:16.944944	2019-02-16 02:41:16.944944	\N	\N	\N	\N	\N	\N
671	2012-09-12 00:00:00	48	56	24	36	33	6	2019-02-16 02:41:16.959973	2019-02-16 02:41:16.959973	\N	\N	\N	\N	\N	\N
672	2012-09-08 00:00:00	34	44	20	48	6	29	2019-02-16 02:41:16.975439	2019-02-16 02:41:16.975439	\N	\N	\N	\N	\N	\N
673	2012-09-05 00:00:00	42	4	26	51	19	29	2019-02-16 02:41:16.984038	2019-02-16 02:41:16.984038	\N	\N	\N	\N	\N	\N
674	2012-09-01 00:00:00	8	44	21	11	49	22	2019-02-16 02:41:17.007249	2019-02-16 02:41:17.007249	\N	\N	\N	\N	\N	\N
675	2012-08-29 00:00:00	49	54	28	25	56	28	2019-02-16 02:41:17.023489	2019-02-16 02:41:17.023489	\N	\N	\N	\N	\N	\N
676	2012-08-25 00:00:00	7	20	6	1	49	23	2019-02-16 02:41:17.037219	2019-02-16 02:41:17.037219	\N	\N	\N	\N	\N	\N
677	2012-08-22 00:00:00	47	31	22	29	55	19	2019-02-16 02:41:17.053126	2019-02-16 02:41:17.053126	\N	\N	\N	\N	\N	\N
678	2012-08-18 00:00:00	55	41	26	14	59	1	2019-02-16 02:41:17.068263	2019-02-16 02:41:17.068263	\N	\N	\N	\N	\N	\N
679	2012-08-15 00:00:00	56	27	46	6	51	21	2019-02-16 02:41:17.085187	2019-02-16 02:41:17.085187	\N	\N	\N	\N	\N	\N
680	2012-08-11 00:00:00	51	13	46	39	4	1	2019-02-16 02:41:17.100807	2019-02-16 02:41:17.100807	\N	\N	\N	\N	\N	\N
681	2012-08-08 00:00:00	7	15	3	11	28	12	2019-02-16 02:41:17.117555	2019-02-16 02:41:17.117555	\N	\N	\N	\N	\N	\N
682	2012-08-04 00:00:00	55	30	53	48	19	18	2019-02-16 02:41:17.133126	2019-02-16 02:41:17.133126	\N	\N	\N	\N	\N	\N
683	2012-08-01 00:00:00	58	3	56	48	16	4	2019-02-16 02:41:17.148731	2019-02-16 02:41:17.148731	\N	\N	\N	\N	\N	\N
684	2012-07-28 00:00:00	6	50	5	36	13	13	2019-02-16 02:41:17.16431	2019-02-16 02:41:17.16431	\N	\N	\N	\N	\N	\N
685	2012-07-25 00:00:00	14	3	46	38	35	16	2019-02-16 02:41:17.179405	2019-02-16 02:41:17.179405	\N	\N	\N	\N	\N	\N
686	2012-07-21 00:00:00	9	54	38	56	31	20	2019-02-16 02:41:17.195416	2019-02-16 02:41:17.195416	\N	\N	\N	\N	\N	\N
687	2012-07-18 00:00:00	5	2	57	23	20	3	2019-02-16 02:41:17.210889	2019-02-16 02:41:17.210889	\N	\N	\N	\N	\N	\N
688	2012-07-14 00:00:00	4	46	16	37	32	13	2019-02-16 02:41:17.225838	2019-02-16 02:41:17.225838	\N	\N	\N	\N	\N	\N
689	2012-07-11 00:00:00	5	36	49	55	22	23	2019-02-16 02:41:17.242828	2019-02-16 02:41:17.242828	\N	\N	\N	\N	\N	\N
690	2012-07-07 00:00:00	5	3	29	59	39	29	2019-02-16 02:41:17.257816	2019-02-16 02:41:17.257816	\N	\N	\N	\N	\N	\N
691	2012-07-04 00:00:00	35	19	14	39	56	33	2019-02-16 02:41:17.274179	2019-02-16 02:41:17.274179	\N	\N	\N	\N	\N	\N
692	2012-06-30 00:00:00	20	7	15	41	44	22	2019-02-16 02:41:17.288932	2019-02-16 02:41:17.288932	\N	\N	\N	\N	\N	\N
693	2012-06-27 00:00:00	58	34	6	46	40	6	2019-02-16 02:41:17.303791	2019-02-16 02:41:17.303791	\N	\N	\N	\N	\N	\N
694	2012-06-23 00:00:00	44	1	53	3	41	30	2019-02-16 02:41:17.3187	2019-02-16 02:41:17.3187	\N	\N	\N	\N	\N	\N
695	2012-06-20 00:00:00	17	11	29	56	57	14	2019-02-16 02:41:17.32797	2019-02-16 02:41:17.32797	\N	\N	\N	\N	\N	\N
696	2012-06-16 00:00:00	14	16	27	15	8	26	2019-02-16 02:41:17.350883	2019-02-16 02:41:17.350883	\N	\N	\N	\N	\N	\N
697	2012-06-13 00:00:00	14	57	33	10	7	18	2019-02-16 02:41:17.36695	2019-02-16 02:41:17.36695	\N	\N	\N	\N	\N	\N
698	2012-06-09 00:00:00	56	45	57	22	18	27	2019-02-16 02:41:17.382364	2019-02-16 02:41:17.382364	\N	\N	\N	\N	\N	\N
699	2012-06-06 00:00:00	59	48	19	33	30	27	2019-02-16 02:41:17.397362	2019-02-16 02:41:17.397362	\N	\N	\N	\N	\N	\N
700	2012-06-02 00:00:00	17	45	10	29	9	33	2019-02-16 02:41:17.41217	2019-02-16 02:41:17.41217	\N	\N	\N	\N	\N	\N
701	2012-05-30 00:00:00	10	56	9	24	52	14	2019-02-16 02:41:17.429952	2019-02-16 02:41:17.429952	\N	\N	\N	\N	\N	\N
702	2012-05-26 00:00:00	49	59	13	41	14	14	2019-02-16 02:41:17.445207	2019-02-16 02:41:17.445207	\N	\N	\N	\N	\N	\N
703	2012-05-23 00:00:00	59	7	53	26	4	32	2019-02-16 02:41:17.460339	2019-02-16 02:41:17.460339	\N	\N	\N	\N	\N	\N
704	2012-05-19 00:00:00	46	13	8	51	35	30	2019-02-16 02:41:17.475493	2019-02-16 02:41:17.475493	\N	\N	\N	\N	\N	\N
705	2012-05-16 00:00:00	21	43	28	3	7	2	2019-02-16 02:41:17.484009	2019-02-16 02:41:17.484009	\N	\N	\N	\N	\N	\N
706	2012-05-12 00:00:00	35	24	58	53	10	22	2019-02-16 02:41:17.507411	2019-02-16 02:41:17.507411	\N	\N	\N	\N	\N	\N
707	2012-05-09 00:00:00	56	7	1	11	55	1	2019-02-16 02:41:17.522683	2019-02-16 02:41:17.522683	\N	\N	\N	\N	\N	\N
708	2012-05-05 00:00:00	12	59	44	20	9	23	2019-02-16 02:41:17.531171	2019-02-16 02:41:17.531171	\N	\N	\N	\N	\N	\N
709	2012-05-02 00:00:00	7	33	50	38	8	29	2019-02-16 02:41:17.552742	2019-02-16 02:41:17.552742	\N	\N	\N	\N	\N	\N
710	2012-04-28 00:00:00	57	40	58	31	39	33	2019-02-16 02:41:17.562229	2019-02-16 02:41:17.562229	\N	\N	\N	\N	\N	\N
711	2012-04-25 00:00:00	29	43	25	4	34	29	2019-02-16 02:41:17.585006	2019-02-16 02:41:17.585006	\N	\N	\N	\N	\N	\N
712	2012-04-21 00:00:00	8	42	51	20	6	16	2019-02-16 02:41:17.600589	2019-02-16 02:41:17.600589	\N	\N	\N	\N	\N	\N
713	2012-04-18 00:00:00	22	39	49	46	20	29	2019-02-16 02:41:17.615406	2019-02-16 02:41:17.615406	\N	\N	\N	\N	\N	\N
714	2012-04-14 00:00:00	15	16	19	14	24	2	2019-02-16 02:41:17.631028	2019-02-16 02:41:17.631028	\N	\N	\N	\N	\N	\N
715	2012-04-11 00:00:00	44	42	16	47	23	2	2019-02-16 02:41:17.64032	2019-02-16 02:41:17.64032	\N	\N	\N	\N	\N	\N
716	2012-04-07 00:00:00	13	30	5	20	17	18	2019-02-16 02:41:17.663044	2019-02-16 02:41:17.663044	\N	\N	\N	\N	\N	\N
717	2012-04-04 00:00:00	33	24	49	45	1	6	2019-02-16 02:41:17.679963	2019-02-16 02:41:17.679963	\N	\N	\N	\N	\N	\N
718	2012-03-31 00:00:00	14	5	58	54	36	27	2019-02-16 02:41:17.689773	2019-02-16 02:41:17.689773	\N	\N	\N	\N	\N	\N
719	2012-03-28 00:00:00	50	58	16	29	11	33	2019-02-16 02:41:17.698165	2019-02-16 02:41:17.698165	\N	\N	\N	\N	\N	\N
720	2012-03-24 00:00:00	15	37	35	1	47	8	2019-02-16 02:41:17.716729	2019-02-16 02:41:17.716729	\N	\N	\N	\N	\N	\N
721	2012-03-21 00:00:00	32	43	53	55	56	6	2019-02-16 02:41:17.72658	2019-02-16 02:41:17.72658	\N	\N	\N	\N	\N	\N
722	2012-03-17 00:00:00	11	55	58	14	49	30	2019-02-16 02:41:17.744399	2019-02-16 02:41:17.744399	\N	\N	\N	\N	\N	\N
723	2012-03-14 00:00:00	1	8	59	46	41	24	2019-02-16 02:41:17.753476	2019-02-16 02:41:17.753476	\N	\N	\N	\N	\N	\N
724	2012-03-10 00:00:00	5	41	20	14	17	5	2019-02-16 02:41:17.762748	2019-02-16 02:41:17.762748	\N	\N	\N	\N	\N	\N
725	2012-03-07 00:00:00	45	35	47	46	12	12	2019-02-16 02:41:17.779735	2019-02-16 02:41:17.779735	\N	\N	\N	\N	\N	\N
726	2012-03-03 00:00:00	47	30	29	49	45	35	2019-02-16 02:41:17.78922	2019-02-16 02:41:17.78922	\N	\N	\N	\N	\N	\N
727	2012-02-29 00:00:00	26	1	11	4	23	14	2019-02-16 02:41:17.810277	2019-02-16 02:41:17.810277	\N	\N	\N	\N	\N	\N
728	2012-02-25 00:00:00	54	11	6	42	53	7	2019-02-16 02:41:17.826538	2019-02-16 02:41:17.826538	\N	\N	\N	\N	\N	\N
729	2012-02-22 00:00:00	17	39	16	7	51	32	2019-02-16 02:41:17.850655	2019-02-16 02:41:17.850655	\N	\N	\N	\N	\N	\N
730	2012-02-18 00:00:00	23	50	28	59	56	5	2019-02-16 02:41:17.867322	2019-02-16 02:41:17.867322	\N	\N	\N	\N	\N	\N
731	2012-02-15 00:00:00	12	11	32	56	52	11	2019-02-16 02:41:17.882675	2019-02-16 02:41:17.882675	\N	\N	\N	\N	\N	\N
732	2012-02-11 00:00:00	37	52	10	1	57	11	2019-02-16 02:41:17.89917	2019-02-16 02:41:17.89917	\N	\N	\N	\N	\N	\N
733	2012-02-08 00:00:00	38	51	17	28	39	33	2019-02-16 02:41:17.915421	2019-02-16 02:41:17.915421	\N	\N	\N	\N	\N	\N
734	2012-02-04 00:00:00	23	56	43	45	15	7	2019-02-16 02:41:17.937053	2019-02-16 02:41:17.937053	\N	\N	\N	\N	\N	\N
735	2012-02-01 00:00:00	8	13	59	17	34	35	2019-02-16 02:41:17.948422	2019-02-16 02:41:17.948422	\N	\N	\N	\N	\N	\N
736	2012-01-28 00:00:00	41	54	59	33	5	13	2019-02-16 02:41:17.964283	2019-02-16 02:41:17.964283	\N	\N	\N	\N	\N	\N
737	2012-01-25 00:00:00	28	19	29	47	4	5	2019-02-16 02:41:17.973492	2019-02-16 02:41:17.973492	\N	\N	\N	\N	\N	\N
738	2012-01-21 00:00:00	44	12	43	24	45	7	2019-02-16 02:41:17.981786	2019-02-16 02:41:17.981786	\N	\N	\N	\N	\N	\N
739	2012-01-18 00:00:00	50	34	29	6	44	28	2019-02-16 02:41:18.003761	2019-02-16 02:41:18.003761	\N	\N	\N	\N	\N	\N
740	2012-01-14 00:00:00	41	30	10	36	38	1	2019-02-16 02:41:18.014252	2019-02-16 02:41:18.014252	\N	\N	\N	\N	\N	\N
741	2012-01-11 00:00:00	47	5	29	45	19	25	2019-02-16 02:41:18.031341	2019-02-16 02:41:18.031341	\N	\N	\N	\N	\N	\N
742	2012-01-07 00:00:00	3	24	38	21	39	24	2019-02-16 02:41:18.056902	2019-02-16 02:41:18.056902	\N	\N	\N	\N	\N	\N
743	2012-01-04 00:00:00	50	35	21	47	46	2	2019-02-16 02:41:18.065733	2019-02-16 02:41:18.065733	\N	\N	\N	\N	\N	\N
744	2011-12-31 00:00:00	5	25	40	23	28	34	2019-02-16 02:41:18.08924	2019-02-16 02:41:18.08924	\N	\N	\N	\N	\N	\N
745	2011-12-28 00:00:00	16	27	45	41	21	14	2019-02-16 02:41:18.102678	2019-02-16 02:41:18.102678	\N	\N	\N	\N	\N	\N
746	2011-12-24 00:00:00	52	51	16	14	30	19	2019-02-16 02:41:18.117923	2019-02-16 02:41:18.117923	\N	\N	\N	\N	\N	\N
747	2011-12-21 00:00:00	31	15	13	54	10	18	2019-02-16 02:41:18.137105	2019-02-16 02:41:18.137105	\N	\N	\N	\N	\N	\N
748	2011-12-17 00:00:00	59	28	51	13	49	33	2019-02-16 02:41:18.149665	2019-02-16 02:41:18.149665	\N	\N	\N	\N	\N	\N
749	2011-12-14 00:00:00	46	52	24	56	2	19	2019-02-16 02:41:18.166121	2019-02-16 02:41:18.166121	\N	\N	\N	\N	\N	\N
750	2011-12-10 00:00:00	33	41	4	19	59	9	2019-02-16 02:41:18.185369	2019-02-16 02:41:18.185369	\N	\N	\N	\N	\N	\N
751	2011-12-07 00:00:00	39	20	14	40	3	37	2019-02-16 02:41:18.197014	2019-02-16 02:41:18.197014	\N	\N	\N	\N	\N	\N
752	2011-12-03 00:00:00	18	5	33	43	45	8	2019-02-16 02:41:18.213579	2019-02-16 02:41:18.213579	\N	\N	\N	\N	\N	\N
753	2011-11-30 00:00:00	47	6	2	34	35	22	2019-02-16 02:41:18.242801	2019-02-16 02:41:18.242801	\N	\N	\N	\N	\N	\N
754	2011-11-26 00:00:00	55	20	37	45	39	28	2019-02-16 02:41:18.258249	2019-02-16 02:41:18.258249	\N	\N	\N	\N	\N	\N
755	2011-11-23 00:00:00	30	35	57	4	59	25	2019-02-16 02:41:18.274241	2019-02-16 02:41:18.274241	\N	\N	\N	\N	\N	\N
756	2011-11-19 00:00:00	16	9	17	28	30	11	2019-02-16 02:41:18.289521	2019-02-16 02:41:18.289521	\N	\N	\N	\N	\N	\N
757	2011-11-16 00:00:00	22	25	39	13	51	28	2019-02-16 02:41:18.303755	2019-02-16 02:41:18.303755	\N	\N	\N	\N	\N	\N
758	2011-11-12 00:00:00	56	4	35	51	36	8	2019-02-16 02:41:18.333375	2019-02-16 02:41:18.333375	\N	\N	\N	\N	\N	\N
759	2011-11-09 00:00:00	58	59	35	5	57	12	2019-02-16 02:41:18.342461	2019-02-16 02:41:18.342461	\N	\N	\N	\N	\N	\N
760	2011-11-05 00:00:00	43	39	2	33	40	26	2019-02-16 02:41:18.378767	2019-02-16 02:41:18.378767	\N	\N	\N	\N	\N	\N
761	2011-11-02 00:00:00	12	39	14	46	34	36	2019-02-16 02:41:18.387895	2019-02-16 02:41:18.387895	\N	\N	\N	\N	\N	\N
762	2011-10-29 00:00:00	11	40	16	51	56	38	2019-02-16 02:41:18.405447	2019-02-16 02:41:18.405447	\N	\N	\N	\N	\N	\N
763	2011-10-26 00:00:00	39	21	1	18	55	6	2019-02-16 02:41:18.41693	2019-02-16 02:41:18.41693	\N	\N	\N	\N	\N	\N
764	2011-10-22 00:00:00	8	3	23	30	58	13	2019-02-16 02:41:18.436897	2019-02-16 02:41:18.436897	\N	\N	\N	\N	\N	\N
765	2011-10-19 00:00:00	26	35	16	52	58	2	2019-02-16 02:41:18.447421	2019-02-16 02:41:18.447421	\N	\N	\N	\N	\N	\N
766	2011-10-15 00:00:00	38	24	5	10	43	1	2019-02-16 02:41:18.465438	2019-02-16 02:41:18.465438	\N	\N	\N	\N	\N	\N
767	2011-10-12 00:00:00	43	10	12	23	47	18	2019-02-16 02:41:18.475266	2019-02-16 02:41:18.475266	\N	\N	\N	\N	\N	\N
768	2011-10-08 00:00:00	35	3	37	27	45	31	2019-02-16 02:41:18.483608	2019-02-16 02:41:18.483608	\N	\N	\N	\N	\N	\N
769	2011-10-05 00:00:00	46	7	43	54	20	17	2019-02-16 02:41:18.500337	2019-02-16 02:41:18.500337	\N	\N	\N	\N	\N	\N
770	2011-10-01 00:00:00	27	43	12	23	1	31	2019-02-16 02:41:18.509481	2019-02-16 02:41:18.509481	\N	\N	\N	\N	\N	\N
771	2011-09-28 00:00:00	41	51	30	50	53	8	2019-02-16 02:41:18.554167	2019-02-16 02:41:18.554167	\N	\N	\N	\N	\N	\N
772	2011-09-24 00:00:00	27	12	3	4	44	26	2019-02-16 02:41:18.569458	2019-02-16 02:41:18.569458	\N	\N	\N	\N	\N	\N
773	2011-09-21 00:00:00	47	52	55	48	12	13	2019-02-16 02:41:18.585657	2019-02-16 02:41:18.585657	\N	\N	\N	\N	\N	\N
774	2011-09-17 00:00:00	43	22	6	20	32	11	2019-02-16 02:41:18.600754	2019-02-16 02:41:18.600754	\N	\N	\N	\N	\N	\N
775	2011-09-14 00:00:00	16	50	42	59	41	5	2019-02-16 02:41:18.615763	2019-02-16 02:41:18.615763	\N	\N	\N	\N	\N	\N
776	2011-09-10 00:00:00	32	53	22	4	19	24	2019-02-16 02:41:18.630851	2019-02-16 02:41:18.630851	\N	\N	\N	\N	\N	\N
777	2011-09-07 00:00:00	54	3	5	27	18	13	2019-02-16 02:41:18.64003	2019-02-16 02:41:18.64003	\N	\N	\N	\N	\N	\N
778	2011-09-03 00:00:00	15	52	25	53	54	2	2019-02-16 02:41:18.663116	2019-02-16 02:41:18.663116	\N	\N	\N	\N	\N	\N
779	2011-08-31 00:00:00	19	35	57	47	13	29	2019-02-16 02:41:18.679292	2019-02-16 02:41:18.679292	\N	\N	\N	\N	\N	\N
780	2011-08-27 00:00:00	2	54	12	58	25	14	2019-02-16 02:41:18.693875	2019-02-16 02:41:18.693875	\N	\N	\N	\N	\N	\N
781	2011-08-24 00:00:00	49	53	13	9	47	39	2019-02-16 02:41:18.702858	2019-02-16 02:41:18.702858	\N	\N	\N	\N	\N	\N
782	2011-08-20 00:00:00	23	2	47	28	17	36	2019-02-16 02:41:18.715699	2019-02-16 02:41:18.715699	\N	\N	\N	\N	\N	\N
783	2011-08-17 00:00:00	31	28	48	18	52	37	2019-02-16 02:41:18.742571	2019-02-16 02:41:18.742571	\N	\N	\N	\N	\N	\N
784	2011-08-13 00:00:00	35	9	50	12	58	4	2019-02-16 02:41:18.757236	2019-02-16 02:41:18.757236	\N	\N	\N	\N	\N	\N
785	2011-08-10 00:00:00	46	41	36	18	11	38	2019-02-16 02:41:18.772101	2019-02-16 02:41:18.772101	\N	\N	\N	\N	\N	\N
786	2011-08-06 00:00:00	57	59	54	25	30	6	2019-02-16 02:41:18.78085	2019-02-16 02:41:18.78085	\N	\N	\N	\N	\N	\N
787	2011-08-03 00:00:00	49	19	13	28	21	11	2019-02-16 02:41:18.793155	2019-02-16 02:41:18.793155	\N	\N	\N	\N	\N	\N
788	2011-07-30 00:00:00	55	20	40	47	41	19	2019-02-16 02:41:18.814628	2019-02-16 02:41:18.814628	\N	\N	\N	\N	\N	\N
789	2011-07-27 00:00:00	40	51	59	41	38	33	2019-02-16 02:41:18.823952	2019-02-16 02:41:18.823952	\N	\N	\N	\N	\N	\N
790	2011-07-23 00:00:00	38	1	48	27	7	30	2019-02-16 02:41:18.840695	2019-02-16 02:41:18.840695	\N	\N	\N	\N	\N	\N
791	2011-07-20 00:00:00	40	42	38	1	4	17	2019-02-16 02:41:18.84917	2019-02-16 02:41:18.84917	\N	\N	\N	\N	\N	\N
792	2011-07-16 00:00:00	28	48	54	24	50	25	2019-02-16 02:41:18.85896	2019-02-16 02:41:18.85896	\N	\N	\N	\N	\N	\N
793	2011-07-13 00:00:00	54	18	8	19	32	8	2019-02-16 02:41:18.876385	2019-02-16 02:41:18.876385	\N	\N	\N	\N	\N	\N
794	2011-07-09 00:00:00	31	9	23	1	11	6	2019-02-16 02:41:18.899517	2019-02-16 02:41:18.899517	\N	\N	\N	\N	\N	\N
795	2011-07-06 00:00:00	55	50	24	11	15	8	2019-02-16 02:41:18.908958	2019-02-16 02:41:18.908958	\N	\N	\N	\N	\N	\N
796	2011-07-02 00:00:00	11	29	1	51	18	32	2019-02-16 02:41:18.933332	2019-02-16 02:41:18.933332	\N	\N	\N	\N	\N	\N
797	2011-06-29 00:00:00	30	24	57	59	45	26	2019-02-16 02:41:18.944119	2019-02-16 02:41:18.944119	\N	\N	\N	\N	\N	\N
798	2011-06-25 00:00:00	18	39	57	36	41	12	2019-02-16 02:41:18.96525	2019-02-16 02:41:18.96525	\N	\N	\N	\N	\N	\N
799	2011-06-22 00:00:00	59	12	46	19	15	12	2019-02-16 02:41:18.974156	2019-02-16 02:41:18.974156	\N	\N	\N	\N	\N	\N
800	2011-06-18 00:00:00	22	38	21	12	41	18	2019-02-16 02:41:18.996794	2019-02-16 02:41:18.996794	\N	\N	\N	\N	\N	\N
801	2011-06-15 00:00:00	41	43	20	19	38	29	2019-02-16 02:41:19.006841	2019-02-16 02:41:19.006841	\N	\N	\N	\N	\N	\N
802	2011-06-11 00:00:00	50	16	18	36	27	8	2019-02-16 02:41:19.028397	2019-02-16 02:41:19.028397	\N	\N	\N	\N	\N	\N
803	2011-06-08 00:00:00	53	37	14	44	45	29	2019-02-16 02:41:19.038354	2019-02-16 02:41:19.038354	\N	\N	\N	\N	\N	\N
804	2011-06-04 00:00:00	17	58	39	19	41	21	2019-02-16 02:41:19.057664	2019-02-16 02:41:19.057664	\N	\N	\N	\N	\N	\N
805	2011-06-01 00:00:00	56	38	46	8	18	31	2019-02-16 02:41:19.066313	2019-02-16 02:41:19.066313	\N	\N	\N	\N	\N	\N
806	2011-05-28 00:00:00	43	12	20	51	55	11	2019-02-16 02:41:19.089546	2019-02-16 02:41:19.089546	\N	\N	\N	\N	\N	\N
807	2011-05-25 00:00:00	50	4	31	42	23	23	2019-02-16 02:41:19.098035	2019-02-16 02:41:19.098035	\N	\N	\N	\N	\N	\N
808	2011-05-21 00:00:00	8	49	2	40	50	36	2019-02-16 02:41:19.122064	2019-02-16 02:41:19.122064	\N	\N	\N	\N	\N	\N
809	2011-05-18 00:00:00	7	12	42	49	13	16	2019-02-16 02:41:19.131126	2019-02-16 02:41:19.131126	\N	\N	\N	\N	\N	\N
810	2011-05-14 00:00:00	40	18	17	8	44	16	2019-02-16 02:41:19.152089	2019-02-16 02:41:19.152089	\N	\N	\N	\N	\N	\N
811	2011-05-11 00:00:00	43	32	9	45	17	31	2019-02-16 02:41:19.161215	2019-02-16 02:41:19.161215	\N	\N	\N	\N	\N	\N
812	2011-05-07 00:00:00	11	55	47	2	27	15	2019-02-16 02:41:19.169686	2019-02-16 02:41:19.169686	\N	\N	\N	\N	\N	\N
813	2011-05-04 00:00:00	15	41	29	27	3	24	2019-02-16 02:41:19.189126	2019-02-16 02:41:19.189126	\N	\N	\N	\N	\N	\N
814	2011-04-30 00:00:00	41	15	6	13	32	3	2019-02-16 02:41:19.212523	2019-02-16 02:41:19.212523	\N	\N	\N	\N	\N	\N
815	2011-04-27 00:00:00	40	44	55	24	4	5	2019-02-16 02:41:19.221955	2019-02-16 02:41:19.221955	\N	\N	\N	\N	\N	\N
816	2011-04-23 00:00:00	58	11	3	48	47	19	2019-02-16 02:41:19.24549	2019-02-16 02:41:19.24549	\N	\N	\N	\N	\N	\N
817	2011-04-20 00:00:00	9	24	43	34	36	27	2019-02-16 02:41:19.255222	2019-02-16 02:41:19.255222	\N	\N	\N	\N	\N	\N
818	2011-04-16 00:00:00	21	55	33	45	44	7	2019-02-16 02:41:19.277631	2019-02-16 02:41:19.277631	\N	\N	\N	\N	\N	\N
819	2011-04-13 00:00:00	4	49	39	50	23	39	2019-02-16 02:41:19.286834	2019-02-16 02:41:19.286834	\N	\N	\N	\N	\N	\N
820	2011-04-09 00:00:00	53	5	56	14	32	11	2019-02-16 02:41:19.309319	2019-02-16 02:41:19.309319	\N	\N	\N	\N	\N	\N
821	2011-04-06 00:00:00	56	18	55	10	41	15	2019-02-16 02:41:19.317988	2019-02-16 02:41:19.317988	\N	\N	\N	\N	\N	\N
822	2011-04-02 00:00:00	43	22	34	6	45	23	2019-02-16 02:41:19.340476	2019-02-16 02:41:19.340476	\N	\N	\N	\N	\N	\N
823	2011-03-30 00:00:00	58	56	20	19	42	37	2019-02-16 02:41:19.368481	2019-02-16 02:41:19.368481	\N	\N	\N	\N	\N	\N
824	2011-03-26 00:00:00	10	4	11	33	19	27	2019-02-16 02:41:19.383244	2019-02-16 02:41:19.383244	\N	\N	\N	\N	\N	\N
825	2011-03-23 00:00:00	15	28	5	26	32	9	2019-02-16 02:41:19.399303	2019-02-16 02:41:19.399303	\N	\N	\N	\N	\N	\N
826	2011-03-19 00:00:00	11	20	46	27	3	8	2019-02-16 02:41:19.414849	2019-02-16 02:41:19.414849	\N	\N	\N	\N	\N	\N
827	2011-03-16 00:00:00	53	28	48	39	40	9	2019-02-16 02:41:19.431112	2019-02-16 02:41:19.431112	\N	\N	\N	\N	\N	\N
828	2011-03-12 00:00:00	4	41	1	12	47	3	2019-02-16 02:41:19.44648	2019-02-16 02:41:19.44648	\N	\N	\N	\N	\N	\N
829	2011-03-09 00:00:00	12	20	28	40	48	8	2019-02-16 02:41:19.462377	2019-02-16 02:41:19.462377	\N	\N	\N	\N	\N	\N
830	2011-03-05 00:00:00	42	31	23	48	2	21	2019-02-16 02:41:19.477422	2019-02-16 02:41:19.477422	\N	\N	\N	\N	\N	\N
831	2011-03-02 00:00:00	50	58	7	31	51	6	2019-02-16 02:41:19.491981	2019-02-16 02:41:19.491981	\N	\N	\N	\N	\N	\N
832	2011-02-26 00:00:00	4	45	21	17	13	10	2019-02-16 02:41:19.508446	2019-02-16 02:41:19.508446	\N	\N	\N	\N	\N	\N
833	2011-02-23 00:00:00	32	36	39	29	49	29	2019-02-16 02:41:19.523101	2019-02-16 02:41:19.523101	\N	\N	\N	\N	\N	\N
834	2011-02-19 00:00:00	12	34	3	42	37	36	2019-02-16 02:41:19.539788	2019-02-16 02:41:19.539788	\N	\N	\N	\N	\N	\N
835	2011-02-16 00:00:00	23	48	21	9	13	24	2019-02-16 02:41:19.555714	2019-02-16 02:41:19.555714	\N	\N	\N	\N	\N	\N
836	2011-02-12 00:00:00	32	52	36	48	11	19	2019-02-16 02:41:19.570013	2019-02-16 02:41:19.570013	\N	\N	\N	\N	\N	\N
837	2011-02-09 00:00:00	51	39	42	11	7	30	2019-02-16 02:41:19.586588	2019-02-16 02:41:19.586588	\N	\N	\N	\N	\N	\N
838	2011-02-05 00:00:00	15	41	59	37	56	5	2019-02-16 02:41:19.601129	2019-02-16 02:41:19.601129	\N	\N	\N	\N	\N	\N
839	2011-02-02 00:00:00	33	57	53	3	14	36	2019-02-16 02:41:19.616895	2019-02-16 02:41:19.616895	\N	\N	\N	\N	\N	\N
840	2011-01-29 00:00:00	28	45	24	52	49	2	2019-02-16 02:41:19.632342	2019-02-16 02:41:19.632342	\N	\N	\N	\N	\N	\N
841	2011-01-26 00:00:00	4	47	58	5	36	6	2019-02-16 02:41:19.647367	2019-02-16 02:41:19.647367	\N	\N	\N	\N	\N	\N
842	2011-01-22 00:00:00	34	30	51	31	45	23	2019-02-16 02:41:19.663666	2019-02-16 02:41:19.663666	\N	\N	\N	\N	\N	\N
843	2011-01-19 00:00:00	36	51	56	22	59	32	2019-02-16 02:41:19.679783	2019-02-16 02:41:19.679783	\N	\N	\N	\N	\N	\N
844	2011-01-15 00:00:00	22	13	9	37	23	31	2019-02-16 02:41:19.695778	2019-02-16 02:41:19.695778	\N	\N	\N	\N	\N	\N
845	2011-01-12 00:00:00	48	23	40	21	19	27	2019-02-16 02:41:19.711058	2019-02-16 02:41:19.711058	\N	\N	\N	\N	\N	\N
846	2011-01-08 00:00:00	7	52	6	33	26	24	2019-02-16 02:41:19.725356	2019-02-16 02:41:19.725356	\N	\N	\N	\N	\N	\N
847	2011-01-05 00:00:00	40	22	32	26	38	7	2019-02-16 02:41:19.742548	2019-02-16 02:41:19.742548	\N	\N	\N	\N	\N	\N
848	2011-01-01 00:00:00	37	47	18	22	54	36	2019-02-16 02:41:19.758011	2019-02-16 02:41:19.758011	\N	\N	\N	\N	\N	\N
849	2010-12-29 00:00:00	18	37	20	16	3	30	2019-02-16 02:41:19.792067	2019-02-16 02:41:19.792067	\N	\N	\N	\N	\N	\N
850	2010-12-25 00:00:00	52	50	1	38	17	24	2019-02-16 02:41:19.804149	2019-02-16 02:41:19.804149	\N	\N	\N	\N	\N	\N
851	2010-12-22 00:00:00	33	11	44	47	46	12	2019-02-16 02:41:19.823449	2019-02-16 02:41:19.823449	\N	\N	\N	\N	\N	\N
852	2010-12-18 00:00:00	43	19	4	11	33	14	2019-02-16 02:41:19.83295	2019-02-16 02:41:19.83295	\N	\N	\N	\N	\N	\N
853	2010-12-15 00:00:00	32	18	45	10	11	18	2019-02-16 02:41:19.843861	2019-02-16 02:41:19.843861	\N	\N	\N	\N	\N	\N
854	2010-12-11 00:00:00	1	8	19	10	20	23	2019-02-16 02:41:19.860702	2019-02-16 02:41:19.860702	\N	\N	\N	\N	\N	\N
855	2010-12-08 00:00:00	25	8	11	58	41	16	2019-02-16 02:41:19.871007	2019-02-16 02:41:19.871007	\N	\N	\N	\N	\N	\N
856	2010-12-04 00:00:00	27	24	42	31	13	22	2019-02-16 02:41:19.891093	2019-02-16 02:41:19.891093	\N	\N	\N	\N	\N	\N
857	2010-12-01 00:00:00	10	5	12	11	20	2	2019-02-16 02:41:19.903891	2019-02-16 02:41:19.903891	\N	\N	\N	\N	\N	\N
858	2010-11-27 00:00:00	47	37	30	54	10	39	2019-02-16 02:41:19.920402	2019-02-16 02:41:19.920402	\N	\N	\N	\N	\N	\N
859	2010-11-24 00:00:00	20	8	21	37	32	4	2019-02-16 02:41:19.937073	2019-02-16 02:41:19.937073	\N	\N	\N	\N	\N	\N
860	2010-11-20 00:00:00	12	10	38	53	57	1	2019-02-16 02:41:19.951978	2019-02-16 02:41:19.951978	\N	\N	\N	\N	\N	\N
861	2010-11-17 00:00:00	14	59	54	53	16	5	2019-02-16 02:41:19.978113	2019-02-16 02:41:19.978113	\N	\N	\N	\N	\N	\N
862	2010-11-13 00:00:00	30	51	17	48	54	29	2019-02-16 02:41:19.991965	2019-02-16 02:41:19.991965	\N	\N	\N	\N	\N	\N
863	2010-11-10 00:00:00	5	8	44	40	11	10	2019-02-16 02:41:20.011014	2019-02-16 02:41:20.011014	\N	\N	\N	\N	\N	\N
864	2010-11-06 00:00:00	7	12	23	34	38	33	2019-02-16 02:41:20.020084	2019-02-16 02:41:20.020084	\N	\N	\N	\N	\N	\N
865	2010-11-03 00:00:00	34	45	38	39	50	33	2019-02-16 02:41:20.030644	2019-02-16 02:41:20.030644	\N	\N	\N	\N	\N	\N
866	2010-10-30 00:00:00	49	7	27	1	36	39	2019-02-16 02:41:20.059244	2019-02-16 02:41:20.059244	\N	\N	\N	\N	\N	\N
867	2010-10-27 00:00:00	25	24	20	59	53	15	2019-02-16 02:41:20.073694	2019-02-16 02:41:20.073694	\N	\N	\N	\N	\N	\N
868	2010-10-23 00:00:00	20	2	46	7	16	34	2019-02-16 02:41:20.089291	2019-02-16 02:41:20.089291	\N	\N	\N	\N	\N	\N
869	2010-10-20 00:00:00	20	39	7	17	59	17	2019-02-16 02:41:20.104058	2019-02-16 02:41:20.104058	\N	\N	\N	\N	\N	\N
870	2010-10-16 00:00:00	28	16	12	11	15	11	2019-02-16 02:41:20.117655	2019-02-16 02:41:20.117655	\N	\N	\N	\N	\N	\N
871	2010-10-13 00:00:00	46	34	32	22	12	2	2019-02-16 02:41:20.132947	2019-02-16 02:41:20.132947	\N	\N	\N	\N	\N	\N
872	2010-10-09 00:00:00	42	32	49	6	2	35	2019-02-16 02:41:20.149027	2019-02-16 02:41:20.149027	\N	\N	\N	\N	\N	\N
873	2010-10-06 00:00:00	26	41	14	37	46	24	2019-02-16 02:41:20.163566	2019-02-16 02:41:20.163566	\N	\N	\N	\N	\N	\N
874	2010-10-02 00:00:00	30	12	36	20	47	25	2019-02-16 02:41:20.195244	2019-02-16 02:41:20.195244	\N	\N	\N	\N	\N	\N
875	2010-09-29 00:00:00	52	13	55	44	51	30	2019-02-16 02:41:20.210936	2019-02-16 02:41:20.210936	\N	\N	\N	\N	\N	\N
876	2010-09-25 00:00:00	8	35	27	16	42	30	2019-02-16 02:41:20.225427	2019-02-16 02:41:20.225427	\N	\N	\N	\N	\N	\N
877	2010-09-22 00:00:00	10	36	52	24	55	15	2019-02-16 02:41:20.248163	2019-02-16 02:41:20.248163	\N	\N	\N	\N	\N	\N
878	2010-09-18 00:00:00	18	44	1	39	37	13	2019-02-16 02:41:20.260052	2019-02-16 02:41:20.260052	\N	\N	\N	\N	\N	\N
879	2010-09-15 00:00:00	7	20	21	34	43	34	2019-02-16 02:41:20.276036	2019-02-16 02:41:20.276036	\N	\N	\N	\N	\N	\N
880	2010-09-11 00:00:00	36	20	59	17	7	33	2019-02-16 02:41:20.284809	2019-02-16 02:41:20.284809	\N	\N	\N	\N	\N	\N
881	2010-09-08 00:00:00	10	57	51	35	39	20	2019-02-16 02:41:20.309214	2019-02-16 02:41:20.309214	\N	\N	\N	\N	\N	\N
882	2010-09-04 00:00:00	33	22	42	14	11	38	2019-02-16 02:41:20.317988	2019-02-16 02:41:20.317988	\N	\N	\N	\N	\N	\N
883	2010-09-01 00:00:00	40	20	21	17	51	19	2019-02-16 02:41:20.340032	2019-02-16 02:41:20.340032	\N	\N	\N	\N	\N	\N
884	2010-08-28 00:00:00	32	56	4	27	22	13	2019-02-16 02:41:20.348735	2019-02-16 02:41:20.348735	\N	\N	\N	\N	\N	\N
885	2010-08-25 00:00:00	17	36	29	16	31	23	2019-02-16 02:41:20.359286	2019-02-16 02:41:20.359286	\N	\N	\N	\N	\N	\N
886	2010-08-21 00:00:00	7	22	10	27	12	26	2019-02-16 02:41:20.375971	2019-02-16 02:41:20.375971	\N	\N	\N	\N	\N	\N
887	2010-08-18 00:00:00	47	4	33	32	55	39	2019-02-16 02:41:20.40121	2019-02-16 02:41:20.40121	\N	\N	\N	\N	\N	\N
888	2010-08-14 00:00:00	9	33	36	50	58	31	2019-02-16 02:41:20.410863	2019-02-16 02:41:20.410863	\N	\N	\N	\N	\N	\N
889	2010-08-11 00:00:00	22	52	10	23	7	29	2019-02-16 02:41:20.433516	2019-02-16 02:41:20.433516	\N	\N	\N	\N	\N	\N
890	2010-08-07 00:00:00	52	26	31	22	4	30	2019-02-16 02:41:20.442995	2019-02-16 02:41:20.442995	\N	\N	\N	\N	\N	\N
891	2010-08-04 00:00:00	53	30	19	37	28	36	2019-02-16 02:41:20.465147	2019-02-16 02:41:20.465147	\N	\N	\N	\N	\N	\N
892	2010-07-31 00:00:00	1	57	16	41	17	15	2019-02-16 02:41:20.474042	2019-02-16 02:41:20.474042	\N	\N	\N	\N	\N	\N
893	2010-07-28 00:00:00	1	11	20	27	25	2	2019-02-16 02:41:20.482339	2019-02-16 02:41:20.482339	\N	\N	\N	\N	\N	\N
894	2010-07-24 00:00:00	59	30	46	38	20	27	2019-02-16 02:41:20.500348	2019-02-16 02:41:20.500348	\N	\N	\N	\N	\N	\N
895	2010-07-21 00:00:00	16	58	22	30	51	25	2019-02-16 02:41:20.514901	2019-02-16 02:41:20.514901	\N	\N	\N	\N	\N	\N
896	2010-07-17 00:00:00	27	37	22	45	35	3	2019-02-16 02:41:20.529886	2019-02-16 02:41:20.529886	\N	\N	\N	\N	\N	\N
897	2010-07-14 00:00:00	21	23	38	20	42	6	2019-02-16 02:41:20.55628	2019-02-16 02:41:20.55628	\N	\N	\N	\N	\N	\N
898	2010-07-10 00:00:00	28	21	20	56	27	4	2019-02-16 02:41:20.56509	2019-02-16 02:41:20.56509	\N	\N	\N	\N	\N	\N
899	2010-07-07 00:00:00	10	41	44	56	48	4	2019-02-16 02:41:20.589478	2019-02-16 02:41:20.589478	\N	\N	\N	\N	\N	\N
900	2010-07-03 00:00:00	52	53	3	14	10	3	2019-02-16 02:41:20.598219	2019-02-16 02:41:20.598219	\N	\N	\N	\N	\N	\N
901	2010-06-30 00:00:00	38	43	6	48	47	27	2019-02-16 02:41:20.621365	2019-02-16 02:41:20.621365	\N	\N	\N	\N	\N	\N
902	2010-06-26 00:00:00	57	30	13	38	32	25	2019-02-16 02:41:20.630193	2019-02-16 02:41:20.630193	\N	\N	\N	\N	\N	\N
903	2010-06-23 00:00:00	48	11	45	30	47	10	2019-02-16 02:41:20.652218	2019-02-16 02:41:20.652218	\N	\N	\N	\N	\N	\N
904	2010-06-19 00:00:00	54	31	9	30	50	39	2019-02-16 02:41:20.661457	2019-02-16 02:41:20.661457	\N	\N	\N	\N	\N	\N
905	2010-06-16 00:00:00	29	18	11	36	8	6	2019-02-16 02:41:20.683814	2019-02-16 02:41:20.683814	\N	\N	\N	\N	\N	\N
906	2010-06-12 00:00:00	38	13	12	9	35	30	2019-02-16 02:41:20.693466	2019-02-16 02:41:20.693466	\N	\N	\N	\N	\N	\N
907	2010-06-09 00:00:00	22	49	27	14	32	5	2019-02-16 02:41:20.703294	2019-02-16 02:41:20.703294	\N	\N	\N	\N	\N	\N
908	2010-06-05 00:00:00	18	34	40	59	48	25	2019-02-16 02:41:20.719098	2019-02-16 02:41:20.719098	\N	\N	\N	\N	\N	\N
909	2010-06-02 00:00:00	39	14	43	9	4	38	2019-02-16 02:41:20.745101	2019-02-16 02:41:20.745101	\N	\N	\N	\N	\N	\N
910	2010-05-29 00:00:00	24	3	28	1	41	10	2019-02-16 02:41:20.754535	2019-02-16 02:41:20.754535	\N	\N	\N	\N	\N	\N
911	2010-05-26 00:00:00	6	20	10	1	13	32	2019-02-16 02:41:20.777681	2019-02-16 02:41:20.777681	\N	\N	\N	\N	\N	\N
912	2010-05-22 00:00:00	20	19	47	57	40	29	2019-02-16 02:41:20.786848	2019-02-16 02:41:20.786848	\N	\N	\N	\N	\N	\N
913	2010-05-19 00:00:00	7	58	55	29	2	27	2019-02-16 02:41:20.809138	2019-02-16 02:41:20.809138	\N	\N	\N	\N	\N	\N
914	2010-05-15 00:00:00	28	15	36	23	21	20	2019-02-16 02:41:20.817796	2019-02-16 02:41:20.817796	\N	\N	\N	\N	\N	\N
915	2010-05-12 00:00:00	52	58	53	37	51	38	2019-02-16 02:41:20.840037	2019-02-16 02:41:20.840037	\N	\N	\N	\N	\N	\N
916	2010-05-08 00:00:00	41	5	57	34	22	31	2019-02-16 02:41:20.848952	2019-02-16 02:41:20.848952	\N	\N	\N	\N	\N	\N
917	2010-05-05 00:00:00	47	13	34	40	57	11	2019-02-16 02:41:20.859159	2019-02-16 02:41:20.859159	\N	\N	\N	\N	\N	\N
918	2010-05-01 00:00:00	23	25	16	49	58	20	2019-02-16 02:41:20.875755	2019-02-16 02:41:20.875755	\N	\N	\N	\N	\N	\N
919	2010-04-28 00:00:00	28	44	12	22	25	24	2019-02-16 02:41:20.900987	2019-02-16 02:41:20.900987	\N	\N	\N	\N	\N	\N
920	2010-04-24 00:00:00	57	56	1	53	12	5	2019-02-16 02:41:20.914757	2019-02-16 02:41:20.914757	\N	\N	\N	\N	\N	\N
921	2010-04-21 00:00:00	11	34	55	41	49	20	2019-02-16 02:41:20.930634	2019-02-16 02:41:20.930634	\N	\N	\N	\N	\N	\N
922	2010-04-17 00:00:00	22	41	49	21	5	15	2019-02-16 02:41:20.946544	2019-02-16 02:41:20.946544	\N	\N	\N	\N	\N	\N
923	2010-04-14 00:00:00	14	6	32	52	38	20	2019-02-16 02:41:20.961893	2019-02-16 02:41:20.961893	\N	\N	\N	\N	\N	\N
924	2010-04-10 00:00:00	21	22	52	49	58	34	2019-02-16 02:41:20.977271	2019-02-16 02:41:20.977271	\N	\N	\N	\N	\N	\N
925	2010-04-07 00:00:00	36	52	44	4	40	33	2019-02-16 02:41:20.992016	2019-02-16 02:41:20.992016	\N	\N	\N	\N	\N	\N
926	2010-04-03 00:00:00	10	15	31	52	59	4	2019-02-16 02:41:21.008218	2019-02-16 02:41:21.008218	\N	\N	\N	\N	\N	\N
927	2010-03-31 00:00:00	13	45	54	5	17	12	2019-02-16 02:41:21.024003	2019-02-16 02:41:21.024003	\N	\N	\N	\N	\N	\N
928	2010-03-27 00:00:00	21	7	32	52	44	10	2019-02-16 02:41:21.038952	2019-02-16 02:41:21.038952	\N	\N	\N	\N	\N	\N
929	2010-03-24 00:00:00	14	49	39	24	20	7	2019-02-16 02:41:21.054012	2019-02-16 02:41:21.054012	\N	\N	\N	\N	\N	\N
930	2010-03-20 00:00:00	9	36	44	45	39	9	2019-02-16 02:41:21.068538	2019-02-16 02:41:21.068538	\N	\N	\N	\N	\N	\N
931	2010-03-17 00:00:00	55	26	48	45	24	8	2019-02-16 02:41:21.085673	2019-02-16 02:41:21.085673	\N	\N	\N	\N	\N	\N
932	2010-03-13 00:00:00	16	36	20	6	31	8	2019-02-16 02:41:21.100723	2019-02-16 02:41:21.100723	\N	\N	\N	\N	\N	\N
933	2010-03-10 00:00:00	41	37	17	50	21	1	2019-02-16 02:41:21.117044	2019-02-16 02:41:21.117044	\N	\N	\N	\N	\N	\N
934	2010-03-06 00:00:00	41	33	10	59	29	15	2019-02-16 02:41:21.132206	2019-02-16 02:41:21.132206	\N	\N	\N	\N	\N	\N
935	2010-03-03 00:00:00	14	49	9	7	45	23	2019-02-16 02:41:21.146939	2019-02-16 02:41:21.146939	\N	\N	\N	\N	\N	\N
936	2010-02-27 00:00:00	47	18	58	53	51	30	2019-02-16 02:41:21.163941	2019-02-16 02:41:21.163941	\N	\N	\N	\N	\N	\N
937	2010-02-24 00:00:00	50	17	57	35	4	12	2019-02-16 02:41:21.179212	2019-02-16 02:41:21.179212	\N	\N	\N	\N	\N	\N
938	2010-02-20 00:00:00	13	54	41	37	27	32	2019-02-16 02:41:21.195642	2019-02-16 02:41:21.195642	\N	\N	\N	\N	\N	\N
939	2010-02-17 00:00:00	36	7	26	8	19	15	2019-02-16 02:41:21.21117	2019-02-16 02:41:21.21117	\N	\N	\N	\N	\N	\N
940	2010-02-13 00:00:00	14	10	40	51	30	1	2019-02-16 02:41:21.225557	2019-02-16 02:41:21.225557	\N	\N	\N	\N	\N	\N
941	2010-02-10 00:00:00	29	8	37	38	5	34	2019-02-16 02:41:21.242503	2019-02-16 02:41:21.242503	\N	\N	\N	\N	\N	\N
942	2010-02-06 00:00:00	22	54	52	14	59	4	2019-02-16 02:41:21.257603	2019-02-16 02:41:21.257603	\N	\N	\N	\N	\N	\N
943	2010-02-03 00:00:00	37	52	22	36	17	24	2019-02-16 02:41:21.274074	2019-02-16 02:41:21.274074	\N	\N	\N	\N	\N	\N
944	2010-01-30 00:00:00	26	35	48	47	6	21	2019-02-16 02:41:21.289376	2019-02-16 02:41:21.289376	\N	\N	\N	\N	\N	\N
945	2010-01-27 00:00:00	15	26	31	6	20	9	2019-02-16 02:41:21.303834	2019-02-16 02:41:21.303834	\N	\N	\N	\N	\N	\N
946	2010-01-23 00:00:00	53	16	15	42	20	17	2019-02-16 02:41:21.319562	2019-02-16 02:41:21.319562	\N	\N	\N	\N	\N	\N
947	2010-01-20 00:00:00	46	15	43	44	32	19	2019-02-16 02:41:21.334387	2019-02-16 02:41:21.334387	\N	\N	\N	\N	\N	\N
948	2010-01-16 00:00:00	41	8	7	55	23	23	2019-02-16 02:41:21.35123	2019-02-16 02:41:21.35123	\N	\N	\N	\N	\N	\N
949	2010-01-13 00:00:00	32	15	8	11	50	27	2019-02-16 02:41:21.366988	2019-02-16 02:41:21.366988	\N	\N	\N	\N	\N	\N
950	2010-01-09 00:00:00	41	44	20	54	50	22	2019-02-16 02:41:21.381156	2019-02-16 02:41:21.381156	\N	\N	\N	\N	\N	\N
951	2010-01-06 00:00:00	56	27	29	20	58	31	2019-02-16 02:41:21.397065	2019-02-16 02:41:21.397065	\N	\N	\N	\N	\N	\N
952	2010-01-02 00:00:00	23	3	7	42	27	37	2019-02-16 02:41:21.412763	2019-02-16 02:41:21.412763	\N	\N	\N	\N	\N	\N
953	2009-12-30 00:00:00	5	52	14	38	39	6	2019-02-16 02:41:21.429368	2019-02-16 02:41:21.429368	\N	\N	\N	\N	\N	\N
954	2009-12-26 00:00:00	53	41	36	32	37	30	2019-02-16 02:41:21.445106	2019-02-16 02:41:21.445106	\N	\N	\N	\N	\N	\N
955	2009-12-23 00:00:00	52	8	49	51	32	23	2019-02-16 02:41:21.460143	2019-02-16 02:41:21.460143	\N	\N	\N	\N	\N	\N
956	2009-12-19 00:00:00	24	41	17	47	39	21	2019-02-16 02:41:21.475607	2019-02-16 02:41:21.475607	\N	\N	\N	\N	\N	\N
957	2009-12-16 00:00:00	23	43	25	35	13	15	2019-02-16 02:41:21.48423	2019-02-16 02:41:21.48423	\N	\N	\N	\N	\N	\N
958	2009-12-12 00:00:00	14	41	12	13	35	29	2019-02-16 02:41:21.50755	2019-02-16 02:41:21.50755	\N	\N	\N	\N	\N	\N
959	2009-12-09 00:00:00	58	12	5	1	13	21	2019-02-16 02:41:21.52286	2019-02-16 02:41:21.52286	\N	\N	\N	\N	\N	\N
960	2009-12-05 00:00:00	41	58	27	39	44	17	2019-02-16 02:41:21.539231	2019-02-16 02:41:21.539231	\N	\N	\N	\N	\N	\N
961	2009-12-02 00:00:00	37	46	14	34	55	37	2019-02-16 02:41:21.556383	2019-02-16 02:41:21.556383	\N	\N	\N	\N	\N	\N
962	2009-11-28 00:00:00	46	50	27	28	26	21	2019-02-16 02:41:21.570841	2019-02-16 02:41:21.570841	\N	\N	\N	\N	\N	\N
963	2009-11-25 00:00:00	18	13	4	59	49	5	2019-02-16 02:41:21.586243	2019-02-16 02:41:21.586243	\N	\N	\N	\N	\N	\N
964	2009-11-21 00:00:00	26	36	7	49	58	4	2019-02-16 02:41:21.601001	2019-02-16 02:41:21.601001	\N	\N	\N	\N	\N	\N
965	2009-11-18 00:00:00	58	59	32	50	42	31	2019-02-16 02:41:21.61709	2019-02-16 02:41:21.61709	\N	\N	\N	\N	\N	\N
966	2009-11-14 00:00:00	57	30	19	48	32	14	2019-02-16 02:41:21.632146	2019-02-16 02:41:21.632146	\N	\N	\N	\N	\N	\N
967	2009-11-11 00:00:00	12	8	22	29	14	22	2019-02-16 02:41:21.646947	2019-02-16 02:41:21.646947	\N	\N	\N	\N	\N	\N
968	2009-11-07 00:00:00	32	37	46	50	7	26	2019-02-16 02:41:21.663767	2019-02-16 02:41:21.663767	\N	\N	\N	\N	\N	\N
969	2009-11-04 00:00:00	51	10	45	11	14	17	2019-02-16 02:41:21.679491	2019-02-16 02:41:21.679491	\N	\N	\N	\N	\N	\N
970	2009-10-31 00:00:00	19	26	54	41	2	23	2019-02-16 02:41:21.69435	2019-02-16 02:41:21.69435	\N	\N	\N	\N	\N	\N
971	2009-10-28 00:00:00	51	46	26	3	11	23	2019-02-16 02:41:21.712884	2019-02-16 02:41:21.712884	\N	\N	\N	\N	\N	\N
972	2009-10-24 00:00:00	38	22	59	49	14	16	2019-02-16 02:41:21.727503	2019-02-16 02:41:21.727503	\N	\N	\N	\N	\N	\N
973	2009-10-21 00:00:00	34	51	45	6	16	4	2019-02-16 02:41:21.742719	2019-02-16 02:41:21.742719	\N	\N	\N	\N	\N	\N
974	2009-10-17 00:00:00	16	5	49	30	25	39	2019-02-16 02:41:21.774581	2019-02-16 02:41:21.774581	\N	\N	\N	\N	\N	\N
975	2009-10-14 00:00:00	15	30	5	40	25	6	2019-02-16 02:41:21.782922	2019-02-16 02:41:21.782922	\N	\N	\N	\N	\N	\N
976	2009-10-10 00:00:00	45	49	50	13	32	30	2019-02-16 02:41:21.807754	2019-02-16 02:41:21.807754	\N	\N	\N	\N	\N	\N
977	2009-10-07 00:00:00	2	50	38	21	20	22	2019-02-16 02:41:21.82302	2019-02-16 02:41:21.82302	\N	\N	\N	\N	\N	\N
978	2009-10-03 00:00:00	50	57	24	12	48	22	2019-02-16 02:41:21.837538	2019-02-16 02:41:21.837538	\N	\N	\N	\N	\N	\N
979	2009-09-30 00:00:00	52	54	41	42	57	30	2019-02-16 02:41:21.852825	2019-02-16 02:41:21.852825	\N	\N	\N	\N	\N	\N
980	2009-09-26 00:00:00	34	20	36	39	18	19	2019-02-16 02:41:21.862255	2019-02-16 02:41:21.862255	\N	\N	\N	\N	\N	\N
981	2009-09-23 00:00:00	7	8	29	20	25	11	2019-02-16 02:41:21.884925	2019-02-16 02:41:21.884925	\N	\N	\N	\N	\N	\N
982	2009-09-19 00:00:00	25	24	49	30	5	23	2019-02-16 02:41:21.900416	2019-02-16 02:41:21.900416	\N	\N	\N	\N	\N	\N
983	2009-09-16 00:00:00	17	56	37	40	51	25	2019-02-16 02:41:21.915445	2019-02-16 02:41:21.915445	\N	\N	\N	\N	\N	\N
984	2009-09-12 00:00:00	13	28	56	41	38	25	2019-02-16 02:41:21.931361	2019-02-16 02:41:21.931361	\N	\N	\N	\N	\N	\N
985	2009-09-09 00:00:00	16	18	51	53	4	23	2019-02-16 02:41:21.946775	2019-02-16 02:41:21.946775	\N	\N	\N	\N	\N	\N
986	2009-09-05 00:00:00	35	27	16	9	57	29	2019-02-16 02:41:21.97713	2019-02-16 02:41:21.97713	\N	\N	\N	\N	\N	\N
987	2009-09-02 00:00:00	23	47	36	18	59	36	2019-02-16 02:41:21.985572	2019-02-16 02:41:21.985572	\N	\N	\N	\N	\N	\N
988	2009-08-29 00:00:00	1	53	20	37	52	33	2019-02-16 02:41:22.009187	2019-02-16 02:41:22.009187	\N	\N	\N	\N	\N	\N
989	2009-08-26 00:00:00	43	23	1	21	30	11	2019-02-16 02:41:22.017727	2019-02-16 02:41:22.017727	\N	\N	\N	\N	\N	\N
990	2009-08-22 00:00:00	6	51	3	20	32	23	2019-02-16 02:41:22.037578	2019-02-16 02:41:22.037578	\N	\N	\N	\N	\N	\N
991	2009-08-19 00:00:00	43	14	31	51	24	27	2019-02-16 02:41:22.047637	2019-02-16 02:41:22.047637	\N	\N	\N	\N	\N	\N
992	2009-08-15 00:00:00	14	26	32	15	36	12	2019-02-16 02:41:22.064514	2019-02-16 02:41:22.064514	\N	\N	\N	\N	\N	\N
993	2009-08-12 00:00:00	32	10	25	47	34	5	2019-02-16 02:41:22.089887	2019-02-16 02:41:22.089887	\N	\N	\N	\N	\N	\N
994	2009-08-08 00:00:00	45	37	50	33	4	11	2019-02-16 02:41:22.098547	2019-02-16 02:41:22.098547	\N	\N	\N	\N	\N	\N
995	2009-08-05 00:00:00	34	25	41	49	46	29	2019-02-16 02:41:22.124071	2019-02-16 02:41:22.124071	\N	\N	\N	\N	\N	\N
996	2009-08-01 00:00:00	53	37	46	39	5	8	2019-02-16 02:41:22.132687	2019-02-16 02:41:22.132687	\N	\N	\N	\N	\N	\N
997	2009-07-29 00:00:00	38	2	43	5	59	8	2019-02-16 02:41:22.156646	2019-02-16 02:41:22.156646	\N	\N	\N	\N	\N	\N
998	2009-07-25 00:00:00	33	5	52	46	17	9	2019-02-16 02:41:22.16726	2019-02-16 02:41:22.16726	\N	\N	\N	\N	\N	\N
999	2009-07-22 00:00:00	6	22	4	16	32	11	2019-02-16 02:41:22.187462	2019-02-16 02:41:22.187462	\N	\N	\N	\N	\N	\N
1000	2009-07-18 00:00:00	21	26	47	4	28	37	2019-02-16 02:41:22.197161	2019-02-16 02:41:22.197161	\N	\N	\N	\N	\N	\N
1001	2009-07-15 00:00:00	26	50	57	52	51	37	2019-02-16 02:41:22.217781	2019-02-16 02:41:22.217781	\N	\N	\N	\N	\N	\N
1002	2009-07-11 00:00:00	39	1	4	42	20	2	2019-02-16 02:41:22.227673	2019-02-16 02:41:22.227673	\N	\N	\N	\N	\N	\N
1003	2009-07-08 00:00:00	50	56	42	53	19	39	2019-02-16 02:41:22.250302	2019-02-16 02:41:22.250302	\N	\N	\N	\N	\N	\N
1004	2009-07-04 00:00:00	22	4	41	44	9	14	2019-02-16 02:41:22.260601	2019-02-16 02:41:22.260601	\N	\N	\N	\N	\N	\N
1005	2009-07-01 00:00:00	38	53	9	52	32	15	2019-02-16 02:41:22.280079	2019-02-16 02:41:22.280079	\N	\N	\N	\N	\N	\N
1006	2009-06-27 00:00:00	48	39	26	18	22	17	2019-02-16 02:41:22.289594	2019-02-16 02:41:22.289594	\N	\N	\N	\N	\N	\N
1007	2009-06-24 00:00:00	53	24	51	16	18	16	2019-02-16 02:41:22.298001	2019-02-16 02:41:22.298001	\N	\N	\N	\N	\N	\N
1008	2009-06-20 00:00:00	28	22	3	11	18	33	2019-02-16 02:41:22.315456	2019-02-16 02:41:22.315456	\N	\N	\N	\N	\N	\N
1009	2009-06-17 00:00:00	53	9	37	5	42	27	2019-02-16 02:41:22.324816	2019-02-16 02:41:22.324816	\N	\N	\N	\N	\N	\N
1010	2009-06-13 00:00:00	20	41	13	35	16	6	2019-02-16 02:41:22.348663	2019-02-16 02:41:22.348663	\N	\N	\N	\N	\N	\N
1011	2009-06-10 00:00:00	26	42	58	27	15	37	2019-02-16 02:41:22.359325	2019-02-16 02:41:22.359325	\N	\N	\N	\N	\N	\N
1012	2009-06-06 00:00:00	45	10	23	30	18	2	2019-02-16 02:41:22.376252	2019-02-16 02:41:22.376252	\N	\N	\N	\N	\N	\N
1013	2009-06-03 00:00:00	22	20	32	16	37	9	2019-02-16 02:41:22.392848	2019-02-16 02:41:22.392848	\N	\N	\N	\N	\N	\N
1014	2009-05-30 00:00:00	51	42	1	59	23	20	2019-02-16 02:41:22.406684	2019-02-16 02:41:22.406684	\N	\N	\N	\N	\N	\N
1015	2009-05-27 00:00:00	5	16	6	21	12	7	2019-02-16 02:41:22.420745	2019-02-16 02:41:22.420745	\N	\N	\N	\N	\N	\N
1016	2009-05-23 00:00:00	52	19	57	34	23	21	2019-02-16 02:41:22.43755	2019-02-16 02:41:22.43755	\N	\N	\N	\N	\N	\N
1017	2009-05-20 00:00:00	23	30	42	35	31	6	2019-02-16 02:41:22.450471	2019-02-16 02:41:22.450471	\N	\N	\N	\N	\N	\N
1018	2009-05-16 00:00:00	6	7	40	56	31	38	2019-02-16 02:41:22.466212	2019-02-16 02:41:22.466212	\N	\N	\N	\N	\N	\N
1019	2009-05-13 00:00:00	30	40	37	32	19	37	2019-02-16 02:41:22.480697	2019-02-16 02:41:22.480697	\N	\N	\N	\N	\N	\N
1020	2009-05-09 00:00:00	49	32	4	15	58	21	2019-02-16 02:41:22.496377	2019-02-16 02:41:22.496377	\N	\N	\N	\N	\N	\N
1021	2009-05-06 00:00:00	12	7	22	31	8	18	2019-02-16 02:41:22.510873	2019-02-16 02:41:22.510873	\N	\N	\N	\N	\N	\N
1022	2009-05-02 00:00:00	45	20	38	42	3	27	2019-02-16 02:41:22.526577	2019-02-16 02:41:22.526577	\N	\N	\N	\N	\N	\N
1023	2009-04-29 00:00:00	6	36	50	19	59	13	2019-02-16 02:41:22.543032	2019-02-16 02:41:22.543032	\N	\N	\N	\N	\N	\N
1024	2009-04-25 00:00:00	52	42	30	8	26	15	2019-02-16 02:41:22.558097	2019-02-16 02:41:22.558097	\N	\N	\N	\N	\N	\N
1025	2009-04-22 00:00:00	30	15	48	22	37	12	2019-02-16 02:41:22.574439	2019-02-16 02:41:22.574439	\N	\N	\N	\N	\N	\N
1026	2009-04-18 00:00:00	7	28	44	43	15	20	2019-02-16 02:41:22.589196	2019-02-16 02:41:22.589196	\N	\N	\N	\N	\N	\N
1027	2009-04-15 00:00:00	59	22	26	16	27	5	2019-02-16 02:41:22.60515	2019-02-16 02:41:22.60515	\N	\N	\N	\N	\N	\N
1028	2009-04-11 00:00:00	46	49	7	35	28	20	2019-02-16 02:41:22.620223	2019-02-16 02:41:22.620223	\N	\N	\N	\N	\N	\N
1029	2009-04-08 00:00:00	52	56	1	6	48	9	2019-02-16 02:41:22.634618	2019-02-16 02:41:22.634618	\N	\N	\N	\N	\N	\N
1030	2009-04-04 00:00:00	21	57	58	14	50	7	2019-02-16 02:41:22.651333	2019-02-16 02:41:22.651333	\N	\N	\N	\N	\N	\N
1031	2009-04-01 00:00:00	2	33	41	54	9	14	2019-02-16 02:41:22.666581	2019-02-16 02:41:22.666581	\N	\N	\N	\N	\N	\N
1032	2009-03-28 00:00:00	48	2	16	41	3	19	2019-02-16 02:41:22.682241	2019-02-16 02:41:22.682241	\N	\N	\N	\N	\N	\N
1033	2009-03-25 00:00:00	23	47	10	20	54	26	2019-02-16 02:41:22.696964	2019-02-16 02:41:22.696964	\N	\N	\N	\N	\N	\N
1034	2009-03-21 00:00:00	49	27	23	52	19	21	2019-02-16 02:41:22.712646	2019-02-16 02:41:22.712646	\N	\N	\N	\N	\N	\N
1035	2009-03-18 00:00:00	16	29	26	45	41	1	2019-02-16 02:41:22.729106	2019-02-16 02:41:22.729106	\N	\N	\N	\N	\N	\N
1036	2009-03-14 00:00:00	7	44	33	30	51	10	2019-02-16 02:41:22.745178	2019-02-16 02:41:22.745178	\N	\N	\N	\N	\N	\N
1037	2009-03-11 00:00:00	13	7	47	3	34	30	2019-02-16 02:41:22.76051	2019-02-16 02:41:22.76051	\N	\N	\N	\N	\N	\N
1038	2009-03-07 00:00:00	59	27	56	28	21	21	2019-02-16 02:41:22.77568	2019-02-16 02:41:22.77568	\N	\N	\N	\N	\N	\N
1039	2009-03-04 00:00:00	6	1	44	55	49	36	2019-02-16 02:41:22.784569	2019-02-16 02:41:22.784569	\N	\N	\N	\N	\N	\N
1040	2009-02-28 00:00:00	3	58	16	20	42	7	2019-02-16 02:41:22.807703	2019-02-16 02:41:22.807703	\N	\N	\N	\N	\N	\N
1041	2009-02-25 00:00:00	32	49	42	56	17	11	2019-02-16 02:41:22.823106	2019-02-16 02:41:22.823106	\N	\N	\N	\N	\N	\N
1042	2009-02-21 00:00:00	31	46	13	45	41	21	2019-02-16 02:41:22.837313	2019-02-16 02:41:22.837313	\N	\N	\N	\N	\N	\N
1043	2009-02-18 00:00:00	44	15	56	39	2	15	2019-02-16 02:41:22.853567	2019-02-16 02:41:22.853567	\N	\N	\N	\N	\N	\N
1044	2009-02-14 00:00:00	2	8	9	33	45	5	2019-02-16 02:41:22.862591	2019-02-16 02:41:22.862591	\N	\N	\N	\N	\N	\N
1045	2009-02-11 00:00:00	5	22	45	49	10	37	2019-02-16 02:41:22.88501	2019-02-16 02:41:22.88501	\N	\N	\N	\N	\N	\N
1046	2009-02-07 00:00:00	18	53	5	28	20	27	2019-02-16 02:41:22.900568	2019-02-16 02:41:22.900568	\N	\N	\N	\N	\N	\N
1047	2009-02-04 00:00:00	24	44	30	32	7	18	2019-02-16 02:41:22.916768	2019-02-16 02:41:22.916768	\N	\N	\N	\N	\N	\N
1048	2009-01-31 00:00:00	33	26	14	41	1	37	2019-02-16 02:41:22.932761	2019-02-16 02:41:22.932761	\N	\N	\N	\N	\N	\N
1049	2009-01-28 00:00:00	10	32	18	5	23	4	2019-02-16 02:41:22.947209	2019-02-16 02:41:22.947209	\N	\N	\N	\N	\N	\N
1050	2009-01-24 00:00:00	6	37	42	20	25	25	2019-02-16 02:41:22.963653	2019-02-16 02:41:22.963653	\N	\N	\N	\N	\N	\N
1051	2009-01-21 00:00:00	26	20	54	46	38	23	2019-02-16 02:41:22.979019	2019-02-16 02:41:22.979019	\N	\N	\N	\N	\N	\N
1052	2009-01-17 00:00:00	9	5	59	23	2	26	2019-02-16 02:41:22.994273	2019-02-16 02:41:22.994273	\N	\N	\N	\N	\N	\N
1053	2009-01-14 00:00:00	46	34	25	8	39	34	2019-02-16 02:41:23.010044	2019-02-16 02:41:23.010044	\N	\N	\N	\N	\N	\N
1054	2009-01-10 00:00:00	8	56	10	18	43	9	2019-02-16 02:41:23.01945	2019-02-16 02:41:23.01945	\N	\N	\N	\N	\N	\N
1055	2009-01-07 00:00:00	23	31	33	38	52	24	2019-02-16 02:41:23.038339	2019-02-16 02:41:23.038339	\N	\N	\N	\N	\N	\N
1056	2009-01-03 00:00:00	38	22	55	24	17	24	2019-02-16 02:41:23.04768	2019-02-16 02:41:23.04768	\N	\N	\N	\N	\N	\N
1057	2008-12-31 00:00:00	11	53	8	7	17	36	2019-02-16 02:41:23.065032	2019-02-16 02:41:23.065032	\N	\N	\N	\N	\N	\N
1058	2008-12-27 00:00:00	12	43	15	31	26	10	2019-02-16 02:41:23.090475	2019-02-16 02:41:23.090475	\N	\N	\N	\N	\N	\N
1059	2008-12-24 00:00:00	17	2	32	22	41	8	2019-02-16 02:41:23.098916	2019-02-16 02:41:23.098916	\N	\N	\N	\N	\N	\N
1060	2008-12-20 00:00:00	3	19	32	54	14	24	2019-02-16 02:41:23.123971	2019-02-16 02:41:23.123971	\N	\N	\N	\N	\N	\N
1061	2008-12-17 00:00:00	11	7	30	24	18	26	2019-02-16 02:41:23.132467	2019-02-16 02:41:23.132467	\N	\N	\N	\N	\N	\N
1062	2008-12-13 00:00:00	40	14	28	26	31	13	2019-02-16 02:41:23.141686	2019-02-16 02:41:23.141686	\N	\N	\N	\N	\N	\N
1063	2008-12-10 00:00:00	37	6	41	24	15	37	2019-02-16 02:41:23.160165	2019-02-16 02:41:23.160165	\N	\N	\N	\N	\N	\N
1064	2008-12-06 00:00:00	53	9	39	43	35	10	2019-02-16 02:41:23.185698	2019-02-16 02:41:23.185698	\N	\N	\N	\N	\N	\N
1065	2008-12-03 00:00:00	17	21	25	16	55	3	2019-02-16 02:41:23.195059	2019-02-16 02:41:23.195059	\N	\N	\N	\N	\N	\N
1066	2008-11-29 00:00:00	5	55	33	39	36	21	2019-02-16 02:41:23.203233	2019-02-16 02:41:23.203233	\N	\N	\N	\N	\N	\N
1067	2008-11-26 00:00:00	11	31	52	26	34	14	2019-02-16 02:41:23.222246	2019-02-16 02:41:23.222246	\N	\N	\N	\N	\N	\N
1068	2008-11-22 00:00:00	19	32	26	45	17	14	2019-02-16 02:41:23.230797	2019-02-16 02:41:23.230797	\N	\N	\N	\N	\N	\N
1069	2008-11-19 00:00:00	8	45	13	39	38	31	2019-02-16 02:41:23.250777	2019-02-16 02:41:23.250777	\N	\N	\N	\N	\N	\N
1070	2008-11-15 00:00:00	7	44	8	12	3	37	2019-02-16 02:41:23.260075	2019-02-16 02:41:23.260075	\N	\N	\N	\N	\N	\N
1071	2008-11-12 00:00:00	18	45	25	1	29	2	2019-02-16 02:41:23.279517	2019-02-16 02:41:23.279517	\N	\N	\N	\N	\N	\N
1072	2008-11-08 00:00:00	40	36	4	21	2	41	2019-02-16 02:41:23.288995	2019-02-16 02:41:23.288995	\N	\N	\N	\N	\N	\N
1073	2008-11-05 00:00:00	18	33	36	4	8	32	2019-02-16 02:41:23.311116	2019-02-16 02:41:23.311116	\N	\N	\N	\N	\N	\N
1074	2008-11-01 00:00:00	40	4	41	6	26	15	2019-02-16 02:41:23.319543	2019-02-16 02:41:23.319543	\N	\N	\N	\N	\N	\N
1075	2008-10-29 00:00:00	37	50	20	30	52	33	2019-02-16 02:41:23.342662	2019-02-16 02:41:23.342662	\N	\N	\N	\N	\N	\N
1076	2008-10-25 00:00:00	1	3	14	38	48	2	2019-02-16 02:41:23.350992	2019-02-16 02:41:23.350992	\N	\N	\N	\N	\N	\N
1077	2008-10-22 00:00:00	17	52	10	33	51	5	2019-02-16 02:41:23.374963	2019-02-16 02:41:23.374963	\N	\N	\N	\N	\N	\N
1078	2008-10-18 00:00:00	40	10	14	32	49	15	2019-02-16 02:41:23.383547	2019-02-16 02:41:23.383547	\N	\N	\N	\N	\N	\N
1079	2008-10-15 00:00:00	3	13	38	32	48	13	2019-02-16 02:41:23.392626	2019-02-16 02:41:23.392626	\N	\N	\N	\N	\N	\N
1080	2008-10-11 00:00:00	39	3	17	47	7	9	2019-02-16 02:41:23.410275	2019-02-16 02:41:23.410275	\N	\N	\N	\N	\N	\N
1081	2008-10-08 00:00:00	48	12	54	17	2	2	2019-02-16 02:41:23.434114	2019-02-16 02:41:23.434114	\N	\N	\N	\N	\N	\N
1082	2008-10-04 00:00:00	39	4	32	1	26	18	2019-02-16 02:41:23.443487	2019-02-16 02:41:23.443487	\N	\N	\N	\N	\N	\N
1083	2008-10-01 00:00:00	43	39	8	9	55	26	2019-02-16 02:41:23.451659	2019-02-16 02:41:23.451659	\N	\N	\N	\N	\N	\N
1084	2008-09-27 00:00:00	40	24	13	29	52	29	2019-02-16 02:41:23.470971	2019-02-16 02:41:23.470971	\N	\N	\N	\N	\N	\N
1085	2008-09-24 00:00:00	32	36	13	21	5	33	2019-02-16 02:41:23.481714	2019-02-16 02:41:23.481714	\N	\N	\N	\N	\N	\N
1086	2008-09-20 00:00:00	47	30	40	28	6	24	2019-02-16 02:41:23.499613	2019-02-16 02:41:23.499613	\N	\N	\N	\N	\N	\N
1087	2008-09-17 00:00:00	12	26	32	23	44	20	2019-02-16 02:41:23.50903	2019-02-16 02:41:23.50903	\N	\N	\N	\N	\N	\N
1088	2008-09-13 00:00:00	29	17	7	51	43	38	2019-02-16 02:41:23.530757	2019-02-16 02:41:23.530757	\N	\N	\N	\N	\N	\N
1089	2008-09-10 00:00:00	37	28	15	53	14	18	2019-02-16 02:41:23.540105	2019-02-16 02:41:23.540105	\N	\N	\N	\N	\N	\N
1090	2008-09-06 00:00:00	26	54	49	25	17	11	2019-02-16 02:41:23.548808	2019-02-16 02:41:23.548808	\N	\N	\N	\N	\N	\N
1091	2008-09-03 00:00:00	49	38	40	46	50	34	2019-02-16 02:41:23.566132	2019-02-16 02:41:23.566132	\N	\N	\N	\N	\N	\N
1092	2008-08-30 00:00:00	14	32	47	2	15	36	2019-02-16 02:41:23.59037	2019-02-16 02:41:23.59037	\N	\N	\N	\N	\N	\N
1093	2008-08-27 00:00:00	13	49	31	48	36	11	2019-02-16 02:41:23.598879	2019-02-16 02:41:23.598879	\N	\N	\N	\N	\N	\N
1094	2008-08-23 00:00:00	47	33	18	48	24	23	2019-02-16 02:41:23.624341	2019-02-16 02:41:23.624341	\N	\N	\N	\N	\N	\N
1095	2008-08-20 00:00:00	15	24	47	35	16	26	2019-02-16 02:41:23.63285	2019-02-16 02:41:23.63285	\N	\N	\N	\N	\N	\N
1096	2008-08-16 00:00:00	5	43	34	52	40	20	2019-02-16 02:41:23.656252	2019-02-16 02:41:23.656252	\N	\N	\N	\N	\N	\N
1097	2008-08-13 00:00:00	31	10	5	23	19	26	2019-02-16 02:41:23.665408	2019-02-16 02:41:23.665408	\N	\N	\N	\N	\N	\N
1098	2008-08-09 00:00:00	53	40	32	49	43	21	2019-02-16 02:41:23.67505	2019-02-16 02:41:23.67505	\N	\N	\N	\N	\N	\N
1099	2008-08-06 00:00:00	24	37	5	36	51	19	2019-02-16 02:41:23.704585	2019-02-16 02:41:23.704585	\N	\N	\N	\N	\N	\N
1100	2008-08-02 00:00:00	5	28	33	2	54	30	2019-02-16 02:41:23.717029	2019-02-16 02:41:23.717029	\N	\N	\N	\N	\N	\N
1101	2008-07-30 00:00:00	25	55	3	51	45	13	2019-02-16 02:41:23.738214	2019-02-16 02:41:23.738214	\N	\N	\N	\N	\N	\N
1102	2008-07-26 00:00:00	51	55	21	12	13	18	2019-02-16 02:41:23.749125	2019-02-16 02:41:23.749125	\N	\N	\N	\N	\N	\N
1103	2008-07-23 00:00:00	52	11	14	35	41	2	2019-02-16 02:41:23.765446	2019-02-16 02:41:23.765446	\N	\N	\N	\N	\N	\N
1104	2008-07-19 00:00:00	55	46	53	6	28	2	2019-02-16 02:41:23.781852	2019-02-16 02:41:23.781852	\N	\N	\N	\N	\N	\N
1105	2008-07-16 00:00:00	3	23	15	42	29	17	2019-02-16 02:41:23.795437	2019-02-16 02:41:23.795437	\N	\N	\N	\N	\N	\N
1106	2008-07-12 00:00:00	20	50	12	2	22	17	2019-02-16 02:41:23.814983	2019-02-16 02:41:23.814983	\N	\N	\N	\N	\N	\N
1107	2008-07-09 00:00:00	5	31	7	49	53	14	2019-02-16 02:41:23.826015	2019-02-16 02:41:23.826015	\N	\N	\N	\N	\N	\N
1108	2008-07-05 00:00:00	24	47	34	1	48	18	2019-02-16 02:41:23.841441	2019-02-16 02:41:23.841441	\N	\N	\N	\N	\N	\N
1109	2008-07-02 00:00:00	46	33	52	48	4	17	2019-02-16 02:41:23.855598	2019-02-16 02:41:23.855598	\N	\N	\N	\N	\N	\N
1110	2008-06-28 00:00:00	26	32	14	34	44	6	2019-02-16 02:41:23.870186	2019-02-16 02:41:23.870186	\N	\N	\N	\N	\N	\N
1111	2008-06-25 00:00:00	53	45	14	21	25	9	2019-02-16 02:41:23.885709	2019-02-16 02:41:23.885709	\N	\N	\N	\N	\N	\N
1112	2008-06-21 00:00:00	8	7	50	31	9	31	2019-02-16 02:41:23.900916	2019-02-16 02:41:23.900916	\N	\N	\N	\N	\N	\N
1113	2008-06-18 00:00:00	52	9	31	39	12	32	2019-02-16 02:41:23.915596	2019-02-16 02:41:23.915596	\N	\N	\N	\N	\N	\N
1114	2008-06-14 00:00:00	50	31	9	20	11	14	2019-02-16 02:41:23.931436	2019-02-16 02:41:23.931436	\N	\N	\N	\N	\N	\N
1115	2008-06-11 00:00:00	7	49	18	28	21	1	2019-02-16 02:41:23.946518	2019-02-16 02:41:23.946518	\N	\N	\N	\N	\N	\N
1116	2008-06-07 00:00:00	26	44	34	12	48	9	2019-02-16 02:41:23.963696	2019-02-16 02:41:23.963696	\N	\N	\N	\N	\N	\N
1117	2008-06-04 00:00:00	18	5	52	40	20	3	2019-02-16 02:41:23.979008	2019-02-16 02:41:23.979008	\N	\N	\N	\N	\N	\N
1118	2008-05-31 00:00:00	9	17	3	14	25	8	2019-02-16 02:41:23.994175	2019-02-16 02:41:23.994175	\N	\N	\N	\N	\N	\N
1119	2008-05-28 00:00:00	18	45	22	10	37	9	2019-02-16 02:41:24.010263	2019-02-16 02:41:24.010263	\N	\N	\N	\N	\N	\N
1120	2008-05-24 00:00:00	40	33	51	52	41	6	2019-02-16 02:41:24.025814	2019-02-16 02:41:24.025814	\N	\N	\N	\N	\N	\N
1121	2008-05-21 00:00:00	21	33	42	7	16	25	2019-02-16 02:41:24.041628	2019-02-16 02:41:24.041628	\N	\N	\N	\N	\N	\N
1122	2008-05-17 00:00:00	12	21	14	15	43	30	2019-02-16 02:41:24.057636	2019-02-16 02:41:24.057636	\N	\N	\N	\N	\N	\N
1123	2008-05-14 00:00:00	46	29	21	32	19	32	2019-02-16 02:41:24.071563	2019-02-16 02:41:24.071563	\N	\N	\N	\N	\N	\N
1124	2008-05-10 00:00:00	30	7	18	45	41	6	2019-02-16 02:41:24.08105	2019-02-16 02:41:24.08105	\N	\N	\N	\N	\N	\N
1125	2008-05-07 00:00:00	42	26	25	28	9	26	2019-02-16 02:41:24.093594	2019-02-16 02:41:24.093594	\N	\N	\N	\N	\N	\N
1126	2008-05-03 00:00:00	28	2	36	46	42	40	2019-02-16 02:41:24.108456	2019-02-16 02:41:24.108456	\N	\N	\N	\N	\N	\N
1127	2008-04-30 00:00:00	25	51	43	17	1	38	2019-02-16 02:41:24.126023	2019-02-16 02:41:24.126023	\N	\N	\N	\N	\N	\N
1128	2008-04-26 00:00:00	27	45	7	12	17	24	2019-02-16 02:41:24.13924	2019-02-16 02:41:24.13924	\N	\N	\N	\N	\N	\N
1129	2008-04-23 00:00:00	22	39	21	20	11	1	2019-02-16 02:41:24.154527	2019-02-16 02:41:24.154527	\N	\N	\N	\N	\N	\N
1130	2008-04-19 00:00:00	24	13	19	39	33	8	2019-02-16 02:41:24.168036	2019-02-16 02:41:24.168036	\N	\N	\N	\N	\N	\N
1131	2008-04-16 00:00:00	21	18	11	16	51	16	2019-02-16 02:41:24.183636	2019-02-16 02:41:24.183636	\N	\N	\N	\N	\N	\N
1132	2008-04-12 00:00:00	52	11	55	48	29	36	2019-02-16 02:41:24.198686	2019-02-16 02:41:24.198686	\N	\N	\N	\N	\N	\N
1133	2008-04-09 00:00:00	46	13	32	3	19	18	2019-02-16 02:41:24.213704	2019-02-16 02:41:24.213704	\N	\N	\N	\N	\N	\N
1134	2008-04-05 00:00:00	30	47	27	12	37	26	2019-02-16 02:41:24.241731	2019-02-16 02:41:24.241731	\N	\N	\N	\N	\N	\N
1135	2008-04-02 00:00:00	37	1	55	44	34	33	2019-02-16 02:41:24.250636	2019-02-16 02:41:24.250636	\N	\N	\N	\N	\N	\N
1136	2008-03-29 00:00:00	18	36	31	25	20	7	2019-02-16 02:41:24.276298	2019-02-16 02:41:24.276298	\N	\N	\N	\N	\N	\N
1137	2008-03-26 00:00:00	20	37	49	9	12	17	2019-02-16 02:41:24.291215	2019-02-16 02:41:24.291215	\N	\N	\N	\N	\N	\N
1138	2008-03-22 00:00:00	48	46	28	25	7	19	2019-02-16 02:41:24.308616	2019-02-16 02:41:24.308616	\N	\N	\N	\N	\N	\N
1139	2008-03-19 00:00:00	29	6	8	49	41	42	2019-02-16 02:41:24.323444	2019-02-16 02:41:24.323444	\N	\N	\N	\N	\N	\N
1140	2008-03-15 00:00:00	6	42	43	47	22	16	2019-02-16 02:41:24.337522	2019-02-16 02:41:24.337522	\N	\N	\N	\N	\N	\N
1141	2008-03-12 00:00:00	30	12	34	19	36	8	2019-02-16 02:41:24.353032	2019-02-16 02:41:24.353032	\N	\N	\N	\N	\N	\N
1142	2008-03-08 00:00:00	29	49	17	34	31	16	2019-02-16 02:41:24.362498	2019-02-16 02:41:24.362498	\N	\N	\N	\N	\N	\N
1143	2008-03-05 00:00:00	10	15	23	16	31	5	2019-02-16 02:41:24.385128	2019-02-16 02:41:24.385128	\N	\N	\N	\N	\N	\N
1144	2008-03-01 00:00:00	31	21	19	2	55	19	2019-02-16 02:41:24.400587	2019-02-16 02:41:24.400587	\N	\N	\N	\N	\N	\N
1145	2008-02-27 00:00:00	37	48	53	20	24	11	2019-02-16 02:41:24.416604	2019-02-16 02:41:24.416604	\N	\N	\N	\N	\N	\N
1146	2008-02-23 00:00:00	23	29	8	13	47	32	2019-02-16 02:41:24.432089	2019-02-16 02:41:24.432089	\N	\N	\N	\N	\N	\N
1147	2008-02-20 00:00:00	20	9	36	22	12	31	2019-02-16 02:41:24.447099	2019-02-16 02:41:24.447099	\N	\N	\N	\N	\N	\N
1148	2008-02-16 00:00:00	3	49	4	20	8	18	2019-02-16 02:41:24.463927	2019-02-16 02:41:24.463927	\N	\N	\N	\N	\N	\N
1149	2008-02-13 00:00:00	32	13	38	51	19	30	2019-02-16 02:41:24.478698	2019-02-16 02:41:24.478698	\N	\N	\N	\N	\N	\N
1150	2008-02-09 00:00:00	24	4	23	43	30	28	2019-02-16 02:41:24.487534	2019-02-16 02:41:24.487534	\N	\N	\N	\N	\N	\N
1151	2008-02-06 00:00:00	3	43	5	42	12	5	2019-02-16 02:41:24.509251	2019-02-16 02:41:24.509251	\N	\N	\N	\N	\N	\N
1152	2008-02-02 00:00:00	14	44	25	26	16	30	2019-02-16 02:41:24.517705	2019-02-16 02:41:24.517705	\N	\N	\N	\N	\N	\N
1153	2008-01-30 00:00:00	55	2	17	41	54	17	2019-02-16 02:41:24.541369	2019-02-16 02:41:24.541369	\N	\N	\N	\N	\N	\N
1154	2008-01-26 00:00:00	39	53	35	11	54	24	2019-02-16 02:41:24.549691	2019-02-16 02:41:24.549691	\N	\N	\N	\N	\N	\N
1155	2008-01-23 00:00:00	48	47	35	4	16	39	2019-02-16 02:41:24.570787	2019-02-16 02:41:24.570787	\N	\N	\N	\N	\N	\N
1156	2008-01-19 00:00:00	28	20	23	25	27	2	2019-02-16 02:41:24.590493	2019-02-16 02:41:24.590493	\N	\N	\N	\N	\N	\N
1157	2008-01-16 00:00:00	9	18	47	38	19	11	2019-02-16 02:41:24.598999	2019-02-16 02:41:24.598999	\N	\N	\N	\N	\N	\N
1158	2008-01-12 00:00:00	47	53	43	23	39	14	2019-02-16 02:41:24.623948	2019-02-16 02:41:24.623948	\N	\N	\N	\N	\N	\N
1159	2008-01-09 00:00:00	2	20	13	23	21	24	2019-02-16 02:41:24.632541	2019-02-16 02:41:24.632541	\N	\N	\N	\N	\N	\N
1160	2008-01-05 00:00:00	33	11	16	4	40	9	2019-02-16 02:41:24.656017	2019-02-16 02:41:24.656017	\N	\N	\N	\N	\N	\N
1161	2008-01-02 00:00:00	31	34	48	11	2	5	2019-02-16 02:41:24.66475	2019-02-16 02:41:24.66475	\N	\N	\N	\N	\N	\N
1162	2007-12-29 00:00:00	8	12	49	17	35	18	2019-02-16 02:41:24.673772	2019-02-16 02:41:24.673772	\N	\N	\N	\N	\N	\N
1163	2007-12-26 00:00:00	55	32	8	54	41	20	2019-02-16 02:41:24.692913	2019-02-16 02:41:24.692913	\N	\N	\N	\N	\N	\N
1164	2007-12-22 00:00:00	34	10	38	5	11	21	2019-02-16 02:41:24.71955	2019-02-16 02:41:24.71955	\N	\N	\N	\N	\N	\N
1165	2007-12-19 00:00:00	22	15	42	18	23	37	2019-02-16 02:41:24.74347	2019-02-16 02:41:24.74347	\N	\N	\N	\N	\N	\N
1166	2007-12-15 00:00:00	47	22	37	48	50	17	2019-02-16 02:41:24.75958	2019-02-16 02:41:24.75958	\N	\N	\N	\N	\N	\N
1167	2007-12-12 00:00:00	7	40	55	33	14	15	2019-02-16 02:41:24.781865	2019-02-16 02:41:24.781865	\N	\N	\N	\N	\N	\N
1168	2007-12-08 00:00:00	31	8	29	25	4	41	2019-02-16 02:41:24.794232	2019-02-16 02:41:24.794232	\N	\N	\N	\N	\N	\N
1169	2007-12-05 00:00:00	8	55	21	15	1	41	2019-02-16 02:41:24.810853	2019-02-16 02:41:24.810853	\N	\N	\N	\N	\N	\N
1170	2007-12-01 00:00:00	41	32	39	55	7	13	2019-02-16 02:41:24.81959	2019-02-16 02:41:24.81959	\N	\N	\N	\N	\N	\N
1171	2007-11-28 00:00:00	23	39	8	32	37	38	2019-02-16 02:41:24.828742	2019-02-16 02:41:24.828742	\N	\N	\N	\N	\N	\N
1172	2007-11-24 00:00:00	7	1	23	35	13	19	2019-02-16 02:41:24.847213	2019-02-16 02:41:24.847213	\N	\N	\N	\N	\N	\N
1173	2007-11-21 00:00:00	13	11	20	3	40	20	2019-02-16 02:41:24.856566	2019-02-16 02:41:24.856566	\N	\N	\N	\N	\N	\N
1174	2007-11-17 00:00:00	53	52	49	27	17	23	2019-02-16 02:41:24.876157	2019-02-16 02:41:24.876157	\N	\N	\N	\N	\N	\N
1175	2007-11-14 00:00:00	16	30	20	18	48	6	2019-02-16 02:41:24.884489	2019-02-16 02:41:24.884489	\N	\N	\N	\N	\N	\N
1176	2007-11-10 00:00:00	6	26	30	24	22	12	2019-02-16 02:41:24.90607	2019-02-16 02:41:24.90607	\N	\N	\N	\N	\N	\N
1177	2007-11-07 00:00:00	46	22	35	52	29	2	2019-02-16 02:41:24.914667	2019-02-16 02:41:24.914667	\N	\N	\N	\N	\N	\N
1178	2007-11-03 00:00:00	1	38	40	53	31	42	2019-02-16 02:41:24.935247	2019-02-16 02:41:24.935247	\N	\N	\N	\N	\N	\N
1179	2007-10-31 00:00:00	29	18	6	37	16	24	2019-02-16 02:41:24.944537	2019-02-16 02:41:24.944537	\N	\N	\N	\N	\N	\N
1180	2007-10-27 00:00:00	13	25	30	40	43	12	2019-02-16 02:41:24.966859	2019-02-16 02:41:24.966859	\N	\N	\N	\N	\N	\N
1181	2007-10-24 00:00:00	10	52	11	49	18	2	2019-02-16 02:41:24.976313	2019-02-16 02:41:24.976313	\N	\N	\N	\N	\N	\N
1182	2007-10-20 00:00:00	40	10	11	37	54	10	2019-02-16 02:41:24.999811	2019-02-16 02:41:24.999811	\N	\N	\N	\N	\N	\N
1183	2007-10-17 00:00:00	46	15	42	19	14	37	2019-02-16 02:41:25.009097	2019-02-16 02:41:25.009097	\N	\N	\N	\N	\N	\N
1184	2007-10-13 00:00:00	21	34	36	30	49	42	2019-02-16 02:41:25.017586	2019-02-16 02:41:25.017586	\N	\N	\N	\N	\N	\N
1185	2007-10-10 00:00:00	31	54	33	16	12	5	2019-02-16 02:41:25.036186	2019-02-16 02:41:25.036186	\N	\N	\N	\N	\N	\N
1186	2007-10-06 00:00:00	33	32	51	8	30	2	2019-02-16 02:41:25.045989	2019-02-16 02:41:25.045989	\N	\N	\N	\N	\N	\N
1187	2007-10-03 00:00:00	2	4	15	28	14	23	2019-02-16 02:41:25.071286	2019-02-16 02:41:25.071286	\N	\N	\N	\N	\N	\N
1188	2007-09-29 00:00:00	38	55	33	31	49	39	2019-02-16 02:41:25.088572	2019-02-16 02:41:25.088572	\N	\N	\N	\N	\N	\N
1189	2007-09-26 00:00:00	27	54	25	31	44	8	2019-02-16 02:41:25.10241	2019-02-16 02:41:25.10241	\N	\N	\N	\N	\N	\N
1190	2007-09-22 00:00:00	4	9	18	55	43	3	2019-02-16 02:41:25.120892	2019-02-16 02:41:25.120892	\N	\N	\N	\N	\N	\N
1191	2007-09-19 00:00:00	26	25	20	46	45	15	2019-02-16 02:41:25.136496	2019-02-16 02:41:25.136496	\N	\N	\N	\N	\N	\N
1192	2007-09-15 00:00:00	51	48	16	13	27	21	2019-02-16 02:41:25.150209	2019-02-16 02:41:25.150209	\N	\N	\N	\N	\N	\N
1193	2007-09-12 00:00:00	47	5	24	26	33	1	2019-02-16 02:41:25.165345	2019-02-16 02:41:25.165345	\N	\N	\N	\N	\N	\N
1194	2007-09-08 00:00:00	12	30	7	48	28	40	2019-02-16 02:41:25.180578	2019-02-16 02:41:25.180578	\N	\N	\N	\N	\N	\N
1195	2007-09-05 00:00:00	48	30	21	20	11	18	2019-02-16 02:41:25.190288	2019-02-16 02:41:25.190288	\N	\N	\N	\N	\N	\N
1196	2007-09-01 00:00:00	19	39	23	37	12	13	2019-02-16 02:41:25.204555	2019-02-16 02:41:25.204555	\N	\N	\N	\N	\N	\N
1197	2007-08-29 00:00:00	33	47	13	16	44	29	2019-02-16 02:41:25.217375	2019-02-16 02:41:25.217375	\N	\N	\N	\N	\N	\N
1198	2007-08-25 00:00:00	23	29	35	8	2	19	2019-02-16 02:41:25.242086	2019-02-16 02:41:25.242086	\N	\N	\N	\N	\N	\N
1199	2007-08-22 00:00:00	12	37	48	40	50	37	2019-02-16 02:41:25.250873	2019-02-16 02:41:25.250873	\N	\N	\N	\N	\N	\N
1200	2007-08-18 00:00:00	15	12	31	28	50	12	2019-02-16 02:41:25.265184	2019-02-16 02:41:25.265184	\N	\N	\N	\N	\N	\N
1201	2007-08-15 00:00:00	19	51	24	22	38	9	2019-02-16 02:41:25.292709	2019-02-16 02:41:25.292709	\N	\N	\N	\N	\N	\N
1202	2007-08-11 00:00:00	37	1	11	10	40	20	2019-02-16 02:41:25.308919	2019-02-16 02:41:25.308919	\N	\N	\N	\N	\N	\N
1203	2007-08-08 00:00:00	52	21	9	16	30	9	2019-02-16 02:41:25.323229	2019-02-16 02:41:25.323229	\N	\N	\N	\N	\N	\N
1204	2007-08-04 00:00:00	27	24	2	36	23	3	2019-02-16 02:41:25.339425	2019-02-16 02:41:25.339425	\N	\N	\N	\N	\N	\N
1205	2007-08-01 00:00:00	16	52	9	23	51	12	2019-02-16 02:41:25.354407	2019-02-16 02:41:25.354407	\N	\N	\N	\N	\N	\N
1206	2007-07-28 00:00:00	19	24	47	27	15	11	2019-02-16 02:41:25.368708	2019-02-16 02:41:25.368708	\N	\N	\N	\N	\N	\N
1207	2007-07-25 00:00:00	28	35	47	40	53	30	2019-02-16 02:41:25.383952	2019-02-16 02:41:25.383952	\N	\N	\N	\N	\N	\N
1208	2007-07-21 00:00:00	46	39	30	14	43	14	2019-02-16 02:41:25.394187	2019-02-16 02:41:25.394187	\N	\N	\N	\N	\N	\N
1209	2007-07-18 00:00:00	9	42	14	40	3	3	2019-02-16 02:41:25.405932	2019-02-16 02:41:25.405932	\N	\N	\N	\N	\N	\N
1210	2007-07-14 00:00:00	1	36	30	34	21	37	2019-02-16 02:41:25.420309	2019-02-16 02:41:25.420309	\N	\N	\N	\N	\N	\N
1211	2007-07-11 00:00:00	43	42	20	29	8	35	2019-02-16 02:41:25.438312	2019-02-16 02:41:25.438312	\N	\N	\N	\N	\N	\N
1212	2007-07-07 00:00:00	47	21	41	15	27	20	2019-02-16 02:41:25.449683	2019-02-16 02:41:25.449683	\N	\N	\N	\N	\N	\N
1213	2007-07-04 00:00:00	17	49	15	1	2	35	2019-02-16 02:41:25.466232	2019-02-16 02:41:25.466232	\N	\N	\N	\N	\N	\N
1214	2007-06-30 00:00:00	38	39	47	24	46	26	2019-02-16 02:41:25.480443	2019-02-16 02:41:25.480443	\N	\N	\N	\N	\N	\N
1215	2007-06-27 00:00:00	9	13	11	24	43	18	2019-02-16 02:41:25.495761	2019-02-16 02:41:25.495761	\N	\N	\N	\N	\N	\N
1216	2007-06-23 00:00:00	27	43	14	15	53	28	2019-02-16 02:41:25.51066	2019-02-16 02:41:25.51066	\N	\N	\N	\N	\N	\N
1217	2007-06-20 00:00:00	23	31	32	37	55	35	2019-02-16 02:41:25.526761	2019-02-16 02:41:25.526761	\N	\N	\N	\N	\N	\N
1218	2007-06-16 00:00:00	8	47	4	51	32	27	2019-02-16 02:41:25.543156	2019-02-16 02:41:25.543156	\N	\N	\N	\N	\N	\N
1219	2007-06-13 00:00:00	47	28	13	30	10	26	2019-02-16 02:41:25.558317	2019-02-16 02:41:25.558317	\N	\N	\N	\N	\N	\N
1220	2007-06-09 00:00:00	10	7	32	25	41	22	2019-02-16 02:41:25.574878	2019-02-16 02:41:25.574878	\N	\N	\N	\N	\N	\N
1221	2007-06-06 00:00:00	45	14	48	5	9	28	2019-02-16 02:41:25.590215	2019-02-16 02:41:25.590215	\N	\N	\N	\N	\N	\N
1222	2007-06-02 00:00:00	2	36	22	32	47	36	2019-02-16 02:41:25.604075	2019-02-16 02:41:25.604075	\N	\N	\N	\N	\N	\N
1223	2007-05-30 00:00:00	55	7	54	23	35	28	2019-02-16 02:41:25.621208	2019-02-16 02:41:25.621208	\N	\N	\N	\N	\N	\N
1224	2007-05-26 00:00:00	21	5	46	1	51	29	2019-02-16 02:41:25.636178	2019-02-16 02:41:25.636178	\N	\N	\N	\N	\N	\N
1225	2007-05-23 00:00:00	38	24	3	11	36	6	2019-02-16 02:41:25.650537	2019-02-16 02:41:25.650537	\N	\N	\N	\N	\N	\N
1226	2007-05-19 00:00:00	26	19	45	21	3	2	2019-02-16 02:41:25.665502	2019-02-16 02:41:25.665502	\N	\N	\N	\N	\N	\N
1227	2007-05-16 00:00:00	42	7	16	6	34	23	2019-02-16 02:41:25.683244	2019-02-16 02:41:25.683244	\N	\N	\N	\N	\N	\N
1228	2007-05-12 00:00:00	30	51	53	44	46	25	2019-02-16 02:41:25.69865	2019-02-16 02:41:25.69865	\N	\N	\N	\N	\N	\N
1229	2007-05-09 00:00:00	44	2	52	30	13	40	2019-02-16 02:41:25.71312	2019-02-16 02:41:25.71312	\N	\N	\N	\N	\N	\N
1230	2007-05-05 00:00:00	29	21	13	40	50	6	2019-02-16 02:41:25.728084	2019-02-16 02:41:25.728084	\N	\N	\N	\N	\N	\N
1231	2007-05-02 00:00:00	40	1	8	47	35	9	2019-02-16 02:41:25.737066	2019-02-16 02:41:25.737066	\N	\N	\N	\N	\N	\N
1232	2007-04-28 00:00:00	16	43	46	49	22	10	2019-02-16 02:41:25.749862	2019-02-16 02:41:25.749862	\N	\N	\N	\N	\N	\N
1233	2007-04-25 00:00:00	14	12	13	17	53	11	2019-02-16 02:41:25.764775	2019-02-16 02:41:25.764775	\N	\N	\N	\N	\N	\N
1234	2007-04-21 00:00:00	45	26	28	22	33	17	2019-02-16 02:41:25.781165	2019-02-16 02:41:25.781165	\N	\N	\N	\N	\N	\N
1235	2007-04-18 00:00:00	13	10	24	12	6	19	2019-02-16 02:41:25.794099	2019-02-16 02:41:25.794099	\N	\N	\N	\N	\N	\N
1236	2007-04-14 00:00:00	12	49	21	36	38	18	2019-02-16 02:41:25.81052	2019-02-16 02:41:25.81052	\N	\N	\N	\N	\N	\N
1237	2007-04-11 00:00:00	42	51	6	38	15	18	2019-02-16 02:41:25.824559	2019-02-16 02:41:25.824559	\N	\N	\N	\N	\N	\N
1238	2007-04-07 00:00:00	28	55	54	2	31	23	2019-02-16 02:41:25.839162	2019-02-16 02:41:25.839162	\N	\N	\N	\N	\N	\N
1239	2007-04-04 00:00:00	39	19	53	30	40	16	2019-02-16 02:41:25.852818	2019-02-16 02:41:25.852818	\N	\N	\N	\N	\N	\N
1240	2007-03-31 00:00:00	36	5	2	16	40	36	2019-02-16 02:41:25.87121	2019-02-16 02:41:25.87121	\N	\N	\N	\N	\N	\N
1241	2007-03-28 00:00:00	47	6	35	20	37	1	2019-02-16 02:41:25.886919	2019-02-16 02:41:25.886919	\N	\N	\N	\N	\N	\N
1242	2007-03-24 00:00:00	53	38	40	10	48	3	2019-02-16 02:41:25.901151	2019-02-16 02:41:25.901151	\N	\N	\N	\N	\N	\N
1243	2007-03-21 00:00:00	53	38	24	54	16	5	2019-02-16 02:41:25.915663	2019-02-16 02:41:25.915663	\N	\N	\N	\N	\N	\N
1244	2007-03-17 00:00:00	17	47	44	7	54	3	2019-02-16 02:41:25.938166	2019-02-16 02:41:25.938166	\N	\N	\N	\N	\N	\N
1245	2007-03-14 00:00:00	44	4	27	30	39	18	2019-02-16 02:41:25.949831	2019-02-16 02:41:25.949831	\N	\N	\N	\N	\N	\N
1246	2007-03-10 00:00:00	42	18	43	34	14	32	2019-02-16 02:41:25.966314	2019-02-16 02:41:25.966314	\N	\N	\N	\N	\N	\N
1247	2007-03-07 00:00:00	18	16	46	19	13	36	2019-02-16 02:41:25.980266	2019-02-16 02:41:25.980266	\N	\N	\N	\N	\N	\N
1248	2007-03-03 00:00:00	16	22	5	1	48	6	2019-02-16 02:41:25.996445	2019-02-16 02:41:25.996445	\N	\N	\N	\N	\N	\N
1249	2007-02-28 00:00:00	41	20	13	42	53	2	2019-02-16 02:41:26.011216	2019-02-16 02:41:26.011216	\N	\N	\N	\N	\N	\N
1250	2007-02-24 00:00:00	42	55	38	54	36	24	2019-02-16 02:41:26.025714	2019-02-16 02:41:26.025714	\N	\N	\N	\N	\N	\N
1251	2007-02-21 00:00:00	8	2	29	22	37	3	2019-02-16 02:41:26.040687	2019-02-16 02:41:26.040687	\N	\N	\N	\N	\N	\N
1252	2007-02-17 00:00:00	35	1	15	37	45	32	2019-02-16 02:41:26.049033	2019-02-16 02:41:26.049033	\N	\N	\N	\N	\N	\N
1253	2007-02-14 00:00:00	3	30	26	54	55	15	2019-02-16 02:41:26.061776	2019-02-16 02:41:26.061776	\N	\N	\N	\N	\N	\N
1254	2007-02-10 00:00:00	41	11	16	42	2	16	2019-02-16 02:41:26.077296	2019-02-16 02:41:26.077296	\N	\N	\N	\N	\N	\N
1255	2007-02-07 00:00:00	22	4	28	37	52	10	2019-02-16 02:41:26.092607	2019-02-16 02:41:26.092607	\N	\N	\N	\N	\N	\N
1256	2007-02-03 00:00:00	13	20	33	42	12	37	2019-02-16 02:41:26.10658	2019-02-16 02:41:26.10658	\N	\N	\N	\N	\N	\N
1257	2007-01-31 00:00:00	48	42	2	25	15	14	2019-02-16 02:41:26.121719	2019-02-16 02:41:26.121719	\N	\N	\N	\N	\N	\N
1258	2007-01-27 00:00:00	10	26	19	32	27	14	2019-02-16 02:41:26.13607	2019-02-16 02:41:26.13607	\N	\N	\N	\N	\N	\N
1259	2007-01-24 00:00:00	53	29	9	42	19	17	2019-02-16 02:41:26.150944	2019-02-16 02:41:26.150944	\N	\N	\N	\N	\N	\N
1260	2007-01-20 00:00:00	1	38	5	26	32	30	2019-02-16 02:41:26.165516	2019-02-16 02:41:26.165516	\N	\N	\N	\N	\N	\N
1261	2007-01-17 00:00:00	52	35	16	49	50	31	2019-02-16 02:41:26.180876	2019-02-16 02:41:26.180876	\N	\N	\N	\N	\N	\N
1262	2007-01-13 00:00:00	21	1	26	23	25	4	2019-02-16 02:41:26.196056	2019-02-16 02:41:26.196056	\N	\N	\N	\N	\N	\N
1263	2007-01-10 00:00:00	45	54	42	53	36	36	2019-02-16 02:41:26.211833	2019-02-16 02:41:26.211833	\N	\N	\N	\N	\N	\N
1264	2007-01-06 00:00:00	24	40	1	50	49	38	2019-02-16 02:41:26.229284	2019-02-16 02:41:26.229284	\N	\N	\N	\N	\N	\N
1265	2007-01-03 00:00:00	12	55	24	35	10	31	2019-02-16 02:41:26.244942	2019-02-16 02:41:26.244942	\N	\N	\N	\N	\N	\N
1266	2006-12-30 00:00:00	31	28	23	9	36	26	2019-02-16 02:41:26.260802	2019-02-16 02:41:26.260802	\N	\N	\N	\N	\N	\N
1267	2006-12-27 00:00:00	14	29	16	27	41	29	2019-02-16 02:41:26.275742	2019-02-16 02:41:26.275742	\N	\N	\N	\N	\N	\N
1268	2006-12-23 00:00:00	27	43	53	8	52	5	2019-02-16 02:41:26.284591	2019-02-16 02:41:26.284591	\N	\N	\N	\N	\N	\N
1269	2006-12-20 00:00:00	6	26	14	1	34	34	2019-02-16 02:41:26.29695	2019-02-16 02:41:26.29695	\N	\N	\N	\N	\N	\N
1270	2006-12-16 00:00:00	28	17	36	5	51	5	2019-02-16 02:41:26.311425	2019-02-16 02:41:26.311425	\N	\N	\N	\N	\N	\N
1271	2006-12-13 00:00:00	33	32	19	54	42	15	2019-02-16 02:41:26.327487	2019-02-16 02:41:26.327487	\N	\N	\N	\N	\N	\N
1272	2006-12-09 00:00:00	52	22	19	34	30	40	2019-02-16 02:41:26.341819	2019-02-16 02:41:26.341819	\N	\N	\N	\N	\N	\N
1273	2006-12-06 00:00:00	38	36	35	7	34	14	2019-02-16 02:41:26.356289	2019-02-16 02:41:26.356289	\N	\N	\N	\N	\N	\N
1274	2006-12-02 00:00:00	42	34	50	45	17	11	2019-02-16 02:41:26.371504	2019-02-16 02:41:26.371504	\N	\N	\N	\N	\N	\N
1275	2006-11-29 00:00:00	2	9	12	8	19	25	2019-02-16 02:41:26.385859	2019-02-16 02:41:26.385859	\N	\N	\N	\N	\N	\N
1276	2006-11-25 00:00:00	55	49	28	5	18	38	2019-02-16 02:41:26.400725	2019-02-16 02:41:26.400725	\N	\N	\N	\N	\N	\N
1277	2006-11-22 00:00:00	22	49	32	36	55	8	2019-02-16 02:41:26.416785	2019-02-16 02:41:26.416785	\N	\N	\N	\N	\N	\N
1278	2006-11-18 00:00:00	42	36	19	1	8	20	2019-02-16 02:41:26.432492	2019-02-16 02:41:26.432492	\N	\N	\N	\N	\N	\N
1279	2006-11-15 00:00:00	11	28	43	30	34	29	2019-02-16 02:41:26.446762	2019-02-16 02:41:26.446762	\N	\N	\N	\N	\N	\N
1280	2006-11-11 00:00:00	40	49	38	35	55	41	2019-02-16 02:41:26.462402	2019-02-16 02:41:26.462402	\N	\N	\N	\N	\N	\N
1281	2006-11-08 00:00:00	12	53	8	11	26	4	2019-02-16 02:41:26.482034	2019-02-16 02:41:26.482034	\N	\N	\N	\N	\N	\N
1282	2006-11-04 00:00:00	44	13	34	12	39	5	2019-02-16 02:41:26.496396	2019-02-16 02:41:26.496396	\N	\N	\N	\N	\N	\N
1283	2006-11-01 00:00:00	46	54	13	7	8	35	2019-02-16 02:41:26.51145	2019-02-16 02:41:26.51145	\N	\N	\N	\N	\N	\N
1284	2006-10-28 00:00:00	38	22	41	30	14	12	2019-02-16 02:41:26.526317	2019-02-16 02:41:26.526317	\N	\N	\N	\N	\N	\N
1285	2006-10-25 00:00:00	16	40	43	48	42	1	2019-02-16 02:41:26.54194	2019-02-16 02:41:26.54194	\N	\N	\N	\N	\N	\N
1286	2006-10-21 00:00:00	45	55	29	9	31	7	2019-02-16 02:41:26.55738	2019-02-16 02:41:26.55738	\N	\N	\N	\N	\N	\N
1287	2006-10-18 00:00:00	41	2	24	34	48	24	2019-02-16 02:41:26.572781	2019-02-16 02:41:26.572781	\N	\N	\N	\N	\N	\N
1288	2006-10-14 00:00:00	26	15	1	17	40	19	2019-02-16 02:41:26.581624	2019-02-16 02:41:26.581624	\N	\N	\N	\N	\N	\N
1289	2006-10-11 00:00:00	38	10	35	5	12	9	2019-02-16 02:41:26.593524	2019-02-16 02:41:26.593524	\N	\N	\N	\N	\N	\N
1290	2006-10-07 00:00:00	4	31	45	3	8	12	2019-02-16 02:41:26.607953	2019-02-16 02:41:26.607953	\N	\N	\N	\N	\N	\N
1291	2006-10-04 00:00:00	39	27	7	3	40	8	2019-02-16 02:41:26.624301	2019-02-16 02:41:26.624301	\N	\N	\N	\N	\N	\N
1292	2006-09-30 00:00:00	30	32	15	39	6	5	2019-02-16 02:41:26.632619	2019-02-16 02:41:26.632619	\N	\N	\N	\N	\N	\N
1293	2006-09-27 00:00:00	49	23	33	35	28	16	2019-02-16 02:41:26.656438	2019-02-16 02:41:26.656438	\N	\N	\N	\N	\N	\N
1294	2006-09-23 00:00:00	21	45	26	13	50	20	2019-02-16 02:41:26.671455	2019-02-16 02:41:26.671455	\N	\N	\N	\N	\N	\N
1295	2006-09-20 00:00:00	54	8	7	29	17	26	2019-02-16 02:41:26.688542	2019-02-16 02:41:26.688542	\N	\N	\N	\N	\N	\N
1296	2006-09-16 00:00:00	26	42	27	7	8	12	2019-02-16 02:41:26.704999	2019-02-16 02:41:26.704999	\N	\N	\N	\N	\N	\N
1297	2006-09-13 00:00:00	15	47	19	45	26	3	2019-02-16 02:41:26.717208	2019-02-16 02:41:26.717208	\N	\N	\N	\N	\N	\N
1298	2006-09-09 00:00:00	20	47	3	22	19	2	2019-02-16 02:41:26.733413	2019-02-16 02:41:26.733413	\N	\N	\N	\N	\N	\N
1299	2006-09-06 00:00:00	27	35	21	55	2	1	2019-02-16 02:41:26.748526	2019-02-16 02:41:26.748526	\N	\N	\N	\N	\N	\N
1300	2006-09-02 00:00:00	24	28	3	49	8	25	2019-02-16 02:41:26.763242	2019-02-16 02:41:26.763242	\N	\N	\N	\N	\N	\N
1301	2006-08-30 00:00:00	35	3	19	43	33	1	2019-02-16 02:41:26.777994	2019-02-16 02:41:26.777994	\N	\N	\N	\N	\N	\N
1302	2006-08-26 00:00:00	26	24	42	38	46	16	2019-02-16 02:41:26.79242	2019-02-16 02:41:26.79242	\N	\N	\N	\N	\N	\N
1303	2006-08-23 00:00:00	17	8	51	24	38	31	2019-02-16 02:41:26.807104	2019-02-16 02:41:26.807104	\N	\N	\N	\N	\N	\N
1304	2006-08-19 00:00:00	12	51	29	22	26	9	2019-02-16 02:41:26.822429	2019-02-16 02:41:26.822429	\N	\N	\N	\N	\N	\N
1305	2006-08-16 00:00:00	22	2	13	50	48	2	2019-02-16 02:41:26.830773	2019-02-16 02:41:26.830773	\N	\N	\N	\N	\N	\N
1306	2006-08-12 00:00:00	14	54	27	18	13	32	2019-02-16 02:41:26.852364	2019-02-16 02:41:26.852364	\N	\N	\N	\N	\N	\N
1307	2006-08-09 00:00:00	52	19	43	41	16	35	2019-02-16 02:41:26.861411	2019-02-16 02:41:26.861411	\N	\N	\N	\N	\N	\N
1308	2006-08-05 00:00:00	48	50	3	9	2	23	2019-02-16 02:41:26.885224	2019-02-16 02:41:26.885224	\N	\N	\N	\N	\N	\N
1309	2006-08-02 00:00:00	24	19	10	16	13	15	2019-02-16 02:41:26.900681	2019-02-16 02:41:26.900681	\N	\N	\N	\N	\N	\N
1310	2006-07-29 00:00:00	14	39	55	19	26	29	2019-02-16 02:41:26.915356	2019-02-16 02:41:26.915356	\N	\N	\N	\N	\N	\N
1311	2006-07-26 00:00:00	10	5	24	17	43	31	2019-02-16 02:41:26.931431	2019-02-16 02:41:26.931431	\N	\N	\N	\N	\N	\N
1312	2006-07-22 00:00:00	40	47	14	55	54	6	2019-02-16 02:41:26.946713	2019-02-16 02:41:26.946713	\N	\N	\N	\N	\N	\N
1313	2006-07-19 00:00:00	44	50	2	38	32	21	2019-02-16 02:41:26.956188	2019-02-16 02:41:26.956188	\N	\N	\N	\N	\N	\N
1314	2006-07-15 00:00:00	36	20	47	50	35	5	2019-02-16 02:41:26.971949	2019-02-16 02:41:26.971949	\N	\N	\N	\N	\N	\N
1315	2006-07-12 00:00:00	31	33	30	18	19	15	2019-02-16 02:41:26.982958	2019-02-16 02:41:26.982958	\N	\N	\N	\N	\N	\N
1316	2006-07-08 00:00:00	50	44	49	32	37	13	2019-02-16 02:41:27.005076	2019-02-16 02:41:27.005076	\N	\N	\N	\N	\N	\N
1317	2006-07-05 00:00:00	26	52	39	41	53	20	2019-02-16 02:41:27.014615	2019-02-16 02:41:27.014615	\N	\N	\N	\N	\N	\N
1318	2006-07-01 00:00:00	40	35	42	2	31	34	2019-02-16 02:41:27.033872	2019-02-16 02:41:27.033872	\N	\N	\N	\N	\N	\N
1319	2006-06-28 00:00:00	45	51	8	16	2	32	2019-02-16 02:41:27.059692	2019-02-16 02:41:27.059692	\N	\N	\N	\N	\N	\N
1320	2006-06-24 00:00:00	39	8	47	11	30	23	2019-02-16 02:41:27.074336	2019-02-16 02:41:27.074336	\N	\N	\N	\N	\N	\N
1321	2006-06-21 00:00:00	11	19	22	43	45	34	2019-02-16 02:41:27.088869	2019-02-16 02:41:27.088869	\N	\N	\N	\N	\N	\N
1322	2006-06-17 00:00:00	39	48	20	22	10	25	2019-02-16 02:41:27.104766	2019-02-16 02:41:27.104766	\N	\N	\N	\N	\N	\N
1323	2006-06-14 00:00:00	4	40	14	48	15	12	2019-02-16 02:41:27.121638	2019-02-16 02:41:27.121638	\N	\N	\N	\N	\N	\N
1324	2006-06-10 00:00:00	36	54	24	26	16	11	2019-02-16 02:41:27.136258	2019-02-16 02:41:27.136258	\N	\N	\N	\N	\N	\N
1325	2006-06-07 00:00:00	20	10	4	26	40	8	2019-02-16 02:41:27.15029	2019-02-16 02:41:27.15029	\N	\N	\N	\N	\N	\N
1326	2006-06-03 00:00:00	20	5	18	50	6	35	2019-02-16 02:41:27.165254	2019-02-16 02:41:27.165254	\N	\N	\N	\N	\N	\N
1327	2006-05-31 00:00:00	49	22	20	43	10	3	2019-02-16 02:41:27.174763	2019-02-16 02:41:27.174763	\N	\N	\N	\N	\N	\N
1328	2006-05-27 00:00:00	41	6	27	23	47	19	2019-02-16 02:41:27.187136	2019-02-16 02:41:27.187136	\N	\N	\N	\N	\N	\N
1329	2006-05-24 00:00:00	3	12	47	51	2	10	2019-02-16 02:41:27.204888	2019-02-16 02:41:27.204888	\N	\N	\N	\N	\N	\N
1330	2006-05-20 00:00:00	23	2	9	44	45	38	2019-02-16 02:41:27.217249	2019-02-16 02:41:27.217249	\N	\N	\N	\N	\N	\N
1331	2006-05-17 00:00:00	15	26	24	35	17	38	2019-02-16 02:41:27.232504	2019-02-16 02:41:27.232504	\N	\N	\N	\N	\N	\N
1332	2006-05-13 00:00:00	30	54	19	47	28	13	2019-02-16 02:41:27.242202	2019-02-16 02:41:27.242202	\N	\N	\N	\N	\N	\N
1333	2006-05-10 00:00:00	4	3	11	44	37	24	2019-02-16 02:41:27.250877	2019-02-16 02:41:27.250877	\N	\N	\N	\N	\N	\N
1334	2006-05-06 00:00:00	38	12	32	23	25	27	2019-02-16 02:41:27.269017	2019-02-16 02:41:27.269017	\N	\N	\N	\N	\N	\N
1335	2006-05-03 00:00:00	38	19	6	42	4	37	2019-02-16 02:41:27.282026	2019-02-16 02:41:27.282026	\N	\N	\N	\N	\N	\N
1336	2006-04-29 00:00:00	19	40	35	30	41	14	2019-02-16 02:41:27.298772	2019-02-16 02:41:27.298772	\N	\N	\N	\N	\N	\N
1337	2006-04-26 00:00:00	55	26	48	24	12	14	2019-02-16 02:41:27.31529	2019-02-16 02:41:27.31529	\N	\N	\N	\N	\N	\N
1338	2006-04-22 00:00:00	4	6	27	5	18	24	2019-02-16 02:41:27.329881	2019-02-16 02:41:27.329881	\N	\N	\N	\N	\N	\N
1339	2006-04-19 00:00:00	32	53	34	5	28	10	2019-02-16 02:41:27.339565	2019-02-16 02:41:27.339565	\N	\N	\N	\N	\N	\N
1340	2006-04-15 00:00:00	46	23	13	28	18	33	2019-02-16 02:41:27.358536	2019-02-16 02:41:27.358536	\N	\N	\N	\N	\N	\N
1341	2006-04-12 00:00:00	34	41	26	35	16	24	2019-02-16 02:41:27.36753	2019-02-16 02:41:27.36753	\N	\N	\N	\N	\N	\N
1342	2006-04-08 00:00:00	35	4	43	44	23	35	2019-02-16 02:41:27.390114	2019-02-16 02:41:27.390114	\N	\N	\N	\N	\N	\N
1343	2006-04-05 00:00:00	29	39	9	24	3	42	2019-02-16 02:41:27.398561	2019-02-16 02:41:27.398561	\N	\N	\N	\N	\N	\N
1344	2006-04-01 00:00:00	55	10	50	1	23	29	2019-02-16 02:41:27.421309	2019-02-16 02:41:27.421309	\N	\N	\N	\N	\N	\N
1345	2006-03-29 00:00:00	24	28	54	2	14	13	2019-02-16 02:41:27.43026	2019-02-16 02:41:27.43026	\N	\N	\N	\N	\N	\N
1346	2006-03-25 00:00:00	20	37	34	45	39	32	2019-02-16 02:41:27.440073	2019-02-16 02:41:27.440073	\N	\N	\N	\N	\N	\N
1347	2006-03-22 00:00:00	45	38	23	22	18	31	2019-02-16 02:41:27.457898	2019-02-16 02:41:27.457898	\N	\N	\N	\N	\N	\N
1348	2006-03-18 00:00:00	25	1	36	42	34	19	2019-02-16 02:41:27.471992	2019-02-16 02:41:27.471992	\N	\N	\N	\N	\N	\N
1349	2006-03-15 00:00:00	36	48	54	7	12	37	2019-02-16 02:41:27.486139	2019-02-16 02:41:27.486139	\N	\N	\N	\N	\N	\N
1350	2006-03-11 00:00:00	54	37	35	52	16	33	2019-02-16 02:41:27.495377	2019-02-16 02:41:27.495377	\N	\N	\N	\N	\N	\N
1351	2006-03-08 00:00:00	5	7	21	1	43	20	2019-02-16 02:41:27.515036	2019-02-16 02:41:27.515036	\N	\N	\N	\N	\N	\N
1352	2006-03-04 00:00:00	13	52	22	55	27	26	2019-02-16 02:41:27.524803	2019-02-16 02:41:27.524803	\N	\N	\N	\N	\N	\N
1353	2006-03-01 00:00:00	25	10	35	41	38	23	2019-02-16 02:41:27.545725	2019-02-16 02:41:27.545725	\N	\N	\N	\N	\N	\N
1354	2006-02-25 00:00:00	51	3	48	46	37	22	2019-02-16 02:41:27.557248	2019-02-16 02:41:27.557248	\N	\N	\N	\N	\N	\N
1355	2006-02-22 00:00:00	47	53	23	55	9	39	2019-02-16 02:41:27.583246	2019-02-16 02:41:27.583246	\N	\N	\N	\N	\N	\N
1356	2006-02-18 00:00:00	44	48	15	43	17	29	2019-02-16 02:41:27.594436	2019-02-16 02:41:27.594436	\N	\N	\N	\N	\N	\N
1357	2006-02-15 00:00:00	39	35	3	13	40	37	2019-02-16 02:41:27.616746	2019-02-16 02:41:27.616746	\N	\N	\N	\N	\N	\N
1358	2006-02-11 00:00:00	38	7	51	40	52	14	2019-02-16 02:41:27.62739	2019-02-16 02:41:27.62739	\N	\N	\N	\N	\N	\N
1359	2006-02-08 00:00:00	48	32	25	14	54	10	2019-02-16 02:41:27.642743	2019-02-16 02:41:27.642743	\N	\N	\N	\N	\N	\N
1360	2006-02-04 00:00:00	38	30	4	13	12	30	2019-02-16 02:41:27.66852	2019-02-16 02:41:27.66852	\N	\N	\N	\N	\N	\N
1361	2006-02-01 00:00:00	13	30	55	11	35	37	2019-02-16 02:41:27.679167	2019-02-16 02:41:27.679167	\N	\N	\N	\N	\N	\N
1362	2006-01-28 00:00:00	26	15	28	36	14	36	2019-02-16 02:41:27.701597	2019-02-16 02:41:27.701597	\N	\N	\N	\N	\N	\N
1363	2006-01-25 00:00:00	52	37	50	43	10	14	2019-02-16 02:41:27.716598	2019-02-16 02:41:27.716598	\N	\N	\N	\N	\N	\N
1364	2006-01-21 00:00:00	54	18	3	39	43	41	2019-02-16 02:41:27.733716	2019-02-16 02:41:27.733716	\N	\N	\N	\N	\N	\N
1365	2006-01-18 00:00:00	53	38	15	29	52	7	2019-02-16 02:41:27.761549	2019-02-16 02:41:27.761549	\N	\N	\N	\N	\N	\N
1366	2006-01-14 00:00:00	49	14	6	46	40	17	2019-02-16 02:41:27.777965	2019-02-16 02:41:27.777965	\N	\N	\N	\N	\N	\N
1367	2006-01-11 00:00:00	18	14	3	17	6	14	2019-02-16 02:41:27.792883	2019-02-16 02:41:27.792883	\N	\N	\N	\N	\N	\N
1368	2006-01-07 00:00:00	2	21	43	32	16	6	2019-02-16 02:41:27.808707	2019-02-16 02:41:27.808707	\N	\N	\N	\N	\N	\N
1369	2006-01-04 00:00:00	23	10	48	54	42	3	2019-02-16 02:41:27.823672	2019-02-16 02:41:27.823672	\N	\N	\N	\N	\N	\N
1370	2005-12-31 00:00:00	43	4	46	30	37	42	2019-02-16 02:41:27.839602	2019-02-16 02:41:27.839602	\N	\N	\N	\N	\N	\N
1371	2005-12-28 00:00:00	12	46	15	54	30	1	2019-02-16 02:41:27.856378	2019-02-16 02:41:27.856378	\N	\N	\N	\N	\N	\N
1372	2005-12-24 00:00:00	4	10	34	50	33	14	2019-02-16 02:41:27.87126	2019-02-16 02:41:27.87126	\N	\N	\N	\N	\N	\N
1373	2005-12-21 00:00:00	23	43	12	16	9	37	2019-02-16 02:41:27.886065	2019-02-16 02:41:27.886065	\N	\N	\N	\N	\N	\N
1374	2005-12-17 00:00:00	24	44	53	36	46	18	2019-02-16 02:41:27.901124	2019-02-16 02:41:27.901124	\N	\N	\N	\N	\N	\N
1375	2005-12-14 00:00:00	45	15	8	16	51	11	2019-02-16 02:41:27.916823	2019-02-16 02:41:27.916823	\N	\N	\N	\N	\N	\N
1376	2005-12-10 00:00:00	45	34	42	3	21	39	2019-02-16 02:41:27.933244	2019-02-16 02:41:27.933244	\N	\N	\N	\N	\N	\N
1377	2005-12-07 00:00:00	45	30	54	41	19	14	2019-02-16 02:41:27.949928	2019-02-16 02:41:27.949928	\N	\N	\N	\N	\N	\N
1378	2005-12-03 00:00:00	2	26	42	15	37	36	2019-02-16 02:41:27.96486	2019-02-16 02:41:27.96486	\N	\N	\N	\N	\N	\N
1379	2005-11-30 00:00:00	42	23	19	27	52	1	2019-02-16 02:41:27.979116	2019-02-16 02:41:27.979116	\N	\N	\N	\N	\N	\N
1380	2005-11-26 00:00:00	34	28	53	37	45	32	2019-02-16 02:41:27.995614	2019-02-16 02:41:27.995614	\N	\N	\N	\N	\N	\N
1381	2005-11-23 00:00:00	24	25	9	27	12	33	2019-02-16 02:41:28.012266	2019-02-16 02:41:28.012266	\N	\N	\N	\N	\N	\N
1382	2005-11-19 00:00:00	15	54	20	41	8	22	2019-02-16 02:41:28.027572	2019-02-16 02:41:28.027572	\N	\N	\N	\N	\N	\N
1383	2005-11-16 00:00:00	5	20	44	21	18	27	2019-02-16 02:41:28.042567	2019-02-16 02:41:28.042567	\N	\N	\N	\N	\N	\N
1384	2005-11-12 00:00:00	48	41	17	55	37	39	2019-02-16 02:41:28.061209	2019-02-16 02:41:28.061209	\N	\N	\N	\N	\N	\N
1385	2005-11-09 00:00:00	5	49	14	13	31	30	2019-02-16 02:41:28.078046	2019-02-16 02:41:28.078046	\N	\N	\N	\N	\N	\N
1386	2005-11-05 00:00:00	37	25	50	29	7	17	2019-02-16 02:41:28.09566	2019-02-16 02:41:28.09566	\N	\N	\N	\N	\N	\N
1387	2005-11-02 00:00:00	41	14	6	11	27	38	2019-02-16 02:41:28.120155	2019-02-16 02:41:28.120155	\N	\N	\N	\N	\N	\N
1388	2005-10-29 00:00:00	41	50	22	19	14	21	2019-02-16 02:41:28.135369	2019-02-16 02:41:28.135369	\N	\N	\N	\N	\N	\N
1389	2005-10-26 00:00:00	43	39	2	42	10	23	2019-02-16 02:41:28.151063	2019-02-16 02:41:28.151063	\N	\N	\N	\N	\N	\N
1390	2005-10-22 00:00:00	36	6	53	51	7	17	2019-02-16 02:41:28.173276	2019-02-16 02:41:28.173276	\N	\N	\N	\N	\N	\N
1391	2005-10-19 00:00:00	49	21	44	7	43	29	2019-02-16 02:41:28.184528	2019-02-16 02:41:28.184528	\N	\N	\N	\N	\N	\N
1392	2005-10-15 00:00:00	34	1	7	8	45	15	2019-02-16 02:41:28.200798	2019-02-16 02:41:28.200798	\N	\N	\N	\N	\N	\N
1393	2005-10-12 00:00:00	54	51	9	18	4	10	2019-02-16 02:41:28.21479	2019-02-16 02:41:28.21479	\N	\N	\N	\N	\N	\N
1394	2005-10-08 00:00:00	26	31	35	50	46	28	2019-02-16 02:41:28.229926	2019-02-16 02:41:28.229926	\N	\N	\N	\N	\N	\N
1395	2005-10-05 00:00:00	25	30	45	2	15	17	2019-02-16 02:41:28.245766	2019-02-16 02:41:28.245766	\N	\N	\N	\N	\N	\N
1396	2005-10-01 00:00:00	18	54	38	8	45	23	2019-02-16 02:41:28.260393	2019-02-16 02:41:28.260393	\N	\N	\N	\N	\N	\N
1397	2005-09-28 00:00:00	7	22	27	48	50	17	2019-02-16 02:41:28.276829	2019-02-16 02:41:28.276829	\N	\N	\N	\N	\N	\N
1398	2005-09-24 00:00:00	2	10	43	55	31	14	2019-02-16 02:41:28.292008	2019-02-16 02:41:28.292008	\N	\N	\N	\N	\N	\N
1399	2005-09-21 00:00:00	35	28	34	3	50	8	2019-02-16 02:41:28.306658	2019-02-16 02:41:28.306658	\N	\N	\N	\N	\N	\N
1400	2005-09-17 00:00:00	49	52	5	9	27	6	2019-02-16 02:41:28.322726	2019-02-16 02:41:28.322726	\N	\N	\N	\N	\N	\N
1401	2005-09-14 00:00:00	24	50	21	42	49	1	2019-02-16 02:41:28.337557	2019-02-16 02:41:28.337557	\N	\N	\N	\N	\N	\N
1402	2005-09-10 00:00:00	10	11	8	48	50	16	2019-02-16 02:41:28.34667	2019-02-16 02:41:28.34667	\N	\N	\N	\N	\N	\N
1403	2005-09-07 00:00:00	32	50	12	40	54	37	2019-02-16 02:41:28.37316	2019-02-16 02:41:28.37316	\N	\N	\N	\N	\N	\N
1404	2005-09-03 00:00:00	30	3	31	1	43	36	2019-02-16 02:41:28.386261	2019-02-16 02:41:28.386261	\N	\N	\N	\N	\N	\N
1405	2005-08-31 00:00:00	17	19	13	50	41	13	2019-02-16 02:41:28.40113	2019-02-16 02:41:28.40113	\N	\N	\N	\N	\N	\N
1406	2005-08-27 00:00:00	8	39	31	44	22	11	2019-02-16 02:41:28.415519	2019-02-16 02:41:28.415519	\N	\N	\N	\N	\N	\N
1407	2005-08-24 00:00:00	35	9	26	11	51	32	2019-02-16 02:41:28.431026	2019-02-16 02:41:28.431026	\N	\N	\N	\N	\N	\N
1408	2005-08-20 00:00:00	27	13	28	29	49	36	2019-02-16 02:41:28.446168	2019-02-16 02:41:28.446168	\N	\N	\N	\N	\N	\N
1409	2005-08-17 00:00:00	8	43	53	30	3	15	2019-02-16 02:41:28.455976	2019-02-16 02:41:28.455976	\N	\N	\N	\N	\N	\N
1410	2005-08-13 00:00:00	2	37	43	18	1	37	2019-02-16 02:41:28.477391	2019-02-16 02:41:28.477391	\N	\N	\N	\N	\N	\N
1411	2005-08-10 00:00:00	31	13	49	38	36	2	2019-02-16 02:41:28.486036	2019-02-16 02:41:28.486036	\N	\N	\N	\N	\N	\N
1412	2005-08-06 00:00:00	9	1	19	36	53	33	2019-02-16 02:41:28.509674	2019-02-16 02:41:28.509674	\N	\N	\N	\N	\N	\N
1413	2005-08-03 00:00:00	39	5	24	19	28	24	2019-02-16 02:41:28.51824	2019-02-16 02:41:28.51824	\N	\N	\N	\N	\N	\N
1414	2005-07-30 00:00:00	14	38	35	8	46	24	2019-02-16 02:41:28.530795	2019-02-16 02:41:28.530795	\N	\N	\N	\N	\N	\N
1415	2005-07-27 00:00:00	4	13	10	29	1	3	2019-02-16 02:41:28.546229	2019-02-16 02:41:28.546229	\N	\N	\N	\N	\N	\N
1416	2005-07-23 00:00:00	28	13	20	32	16	36	2019-02-16 02:41:28.560847	2019-02-16 02:41:28.560847	\N	\N	\N	\N	\N	\N
1417	2005-07-20 00:00:00	51	7	32	39	6	31	2019-02-16 02:41:28.574796	2019-02-16 02:41:28.574796	\N	\N	\N	\N	\N	\N
1418	2005-07-16 00:00:00	50	33	32	41	8	22	2019-02-16 02:41:28.588978	2019-02-16 02:41:28.588978	\N	\N	\N	\N	\N	\N
1419	2005-07-13 00:00:00	5	23	43	4	13	34	2019-02-16 02:41:28.60287	2019-02-16 02:41:28.60287	\N	\N	\N	\N	\N	\N
1420	2005-07-09 00:00:00	53	39	8	9	47	4	2019-02-16 02:41:28.62165	2019-02-16 02:41:28.62165	\N	\N	\N	\N	\N	\N
1421	2005-07-06 00:00:00	12	25	48	2	30	38	2019-02-16 02:41:28.63663	2019-02-16 02:41:28.63663	\N	\N	\N	\N	\N	\N
1422	2005-07-02 00:00:00	29	9	10	52	39	20	2019-02-16 02:41:28.650301	2019-02-16 02:41:28.650301	\N	\N	\N	\N	\N	\N
1423	2005-06-29 00:00:00	42	8	49	22	3	39	2019-02-16 02:41:28.665679	2019-02-16 02:41:28.665679	\N	\N	\N	\N	\N	\N
1424	2005-06-25 00:00:00	28	32	40	7	31	14	2019-02-16 02:41:28.68172	2019-02-16 02:41:28.68172	\N	\N	\N	\N	\N	\N
1425	2005-06-22 00:00:00	13	51	42	23	9	15	2019-02-16 02:41:28.696114	2019-02-16 02:41:28.696114	\N	\N	\N	\N	\N	\N
1426	2005-06-18 00:00:00	10	5	24	16	8	5	2019-02-16 02:41:28.705775	2019-02-16 02:41:28.705775	\N	\N	\N	\N	\N	\N
1427	2005-06-15 00:00:00	39	20	22	14	44	14	2019-02-16 02:41:28.717996	2019-02-16 02:41:28.717996	\N	\N	\N	\N	\N	\N
1428	2005-06-11 00:00:00	3	46	10	24	14	37	2019-02-16 02:41:28.743858	2019-02-16 02:41:28.743858	\N	\N	\N	\N	\N	\N
1429	2005-06-08 00:00:00	36	10	43	40	42	42	2019-02-16 02:41:28.75253	2019-02-16 02:41:28.75253	\N	\N	\N	\N	\N	\N
1430	2005-06-04 00:00:00	16	44	7	38	48	18	2019-02-16 02:41:28.765795	2019-02-16 02:41:28.765795	\N	\N	\N	\N	\N	\N
1431	2005-06-01 00:00:00	34	50	39	42	15	12	2019-02-16 02:41:28.779793	2019-02-16 02:41:28.779793	\N	\N	\N	\N	\N	\N
1432	2005-05-28 00:00:00	39	24	5	28	7	36	2019-02-16 02:41:28.79453	2019-02-16 02:41:28.79453	\N	\N	\N	\N	\N	\N
1433	2005-05-25 00:00:00	29	46	27	31	42	33	2019-02-16 02:41:28.808817	2019-02-16 02:41:28.808817	\N	\N	\N	\N	\N	\N
1434	2005-05-21 00:00:00	7	30	5	10	2	23	2019-02-16 02:41:28.823154	2019-02-16 02:41:28.823154	\N	\N	\N	\N	\N	\N
1435	2005-05-18 00:00:00	17	7	20	13	35	35	2019-02-16 02:41:28.839649	2019-02-16 02:41:28.839649	\N	\N	\N	\N	\N	\N
1436	2005-05-14 00:00:00	49	21	29	38	52	42	2019-02-16 02:41:28.855347	2019-02-16 02:41:28.855347	\N	\N	\N	\N	\N	\N
1437	2005-05-11 00:00:00	46	49	5	48	25	6	2019-02-16 02:41:28.87054	2019-02-16 02:41:28.87054	\N	\N	\N	\N	\N	\N
1438	2005-05-07 00:00:00	47	44	23	21	39	19	2019-02-16 02:41:28.884396	2019-02-16 02:41:28.884396	\N	\N	\N	\N	\N	\N
1439	2005-05-04 00:00:00	27	33	40	10	21	2	2019-02-16 02:41:28.906235	2019-02-16 02:41:28.906235	\N	\N	\N	\N	\N	\N
1440	2005-04-30 00:00:00	8	48	32	15	17	24	2019-02-16 02:41:28.950547	2019-02-16 02:41:28.950547	\N	\N	\N	\N	\N	\N
1441	2005-04-27 00:00:00	42	11	32	13	18	4	2019-02-16 02:41:28.960783	2019-02-16 02:41:28.960783	\N	\N	\N	\N	\N	\N
1442	2005-04-23 00:00:00	15	8	50	9	13	9	2019-02-16 02:41:28.981867	2019-02-16 02:41:28.981867	\N	\N	\N	\N	\N	\N
1443	2005-04-20 00:00:00	7	16	33	34	46	27	2019-02-16 02:41:29.010926	2019-02-16 02:41:29.010926	\N	\N	\N	\N	\N	\N
1444	2005-04-16 00:00:00	11	44	38	51	45	41	2019-02-16 02:41:29.034254	2019-02-16 02:41:29.034254	\N	\N	\N	\N	\N	\N
1445	2005-04-13 00:00:00	37	51	6	13	52	25	2019-02-16 02:41:29.056657	2019-02-16 02:41:29.056657	\N	\N	\N	\N	\N	\N
1446	2005-04-09 00:00:00	46	11	1	35	53	29	2019-02-16 02:41:29.073439	2019-02-16 02:41:29.073439	\N	\N	\N	\N	\N	\N
1447	2005-04-06 00:00:00	5	14	11	51	22	17	2019-02-16 02:41:29.088102	2019-02-16 02:41:29.088102	\N	\N	\N	\N	\N	\N
1448	2005-04-02 00:00:00	11	9	5	17	46	39	2019-02-16 02:41:29.09671	2019-02-16 02:41:29.09671	\N	\N	\N	\N	\N	\N
1449	2005-03-30 00:00:00	28	39	22	32	33	42	2019-02-16 02:41:29.10919	2019-02-16 02:41:29.10919	\N	\N	\N	\N	\N	\N
1450	2005-03-26 00:00:00	35	12	9	51	41	36	2019-02-16 02:41:29.124136	2019-02-16 02:41:29.124136	\N	\N	\N	\N	\N	\N
1451	2005-03-23 00:00:00	29	23	40	45	37	38	2019-02-16 02:41:29.140445	2019-02-16 02:41:29.140445	\N	\N	\N	\N	\N	\N
1452	2005-03-19 00:00:00	41	1	21	32	28	9	2019-02-16 02:41:29.152943	2019-02-16 02:41:29.152943	\N	\N	\N	\N	\N	\N
1453	2005-03-16 00:00:00	19	38	11	25	50	35	2019-02-16 02:41:29.173226	2019-02-16 02:41:29.173226	\N	\N	\N	\N	\N	\N
1454	2005-03-12 00:00:00	40	23	52	46	7	41	2019-02-16 02:41:29.184361	2019-02-16 02:41:29.184361	\N	\N	\N	\N	\N	\N
1455	2005-03-09 00:00:00	20	17	10	23	45	31	2019-02-16 02:41:29.200584	2019-02-16 02:41:29.200584	\N	\N	\N	\N	\N	\N
1456	2005-03-05 00:00:00	40	9	27	53	13	28	2019-02-16 02:41:29.215052	2019-02-16 02:41:29.215052	\N	\N	\N	\N	\N	\N
1457	2005-03-02 00:00:00	48	18	46	3	10	8	2019-02-16 02:41:29.230313	2019-02-16 02:41:29.230313	\N	\N	\N	\N	\N	\N
1458	2005-02-26 00:00:00	33	22	49	30	8	6	2019-02-16 02:41:29.245209	2019-02-16 02:41:29.245209	\N	\N	\N	\N	\N	\N
1459	2005-02-23 00:00:00	4	48	15	10	51	13	2019-02-16 02:41:29.260038	2019-02-16 02:41:29.260038	\N	\N	\N	\N	\N	\N
1460	2005-02-19 00:00:00	12	15	18	52	27	36	2019-02-16 02:41:29.268808	2019-02-16 02:41:29.268808	\N	\N	\N	\N	\N	\N
1461	2005-02-16 00:00:00	48	21	41	27	25	25	2019-02-16 02:41:29.283184	2019-02-16 02:41:29.283184	\N	\N	\N	\N	\N	\N
1462	2005-02-12 00:00:00	50	21	28	18	49	16	2019-02-16 02:41:29.295673	2019-02-16 02:41:29.295673	\N	\N	\N	\N	\N	\N
1463	2005-02-09 00:00:00	10	15	9	18	29	9	2019-02-16 02:41:29.310593	2019-02-16 02:41:29.310593	\N	\N	\N	\N	\N	\N
1464	2005-02-05 00:00:00	44	11	34	47	37	23	2019-02-16 02:41:29.319329	2019-02-16 02:41:29.319329	\N	\N	\N	\N	\N	\N
1465	2005-02-02 00:00:00	16	44	40	10	11	2	2019-02-16 02:41:29.328205	2019-02-16 02:41:29.328205	\N	\N	\N	\N	\N	\N
1466	2005-01-29 00:00:00	41	29	20	16	11	12	2019-02-16 02:41:29.346491	2019-02-16 02:41:29.346491	\N	\N	\N	\N	\N	\N
1467	2005-01-26 00:00:00	5	32	48	47	43	33	2019-02-16 02:41:29.361222	2019-02-16 02:41:29.361222	\N	\N	\N	\N	\N	\N
1468	2005-01-22 00:00:00	33	32	34	11	23	38	2019-02-16 02:41:29.377056	2019-02-16 02:41:29.377056	\N	\N	\N	\N	\N	\N
1469	2005-01-19 00:00:00	49	32	9	18	33	27	2019-02-16 02:41:29.402177	2019-02-16 02:41:29.402177	\N	\N	\N	\N	\N	\N
1470	2005-01-15 00:00:00	37	49	21	51	26	25	2019-02-16 02:41:29.411233	2019-02-16 02:41:29.411233	\N	\N	\N	\N	\N	\N
1471	2005-01-12 00:00:00	50	21	27	38	23	38	2019-02-16 02:41:29.435979	2019-02-16 02:41:29.435979	\N	\N	\N	\N	\N	\N
1472	2005-01-08 00:00:00	11	22	24	9	43	2	2019-02-16 02:41:29.444936	2019-02-16 02:41:29.444936	\N	\N	\N	\N	\N	\N
1473	2005-01-05 00:00:00	10	7	37	4	30	37	2019-02-16 02:41:29.467854	2019-02-16 02:41:29.467854	\N	\N	\N	\N	\N	\N
1474	2005-01-01 00:00:00	47	22	23	26	44	12	2019-02-16 02:41:29.477232	2019-02-16 02:41:29.477232	\N	\N	\N	\N	\N	\N
1475	2004-12-29 00:00:00	44	33	29	38	24	7	2019-02-16 02:41:29.499659	2019-02-16 02:41:29.499659	\N	\N	\N	\N	\N	\N
1476	2004-12-25 00:00:00	39	29	32	53	45	16	2019-02-16 02:41:29.508438	2019-02-16 02:41:29.508438	\N	\N	\N	\N	\N	\N
1477	2004-12-22 00:00:00	7	11	31	24	2	18	2019-02-16 02:41:29.516586	2019-02-16 02:41:29.516586	\N	\N	\N	\N	\N	\N
1478	2004-12-18 00:00:00	30	1	29	25	45	12	2019-02-16 02:41:29.53474	2019-02-16 02:41:29.53474	\N	\N	\N	\N	\N	\N
1479	2004-12-15 00:00:00	38	1	53	11	6	11	2019-02-16 02:41:29.558994	2019-02-16 02:41:29.558994	\N	\N	\N	\N	\N	\N
1480	2004-12-11 00:00:00	16	53	41	7	6	23	2019-02-16 02:41:29.567892	2019-02-16 02:41:29.567892	\N	\N	\N	\N	\N	\N
1481	2004-12-08 00:00:00	17	13	50	35	45	2	2019-02-16 02:41:29.591779	2019-02-16 02:41:29.591779	\N	\N	\N	\N	\N	\N
1482	2004-12-04 00:00:00	30	9	22	6	16	4	2019-02-16 02:41:29.600024	2019-02-16 02:41:29.600024	\N	\N	\N	\N	\N	\N
1483	2004-12-01 00:00:00	44	28	36	38	3	1	2019-02-16 02:41:29.624837	2019-02-16 02:41:29.624837	\N	\N	\N	\N	\N	\N
1484	2004-11-27 00:00:00	16	35	47	36	28	31	2019-02-16 02:41:29.633151	2019-02-16 02:41:29.633151	\N	\N	\N	\N	\N	\N
1485	2004-11-24 00:00:00	47	49	53	3	19	4	2019-02-16 02:41:29.65583	2019-02-16 02:41:29.65583	\N	\N	\N	\N	\N	\N
1486	2004-11-20 00:00:00	45	50	48	4	29	1	2019-02-16 02:41:29.664166	2019-02-16 02:41:29.664166	\N	\N	\N	\N	\N	\N
1487	2004-11-17 00:00:00	31	15	46	25	36	37	2019-02-16 02:41:29.673134	2019-02-16 02:41:29.673134	\N	\N	\N	\N	\N	\N
1488	2004-11-13 00:00:00	33	34	26	5	6	13	2019-02-16 02:41:29.692289	2019-02-16 02:41:29.692289	\N	\N	\N	\N	\N	\N
1489	2004-11-10 00:00:00	14	43	45	21	29	26	2019-02-16 02:41:29.714633	2019-02-16 02:41:29.714633	\N	\N	\N	\N	\N	\N
1490	2004-11-06 00:00:00	18	22	33	40	38	19	2019-02-16 02:41:29.723905	2019-02-16 02:41:29.723905	\N	\N	\N	\N	\N	\N
1491	2004-11-03 00:00:00	48	43	45	11	35	42	2019-02-16 02:41:29.747227	2019-02-16 02:41:29.747227	\N	\N	\N	\N	\N	\N
1492	2004-10-30 00:00:00	20	27	48	40	30	11	2019-02-16 02:41:29.756952	2019-02-16 02:41:29.756952	\N	\N	\N	\N	\N	\N
1493	2004-10-27 00:00:00	40	51	44	11	17	21	2019-02-16 02:41:29.780073	2019-02-16 02:41:29.780073	\N	\N	\N	\N	\N	\N
1494	2004-10-23 00:00:00	49	50	15	52	24	40	2019-02-16 02:41:29.789116	2019-02-16 02:41:29.789116	\N	\N	\N	\N	\N	\N
1495	2004-10-20 00:00:00	41	46	11	17	1	24	2019-02-16 02:41:29.811876	2019-02-16 02:41:29.811876	\N	\N	\N	\N	\N	\N
1496	2004-10-16 00:00:00	22	42	5	36	20	11	2019-02-16 02:41:29.82102	2019-02-16 02:41:29.82102	\N	\N	\N	\N	\N	\N
1497	2004-10-13 00:00:00	17	45	46	5	14	41	2019-02-16 02:41:29.84281	2019-02-16 02:41:29.84281	\N	\N	\N	\N	\N	\N
1498	2004-10-09 00:00:00	10	48	47	3	1	27	2019-02-16 02:41:29.851075	2019-02-16 02:41:29.851075	\N	\N	\N	\N	\N	\N
1499	2004-10-06 00:00:00	50	19	44	5	6	28	2019-02-16 02:41:29.860592	2019-02-16 02:41:29.860592	\N	\N	\N	\N	\N	\N
1500	2004-10-02 00:00:00	32	35	29	13	2	4	2019-02-16 02:41:29.878217	2019-02-16 02:41:29.878217	\N	\N	\N	\N	\N	\N
1501	2004-09-29 00:00:00	35	16	37	28	33	17	2019-02-16 02:41:29.902544	2019-02-16 02:41:29.902544	\N	\N	\N	\N	\N	\N
1502	2004-09-25 00:00:00	41	11	40	48	25	3	2019-02-16 02:41:29.91195	2019-02-16 02:41:29.91195	\N	\N	\N	\N	\N	\N
1503	2004-09-22 00:00:00	37	6	34	14	40	7	2019-02-16 02:41:29.936217	2019-02-16 02:41:29.936217	\N	\N	\N	\N	\N	\N
1504	2004-09-18 00:00:00	14	36	31	2	27	9	2019-02-16 02:41:29.945124	2019-02-16 02:41:29.945124	\N	\N	\N	\N	\N	\N
1505	2004-09-15 00:00:00	28	17	1	50	8	20	2019-02-16 02:41:29.967715	2019-02-16 02:41:29.967715	\N	\N	\N	\N	\N	\N
1506	2004-09-11 00:00:00	36	25	49	46	34	9	2019-02-16 02:41:29.976619	2019-02-16 02:41:29.976619	\N	\N	\N	\N	\N	\N
1507	2004-09-08 00:00:00	28	4	2	33	52	18	2019-02-16 02:41:29.985448	2019-02-16 02:41:29.985448	\N	\N	\N	\N	\N	\N
1508	2004-09-04 00:00:00	46	15	26	25	13	28	2019-02-16 02:41:30.004033	2019-02-16 02:41:30.004033	\N	\N	\N	\N	\N	\N
1509	2004-09-01 00:00:00	44	45	33	51	31	31	2019-02-16 02:41:30.016793	2019-02-16 02:41:30.016793	\N	\N	\N	\N	\N	\N
1510	2004-08-28 00:00:00	35	6	30	45	39	31	2019-02-16 02:41:30.033754	2019-02-16 02:41:30.033754	\N	\N	\N	\N	\N	\N
1511	2004-08-25 00:00:00	32	1	50	30	37	19	2019-02-16 02:41:30.058785	2019-02-16 02:41:30.058785	\N	\N	\N	\N	\N	\N
1512	2004-08-21 00:00:00	40	27	39	16	3	3	2019-02-16 02:41:30.06771	2019-02-16 02:41:30.06771	\N	\N	\N	\N	\N	\N
1513	2004-08-18 00:00:00	35	40	42	33	31	40	2019-02-16 02:41:30.09172	2019-02-16 02:41:30.09172	\N	\N	\N	\N	\N	\N
1514	2004-08-14 00:00:00	4	10	43	18	11	41	2019-02-16 02:41:30.099907	2019-02-16 02:41:30.099907	\N	\N	\N	\N	\N	\N
1515	2004-08-11 00:00:00	10	33	5	51	29	35	2019-02-16 02:41:30.124603	2019-02-16 02:41:30.124603	\N	\N	\N	\N	\N	\N
1516	2004-08-07 00:00:00	16	34	9	8	48	8	2019-02-16 02:41:30.13304	2019-02-16 02:41:30.13304	\N	\N	\N	\N	\N	\N
1517	2004-08-04 00:00:00	37	11	26	22	51	21	2019-02-16 02:41:30.156112	2019-02-16 02:41:30.156112	\N	\N	\N	\N	\N	\N
1518	2004-07-31 00:00:00	47	31	14	35	45	35	2019-02-16 02:41:30.164639	2019-02-16 02:41:30.164639	\N	\N	\N	\N	\N	\N
1519	2004-07-28 00:00:00	40	4	39	19	50	22	2019-02-16 02:41:30.173798	2019-02-16 02:41:30.173798	\N	\N	\N	\N	\N	\N
1520	2004-07-24 00:00:00	52	29	2	3	13	25	2019-02-16 02:41:30.191318	2019-02-16 02:41:30.191318	\N	\N	\N	\N	\N	\N
1521	2004-07-21 00:00:00	42	38	46	31	3	2	2019-02-16 02:41:30.214709	2019-02-16 02:41:30.214709	\N	\N	\N	\N	\N	\N
1522	2004-07-17 00:00:00	23	45	50	20	36	9	2019-02-16 02:41:30.224975	2019-02-16 02:41:30.224975	\N	\N	\N	\N	\N	\N
1523	2004-07-14 00:00:00	9	49	24	45	50	37	2019-02-16 02:41:30.247463	2019-02-16 02:41:30.247463	\N	\N	\N	\N	\N	\N
1524	2004-07-10 00:00:00	17	44	23	16	26	13	2019-02-16 02:41:30.256699	2019-02-16 02:41:30.256699	\N	\N	\N	\N	\N	\N
1525	2004-07-07 00:00:00	41	34	30	25	18	10	2019-02-16 02:41:30.280208	2019-02-16 02:41:30.280208	\N	\N	\N	\N	\N	\N
1526	2004-07-03 00:00:00	3	30	8	47	12	23	2019-02-16 02:41:30.289706	2019-02-16 02:41:30.289706	\N	\N	\N	\N	\N	\N
1527	2004-06-30 00:00:00	47	45	2	31	29	4	2019-02-16 02:41:30.312304	2019-02-16 02:41:30.312304	\N	\N	\N	\N	\N	\N
1528	2004-06-26 00:00:00	17	47	9	32	41	8	2019-02-16 02:41:30.321308	2019-02-16 02:41:30.321308	\N	\N	\N	\N	\N	\N
1529	2004-06-23 00:00:00	16	20	9	12	39	1	2019-02-16 02:41:30.329872	2019-02-16 02:41:30.329872	\N	\N	\N	\N	\N	\N
1530	2004-06-19 00:00:00	2	37	36	48	9	16	2019-02-16 02:41:30.346783	2019-02-16 02:41:30.346783	\N	\N	\N	\N	\N	\N
1531	2004-06-16 00:00:00	16	18	48	39	26	22	2019-02-16 02:41:30.361253	2019-02-16 02:41:30.361253	\N	\N	\N	\N	\N	\N
1532	2004-06-12 00:00:00	6	52	48	43	20	28	2019-02-16 02:41:30.377539	2019-02-16 02:41:30.377539	\N	\N	\N	\N	\N	\N
1533	2004-06-09 00:00:00	31	50	37	1	33	40	2019-02-16 02:41:30.402092	2019-02-16 02:41:30.402092	\N	\N	\N	\N	\N	\N
1534	2004-06-05 00:00:00	41	5	42	39	26	39	2019-02-16 02:41:30.416517	2019-02-16 02:41:30.416517	\N	\N	\N	\N	\N	\N
1535	2004-06-02 00:00:00	26	6	12	29	5	30	2019-02-16 02:41:30.432608	2019-02-16 02:41:30.432608	\N	\N	\N	\N	\N	\N
1536	2004-05-29 00:00:00	1	16	32	39	30	2	2019-02-16 02:41:30.447906	2019-02-16 02:41:30.447906	\N	\N	\N	\N	\N	\N
1537	2004-05-26 00:00:00	38	10	31	3	35	16	2019-02-16 02:41:30.462397	2019-02-16 02:41:30.462397	\N	\N	\N	\N	\N	\N
1538	2004-05-22 00:00:00	1	49	42	36	7	41	2019-02-16 02:41:30.478174	2019-02-16 02:41:30.478174	\N	\N	\N	\N	\N	\N
1539	2004-05-19 00:00:00	31	14	41	37	15	31	2019-02-16 02:41:30.488079	2019-02-16 02:41:30.488079	\N	\N	\N	\N	\N	\N
1540	2004-05-15 00:00:00	1	26	46	27	43	31	2019-02-16 02:41:30.499859	2019-02-16 02:41:30.499859	\N	\N	\N	\N	\N	\N
1541	2004-05-12 00:00:00	42	45	11	31	35	35	2019-02-16 02:41:30.516596	2019-02-16 02:41:30.516596	\N	\N	\N	\N	\N	\N
1542	2004-05-08 00:00:00	37	3	43	9	17	39	2019-02-16 02:41:30.530452	2019-02-16 02:41:30.530452	\N	\N	\N	\N	\N	\N
1543	2004-05-05 00:00:00	21	25	16	9	32	8	2019-02-16 02:41:30.545795	2019-02-16 02:41:30.545795	\N	\N	\N	\N	\N	\N
1544	2004-05-01 00:00:00	1	34	47	10	39	33	2019-02-16 02:41:30.561352	2019-02-16 02:41:30.561352	\N	\N	\N	\N	\N	\N
1545	2004-04-28 00:00:00	27	34	52	49	42	23	2019-02-16 02:41:30.574922	2019-02-16 02:41:30.574922	\N	\N	\N	\N	\N	\N
1546	2004-04-24 00:00:00	2	44	35	13	22	28	2019-02-16 02:41:30.589456	2019-02-16 02:41:30.589456	\N	\N	\N	\N	\N	\N
1547	2004-04-21 00:00:00	11	8	51	42	34	27	2019-02-16 02:41:30.602816	2019-02-16 02:41:30.602816	\N	\N	\N	\N	\N	\N
1548	2004-04-17 00:00:00	41	4	42	34	29	11	2019-02-16 02:41:30.611717	2019-02-16 02:41:30.611717	\N	\N	\N	\N	\N	\N
1549	2004-04-14 00:00:00	38	22	1	20	6	22	2019-02-16 02:41:30.628038	2019-02-16 02:41:30.628038	\N	\N	\N	\N	\N	\N
1550	2004-04-10 00:00:00	2	48	30	9	47	40	2019-02-16 02:41:30.639541	2019-02-16 02:41:30.639541	\N	\N	\N	\N	\N	\N
1551	2004-04-07 00:00:00	7	37	2	35	16	10	2019-02-16 02:41:30.655472	2019-02-16 02:41:30.655472	\N	\N	\N	\N	\N	\N
1552	2004-04-03 00:00:00	43	7	26	6	32	13	2019-02-16 02:41:30.67295	2019-02-16 02:41:30.67295	\N	\N	\N	\N	\N	\N
1553	2004-03-31 00:00:00	15	31	39	34	50	35	2019-02-16 02:41:30.684818	2019-02-16 02:41:30.684818	\N	\N	\N	\N	\N	\N
1554	2004-03-27 00:00:00	30	17	2	15	34	32	2019-02-16 02:41:30.709784	2019-02-16 02:41:30.709784	\N	\N	\N	\N	\N	\N
1555	2004-03-24 00:00:00	39	47	43	20	18	31	2019-02-16 02:41:30.718158	2019-02-16 02:41:30.718158	\N	\N	\N	\N	\N	\N
1556	2004-03-20 00:00:00	44	14	24	27	2	6	2019-02-16 02:41:30.733115	2019-02-16 02:41:30.733115	\N	\N	\N	\N	\N	\N
1557	2004-03-17 00:00:00	24	15	20	43	7	5	2019-02-16 02:41:30.749885	2019-02-16 02:41:30.749885	\N	\N	\N	\N	\N	\N
1558	2004-03-13 00:00:00	50	44	11	48	45	2	2019-02-16 02:41:30.76312	2019-02-16 02:41:30.76312	\N	\N	\N	\N	\N	\N
1559	2004-03-10 00:00:00	10	41	22	20	49	6	2019-02-16 02:41:30.77925	2019-02-16 02:41:30.77925	\N	\N	\N	\N	\N	\N
1560	2004-03-06 00:00:00	49	46	17	51	9	9	2019-02-16 02:41:30.792937	2019-02-16 02:41:30.792937	\N	\N	\N	\N	\N	\N
1561	2004-03-03 00:00:00	23	11	17	53	5	34	2019-02-16 02:41:30.807653	2019-02-16 02:41:30.807653	\N	\N	\N	\N	\N	\N
1562	2004-02-28 00:00:00	25	52	53	6	26	40	2019-02-16 02:41:30.827891	2019-02-16 02:41:30.827891	\N	\N	\N	\N	\N	\N
1563	2004-02-25 00:00:00	4	47	17	11	5	35	2019-02-16 02:41:30.84084	2019-02-16 02:41:30.84084	\N	\N	\N	\N	\N	\N
1564	2004-02-21 00:00:00	22	26	53	48	15	14	2019-02-16 02:41:30.857139	2019-02-16 02:41:30.857139	\N	\N	\N	\N	\N	\N
1565	2004-02-18 00:00:00	50	36	24	4	44	2	2019-02-16 02:41:30.872103	2019-02-16 02:41:30.872103	\N	\N	\N	\N	\N	\N
1566	2019-02-16 00:00:00	29	30	41	48	64	1	2019-02-18 15:08:09.094845	2019-02-18 19:26:41.966568	363.98	169.61	218.47	267.46	230.28	173.16
\.


--
-- Data for Name: html_pages; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.html_pages (id, title, content, active, slug, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.schema_migrations (version) FROM stdin;
20190122125344
20190122133011
20190122134436
20190122134536
20190202212339
20190206014801
20190216010331
20190218090100
20190703010033
\.


--
-- Data for Name: section_footnotes; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.section_footnotes (id, a_number, footnote, section_id, created_at, updated_at) FROM stdin;
1	1	1911241752	14	2019-11-24 22:42:32.452999	2019-11-24 22:42:32.452999
2	1	“War Games”, 1983. Directed by John Badham	46	2020-02-27 01:35:15.438059	2020-02-27 01:35:15.438059
3	2	"Tehran UFO Incident, 1976: Iranian Fighter Jets Chase a UFO", http://www.thinkanomalous.com/tehran-ufo.html\n	46	2020-02-27 01:35:35.600528	2020-02-27 01:35:35.600528
\.


--
-- Data for Name: section_notes; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.section_notes (id, note, section_id, created_at, updated_at) FROM stdin;
1	Note for Abduction	3	2019-07-08 01:22:44.336502	2019-07-08 01:22:44.336502
2	test 	4	2019-10-30 00:49:21.183582	2019-10-30 00:49:21.183582
3	second abduction note	3	2019-10-30 00:53:20.918447	2019-10-30 00:53:20.918447
4	la de fricken da	5	2019-11-05 01:35:40.444604	2019-11-05 01:35:40.444604
5	Now is the time for all good men to come to the aid of the quick brown fox jumping over the lazy dog	5	2019-11-05 01:37:32.675254	2019-11-05 01:37:32.675254
6	test note 4	3	2019-11-23 19:39:53.42949	2019-11-23 19:39:53.42949
7	Another note test	3	2019-11-23 19:42:15.372063	2019-11-23 19:42:15.372063
8	1455	3	2019-11-23 19:55:25.062975	2019-11-23 19:55:25.062975
9	1456	3	2019-11-23 19:56:26.923232	2019-11-23 19:56:26.923232
10	1457	3	2019-11-23 19:57:30.005183	2019-11-23 19:57:30.005183
11	1458	3	2019-11-23 19:58:25.695032	2019-11-23 19:58:25.695032
12	1500	3	2019-11-23 20:00:59.303292	2019-11-23 20:00:59.303292
13	test	4	2019-11-24 02:57:29.628597	2019-11-24 02:57:29.628597
14	1001	4	2019-11-24 15:01:42.432098	2019-11-24 15:01:42.432098
15	1911241704	4	2019-11-24 22:13:29.948888	2019-11-24 22:13:29.948888
16	1726	4	2019-11-24 22:26:11.440406	2019-11-24 22:26:11.440406
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.sections (id, title, sequence, summary, body, throughline, resolution, conflict, story_id, created_at, updated_at) FROM stdin;
46	Abduction	1	An Iranian fighter pilot is scrambled to investigate a UFO. A one sided dogfight ensues which consists of the fighter trying to elude the UFO. The fighter suddenly disappears. It is presumed crashed, but no debris is ever found. Then the UFO incident is investigated, authorities learn that the pilots wife and child have been missing since the UFO was sighted near their village.	<p>"General?"</p>\r\n<p>The General Beringer<sup>1</sup> looked up from his computer station at Lieutenant David Eugene, who was blocking his view of the NORAD primary display. Eugene, just out of the Air Force Academy, had been assigned to this NORAD section two months ago.</p>\r\n<p>"Sir, one of our ELINT Sats has detected an infrared anomaly near Tehran."</p>\r\n<p>"Missile launch, Lieutenant?"</p>\r\n<p>"No Sir. It has remained relatively stationary since it was detected, ten minutes ago."</p>\r\n<p>"Is the Iranian Air Command aware?"</p>\r\n<p>"Yes Sir. They have an unknown radar contact out of Mehrabad<sup>2</sup> and have scrambled two fighters to intercept."</p>\r\n<p>"OK, while it remains in Iranian airspace, it is not our problem. The Iranians can deal with it."</p>\r\n<p>"Yes Sir!"</p>\r\n<p style="text-align: center;">※※※</p>\r\n<p>Lt. Yusef Ibrahim was forced back into his seat as he pushed the throttle forward and his fighter lifted into the air from runway 13R at Shahrokhi Air Force Base in Iran. He was ten minutes behind the lead plane piloted by Lt. Said. Lt. Ibrahim banked his fighter and set a course to coordinates 40 nautical miles north of Tehran.</p>\r\n<p>With a steep ascent the fighter broke through the clouds in seconds. It was as if the whole universe opened up before Yusef. Stars saturated the sky. He was always awed at the sight of the constellations and a Milky Way that actually looked like a river of milk. Despite the immensity of the heavens, he did not feel small. Instead he believed himself to be an intricate part of it. He felt pity for the poor souls on the ground who would never see this sight because of the layer of air pollution that wrapped the globe. But that was enough of this indulgence, he forced his attention to the instrument panel and his training took control of his actions.</p>\r\n<p>Ibrahim listened incredulously to the radio as Said, the pilot of the lead fighter, reported that his instruments ceased functioning and UHF and intercom went out as he came within 5 nautical miles of the target. Systems were restored when he had aborted his approach. He knew that Said was not the best of pilots and assumed the problem was likely pilot error.</p>\r\n<p>At 30 nautical miles from the coordinates Ibrahim could see what looked like a bright star at his 12 o'clock. But it was far larger than any other star in the night sky. He adjusted the brightness on the HUD to compensate. His hand briefly touched the photograph of his wife and 2 month old son taped next to the tactical display. Then he went through the weapons system readiness checklist once more.</p>\r\n<p>Ibrahim altered course so that he could approach the object on an elliptical path. This would allow him more room to maneuver and might be seen as less threatening by whatever this object was. He continued to close at a speed of 150 knots. When he reached a point 10 nautical miles from the object, it began to move away from him, keeping a constant distance between them. Ibrahim can't believe the size of the craft, it is huge. But it the light is so fuzzy that Ibrahim has trouble discerning its' exact size or shape. It is like some optical illusion.</p>\r\n<p>The object continued on a southerly trajectory and Ibrahim continued to pursue it. Suddenly, a smaller object, just as bright as the main object, broke off and headed straight for him at an incredible speed. Ibrahim reacted quickly. He reported that he was going weapons "Hot" and armed the AIM-9 missiles he has strapped beneath the wings. He was about to fire a missile when the weapons control panel went dead. UHF quit, also. Remembering what Said had done he initiated a sharp bank and negative G dive trying to escape the impending object.</p>\r\n<p>The most he could make out of the smaller object is that it comprised a rectangular group of lights that strobed in alternating colors: blue, green, red and orange. The lights flashed so quickly that all colors could be seen at once. The small object did not change direction. As soon as Yusef had come about 180 degrees, the small craft changed its direction by 90 degrees. It did not bank or turn, it just changed direction like a cue ball ricocheting off the rail of a billiard table. "That's impossible," he cursed. "That thing is a Djinn." The craft was again on an intercept course with Yusef. It was approaching him rapidly from starboard. Before he could react, it passed in front of him filling his entire field of vision with a blinding light. Yusef froze at the controls. He could not see a thing. The after image of the object on his retina prevents any visual perception. He felt for and engaged the autopilot. At least that should keep him from flying into the ground.</p>\r\n<p>It took almost two minutes for Yusef's vision to return. Quickly he visually sighted the parent ship, but the smaller craft that had almost collided him was nowhere to be seen. He banked his fighter back in the direction of the main ship, keeping his distance from the craft to what appeared to be its engagement threshold.</p>\r\n<p>Once again a small object detached itself and proceeded toward the ground and an incredible rate of speed. It appeared as if this second object would immediately crash into the ground, but it stopped just before impact and settled gently to the earth. The brightness of the object lit up the terrain for several kilometers.</p>\r\n<p>Ibrahim was able to make a low pass over the object and reported its exact position to the base at Shahrokhi. He continued to circle the object for a few minutes, then the small object returned to its' source. The parent craft then took off at an impossible rate of speed toward the west and was soon out of site.</p>\r\n<p>Ibrahim plotted a course back to base. As he started his final approach, another object overtook him and positioned itself less than 50 meters directly above. It was cylindrical in shape with steady bright lights on either end and a flashing light in the middle. It terrified him. Just as he pushed the throttle to afterburner, all electrical systems on the fighter quit.</p>\r\n<p>He lost control of the craft.</p>\r\n<p style="text-align: center;">※ ※ ※</p>\r\n<p>The air base tower had Ibrahim on radar as he began his approach. The controller witnessed the object come up on the fighter as the radar images merged into one. The object was so bright that the fighter could not be seen, even with its' landing lights on. The object continued on a path straight toward the tower and flew directly over it. As it did so, all electrical equipment in the tower quit working. The object continued in a westerly direction. When the power was restored to the tower, there was no sign of either the object or Ibrahim's fighter.</p>\r\n<p>The next day General Jafar and Lieutenant Said requisitioned a helicopter and flew to the location where Ibrahim had reported that one of the small crafts had landed. The spot was on a dry lake bed next to a small town.</p>\r\n<p>"The lake bed seems to have an interesting pattern in it," Gen Jafar commented as the chopper circled the area.</p>\r\n<p>Lt. Said said, "It reminds me of pictures I've seen of crop circles." The General ordered the pilot to land 100 meters from what appeared to be the center of the designs. Gen. Jafar and an investigative team began examining the area. The General ordered Said take the chopper to speak to people in the nearby town and ask them if they had noticed anything unusual last night.</p>\r\n<p>When Said returned. "The village chief says that several people reported loud noises and seeing bright lights last night. A woman and child are reported to be missing."</p>\r\n<p>"We have more important things to do than deal with missing persons," the General says.</p>\r\n<p>"But, sir, it is the wife and child of Lt. Ibrahim!"</p>				4	2020-02-27 01:30:51.524495	2020-02-27 01:35:37.298295
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: paxxa
--

COPY public.stories (id, title, subtitle, abbreviated_title, short_summary, long_summary, word_count, created_at, updated_at) FROM stdin;
4	The Science of Miracles	\N	\N	Human Evolution	\N	\N	2019-07-06 00:00:00	2019-07-16 00:00:00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, login, encrypted_password, role_cd, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	mckibben@att.net	boyd-z	$2a$11$2cWb57a9PmuynLgcSw05duIZiTGys8Dxp9ULH7VHcjcnaxImzf6Aq	4	\N	\N	\N	177	2019-01-27 23:09:26.157625	2019-01-25 19:00:55.28509	69.174.160.82	50.195.243.209	2017-08-16 19:33:58.484757	2019-01-27 23:09:26.16274
\.


--
-- Data for Name: wiki_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wiki_tags (id, wiki_id, tag_id) FROM stdin;
1	10	6
73	65	6
3	10	9
4	11	12
5	9	12
74	66	6
7	14	12
8	15	14
9	16	6
75	67	46
11	17	11
76	68	46
13	19	11
14	20	11
15	21	11
16	22	11
17	18	12
77	69	6
78	69	11
79	70	12
80	71	6
22	13	5
23	8	5
18	23	14
24	26	14
25	27	5
26	16	27
27	30	6
28	31	6
29	32	12
30	33	12
31	34	6
81	72	6
33	35	6
34	36	6
35	34	27
36	37	13
37	38	5
38	\N	9
39	39	6
40	39	9
41	\N	9
42	40	6
43	40	9
44	47	46
45	48	6
46	48	9
47	49	6
48	50	6
49	51	6
50	52	6
51	53	6
52	53	41
53	54	6
54	54	5
55	55	6
56	55	9
57	56	6
58	56	5
59	57	6
60	58	6
61	58	42
62	59	6
63	59	5
64	60	6
65	61	6
82	73	6
83	73	9
68	62	6
84	74	6
69	61	5
70	63	6
71	63	41
72	64	6
85	74	43
86	75	6
87	75	0
88	75	0
89	75	\N
90	75	0
91	75	0
92	76	6
93	77	6
94	78	6
95	78	9
96	79	6
97	79	9
98	80	6
99	81	6
100	81	0
107	87	6
108	88	6
103	85	70
104	\N	9
105	86	6
106	86	9
109	88	9
110	89	6
111	90	46
112	91	6
113	92	6
114	93	6
115	\N	9
116	94	6
117	94	9
118	\N	\N
119	\N	9
120	95	6
121	95	9
122	111	6
123	112	6
124	112	\N
125	112	17
126	112	90
127	112	0
128	\N	0
129	113	6
130	114	6
131	114	0
\.


--
-- Data for Name: wikis; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wikis (id, title, user_id, body, parent, version, deleted, created_at, updated_at, default_sort, last_revision) FROM stdin;
65	2018.025	1	<p>When you truely take responsibility for yourself,&nbsp; then you will absolutely know the only one who has ever held you back is yourself.</p>	\N	\N	f	2018-01-25 02:58:34.586127	2018-01-25 02:58:34.616248	65	0
66	2018.032	1	<p>I will not go gentle into that good night.</p>\r\n<p>I will not dispair.</p>\r\n<p>I will resist.</p>\r\n<p>Dispair is the mind killer.</p>\r\n<p>Dispare is the little death that bring total obliteration.</p>\r\n<p>I will face my dispair.</p>\r\n<p>I will allow it to surround me and pass through me.</p>\r\n<p>When I turn the inner eye to see its path, it will be gone.</p>\r\n<p>Only I will remain.</p>\r\n<p>Shining with the spark of divine energy within me.</p>\r\n<p>Nurtured by Faith, it is the source of miracles.</p>	\N	\N	f	2018-02-01 13:11:26.79264	2018-02-01 13:11:26.820881	66	0
68	Positive Self Expectancy	1	<p>Positive self-expectancy is the first, most outwardly identifiable quality of a top-achieving, winning human being. Positive self-expectancy is pure and simple optimism: real enthusiasm for everything you do... [while] expecting the most favorable result from your own actions. There never was a winner who didn't expect to win in advance. Winners understand that life is a self-fulfilling prophecy. And they know that you usually get what you expect in the long run.</p>\r\n<p><em>Denis Waitley</em></p>	46	\N	f	2018-02-07 13:58:16.917082	2018-02-07 13:58:16.933714	68	0
19	SoM	1	<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 21pt; font-family: 'Trebuchet MS'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">The Science of Miracles</span></p>\r\n<p><strong id="docs-internal-guid-4cd29cdb-9627-b4a4-dab0-8de5e29301ee" style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt; margin-left: 72pt;"><span style="font-size: 13.999999999999998pt; font-family: Corsiva; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Within me is a spark of divine energy</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt; margin-left: 72pt;"><span style="font-size: 13.999999999999998pt; font-family: Corsiva; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Connecting mind to soul.</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt; margin-left: 72pt;"><span style="font-size: 13.999999999999998pt; font-family: Corsiva; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Nurtured by simple faith,</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt; margin-left: 72pt;"><span style="font-size: 13.999999999999998pt; font-family: Corsiva; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">It is the source of miracles.</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">I believe there is more to our universe than the physical reality we know. I believe the Universe has a Metaphysical component to it. </span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Our 4D reality is created and sustained by energies that originate from outside our 4D reality. The two competing view we have of reality, Science and Religion, both refer to this. &nbsp;Science has our universe at more than 4 dimensions and gravity, the force that created and sustains our 4D universe, it the only known thing that is capable of being transmitted between our 4 dimensions and the remaining dimensions. &nbsp;</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">All major religions propose that our 4D universe was created by some divine being or force and that this entity still interacts, in some way, with our 4 dimensions. &nbsp;Each religion is an interpretation of the same thing. Each interpretation is an attempt to explain what cannot be explained with our current view of the physical universe. &nbsp;&nbsp;&nbsp;Since our reality is subject to certain physical laws, then the Higher, metaphysical &nbsp;reality must be governed by metaphysical laws. &nbsp;If we can understand these laws, perhaps we can learn to use the Energy to manipulate our 4D reality. </span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Access to other dimensions can explain paranormal and psychic phenomena. How much of what we call miracles can be explained by access to another dimension?</span></p>\r\n<h1 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 16pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: underline; vertical-align: baseline; white-space: pre-wrap;">Reality</span></h1>\r\n<h2 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 13pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Premise</span></h2>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Our reality is comprised of more than the four dimensions &nbsp;we typically experience. The extra dimensions represent a &ldquo;higher reality&rdquo; which is part of a hierarchical structure that contains our four dimensional reality. &nbsp;Within the Higher reality is what is commonly referred to as &ldquo;Heaven&rdquo;. </span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Our four dimensional reality I will refer to as &ldquo;Physical Reality&rdquo;. &nbsp;What is beyond our physical reality I will refer to as &ldquo;Higher Reality&rdquo;. Physical reality is a subset of the higher reality.</span></p>\r\n<h2 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 13pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Support</span></h2>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Physical Reality</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">String Theory</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Brane Theory</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Multiple Dimensions</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Holographic Principle</span></p>\r\n</li>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Metaphysical Reality</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Flatland Analogy</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Heaven</span></p>\r\n</li>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Religion</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Miracles are the evidence of religion. Miracles are changes in the physical reality that originate from the metaphysical reality. Miracles are events in our 4D brane that cannot be explained by the laws of physics as we know them.</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">I see no distinction between claiming God created our universe and our universe as a simulation.</span></p>\r\n</li>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Spiritual Energy</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Paranormal</span></p>\r\n</li>\r\n</ol>\r\n</ol>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<h1 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 16pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Self</span></h1>\r\n<h2 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 13pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Premise</span></h2>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Our soul originates in the Higher reality. We come here and experience a life cycle in order to develop/enhance our soul. Our physical being is defined by a &ldquo;projection&rdquo; of our soul from the Higher Reality. Our soul maintains a continuous connection with the Higher reality even though we may not realize it. We come here and experience a life cycle in order to develop/enhance our soul.</span></p>\r\n<h2 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 13pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Support</span></h2>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Soul</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Heaven</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">NDE</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Recarnation</span></p>\r\n</li>\r\n</ol>\r\n</ol>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<h1 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 16pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Interaction</span></h1>\r\n<h2 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 13pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Premise</span></h2>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">We maintain a connection with the Higher reality that is a conduit for Metaphysical Energy. </span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Our Soul is in heaven projecting consciousness to to our physical being</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">In order to function in physical reality, consciousness must interpret input from physical reality. This makes consciousness become increasingly more connected to physical reality and less to soul.</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">By suspending this interpretation, we strengthen the connection to soul. </span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">That suspension is accomplished by meditation/hypnosis and the creation of a state of awareness that stops the internal dialog/thought and creates a state of no mind, pure experience/awareness without the symbolic interpretation of thought.</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Miracles require a very strong connection to soul. The connection is used as a conduit for metaphysical energy. A by product of this energy is the halo.</span></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Through meditation we unite our physical consciousness with our metaphysical soul and open a conduit for divine energy.</span></p>\r\n<h2 dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 13pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: bold; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Support</span></h2>\r\n<p>&nbsp;</p>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 10pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Physical Reality</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Purpose</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Love</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">sex</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">marriage</span></p>\r\n</li>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Compassion</span></p>\r\n</li>\r\n</ol>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Metaphysical Reality</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">What we know</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.5709091533314097; margin-top: 4pt; margin-bottom: 6pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">In various versions of the tale, a group of </span><a style="text-decoration: none;" href="http://en.wikipedia.org/wiki/Blindness"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #0b0080; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">blind</span></a><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"> men (or men in the dark) touch an </span><a style="text-decoration: none;" href="http://en.wikipedia.org/wiki/Elephant"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #0b0080; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">elephant</span></a><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"> to learn what it is like. Each one feels a different part, but only one part, such as the side or the </span><a style="text-decoration: none;" href="http://en.wikipedia.org/wiki/Tusk"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #0b0080; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">tusk</span></a><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">. They then compare notes and learn that they are in complete disagreement.</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.5709091533314097; margin-top: 4pt; margin-bottom: 6pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">The stories differ primarily in how the elephant's body parts are described, how violent the conflict becomes and how (or if) the conflict among the men and their perspectives is resolved.</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.5709091533314097; margin-top: 4pt; margin-bottom: 6pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: #ffffff; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">In some versions, they stop talking, start listening and collaborate to "see" the full elephant. When a sighted man walks by and sees the entire elephant all at once, they also learn they are blind. While one's subjective experience is true, it may not be the totality of truth. If the sighted man was deaf, he would not hear the elephant bellow.</span></p>\r\n</li>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Perception</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Seeing</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Faith: Our physical reality is supported by Faith. It is what we believe it to be. [the less we believe in evil spirit, the less influence they have over our reality.] We have the ability to shape our reality by changing our faith in what we believe it to be. There are a variety of techniques for changing our faith. But they begin with creating the state of awareness and from there programming the mind with the new reality. One would argue that this programming is only changing perception or behavior. That is true in one sense. These are low level changes. But, higher level changes to physical reality are also possible. These are what we have come to call miracles.</span></p>\r\n</li>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Faith</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Energy</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Holy Spirit</span></p>\r\n</li>\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Barking Dog episode</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: decimal; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Halo</span></p>\r\n</li>\r\n</ol>\r\n</ol>\r\n<li dir="ltr" style="list-style-type: lower-alpha; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Technique</span></p>\r\n</li>\r\n<ol style="margin-top: 0pt; margin-bottom: 0pt;">\r\n<li dir="ltr" style="list-style-type: lower-roman; font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline;">\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 12pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Meditation</span></p>\r\n</li>\r\n</ol>\r\n</ol>\r\n</ol>	0	\N	\N	2017-09-18 18:02:50.772262	2017-09-26 14:17:59.310589	2	0
69	2018.042	1	<p>Your soul resides simultaneously in you and in heaven.</p>	\N	\N	f	2018-02-11 03:25:03.615684	2018-02-11 03:25:03.659892	69	0
22	Reality	1	<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Image you are playing a Virtual Reality game. You are wearing goggles that show you and allow you to hear the game. You are also wearing gloves with sensors that detect your hand movements letting you interact with the game. You can pick things up, you can press buttons. You can even drive a car along a simulated road. The road is a static part of the game but you control the car.</span></p>\r\n<p><strong id="docs-internal-guid-c7f58a75-962a-de0a-65a2-3c107f33d070" style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Now image you are several years in the future. Technology has improved to where you no longer need goggles or glove to plan a VR game. You connect wires to your skull and close your eyes and there you are in the game. The wires transmit electric impulses to and from specific parts of your brain that allow &nbsp;you to experience and interact with the game. The road you are driving on now has become much more realistic and you have a much finer control of the car. </span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Key concepts of this scenario are that someone else created the simulated environment and that you have the free will to do whatever you wish in the game. It may be that you are racing against other players in the game and you have all agreed to abide by certain rules while playing. The players have created a society within the game. &nbsp;</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">What is so different between the reality we inhabit and a simulated environment? That our universe is real? The only difference between &ldquo;reality&rdquo; as we know it and the &ldquo;game&rdquo; is simply that reality is an intricately more complex version of what we experience in the game. </span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Nick Bostrom, a philosopher at Oxford University, &nbsp;is famous for suggesting that we live in a computer simulation. He proposes that our future descendants created this simulation to experience how their ancestors lived. However, his theory is limited by the technology we know. To call it a &ldquo;computer&rdquo; simulation is misleading. If it is a simulation, what sustains our reality, what we experience, &nbsp;is farther above a computer than a computer is above chipped flint.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">In a conference among the top people in their field held to discuss whether we live in a Computer Simulation, Neil DeGrasse Tyson said there is a 50/50 chance. &nbsp;But there is now way we could know for sure. &nbsp;Each of us must decide for our self what reality is, and accept that decision on faith.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">To say that our universe is a simulation is to say that someone created our universe. Did God create our universe? Does God still maintain or control our universe? Did God put us in this reality and when we die we go to heaven to be with G0d? How is this different from a simulation? Is it because what God created is &ldquo;real&rdquo;? Irregardless, to question whether God is omnipotent, is moot.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">My proposition is that our four dimensional reality originates from a higher reality and that sentient individuals in our reality have free will because we also originate from this higher reality, although separately, through a different process. We are independent agents within the simulation. </span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">There are theories in modern physics lend support to the argument that our reality originates from somewhere else. Membrane theory and the Holographic Principle have been combined by Juan Maldacena to say that our universe is a projection from somewhere else.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Membrane theory is proposed as a way of explaining the multiple dimensions of String theory. It proposes that our four dimensions compose a membrane, or &ldquo;brane&rdquo; that is part of a higher dimensional space.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">The Holographic Principle tells us that our brane is the boundary of a higher dimension like the surface of a sphere is the boundary of the interior and that the composition of the boundary we inhabit is a &ldquo;projection&rdquo; of the interior. </span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Juan Maldacena</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Our four dimensional reality is a brane that bounds a higher dimensional space. What our brane contains is a representation of what is in the higher dimensional space. Whatever happens in that higher dimensional space governs what happens in our space. If we combine this idea with the idea that our four dimensional space is a simulation, we have not negated the Holographic Principle, we have only added the volition of an something in the higher space to purposely create/influence what is in our reality.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">As individuals, we are connected to our origin in the higher reality by the metaphysical energy that sustains our existence in this reality. We can use that connection to communicate/influence it to alter our reality. </span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Atoms and even small particles make up the substance of our reality. This is reality, you say, not a simulation. But these particles are held together by energy. Is there something directing that energy? </span></p>\r\n<p>&nbsp;</p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: 'Goudy Bookletter 1911'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Because our reality is much more complex than any VR game we might conceive of does not rule out it being a simulation.</span></p>	0	\N	\N	2017-09-18 18:06:06.999186	2017-09-26 14:17:25.608584	1	0
20	Luck	1	<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Somewhere else I proposed that luck may be slow faith. That faith, maintained over a long period of time makes good things happen.</span></p>\r\n<p><strong id="docs-internal-guid-04063e17-9628-c498-fddf-3c5762fcd025" style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">I have also drawn a relationship between faith and meditation. My past experiences with meditation is that it has produced good events in my life.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">I believe that meditation, in the form of the Sacred Heart ritual, was responsible for my meeting Ann and for me being rehired at the IU program in Malaysia. It is also interesting that it was during meditation I visualized two numbers, both of which appeared in the next Powerball draw. </span></p>\r\n<p>&nbsp;</p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">I believe that I can improved my luck by continuing to practice meditation.</span></p>	0	\N	\N	2017-09-18 18:03:54.042635	2017-09-26 14:18:36.07463	5	0
17	Faith	1	<h1 dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 3pt;"><span style="font-size: 26pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Faith</span></h1>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Faith is the component in the cosmological model that is the conduit for communication between the corporeal consciousness and the Higher Reality soul. It is the quiet certainty. For our Faith, a metaphysical energy is returned.</span></p>\r\n<p><strong id="docs-internal-guid-3a2f5380-9626-2118-6420-287c4b19799b" style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">We already have some energy coming through, Chi. How can we amplify the returning energy? Open the door wider through the practice of meditation.</span></p>\r\n<p>&nbsp;</p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Meditation is a way of opening a door to the Higher Reality making Faith more effective. Through that door will be returned an energy that will fill you up to where you will glow (Holy Spirit Aura). Meditation is removing the symbolic interpretation that binds us to the 4D. The Zen &ldquo;No Mind&rdquo; and Castenada&rsquo;s &ldquo;Stopping the internal dialog&rdquo; are descriptions of this practice. Even Christian prayer, the repetition of a phrase that induces a hypnosis, a state of hyper awareness, is perception without thought. Prayer when coupled with Faith is what creates miracles.</span></p>	0	\N	\N	2017-09-18 18:00:53.005759	2017-09-26 14:19:02.880015	4	0
11	I Believe	1	<p>{{TOC}}</p>	\N	\N	\N	2017-09-15 19:07:30.478286	2017-09-26 14:19:45.763607	1	0
14	Conversation	1	<p>{{TOC}}</p>	0	\N	\N	2017-09-16 20:14:41.590411	2017-09-26 14:20:18.859431	3	0
7	Notes	1	A free form notes repository	\N	\N	f	2017-09-07 17:37:41.782953	2017-09-26 15:35:46.426558	7	0
15	01. Oakley 	1	<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Marcus here! Thanks again for downloading my&nbsp;groovy book on 'Conversational Mastery'.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">(NB. Email me if you haven't received it!)</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">When I wrote that book, I realised&nbsp;that having fun, upbeat conversations with&nbsp;people is really cool...</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...yet DEVELOPING YOUR CHARISMA IS AWESOME!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">So today, i'm going to share with you exactly&nbsp;WHAT charisma is, and how you can develop it&nbsp;yourself.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">===</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Have you ever wanted to be the most exciting&nbsp;person in the room?</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Or the most...</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...fun?&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...popular?&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...confident?!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">As i'm sure you're aware, some lucky people</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">have (somehow) worked out how to have that</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">kind of 'X'-Factor.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">-It's almost like they ooze a human magnetism</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">that borders on supernatural.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">And frustratingly, most of them can't even</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">explain how on earth they do it!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">That's no surprise: charisma is an elusive</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">trait -easy to identify but difficult to</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">define.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I'm still amazed that in today's world nobody</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">really understands what "charisma" is...</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...Or how to get it!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Well, I spent years and a ton of effort</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">working out how to do both!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">So let's jump right in.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">CHARISMA IS..</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"Your ability to evoke emotions in people,</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">who wouldn't have been able to experience</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">those feelings had you not been there."</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">-Simple, huh?</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">You just have to make people feel emotions as</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">you speak to them.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">\r\n<div style="box-sizing: border-box;">That's the theory. Here's the rub:</div>\r\n<div style="box-sizing: border-box;">&nbsp;</div>\r\n<div style="box-sizing: border-box;">Most people CANNOT evoke emotion in other</div>\r\n<div style="box-sizing: border-box;">people with any sort of consistency.</div>\r\n<div style="box-sizing: border-box;">&nbsp;</div>\r\n<div style="box-sizing: border-box;">Yet they have not practiced the SKILL.</div>\r\n<div style="box-sizing: border-box;">&nbsp;</div>\r\n<div style="box-sizing: border-box;">-Which causes them to LOSE out on the</div>\r\n</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">opportunity for additional influence,</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">persuasion and power in their lives.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">After all, it's no surprise that many great</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">leaders from history had the Midas touch:</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Churchill, JFK and Clinton.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Conversely, many notorious figures had it</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">too: Hitler, Rasputin and David Koresh. It</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">seems that the ability to stir emotions in</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">others does not always work to the good.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Fortunately, any skill can be practiced...</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...you just have to know *WHAT* it is you</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">need to practice!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">For this reason, I spent a lot of time</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">working out what gives a person a captivating</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">personality; so that they can easily influence</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">the emotions of others.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">What follows are 5 KEY FACTORS that, when</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">combined, will make you a more charismatic</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">person!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">1.) ATTITUDE</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Forget confidence, it's your outlook on life</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">that controls whether project yourself with</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">strength.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">You have to love yourself. I reckon the majority</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">of our problems with other people come from</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">how we feel about ourselves.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">To develop a carefree and happy attitude you</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">must free yourself from the opinions of other</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">people until you are free to express yourself</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">without fear.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">That means stripping away all the bullshit</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">you've accumulated over your life; and</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">developing your self esteem to the point</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">where you enjoy being the awesome person you</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">are.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">2.) SPONTANEITY</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Adding the miracle of PLAY to your day</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">certainly makes it more impulsive,</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">unrestrained and fun!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">That's how you get a life that is exciting to</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">live....</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...And have witty conversations that never</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">run out of steam!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">However, to achieve both, you must become a</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">RISK TAKER.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">That means you take ACTION when opportunity</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">presents itself, safe in the knowledge that</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">your decision will lead you to the thrill of</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">FUN...</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...or, an AMUSING STORY to tell your friends</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">about!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">3.) CHARM</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Do you make people feel like royalty when you</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">talk to them?</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">You'll know when you're at your most</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">charming, because you'll be making those</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">around you feel amazing...</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...simply for being them!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Whilst an assassin's smile or a seductive</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">wink can take you far, the real secret of</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">charm lies in the emotions you wrap around</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">your words.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">After all, this is also what triggers</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">emotions in other people...</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">4.) CONNECTION</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Sometimes you'll meet people who are totally</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">on your wavelength.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">But find the relationship frustratingly</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">fizzles out after a few weeks, rather than</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">lasting a lifetime.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">To connect with people on a profound level</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">you have to share a broad spectrum of</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">emotional experiences with them, over a</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">meaningful timescale.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">It's this combination of circumstance that</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">lowers both your defences and builds TRUST.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Happily there are some devilishly effective</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">ways to accelerate this process.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">5.) PRESENCE</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Marlon Brando commanded a presence so</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">powerful, that numerous women almost passed</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">out when they saw him on-screen.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Presence is all about adjusting the volume of</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">your personality, so you can get your message</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">across to the people around you... with</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">ABSOLUTE CLARITY.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Brando could pull the attention of his</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">audience towards him with a still,</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">introverted presence.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Likewise, comedian Jim Carrey hallmarks his</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">performances with a loud, extroverted</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">presence; which compliments his humour.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The power of your presence is directly</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">controlled by how emotionally reactive you</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">are to the people around you.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">===</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">~In the coming weeks, I will be sending you</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">tips and strategies based around these themes</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">so you can BOOST YOUR OWN CHARISMA.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">We'll start with some ideas about getting</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">your attitude into the right place and go</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">from there.</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I'll send you another newsletter in a couple</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">of days, loaded with a goldmine of</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">information: look out for it!</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Talk to you shortly,</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Marcus&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #222222; font-family: arial, sans-serif; font-size: 12.8px;"><a style="box-sizing: border-box; background-color: transparent; color: #1155cc; text-decoration-line: none;" href="mailto:marcus@yourcharismacoach.com" target="_blank" rel="noopener noreferrer">marcus@yourcharismacoach.com</a></div>	0	\N	f	2017-09-16 20:15:51.150395	2017-09-26 15:36:06.463222	15	0
10	2017.253	1	<p>Last night I had one of the best DILD experiences I have ever had. I don't remember what triggered the realization that I was dreaming but once I did i asked a woman to go down on me (typical sexual assertions) and they complied without any hesitation. I began to become more observant of my dream as a way of sustaining the dream. This technique worked better that I ever had before. Not only did I maintain the dream, but I was able to keep the same level of detail as an ordinary dream. I began telling other people that we were in a dream and as proof continued to ask other women to go down on me. I realized my opportunity and questioned my self as to what I could gain by the dream experience. I asked Ryan in my dream if he knew what the next Power Ball numbers would be. He began to recite some numbers and I asked him to wait for me to find something to write on because I explained to him that if I didn't write down the numbers I would not remember then when I awoke. I did awake and had a poor memory of the numbers, but good enough, I think for me to guess what they were. I had two more short dreams where I was lucid. In one of these I remember the dream dissolving into wakefulness.</p>	0	\N	f	2017-09-11 14:51:56.436827	2017-09-26 15:37:05.70221	10	0
8	Table of Contents	1	<p>{{TOC}}</p>	0	\N	f	2017-09-07 19:50:44.020148	2017-09-26 15:37:32.549696	8	0
23	02. Oakley	1	<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Every week, I like to grab a few minutes to&nbsp;share my latest thoughts (and meddlings) with&nbsp;you.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">My clients tell me they LEARN A LOT from my&nbsp;articles, so now I want you to get the chance&nbsp;to benefit from some of the best ones too.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">To kick things off, I'd want to talk to you&nbsp;today about CONFIDENCE &amp; SELF BELIEF.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">(I mean, confidence is something everyone&nbsp;wants BUCKETLOADS more of, right...?)</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">===</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Having super confidence has made my life&nbsp;better because i'm able to talk to people&nbsp;FEARLESSLY.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This means I find it very easy to just be&nbsp;myself and speak my mind. In turn people&nbsp;trust me to lead them because I have no fear&nbsp;of being judged by them.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">On my travels I often come across nice little&nbsp;mantras from the self improvement industry.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Take this one, for example:</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"Your past does not define who you are".</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">-Ever heard that before?</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">It's a nice empowering belief: I just wish it&nbsp;were 100% accurate.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The truth is that YOU are a by-product of all&nbsp;your past experiences.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Everything you have ever done in your life&nbsp;and your interpretation of each experience&nbsp;serves to make you who you are today.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">If you ever feel shy, or a bit awkward, at&nbsp;social gatherings it's because your&nbsp;subconscious absorbed data from similar&nbsp;interactions you had in the past.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Your mind then found common trends in the&nbsp;results you got and shaped your beliefs,&nbsp;identity and behaviours to match.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">For example, if you stumbled on your words&nbsp;and felt embarrassed at a party, your&nbsp;subconscious mind told you to keep quiet at&nbsp;future engagements.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This happened to me when I left school and&nbsp;started college.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I finally had a chance to create a brilliant&nbsp;first impression with a new peer group.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">However, because I didn't want make a mess of&nbsp;it I kept silent so no one could JUDGE ME.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Consequently, I became known as:&nbsp;&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;-'The Quiet Guy' (tm)</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I'm sad to say that Mr. Shy Guy had the&nbsp;lifestyle of a damn HERMIT!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">However, my mind was just acting in a way&nbsp;that kept me safe from being judged by my&nbsp;peers.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">YOUR MIND THINKS SHYNESS IS GREAT!</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Humans (that's me &amp; you) like to move toward&nbsp;short-term comfort even if it causes&nbsp;long-term pain...</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...in this case being anxious to socialize,&nbsp;having few friends and a small sphere of&nbsp;influence.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">However, understanding this concept is a&nbsp;truly empowering belief..!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">- It means that with enough exposure and the&nbsp;right interpretation of your experiences, you&nbsp;can reprogram yourself to assume any trait&nbsp;you WISH.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The one universal characteristic that is&nbsp;highly prized highly is CONFIDENCE.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I'm not talking about looking confident; I'm&nbsp;talking about BEING confident, so it shines&nbsp;and shimmers through everything that you do.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">We've all met someone who has confidence, is&nbsp;completely at ease and able to influence&nbsp;others.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I used to think these types of people were&nbsp;born with that gift: you either had it or you&nbsp;didn't.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Fortunately, anyone can gain confidence in&nbsp;all areas of their life if they know how to&nbsp;go about it.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">We all have at least some degree of&nbsp;confidence in certain areas- even if it's&nbsp;tying a shoelace competently.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Likewise, if you're confident in a sport you&nbsp;play, it's because your brain has gained&nbsp;enough references of your competency to allow&nbsp;you to believe you are good at it.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Once you see enough patterns of success in&nbsp;your ability to do something it becomes a&nbsp;self-fulfilling prophecy.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">THE PATH YOU MUST TAKE TO BOOST YOUR CONFIDENCE</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Since confidence has a direct correlation&nbsp;with positive experience, all you need are&nbsp;more positive reference points.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">For instance, the way to gain confidence in&nbsp;talking with people is to begin to gather&nbsp;positive experiences to fall back on.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This can be quite daunting because it might&nbsp;mean trying to do something you've never&nbsp;attempted before as you test the water and&nbsp;push your boundaries.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Maybe at first the conversations you have&nbsp;won't be great :-(</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">That's fine: you're already surpassing what&nbsp;you were doing previously, and that was to&nbsp;play it safe -maybe avoiding conversation&nbsp;completely!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">When you interact with people always look for&nbsp;the improvements that you're making rather&nbsp;than what went wrong.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">When you start to enjoy your conversations&nbsp;you'll find they often turn out well.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">- Perhaps the old man at the cash register&nbsp;gave you a beaming smile, or the cute flight&nbsp;attendant brushed her hand on your shoulder&nbsp;as she walked past your seat.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Consequently, this experience will become a&nbsp;reference that your subconscious will&nbsp;assimilate.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">As soon as you gain more of these reference&nbsp;points your mind will begin to see a pattern&nbsp;and it will use them to create new beliefs&nbsp;about your abilities with talking to people.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">You'll begin to create empowering beliefs&nbsp;about yourself:</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"I'm a likeable person"&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"People love talking to me"&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"I love being social."</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">-Each new reference adds another string &nbsp;to your bow.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">It reinforces these new beliefs and creates&nbsp;new positive ones too.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Before you know it, you're in an upward&nbsp;spiral and each new experience feeds each new&nbsp;belief, and that in turn creates new beliefs&nbsp;and experiences!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Soon enough, you'll come to find that you've&nbsp;grown into the 'new amazing you'.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">In reality, you allowed yourself to become&nbsp;what you always were anyway - before you got&nbsp;buried under the anxiety.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Sometimes it's not such smooth sailing.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">When you're gaining these new beliefs and&nbsp;empowering thoughts, you may find that you&nbsp;have confidence in one situation but not in&nbsp;another.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">For example, you may find you can suddenly&nbsp;talk to a stranger in a bar but have trouble&nbsp;conversing with a group of people at a bus&nbsp;stop.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This is the telltale sign of SITUATIONAL&nbsp;confidence.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">It's just like when your confidence in doing&nbsp;your shoelaces doesn't translate to the&nbsp;football pitch: here, your confidence in the&nbsp;ar doesn't fair well at the bus stop.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">THE SECRET TO EVERLASTING CONFIDENCE</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">To create UNIVERSAL CONFIDENCE in all&nbsp;situations you have to keep gaining more and&nbsp;more reference points in new,&nbsp;comfort-challenging situations...</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...and disprove any remaining beliefs that&nbsp;are holding you back.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">That means forcing yourself to talk to the&nbsp;bus stop crowd and see what positive things&nbsp;happen as a result.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Eventually, when you have pushed your&nbsp;boundaries in a variety of scenarios.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Maybe in the bank line, the grocery store,&nbsp;the local bar, the library, the street, the&nbsp;airport...</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...you'll build up so much MOMENTUM that you&nbsp;will be able to walk into any new environment&nbsp;already brimming with confidence.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This is because through persistence, you will&nbsp;give your subconscious no choice but to&nbsp;create that belief about you and accept your&nbsp;new confidence.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">No matter what the obstacles, when your&nbsp;thoughts follow:</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"I don't know that person but I want to&nbsp;become friends with them, so I will"</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">-you'll be well on your way to mastering&nbsp;charisma!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">To the new YOU!</div>	0	\N	f	2017-09-19 19:52:34.656942	2017-09-26 15:37:55.953887	23	0
13	Summary	1	<p>Hundreds of UFO&rsquo;s; glowing discs 1000 meters across, appear in the skies of earth. They make no contact or interfere in any way. They hover over major cities for a year and depart as suddenly as they arrived. They leave nothing behind except well documented evidence of their existence and the question as to why they where here. There are several unexplained disappearances of people around the globe, including an Iranian toddler and his family.</p>\r\n<p>In the social anarchy caused by the visitation, a televangelist, Javier Ronsen (JR), gains a large following due his charisma and his explanation of the visitation. He claims the UFOs resemble the &ldquo;angels&rdquo; he saw during a near death experience. He believes the angels were sent to evaluate the earth a prelude to armageddon. Their departure without doing anything is a sign that they have given us another chance to return to a &ldquo;righteous&rdquo; society. With his group of followers and a renegade General, JR is able to overthrow the government and establish a Theocracy built around his church. [Rise of the Televangelist]</p>\r\n<p>Paxxa returns on a smaller version of the original UFOs. It does not actually land, but hovers a few feet above of the East River adjacent to former United Nations building which JR has made the seat of his government. The glow diminishes and Paxxa crosses a gang plank to address the gathered assembly at the UN. He says he wants to share the knowledge of the Raquesti with the people of earth. He ends his speech with the words, &ldquo;Let Me Help&rdquo;. Paxxa and JR form a partnership to improve the life of all.</p>\r\n<p>Since establishing the Theocracy, JR has had to deal with the annoyance of groups with other interpretations of the UFOs. These groups have become a marginalized minority, denied the benefits of those living under the rule of the Theocracy. These groups are now drawn to Paxxa, seeking his validation. JR create the Institute for Raquesti Studies, with Paxxa as it's head. In this way, JR hopes to be able to influence these groups through Paxxa. Paxxa travels throughout the Theocracy setting up branch campuses of the IRS and communes for the marginalized. He begins to see the injustice at how they are treated.</p>\r\n<p>Paxxa gains a following among the marginalized. JR becomes worried at his growing power and begins to see him as a threat. JR begins a campaign to discredit Paxxa. Nicole and her Gestapo begin hounding Paxxa. Paxxa seeks refuge with the underground resistance, the Machi, that is born in the communes.</p>\r\n<p>Working in his lab in Fontana Dam, Greg Macsen creates a device based on his theory that there is a counterpart to a Black Hole which he has termed a &ldquo;White Bubble&rdquo;. A Black Hole allows matter to escape our space-time. In contrast, a White Bubble allows a special type of energy to seep into our space-time from the Bulk (M-Theory reference). The purpose of the device is to create a White Bubble, opening a hole in our space-time to allow the Bulk&rsquo;s energy to trickle through. When the device is turned on, a small white sphere appears in the device containment field. Seeing the sphere, Greg at first thinks he has achieved his goal. But as he tries to measure the energy, his instruments only register the light being reflected/refracted by the sphere. Unknown to Greg, the device lacks the ability to sustain the hole Greg was trying to create and what started as a hole, became a tunnel as the hole attaches itself to another point in our space-time.</p>\r\n<p>Greg stares at the sphere and falls asleep. He has an incredibly vivid dream of a past time with his estranged wife, Dot. Greg soon learns that whenever he falls asleep staring at the sphere, he has these vivid dreams. Greg does not realize what is happening is when he focuses on the sphere to the exclusion of all else, his perception is of what is at the other end of the tunnel. Where/when the other side of the tunnel attaches itself depends on Greg&rsquo;s thoughts and emotions when it is created. His focus is so complete that through the sphere he can experience a complete perception of the other side as if he were actually there. The experience is perception only and he is unable to interact within the experience.</p>\r\n<p>Greg never got over the emotional loss of his wife&rsquo;s leaving. He goes to &ldquo;dream&rdquo; with the sphere more and more to remember the happier times with Dot. Greg becomes addicted to literally reliving the past. He displays all the symptoms of an addict, including listlessness when he is not &ldquo;dreaming&rdquo;, forgetting more important activities (ie eating), withdrawn.</p>\r\n<p>Paxxa and Greg meet. Greg guards the secret of the device. Unknown to Greg, Paxxa witnesses Greg using the device. Because of his empathic abilities, Paxxa understands what Greg is doing. After slowly gaining Greg&rsquo;s trust, Paxxa reveals the science behind the device. Greg begins to understand and shows the device to Paxxa.</p>\r\n<p>Paxxa and Greg work together to improve the device, creating a smaller version, the Black Box. Using a meditation/hypnotic technique that Paxxa learned on Raquesti, they are able to create a seed in their consciousness that will determine the endpoint of the tunnel when the Black Box is switched on. They discover they can continue to view the other side as long as they simply observe without thinking about the physical reality on their side of the tunnel. They are able to view the present as well as the past. They are unable to see the future because of the infinite possibilities the future represents. When they try all they can see is a shifting, multi-color, fractal kaleidoscope.</p>\r\n<p>Nicole, a past friend of Dot and now head of the Theocracy&rsquo;s Gestapo, has been visiting Greg to gloat over his loss of Dot. Nicole has an attraction to Dot and was instrumental in her break up with Greg by intriducing Dot th the Church on which the Theocracy is based. When Greg is addicted to the device, Nicole takes pleasure in seeing Greg as a broken man. But when Paxxa teams up with Greg, Nicole notices a positive change in Greg. Nicole endeavors to find out the cause of the change in Greg so that she can reverse to make Greg as despondent as he was before. Nicole discovers the device, but Greg and Paxxa take the device to hide with the Resistance underground. Nicole informs JR, the head of the Theocracy about the device and together, with the General (leader of the Theocracy&rsquo;s military and key figure in the coup d'etat that put the Theocracy in power) they begin a campaign to capture the Black Box.</p>\r\n<p>The Black Box is captured by the Theocracy. Greg and Paxxa turn to the Resistance for help to plan a clandestine attempt to steal it back. None of JR&rsquo;s staff has been able to determine how the Black Box works. During the attempt to steal back the Black Box, Paxxa is captured and brought before the General. The General demands Paxxa tell him how to use the Black Box. Paxxa refuses and is physically tortured, including being beaten. JR comes to witness the General&rsquo;s attempts to make Paxxa reveal the secret of the Black Box. JR sees the General&rsquo;s techniques are ineffective. JR puts a gun to Paxxa&rsquo;s head saying that if Paxxa does not tell them, there is no point in keeping him alive. JR gives Paxxa the Black Box and tells him he has one last chance. At this moment, Paxxa discovers that he can transport himself through the tunnel created by the Black Box. JR and the General watch as the room where Paxxa lies distorts like a sheet of rubber being stretched away from them. Paxxa appears to become smaller as he moves toward the vanishing point. The room snaps back to its flat state, but Paxxa is no longer there. JR and the General begin to argue, each accusing the other of allowing Paxxa to escape. JR shoots the GEneral in the head, killing him. Nicole becomes the defacto head of the military.</p>\r\n<p>Bloodied and barely able to stand, Paxxa suddenly appears amid a meeting of the Resistance leaders and Greg. Paxxa explains what has happened and that the Black Box was left behind. Paxxa&rsquo;s spaceship rescues him because of his injuries and returns him to Raquesti.</p>	0	\N	f	2017-09-16 17:35:20.467903	2017-09-26 15:38:10.946429	13	0
16	2017.260	1	<p>In som second act at cnn, write from Jr's perspective, be JR, asume the role.</p>\r\n<p>&nbsp;</p>	\N	\N	f	2017-09-17 13:28:47.58579	2017-09-26 15:38:26.262106	16	0
79	2018.117 	1	<p>DILD last night. Awareness was short lived. Woke almost&nbsp; immediately.&nbsp; Rewarded myself appropriately.&nbsp;</p>\r\n<p>&nbsp;</p>	\N	\N	f	2018-04-27 01:35:28.570408	2018-04-27 01:35:28.58847	79	0
12	Me	1	<p>{{TOC}}</p>	2	\N	f	2017-09-16 12:29:43.977191	2017-10-05 18:04:11.691337	-4	0
9	Lucid Dreaming	1	<p>A link to all journal entries that are about DILD (Dream Induced Lucid Dreaming) and WILD (Wake Induced Lucid Dreaming)</p>\r\n<p>{{TOC}}</p>	0	\N	\N	2017-09-11 14:37:38.323465	2017-10-24 12:29:35.036976	4	0
71	2018.055	1	<p>Grace = Positivity&nbsp;</p>\r\n<p>Grace or positivity is knowing that whatever&nbsp; happens will be good for you and you will project the energy to help it happen. It is a quiet confident faith</p>	\N	\N	f	2018-02-24 10:26:48.10472	2018-02-25 03:50:20.918124	71	0
72	2018.057	1	<p>People have aways used God (s) as a way of explaining what they did not&nbsp; understand, or what science has not yet explained.</p>	\N	\N	f	2018-02-26 03:16:53.882065	2018-02-26 03:16:54.046331	72	0
74	2018.058	1	<p>Love is metaphysical energy radiated outward.&nbsp;</p>	\N	\N	f	2018-02-27 19:07:22.326381	2018-02-27 19:07:22.350806	74	0
86	2018.163 Dream Invasion	1		\N	\N	f	2018-06-12 12:31:58.085496	2018-06-12 12:31:58.107827	86	0
104	Sleep hypno Script	1	<p>No worries</p>\r\n<p>Drain the stress</p>\r\n<p>totally relaxed</p>\r\n<p>Deep Sleep</p>\r\n<p>Lucid Dream</p>\r\n<p>Green Door</p>\r\n<p>New Path</p>	\N	\N	f	2018-12-21 12:17:22.086279	2018-12-21 12:17:22.086279	0	0
94	2018.292	1	<p>Dild last night. Vivid detail.</p>	\N	\N	f	2018-10-19 13:40:36.647223	2018-10-19 13:41:32.493142	94	0
27	Story Notes	1		5	\N	f	2017-09-20 19:28:14.625206	2017-10-05 17:45:34.260788	27	0
3	To Do	1	<p>2. Refresh sidebar after wiki action</p>\r\n<p>4. enhance search function with multi word matching</p>\r\n<p>5. have menu clear and show only item and hierarchy of children</p>\r\n<p>8. Hover text doesn't always hide on blur</p>\r\n<p>10. list not showing in tinymce menu</p>\r\n<p>add templates with fields</p>	1	\N	\N	2017-09-03 13:58:29.738417	2017-10-05 18:04:22.227337	-3	0
6	Journal	1	<p>{{TOC}}</p>	1	\N	\N	2017-09-07 17:32:12.637893	2017-10-05 18:04:32.829991	-2	0
67	Patience	1	<p><span style="color: #333333; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Hope is patience with the lamp lit. </span></p>\r\n<p><span style="color: #333333; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">Tertullian</span></p>	46	\N	f	2018-02-01 18:49:03.078871	2018-02-01 18:49:03.117559	67	0
60	2017.343	1	<p>Dad, protect me</p>\r\n<p>Ann, give me&nbsp; strength&nbsp;</p>\r\n<p>Raju, guide me.</p>	\N	\N	f	2017-12-09 09:39:02.318113	2017-12-09 09:39:02.338965	60	0
55	2017.330	1	<p>Went back to sleep after taking Ann to work. In my dream I was trying to detrmine if it was a dream. Even asking myself if what I was experiencing was real. I Came to satisfactory answer. Still I decided to act as I wanted anyway. Mosting demanding every woman to let me play with their boobs. The dream lasted for what seemed to relatively long time for a dream. Twice I tried to remain dreaming and not wake up. I could even feel my self lying in the bed at one point, but I was determined to stay in the dream.</p>	\N	\N	f	2017-11-26 01:19:41.883771	2017-11-26 01:19:41.925071	55	0
26	03. Oakley	1	<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Marcus here. Today I want to share my tips&nbsp;with you about developing your sense of&nbsp;SPONTANEITY!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Spontaneous people have more fun, make&nbsp;decisions faster, hold better conversations,&nbsp;and inspire the imagination of others.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Curious how to get some more of that? Have a&nbsp;nose below to unlock the answer!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">===</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">\r\n<div>Being spontaneous doesn't necessarily mean&nbsp;attending&nbsp;a drunken wedding at&nbsp;<span class="aBn" style="border-bottom: 1px dashed #cccccc; position: relative; top: -2px; z-index: 0;" tabindex="0" data-term="goog_2140849759"><span class="aQJ" style="position: relative; top: 2px; z-index: -1;">3am</span></span>&nbsp;to a transvestite&nbsp;CHIMPANZEE in Reno...</div>\r\n</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...it can simply involve adding a curious&nbsp;TWIST to your day.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The trouble is, spontaneity is something that&nbsp;a few people don't really agree with because&nbsp;they associate being spontaneous with being&nbsp;erratic and unpredictable.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Being 'predictable' means that we act as if&nbsp;we are in control and feel comfortable.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Consistent behaviour like this is valued in&nbsp;society because it implies integrity in a&nbsp;person.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The downside is that it also leads to mental&nbsp;lethargy because we stop taking risks:&nbsp;censoring our conversations and stifling our&nbsp;actions to avoid pushing our boundaries too&nbsp;much.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The truth is that a little inconsistency is&nbsp;good for YOU.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">It gives your personality an edge of&nbsp;excitement.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">It can feel amazing to stir things up &nbsp;and&nbsp;express yourself freely.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The first step to freeing yourself is to&nbsp;surrender the control that your self-image&nbsp;has over you.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Throughout your life you will be criticised&nbsp;no matter what you do.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Sucks, I know.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Nobody gets it right all the time; the most&nbsp;fascinating people don't get things right at&nbsp;all!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Make peace with being judged because it will&nbsp;free you to act completely uninhibited.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Rather than constantly trying to monitor your&nbsp;image, express all your insecurities,&nbsp;happiness, and thoughts.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">SCATTER them all out there and see if you&nbsp;feel any worse for feeling LIBERATED.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">As Bernard Baruch (dead charismatic millionaire)&nbsp;famously quipped:</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp; &nbsp; "Those who matter don't mind, and those &nbsp;who mind don't matter."</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Like any good quality or reflex, spontaneity&nbsp;has to be practiced before it can truly&nbsp;become useful.&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Here are 7 PRACTICAL TIPS to help you get&nbsp;started and build up your impulsiveness:</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">1.) BE A NAUGHTY SO-AND-SO</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">When you break the rules of society you&nbsp;immediately feel liberated.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Go ring a doorbell and run away; throw a&nbsp;snowball at a policeman (!); or, whizz down&nbsp;the aisles of your local grocery store,&nbsp;perched on the back of a shopping cart.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">You'll often find that the repercussions will&nbsp;be minimal, if at all. This will encourage&nbsp;you to revel in your spontaneity further.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">2.) FOCUS YOUR ATTENTION ON THE PRESENT&nbsp;MOMENT</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">So often our inclination to impress outweighs&nbsp;our inclination to express.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Dwelling on any thoughts that might be&nbsp;running through your mind detaches you from&nbsp;enjoying the present moment.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This makes you second-guess your behaviours&nbsp;as you 'check' back in with reality.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">The trick is to replace your inner voice (the&nbsp;chatter box) with something else.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Focus your awareness on drinking up the&nbsp;energy of your surrounding environment.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Pay attention to what you see and hear and&nbsp;make no judgments about the experience; that&nbsp;would turn your chatterbox back on.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Simply let them wash over you in STILLNESS.&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This will reduce your conscious need to&nbsp;control and manage your behaviours and free&nbsp;you to act in a less inhibited manner.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">3.) TAKE A CRAZY RISK</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Last year, I attended a daylong seminar&nbsp;headed by an NLP trainer.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I noticed there was a cupboard behind the&nbsp;stage the trainer was stood upon.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">For some reason, I figured it would be&nbsp;amusing if somebody were to unexpectedly pop&nbsp;their head out from behind the door as he&nbsp;spoke.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">During the interval, I decided to hide inside&nbsp;the cupboard and test my hypothesis. Just as&nbsp;the presenter said:</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"Let's all work to become more&nbsp;spontaneous...!"</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">I leapt out, walked across the stage and&nbsp;said: "Sorry I'm late!"</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">It could've been a disastrous thing to do but&nbsp;it got a huge laugh.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Either way, a risky action usually makes a&nbsp;good story.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">4.) SAY 'YES' MORE</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Back in 2004, Danny Wallace decided he wasn't&nbsp;happy being single, alone and stuck indoors&nbsp;every weekend.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">One day he decided to say 'Yes' to every&nbsp;favour, request, suggestion and invitation&nbsp;that crossed his path.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;"><span class="aBn" style="border-bottom: 1px dashed #cccccc; position: relative; top: -2px; z-index: 0;" tabindex="0" data-term="goog_2140849760"><span class="aQJ" style="position: relative; top: 2px; z-index: -1;">Seven years later</span></span>&nbsp;he is a best selling&nbsp;author, traveling the globe as a TV presenter&nbsp;and had married the girl of his dreams...</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...and JIM CARREY starred as him in a&nbsp;blockbuster movie about his life!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Result!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Saying 'YES' where previously you would have&nbsp;said 'NO' forces you to let go of your rigid&nbsp;schedule and embrace adventure.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Check out his book, you can probably get it a&nbsp;dog-eared copy cheap off Amazon (nb. great&nbsp;toilet reading!)</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">5.) CHANGE YOUR ROUTINE</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Having set patterns in life is comfortable.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">People return to similar holiday destinations&nbsp;year in, year out, because they know what to&nbsp;expect; drama is kept to a minimum.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">(As a kid, did you used to spend your summers&nbsp;in the same place?)</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Without DRAMA you have NO GROWTH :-(</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">If you drive into work every day, try cycling&nbsp;instead. If you buy a Starbucks each morning,&nbsp;buy an ice cream (whoa!)!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Add an element of potential catastrophe, no&nbsp;matter how small, into your daily life and&nbsp;get comfortable with the ensuing chaos.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">6.) MAKE FLIP DECISIONS</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">If you're feeling particularly brave, make&nbsp;decisions based on the flip of a coin, roll&nbsp;of a dice...</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...or shake of a magic 8-ball toy.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">This will force you to surrender all control&nbsp;of your actions to chance.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">For a slightly less stressful approach, write&nbsp;down on bits of paper all the things you are&nbsp;prepared to do when a decision comes along.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Put them into a hat and complete whichever&nbsp;one you pull out.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Scary!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<h1 style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">7.) PLAY WELL EVERYDAY</h1>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Make a point to re-engage with your inner&nbsp;child and indulge in the miracle of play.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Next time you are out, try balancing on a&nbsp;wall, or having some fun on sliding down a&nbsp;stair rail.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">In most adults, the playful mind is often&nbsp;buried deep after years of disciplined&nbsp;schooling, safety lectures and business&nbsp;meetings.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Think like a kid...</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...plan and execute a ludicrously FUN project&nbsp;for yourself, whether it's building a tree&nbsp;house, climbing a really big tree or making a&nbsp;potato cannon (!)</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Rediscovering your childlike side helps you&nbsp;to adopt creative thought patterns and having&nbsp;little concern for your identity.</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Make a point today to do something&nbsp;spontaneous today: whether if it's gargling&nbsp;your coffee, repeating everything someone&nbsp;says in an Italian accent...</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">...or after every sentence, say 'Mon' in a&nbsp;really bad Jamaican accent. As in:</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">"...the report's on your desk, Mon".</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;-Right, I'm off to build a potato cannon!</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">&nbsp;</div>\r\n<div style="color: #222222; font-family: arial, sans-serif; font-size: 12.8px;">Go Crazy!!</div>	14	\N	f	2017-09-20 19:14:17.11866	2017-09-26 15:38:49.287407	26	0
87	2018.181	1	<p>The definition of predudice is catagorizing people. Not treating them as individuals,&nbsp; but labeling them into groups. Assigning attributes to them as members of their group.</p>	\N	\N	f	2018-06-30 01:41:59.363343	2018-06-30 01:41:59.38076	87	0
61	2018.002	1	<p>It is amazing to see the stardate function working as aspected.</p>\r\n<p>The reason that the first contact is going to cause such chaos is that regardless of all the science, philosophy, religion that we believe in, humans still see themselves as the center of the universe. First contact will destroy that deep seated world view. Some will deny what they see and believe there must be an alternative explaination. Others will see it as the destruction of all social mores and act to protect them selves regardless of the cost other. There are some who will see it a confirmation of their beliefs and sacrafice themselves to it. There are those who will see it a natural consequence of our reality that was bound to happen at some time.</p>	\N	\N	f	2018-01-02 17:40:14.911423	2018-01-03 15:13:37.511093	61	0
57	2017.336	1	<p>I haven't achieve luck because I haven't fulfilled my contract with myself. Health,&nbsp; outlook, socialability. I have the means to achieve each of these.</p>	\N	\N	f	2017-12-02 19:02:55.979774	2017-12-02 19:02:56.01619	57	0
58	2017.337	1	<p>Don't feel sorrow at what's been left behind. Be grateful for past opportunities.&nbsp; Be excited for those yet to come.</p>	\N	\N	f	2017-12-03 16:05:02.96947	2017-12-03 16:05:02.989009	58	0
105	Sleep hypno Script	1	<p>No worries</p>\r\n<p>Drain the stress</p>\r\n<p>totally relaxed</p>\r\n<p>Deep Sleep</p>\r\n<p>Lucid Dream</p>\r\n<p>Green Door</p>\r\n<p>New Path</p>	\N	\N	f	2018-12-21 12:17:24.0521	2018-12-21 12:17:24.0521	0	0
59	2017.341	1	<p>The significance of the number eleven in Raquesti meditation.</p>\r\n<p>Chakras, Kabala,&nbsp; Dimensions&nbsp;</p>	\N	\N	f	2017-12-07 02:08:27.104619	2017-12-07 02:08:27.126797	59	0
63	2018.006	1	<p>My beliefs create my own reality.&nbsp;</p>	\N	\N	f	2018-01-06 17:31:31.905111	2018-01-06 17:31:31.98578	63	0
64	2018.015	1	<p>Not knowing something does not make you stupid.</p>\r\n<p>Not asking for help does make you stupid.</p>\r\n<p>Pretending to know what you don't know will may you look like a complete idiot.</p>	\N	\N	f	2018-01-15 03:33:57.788267	2018-01-15 03:33:57.806647	64	0
106	Sleep hypno Script	1	<p>No worries</p>\r\n<p>Drain the stress</p>\r\n<p>totally relaxed</p>\r\n<p>Deep Sleep</p>\r\n<p>Lucid Dream</p>\r\n<p>Green Door</p>\r\n<p>New Path</p>	\N	\N	f	2018-12-21 12:17:29.552661	2018-12-21 12:17:29.552661	0	0
75	2018.066	1	<p>During meditation to nite I created an attitude of grace and positively and awareness like barking dog episode combined with peripheral perception.&nbsp; I could feel the energy within me, even though slightly.</p>\r\n<p>The mindset is how you should feel if you knew that tomorrow the things you wanted most were going to happen. Or if you selected a goal knowing you would be given whatever resources you needed to achieve it.</p>	\N	\N	f	2018-03-07 02:30:17.090879	2018-03-09 02:10:09.437874	75	0
111	2019.011	1	<p>Am I happy? Yes. Could I be happier? Probably, but given that life isn't fair, I'll take what I 've got.</p>\r\n<p>I have purpose. Take care of my boys (pay off student loans). Take care of my mom. Take care of Ann, she isn't well.</p>	\N	\N	f	2019-01-11 02:36:21.721272	2019-01-11 02:36:21.763818	111	0
76	2018.084	1	<p>I am being the best I&nbsp;know how to be. I will try to get better but I will not allow myself to get worse.</p>	\N	\N	f	2018-03-25 18:12:17.945038	2018-03-25 18:12:17.967188	76	0
77	2018.099	1	<p>The day you start thinking you are too old to do something is the day you start dying.</p>	\N	\N	f	2018-04-09 02:02:12.829051	2018-04-09 02:02:12.86775	77	0
80	2018.151	1	<p>What you have faith in is a personal, subjective experience.&nbsp; Even in an organized religion no two people can experience God in the same way. Having faith is what is important.&nbsp;</p>	\N	\N	f	2018-05-31 01:50:48.181156	2018-05-31 01:50:48.221566	80	0
73	2018.057	1	<p>This one was interesting because it invloved a woman I knew and had some affection for. Richard Tucker as my boss set us up by leading us to a room in his house with a bed. Omitting details, she was too shy to make love and left. I tried to find her. I began to realize it was a dream and tried to maintain the dream so I could find her thinking this wou ld enable me to find her in waking life.</p>	\N	\N	f	2018-02-26 14:18:31.958906	2018-06-04 15:59:23.692077	73	0
93	2018.223	1	<p style="text-align: left;">Dreamed of DAD. Was at her house and introduced her to my wife, Ann. When we were alone I took her hand told her I have never stopped loving her.</p>	\N	\N	f	2018-08-11 02:29:58.592853	2018-08-11 02:29:58.612555	93	0
107	Sleep hypno Script	1	<p>No worries</p>\r\n<p>Drain the stress</p>\r\n<p>totally relaxed</p>\r\n<p>Deep Sleep</p>\r\n<p>Lucid Dream</p>\r\n<p>Green Door</p>\r\n<p>New Path</p>	\N	\N	f	2018-12-21 12:17:34.144384	2018-12-21 12:17:34.144384	0	0
108	Sleep hypno Script	1	<p>No worries</p>\r\n<p>Drain the stress</p>\r\n<p>totally relaxed</p>\r\n<p>Deep Sleep</p>\r\n<p>Lucid Dream</p>\r\n<p>Green Door</p>\r\n<p>New Path</p>	\N	\N	f	2018-12-21 12:17:35.147451	2018-12-21 12:17:35.147451	0	0
109	Sleep hypno Script	1	<p>No worries</p>\r\n<p>Drain the stress</p>\r\n<p>totally relaxed</p>\r\n<p>Deep Sleep</p>\r\n<p>Lucid Dream</p>\r\n<p>Green Door</p>\r\n<p>New Path</p>	\N	\N	f	2018-12-21 12:17:52.973748	2018-12-21 12:17:52.973748	0	0
110	Sleep hypno Script	1	<p>No worries</p>\r\n<p>Drain the stress</p>\r\n<p>totally relaxed</p>\r\n<p>Deep Sleep</p>\r\n<p>Lucid Dream</p>\r\n<p>Green Door</p>\r\n<p>New Path</p>	\N	\N	t	2018-12-21 12:17:54.691423	2019-01-23 12:58:09.472504	0	0
34	2017.273	1	<p>Paxxa stresses that on must be responsible for their own morality. Morality is a choice, not a rule imposed by a higher authority.</p>	\N	\N	f	2017-09-30 12:44:27.35448	2017-09-30 12:44:27.405322	34	0
5	Novel	1	<h1 style="font-size: 30pt; font-family: Rokkitt, serif; line-height: 1.1; text-align: center; color: #0000cc;"><strong>The Science of Miracles</strong></h1>\r\n<h2 style="font-family: Verdana, Geneva, sans-serif; line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 14pt; font-style: italic; text-align: center;">A novel of human spiritual evolution</h2>\r\n<h3 style="font-family: inherit; font-weight: normal; line-height: 1.1; margin-top: 20px; margin-bottom: 10px; font-size: 12pt; text-align: center;">By Ben McKibben</h3>\r\n<p style="margin: 0px 0px 10px;">Paxxa was an Iranian toddler who was abducted by extraterrestrials during the Tehran UFO Incident in 1976. He was taken to Raquesti home world orbiting a binary sun. He was assimilated into Raquesti culture and has returned to earth as a missionary for an alien religion. He befriends a dysfunctionally nostalgic, former physics professor. When they create a device that seems to use higher dimensions to enhance &ldquo;psychic abilities&rdquo;, they reluctantly become involved in a resistance movement against a despotic theocracy.</p>\r\n<p>{{TOC}}</p>	4	\N	f	2017-09-07 17:30:02.504727	2017-10-05 18:04:00.231984	-5	0
21	ESP	1	<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Within the model of reality I have proposed, there is this explanation of how Extrasensory Perception (ESP) works.</span></p>\r\n<p><strong id="docs-internal-guid-73f6d68b-962a-2223-e3c4-88da0601bf45" style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">ESP is defined as &ldquo;perception or communication outside of normal sensory capability, as in telepathy and clairvoyance.&rdquo;</span><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"> Our normal senses are limited by the physics or our four dimensional (4D) reality, meaning they are limited by proximity in time and space. In order for us to explain phenomena like telepathy or clairvoyance we must define a mechanism for perception beyond our limitations.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">It is important to realize that one of the dimensions of our 4D is time and that when view from the higher dimensions, the view of our 4D contains all of space and </span><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: italic; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">time: </span><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">past, present and future. A view of our 4D from the higher dimensions would include everything, everywhere, that ever happened. So if we could somehow gain access to this view we would be able to see all of these thing, assuming we had to capacity to recognize all of it.</span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">My definition of the self includes our soul that exists in the higher dimension and projects a life force that creates and maintains our corporeal consciousness. In most cases there is no information exchange between our soul and our selfs. However, our soul is in the right location to view all that goes on in our 4D. </span></p>\r\n<p><strong style="font-weight: normal;">&nbsp;</strong></p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">If it were possible for informations to be exchange between these two parts, then we would have defined a method by which ESP would work. Our corporeal consciousness could make a request of our soul and the soul would supply information from its perspective in the higher reality.</span></p>\r\n<p>&nbsp;</p>\r\n<p dir="ltr" style="line-height: 1.38; margin-top: 0pt; margin-bottom: 0pt;"><span style="font-size: 11pt; font-family: Arial; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">That means of exchange does exist. Faith is the mechanism by which the corporeal consciousness makes a request of our soul.</span></p>	0	\N	\N	2017-09-18 18:05:16.753707	2017-09-26 14:18:22.118723	3	0
30	2017.264	1	<p>Good progress on Paxxa wiki</p>\r\n<p>Submitted application for NIC Web Developer position</p>	\N	\N	f	2017-09-21 19:54:44.338654	2017-09-26 15:43:27.721525	30	0
31	2017.266	1	<p>What keeps me awake at night is anger. Anger at the crap I have to put up with from the people who depend on me.</p>	\N	\N	f	2017-09-23 03:12:37.143875	2017-09-26 15:43:48.37537	31	0
35	2017.275	1	<p>Great nights sleep last night!</p>	\N	\N	f	2017-10-02 01:21:57.369477	2017-10-02 01:21:57.420624	35	0
36	2017.278	1	<p>If you can't find someone to love, find someone who loves you.</p>	\N	\N	f	2017-10-05 00:51:36.05123	2017-10-05 00:51:36.098221	36	0
37	Chapter 01	1	<p>An Iranian fighter pilot is scrambled to investigate a UFO. A one sided dogfight ensues which consists of the fighter trying to elude the UFO. The fighter suddenly disappears. It is presumed crashed, but no debris is ever found. Then the UFO incident is investigated, authorities learn that the pilots wife and child have been missing since the UFO was sighted near their village.</p>	13	\N	f	2017-10-05 17:50:16.939232	2017-10-05 17:50:16.939232	1	0
39	2017.286	1	<h1>DILD</h1>\r\n<p>Ann and I were at another couples house. I was think about sex and I thought to myself, "I can do what ever I want, this is just a dream"</p>	\N	\N	f	2017-10-13 17:46:07.533131	2017-10-13 17:46:07.55386	39	0
40	2017.297	1	<p>I recently read that WILD might be easier when napping. The reason being that in normal sleep there is an intervening dreamless state between falling asleep and REM. When napping the person usually passes right into REM after falling asleep.</p>	\N	\N	f	2017-10-24 12:28:17.647391	2017-10-24 12:28:17.66463	40	0
38	Author Page	1	<p style="text-align: center;"><span id="docs-internal-guid-e1698c05-edaa-6f30-75c5-c7c7730f6d0d">&nbsp;</span></p>\r\n<div dir="ltr" style="margin-left: 0pt;">\r\n<table style="border: none; border-collapse: collapse; margin-left: auto; margin-right: auto;"><colgroup><col width="318" /><col width="318" /></colgroup>\r\n<tbody>\r\n<tr style="height: 56pt;">\r\n<td style="border-left: solid #000000 0.75pt; border-bottom: solid #000000 0.75pt; border-top: solid #000000 0.75pt; vertical-align: top; padding: 0pt 5.4pt 0pt 5.4pt;">\r\n<p dir="ltr" style="line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-indent: 36pt;"><span style="font-size: 12pt; font-family: 'Courier New'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Ben McKibben</span></p>\r\n<p dir="ltr" style="line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-indent: 36pt;"><span style="font-size: 12pt; font-family: 'Courier New'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">Greenwood, Indiana</span></p>\r\n<p dir="ltr" style="line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-indent: 36pt;"><span style="font-size: 12pt; font-family: 'Courier New'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">317.409.6295</span></p>\r\n<p dir="ltr" style="line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-indent: 36pt;"><span style="font-size: 12pt; font-family: 'Courier New'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;">McKibben@att.net</span></p>\r\n</td>\r\n<td style="border-right: solid #000000 0.75pt; border-bottom: solid #000000 0.75pt; border-top: solid #000000 0.75pt; vertical-align: top; padding: 0pt 5.4pt 0pt 5.4pt;">\r\n<p dir="ltr" style="line-height: 1.2; margin-top: 0pt; margin-bottom: 0pt; text-indent: 36pt;"><span style="font-size: 12pt; font-family: 'Courier New'; color: #000000; background-color: transparent; font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;16,000 words.</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>	5	\N	f	2017-10-05 17:52:59.841711	2017-10-05 17:56:44.977701	1	0
42	Quotes	1	<p>[[TOC]]</p>	\N	\N	t	2017-10-30 13:23:44.453001	2017-10-30 13:25:55.178793	5	0
43	Quotes	1	<p>[[TOC]]</p>	\N	\N	t	2017-10-30 13:24:19.158951	2017-10-30 13:26:03.95679	5	0
41	Quotes	1	<p>[[TOC]]</p>	\N	\N	t	2017-10-30 13:23:38.115066	2017-10-30 13:26:11.842858	5	0
44	Quotes	1	<p>[[TOC]]</p>	\N	\N	t	2017-10-30 13:24:20.185607	2017-10-30 13:26:26.166379	5	0
45	Quotes	1	<p>[[TOC]]</p>	\N	\N	t	2017-10-30 13:24:20.757042	2017-10-30 13:26:35.098616	5	0
46	Quotes	1	<p>{{TOC}}</p>	\N	\N	f	2017-10-30 13:24:21.390042	2017-10-30 13:27:01.401541	-5	0
47	Predjudice	1	<p>I believing in treating everyone as a unique individual.</p>	46	\N	f	2017-10-30 13:28:11.62414	2017-10-30 13:28:11.643787	47	0
48	2017.305	1	<p>Woke about 5am and tried to put myself back to sleep by reciting Sacred&nbsp; Heart and reminding myself to look for lotto numbers</p>	\N	\N	f	2017-11-01 13:38:13.634863	2017-11-01 13:38:13.655046	48	0
49	2017.315	1	<p>No one is perfect. No one will ever be perfect. Everyone&nbsp; can improve. But to improve you have to start from where you are. You have to accept where you are.&nbsp;</p>	\N	\N	f	2017-11-11 00:44:58.403424	2017-11-11 00:44:58.4257	49	0
50	2017.316	1	<p>Love is impossible without trust</p>	\N	\N	f	2017-11-12 02:41:31.85665	2017-11-12 02:41:31.879869	50	0
51	2017.318	1	<p>With meditation you affirm before hand that good will come of it. Then whill you meditate you become a neutral emotion.</p>	\N	\N	f	2017-11-14 16:07:29.791427	2017-11-14 16:07:29.811347	51	0
52	2017.320	1	<p>She has made lack of self esteem into a neurotic obsession.</p>	\N	\N	f	2017-11-16 02:38:24.116777	2017-11-22 21:29:04.506749	52	0
53	2017.325	1	<p>Hold your head up. Have faith in your beliefs.&nbsp;</p>	\N	\N	f	2017-11-21 22:01:48.514642	2017-11-21 22:02:42.67075	53	0
54	2017.327	1	<p>Government is not going to save you from itself. In resistance there is hope.</p>	\N	\N	f	2017-11-23 16:55:45.558874	2017-11-23 17:30:29.595286	54	0
56	2017.331	1	<p>Add JR'S platform to UFO Arrival chapter</p>	\N	\N	f	2017-11-27 02:08:58.13814	2017-11-27 02:08:58.154093	56	0
62	2018.003	1	<p>If you want me to love you, be someone I can love</p>	\N	\N	f	2018-01-03 15:11:57.813682	2018-01-03 15:11:57.847427	62	0
78	2018.105	1	<p>First WILD last night.&nbsp; I don't know if it should be called a WILD or DILD. It happened thus:</p>\r\n<p>I was alrady dreaming and the dream was beginning to fade. I could still see the dream and I could feel the bed underneath me. At that moment I realized I had been dreaming. Tha was the first occurance. IT happend a second time, except once I had the dream realization, I was able to go back into the dream, but without the realization.</p>\r\n<p>I have been trying to precipate a DILD using a recently discovered method via Life Hack. However, after a week of trying I had been unsuccessful. Tow days ago I deciede that since most of my lucide dreams take on a sexual nature that I&nbsp; might be able to use a desire for sex to assist me. I decide I would not masturbate until I had had a lucid dream and then could use the masturbation as a reward.</p>	\N	\N	f	2018-04-15 15:56:02.725445	2018-04-15 20:54:58.642343	78	0
81	2018.155	1	<p>In the dream I had just helped a neighbor into his appartment. He was worried that someone might have broken in. As I turned to open my door, I noticed it was ajar. As I entered I saw a doppelganger of myself. I thought, this is not possible. I must be dreaming.</p>\r\n<p>As usual, I decided to go look for a woman for sex. Then I thought to myself, "No I should look for the door."&nbsp; The dream faded after that.</p>\r\n<p>The "Door" is a metaphor I have been using as a way to experience the higher reality.&nbsp;</p>\r\n<p>&nbsp;</p>	\N	\N	f	2018-06-04 01:11:27.682291	2018-06-04 15:57:07.902254	81	0
82	23rd Psalm	1	<p><span style="color: #222222; font-family: sans-serif;">The Lord is my shepherd; I shall not want.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He maketh me to lie down in green pastures: He leadeth me beside the still waters.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He restoreth my soul: He leadeth me in the paths of righteousness for His name's sake.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Yea, though I walk through the valley of the shadow of death, I will fear no evil: for Thou art with me; Thy rod and Thy staff they comfort me.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Thou preparest a table before me in the presence of mine enemies: Thou anointest my head with oil; my cup runneth over.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Surely goodness and mercy shall follow me all the days of my life: and I will dwell in the house of the Lord forever.</span></p>	\N	\N	f	2018-06-07 17:37:07.061145	2018-06-07 17:37:07.061145	0	0
95	2018.295	1	<p>DILD last night. Included a conscious effort to sustain the dream and a search for the green door.</p>	\N	\N	f	2018-10-22 11:28:05.556362	2018-10-22 11:28:29.548623	95	0
84	23rd Psalm	1	<p><span style="color: #222222; font-family: sans-serif;">The Lord is my shepherd; I shall not want.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He maketh me to lie down in green pastures: He leadeth me beside the still waters.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He restoreth my soul: He leadeth me in the paths of righteousness for His name's sake.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Yea, though I walk through the valley of the shadow of death, I will fear no evil: for Thou art with me; Thy rod and Thy staff they comfort me.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Thou preparest a table before me in the presence of mine enemies: Thou anointest my head with oil; my cup runneth over.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Surely goodness and mercy shall follow me all the days of my life: and I will dwell in the house of the Lord forever.</span></p>	\N	\N	f	2018-06-07 17:37:23.759863	2018-06-07 17:37:23.759863	0	0
88	2018.183	1	<p>Last nights Lucid Dreaming was special for two reasons: I had two different lucid dreams, and I had unique control over my dreams.</p>\r\n<p>In the first dream I was in my bed, but the room was different. Mom, David, Kathy and Pattye were in the room. I thought to myself, I wonder if this is a dream. If it is it won't matter if I take my n ight clothes off. I did and though Pattye commented, it was OK. I got back into bed and everyone left so I could go back to sleep. The room was dark and becaem a hospital room. Someone else was in the room. I asked who is there? She said a nurse. So I thought since this is a dream I can do what I want. But instead of takeing any action, I willed the nurse to come an make love to me. I, in effect, altered the structure of the dream.</p>\r\n<p>&nbsp;</p>\r\n<p>In the second dream I was on a street, I realized I was dreaming and I was awed by the level of detail in the dream. I wondered how I could prove that it was a dream. The wind started blowing and I knew that if I could fly then it must be a dream. So I jumped into the wind and even though I could fly, I was only a few feet off the ground. I was able to sustain the dream for a long time after the realization while I practiced flying.</p>	\N	\N	f	2018-07-02 01:24:32.120534	2018-07-02 01:31:27.875046	88	0
89	2018.186	1	<p>Is God capable of&nbsp; creating a simulation&nbsp; with this level of detail?</p>	\N	\N	f	2018-07-05 05:22:19.83201	2018-07-05 05:22:19.866257	89	0
18	Alpha Traits	1	<p>1. A strong sense of self-belief<br />&nbsp;&nbsp; Have faith in your beliefs<br />&nbsp;&nbsp; Quiet, confident faith<br />2. Strong physical presence<br />&nbsp;&nbsp; Hold your head up<br />&nbsp;&nbsp; Stand to your full height<br />3. The ability and willingness to lead and make decisions<br />4. A cool, calm and collected demeanor in high-pressure situations<br />5. Social intelligence</p>	0	\N	\N	2017-09-18 18:01:44.761568	2018-12-14 01:53:33.843623	2	0
92	2018.204	1	<p>Peripheral perception, Sadhu and Subliminal Dynamics, is how to increase Reception of metaphysical energy.</p>	\N	\N	f	2018-07-23 22:45:47.375956	2018-07-23 22:45:47.392936	92	0
97	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	f	2018-12-14 01:56:06.334089	2018-12-14 01:56:06.334089	-1	0
98	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	t	2018-12-14 01:56:20.92859	2018-12-14 02:00:31.080252	-1	0
99	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	t	2018-12-14 01:56:21.790264	2018-12-14 02:00:37.021219	-1	0
101	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	t	2018-12-14 01:56:23.469098	2018-12-14 02:00:45.901271	-1	0
102	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	t	2018-12-14 01:56:23.861019	2018-12-14 02:00:53.648584	-1	0
96	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	t	2018-12-14 01:56:00.458756	2018-12-14 02:01:08.095213	-1	0
103	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	t	2018-12-14 01:57:02.701097	2018-12-14 02:01:26.765275	-1	0
100	10 Small Habits That Have A Huge Return On Life	1	<p>Over the years, I&rsquo;ve adopted many different &ldquo;positive&rdquo; habits.</p>\r\n<p>To me, a habit is positive when it improves the quality of my life. A lot has been written about forming habits.</p>\r\n<p>How hard is? How long does it take? What&rsquo;s the best way to break habits? How do we adopt new habits?</p>\r\n<p>My experience is that everyone can adopt any habit they want. There&rsquo;s only one condition though: You need a good reason to make a change <a href="https://soundcloud.com/dariusforoux/making-breaking-habits-dont-focus-on-howfocus-on-what">(I talk about that in-depth on this podcast episode)</a>.</p>\r\n<p>And in 99% of cases, the reason to change comes from personal suffering, sadness, and hurt. At some point, you can&rsquo;t stand your current behavior anymore.</p>\r\n<p>Don&rsquo;t worry about <em>how</em> you will change. Focus on <em>what</em> habits you want to form and <em>why</em>.</p>\r\n<p>After one of my friends recently asked me about my current habits, I decided to share them here&mdash;with a brief explanation of what the habits are good for.</p>\r\n<h3>1. Do a full-body workout with weights 3 times a week</h3>\r\n<p>Strength training has several benefits. It protects bone health, muscle mass, keeps you lean, increases energy levels, and prevents injuries.</p>\r\n<p>I&rsquo;ve been lifting weights since I was 16. It&rsquo;s the only habit on this list that I&rsquo;ve been doing for that long. Like many people who lift weights, I started with split routines.</p>\r\n<p>That means you work out different muscle during every session. With most routines, you&rsquo;re training a specific muscle only one time per week. It turns out that muscles need more stress to become stronger.</p>\r\n<p>Ideally, you want to train all your muscles, 3 times a week. That&rsquo;s why I&rsquo;ve been doing full body workouts. It&rsquo;s simple, practical, and it works.</p>\r\n<h3>2. Set 3-4 daily priorities</h3>\r\n<p>This is one of the best productivity strategies there is. We all know that focus is what brings us results.</p>\r\n<p>No focus? No results. So how do you focus? By limiting your options and tasks. Elimination is the key.</p>\r\n<p>Be very clear about what you want to achieve every single day, week, and year.</p>\r\n<p>Every day, work on 3-4 essential (and small) tasks that <a href="https://dariusforoux.com/goals-dont-replace-systems%e2%80%8a/">will bring you closer to your weekly and yearly goals.</a></p>\r\n<h3>3. Read 60 minutes a day</h3>\r\n<p>I get it, you&rsquo;re too busy to read. Or maybe you just don&rsquo;t <em>like</em> to read.</p>\r\n<p>Well, you&rsquo;re not getting off that easily.</p>\r\n<p>Reading is essential for your cognition. But you already knew that. How about this? Reading will also turn you into a better thinker and writer.</p>\r\n<p>&ldquo;But I still don&rsquo;t like to read.&rdquo; Well, there are many things in life we don&rsquo;t like, but we still do them. Instead of telling yourself you don&rsquo;t like to read, learn to enjoy it by doing it every day.</p>\r\n<p>And like magic, one day, you&rsquo;ll <em>love</em> to read.</p>\r\n<h3>4. Sleep 7-8 hours a night</h3>\r\n<p>I never sacrifice my sleep for anything. I recently canceled a meeting in the morning because I slept late. The night before, I was reading a good book that totally consumed me.</p>\r\n<p>After reading, I started taking notes. And before I knew it, it was 2 am. I had to wake up at 7 am to make the meeting.</p>\r\n<p>I canceled the meeting. I&rsquo;m not going to sleep for 6 hours so I can make a meeting when I know that I&rsquo;ll be tired the whole day.</p>\r\n<p>Some people can perform well with 5 hours of sleep. But most of us need more. If you&rsquo;re part of the latter group, make sure you get enough sleep. And be dead serious about it. If you&rsquo;re not in a position to cancel meetings etc, sleep early.</p>\r\n<h3>5. Walk 30 minutes a day</h3>\r\n<p>If you can&rsquo;t MAKE the time to go for a daily walk, you&rsquo;re not in control of your life. I don&rsquo;t even walk for the health benefits. Sure, walking keeps the body moving and is good for you.</p>\r\n<p>But I go for a daily walk because it breaks the pattern of our mundane lives. Look, we can&rsquo;t deny that life is routine. And there&rsquo;s nothing wrong with that.</p>\r\n<p>But when you walk outside, you&rsquo;re forced to be one with the world. It heightens your senses. You can go alone or with someone else. You can have a good conversation. Or you can simply enjoy the surroundings.</p>\r\n<h3>6. Follow the intermittent fasting eating pattern</h3>\r\n<p>I don&rsquo;t eat anything after my dinner. And I skip breakfast. That means I &ldquo;fast&rdquo; for 15-16 hours every day.</p>\r\n<p>There are some health benefits associated with intermittent fasting. But we have to be careful with making claims.</p>\r\n<p>The reason I like it is that it makes me feel and look better. Plus, I can eat whatever I want during the day without gaining any weight.</p>\r\n<p>I don&rsquo;t eat junk food. I stick to whole foods with high nutritional value. Also, my first meal contains a lot of unsaturated fat and protein. And finally, make sure you consume the calories your body needs to operate (2000 for women, 2500 for men, on average).</p>\r\n<h3>7. Be present</h3>\r\n<p>We&rsquo;re so focused on our goals that we forget to enjoy the present moment. This is one of my biggest pitfalls.</p>\r\n<p>I really need to remind myself EVERY SINGLE day that I should enjoy the now.</p>\r\n<p>We&rsquo;re always <em>waiting</em> until we achieve something. &ldquo;I will be happy then.&rdquo;</p>\r\n<p>Nope, you won&rsquo;t if you&rsquo;re always stuck in the future. Find a trigger that brings you back to the present moment.</p>\r\n<p>For example, I recently bought a new watch. During the same time, <a href="https://www.amazon.com/gp/product/1577314808/ref=as_li_qf_asin_il_tl?ie=UTF8&amp;tag=dariusforoux-20&amp;creative=9325&amp;linkCode=as2&amp;creativeASIN=1577314808&amp;linkId=ccbc5fe89f92185b294877ebf5ce965c">I was reading a lot about this spiritual stuff.</a> Now, every time I look at my watch, I say, &ldquo;What time is it? NOW.&rdquo;</p>\r\n<h3>8. Practice kindness &amp; love</h3>\r\n<p>We all treat our love like it&rsquo;s a depletable resource. That&rsquo;s false. Love is unlimited and never runs out. You can give it away as much as you like.</p>\r\n<p>But your ego stops you from doing that. You always want something in return.</p>\r\n<p>So give this a try. Realize that you have an unlimited resource. Give some of your love and kindness away every day. Don&rsquo;t worry about keeping score. You have enough love anyway.</p>\r\n<h3>9. Journal or write 30 minutes a day</h3>\r\n<p>I need to get my thoughts in order every day. I do that by writing. That helps me to focus on what matters to me. That&rsquo;s why I journal.</p>\r\n<p>Even when I&rsquo;m not writing articles, I sit down and journal&mdash;only for myself. I don&rsquo;t write in my journal for others. Journaling is also an excellent tool to become a better thinker and person.</p>\r\n<h3>10. Save 30% of your income</h3>\r\n<p>If you can&rsquo;t save 30%, save 10%. Saving is not about how much. It&rsquo;s about how <em>often</em>.</p>\r\n<p>You save by cutting out useless things you do daily or weekly. You don&rsquo;t need to buy a latte every day. You also don&rsquo;t need to buy &ldquo;organic&rdquo; cashew nuts for $10.</p>\r\n<p>Save on the small things. They will turn into big lumps of cash in time. <a href="https://dariusforoux.com/how-im-getting-richer/">Especially if you invest that extra cash.</a></p>\r\n<p>And that is also the secret to these 10 habits. They are all small. And the daily progress you make seems insignificant.</p>\r\n<p>You will only see the return it has on your life over time. You must stick to these habits until your life gets better.</p>\r\n<p>And when that happens, you&rsquo;ll keep going&mdash;not because you have to, but because you want to.</p>	\N	\N	t	2018-12-14 01:56:23.147527	2018-12-14 02:01:34.417216	-1	0
90	Patience	1	<h1><span style="color: #222222; font-family: Arial; font-size: 12.8px; text-align: justify;">Hexagram: Water Above, Sky Below</span></h1>\r\n<p><span style="color: #222222; font-family: Arial; font-size: 12.8px; text-align: justify;">Time is an ally for those with inner strength - the kind of strength that allows you to be uncompromisingly honest with yourself, while sticking to the path you have charted.&nbsp;</span></p>\r\n<p><span style="color: #222222; font-family: Arial; font-size: 12.8px; text-align: justify;">I Ching&nbsp;</span></p>	46	\N	f	2018-07-10 16:29:16.063623	2018-07-10 16:39:25.966612	90	0
85	23 Psalm	1	<p><span style="color: #222222; font-family: sans-serif;">The Soul is my shepherd; I shall not want.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He maketh me to lie down in green pastures: He leadeth me beside the still waters.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He restoreth my soul: He leadeth me in the paths of righteousness for His name's sake.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Yea, though I walk through the valley of the shadow of death, I will fear no evil: for Thou art with me; Thy&nbsp;guidance comforts me.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Thou preparest a table before me in the presence of mine enemies: Thou anointest my head with oil; my cup runneth over.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Surely goodness and mercy shall follow me all the days of my life: and I will dwell in the house of the Lord forever.</span></p>	\N	\N	f	2018-06-07 17:39:10.54227	2018-06-07 17:42:36.48756	85	0
91	2018.204	1	<p>Last night I was watching Season 3 episode 3 of The Expanse on my Kindle. Suddenly the video stopped and a Bing browser opened showing the results of the search term "Galatians". I did not open the browser nor was it left open and minimized. I have never searched for the term "Galatians" on any browser on any device?</p>\r\n<p>Did someone want me to look&nbsp; up Galatians? I did so today and read the wikipedia article. I will read this book of the bible.</p>	\N	\N	f	2018-07-23 20:20:56.484692	2018-07-23 20:21:33.45826	91	0
83	23rd Psalm	1	<p><span style="color: #222222; font-family: sans-serif;">The Lord is my shepherd; I shall not want.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He maketh me to lie down in green pastures: He leadeth me beside the still waters.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">He restoreth my soul: He leadeth me in the paths of righteousness for His name's sake.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Yea, though I walk through the valley of the shadow of death, I will fear no evil: for Thou art with me; Thy rod and Thy staff they comfort me.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Thou preparest a table before me in the presence of mine enemies: Thou anointest my head with oil; my cup runneth over.</span><br style="color: #222222; font-family: sans-serif;" /><span style="color: #222222; font-family: sans-serif;">Surely goodness and mercy shall follow me all the days of my life: and I will dwell in the house of the Lord forever.</span></p>	\N	\N	t	2018-06-07 17:37:10.89477	2018-07-23 20:22:37.071978	0	0
70	Mantra	1	<p>I will not go gently into that goodnight</p>\r\n<p>I will rage at the dying of the light</p>\r\n<p>I will resist</p>\r\n<p>I will not dispair</p>\r\n<p>Dispair is the mind killer</p>\r\n<p>Dispair is the little death of total obliteration</p>\r\n<p>I will face my dispair</p>\r\n<p>I will allow it to pass over me and through me</p>\r\n<p>When it is gone, I will turn the inner eye to see its path</p>\r\n<p>Where dispair has been, only I shall remain</p>\r\n<p>And within me will be a spark of divine energy</p>\r\n<p>Nurtured by faith</p>\r\n<p>It is the source of miracles</p>\r\n<p>&nbsp;You are my shepard, you fulfill my needs.</p>\r\n<p>You provide a place of abundance for my rest.</p>\r\n<p>You refresh me with clean water.</p>\r\n<p>You restore my soul.</p>\r\n<p>You encourage my righteousness to honor You.</p>\r\n<p>Even though I walk through the vally of the shadow of death</p>\r\n<p>I will fear no evil because You are with me.</p>\r\n<p>You guidance comforts me.</p>\r\n<p>You see to my well being while enemies asail me.</p>\r\n<p>You anoint me, my cup overflows.</p>\r\n<p>Surely goodness and mercy shall be mine through out my life</p>\r\n<p>And I will dwell in Your house for ever.</p>\r\n<p>&nbsp;</p>	12	\N	f	2018-02-23 20:38:54.188838	2018-12-14 02:02:22.547628	0	0
112	2019.020	1	<p>Based on my last experence, I believe I can find lotto numbers through meditation. I did get two numbers once before. Both at one sitting. One would have been a coincidence, but two would have a statistical significance.</p>\r\n<p>I just be disciplined and have patience. "Faith" will make it work.&nbsp;</p>\r\n<p>Faith is a belief that is so ingrained in the psyche that is isn't even questioned. Like one plus one is, has always been, and always be true. That is my Faith in finding the numbers. The only variables in the equation are my discipline and time.</p>	\N	\N	f	2019-01-20 03:10:45.779101	2019-01-20 03:31:58.621935	112	0
113	2019.020	1	<p>1. Syria Namaskar</p>\r\n<p>2. Weights</p>\r\n<p>3. Eleptical/Aerobic</p>\r\n<p>4. 16/8 fasting</p>	\N	\N	f	2019-01-20 03:38:06.927505	2019-01-20 03:38:06.947632	113	0
114	2019.025	1	<p>Some time ago while I was meditating I "saw" two powerball numbers. If it were just one, I could say that was a coincidence. But two would mean something else.</p>\r\n<p>As I meditate I should not force the numbers. I should be content knowing that they will come.</p>	\N	\N	f	2019-01-25 19:11:31.661348	2019-01-25 19:11:31.682222	114	0
\.


--
-- Name: active_admin_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: paxxa
--

SELECT pg_catalog.setval('public.active_admin_comments_id_seq', 1, false);


--
-- Name: histories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: paxxa
--

SELECT pg_catalog.setval('public.histories_id_seq', 1566, true);


--
-- Name: html_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: paxxa
--

SELECT pg_catalog.setval('public.html_pages_id_seq', 1, false);


--
-- Name: section_footnotes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: paxxa
--

SELECT pg_catalog.setval('public.section_footnotes_id_seq', 3, true);


--
-- Name: section_notes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: paxxa
--

SELECT pg_catalog.setval('public.section_notes_id_seq', 16, true);


--
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: paxxa
--

SELECT pg_catalog.setval('public.sections_id_seq', 46, true);


--
-- Name: stories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: paxxa
--

SELECT pg_catalog.setval('public.stories_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: wiki_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wiki_tags_id_seq', 131, true);


--
-- Name: wikis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.wikis_id_seq', 114, true);


--
-- Name: active_admin_comments active_admin_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.active_admin_comments
    ADD CONSTRAINT active_admin_comments_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: histories histories_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.histories
    ADD CONSTRAINT histories_pkey PRIMARY KEY (id);


--
-- Name: html_pages html_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.html_pages
    ADD CONSTRAINT html_pages_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: section_footnotes section_footnotes_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.section_footnotes
    ADD CONSTRAINT section_footnotes_pkey PRIMARY KEY (id);


--
-- Name: section_notes section_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.section_notes
    ADD CONSTRAINT section_notes_pkey PRIMARY KEY (id);


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: stories stories_pkey; Type: CONSTRAINT; Schema: public; Owner: paxxa
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: wiki_tags wiki_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wiki_tags
    ADD CONSTRAINT wiki_tags_pkey PRIMARY KEY (id);


--
-- Name: wikis wikis_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wikis
    ADD CONSTRAINT wikis_pkey PRIMARY KEY (id);


--
-- Name: index_active_admin_comments_on_author_type_and_author_id; Type: INDEX; Schema: public; Owner: paxxa
--

CREATE INDEX index_active_admin_comments_on_author_type_and_author_id ON public.active_admin_comments USING btree (author_type, author_id);


--
-- Name: index_active_admin_comments_on_namespace; Type: INDEX; Schema: public; Owner: paxxa
--

CREATE INDEX index_active_admin_comments_on_namespace ON public.active_admin_comments USING btree (namespace);


--
-- Name: index_active_admin_comments_on_resource_type_and_resource_id; Type: INDEX; Schema: public; Owner: paxxa
--

CREATE INDEX index_active_admin_comments_on_resource_type_and_resource_id ON public.active_admin_comments USING btree (resource_type, resource_id);


--
-- Name: index_section_footnotes_on_section_id; Type: INDEX; Schema: public; Owner: paxxa
--

CREATE INDEX index_section_footnotes_on_section_id ON public.section_footnotes USING btree (section_id);


--
-- Name: index_section_notes_on_section_id; Type: INDEX; Schema: public; Owner: paxxa
--

CREATE INDEX index_section_notes_on_section_id ON public.section_notes USING btree (section_id);


--
-- Name: index_sections_on_story_id; Type: INDEX; Schema: public; Owner: paxxa
--

CREATE INDEX index_sections_on_story_id ON public.sections USING btree (story_id);


--
-- Name: index_users_on_login; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_login ON public.users USING btree (login);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_wiki_tags_on_tag_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_tags_on_tag_id ON public.wiki_tags USING btree (tag_id);


--
-- Name: index_wiki_tags_on_wiki_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX index_wiki_tags_on_wiki_id ON public.wiki_tags USING btree (wiki_id);


--
-- PostgreSQL database dump complete
--

