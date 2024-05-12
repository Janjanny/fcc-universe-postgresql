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
    type character varying(50),
    size numeric,
    distance integer,
    name character varying(80),
    count integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_count_seq OWNER TO freecodecamp;

--
-- Name: galaxy_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_count_seq OWNED BY public.galaxy.count;


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
-- Name: mission; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mission (
    mission_id integer NOT NULL,
    agency character varying(30),
    launch_date date,
    name character varying(80),
    count integer NOT NULL
);


ALTER TABLE public.mission OWNER TO freecodecamp;

--
-- Name: mission_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mission_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mission_count_seq OWNER TO freecodecamp;

--
-- Name: mission_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mission_count_seq OWNED BY public.mission.count;


--
-- Name: mission_mission_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mission_mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mission_mission_id_seq OWNER TO freecodecamp;

--
-- Name: mission_mission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mission_mission_id_seq OWNED BY public.mission.mission_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    radius integer,
    orbital_period integer,
    composition character varying(30),
    count integer NOT NULL,
    name character varying(90)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_count_seq OWNER TO freecodecamp;

--
-- Name: moon_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_count_seq OWNED BY public.moon.count;


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
    star_id integer,
    type text,
    mass integer,
    radius integer,
    orbital_period integer,
    has_atmosphere boolean,
    has_ring_system boolean,
    name character varying(80),
    count integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_composition; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_composition (
    planet_composition_id integer NOT NULL,
    average_temperature integer,
    name character varying(80),
    count integer NOT NULL
);


ALTER TABLE public.planet_composition OWNER TO freecodecamp;

--
-- Name: planet_composition_composition_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_composition_composition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_composition_composition_id_seq OWNER TO freecodecamp;

--
-- Name: planet_composition_composition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_composition_composition_id_seq OWNED BY public.planet_composition.planet_composition_id;


--
-- Name: planet_composition_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_composition_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_composition_count_seq OWNER TO freecodecamp;

--
-- Name: planet_composition_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_composition_count_seq OWNED BY public.planet_composition.count;


--
-- Name: planet_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_count_seq OWNER TO freecodecamp;

--
-- Name: planet_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_count_seq OWNED BY public.planet.count;


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
    galaxy_id integer,
    spectral_type character varying(2),
    mass integer,
    radius integer,
    age integer,
    name character varying(80),
    count integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_count_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_count_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_count_seq OWNER TO freecodecamp;

--
-- Name: star_count_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_count_seq OWNED BY public.star.count;


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
-- Name: galaxy count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN count SET DEFAULT nextval('public.galaxy_count_seq'::regclass);


--
-- Name: mission mission_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission ALTER COLUMN mission_id SET DEFAULT nextval('public.mission_mission_id_seq'::regclass);


