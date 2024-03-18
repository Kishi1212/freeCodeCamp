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
    name character varying(30),
    description text,
    age_in_millions_of_years integer,
    total_stars_in_millions integer NOT NULL
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
    name character varying(30),
    distance_from_earth_in_km numeric(18,3),
    radiation_level integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(30),
    liveable boolean NOT NULL,
    is_spherical boolean,
    star_id integer NOT NULL
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_ssystem_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_ssystem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_ssystem_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_ssystem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_ssystem_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    mass integer NOT NULL,
    galaxy_id integer NOT NULL,
    description text
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_ssystem_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy (M31)', 'The Andromeda Galaxy is a spiral galaxy located about 2.537 million light-years from Earth in the constellation of Andromeda. It is the closest spiral galaxy to the Milky Way and is part of the Local Group of galaxies.', 10000, 1000000);
INSERT INTO public.galaxy VALUES (2, 'Triangulum Galaxy (M33)', 'The Triangulum Galaxy is a spiral galaxy located approximately 3 million light-years from Earth in the constellation of Triangulum. It is the third-largest galaxy in the Local Group after the Milky Way and Andromeda.', 7500, 250000);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy (M51)', 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy located about 23 million light-years from Earth in the constellation of Canes Venatici. It is known for its prominent spiral arms and companion galaxy (NGC 5195).', 700, 50000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy (M104)', 'The Sombrero Galaxy is an unbarred spiral galaxy located approximately 28 million light-years from Earth in the constellation of Virgo. It is known for its prominent bulge and large central dust lane, giving it the appearance of a sombrero hat.', 9000, 5000);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud (LMC)', 'The Large Magellanic Cloud is a dwarf irregular galaxy located about 160,000 light-years from Earth in the constellation of Dorado. It is one of the Milky Way satellite galaxies and is visible to the naked eye from the Southern Hemisphere.', 11000, 50000);
INSERT INTO public.galaxy VALUES (6, 'Phoenix Galaxy (NGC 1316)', 'The Phoenix Galaxy is an elliptical galaxy located approximately 60 million light-years from Earth in the constellation of Fornax. It is known for its complex structure resulting from past mergers with other galaxies.', 9000, 123000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna Minoris', 250.000, 2, 2);
INSERT INTO public.moon VALUES (2, 'Celesia Companion', 150.000, 3, 7);
INSERT INTO public.moon VALUES (3, 'Aurora Beacon', 300.000, 1, 3);
INSERT INTO public.moon VALUES (4, 'Embera Shadow', 100.000, 5, 8);
INSERT INTO public.moon VALUES (5, 'Serenity Blessing', 200.000, 2, 2);
INSERT INTO public.moon VALUES (6, 'Inferno Fury', 50.000, 4, 12);
INSERT INTO public.moon VALUES (7, 'Phoenixia', 180.000, 2, 10);
INSERT INTO public.moon VALUES (8, 'Solara', 220.000, 1, 5);
INSERT INTO public.moon VALUES (9, 'Helios', 120.000, 3, 7);
INSERT INTO public.moon VALUES (10, 'Aurorae', 280.000, 2, 9);
INSERT INTO public.moon VALUES (11, 'Embera Tear', 80.000, 4, 8);
INSERT INTO public.moon VALUES (12, 'Seraphia', 190.000, 1, 11);
INSERT INTO public.moon VALUES (13, 'Novalet', 150.000, 2, 5);
INSERT INTO public.moon VALUES (14, 'Luminaris', 180.000, 1, 5);
INSERT INTO public.moon VALUES (15, 'Embera Embrace', 90.000, 4, 8);
INSERT INTO public.moon VALUES (16, 'Seraph Haven', 210.000, 1, 11);
INSERT INTO public.moon VALUES (17, 'Aurora Glow', 60.000, 5, 12);
INSERT INTO public.moon VALUES (18, 'Celestial Spark', 200.000, 1, 5);
INSERT INTO public.moon VALUES (19, 'Phoenixia Minor', 250.000, 3, 9);
INSERT INTO public.moon VALUES (20, 'Inferno Gaze', 60.000, 5, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Haven', true, true, 3);
INSERT INTO public.planet VALUES (2, 'Serenity', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Aurora', true, true, 3);
INSERT INTO public.planet VALUES (4, 'Titanos', false, true, 2);
INSERT INTO public.planet VALUES (5, 'Celestia', true, true, 2);
INSERT INTO public.planet VALUES (6, 'Inferno', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Nova Prime', true, true, 5);
INSERT INTO public.planet VALUES (8, 'Embera', false, true, 4);
INSERT INTO public.planet VALUES (9, 'Aurora Prime', true, true, 6);
INSERT INTO public.planet VALUES (10, 'Havenia', true, true, 6);
INSERT INTO public.planet VALUES (11, 'Seraphim', true, true, 4);
INSERT INTO public.planet VALUES (12, 'Inferno-4', false, true, 5);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Celestial Archipelago', 'The Celestial Archipelago is a network of planetary islands suspended in the vast expanse of space. Each planet within this system resembles a distinct island, offering diverse landscapes ranging from towering mountain ranges to vast oceanic expanses. Colonists and travelers are drawn to the Celestial Archipelago for its breathtaking vistas and untamed wilderness.');
INSERT INTO public.solar_system VALUES (2, 'Aurora Nexus', 'The Aurora Nexus is a celestial marvel characterized by its dazzling displays of colorful auroras that dance across the skies of its planets. This system is renowned for its unique planetary formations, featuring icy moons, gas giants with swirling storms, and mysterious terrestrial worlds. It offers a captivating blend of beauty and mystery for those who venture into its depths.');
INSERT INTO public.solar_system VALUES (3, 'Solstice System', 'The Solstice System is a vibrant star system teeming with planetary diversity. Its central star, Solstice, emits a warm, golden glow that bathes the orbiting planets in perpetual daylight. Planets within this system range from rocky, desert worlds to lush, verdant paradises, making it a captivating destination for explorers and settlers alike.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sombrero Alpha (SOM-A)', 300, 4, NULL);
INSERT INTO public.star VALUES (2, 'Sombrero Beta (SOM-B)', 350, 4, NULL);
INSERT INTO public.star VALUES (3, 'Sombrero Charlie (SOM-C)', 400, 4, NULL);
INSERT INTO public.star VALUES (4, 'Phoenix Alpha (PHX-A)', 450, 6, NULL);
INSERT INTO public.star VALUES (5, 'Phoenix Gamma (PHX-G)', 500, 6, NULL);
INSERT INTO public.star VALUES (6, 'Phoenix Epsilon (PHX-E)', 550, 6, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: solar_system_ssystem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_ssystem_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_id UNIQUE (solar_system_id);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


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

