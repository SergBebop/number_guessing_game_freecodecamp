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
    guesses integer DEFAULT 100 NOT NULL,
    user_id integer NOT NULL
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
    user_id integer NOT NULL,
    user_name character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 754, 9);
INSERT INTO public.games VALUES (2, 267, 9);
INSERT INTO public.games VALUES (3, 885, 10);
INSERT INTO public.games VALUES (4, 462, 10);
INSERT INTO public.games VALUES (5, 893, 9);
INSERT INTO public.games VALUES (6, 747, 9);
INSERT INTO public.games VALUES (7, 281, 9);
INSERT INTO public.games VALUES (8, 220, 11);
INSERT INTO public.games VALUES (9, 188, 11);
INSERT INTO public.games VALUES (10, 219, 12);
INSERT INTO public.games VALUES (11, 527, 12);
INSERT INTO public.games VALUES (12, 127, 11);
INSERT INTO public.games VALUES (13, 136, 11);
INSERT INTO public.games VALUES (14, 697, 11);
INSERT INTO public.games VALUES (15, 10, 13);
INSERT INTO public.games VALUES (16, 712, 13);
INSERT INTO public.games VALUES (17, 274, 14);
INSERT INTO public.games VALUES (18, 669, 14);
INSERT INTO public.games VALUES (19, 251, 13);
INSERT INTO public.games VALUES (20, 219, 13);
INSERT INTO public.games VALUES (21, 414, 13);
INSERT INTO public.games VALUES (22, 35, 15);
INSERT INTO public.games VALUES (23, 339, 15);
INSERT INTO public.games VALUES (24, 658, 16);
INSERT INTO public.games VALUES (25, 928, 16);
INSERT INTO public.games VALUES (26, 812, 15);
INSERT INTO public.games VALUES (27, 487, 15);
INSERT INTO public.games VALUES (28, 224, 15);
INSERT INTO public.games VALUES (29, 979, 17);
INSERT INTO public.games VALUES (30, 364, 17);
INSERT INTO public.games VALUES (31, 538, 18);
INSERT INTO public.games VALUES (32, 74, 18);
INSERT INTO public.games VALUES (33, 741, 17);
INSERT INTO public.games VALUES (34, 362, 17);
INSERT INTO public.games VALUES (35, 167, 17);
INSERT INTO public.games VALUES (36, 525, 19);
INSERT INTO public.games VALUES (37, 163, 19);
INSERT INTO public.games VALUES (38, 344, 20);
INSERT INTO public.games VALUES (39, 631, 20);
INSERT INTO public.games VALUES (40, 250, 19);
INSERT INTO public.games VALUES (41, 499, 19);
INSERT INTO public.games VALUES (42, 513, 19);
INSERT INTO public.games VALUES (43, 775, 21);
INSERT INTO public.games VALUES (44, 999, 21);
INSERT INTO public.games VALUES (45, 494, 22);
INSERT INTO public.games VALUES (46, 855, 22);
INSERT INTO public.games VALUES (47, 653, 21);
INSERT INTO public.games VALUES (48, 316, 21);
INSERT INTO public.games VALUES (49, 322, 21);
INSERT INTO public.games VALUES (50, 824, 23);
INSERT INTO public.games VALUES (51, 633, 23);
INSERT INTO public.games VALUES (52, 511, 24);
INSERT INTO public.games VALUES (53, 193, 24);
INSERT INTO public.games VALUES (54, 998, 23);
INSERT INTO public.games VALUES (55, 29, 23);
INSERT INTO public.games VALUES (56, 89, 23);
INSERT INTO public.games VALUES (57, 527, 25);
INSERT INTO public.games VALUES (58, 491, 25);
INSERT INTO public.games VALUES (59, 298, 26);
INSERT INTO public.games VALUES (60, 506, 26);
INSERT INTO public.games VALUES (61, 120, 25);
INSERT INTO public.games VALUES (62, 966, 25);
INSERT INTO public.games VALUES (63, 419, 25);
INSERT INTO public.games VALUES (64, 956, 27);
INSERT INTO public.games VALUES (65, 857, 27);
INSERT INTO public.games VALUES (66, 669, 28);
INSERT INTO public.games VALUES (67, 41, 28);
INSERT INTO public.games VALUES (68, 127, 27);
INSERT INTO public.games VALUES (69, 847, 27);
INSERT INTO public.games VALUES (70, 640, 27);
INSERT INTO public.games VALUES (71, 102, 29);
INSERT INTO public.games VALUES (72, 996, 29);
INSERT INTO public.games VALUES (73, 692, 30);
INSERT INTO public.games VALUES (74, 95, 30);
INSERT INTO public.games VALUES (75, 316, 29);
INSERT INTO public.games VALUES (76, 646, 29);
INSERT INTO public.games VALUES (77, 389, 29);
INSERT INTO public.games VALUES (78, 59, 31);
INSERT INTO public.games VALUES (79, 831, 31);
INSERT INTO public.games VALUES (80, 382, 32);
INSERT INTO public.games VALUES (81, 874, 32);
INSERT INTO public.games VALUES (82, 614, 31);
INSERT INTO public.games VALUES (83, 227, 31);
INSERT INTO public.games VALUES (84, 604, 31);
INSERT INTO public.games VALUES (85, 902, 33);
INSERT INTO public.games VALUES (86, 288, 33);
INSERT INTO public.games VALUES (87, 526, 34);
INSERT INTO public.games VALUES (88, 948, 34);
INSERT INTO public.games VALUES (89, 657, 33);
INSERT INTO public.games VALUES (90, 119, 33);
INSERT INTO public.games VALUES (91, 106, 33);
INSERT INTO public.games VALUES (92, 538, 35);
INSERT INTO public.games VALUES (93, 929, 35);
INSERT INTO public.games VALUES (94, 446, 36);
INSERT INTO public.games VALUES (95, 53, 36);
INSERT INTO public.games VALUES (96, 288, 35);
INSERT INTO public.games VALUES (97, 286, 35);
INSERT INTO public.games VALUES (98, 216, 35);
INSERT INTO public.games VALUES (99, 358, 37);
INSERT INTO public.games VALUES (100, 152, 37);
INSERT INTO public.games VALUES (101, 569, 38);
INSERT INTO public.games VALUES (102, 642, 38);
INSERT INTO public.games VALUES (103, 805, 37);
INSERT INTO public.games VALUES (104, 148, 37);
INSERT INTO public.games VALUES (105, 723, 37);
INSERT INTO public.games VALUES (106, 879, 39);
INSERT INTO public.games VALUES (107, 970, 39);
INSERT INTO public.games VALUES (108, 849, 40);
INSERT INTO public.games VALUES (109, 4, 40);
INSERT INTO public.games VALUES (110, 661, 39);
INSERT INTO public.games VALUES (111, 405, 39);
INSERT INTO public.games VALUES (112, 927, 39);
INSERT INTO public.games VALUES (113, 251, 41);
INSERT INTO public.games VALUES (114, 60, 41);
INSERT INTO public.games VALUES (115, 315, 42);
INSERT INTO public.games VALUES (116, 8, 42);
INSERT INTO public.games VALUES (117, 668, 41);
INSERT INTO public.games VALUES (118, 434, 41);
INSERT INTO public.games VALUES (119, 149, 41);
INSERT INTO public.games VALUES (120, 336, 43);
INSERT INTO public.games VALUES (121, 798, 43);
INSERT INTO public.games VALUES (122, 882, 44);
INSERT INTO public.games VALUES (123, 55, 44);
INSERT INTO public.games VALUES (124, 920, 43);
INSERT INTO public.games VALUES (125, 181, 43);
INSERT INTO public.games VALUES (126, 995, 43);
INSERT INTO public.games VALUES (127, 287, 45);
INSERT INTO public.games VALUES (128, 910, 45);
INSERT INTO public.games VALUES (129, 935, 46);
INSERT INTO public.games VALUES (130, 291, 46);
INSERT INTO public.games VALUES (131, 888, 45);
INSERT INTO public.games VALUES (132, 520, 45);
INSERT INTO public.games VALUES (133, 785, 45);
INSERT INTO public.games VALUES (134, 142, 47);
INSERT INTO public.games VALUES (135, 789, 47);
INSERT INTO public.games VALUES (136, 5, 48);
INSERT INTO public.games VALUES (137, 910, 48);
INSERT INTO public.games VALUES (138, 529, 47);
INSERT INTO public.games VALUES (139, 214, 47);
INSERT INTO public.games VALUES (140, 562, 47);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1728044126949');
INSERT INTO public.users VALUES (2, 'user_1728044126948');
INSERT INTO public.users VALUES (3, 'user_1728044129375');
INSERT INTO public.users VALUES (4, 'user_1728044129374');
INSERT INTO public.users VALUES (5, 'user_1728044131074');
INSERT INTO public.users VALUES (6, 'user_1728044131073');
INSERT INTO public.users VALUES (7, 'user_1728044158468');
INSERT INTO public.users VALUES (8, 'user_1728044158467');
INSERT INTO public.users VALUES (9, 'user_1728045932529');
INSERT INTO public.users VALUES (10, 'user_1728045932528');
INSERT INTO public.users VALUES (11, 'user_1728046201762');
INSERT INTO public.users VALUES (12, 'user_1728046201761');
INSERT INTO public.users VALUES (13, 'user_1728046204444');
INSERT INTO public.users VALUES (14, 'user_1728046204443');
INSERT INTO public.users VALUES (15, 'user_1728046206600');
INSERT INTO public.users VALUES (16, 'user_1728046206599');
INSERT INTO public.users VALUES (17, 'user_1728046218509');
INSERT INTO public.users VALUES (18, 'user_1728046218508');
INSERT INTO public.users VALUES (19, 'user_1728046222643');
INSERT INTO public.users VALUES (20, 'user_1728046222642');
INSERT INTO public.users VALUES (21, 'user_1728046244652');
INSERT INTO public.users VALUES (22, 'user_1728046244651');
INSERT INTO public.users VALUES (23, 'user_1728046246835');
INSERT INTO public.users VALUES (24, 'user_1728046246834');
INSERT INTO public.users VALUES (25, 'user_1728046248680');
INSERT INTO public.users VALUES (26, 'user_1728046248679');
INSERT INTO public.users VALUES (27, 'user_1728046250558');
INSERT INTO public.users VALUES (28, 'user_1728046250557');
INSERT INTO public.users VALUES (29, 'user_1728046252456');
INSERT INTO public.users VALUES (30, 'user_1728046252455');
INSERT INTO public.users VALUES (31, 'user_1728046255327');
INSERT INTO public.users VALUES (32, 'user_1728046255326');
INSERT INTO public.users VALUES (33, 'user_1728046260746');
INSERT INTO public.users VALUES (34, 'user_1728046260745');
INSERT INTO public.users VALUES (35, 'user_1728046266873');
INSERT INTO public.users VALUES (36, 'user_1728046266872');
INSERT INTO public.users VALUES (37, 'user_1728046314729');
INSERT INTO public.users VALUES (38, 'user_1728046314728');
INSERT INTO public.users VALUES (39, 'user_1728046357931');
INSERT INTO public.users VALUES (40, 'user_1728046357930');
INSERT INTO public.users VALUES (41, 'user_1728046451249');
INSERT INTO public.users VALUES (42, 'user_1728046451248');
INSERT INTO public.users VALUES (43, 'user_1728046763718');
INSERT INTO public.users VALUES (44, 'user_1728046763717');
INSERT INTO public.users VALUES (45, 'user_1728046795939');
INSERT INTO public.users VALUES (46, 'user_1728046795938');
INSERT INTO public.users VALUES (47, 'user_1728046846477');
INSERT INTO public.users VALUES (48, 'user_1728046846476');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 140, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

