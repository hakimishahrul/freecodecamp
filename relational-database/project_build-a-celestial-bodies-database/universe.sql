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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_km integer,
    class character varying(2),
    star_id integer NOT NULL,
    distance_from_sun integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    solar_mass numeric(16,2),
    distance_from_earth_ly numeric(16,2),
    is_rotating boolean,
    is_spiral boolean
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
    earth_mass numeric(10,9),
    radius numeric(10,4),
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    solar_mass numeric(12,9),
    radius_km numeric(8,2),
    description text,
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
    name character varying(30),
    solar_mass numeric(10,2),
    solar_radius numeric(10,2),
    description text,
    galaxy_id integer NOT NULL,
    class character varying(3)
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 939, 'G', 1, 2766);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 511, 'B', 1, 2773);
INSERT INTO public.asteroid VALUES (3, 'Juno', 254, 'S', 1, 2672);
INSERT INTO public.asteroid VALUES (4, 'Vesta', 254, 'V', 1, 2362);
INSERT INTO public.asteroid VALUES (6, 'Hebe', 195, 'S', 1, 2426);
INSERT INTO public.asteroid VALUES (7, 'Iris', 199, 'S', 1, 2386);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1150000000000.00, 26996.00, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1500000000000.00, 245000000.00, true, true);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 160000000000.00, 31000000.00, true, true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 138000000000.00, 163000.00, false, false);
INSERT INTO public.galaxy VALUES (5, 'Comet', 380000000.00, 3200000000.00, true, true);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 50000000000.00, 3200000.00, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.012300000, 1737.4000, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 1.784800000, 11.2667, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.247200000, 6.2000, false, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 0.008000000, 1560.8000, true, 5);
INSERT INTO public.moon VALUES (4, 'Io', 0.015000000, 1821.6000, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 0.025000000, 2634.1000, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 0.018000000, 2410.3000, true, 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 0.000006300, 198.2000, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 0.000018000, 252.1000, true, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 0.083000000, 531.1000, true, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 0.000183400, 561.4000, true, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 0.000390000, 763.8000, true, 6);
INSERT INTO public.moon VALUES (13, 'Titan', 0.022500000, 2574.7300, true, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', 0.000000940, 135.0000, false, 6);
INSERT INTO public.moon VALUES (15, 'Ariel', 0.000209337, 578.9000, true, 7);
INSERT INTO public.moon VALUES (16, 'Miranda', 0.000010710, 584.7000, true, 7);
INSERT INTO public.moon VALUES (17, 'Caliban', 0.000000042, 21.0000, false, 7);
INSERT INTO public.moon VALUES (18, 'Stephano', 0.000000004, 16.0000, false, 7);
INSERT INTO public.moon VALUES (19, 'Triton', 0.003590000, 1353.4000, true, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', 0.000005187, 178.5000, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0.000003000, 6371.00, 'You are here!', 1);
INSERT INTO public.planet VALUES (3, 'Venus', 0.000002000, 6051.80, 'Named after Roman goddess of love and beauty', 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 0.000000165, 2439.70, 'Smallest planet in the Solar System', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0.000000321, 3389.50, '1 year in Earth equals 687 days in Mars', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 0.000949100, 69911.00, 'Largest planet in the Solar System', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 0.000284170, 58232.00, 'Has a ring orbiting it', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 0.000043400, 25362.00, 'Uranus is translated as sky king star in Asia', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 0.000051210, 24622.00, 'Farthest large planet in Solar system', 1);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 0.000001201, 7642.42, 'Maybe habitable', 7);
INSERT INTO public.planet VALUES (10, 'Teegardens Star b', 0.000003153, 0.00, 'Also potentially habitable', 8);
INSERT INTO public.planet VALUES (11, 'HAT-P-6b', 0.001055770, 95084.36, 'Hot Jupiter', 9);
INSERT INTO public.planet VALUES (12, 'Saffar', 0.001622800, 128686.00, 'May not have moon.', 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpheratz', 3.80, 2.70, 'Temperature: 13800 K, Luminosity: 240 Lo', 2, 'A3V');
INSERT INTO public.star VALUES (3, 'Gamma Trianguli', 2.70, 1.96, 'Temperature: 9440 K, Luminosity: 33 Lo', 3, 'A1V');
INSERT INTO public.star VALUES (5, 'Antares', 14.30, 680.00, 'Temperature: 3660 K, Luminosity: 75900 Lo', 1, 'B3V');
INSERT INTO public.star VALUES (6, 'Almach', 23.70, 80.00, 'Temperature: 4250 K, Luminosity: 2000 Lo', 1, 'K2');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 19.00, 1021.00, 'Temperature: 3600 K, Luminosity: 150000 Lo', 1, 'M2');
INSERT INTO public.star VALUES (7, 'Kepler-186', 0.54, 0.52, 'Temperature: 3755 K, Luminosity: 0.055 Lo', 1, 'M1V');
INSERT INTO public.star VALUES (1, 'Sun', 1.00, 1.00, 'Temperature: 5e6 K, Luminosity: 3.828e26 W', 1, 'G2V');
INSERT INTO public.star VALUES (8, 'Teegardens Star', 0.09, 0.11, 'Temperature: 2904 K, Luminosity: 0.00073 Lo', 1, 'M7V');
INSERT INTO public.star VALUES (9, 'HAT-P-6', 129.00, 1.46, 'Temperature: 6570 K, Luminosity: 3.57 Lo', 2, 'F8V');
INSERT INTO public.star VALUES (10, 'Upsilon Andromedae', 1.27, 1.48, 'Temperature: 6213 K, Luminosity: 3.57 Lo', 2, 'F8V');


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
