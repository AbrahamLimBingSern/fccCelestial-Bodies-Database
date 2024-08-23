--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    "real" boolean,
    history integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: human; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.human (
    human_id integer NOT NULL,
    name character varying(255) NOT NULL,
    age integer,
    description text,
    success boolean
);


ALTER TABLE public.human OWNER TO freecodecamp;

--
-- Name: human_human_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.human_human_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.human_human_id_seq OWNER TO freecodecamp;

--
-- Name: human_human_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.human_human_id_seq OWNED BY public.human.human_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    radius numeric(4,1),
    range integer,
    appear boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    radius numeric(4,1),
    range integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    amount integer,
    radius numeric(4,1),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: human human_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human ALTER COLUMN human_id SET DEFAULT nextval('public.human_human_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', true, 19, 'Big Galaxy');
INSERT INTO public.galaxy VALUES (2, 'Elysia Realm', false, 2024, 'The truth of beauty');
INSERT INTO public.galaxy VALUES (3, 'Honkai Impact', false, 2017, 'The tech to save otaku');
INSERT INTO public.galaxy VALUES (4, 'Bear Paw', true, 1723, 'Lynx');
INSERT INTO public.galaxy VALUES (5, 'Black Eyes', true, 1529, 'As known as Messier 81');
INSERT INTO public.galaxy VALUES (6, 'Aqours', false, 2015, 'The world only have beauty');


--
-- Data for Name: human; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.human VALUES (1, 'Abra', 24, 'Handsome boy', true);
INSERT INTO public.human VALUES (2, 'Kaisa', 20, 'Cute Girl', true);
INSERT INTO public.human VALUES (3, 'Sunday', 17, 'Kids', false);
INSERT INTO public.human VALUES (4, 'Robin', 16, 'Cute Girl with wings at hair', true);
INSERT INTO public.human VALUES (5, 'Sparkle', 15, 'Cute Girl with twin tails', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Stelle', 1.0, 1, true, 1);
INSERT INTO public.moon VALUES (2, 'Caelus', 1.0, 1, true, 1);
INSERT INTO public.moon VALUES (3, 'Walt', 1.0, 1, true, 2);
INSERT INTO public.moon VALUES (4, 'Dan Heng', 1.0, 1, true, 3);
INSERT INTO public.moon VALUES (5, 'March 7', 1.0, 1, true, 4);
INSERT INTO public.moon VALUES (6, 'Firefly', 1.0, 1, true, 5);
INSERT INTO public.moon VALUES (7, 'Ruan Mei', 1.0, 1, true, 6);
INSERT INTO public.moon VALUES (8, 'Topaz', 1.0, 1, true, 7);
INSERT INTO public.moon VALUES (9, 'Jing Liu', 1.0, 1, true, 7);
INSERT INTO public.moon VALUES (10, 'Huo Huo', 1.0, 1, true, 8);
INSERT INTO public.moon VALUES (11, 'Luo Cha', 1.0, 1, true, 9);
INSERT INTO public.moon VALUES (12, 'Seele', 1.0, 1, true, 10);
INSERT INTO public.moon VALUES (13, 'Sliver Wolf', 1.0, 1, true, 10);
INSERT INTO public.moon VALUES (14, 'Fu Xuan', 1.0, 1, true, 10);
INSERT INTO public.moon VALUES (15, 'Hanabi', 1.0, 1, true, 11);
INSERT INTO public.moon VALUES (16, 'Kafka', 1.0, 1, true, 12);
INSERT INTO public.moon VALUES (17, 'Blade', 1.0, 1, true, 12);
INSERT INTO public.moon VALUES (18, 'Jade', 1.0, 1, true, 11);
INSERT INTO public.moon VALUES (19, 'Ting Yun', 1.0, 1, true, 11);
INSERT INTO public.moon VALUES (20, 'Ashe', 1.0, 1, true, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'genshin', 4.0, 4, 3);
INSERT INTO public.planet VALUES (2, 'mihaha', 4.0, 5, 3);
INSERT INTO public.planet VALUES (3, 'wanghaha', 4.0, 5, 1);
INSERT INTO public.planet VALUES (4, 'Eden', 4.0, 5, 2);
INSERT INTO public.planet VALUES (5, 'Aponia', 4.0, 5, 2);
INSERT INTO public.planet VALUES (6, 'Vill-V', 4.0, 5, 2);
INSERT INTO public.planet VALUES (7, 'Kalpas', 4.0, 11, 4);
INSERT INTO public.planet VALUES (8, 'Kevin', 4.0, 1, 4);
INSERT INTO public.planet VALUES (9, 'Griseo', 4.0, 1, 5);
INSERT INTO public.planet VALUES (10, 'Hua', 4.0, 1, 6);
INSERT INTO public.planet VALUES (11, 'Sakura', 4.0, 1, 6);
INSERT INTO public.planet VALUES (12, 'Kesimo', 4.0, 111, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Chika', 3, 80.5, 6);
INSERT INTO public.star VALUES (2, 'Sakana', 2, 40.8, 6);
INSERT INTO public.star VALUES (3, 'Elysia', 10, 56.8, 2);
INSERT INTO public.star VALUES (4, 'Shine', 1, 22.2, 5);
INSERT INTO public.star VALUES (5, 'Himeko', 1200, 12.2, 1);
INSERT INTO public.star VALUES (6, 'Kiana', 1299910, 1.5, 3);
INSERT INTO public.star VALUES (7, 'Samsssung', 4, 50.0, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: human_human_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.human_human_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: human human_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_name_key UNIQUE (name);


--
-- Name: human human_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.human
    ADD CONSTRAINT human_pkey PRIMARY KEY (human_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

