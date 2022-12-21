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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    has_life boolean DEFAULT false,
    far boolean DEFAULT false,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    added integer
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
    name character varying(20),
    planet integer NOT NULL,
    info character varying(20),
    moon_id integer NOT NULL,
    plant integer
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
-- Name: more; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more (
    name character varying(20),
    more_plant integer NOT NULL,
    more_id integer NOT NULL
);


ALTER TABLE public.more OWNER TO freecodecamp;

--
-- Name: more_more_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_more_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_more_id_seq OWNER TO freecodecamp;

--
-- Name: more_more_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_more_id_seq OWNED BY public.more.more_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20),
    star_distance numeric NOT NULL,
    galaxy_id integer NOT NULL,
    foo integer NOT NULL,
    planet integer NOT NULL,
    plant integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(20),
    age_in_millions integer NOT NULL,
    star_type integer NOT NULL,
    galaxy_id integer NOT NULL,
    foo integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: more more_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more ALTER COLUMN more_id SET DEFAULT nextval('public.more_more_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (NULL, false, false, 'wt', 1, NULL);
INSERT INTO public.galaxy VALUES (NULL, false, false, 'wt', 2, NULL);
INSERT INTO public.galaxy VALUES (NULL, false, false, 'nice', 3, NULL);
INSERT INTO public.galaxy VALUES (NULL, false, false, 'wth', 4, NULL);
INSERT INTO public.galaxy VALUES (NULL, false, false, 'more', 5, NULL);
INSERT INTO public.galaxy VALUES (NULL, false, false, 'great', 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('first', 2, NULL, 1, NULL);
INSERT INTO public.moon VALUES ('first1', 5, NULL, 2, NULL);
INSERT INTO public.moon VALUES ('zero', 44, NULL, 3, NULL);
INSERT INTO public.moon VALUES ('zoz', 4, NULL, 4, NULL);
INSERT INTO public.moon VALUES ('zez', 432, NULL, 5, NULL);
INSERT INTO public.moon VALUES ('first2', 213, NULL, 6, NULL);
INSERT INTO public.moon VALUES ('zoz2', 12, NULL, 7, NULL);
INSERT INTO public.moon VALUES ('oo', 20, NULL, 8, NULL);
INSERT INTO public.moon VALUES ('ioi', 30, NULL, 9, NULL);
INSERT INTO public.moon VALUES ('sd', 40, NULL, 10, NULL);
INSERT INTO public.moon VALUES ('edef', 50, NULL, 11, NULL);
INSERT INTO public.moon VALUES ('gd', 60, NULL, 12, NULL);
INSERT INTO public.moon VALUES ('sdadw', 70, NULL, 13, NULL);
INSERT INTO public.moon VALUES ('csfe', 80, NULL, 14, NULL);
INSERT INTO public.moon VALUES ('ueih', 210, NULL, 15, NULL);
INSERT INTO public.moon VALUES ('aya', 330, NULL, 16, NULL);
INSERT INTO public.moon VALUES ('lol', 440, NULL, 17, NULL);
INSERT INTO public.moon VALUES ('yayo', 550, NULL, 18, NULL);
INSERT INTO public.moon VALUES ('fi1rst', 1000, NULL, 20, NULL);
INSERT INTO public.moon VALUES ('first11', 1111, NULL, 21, NULL);


--
-- Data for Name: more; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more VALUES ('first', 1, 1);
INSERT INTO public.more VALUES ('first2', 2, 2);
INSERT INTO public.more VALUES ('zoz
', 3, 3);
INSERT INTO public.more VALUES ('ze', 4, 4);
INSERT INTO public.more VALUES ('po', 5, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('first222', 1, 1, 1, 2, 1, 16);
INSERT INTO public.planet VALUES ('the first2221', 6, 10, 2, 5, 44, 17);
INSERT INTO public.planet VALUES ('wi', 5, 5, 3, 44, 21, 18);
INSERT INTO public.planet VALUES ('zer', 2, 23, 4, 4, 54, 19);
INSERT INTO public.planet VALUES ('zo', 21, 34, 5, 432, 12, 20);
INSERT INTO public.planet VALUES ('zoz', 21, 231, 6, 213, 312, 21);
INSERT INTO public.planet VALUES ('wtf', 21, 231, 10, 12, 321, 22);
INSERT INTO public.planet VALUES ('first22d2', 10, 1, 14, 20, 11, 25);
INSERT INTO public.planet VALUES ('the fdirst2221', 20, 10, 13, 30, 444, 26);
INSERT INTO public.planet VALUES ('dwi', 30, 5, 12, 40, 521, 27);
INSERT INTO public.planet VALUES ('zedr', 40, 23, 11, 50, 544, 28);
INSERT INTO public.planet VALUES ('dzo', 50, 34, 15, 60, 4512, 29);
INSERT INTO public.planet VALUES ('zozd', 60, 231, 9, 70, 3124, 30);
INSERT INTO public.planet VALUES ('dwtf', 70, 231, 8, 80, 3214, 31);
INSERT INTO public.planet VALUES ('firKst22d2', 110, 1, 50, 210, 111, 32);
INSERT INTO public.planet VALUES ('the fdirst2L221', 220, 10, 40, 330, 4444, 33);
INSERT INTO public.planet VALUES ('dwKi', 301, 5, 30, 440, 5321, 34);
INSERT INTO public.planet VALUES ('JzedJr', 440, 23, 20, 550, 5544, 35);
INSERT INTO public.planet VALUES ('first222d2', 1111, 1, 55, 1111, 1111, 39);
INSERT INTO public.planet VALUES ('the fdirst22321', 200, 10, 56, 1000, 1000, 40);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('first', 5, 2, 1, 5, 1);
INSERT INTO public.star VALUES ('first2', 1, 2, 1, 2, 7);
INSERT INTO public.star VALUES ('the first', 6, 2, 1, 1, 8);
INSERT INTO public.star VALUES ('first22', 1, 2, 1, 4, 10);
INSERT INTO public.star VALUES ('the first21', 6, 2, 1, 3, 11);
INSERT INTO public.star VALUES ('first222', 1, 2, 1, 6, 12);
INSERT INTO public.star VALUES ('the first2221', 6, 2, 1, 10, 13);
INSERT INTO public.star VALUES ('first2222', 1, 2, 1, 8, 14);
INSERT INTO public.star VALUES ('the3 first2221', 6, 2, 1, 7, 15);
INSERT INTO public.star VALUES ('first22322', 1, 2, 1, 9, 18);
INSERT INTO public.star VALUES ('4the3 first2221', 6, 2, 1, 11, 19);
INSERT INTO public.star VALUES ('first222322', 1, 2, 1, 13, 20);
INSERT INTO public.star VALUES ('4the3 fir1st2221', 6, 2, 1, 12, 21);
INSERT INTO public.star VALUES ('firjklst222322', 1, 2, 1, 15, 22);
INSERT INTO public.star VALUES ('4the3 fir1jklst2221', 6, 2, 1, 14, 23);
INSERT INTO public.star VALUES ('fir5st222322', 1, 2, 1, 30, 24);
INSERT INTO public.star VALUES ('4the354 fir1st2221', 6, 2, 1, 20, 25);
INSERT INTO public.star VALUES ('fir5Kst222322', 1, 2, 1, 50, 26);
INSERT INTO public.star VALUES ('4the354 fir1st222541', 6, 2, 1, 40, 27);
INSERT INTO public.star VALUES ('first3222322', 1, 2, 1, 56, 28);
INSERT INTO public.star VALUES ('4the32 fir1st2221', 6, 2, 1, 55, 29);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: more_more_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_more_id_seq', 5, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 29, true);


--
-- Name: galaxy galaxy_added_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_added_key UNIQUE (added);


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
-- Name: moon moon_zoo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_zoo_key UNIQUE (planet);


--
-- Name: more more_more_plant_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_more_plant_key UNIQUE (more_plant);


--
-- Name: more more_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_name_key UNIQUE (name);


--
-- Name: more more_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more
    ADD CONSTRAINT more_pkey PRIMARY KEY (more_id);


--
-- Name: planet planet_foo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_foo_key UNIQUE (foo);


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
-- Name: planet planet_plant_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_plant_key UNIQUE (plant);


--
-- Name: planet planet_zoo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_zoo_key UNIQUE (planet);


--
-- Name: star star_foo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_foo_key UNIQUE (foo);


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
-- Name: moon moon_zoo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_zoo_fkey FOREIGN KEY (planet) REFERENCES public.planet(planet);


--
-- Name: planet planet_foo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_foo_fkey FOREIGN KEY (foo) REFERENCES public.star(foo);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


