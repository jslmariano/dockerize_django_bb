--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Debian 10.12-2.pgdg90+1)
-- Dumped by pg_dump version 10.7

-- Started on 2020-03-01 20:54:01

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 45913)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 45911)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 45923)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 45921)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 45905)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 45903)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 45931)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 45941)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 45939)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 45929)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 45949)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 45947)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 215 (class 1259 OID 46042)
-- Name: boards_board; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_board (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(100) NOT NULL
);


ALTER TABLE public.boards_board OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 46040)
-- Name: boards_board_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_board_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_board_id_seq OWNER TO postgres;

--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 214
-- Name: boards_board_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_board_id_seq OWNED BY public.boards_board.id;


--
-- TOC entry 219 (class 1259 OID 46060)
-- Name: boards_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_post (
    id integer NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone,
    created_by_id integer NOT NULL,
    topic_id integer NOT NULL,
    updated_by_id integer
);


ALTER TABLE public.boards_post OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 46058)
-- Name: boards_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_post_id_seq OWNER TO postgres;

--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 218
-- Name: boards_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_post_id_seq OWNED BY public.boards_post.id;


--
-- TOC entry 217 (class 1259 OID 46052)
-- Name: boards_topic; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_topic (
    id integer NOT NULL,
    subject character varying(255) NOT NULL,
    last_updated timestamp with time zone NOT NULL,
    board_id integer NOT NULL,
    starter_id integer NOT NULL,
    views integer NOT NULL,
    CONSTRAINT boards_topic_views_check CHECK ((views >= 0))
);


ALTER TABLE public.boards_topic OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 46050)
-- Name: boards_topic_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_topic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.boards_topic_id_seq OWNER TO postgres;

--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 216
-- Name: boards_topic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_topic_id_seq OWNED BY public.boards_topic.id;


--
-- TOC entry 213 (class 1259 OID 46009)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 46007)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 45895)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 45893)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 45884)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 45882)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 220 (class 1259 OID 46108)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2803 (class 2604 OID 45916)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 45926)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 45908)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 45934)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 45944)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 45952)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 46045)
-- Name: boards_board id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_board ALTER COLUMN id SET DEFAULT nextval('public.boards_board_id_seq'::regclass);


--
-- TOC entry 2813 (class 2604 OID 46063)
-- Name: boards_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post ALTER COLUMN id SET DEFAULT nextval('public.boards_post_id_seq'::regclass);


