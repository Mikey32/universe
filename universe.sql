--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: empire; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.empire (
    empire_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    estimated_net_worth numeric(21,2),
    population integer
);


ALTER TABLE public.empire OWNER TO freecodecamp;

--
-- Name: empires_empire_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.empires_empire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empires_empire_id_seq OWNER TO freecodecamp;

--
-- Name: empires_empire_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.empires_empire_id_seq OWNED BY public.empire.empire_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    num_stars numeric(15,0),
    type character varying(30)
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
    name character varying(30) NOT NULL,
    description text,
    has_atmo boolean,
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
    name character varying(30) NOT NULL,
    description text,
    has_atmo boolean,
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
    name character varying(30) NOT NULL,
    description text,
    galaxy_id integer,
    number_planets integer
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
-- Name: empire empire_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empire ALTER COLUMN empire_id SET DEFAULT nextval('public.empires_empire_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: empire; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.empire VALUES (1, 'Terrain Empire', 'Humans from earth', -45678985700843234.00, NULL);
INSERT INTO public.empire VALUES (2, 'Psychlos', 'From Psychlo miners', 2300000000.00, NULL);
INSERT INTO public.empire VALUES (3, 'Kilarathi empire', 'Evlolved from cats', 5.00, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Huge collection of stars, dust, and gas in a spiral shape. Home of the Terrains and Kilrathi', 300000000000, 'spiral');
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'Irregular Galaxy, elliptical shaped', 100000000000, 'elliptical, irregular');
INSERT INTO public.galaxy VALUES (3, 'Sagittarius Dwarf Elliptical Galaxy', 'May be torn apart from constant collisions with the Milky Way ', 1000000000, 'elliptical');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'Very large and brightest of messier objects ', 1000000000000, 'spiral');
INSERT INTO public.galaxy VALUES (5, 'Draco II', 'Large amounts of dark matter', NULL, 'peculiar');
INSERT INTO public.galaxy VALUES (6, 'Ursa Minor Dwarf', 'Sattelite galaxy of the milky way. No ongoing star formation', NULL, 'spheroidal');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Cold, dry', false, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', 'Small', false, 4);
INSERT INTO public.moon VALUES (3, 'Pheobos', 'Largest', false, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Magnetic field', true, 5);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Rocks and Ice', true, 5);
INSERT INTO public.moon VALUES (6, 'Lo', 'Very Hot', true, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 'Smooth Ice', true, 5);
INSERT INTO public.moon VALUES (8, 'Carme', 'Ireggular shaped', false, 5);
INSERT INTO public.moon VALUES (9, 'Amalthea', 'red irregular', false, 5);
INSERT INTO public.moon VALUES (10, 'Himalia', 'Broke apart asteroid', false, 5);
INSERT INTO public.moon VALUES (11, 'Elara', 'Dull', false, 5);
INSERT INTO public.moon VALUES (12, 'Calliope', 'Windy but desert', true, 12);
INSERT INTO public.moon VALUES (13, 'Cilo', 'Yellow Lots of mining', false, 12);
INSERT INTO public.moon VALUES (14, 'Euterpe', 'Ice Cold', true, 12);
INSERT INTO public.moon VALUES (15, 'Titatn', 'Dense atmo', true, 6);
INSERT INTO public.moon VALUES (16, 'Rhea', 'Cold', true, 6);
INSERT INTO public.moon VALUES (17, 'Lapetus', 'Two tone colors', false, 6);
INSERT INTO public.moon VALUES (18, 'Dione', 'Ice cliffs liquids', false, 6);
INSERT INTO public.moon VALUES (19, 'Tethys', 'Pure Ice', true, 6);
INSERT INTO public.moon VALUES (20, 'Enceladus', 'Cold', true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Very Hot', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Volcanic', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Watery', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Desert', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas, Many Moons', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas, Many Moons', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranis', 'Icy', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Cold', true, 1);
INSERT INTO public.planet VALUES (9, 'Psychlo', 'Strange Atmo', true, 7);
INSERT INTO public.planet VALUES (10, 'Kilrah', 'Volcanic', true, 6);
INSERT INTO public.planet VALUES (11, 'VegaPrime', 'Gas', true, 3);
INSERT INTO public.planet VALUES (12, 'Microtech', 'Snowy, terraformed', true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Home of the humans and Terrain Empire', 1, 8);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 'Triple Star System including Centauri B and C', 1, 0);
INSERT INTO public.star VALUES (3, 'Vega', 'Varies in brightness, large star', 1, 1);
INSERT INTO public.star VALUES (4, 'Barnards Star', 'Dangerous system with many stellar flares', 1, 1);
INSERT INTO public.star VALUES (5, 'Stanton', 'Debris and mining is abundant', 1, 3);
INSERT INTO public.star VALUES (6, 'Kilrah', 'Numerous volcanic planets', 1, 12);
INSERT INTO public.star VALUES (7, 'Psychlo', 'Home of the psychlos, reactive planetary atmospheres', 4, 8);


--
-- Name: empires_empire_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.empires_empire_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: empire empire0_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empire
    ADD CONSTRAINT empire0_unique UNIQUE (empire_id);


--
-- Name: empire empires_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.empire
    ADD CONSTRAINT empires_pkey PRIMARY KEY (empire_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: star pkey_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pkey_unique UNIQUE (star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

