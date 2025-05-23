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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric,
    ikan integer,
    ikan2 integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    ikan3 integer,
    ikan4 integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter integer,
    distance integer,
    description text,
    inoursolarsystem boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    type integer,
    inourgalaxy boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'ikan', NULL);
INSERT INTO public.asteroid VALUES (2, 'lele', NULL);
INSERT INTO public.asteroid VALUES (3, 'mamank', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'triangulum', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxy4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'galaxy5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'galaxy11', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'phoebe', 3, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'deimos', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 4, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 4, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 4, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 4, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 4, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 4, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 4, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 4, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 4, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'p1', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'p2', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, 'p3', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'p4', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'p11', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'pr', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'rrr', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'sdfsdf', NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, NULL, true, 1);
INSERT INTO public.star VALUES (2, 'alpha centaury', NULL, NULL, true, 1);
INSERT INTO public.star VALUES (3, 'star2', NULL, NULL, false, 2);
INSERT INTO public.star VALUES (5, 'star1', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'star222', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'star3', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (8, 'star4', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (9, 'star5', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (10, 'star66', NULL, NULL, NULL, 1);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key1 UNIQUE (name);


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

