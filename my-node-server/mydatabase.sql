--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

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
-- Name: AUTHORIZATION; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."AUTHORIZATION" (
    user_id integer NOT NULL,
    login character varying(30) NOT NULL,
    password character varying(30) NOT NULL
);


ALTER TABLE public."AUTHORIZATION" OWNER TO postgres;

--
-- Name: BOOKING; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."BOOKING" (
    booking_id integer NOT NULL,
    author_id integer NOT NULL,
    event_id integer NOT NULL,
    admin_id integer NOT NULL,
    status character varying(15) NOT NULL,
    room_id integer NOT NULL
);


ALTER TABLE public."BOOKING" OWNER TO postgres;

--
-- Name: BOOKING_booking_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."BOOKING_booking_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."BOOKING_booking_id_seq" OWNER TO postgres;

--
-- Name: BOOKING_booking_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."BOOKING_booking_id_seq" OWNED BY public."BOOKING".booking_id;


--
-- Name: EVENTS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EVENTS" (
    event_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    participants_count integer NOT NULL,
    honorary_guests boolean NOT NULL,
    technical_requirements text,
    brought_equipment text,
    additional_comments text
);


ALTER TABLE public."EVENTS" OWNER TO postgres;

--
-- Name: EVENTS_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."EVENTS_event_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."EVENTS_event_id_seq" OWNER TO postgres;

--
-- Name: EVENTS_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."EVENTS_event_id_seq" OWNED BY public."EVENTS".event_id;


--
-- Name: ROLES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ROLES" (
    user_id integer NOT NULL,
    role boolean NOT NULL
);


ALTER TABLE public."ROLES" OWNER TO postgres;

--
-- Name: ROOMS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ROOMS" (
    room_id integer NOT NULL,
    name character varying(100) NOT NULL,
    capacity integer NOT NULL,
    description text NOT NULL,
    available boolean NOT NULL
);


ALTER TABLE public."ROOMS" OWNER TO postgres;

--
-- Name: ROOMS_room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ROOMS_room_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."ROOMS_room_id_seq" OWNER TO postgres;

--
-- Name: ROOMS_room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ROOMS_room_id_seq" OWNED BY public."ROOMS".room_id;


--
-- Name: TIMES; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TIMES" (
    event_id integer NOT NULL,
    date date NOT NULL,
    time_start time without time zone NOT NULL,
    time_end time without time zone NOT NULL
);


ALTER TABLE public."TIMES" OWNER TO postgres;

--
-- Name: USERS; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."USERS" (
    user_id integer NOT NULL,
    firstname character varying(30) NOT NULL,
    lastname character varying(30) NOT NULL,
    patronymic character varying(30),
    email character varying(40),
    phone character varying(15),
    organization character varying(60)
);


ALTER TABLE public."USERS" OWNER TO postgres;

--
-- Name: USERS_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."USERS_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."USERS_user_id_seq" OWNER TO postgres;

--
-- Name: USERS_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."USERS_user_id_seq" OWNED BY public."USERS".user_id;


--
-- Name: authorization_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authorization_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.authorization_user_id_seq OWNER TO postgres;

--
-- Name: authorization_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authorization_user_id_seq OWNED BY public."AUTHORIZATION".user_id;


--
-- Name: AUTHORIZATION user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AUTHORIZATION" ALTER COLUMN user_id SET DEFAULT nextval('public.authorization_user_id_seq'::regclass);


--
-- Name: BOOKING booking_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BOOKING" ALTER COLUMN booking_id SET DEFAULT nextval('public."BOOKING_booking_id_seq"'::regclass);


--
-- Name: EVENTS event_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EVENTS" ALTER COLUMN event_id SET DEFAULT nextval('public."EVENTS_event_id_seq"'::regclass);


--
-- Name: ROOMS room_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROOMS" ALTER COLUMN room_id SET DEFAULT nextval('public."ROOMS_room_id_seq"'::regclass);


--
-- Name: USERS user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."USERS" ALTER COLUMN user_id SET DEFAULT nextval('public."USERS_user_id_seq"'::regclass);