--
-- TOC entry 2811 (class 2604 OID 46055)
-- Name: boards_topic id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic ALTER COLUMN id SET DEFAULT nextval('public.boards_topic_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 46012)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 45898)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 45887)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3017 (class 0 OID 45913)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3019 (class 0 OID 45923)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3015 (class 0 OID 45905)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add user	3	add_user
6	Can change user	3	change_user
7	Can delete user	3	delete_user
8	Can view user	3	view_user
9	Can add group	4	add_group
10	Can change group	4	change_group
11	Can delete group	4	delete_group
12	Can view group	4	view_group
13	Can add permission	2	add_permission
14	Can change permission	2	change_permission
15	Can delete permission	2	delete_permission
16	Can view permission	2	view_permission
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add post	8	add_post
26	Can change post	8	change_post
27	Can delete post	8	delete_post
28	Can view post	8	view_post
29	Can add topic	7	add_topic
30	Can change topic	7	change_topic
31	Can delete topic	7	delete_topic
32	Can view topic	7	view_topic
33	Can add board	9	add_board
34	Can change board	9	change_board
35	Can delete board	9	delete_board
36	Can view board	9	view_board
\.


--
-- TOC entry 3021 (class 0 OID 45931)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$tbY9fx6twJbT$2fvS91UEnsDqMqLZrXf3Gywo6Bntac/d5T3KbeDFn0o=	2020-02-29 11:07:48.206261-05	t	admin				t	t	2020-02-29 11:07:39.248543-05
4	pbkdf2_sha256$150000$LB2ICOgg0Kpv$k+DDUH0T5Ucc5T+Ijy/t+9E6Q8hpV/BaLPuViGy/Iq0=	2020-02-29 11:27:37.006464-05	f	zjordan	Jeffery	White	eugene76@gmail.com	f	t	2020-02-29 11:27:06.554771-05
3	pbkdf2_sha256$150000$s0bc3fegx6pv$f8wjfJuVeYQj8Q9wb7gJ4N1ZHkDfoIo1kR1lMUT8zgw=	2020-02-29 12:02:27.770395-05	f	reyeskevin	Maureen	Scott	brownamanda@gmail.com	f	t	2020-02-29 11:12:35.194791-05
2	pbkdf2_sha256$150000$0rCOvaUklQ8h$RBjeE2ZBTAsWHXw+EUbtIxe/TMc0iYLU3PMAaHPQ51Y=	2020-02-29 11:07:48-05	f	test1	test1	test1	test1@example.com	f	t	2020-02-29 11:08:51.783709-05
5	pbkdf2_sha256$150000$D08e9xAnL1TY$6zMYx3ai0ifTT0pMDidyTo7u58H/3bAas6jMsr60sOE=	2020-02-29 11:07:48-05	f	test2	test2	test2	test2@example.com	f	t	2020-02-29 11:29:20.092404-05
7	pbkdf2_sha256$150000$MWLp0vBdFePv$ZMYr4LNbOW8GQP1//flwzUuzXvOpn7Jfpcd1RFOl724=	2020-02-29 11:07:48-05	f	test3	test3	test3	test3@example.com	f	t	2020-02-29 11:36:51.963077-05
\.


--
-- TOC entry 3023 (class 0 OID 45941)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3025 (class 0 OID 45949)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3029 (class 0 OID 46042)
-- Dependencies: 215
-- Data for Name: boards_board; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_board (id, name, description) FROM stdin;
1	She former wait win carry	Husband authority tough first exist free. Growth ask structure change memory contain book example.
2	Toward fine simply ten.	Well market marriage process summer surface anyone.
3	Analysis catch important 	Sell under peace special pay performance. Style opportunity what respond.
\.


--
-- TOC entry 3033 (class 0 OID 46060)
-- Dependencies: 219
-- Data for Name: boards_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_post (id, message, created_at, updated_at, created_by_id, topic_id, updated_by_id) FROM stdin;
1	Surface soldier production easy here. Market leg unit agree property.	2020-02-29 11:24:59.885321-05	\N	3	1	\N
2	Final throw red appear. Off yourself low when remember keep. Reflect organization suddenly instead task look.	2020-02-29 11:24:59.917173-05	\N	1	2	\N
3	Claim owner and nice chair with already. Soon allow foot nor measure such.	2020-02-29 11:26:02.254188-05	\N	2	3	\N
4	Decide themselves short listen region. Movie own throw heavy wrong peace do.	2020-02-29 11:26:02.281319-05	\N	1	4	\N
5	Usually without appear talk party really. Worry cell open positive must world. Create memory model next student.	2020-02-29 11:26:13.41405-05	\N	2	5	\N
6	Father story cup in. Than very send poor thank work beat. This sense including answer.	2020-02-29 11:26:13.441084-05	\N	1	6	\N
7	Might eye we. Worry between force card inside provide institution remain.	2020-02-29 11:27:47.878553-05	\N	2	7	\N
8	Require box especially total risk. Voice toward fact college involve ever.	2020-02-29 11:27:47.907512-05	\N	3	8	\N
9	Believe car glass hospital through test show. Certainly threat environmental pattern cover. With medical old stock paper scientist.	2020-02-29 11:27:47.940935-05	\N	1	9	\N
10	Very raise these middle. Quite media clearly yet miss believe film. Baby word marriage him fine bar.	2020-02-29 11:27:47.991385-05	\N	2	10	\N
11	Message for none area course indicate. Bill individual collection child sister. Deal theory what eye floor.	2020-02-29 11:27:48.017663-05	\N	1	11	\N
12	Seat organization become charge. Relate trip rock American nature majority trip.	2020-02-29 11:27:48.043149-05	\N	4	12	\N
13	Factor economic born pull. Audience teacher spring reflect heart meeting key.	2020-02-29 11:27:48.068684-05	\N	1	13	\N
14	West model section treat. Management itself morning perform over some act.	2020-02-29 11:27:48.094008-05	\N	2	14	\N
15	Event trial baby. Hard last hand writer. Bed white realize street notice.	2020-02-29 11:27:48.123575-05	\N	4	15	\N
16	Out so win information make. Recognize goal soon wish whom source.	2020-02-29 11:27:48.149441-05	\N	4	16	\N
17	Expect hotel rich wear service. Term ball later begin.	2020-02-29 11:27:48.174352-05	\N	2	17	\N
18	List voice try half American. Strategy whole represent someone.	2020-02-29 11:27:48.201836-05	\N	1	18	\N
19	Cover write our if police. This camera choose family listen value. Same today smile sister shake.	2020-02-29 11:27:48.231599-05	\N	1	19	\N
20	Think standard people. Floor food similar suggest market purpose.	2020-02-29 11:27:48.257006-05	\N	2	20	\N
21	Now television why. Step husband involve evening.	2020-02-29 11:27:48.282273-05	\N	2	21	\N
22	Account level serious. Spend put rich energy range heavy.	2020-02-29 11:27:48.309659-05	\N	1	22	\N
23	Police impact year work else memory figure development. You house dark land democratic right. Foot town stop myself.	2020-02-29 11:27:48.337259-05	\N	2	23	\N
24	Which land alone character seek event go matter. Like democratic defense discuss green executive guess likely.	2020-02-29 11:27:48.364952-05	\N	4	24	\N
25	Capital sometimes across side little top sometimes. Red far arm industry administration.	2020-02-29 11:27:48.390162-05	\N	1	25	\N
26	Trial issue like language. Student sit art visit picture despite. Republican shoulder son off citizen nothing billion.	2020-02-29 11:27:48.416312-05	\N	1	26	\N
27	Situation cover sign cut wear offer. Help price hand keep. Seem blood beyond democratic.	2020-02-29 11:27:48.441249-05	\N	2	27	\N
28	Reveal position physical. Hundred professional ago.	2020-02-29 11:27:48.465988-05	\N	2	28	\N
29	Everybody stay note just. Wife brother quality deal what dark. That sure red test affect edge daughter always.	2020-02-29 11:27:48.493501-05	\N	4	29	\N
30	Impact light music service answer red like moment. Your soldier form local within others.	2020-02-29 11:27:48.533537-05	\N	2	30	\N
31	To police whether professor mouth three check. Part option shake sound on behavior. Nor dark deep growth state. Focus wear hundred successful black wish.	2020-02-29 11:27:48.561151-05	\N	1	31	\N
32	Notice hotel allow actually item senior. Difficult begin hit difference.	2020-02-29 11:27:48.586773-05	\N	2	32	\N
33	Remember toward about friend speech. North how magazine with. Building class mouth others particularly view major water.	2020-02-29 11:27:48.613446-05	\N	3	33	\N
34	During today rather too situation least. Enjoy leg bar instead top other must. Part out guess unit today skill. If behavior increase machine participant face.	2020-02-29 11:27:48.63944-05	\N	2	34	\N
35	Age various to hard bad series time. Dream market issue be result.	2020-02-29 11:27:48.66438-05	\N	1	35	\N
36	Enter today or himself since hope deep. Whom large surface drug.	2020-02-29 11:27:48.687878-05	\N	4	36	\N
37	Away system represent first network region. Leg ten writer since fund suffer.	2020-02-29 11:28:13.771062-05	\N	4	37	\N
38	Note professor final compare many likely. Piece mean against environment material. Worry treat hot will its pay music.	2020-02-29 11:28:13.807606-05	\N	3	38	\N
39	Clearly half degree art almost full. Western over almost affect red wear. Try key drive able could front majority.	2020-02-29 11:28:13.832988-05	\N	2	39	\N
40	Summer carry per live. Art according race family former collection fact audience.	2020-02-29 11:28:13.858137-05	\N	2	40	\N
41	Heavy ten hope certainly. Fight claim gun. Themselves space public sing sea support add series.	2020-02-29 11:28:13.883134-05	\N	3	41	\N
42	Why throw certain hospital. Care story task analysis situation set.	2020-02-29 11:28:13.907885-05	\N	1	42	\N
43	Environment push capital subject five growth. Street account still growth. Perhaps win play subject attack understand report.	2020-02-29 11:28:13.932198-05	\N	1	43	\N
44	Only walk bit. Cultural often whose thought knowledge fly. Nature these base should room.	2020-02-29 11:28:13.958478-05	\N	1	44	\N
45	Final network all performance environment guess.	2020-02-29 11:28:13.981699-05	\N	2	45	\N
46	Democrat oil range not drive. Hand hour worker evidence. Enter guess personal part letter term common simply.	2020-02-29 11:28:14.007249-05	\N	3	46	\N
47	Serious compare marriage however series. May full increase. Poor time maybe meeting condition life.	2020-02-29 11:28:14.034403-05	\N	4	47	\N
48	Doctor mean kitchen face. Imagine build laugh religious.	2020-02-29 11:28:14.061016-05	\N	2	48	\N
49	Understand note change particular discover think. Gas television include war. Magazine hear history.	2020-02-29 11:28:14.08793-05	\N	2	49	\N
50	Amount task support pretty court time model into.	2020-02-29 11:28:14.111066-05	\N	1	50	\N
51	Billion record clear series thing but choose safe. Full window artist far term.	2020-02-29 11:28:14.142073-05	\N	4	51	\N
52	Do campaign smile teach. Authority even low measure several.	2020-02-29 11:28:14.209208-05	\N	4	52	\N
53	Whose most nation agree right. Quite baby senior memory through. Share address land class city sign free.	2020-02-29 11:28:14.235926-05	\N	3	53	\N
54	Million stock remember section leave. Event begin design seat always card listen. Future public unit think service.	2020-02-29 11:28:14.263632-05	\N	3	54	\N
55	Building little even answer kid college. Enough several than personal century field hotel see.	2020-02-29 11:28:14.29195-05	\N	4	55	\N
56	War once crime spend Mrs she. Cultural everything from event.	2020-02-29 11:28:14.316504-05	\N	2	56	\N
57	Tough item paper wall thing. Son example group raise project. Behind Mr other certain production another.	2020-02-29 11:28:14.342436-05	\N	1	57	\N
58	Especially act huge.	2020-02-29 11:28:14.364835-05	\N	2	58	\N
59	Analysis can say country carry behind condition play. Say see south yes. Behavior none have challenge second economy.	2020-02-29 11:28:14.390129-05	\N	1	59	\N
60	Great maintain data second understand rise she. Garden natural air land brother for. Or race international hear.	2020-02-29 11:28:14.414597-05	\N	2	60	\N
61	Under play director ever. Share true someone add firm. Board raise man truth democratic medical from.	2020-02-29 11:28:14.439554-05	\N	2	61	\N
62	Then eat development close week open. Quickly weight event total.	2020-02-29 11:28:14.463414-05	\N	1	62	\N
63	Little it vote issue answer cultural. Everybody use score teacher pass. Record high such water.	2020-02-29 11:28:14.488487-05	\N	3	63	\N
64	Where old myself. Generation line sing perform question often skin.	2020-02-29 11:28:14.513424-05	\N	3	64	\N
65	Theory phone condition project father military church. Wife beautiful analysis office computer us financial.	2020-02-29 11:28:14.537618-05	\N	3	65	\N
66	Leave four ok our eight west organization. No it at medical quality. East week either executive dream raise. Without share even name tax pretty nothing than.	2020-02-29 11:28:14.563345-05	\N	4	66	\N
67	<p>SDASDASDS</p>	2020-02-29 12:03:36.250576-05	\N	3	64	\N
\.


--
-- TOC entry 3031 (class 0 OID 46052)
-- Dependencies: 217
-- Data for Name: boards_topic; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_topic (id, subject, last_updated, board_id, starter_id, views) FROM stdin;
1	Can my stage quality expert.	2020-02-29 11:24:59.792547-05	1	3	0
2	Seem ever almost long.	2020-02-29 11:24:59.913639-05	1	1	0
3	Nearly happy produce skill drug vote return chair.	2020-02-29 11:26:02.25099-05	3	2	0
4	Leader deep enjoy.	2020-02-29 11:26:02.277475-05	3	1	0
5	Include raise nature.	2020-02-29 11:26:13.307121-05	2	2	0
6	Tonight today so enough both.	2020-02-29 11:26:13.438307-05	3	1	0
7	Least usually in.	2020-02-29 11:27:47.792046-05	2	2	0
8	Clearly arm year others me.	2020-02-29 11:27:47.904084-05	2	3	0
9	Leg become base plant degree morning quickly.	2020-02-29 11:27:47.937847-05	2	1	0
10	Woman together field performance success.	2020-02-29 11:27:47.989323-05	2	2	0
11	Company to car well.	2020-02-29 11:27:48.015509-05	1	1	0
12	Your study social yard think.	2020-02-29 11:27:48.040643-05	2	4	0
13	Do support current price fact determine practice.	2020-02-29 11:27:48.066127-05	2	1	0
14	Probably energy condition here purpose another.	2020-02-29 11:27:48.091477-05	2	2	0
15	Page several culture professional.	2020-02-29 11:27:48.1182-05	3	4	0
16	Us growth action eat race themselves likely.	2020-02-29 11:27:48.146788-05	2	4	0
17	Song business finish lot.	2020-02-29 11:27:48.171329-05	1	2	0
18	Little decide front program could stay hope.	2020-02-29 11:27:48.199279-05	2	1	0
19	Finally employee minute main.	2020-02-29 11:27:48.228709-05	3	1	0
20	Sense interest degree worry.	2020-02-29 11:27:48.25412-05	2	2	0
21	Smile deep type dark might.	2020-02-29 11:27:48.279489-05	1	2	0
22	Loss woman security successful again detail.	2020-02-29 11:27:48.307085-05	1	1	0
23	Kind minute a box than training various political.	2020-02-29 11:27:48.334432-05	1	2	0
24	Nothing must leg relationship.	2020-02-29 11:27:48.362228-05	3	4	0
25	Move various we but the.	2020-02-29 11:27:48.388115-05	1	1	0
26	Along recent around.	2020-02-29 11:27:48.414046-05	1	1	0
27	Fly enjoy network support everyone.	2020-02-29 11:27:48.439115-05	2	2	0
28	Citizen movement fire.	2020-02-29 11:27:48.463614-05	3	2	0
29	Religious center run girl.	2020-02-29 11:27:48.489129-05	1	4	0
30	Call attention support carry responsibility.	2020-02-29 11:27:48.531076-05	2	2	0
31	Arm physical sure.	2020-02-29 11:27:48.558161-05	3	1	0
32	Music one most take month with.	2020-02-29 11:27:48.584677-05	1	2	0
33	Politics reduce final.	2020-02-29 11:27:48.610979-05	1	3	0
34	Probably describe present throughout knowledge game chance.	2020-02-29 11:27:48.63735-05	3	2	0
35	Black consumer admit who enough pretty.	2020-02-29 11:27:48.662114-05	3	1	0
36	Whom recognize money.	2020-02-29 11:27:48.685812-05	1	4	0
37	Their question science now.	2020-02-29 11:28:13.670092-05	1	4	0
38	Provide these have here sometimes record.	2020-02-29 11:28:13.804786-05	3	3	0
39	Mother officer list outside.	2020-02-29 11:28:13.830783-05	3	2	0
40	Ok source international exist lose.	2020-02-29 11:28:13.856054-05	1	2	0
41	State behind newspaper side require.	2020-02-29 11:28:13.881102-05	1	3	0
42	Machine sport anything.	2020-02-29 11:28:13.905862-05	3	1	0
43	Close foreign they impact.	2020-02-29 11:28:13.930231-05	3	1	0
45	Cover still any close three.	2020-02-29 11:28:13.979704-05	2	2	0
46	Lose firm life director could.	2020-02-29 11:28:14.004831-05	1	3	0
47	Case true middle artist.	2020-02-29 11:28:14.032289-05	2	4	0
48	Money myself plan material despite.	2020-02-29 11:28:14.058259-05	1	2	0
49	Occur century teach event despite.	2020-02-29 11:28:14.085235-05	2	2	0
50	How billion live might by question clear.	2020-02-29 11:28:14.108921-05	1	1	0
51	Far those drug play.	2020-02-29 11:28:14.139507-05	3	4	0
52	Amount some election already common blood.	2020-02-29 11:28:14.204112-05	2	4	0
53	Front practice trip future.	2020-02-29 11:28:14.233333-05	1	3	0
54	Position star score scene economic production speak.	2020-02-29 11:28:14.260692-05	1	3	0
55	Mrs vote child machine board.	2020-02-29 11:28:14.288883-05	2	4	0
56	Against strategy provide ever bag hold.	2020-02-29 11:28:14.31395-05	3	2	0
59	Term grow plant national throw tonight.	2020-02-29 11:28:14.388106-05	3	1	0
60	Miss my onto often.	2020-02-29 11:28:14.412788-05	3	2	0
61	Election design say Democrat.	2020-02-29 11:28:14.437657-05	2	2	0
62	Serve perform major great.	2020-02-29 11:28:14.461551-05	2	1	0
63	However hundred now onto similar affect.	2020-02-29 11:28:14.485717-05	2	3	0
65	Seven general court person.	2020-02-29 11:28:14.53502-05	3	3	0
66	Spend one career check not father.	2020-02-29 11:28:14.561395-05	3	4	0
57	Herself politics station top manager evening.	2020-02-29 11:28:14.340438-05	1	1	1
64	Place strong ago without direction behind.	2020-02-29 11:28:14.511085-05	2	3	2
44	Network product night election difference current once.	2020-02-29 11:28:13.956311-05	1	1	1
58	Peace relationship character trouble public run.	2020-02-29 11:28:14.362868-05	1	2	2
\.


--
-- TOC entry 3027 (class 0 OID 46009)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3013 (class 0 OID 45895)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	user
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	boards	topic
8	boards	post
9	boards	board
\.


--
-- TOC entry 3011 (class 0 OID 45884)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-02-29 10:31:49.173582-05
2	auth	0001_initial	2020-02-29 10:31:49.236114-05
3	admin	0001_initial	2020-02-29 10:31:49.353236-05
4	admin	0002_logentry_remove_auto_add	2020-02-29 10:31:49.38333-05
5	admin	0003_logentry_add_action_flag_choices	2020-02-29 10:31:49.398491-05
6	contenttypes	0002_remove_content_type_name	2020-02-29 10:31:49.426079-05
7	auth	0002_alter_permission_name_max_length	2020-02-29 10:31:49.435328-05
8	auth	0003_alter_user_email_max_length	2020-02-29 10:31:49.448964-05
9	auth	0004_alter_user_username_opts	2020-02-29 10:31:49.460742-05
10	auth	0005_alter_user_last_login_null	2020-02-29 10:31:49.474497-05
11	auth	0006_require_contenttypes_0002	2020-02-29 10:31:49.478619-05
12	auth	0007_alter_validators_add_error_messages	2020-02-29 10:31:49.49164-05
13	auth	0008_alter_user_username_max_length	2020-02-29 10:31:49.51439-05
14	auth	0009_alter_user_last_name_max_length	2020-02-29 10:31:49.526968-05
15	auth	0010_alter_group_name_max_length	2020-02-29 10:31:49.540547-05
16	auth	0011_update_proxy_permissions	2020-02-29 10:31:49.554316-05
17	boards	0001_initial	2020-02-29 10:31:49.603329-05
18	boards	0002_auto_20190409_1413	2020-02-29 10:31:49.689189-05
19	boards	0003_auto_20190409_2106	2020-02-29 10:31:49.707445-05
20	boards	0004_auto_20190409_2116	2020-02-29 10:31:49.72251-05
21	sessions	0001_initial	2020-02-29 10:31:49.738983-05
\.


--
-- TOC entry 3034 (class 0 OID 46108)
-- Dependencies: 220
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1rwrna6wj9kszcj9ea9wnynhr9jq57me	OTUxN2Y3NjBmODcyNDFjZGY0MDRmMzNmM2VkZTNlZmZlNzIyNzI1Yzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwidmlld2VkX3RvcGljXzQ0Ijp0cnVlLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNlNmU4OGYwMGY1ZjQxMjZmNDhkMmE5NzFlNWZiYjFiODI4NWZlOWMiLCJ2aWV3ZWRfdG9waWNfNTgiOnRydWUsInZpZXdlZF90b3BpY182NCI6dHJ1ZX0=	2020-03-14 19:48:55.153572-04
\.


--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 214
-- Name: boards_board_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_board_id_seq', 3, true);


--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 218
-- Name: boards_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_post_id_seq', 67, true);


--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 216
-- Name: boards_topic_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_topic_id_seq', 66, true);


--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- TOC entry 2827 (class 2606 OID 46038)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2832 (class 2606 OID 45975)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2835 (class 2606 OID 45928)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 45918)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2822 (class 2606 OID 45961)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2824 (class 2606 OID 45910)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 45946)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2846 (class 2606 OID 45990)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2837 (class 2606 OID 45936)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2849 (class 2606 OID 45954)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 46004)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2840 (class 2606 OID 46032)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2859 (class 2606 OID 46049)
-- Name: boards_board boards_board_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_board
    ADD CONSTRAINT boards_board_name_key UNIQUE (name);


