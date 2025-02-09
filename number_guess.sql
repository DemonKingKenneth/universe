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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    u_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    u_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_u_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_u_id_seq OWNER TO freecodecamp;

--
-- Name: users_u_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_u_id_seq OWNED BY public.users.u_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users u_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN u_id SET DEFAULT nextval('public.users_u_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 955, 1);
INSERT INTO public.games VALUES (2, 519, 1);
INSERT INTO public.games VALUES (3, 281, 2);
INSERT INTO public.games VALUES (4, 156, 2);
INSERT INTO public.games VALUES (5, 612, 1);
INSERT INTO public.games VALUES (6, 554, 1);
INSERT INTO public.games VALUES (7, 426, 1);
INSERT INTO public.games VALUES (8, 810, 3);
INSERT INTO public.games VALUES (9, 769, 3);
INSERT INTO public.games VALUES (10, 740, 4);
INSERT INTO public.games VALUES (11, 66, 4);
INSERT INTO public.games VALUES (12, 961, 3);
INSERT INTO public.games VALUES (13, 202, 3);
INSERT INTO public.games VALUES (14, 396, 3);
INSERT INTO public.games VALUES (15, 734, 5);
INSERT INTO public.games VALUES (16, 571, 5);
INSERT INTO public.games VALUES (17, 502, 6);
INSERT INTO public.games VALUES (18, 855, 6);
INSERT INTO public.games VALUES (19, 399, 5);
INSERT INTO public.games VALUES (20, 895, 5);
INSERT INTO public.games VALUES (21, 955, 5);
INSERT INTO public.games VALUES (22, 14, 7);
INSERT INTO public.games VALUES (23, 10, 7);
INSERT INTO public.games VALUES (24, 154, 8);
INSERT INTO public.games VALUES (25, 691, 8);
INSERT INTO public.games VALUES (26, 207, 9);
INSERT INTO public.games VALUES (27, 730, 9);
INSERT INTO public.games VALUES (28, 439, 8);
INSERT INTO public.games VALUES (29, 903, 8);
INSERT INTO public.games VALUES (30, 551, 8);
INSERT INTO public.games VALUES (31, 818, 10);
INSERT INTO public.games VALUES (32, 64, 10);
INSERT INTO public.games VALUES (33, 838, 11);
INSERT INTO public.games VALUES (34, 522, 11);
INSERT INTO public.games VALUES (35, 901, 10);
INSERT INTO public.games VALUES (36, 595, 10);
INSERT INTO public.games VALUES (37, 95, 10);
INSERT INTO public.games VALUES (38, 722, 12);
INSERT INTO public.games VALUES (39, 229, 12);
INSERT INTO public.games VALUES (40, 356, 13);
INSERT INTO public.games VALUES (41, 211, 13);
INSERT INTO public.games VALUES (42, 60, 12);
INSERT INTO public.games VALUES (43, 527, 12);
INSERT INTO public.games VALUES (44, 891, 12);
INSERT INTO public.games VALUES (45, 446, 14);
INSERT INTO public.games VALUES (46, 673, 14);
INSERT INTO public.games VALUES (47, 783, 15);
INSERT INTO public.games VALUES (48, 283, 15);
INSERT INTO public.games VALUES (49, 549, 14);
INSERT INTO public.games VALUES (50, 621, 14);
INSERT INTO public.games VALUES (51, 881, 14);
INSERT INTO public.games VALUES (52, 995, 16);
INSERT INTO public.games VALUES (53, 181, 16);
INSERT INTO public.games VALUES (54, 50, 17);
INSERT INTO public.games VALUES (55, 499, 17);
INSERT INTO public.games VALUES (56, 958, 16);
INSERT INTO public.games VALUES (57, 158, 16);
INSERT INTO public.games VALUES (58, 802, 16);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1739083308846');
INSERT INTO public.users VALUES (2, 'user_1739083308845');
INSERT INTO public.users VALUES (3, 'user_1739083347419');
INSERT INTO public.users VALUES (4, 'user_1739083347418');
INSERT INTO public.users VALUES (5, 'user_1739083396652');
INSERT INTO public.users VALUES (6, 'user_1739083396651');
INSERT INTO public.users VALUES (7, 'Kenneth');
INSERT INTO public.users VALUES (8, 'user_1739083506324');
INSERT INTO public.users VALUES (9, 'user_1739083506323');
INSERT INTO public.users VALUES (10, 'user_1739083533538');
INSERT INTO public.users VALUES (11, 'user_1739083533537');
INSERT INTO public.users VALUES (12, 'user_1739083708594');
INSERT INTO public.users VALUES (13, 'user_1739083708593');
INSERT INTO public.users VALUES (14, 'user_1739083711747');
INSERT INTO public.users VALUES (15, 'user_1739083711746');
INSERT INTO public.users VALUES (16, 'user_1739083765160');
INSERT INTO public.users VALUES (17, 'user_1739083765159');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 58, true);


--
-- Name: users_u_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_u_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (u_id);


--
-- Name: games games_u_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_u_id_fkey FOREIGN KEY (u_id) REFERENCES public.users(u_id);


--
-- PostgreSQL database dump complete
--

