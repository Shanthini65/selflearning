--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    user_id integer,
    guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 51);
INSERT INTO public.games VALUES (2, 1, 747);
INSERT INTO public.games VALUES (3, 2, 329);
INSERT INTO public.games VALUES (4, 2, 767);
INSERT INTO public.games VALUES (5, 1, 113);
INSERT INTO public.games VALUES (6, 1, 32);
INSERT INTO public.games VALUES (7, 1, 672);
INSERT INTO public.games VALUES (8, 3, 137);
INSERT INTO public.games VALUES (9, 3, 228);
INSERT INTO public.games VALUES (10, 4, 638);
INSERT INTO public.games VALUES (11, 4, 333);
INSERT INTO public.games VALUES (12, 3, 460);
INSERT INTO public.games VALUES (13, 3, 711);
INSERT INTO public.games VALUES (14, 3, 419);
INSERT INTO public.games VALUES (15, 5, 49);
INSERT INTO public.games VALUES (16, 5, 803);
INSERT INTO public.games VALUES (17, 6, 270);
INSERT INTO public.games VALUES (18, 6, 883);
INSERT INTO public.games VALUES (19, 5, 824);
INSERT INTO public.games VALUES (20, 5, 603);
INSERT INTO public.games VALUES (21, 5, 874);
INSERT INTO public.games VALUES (22, 7, 131);
INSERT INTO public.games VALUES (23, 7, 356);
INSERT INTO public.games VALUES (24, 8, 550);
INSERT INTO public.games VALUES (25, 8, 216);
INSERT INTO public.games VALUES (26, 7, 453);
INSERT INTO public.games VALUES (27, 7, 649);
INSERT INTO public.games VALUES (28, 7, 402);
INSERT INTO public.games VALUES (29, 9, 151);
INSERT INTO public.games VALUES (30, 9, 838);
INSERT INTO public.games VALUES (31, 10, 948);
INSERT INTO public.games VALUES (32, 10, 148);
INSERT INTO public.games VALUES (33, 9, 119);
INSERT INTO public.games VALUES (34, 9, 461);
INSERT INTO public.games VALUES (35, 9, 105);
INSERT INTO public.games VALUES (36, 11, 441);
INSERT INTO public.games VALUES (37, 11, 270);
INSERT INTO public.games VALUES (38, 12, 510);
INSERT INTO public.games VALUES (39, 12, 263);
INSERT INTO public.games VALUES (40, 11, 179);
INSERT INTO public.games VALUES (41, 11, 717);
INSERT INTO public.games VALUES (42, 11, 867);
INSERT INTO public.games VALUES (43, 13, 146);
INSERT INTO public.games VALUES (44, 13, 800);
INSERT INTO public.games VALUES (45, 14, 793);
INSERT INTO public.games VALUES (46, 14, 523);
INSERT INTO public.games VALUES (47, 13, 858);
INSERT INTO public.games VALUES (48, 13, 296);
INSERT INTO public.games VALUES (49, 13, 342);
INSERT INTO public.games VALUES (50, 15, 467);
INSERT INTO public.games VALUES (51, 15, 336);
INSERT INTO public.games VALUES (52, 16, 380);
INSERT INTO public.games VALUES (53, 16, 932);
INSERT INTO public.games VALUES (54, 15, 650);
INSERT INTO public.games VALUES (55, 15, 593);
INSERT INTO public.games VALUES (56, 15, 332);
INSERT INTO public.games VALUES (57, 17, 888);
INSERT INTO public.games VALUES (58, 17, 568);
INSERT INTO public.games VALUES (59, 18, 631);
INSERT INTO public.games VALUES (60, 18, 748);
INSERT INTO public.games VALUES (61, 17, 330);
INSERT INTO public.games VALUES (62, 17, 650);
INSERT INTO public.games VALUES (63, 17, 724);
INSERT INTO public.games VALUES (64, 19, 381);
INSERT INTO public.games VALUES (65, 19, 188);
INSERT INTO public.games VALUES (66, 20, 79);
INSERT INTO public.games VALUES (67, 20, 51);
INSERT INTO public.games VALUES (68, 19, 201);
INSERT INTO public.games VALUES (69, 19, 252);
INSERT INTO public.games VALUES (70, 19, 902);
INSERT INTO public.games VALUES (71, 21, 215);
INSERT INTO public.games VALUES (72, 21, 761);
INSERT INTO public.games VALUES (73, 22, 971);
INSERT INTO public.games VALUES (74, 22, 422);
INSERT INTO public.games VALUES (75, 21, 358);
INSERT INTO public.games VALUES (76, 21, 30);
INSERT INTO public.games VALUES (77, 21, 724);
INSERT INTO public.games VALUES (78, 23, 564);
INSERT INTO public.games VALUES (79, 23, 498);
INSERT INTO public.games VALUES (80, 24, 113);
INSERT INTO public.games VALUES (81, 24, 834);
INSERT INTO public.games VALUES (82, 23, 460);
INSERT INTO public.games VALUES (83, 23, 797);
INSERT INTO public.games VALUES (84, 23, 998);
INSERT INTO public.games VALUES (85, 25, 758);
INSERT INTO public.games VALUES (86, 25, 543);
INSERT INTO public.games VALUES (87, 26, 693);
INSERT INTO public.games VALUES (88, 26, 164);
INSERT INTO public.games VALUES (89, 25, 542);
INSERT INTO public.games VALUES (90, 25, 518);
INSERT INTO public.games VALUES (91, 25, 576);
INSERT INTO public.games VALUES (92, 27, 34);
INSERT INTO public.games VALUES (93, 27, 677);
INSERT INTO public.games VALUES (94, 28, 936);
INSERT INTO public.games VALUES (95, 28, 587);
INSERT INTO public.games VALUES (96, 27, 30);
INSERT INTO public.games VALUES (97, 27, 48);
INSERT INTO public.games VALUES (98, 27, 601);
INSERT INTO public.games VALUES (99, 29, 167);
INSERT INTO public.games VALUES (100, 29, 232);
INSERT INTO public.games VALUES (101, 30, 663);
INSERT INTO public.games VALUES (102, 30, 181);
INSERT INTO public.games VALUES (103, 29, 179);
INSERT INTO public.games VALUES (104, 29, 691);
INSERT INTO public.games VALUES (105, 29, 711);
INSERT INTO public.games VALUES (106, 31, 157);
INSERT INTO public.games VALUES (107, 31, 689);
INSERT INTO public.games VALUES (108, 32, 350);
INSERT INTO public.games VALUES (109, 32, 724);
INSERT INTO public.games VALUES (110, 31, 467);
INSERT INTO public.games VALUES (111, 31, 735);
INSERT INTO public.games VALUES (112, 31, 333);
INSERT INTO public.games VALUES (113, 33, 504);
INSERT INTO public.games VALUES (114, 33, 917);
INSERT INTO public.games VALUES (115, 34, 147);
INSERT INTO public.games VALUES (116, 34, 915);
INSERT INTO public.games VALUES (117, 33, 163);
INSERT INTO public.games VALUES (118, 33, 748);
INSERT INTO public.games VALUES (119, 33, 543);
INSERT INTO public.games VALUES (120, 35, 560);
INSERT INTO public.games VALUES (121, 35, 995);
INSERT INTO public.games VALUES (122, 36, 227);
INSERT INTO public.games VALUES (123, 36, 119);
INSERT INTO public.games VALUES (124, 35, 824);
INSERT INTO public.games VALUES (125, 35, 384);
INSERT INTO public.games VALUES (126, 35, 388);
INSERT INTO public.games VALUES (127, 37, 573);
INSERT INTO public.games VALUES (128, 37, 530);
INSERT INTO public.games VALUES (129, 38, 331);
INSERT INTO public.games VALUES (130, 38, 47);
INSERT INTO public.games VALUES (131, 37, 589);
INSERT INTO public.games VALUES (132, 37, 386);
INSERT INTO public.games VALUES (133, 37, 820);
INSERT INTO public.games VALUES (134, 39, 134);
INSERT INTO public.games VALUES (135, 39, 234);
INSERT INTO public.games VALUES (136, 40, 649);
INSERT INTO public.games VALUES (137, 40, 138);
INSERT INTO public.games VALUES (138, 39, 752);
INSERT INTO public.games VALUES (139, 39, 171);
INSERT INTO public.games VALUES (140, 39, 489);
INSERT INTO public.games VALUES (141, 41, 703);
INSERT INTO public.games VALUES (142, 41, 287);
INSERT INTO public.games VALUES (143, 42, 885);
INSERT INTO public.games VALUES (144, 42, 576);
INSERT INTO public.games VALUES (145, 41, 513);
INSERT INTO public.games VALUES (146, 41, 990);
INSERT INTO public.games VALUES (147, 41, 699);
INSERT INTO public.games VALUES (148, 43, 160);
INSERT INTO public.games VALUES (149, 43, 446);
INSERT INTO public.games VALUES (150, 44, 582);
INSERT INTO public.games VALUES (151, 44, 705);
INSERT INTO public.games VALUES (152, 43, 935);
INSERT INTO public.games VALUES (153, 43, 120);
INSERT INTO public.games VALUES (154, 43, 716);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1790004903652');
INSERT INTO public.users VALUES (2, 'user_1790004903651');
INSERT INTO public.users VALUES (3, 'user_1790004968699');
INSERT INTO public.users VALUES (4, 'user_1790004968698');
INSERT INTO public.users VALUES (5, 'user_1790005094239');
INSERT INTO public.users VALUES (6, 'user_1790005094238');
INSERT INTO public.users VALUES (7, 'user_1790005141766');
INSERT INTO public.users VALUES (8, 'user_1790005141765');
INSERT INTO public.users VALUES (9, 'user_1790005187676');
INSERT INTO public.users VALUES (10, 'user_1790005187675');
INSERT INTO public.users VALUES (11, 'user_1790005270405');
INSERT INTO public.users VALUES (12, 'user_1790005270404');
INSERT INTO public.users VALUES (13, 'user_1790005363974');
INSERT INTO public.users VALUES (14, 'user_1790005363973');
INSERT INTO public.users VALUES (15, 'user_1790005424177');
INSERT INTO public.users VALUES (16, 'user_1790005424176');
INSERT INTO public.users VALUES (17, 'user_1790005432654');
INSERT INTO public.users VALUES (18, 'user_1790005432653');
INSERT INTO public.users VALUES (19, 'user_1790005451588');
INSERT INTO public.users VALUES (20, 'user_1790005451587');
INSERT INTO public.users VALUES (21, 'user_1790005516344');
INSERT INTO public.users VALUES (22, 'user_1790005516343');
INSERT INTO public.users VALUES (23, 'user_1790005555308');
INSERT INTO public.users VALUES (24, 'user_1790005555307');
INSERT INTO public.users VALUES (25, 'user_1790005603661');
INSERT INTO public.users VALUES (26, 'user_1790005603660');
INSERT INTO public.users VALUES (27, 'user_1790005665323');
INSERT INTO public.users VALUES (28, 'user_1790005665322');
INSERT INTO public.users VALUES (29, 'user_1790005702000');
INSERT INTO public.users VALUES (30, 'user_1790005701999');
INSERT INTO public.users VALUES (31, 'user_1790005705348');
INSERT INTO public.users VALUES (32, 'user_1790005705347');
INSERT INTO public.users VALUES (33, 'user_1790005709873');
INSERT INTO public.users VALUES (34, 'user_1790005709872');
INSERT INTO public.users VALUES (35, 'user_1790005716626');
INSERT INTO public.users VALUES (36, 'user_1790005716625');
INSERT INTO public.users VALUES (37, 'user_1790005741608');
INSERT INTO public.users VALUES (38, 'user_1790005741607');
INSERT INTO public.users VALUES (39, 'user_1790005750806');
INSERT INTO public.users VALUES (40, 'user_1790005750805');
INSERT INTO public.users VALUES (41, 'user_1790005771975');
INSERT INTO public.users VALUES (42, 'user_1790005771974');
INSERT INTO public.users VALUES (43, 'user_1790005808714');
INSERT INTO public.users VALUES (44, 'user_1790005808713');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 154, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 44, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

