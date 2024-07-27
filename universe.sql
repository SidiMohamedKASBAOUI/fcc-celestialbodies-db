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
-- Name: example_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.example_table (
    example_table_id integer NOT NULL,
    name character varying(255) NOT NULL,
    unique_col character varying(255),
    not_null_col1 integer NOT NULL,
    not_null_col2 text NOT NULL
);


ALTER TABLE public.example_table OWNER TO freecodecamp;

--
-- Name: example_table_example_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.example_table_example_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.example_table_example_table_id_seq OWNER TO freecodecamp;

--
-- Name: example_table_example_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.example_table_example_table_id_seq OWNED BY public.example_table.example_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    mass_in_kg integer NOT NULL,
    diameter_in_km integer NOT NULL,
    distance_in_ly numeric(5,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL
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
    name character varying(50),
    mass_in_kg integer NOT NULL,
    diameter_in_km integer NOT NULL,
    distance_in_ly numeric(5,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
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
    name character varying(50),
    mass_in_kg integer NOT NULL,
    diameter_in_km integer NOT NULL,
    distance_in_ly numeric(5,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    mass_in_kg integer NOT NULL,
    diameter_in_km integer NOT NULL,
    distance_in_ly numeric(5,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: example_table example_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.example_table ALTER COLUMN example_table_id SET DEFAULT nextval('public.example_table_example_table_id_seq'::regclass);


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
-- Data for Name: example_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.example_table VALUES (1, 'First Entry', 'unique_value_1', 10, 'This is a non-null text for the first row');
INSERT INTO public.example_table VALUES (2, 'Second Entry', 'unique_value_2', 20, 'This is a non-null text for the second row');
INSERT INTO public.example_table VALUES (3, 'Third Entry', 'unique_value_3', 30, 'This is a non-null text for the third row');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'andromeda', 1000, 12, 2.2, 'galaxy with a sexy name', false);
INSERT INTO public.galaxy VALUES (3, 'dark_galaxy', 1015, 10, 2.3, 'galaxy with a dark past', true);
INSERT INTO public.galaxy VALUES (4, 'galaxy_ultra', 1, 1, 0.3, 'maybe a galaxy maybe a phone definitely no life', false);
INSERT INTO public.galaxy VALUES (5, 'spiral_milkyway', 2040, 15, 3.1, 'our home galaxy, full of stars', true);
INSERT INTO public.galaxy VALUES (6, 'crimson_nebula', 750, 20, 4.0, 'a galaxy with a reddish hue', true);
INSERT INTO public.galaxy VALUES (7, 'quantum_expanse', 1234, 25, 5.5, 'a mysterious galaxy with unexplained phenomena', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 0, 0, 50.0, 'A large moon orbiting a distant planet', true, 24);
INSERT INTO public.moon VALUES (2, 'moon2', 0, 0, 51.2, 'A moon with significant geological activity', true, 25);
INSERT INTO public.moon VALUES (3, 'moon3', 0, 0, 52.5, 'An icy moon with a subsurface ocean', true, 26);
INSERT INTO public.moon VALUES (4, 'moon4', 0, 0, 53.8, 'A moon with a thin atmosphere', true, 27);
INSERT INTO public.moon VALUES (5, 'moon5', 0, 0, 55.0, 'A moon with prominent craters', true, 28);
INSERT INTO public.moon VALUES (6, 'moon6', 0, 0, 56.2, 'A moon with a strong magnetic field', true, 29);
INSERT INTO public.moon VALUES (7, 'moon7', 0, 0, 57.5, 'A moon with an unusual orbit', true, 30);
INSERT INTO public.moon VALUES (8, 'moon8', 0, 0, 58.8, 'A moon with significant volcanic activity', true, 31);
INSERT INTO public.moon VALUES (9, 'moon9', 0, 0, 60.0, 'A moon with a large ice cap', true, 32);
INSERT INTO public.moon VALUES (10, 'moon10', 0, 0, 61.2, 'A moon with a highly reflective surface', true, 33);
INSERT INTO public.moon VALUES (11, 'moon11', 0, 0, 62.5, 'A moon with a diverse range of terrains', true, 24);
INSERT INTO public.moon VALUES (12, 'moon12', 0, 0, 63.8, 'A moon with an unusual surface composition', true, 25);
INSERT INTO public.moon VALUES (13, 'moon13', 0, 0, 65.0, 'A moon with a prominent mountain range', true, 26);
INSERT INTO public.moon VALUES (14, 'moon14', 0, 0, 66.2, 'A moon with deep canyons and valleys', true, 27);
INSERT INTO public.moon VALUES (15, 'moon15', 0, 0, 67.5, 'A moon with frequent meteor showers', true, 28);
INSERT INTO public.moon VALUES (16, 'moon16', 0, 0, 68.8, 'A moon with a rich mineral composition', true, 29);
INSERT INTO public.moon VALUES (17, 'moon17', 0, 0, 70.0, 'A moon with extensive ice deposits', true, 30);
INSERT INTO public.moon VALUES (18, 'moon18', 0, 0, 71.2, 'A moon with significant tectonic activity', true, 31);
INSERT INTO public.moon VALUES (19, 'moon19', 0, 0, 72.5, 'A moon with a thin atmosphere and high winds', true, 32);
INSERT INTO public.moon VALUES (20, 'moon20', 0, 0, 73.8, 'A moon with a unique chemical composition', true, 33);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (24, 'mercury', 0, 0, 0.4, 'the closest planet to the Sun', true, 7);
INSERT INTO public.planet VALUES (25, 'venus', 1, 1, 1.0, 'the second planet from the Sun', true, 2);
INSERT INTO public.planet VALUES (26, 'earth', 1, 1, 1.8, 'our home planet', true, 3);
INSERT INTO public.planet VALUES (27, 'mars', 2, 0, 0.5, 'the red planet', true, 4);
INSERT INTO public.planet VALUES (28, 'jupiter', 5, 318, 11.2, 'the largest planet in the solar system', true, 5);
INSERT INTO public.planet VALUES (29, 'saturn', 10, 95, 9.5, 'famous for its rings', true, 6);
INSERT INTO public.planet VALUES (30, 'uranus', 19, 15, 4.0, 'an ice giant with a unique tilt', true, 7);
INSERT INTO public.planet VALUES (31, 'neptune', 30, 17, 3.9, 'the farthest known planet from the Sun', true, 2);
INSERT INTO public.planet VALUES (32, 'pluto', 39, 0, 0.7, 'a dwarf planet in the Kuiper belt', true, 3);
INSERT INTO public.planet VALUES (33, 'eris', 96, 0, 0.2, 'a distant dwarf planet with a large moon', true, 4);
INSERT INTO public.planet VALUES (34, 'super_jupiter', 5, 318, 120.0, 'a massive planet similar to Jupiter but larger', true, 5);
INSERT INTO public.planet VALUES (35, 'ultra_venus', 1, 1, 110.0, 'a super-sized version of Venus with unusual features', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'alpha_centauri', 4, 1, 1.0, 'the closest star system to the Sun', true, 2);
INSERT INTO public.star VALUES (3, 'betelgeuse', 643, 10, 6.0, 'a red supergiant star in the Orion constellation', true, 3);
INSERT INTO public.star VALUES (4, 'sirius', 9, 2, 1.7, 'the brightest star in the night sky', true, 4);
INSERT INTO public.star VALUES (5, 'vega', 25, 3, 2.1, 'a bright star in the constellation Lyra', true, 5);
INSERT INTO public.star VALUES (6, 'polaris', 433, 2, 1.8, 'the North Star, used for navigation', true, 6);
INSERT INTO public.star VALUES (7, 'proxima_centauri', 4, 0, 0.1, 'the closest known star to the Sun', true, 7);


--
-- Name: example_table_example_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.example_table_example_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 35, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: example_table example_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.example_table
    ADD CONSTRAINT example_table_pkey PRIMARY KEY (example_table_id);


--
-- Name: example_table example_table_unique_col_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.example_table
    ADD CONSTRAINT example_table_unique_col_key UNIQUE (unique_col);


--
-- Name: galaxy galaxy_distance_in_ly_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_in_ly_key UNIQUE (distance_in_ly);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_in_ly_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_in_ly_key UNIQUE (distance_in_ly);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_in_ly_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_in_ly_key UNIQUE (distance_in_ly);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_in_ly_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_in_ly_key UNIQUE (distance_in_ly);


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

