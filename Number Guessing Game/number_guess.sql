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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL,
    games_played integer,
    best_game integer
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

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 1, 1);
INSERT INTO public.games VALUES (3, 1, 3);
INSERT INTO public.games VALUES (4, 4, 570);
INSERT INTO public.games VALUES (5, 4, 454);
INSERT INTO public.games VALUES (6, 5, 78);
INSERT INTO public.games VALUES (7, 5, 748);
INSERT INTO public.games VALUES (8, 4, 472);
INSERT INTO public.games VALUES (9, 4, 575);
INSERT INTO public.games VALUES (10, 4, 861);
INSERT INTO public.games VALUES (11, 6, 263);
INSERT INTO public.games VALUES (12, 6, 606);
INSERT INTO public.games VALUES (13, 7, 229);
INSERT INTO public.games VALUES (14, 7, 432);
INSERT INTO public.games VALUES (15, 6, 993);
INSERT INTO public.games VALUES (16, 6, 383);
INSERT INTO public.games VALUES (17, 6, 1001);
INSERT INTO public.games VALUES (18, 8, 893);
INSERT INTO public.games VALUES (19, 8, 97);
INSERT INTO public.games VALUES (20, 9, 822);
INSERT INTO public.games VALUES (21, 9, 402);
INSERT INTO public.games VALUES (22, 8, 48);
INSERT INTO public.games VALUES (23, 8, 123);
INSERT INTO public.games VALUES (24, 8, 846);
INSERT INTO public.games VALUES (25, 10, 713);
INSERT INTO public.games VALUES (26, 10, 551);
INSERT INTO public.games VALUES (27, 11, 727);
INSERT INTO public.games VALUES (28, 11, 706);
INSERT INTO public.games VALUES (29, 10, 973);
INSERT INTO public.games VALUES (30, 10, 744);
INSERT INTO public.games VALUES (31, 10, 502);
INSERT INTO public.games VALUES (32, 13, 51);
INSERT INTO public.games VALUES (33, 13, 454);
INSERT INTO public.games VALUES (34, 14, 64);
INSERT INTO public.games VALUES (35, 14, 357);
INSERT INTO public.games VALUES (36, 13, 699);
INSERT INTO public.games VALUES (37, 13, 473);
INSERT INTO public.games VALUES (38, 13, 554);
INSERT INTO public.games VALUES (39, 15, 90);
INSERT INTO public.games VALUES (40, 15, 687);
INSERT INTO public.games VALUES (41, 16, 298);
INSERT INTO public.games VALUES (42, 16, 911);
INSERT INTO public.games VALUES (43, 15, 176);
INSERT INTO public.games VALUES (44, 15, 78);
INSERT INTO public.games VALUES (45, 15, 45);
INSERT INTO public.games VALUES (46, 17, 208);
INSERT INTO public.games VALUES (47, 17, 587);
INSERT INTO public.games VALUES (48, 18, 141);
INSERT INTO public.games VALUES (49, 18, 293);
INSERT INTO public.games VALUES (50, 17, 320);
INSERT INTO public.games VALUES (51, 17, 216);
INSERT INTO public.games VALUES (52, 17, 111);
INSERT INTO public.games VALUES (53, 1, 1);
INSERT INTO public.games VALUES (54, 12, 1);
INSERT INTO public.games VALUES (55, 19, 988);
INSERT INTO public.games VALUES (56, 19, 406);
INSERT INTO public.games VALUES (57, 20, 100);
INSERT INTO public.games VALUES (58, 20, 2);
INSERT INTO public.games VALUES (59, 19, 289);
INSERT INTO public.games VALUES (60, 19, 475);
INSERT INTO public.games VALUES (61, 19, 341);
INSERT INTO public.games VALUES (62, 21, 222);
INSERT INTO public.games VALUES (63, 21, 363);
INSERT INTO public.games VALUES (64, 22, 620);
INSERT INTO public.games VALUES (65, 22, 825);
INSERT INTO public.games VALUES (66, 21, 942);
INSERT INTO public.games VALUES (67, 21, 570);
INSERT INTO public.games VALUES (68, 21, 509);
INSERT INTO public.games VALUES (69, 23, 129);
INSERT INTO public.games VALUES (70, 23, 840);
INSERT INTO public.games VALUES (71, 24, 495);
INSERT INTO public.games VALUES (72, 24, 581);
INSERT INTO public.games VALUES (73, 23, 356);
INSERT INTO public.games VALUES (74, 23, 88);
INSERT INTO public.games VALUES (75, 23, 997);
INSERT INTO public.games VALUES (76, 1, 6);
INSERT INTO public.games VALUES (77, 25, 834);
INSERT INTO public.games VALUES (78, 25, 438);
INSERT INTO public.games VALUES (79, 26, 865);
INSERT INTO public.games VALUES (80, 26, 443);
INSERT INTO public.games VALUES (81, 25, 685);
INSERT INTO public.games VALUES (82, 25, 931);
INSERT INTO public.games VALUES (83, 25, 196);
INSERT INTO public.games VALUES (84, 27, 331);
INSERT INTO public.games VALUES (85, 27, 487);
INSERT INTO public.games VALUES (86, 28, 792);
INSERT INTO public.games VALUES (87, 28, 857);
INSERT INTO public.games VALUES (88, 27, 231);
INSERT INTO public.games VALUES (89, 27, 225);
INSERT INTO public.games VALUES (90, 27, 20);
INSERT INTO public.games VALUES (91, 1, 13);
INSERT INTO public.games VALUES (92, 29, 500);
INSERT INTO public.games VALUES (93, 29, 176);
INSERT INTO public.games VALUES (94, 30, 110);
INSERT INTO public.games VALUES (95, 30, 673);
INSERT INTO public.games VALUES (96, 29, 628);
INSERT INTO public.games VALUES (97, 29, 812);
INSERT INTO public.games VALUES (98, 29, 509);
INSERT INTO public.games VALUES (99, 31, 780);
INSERT INTO public.games VALUES (100, 31, 940);
INSERT INTO public.games VALUES (101, 32, 262);
INSERT INTO public.games VALUES (102, 32, 596);
INSERT INTO public.games VALUES (103, 31, 78);
INSERT INTO public.games VALUES (104, 31, 711);
INSERT INTO public.games VALUES (105, 31, 351);
INSERT INTO public.games VALUES (106, 33, 463);
INSERT INTO public.games VALUES (107, 33, 903);
INSERT INTO public.games VALUES (108, 34, 849);
INSERT INTO public.games VALUES (109, 34, 52);
INSERT INTO public.games VALUES (110, 33, 533);
INSERT INTO public.games VALUES (111, 33, 152);
INSERT INTO public.games VALUES (112, 33, 40);
INSERT INTO public.games VALUES (113, 35, 171);
INSERT INTO public.games VALUES (114, 35, 402);
INSERT INTO public.games VALUES (115, 36, 564);
INSERT INTO public.games VALUES (116, 36, 986);
INSERT INTO public.games VALUES (117, 35, 595);
INSERT INTO public.games VALUES (118, 35, 164);
INSERT INTO public.games VALUES (119, 35, 576);
INSERT INTO public.games VALUES (120, 37, 113);
INSERT INTO public.games VALUES (121, 37, 566);
INSERT INTO public.games VALUES (122, 38, 126);
INSERT INTO public.games VALUES (123, 38, 85);
INSERT INTO public.games VALUES (124, 37, 230);
INSERT INTO public.games VALUES (125, 37, 125);
INSERT INTO public.games VALUES (126, 37, 674);
INSERT INTO public.games VALUES (127, 39, 711);
INSERT INTO public.games VALUES (128, 39, 368);
INSERT INTO public.games VALUES (129, 40, 914);
INSERT INTO public.games VALUES (130, 40, 306);
INSERT INTO public.games VALUES (131, 39, 836);
INSERT INTO public.games VALUES (132, 39, 906);
INSERT INTO public.games VALUES (133, 39, 697);
INSERT INTO public.games VALUES (134, 41, 210);
INSERT INTO public.games VALUES (135, 41, 642);
INSERT INTO public.games VALUES (136, 42, 168);
INSERT INTO public.games VALUES (137, 42, 732);
INSERT INTO public.games VALUES (138, 41, 870);
INSERT INTO public.games VALUES (139, 41, 114);
INSERT INTO public.games VALUES (140, 41, 490);
INSERT INTO public.games VALUES (141, 43, 853);
INSERT INTO public.games VALUES (142, 43, 548);
INSERT INTO public.games VALUES (143, 44, 700);
INSERT INTO public.games VALUES (144, 44, 880);
INSERT INTO public.games VALUES (145, 43, 72);
INSERT INTO public.games VALUES (146, 43, 228);
INSERT INTO public.games VALUES (147, 43, 747);
INSERT INTO public.games VALUES (148, 45, 612);
INSERT INTO public.games VALUES (149, 45, 736);
INSERT INTO public.games VALUES (150, 46, 482);
INSERT INTO public.games VALUES (151, 46, 380);
INSERT INTO public.games VALUES (152, 45, 824);
INSERT INTO public.games VALUES (153, 45, 660);
INSERT INTO public.games VALUES (154, 45, 715);
INSERT INTO public.games VALUES (155, 47, 784);
INSERT INTO public.games VALUES (156, 47, 158);
INSERT INTO public.games VALUES (157, 48, 348);
INSERT INTO public.games VALUES (158, 48, 982);
INSERT INTO public.games VALUES (159, 47, 172);
INSERT INTO public.games VALUES (160, 47, 949);
INSERT INTO public.games VALUES (161, 47, 918);
INSERT INTO public.games VALUES (162, 49, 659);
INSERT INTO public.games VALUES (163, 49, 669);
INSERT INTO public.games VALUES (164, 50, 372);
INSERT INTO public.games VALUES (165, 50, 974);
INSERT INTO public.games VALUES (166, 49, 337);
INSERT INTO public.games VALUES (167, 49, 550);
INSERT INTO public.games VALUES (168, 49, 130);
INSERT INTO public.games VALUES (169, 51, 740);
INSERT INTO public.games VALUES (170, 51, 495);
INSERT INTO public.games VALUES (171, 52, 439);
INSERT INTO public.games VALUES (172, 52, 218);
INSERT INTO public.games VALUES (173, 51, 307);
INSERT INTO public.games VALUES (174, 51, 235);
INSERT INTO public.games VALUES (175, 51, 92);
INSERT INTO public.games VALUES (176, 53, 892);
INSERT INTO public.games VALUES (177, 53, 785);
INSERT INTO public.games VALUES (178, 54, 814);
INSERT INTO public.games VALUES (179, 54, 5);
INSERT INTO public.games VALUES (180, 53, 475);
INSERT INTO public.games VALUES (181, 53, 582);
INSERT INTO public.games VALUES (182, 53, 39);
INSERT INTO public.games VALUES (183, 55, 541);
INSERT INTO public.games VALUES (184, 55, 189);
INSERT INTO public.games VALUES (185, 56, 113);
INSERT INTO public.games VALUES (186, 56, 954);
INSERT INTO public.games VALUES (187, 55, 956);
INSERT INTO public.games VALUES (188, 55, 95);
INSERT INTO public.games VALUES (189, 55, 679);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Abraham', NULL, NULL);
INSERT INTO public.users VALUES (2, 'user_1727251037085', NULL, NULL);
INSERT INTO public.users VALUES (3, 'user_1727251037084', NULL, NULL);
INSERT INTO public.users VALUES (4, 'user_1727252081235', NULL, NULL);
INSERT INTO public.users VALUES (5, 'user_1727252081234', NULL, NULL);
INSERT INTO public.users VALUES (6, 'user_1727252142586', NULL, NULL);
INSERT INTO public.users VALUES (7, 'user_1727252142585', NULL, NULL);
INSERT INTO public.users VALUES (8, 'user_1727252794197', NULL, NULL);
INSERT INTO public.users VALUES (9, 'user_1727252794196', NULL, NULL);
INSERT INTO public.users VALUES (10, 'user_1727252852180', NULL, NULL);
INSERT INTO public.users VALUES (11, 'user_1727252852179', NULL, NULL);
INSERT INTO public.users VALUES (12, 'Abra', NULL, NULL);
INSERT INTO public.users VALUES (13, 'user_1727253182676', NULL, NULL);
INSERT INTO public.users VALUES (14, 'user_1727253182675', NULL, NULL);
INSERT INTO public.users VALUES (15, 'user_1727253453676', NULL, NULL);
INSERT INTO public.users VALUES (16, 'user_1727253453675', NULL, NULL);
INSERT INTO public.users VALUES (17, 'user_1727253489539', NULL, NULL);
INSERT INTO public.users VALUES (18, 'user_1727253489538', NULL, NULL);
INSERT INTO public.users VALUES (19, 'user_1727253541198', NULL, NULL);
INSERT INTO public.users VALUES (20, 'user_1727253541197', NULL, NULL);
INSERT INTO public.users VALUES (21, 'user_1727253593017', NULL, NULL);
INSERT INTO public.users VALUES (22, 'user_1727253593016', NULL, NULL);
INSERT INTO public.users VALUES (23, 'user_1727253613200', NULL, NULL);
INSERT INTO public.users VALUES (24, 'user_1727253613199', NULL, NULL);
INSERT INTO public.users VALUES (25, 'user_1727253846796', NULL, NULL);
INSERT INTO public.users VALUES (26, 'user_1727253846795', NULL, NULL);
INSERT INTO public.users VALUES (27, 'user_1727253944786', NULL, NULL);
INSERT INTO public.users VALUES (28, 'user_1727253944785', NULL, NULL);
INSERT INTO public.users VALUES (29, 'user_1727253999516', NULL, NULL);
INSERT INTO public.users VALUES (30, 'user_1727253999515', NULL, NULL);
INSERT INTO public.users VALUES (31, 'user_1727254052355', NULL, NULL);
INSERT INTO public.users VALUES (32, 'user_1727254052354', NULL, NULL);
INSERT INTO public.users VALUES (33, 'user_1727254071968', NULL, NULL);
INSERT INTO public.users VALUES (34, 'user_1727254071967', NULL, NULL);
INSERT INTO public.users VALUES (35, 'user_1727254121123', NULL, NULL);
INSERT INTO public.users VALUES (36, 'user_1727254121122', NULL, NULL);
INSERT INTO public.users VALUES (37, 'user_1727254171628', NULL, NULL);
INSERT INTO public.users VALUES (38, 'user_1727254171627', NULL, NULL);
INSERT INTO public.users VALUES (39, 'user_1727254203254', NULL, NULL);
INSERT INTO public.users VALUES (40, 'user_1727254203253', NULL, NULL);
INSERT INTO public.users VALUES (41, 'user_1727254234462', NULL, NULL);
INSERT INTO public.users VALUES (42, 'user_1727254234461', NULL, NULL);
INSERT INTO public.users VALUES (43, 'user_1727254294671', NULL, NULL);
INSERT INTO public.users VALUES (44, 'user_1727254294670', NULL, NULL);
INSERT INTO public.users VALUES (45, 'user_1727254305653', NULL, NULL);
INSERT INTO public.users VALUES (46, 'user_1727254305652', NULL, NULL);
INSERT INTO public.users VALUES (47, 'user_1727254317952', NULL, NULL);
INSERT INTO public.users VALUES (48, 'user_1727254317951', NULL, NULL);
INSERT INTO public.users VALUES (49, 'user_1727254331332', NULL, NULL);
INSERT INTO public.users VALUES (50, 'user_1727254331331', NULL, NULL);
INSERT INTO public.users VALUES (51, 'user_1727254604159', NULL, NULL);
INSERT INTO public.users VALUES (52, 'user_1727254604158', NULL, NULL);
INSERT INTO public.users VALUES (53, 'user_1727254642848', NULL, NULL);
INSERT INTO public.users VALUES (54, 'user_1727254642847', NULL, NULL);
INSERT INTO public.users VALUES (55, 'user_1727254656308', NULL, NULL);
INSERT INTO public.users VALUES (56, 'user_1727254656307', NULL, NULL);
INSERT INTO public.users VALUES (57, 'Abbb', 1, NULL);
INSERT INTO public.users VALUES (59, 'user_1727255135269', 2, 176);
INSERT INTO public.users VALUES (75, 'user_1727255258574', 2, 276);
INSERT INTO public.users VALUES (58, 'user_1727255135270', 5, 85);
INSERT INTO public.users VALUES (74, 'user_1727255258575', 5, 227);
INSERT INTO public.users VALUES (61, 'user_1727255150112', 2, 248);
INSERT INTO public.users VALUES (60, 'user_1727255150113', 5, 28);
INSERT INTO public.users VALUES (63, 'user_1727255154570', 2, 573);
INSERT INTO public.users VALUES (77, 'user_1727255261155', 2, 65);
INSERT INTO public.users VALUES (62, 'user_1727255154571', 5, 66);
INSERT INTO public.users VALUES (76, 'user_1727255261156', 5, 129);
INSERT INTO public.users VALUES (65, 'user_1727255179252', 2, 275);
INSERT INTO public.users VALUES (64, 'user_1727255179253', 5, 154);
INSERT INTO public.users VALUES (79, 'user_1727255263190', 2, 169);
INSERT INTO public.users VALUES (67, 'user_1727255183275', 2, 732);
INSERT INTO public.users VALUES (66, 'user_1727255183276', 5, 5);
INSERT INTO public.users VALUES (78, 'user_1727255263191', 5, 183);
INSERT INTO public.users VALUES (69, 'user_1727255201198', 2, 109);
INSERT INTO public.users VALUES (68, 'user_1727255201199', 5, 452);
INSERT INTO public.users VALUES (81, 'user_1727255510901', 2, 600);
INSERT INTO public.users VALUES (71, 'user_1727255203828', 2, 130);
INSERT INTO public.users VALUES (80, 'user_1727255510902', 5, 126);
INSERT INTO public.users VALUES (70, 'user_1727255203829', 5, 34);
INSERT INTO public.users VALUES (73, 'user_1727255205820', 2, 142);
INSERT INTO public.users VALUES (72, 'user_1727255205821', 5, 176);
INSERT INTO public.users VALUES (83, 'user_1727255513694', 2, 391);
INSERT INTO public.users VALUES (82, 'user_1727255513695', 5, 10);
INSERT INTO public.users VALUES (85, 'user_1727255515575', 2, 389);
INSERT INTO public.users VALUES (84, 'user_1727255515576', 5, 113);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 189, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 85, true);


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