--
-- Data for Name: AUTHORIZATION; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."AUTHORIZATION" (user_id, login, password) FROM stdin;
\.


--
-- Data for Name: BOOKING; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."BOOKING" (booking_id, author_id, event_id, admin_id, status, room_id) FROM stdin;
\.


--
-- Data for Name: EVENTS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EVENTS" (event_id, name, description, participants_count, honorary_guests, technical_requirements, brought_equipment, additional_comments) FROM stdin;
\.


--
-- Data for Name: ROLES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ROLES" (user_id, role) FROM stdin;
\.


--
-- Data for Name: ROOMS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."ROOMS" (room_id, name, capacity, description, available) FROM stdin;
\.


--
-- Data for Name: TIMES; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."TIMES" (event_id, date, time_start, time_end) FROM stdin;
\.


--
-- Data for Name: USERS; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."USERS" (user_id, firstname, lastname, patronymic, email, phone, organization) FROM stdin;
\.


--
-- Name: BOOKING_booking_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."BOOKING_booking_id_seq"', 1, false);


--
-- Name: EVENTS_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."EVENTS_event_id_seq"', 1, false);


--
-- Name: ROOMS_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."ROOMS_room_id_seq"', 1, false);


--
-- Name: USERS_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."USERS_user_id_seq"', 1, false);


--
-- Name: authorization_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authorization_user_id_seq', 1, false);


--
-- Name: BOOKING BOOKING_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BOOKING"
    ADD CONSTRAINT "BOOKING_pkey" PRIMARY KEY (booking_id);


--
-- Name: EVENTS EVENTS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EVENTS"
    ADD CONSTRAINT "EVENTS_pkey" PRIMARY KEY (event_id);


--
-- Name: ROLES ROLES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROLES"
    ADD CONSTRAINT "ROLES_pkey" PRIMARY KEY (user_id);


--
-- Name: ROOMS ROOMS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ROOMS"
    ADD CONSTRAINT "ROOMS_pkey" PRIMARY KEY (room_id);


--
-- Name: TIMES TIMES_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TIMES"
    ADD CONSTRAINT "TIMES_pkey" PRIMARY KEY (event_id);


--
-- Name: USERS USERS_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."USERS"
    ADD CONSTRAINT "USERS_pkey" PRIMARY KEY (user_id);


--
-- Name: AUTHORIZATION authorization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."AUTHORIZATION"
    ADD CONSTRAINT authorization_pkey PRIMARY KEY (user_id);


--
-- Name: BOOKING AdminFC; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BOOKING"
    ADD CONSTRAINT "AdminFC" FOREIGN KEY (admin_id) REFERENCES public."USERS"(user_id) NOT VALID;


--
-- Name: BOOKING AuthorFC; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BOOKING"
    ADD CONSTRAINT "AuthorFC" FOREIGN KEY (author_id) REFERENCES public."USERS"(user_id) NOT VALID;


--
-- Name: BOOKING EventFC; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BOOKING"
    ADD CONSTRAINT "EventFC" FOREIGN KEY (event_id) REFERENCES public."EVENTS"(event_id) NOT VALID;


--
-- Name: USERS PswdFC; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."USERS"
    ADD CONSTRAINT "PswdFC" FOREIGN KEY (user_id) REFERENCES public."AUTHORIZATION"(user_id) NOT VALID;


--
-- Name: USERS RolesFC; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."USERS"
    ADD CONSTRAINT "RolesFC" FOREIGN KEY (user_id) REFERENCES public."ROLES"(user_id) NOT VALID;


--
-- Name: BOOKING RoomFC; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."BOOKING"
    ADD CONSTRAINT "RoomFC" FOREIGN KEY (room_id) REFERENCES public."ROOMS"(room_id) NOT VALID;


--
-- Name: EVENTS TimeFC; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EVENTS"
    ADD CONSTRAINT "TimeFC" FOREIGN KEY (event_id) REFERENCES public."TIMES"(event_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

