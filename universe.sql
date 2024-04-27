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
    description text,
    distance numeric(6,3),
    shape character varying(20)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    rating integer,
    livable boolean,
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
    description text,
    rating integer,
    livable boolean,
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
-- Name: sleep; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sleep (
    sleep_id integer NOT NULL,
    name character varying(50) NOT NULL,
    date date
);


ALTER TABLE public.sleep OWNER TO freecodecamp;

--
-- Name: sleep_sleep_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sleep_sleep_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sleep_sleep_id_seq OWNER TO freecodecamp;

--
-- Name: sleep_sleep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sleep_sleep_id_seq OWNED BY public.sleep.sleep_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    rating integer,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: sleep sleep_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sleep ALTER COLUMN sleep_id SET DEFAULT nextval('public.sleep_sleep_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', NULL, 0.000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', NULL, 0.025, NULL);
INSERT INTO public.galaxy VALUES (3, 'Virgo Stellar Stream', NULL, 0.030, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf Galaxy', NULL, 0.081, NULL);
INSERT INTO public.galaxy VALUES (5, 'Large Megellanic Cloud', NULL, 0.163, NULL);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', NULL, 0.197, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, 10, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, 6, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, 7, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', NULL, 8, false, 5);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, 9, false, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, 7, false, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, 6, false, 5);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, 8, false, 6);
INSERT INTO public.moon VALUES (10, 'Rhea', NULL, 6, false, 6);
INSERT INTO public.moon VALUES (11, 'Lapetus', NULL, 7, false, 6);
INSERT INTO public.moon VALUES (12, 'Triton', NULL, 9, false, 8);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, 8, false, 6);
INSERT INTO public.moon VALUES (13, 'Miranda', NULL, 5, false, 7);
INSERT INTO public.moon VALUES (14, 'Ariel', NULL, 7, false, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', NULL, 7, false, 7);
INSERT INTO public.moon VALUES (16, 'Titania', NULL, 6, false, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', NULL, 8, false, 7);
INSERT INTO public.moon VALUES (18, 'Nereid', NULL, 7, false, 8);
INSERT INTO public.moon VALUES (19, 'Proteus', NULL, 9, false, 8);
INSERT INTO public.moon VALUES (20, 'Larissa', NULL, 3, false, 8);
INSERT INTO public.moon VALUES (21, 'Despina', NULL, 2, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, 3, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, 7, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, 10, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, 8, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, 9, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, 8, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, 5, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, 6, false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri B', NULL, 8, false, 3);
INSERT INTO public.planet VALUES (10, 'Crazy Planet', NULL, 2, false, 5);
INSERT INTO public.planet VALUES (11, 'King', NULL, 9, false, 4);
INSERT INTO public.planet VALUES (12, 'Post', NULL, 8, false, 6);
INSERT INTO public.planet VALUES (13, 'Weekendd', NULL, 8, false, 6);


--
-- Data for Name: sleep; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sleep VALUES (1, 'First', NULL);
INSERT INTO public.sleep VALUES (2, 'Second', NULL);
INSERT INTO public.sleep VALUES (3, 'Third', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 10, 1);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, 9, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', NULL, 8, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', NULL, 6, 1);
INSERT INTO public.star VALUES (5, 'Rigel', NULL, 8, 1);
INSERT INTO public.star VALUES (6, 'Vega', NULL, 7, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: sleep_sleep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sleep_sleep_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: sleep sleep_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sleep
    ADD CONSTRAINT sleep_name_key UNIQUE (name);


--
-- Name: sleep sleep_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sleep
    ADD CONSTRAINT sleep_pkey PRIMARY KEY (sleep_id);


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
-- Name: moon moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

