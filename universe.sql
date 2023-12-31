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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth_in_million_light_years numeric(5,3),
    description text,
    galaxy_types_id integer,
    number_of_stars_in_billions integer,
    year_of_discovery integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    characteristics text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    distance_from_earth_in_billion_miles numeric(9,6),
    description text,
    year_of_discovery integer
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
    star_id integer,
    distance_from_earth_in_billion_mile numeric(9,6),
    description text,
    has_life boolean,
    planet_types_id integer,
    has_satellite boolean,
    year_of_discovery integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    characteristics text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    distance_from_earth_in_million_miles numeric(9,6),
    description text,
    year_of_discovery integer
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.000, 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxys appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', 3, 400, 0);
INSERT INTO public.galaxy VALUES (2, 'Centaurus A', 0.131, 'Centaurus A (also known as NGC 5128 or Caldwell 77) is a galaxy in the constellation of Centaurus. It was discovered in 1826 by Scottish astronomer James Dunlop from his home in Parramatta, in New South Wales, Australia.', 2, 100, 1826);
INSERT INTO public.galaxy VALUES (3, 'Hercules A', 0.500, 'The galaxy, 3C 348, is a supergiant elliptical galaxy. It is classified as type E3 to E4 of the updated Hubble–de Vaucouleurs extended galaxy morphological classification scheme. Little else is known about the galaxy. ', 1, 100, 2006);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 0.016, 'The Large Magellanic Cloud (LMC) is a satellite galaxy of the Milky Way. At a distance of around 50 kiloparsecs (160 kly), the LMC is the second- or third-closest galaxy to the Milky Way', 4, 20, 2021);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', 0.120, 'Messier 82 (also known as NGC 3034, Cigar Galaxy or M82) is a starburst galaxy approximately 12 million light-years away in the constellation Ursa Major. It is the second-largest member of the M81 Group, with the D25 isophotal diameter of 12.52 kiloparsecs (40,800 light-years). It is about five times more luminous than the Milky Way and its central region is about one hundred times more luminous', 4, 30, 1774);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 0.232, 'The Whirlpool Galaxy, also known as Messier 51a (M51a) or NGC 5194, is an interacting grand-design spiral galaxy with a Seyfert 2 active galactic nucleus. It lies in the constellation Canes Venatici, and was the first galaxy to be classified as a spiral galaxy.', 3, 100, 1773);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Elliptical', 'On the left (in the sense that the sequence is usually drawn) lie the ellipticals. Elliptical galaxies have relatively smooth, featureless light distributions and appear as ellipses in photographic images');
INSERT INTO public.galaxy_types VALUES (2, 'Lenticulars', 'At the centre of the Hubble tuning fork, where the two spiral-galaxy branches and the elliptical branch join, lies an intermediate class of galaxies known as lenticulars and given the symbol S0. These galaxies consist of a bright central bulge, similar in appearance to an elliptical galaxy, surrounded by an extended, disk-like structure. Unlike spiral galaxies, the disks of lenticular galaxies have no visible spiral structure and are not actively forming stars in any significant quantity.');
INSERT INTO public.galaxy_types VALUES (3, 'Spirals', 'On the right of the Hubble sequence diagram are two parallel branches encompassing the spiral galaxies. A spiral galaxy consists of a flattened disk, with stars forming a (usually two-armed) spiral structure, and a central concentration of stars known as the bulge.');
INSERT INTO public.galaxy_types VALUES (4, 'Irregulars', 'Galaxies that do not fit into the Hubble sequence, because they have no regular structure (either disk-like or ellipsoidal)');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 0.000384, 'The Moon is Earths only natural satellite. Its diameter is about one-quarter of Earths comparable to the width of Australia, making it the fifth largest satellite in the Solar System and the largest and most massive relative to its parent planet.', 0);
INSERT INTO public.moon VALUES (2, 'Phobos', 5, 0.077000, 'Phobos   is the innermost and larger of the two natural satellites of Mars, the other being Deimos.', 1877);
INSERT INTO public.moon VALUES (3, 'Deimos', 5, 0.077000, 'Deimos  is the smaller and outermost of the two natural satellites of Mars, the other being Phobos.', 1877);
INSERT INTO public.moon VALUES (4, 'Amalthea', 3, 0.484000, 'Amalthea is a moon of Jupiter. It has the third closest orbit around Jupiter among known moons and was the fifth moon of Jupiter to be discovered, so it is also known as Jupiter V.', 1892);
INSERT INTO public.moon VALUES (5, 'Io', 3, 0.628000, 'Io  or Jupiter I, is the innermost and third-largest of the four Galilean moons of the planet Jupiter. Slightly larger than Earth’s moon, Io is the fourth-largest moon in the Solar System, has the highest density of any moon, the strongest surface gravity of any moon,', 1610);
INSERT INTO public.moon VALUES (6, 'Europa', 3, 0.628000, 'Europa  or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter.', 1610);
INSERT INTO public.moon VALUES (7, 'Ganymede', 3, 0.628000, 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter as well as in the Solar System, being a planetary-mass moon. It is the largest Solar System object without an atmosphere, despite being the only moon of the Solar System with a magnetic field', 1610);
INSERT INTO public.moon VALUES (8, 'Callisto', 3, 0.628000, 'Callisto  or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede. In the Solar System it is the third-largest moon after Ganymede and Saturns largest moon Titan, and as large as the smallest planet Mercury, though only about a third as massive', 1610);
INSERT INTO public.moon VALUES (9, 'Mimas', 4, 0.746000, 'Mimas, also designated Saturn I, is a natural satellite of Saturn that has the second largest crater on any moon in the Solar System, named Herschel. The Herschel crater measures 139 kilometres (86 miles) across, about one-third of Mimas mean diameter (396.4 kilometres or 246.3 miles)', 1789);
INSERT INTO public.moon VALUES (10, 'Enceladus', 4, 0.746000, 'Enceladus is the sixth-largest moon of Saturn 19th largest in the Solar System. It is about 500 kilometers (310 miles) in diameter, about a tenth of that of Saturns largest moon, Titan. Enceladus is mostly covered by fresh, clean ice, making it one of the most reflective bodies of the Solar System', 1789);
INSERT INTO public.moon VALUES (11, 'Tethys', 4, 0.746000, 'Tethys , or Saturn III, is a mid-sized moon of Saturn about 1,060 km (660 mi) across. It was discovered by G. D. Cassini in 1684 and is named after the titan Tethys of Greek mythology. ', 1684);
INSERT INTO public.moon VALUES (12, 'Dione', 4, 0.746000, 'Dione  also designated Saturn IV, is the fourth-largest moon of Saturn. Its trailing hemisphere is marked by large ice cliffs called chasmata and is also darkened compared to the leading hemisphere. ', 1684);
INSERT INTO public.moon VALUES (13, 'Rhea', 4, 0.746000, 'Rhea  is the second-largest moon of Saturn and the ninth-largest moon in the Solar System, with a surface area that is compareable to the area of Australia. It is the smallest body in the Solar System for which precise measurements have confirmed a shape consistent with hydrostatic equilibrium. It was discovered in 1672 by Giovanni Domenico Cassini.', 1672);
INSERT INTO public.moon VALUES (14, 'Titan', 4, 0.746000, 'Titan is the largest moon of Saturn, the second-largest in the Solar System and larger than any of the dwarf planets of the Solar System. It is the only moon known to have a dense atmosphere, and is the only known object in space other than Earth on which clear evidence of stable bodies of surface liquid has been found', 1655);
INSERT INTO public.moon VALUES (15, 'Iapetus', 4, 0.746000, 'Iapetus  is a moon of Saturn. With an estimated diameter of 1,469 km, it is the third-largest moon of Saturn and the eleventh-largest in the Solar System. Named after the Titan Iapetus, the moon was discovered in 1671 by Giovanni Domenico Cassini.', 1671);
INSERT INTO public.moon VALUES (16, 'Miranda', 6, 0.160000, 'Miranda, also designated Uranus V, is the smallest and innermost of Uranuss five round satellites. It was discovered by Gerard Kuiper on 16 February 1948 at McDonald Observatory in Texas, and named after Miranda from William Shakespeares play The Tempest', 1948);
INSERT INTO public.moon VALUES (17, 'Ariel', 6, 0.160000, 'Ariel is the fourth-largest of the 27 known moons of Uranus. Ariel orbits and rotates in the equatorial plane of Uranus, which is almost perpendicular to the orbit of Uranus and so has an extreme seasonal cycle.', 1851);
INSERT INTO public.moon VALUES (18, 'Umbriel', 6, 0.160000, 'Umbriel  is a moon of Uranus discovered on October 24, 1851, by William Lassell. It was discovered at the same time as Ariel and named after a character in Alexander Popes 1712 poem The Rape of the Lock. Umbriel consists mainly of ice with a substantial fraction of rock, and may be differentiated into a rocky core and an icy mantle.', 1851);
INSERT INTO public.moon VALUES (19, 'Titania', 6, 0.160000, 'Titania  also designated Uranus III, is the largest of the moons of Uranus and the eighth largest moon in the Solar System at a diameter of 1,578 kilometres (981 mi), with a surface area comparable to that of Australia. Discovered by William Herschel in 1787, it is named after the queen of the fairies in Shakespeares A Midsummer Nights Dream. Its orbit lies inside Uranuss magnetosphere.', 1787);
INSERT INTO public.moon VALUES (20, 'Oberon', 6, 0.160000, 'also designated Uranus IV, is the outermost major moon of the planet Uranus. It is the second-largest, with a surface area that is compareable to the area of Australia, and second most massive of the Uranian moons, and the ninth most massive moon in the Solar System. Discovered by William Herschel in 1787, Oberon is named after the mythical king of the fairies who appears as a character in Shakespeares A Midsummer Nights Dream. Its orbit lies partially outside Uranuss magnetosphere.', 1787);
INSERT INTO public.moon VALUES (21, 'Triton', 6, 0.160000, 'Triton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered, on October 11, 1846, by English astronomer William Lassell. It is the only large moon in the Solar System with a retrograde orbit, an orbit in the direction opposite to its planets rotation. Because of its retrograde orbit and composition similar to Pluto, Triton is thought to have been a dwarf planet, captured from the Kuiper belt.', 1846);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 0.000000, 'Earth is the third planet from the Sun and the only place known in the universe where life has originated and found habitability.', true, 1, true, 0);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, 0.048000, 'Mercury is the first planet from the Sun and the smallest planet in the Solar System. It is a terrestrial planet with a heavily cratered surface due to the planet having no geological activity and an extremely tenuous atmosphere (called an exosphere).', false, 1, false, -3000);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 0.484000, 'upiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, and slightly less than one one-thousandth the mass of the Sun.', false, 2, true, 1610);
INSERT INTO public.planet VALUES (4, 'Saturn', 1, 0.746000, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.[25][26] It has only one-eighth the average density of Earth, but is over 95 times more massive.', false, 2, true, 1610);
INSERT INTO public.planet VALUES (5, 'Mars', 1, 0.140000, 'Mars is the fourth planet and the furthest terrestrial planet from the Sun. The reddish color of its surface is due to finely grained iron(III) oxide dust in the soil, giving it the nickname the Red Planet', false, 1, true, 1610);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, 0.160000, 'Uranus is the seventh planet from the Sun and is a gaseous cyan ice giant. Most of the planet is made out of water, ammonia, and methane in a supercritical phase of matter, which in astronomy is called ice or volatiles', false, 3, true, 1781);
INSERT INTO public.planet VALUES (7, 'Ceres', 1, 0.561000, 'Ceres minor-planet designation 1 Ceres, is a dwarf planet in the asteroid belt between the orbits of Mars and Jupiter.', false, 4, false, 1801);
INSERT INTO public.planet VALUES (8, 'Pluto', 1, 0.467000, 'Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It is the ninth-largest and tenth-most-massive known object to directly orbit the Sun. It is the largest known trans-Neptunian object by volume,', false, 4, true, 1930);
INSERT INTO public.planet VALUES (9, 'Haumea', 1, 0.747400, 'Haumea minor-planet designation 136108 Haumea is a dwarf planet located beyond Neptunes orbit.', false, 4, true, 2005);
INSERT INTO public.planet VALUES (10, 'Eris', 1, 0.143400, 'Eris minor-planet designation 136199 Eris is the most massive and second-largest known dwarf planet in the Solar System.', false, 4, true, 2005);
INSERT INTO public.planet VALUES (11, 'Neptune', 1, 0.270000, 'Neptune is the eighth planet from the Sun and the farthest known planet in the Solar System. It is the fourth-largest planet in the Solar System by diameter', false, 3, true, 1846);
INSERT INTO public.planet VALUES (12, 'Makemake', 1, 0.425300, 'Makemake (minor-planet designation 136472 Makemake) is a dwarf planet and the second-largest of what are known as the classical population of Kuiper belt objects', false, 4, false, 2005);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial planet', 'A terrestrial planet, telluric planet, solid planet, or rocky planet, is a planet that is composed primarily of silicate rocks or metals.');
INSERT INTO public.planet_types VALUES (2, 'Gas giant', 'A gas giant is a giant planet composed mainly of hydrogen and helium. Gas giants are also called failed stars because they contain the same basic elements as a star. Jupiter and Saturn are the gas giants of the Solar System');
INSERT INTO public.planet_types VALUES (3, 'Ice giant', 'An ice giant is a giant planet composed mainly of elements heavier than hydrogen and helium, such as oxygen, carbon, nitrogen, and sulfur.');
INSERT INTO public.planet_types VALUES (4, 'Dwarf planet', 'A dwarf planet is a small planetary-mass object that is in direct orbit of the Sun, smaller than any of the eight classical planets but still a world in its own right. The prototypical dwarf planet is Pluto');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0.093000, 'The Sun is the star at the center of the Solar System. It is a nearly perfect ball of hot plasma, heated to incandescence by nuclear fusion reactions in its core. The Sun radiates this energy mainly as light, ultraviolet, and infrared radiation, and is the most important source of energy for life on Earth.', 0);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 0.000008, 'Sirius is the brightest star in the night sky. Its name is derived from the Greek word Σείριος, or Seirios, meaning lit. glowing or scorching. The star is designated α Canis Majoris, Latinized to Alpha Canis Majoris, and abbreviated α CMa or Alpha CMa. ', 1862);
INSERT INTO public.star VALUES (3, 'Arcturus', 1, 0.000036, 'Arcturus is the brightest star in the northern constellation of Boötes. With an apparent visual magnitude of −0.05, it is the fourth-brightest of the individual stars in the night sky, and the brightest in the northern celestial hemisphere.', 1635);
INSERT INTO public.star VALUES (4, 'Antares', 1, 0.000554, 'Antares is the brightest star in the constellation of Scorpius. It has the Bayer designation α Scorpii, which is Latinised to Alpha Scorpii. Often referred to as the heart of the scorpion, Antares is flanked by σ Scorpii and τ Scorpii near the center of the constellation', 1950);
INSERT INTO public.star VALUES (5, 'Vega', 1, 0.000025, 'Vega is the brightest star in the northern constellation of Lyra. It has the Bayer designation α Lyrae, which is Latinised to Alpha Lyrae and abbreviated Alpha Lyr or α Lyr', 1983);
INSERT INTO public.star VALUES (6, 'Pollux', 1, 0.000033, 'Pollux is the brightest star in the constellation of Gemini. It has the Bayer designation β Geminorum, which is Latinised to Beta Geminorum and abbreviated Beta Gem or β Gem.', 2006);
INSERT INTO public.star VALUES (7, 'Beta Centauri', 1, 0.000391, 'Beta Centauri is a triple star system in the southern constellation of Centaurus. It is officially called Hadar . The Bayer designation of Beta Centauri is Latinised from β Centauri, and abbreviated Beta Cen or β Cen.', 1915);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: galaxy_types galaxy_types_galaxy_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_galaxy_types_id_key UNIQUE (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: planet_types planet_types_planet_types_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_planet_types_id_key UNIQUE (planet_types_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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