--
-- TOC entry 2861 (class 2606 OID 46047)
-- Name: boards_board boards_board_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_board
    ADD CONSTRAINT boards_board_pkey PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 46068)
-- Name: boards_post boards_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 46057)
-- Name: boards_topic boards_topic_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_pkey PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 46018)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2817 (class 2606 OID 45902)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2819 (class 2606 OID 45900)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 45892)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 46115)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2825 (class 1259 OID 46039)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2830 (class 1259 OID 45976)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2833 (class 1259 OID 45977)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2820 (class 1259 OID 45962)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2841 (class 1259 OID 45992)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2844 (class 1259 OID 45991)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2847 (class 1259 OID 46006)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2850 (class 1259 OID 46005)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2838 (class 1259 OID 46033)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2857 (class 1259 OID 46069)
-- Name: boards_board_name_08f3d006_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_board_name_08f3d006_like ON public.boards_board USING btree (name varchar_pattern_ops);


--
-- TOC entry 2866 (class 1259 OID 46097)
-- Name: boards_post_created_by_id_0b841038; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_post_created_by_id_0b841038 ON public.boards_post USING btree (created_by_id);


--
-- TOC entry 2869 (class 1259 OID 46098)
-- Name: boards_post_topic_id_f477c024; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_post_topic_id_f477c024 ON public.boards_post USING btree (topic_id);