--
-- Name: mission count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission ALTER COLUMN count SET DEFAULT nextval('public.mission_count_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN count SET DEFAULT nextval('public.moon_count_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN count SET DEFAULT nextval('public.planet_count_seq'::regclass);


--
-- Name: planet_composition planet_composition_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_composition ALTER COLUMN planet_composition_id SET DEFAULT nextval('public.planet_composition_composition_id_seq'::regclass);


--
-- Name: planet_composition count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_composition ALTER COLUMN count SET DEFAULT nextval('public.planet_composition_count_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star count; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN count SET DEFAULT nextval('public.star_count_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Spiral', 55000, 2300, 'Whirlpool Galaxy', 1);
INSERT INTO public.galaxy VALUES (2, 'Spiral', 70000, 29000, 'Sombrero Galaxy', 2);
INSERT INTO public.galaxy VALUES (3, 'Spiral', 65000, 25000, 'Pinwheel Galaxy', 3);
INSERT INTO public.galaxy VALUES (4, 'Spiral', 60000, 27000, 'Black Eye Galaxy', 4);
INSERT INTO public.galaxy VALUES (5, 'Spiral', 100000, 40000, 'Bode''s Galaxy', 5);
INSERT INTO public.galaxy VALUES (6, 'Spiral', 100000, 25000, 'Milky Way', 6);
INSERT INTO public.galaxy VALUES (7, 'Spiral', 120000, 27500, 'Andromeda', 7);


--
-- Data for Name: mission; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mission VALUES (1, 'NASA', '1969-07-16', 'Apollo 11', 1);
INSERT INTO public.mission VALUES (2, 'NASA', '2011-11-26', 'Mars Rover Curiosity', 2);
INSERT INTO public.mission VALUES (3, 'NASA/ESA', '1990-04-24', 'Hubble Space Telescope', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 1, 27, 'Rocky', 1, 'Luna');
INSERT INTO public.moon VALUES (2, 4, 1, 0, 'Rocky', 2, 'Phobos');
INSERT INTO public.moon VALUES (3, 4, 1, 1, 'Rocky', 3, 'Deimos');
INSERT INTO public.moon VALUES (4, 5, 1, 4, 'Icy', 4, 'Europa');
INSERT INTO public.moon VALUES (5, 6, 1, 16, 'Icy', 5, 'Titan');
INSERT INTO public.moon VALUES (8, 5, 1821, 1, 'Rocky', 8, 'Io');
INSERT INTO public.moon VALUES (9, 5, 1561, 2, 'Icy', 9, 'Eurospa');
INSERT INTO public.moon VALUES (10, 5, 2634, 3, 'Rocky/Icy', 10, 'Ganymede');
INSERT INTO public.moon VALUES (11, 5, 2410, 4, 'Rocky/Icy', 11, 'Callisto');
INSERT INTO public.moon VALUES (12, 5, 83, 5, 'Rocky', 12, 'Amalthea');
INSERT INTO public.moon VALUES (13, 5, 67, 6, 'Rocky', 13, 'Himalia');
INSERT INTO public.moon VALUES (14, 5, 43, 7, 'Rocky', 14, 'Elara');
INSERT INTO public.moon VALUES (15, 5, 30, 8, 'Rocky', 15, 'Pasiphae');
INSERT INTO public.moon VALUES (16, 5, 19, 9, 'Rocky', 16, 'Sinope');
INSERT INTO public.moon VALUES (17, 5, 18, 10, 'Rocky', 17, 'Lysithea');
INSERT INTO public.moon VALUES (18, 5, 23, 11, 'Rocky', 18, 'Carme');
INSERT INTO public.moon VALUES (19, 5, 14, 12, 'Rocky', 19, 'Ananke');
INSERT INTO public.moon VALUES (20, 5, 8, 13, 'Rocky', 20, 'Leda');
INSERT INTO public.moon VALUES (21, 5, 49, 14, 'Rocky', 21, 'Thebe');
INSERT INTO public.moon VALUES (22, 5, 8, 15, 'Rocky', 22, 'Adrastea');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Terrestrial', 1, 1, 88, false, false, 'Mercury', 1);
INSERT INTO public.planet VALUES (2, 1, 'Terrestrial', 1, 1, 255, true, false, 'Venus', 2);
INSERT INTO public.planet VALUES (3, 1, 'Terrestrial', 1, 1, 365, true, false, 'Earth', 3);
INSERT INTO public.planet VALUES (4, 1, 'Terrestrial', 1, 1, 687, true, false, 'Mars', 4);
INSERT INTO public.planet VALUES (5, 2, 'Gas Giant', 1, 1, 4333, true, true, 'Jupiter', 5);
INSERT INTO public.planet VALUES (6, 2, 'Gas Giant', 1, 1, 10759, true, true, 'Saturn', 6);
INSERT INTO public.planet VALUES (7, 2, 'Ice Giant', 1, 1, 30687, true, true, 'Uranus', 7);
INSERT INTO public.planet VALUES (8, 2, 'Ice Giant', 1, 1, 60190, true, true, 'Neptune', 8);
INSERT INTO public.planet VALUES (9, 4, 'Dwarf Planet', 1, 1, 9053, true, false, 'Pluto', 9);
INSERT INTO public.planet VALUES (10, 4, 'Dwarf Planet', 1, 1, 1681, false, false, 'Ceres', 10);
INSERT INTO public.planet VALUES (11, 5, 'Dwarf Planet', 1, 1, 103823, true, false, 'Haumea', 11);
INSERT INTO public.planet VALUES (12, 5, 'Dwarf Planet', 1, 1, 203830, true, false, 'Eris', 12);


--
-- Data for Name: planet_composition; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_composition VALUES (1, 20, 'Rocky', 1);
INSERT INTO public.planet_composition VALUES (2, -150, 'Gaseous', 2);
INSERT INTO public.planet_composition VALUES (3, -200, 'Icy', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 6, 'G', 1, 1, 5, 'Sun', 1);
INSERT INTO public.star VALUES (2, 6, 'G', 2, 2, 6, 'Alpha Centauri A', 2);
INSERT INTO public.star VALUES (3, 6, 'K', 2, 2, 6, 'Alpha Centauri B', 3);
INSERT INTO public.star VALUES (4, 6, 'M', 0, 0, 5, 'Proxima Centauri', 4);
INSERT INTO public.star VALUES (5, 6, 'M', 20, 20, 9, 'Betelgeuse', 5);
INSERT INTO public.star VALUES (6, 7, 'G', 2, 2, 7, 'Andromeda Star', 6);


--
-- Name: galaxy_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_count_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: mission_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mission_count_seq', 3, true);


--
-- Name: mission_mission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mission_mission_id_seq', 3, true);


--
-- Name: moon_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_count_seq', 22, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_composition_composition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_composition_composition_id_seq', 3, true);


--
-- Name: planet_composition_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_composition_count_seq', 3, true);


--
-- Name: planet_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_count_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_count_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_count_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_placeholder_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_placeholder_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mission mission_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_name_key UNIQUE (name);


--
-- Name: mission mission_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_pkey PRIMARY KEY (mission_id);


--
-- Name: moon moon_namer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_namer_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet_composition planet_composition_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_composition
    ADD CONSTRAINT planet_composition_name_key UNIQUE (name);


--
-- Name: planet_composition planet_composition_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_composition
    ADD CONSTRAINT planet_composition_pkey PRIMARY KEY (planet_composition_id);


--
-- Name: planet planet_namer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_namer_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_namer_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_namer_key UNIQUE (name);


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

