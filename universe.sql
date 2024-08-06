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
    name character varying(40),
    distance_ly numeric(7,3),
    description text NOT NULL,
    has_chocolate boolean
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
    name character varying(40),
    times_visited integer,
    description text NOT NULL,
    planet_id integer,
    has_rabbits boolean
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
-- Name: multiverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.multiverse (
    multiverse_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL
);


ALTER TABLE public.multiverse OWNER TO freecodecamp;

--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.multiverse_multiverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiverse_multiverse_id_seq OWNER TO freecodecamp;

--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.multiverse_multiverse_id_seq OWNED BY public.multiverse.multiverse_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    times_visited integer,
    description text NOT NULL,
    gas_planet boolean,
    has_water boolean,
    star_id integer,
    has_rickroll boolean
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
    name character varying(40),
    distance_ly numeric(7,3),
    description text NOT NULL,
    galaxy_id integer,
    has_starwars boolean
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(40),
    description text NOT NULL,
    multiverse_id integer
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: multiverse multiverse_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse ALTER COLUMN multiverse_id SET DEFAULT nextval('public.multiverse_multiverse_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'A galaxy is a massive system of stars, gas, dust, and dark matter bound together by gravity.', NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 0.000, 'The galaxy we inhibit', NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 2.500, 'The closest galaxy to the Milky Way', NULL);
INSERT INTO public.galaxy VALUES (4, 'Underground', 0.000, 'A pocket galaxy that is present in the Milky Way', NULL);
INSERT INTO public.galaxy VALUES (5, 'Sarasaland', 4.000, 'Sister galaxy to the Mushroom Kingdom', NULL);
INSERT INTO public.galaxy VALUES (6, 'Brazil', 20.000, 'A unique galaxy that stands out from the rest', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, 'A moon is a natural satellite that orbits a planet or a smaller celestial body.', 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon', 5, 'Its the moon', 3, NULL);
INSERT INTO public.moon VALUES (3, 'MN49OVYA', 0, 'A moon that requires further investigation', 2, NULL);
INSERT INTO public.moon VALUES (4, 'A name', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (6, 'A namee', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (8, 'A nameee', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (12, 'Aa name', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (13, 'A ncame', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (14, 'A nzame', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (15, 'A vname', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (16, 'A nabme', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (17, 'A natme', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (18, 'A naopme', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (19, 'A nam22e', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (20, 'A namve', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (21, 'A nameeee', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (22, 'Hope youre having a nice day', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (23, 'Oh no', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (24, 'Looks like theres maybe a problem', 45, 'Sorry im lazy', 9, NULL);
INSERT INTO public.moon VALUES (26, 'A nam', 45, 'That sucks', 9, NULL);
INSERT INTO public.moon VALUES (27, 'Indeed it does, description', 45, 'Sorry im lazy', 9, NULL);


--
-- Data for Name: multiverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.multiverse VALUES (1, 'The Celestial Continuum', 'The first multiverse');
INSERT INTO public.multiverse VALUES (2, 'grogs', 'É o grogs');
INSERT INTO public.multiverse VALUES (3, 'BDE', 'Alternate version of TDA');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, 'A celestial body that orbits a star', NULL, NULL, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Mushroom Kingdom', 1, 'The kingdom of Princess Peach', false, true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Star Realm', 3, 'A realm where stars live in society', true, false, 3, NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', 0, 'A hot planet, closest to the Sun', false, false, 6, NULL);
INSERT INTO public.planet VALUES (5, 'Earth', 8, 'Our planet', false, true, 6, NULL);
INSERT INTO public.planet VALUES (6, 'Planet1', 4, 'Running out of ideas sorry', false, true, 4, NULL);
INSERT INTO public.planet VALUES (7, 'Planet2', 3, 'Running out of ideas sorry', false, false, 2, NULL);
INSERT INTO public.planet VALUES (8, 'Planet3', 88, 'Running out of ideas sorry', true, true, 5, NULL);
INSERT INTO public.planet VALUES (9, 'Planet4', 3, 'Running out of ideas sorry', true, false, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Planet5', 22, 'Running out of ideas sorry', false, true, 6, NULL);
INSERT INTO public.planet VALUES (11, 'LastPlanet', 2, 'This is the last planet hooray', true, false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'I lied', 1000, 'This is really the last one I swear', true, true, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, 'A star is a luminous sphere of plasma held together by its own gravity, undergoing nuclear fusion in its core to produce light and heat.', 1, NULL);
INSERT INTO public.star VALUES (2, 'Power Star', 0.400, 'It is rumored this star grants you invulnerability', 2, NULL);
INSERT INTO public.star VALUES (3, 'Twinky', 5.000, 'A star that speaks,its still a child', 2, NULL);
INSERT INTO public.star VALUES (4, 'Starly', 20.000, 'A sentient star, a little fellow', 5, NULL);
INSERT INTO public.star VALUES (5, 'New Jersey', 100.000, 'Do not approach this star.', 6, NULL);
INSERT INTO public.star VALUES (6, 'Starman', 0.000, 'He is the original       Starman', 4, NULL);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'bungolas', 'The grogs anime', 2);
INSERT INTO public.universe VALUES (2, 'general', 'A chat where you can talk about anything you want', 3);
INSERT INTO public.universe VALUES (3, 'TDC', 'The biggest team of translators of comics', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.multiverse_multiverse_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


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
-- Name: multiverse multiverse_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_name_key UNIQUE (name);


--
-- Name: multiverse multiverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_pkey PRIMARY KEY (multiverse_id);


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
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


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
-- Name: universe universe_multiverse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_multiverse_id_fkey FOREIGN KEY (multiverse_id) REFERENCES public.multiverse(multiverse_id);


--
-- PostgreSQL database dump complete
--