--
-- TOC entry 2870 (class 1259 OID 46099)
-- Name: boards_post_updated_by_id_76d3c48f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_post_updated_by_id_76d3c48f ON public.boards_post USING btree (updated_by_id);


--
-- TOC entry 2862 (class 1259 OID 46080)
-- Name: boards_topic_board_id_4462fe82; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_board_id_4462fe82 ON public.boards_topic USING btree (board_id);


--
-- TOC entry 2865 (class 1259 OID 46081)
-- Name: boards_topic_starter_id_60e98681; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_topic_starter_id_60e98681 ON public.boards_topic USING btree (starter_id);


--
-- TOC entry 2853 (class 1259 OID 46029)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2856 (class 1259 OID 46030)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2871 (class 1259 OID 46117)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2874 (class 1259 OID 46116)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2877 (class 2606 OID 45969)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2876 (class 2606 OID 45964)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2875 (class 2606 OID 45955)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2879 (class 2606 OID 45984)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2878 (class 2606 OID 45979)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2881 (class 2606 OID 45998)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2880 (class 2606 OID 45993)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2886 (class 2606 OID 46082)
-- Name: boards_post boards_post_created_by_id_0b841038_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_created_by_id_0b841038_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2887 (class 2606 OID 46087)
-- Name: boards_post boards_post_topic_id_f477c024_fk_boards_topic_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_topic_id_f477c024_fk_boards_topic_id FOREIGN KEY (topic_id) REFERENCES public.boards_topic(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2888 (class 2606 OID 46092)
-- Name: boards_post boards_post_updated_by_id_76d3c48f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_post
    ADD CONSTRAINT boards_post_updated_by_id_76d3c48f_fk_auth_user_id FOREIGN KEY (updated_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2884 (class 2606 OID 46070)
-- Name: boards_topic boards_topic_board_id_4462fe82_fk_boards_board_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_board_id_4462fe82_fk_boards_board_id FOREIGN KEY (board_id) REFERENCES public.boards_board(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2885 (class 2606 OID 46075)
-- Name: boards_topic boards_topic_starter_id_60e98681_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_topic
    ADD CONSTRAINT boards_topic_starter_id_60e98681_fk_auth_user_id FOREIGN KEY (starter_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2882 (class 2606 OID 46019)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2883 (class 2606 OID 46024)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-03-01 20:54:03

--
-- PostgreSQL database dump complete
--

