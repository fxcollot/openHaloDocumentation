--
-- PostgreSQL portable database dump
--

-- Dumped from database version 14.19 (Homebrew)
-- Dumped by pg_dump version 14.19 (Homebrew)

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
-- Name: name_basics; Type: TABLE; Schema: public;
--

CREATE TABLE IF NOT EXISTS public.name_basics (
    nconst character varying(20) NOT NULL,
    primaryname character varying(255) NOT NULL,
    birthyear integer,
    deathyear integer,
    primaryprofession character varying(255),
    knownfortitles character varying(255)
);

--
-- Data for Name: name_basics; Type: TABLE DATA; Schema: public;
--

COPY public.name_basics (nconst, primaryname, birthyear, deathyear, primaryprofession, knownfortitles) FROM stdin;
nm0000001	Fred Astaire	1899	1987	actor,miscellaneous,producer	tt0072308,tt0050419,tt0027125,tt0025164
nm0000002	Lauren Bacall	1924	2014	actress,soundtrack,archive_footage	tt0037382,tt0075213,tt0038355,tt0117057
nm0000003	Brigitte Bardot	1934	\N	actress,music_department,producer	tt0057345,tt0049189,tt0056404,tt0054452
nm0000004	John Belushi	1949	1982	actor,writer,music_department	tt0072562,tt0077975,tt0080455,tt0078723
nm0000005	Ingmar Bergman	1918	2007	writer,director,actor	tt0050986,tt0069467,tt0083922,tt0050976
nm0000006	Ingrid Bergman	1915	1982	actress,producer,soundtrack	tt0034583,tt0038109,tt0036855,tt0038787
nm0000007	Humphrey Bogart	1899	1957	actor,producer,miscellaneous	tt0034583,tt0043265,tt0037382,tt0033870
nm0000008	Marlon Brando	1924	2004	actor,director,writer	tt0078788,tt0068646,tt0047296,tt0070849
nm0000009	Richard Burton	1925	1984	actor,producer,director	tt0061184,tt0087803,tt0057877,tt0059749
nm0000010	James Cagney	1899	1986	actor,director,producer	tt0029870,tt0031867,tt0042041,tt0034236
nm0000011	Gary Cooper	1901	1961	actor,stunts,producer	tt0044706,tt0034167,tt0027996,tt0033373
nm0000012	Bette Davis	1908	1989	actress,make_up_department,producer	tt0042192,tt0056687,tt0031210,tt0035140
nm0000013	Doris Day	1922	2019	actress,producer,miscellaneous	tt0048317,tt0045591,tt0053172,tt0040745
nm0000014	Olivia de Havilland	1916	2020	actress,soundtrack,archive_footage	tt0031381,tt0041452,tt0040806,tt0029843
nm0000015	James Dean	1931	1955	actor,miscellaneous,archive_footage	tt0048028,tt0048545,tt0049261,tt0039123
nm0000016	Georges Delerue	1925	1992	composer,music_department,actor	tt0091763,tt0096320,tt0069946,tt0070460
nm0000017	Marlene Dietrich	1901	1992	actress,music_department,soundtrack	tt0051201,tt0021156,tt0055031,tt0052311
nm0000018	Kirk Douglas	1916	2020	actor,producer,director	tt0043338,tt0080736,tt0054331,tt0049456
nm0000019	Federico Fellini	1920	1993	writer,director,actor	tt0056801,tt0050783,tt0047528,tt0053779
nm0000020	Henry Fonda	1905	1982	actor,producer,miscellaneous	tt0050083,tt0082846,tt0032551,tt0036244
nm0000021	Joan Fontaine	1917	2013	actress,producer,soundtrack	tt0032976,tt0034248,tt0036969,tt0039504
nm0000022	Clark Gable	1901	1960	actor,producer,soundtrack	tt0025316,tt0031381,tt0026752,tt0023382
nm0000023	Judy Garland	1922	1969	actress,soundtrack,archive_footage	tt0032138,tt0037059,tt0047522,tt0055031
nm0000024	John Gielgud	1904	2000	actor,director,writer	tt0082031,tt0071877,tt0045943,tt0028231
nm0000025	Jerry Goldsmith	1929	2004	music_department,composer,miscellaneous	tt0119488,tt0077269,tt0117731,tt0112715
nm0000026	Cary Grant	1904	1986	actor,producer,soundtrack	tt0036613,tt0032904,tt0032599,tt0056923
nm0000027	Alec Guinness	1914	2000	actor,writer,soundtrack	tt0076759,tt0050212,tt0041546,tt0051739
nm0000028	Rita Hayworth	1918	1987	actress,producer,soundtrack	tt0038559,tt0040525,tt0040552,tt0035103
nm0000029	Margaux Hemingway	1954	1996	actress,miscellaneous,archive_footage	tt0102122,tt0077800,tt0110138,tt0074802
nm0000030	Audrey Hepburn	1929	1993	actress,soundtrack,archive_footage	tt0054698,tt0046250,tt0056923,tt0058385
nm0000031	Katharine Hepburn	1907	2003	actress,writer,soundtrack	tt0032904,tt0043265,tt0063227,tt0082846
nm0000032	Charlton Heston	1923	2008	actor,director,writer	tt0052618,tt0049833,tt0067525,tt0070723
nm0000033	Alfred Hitchcock	1899	1980	director,producer,writer	tt0054215,tt0052357,tt0053125,tt0030341
nm0000034	William Holden	1918	1981	actor,miscellaneous,soundtrack	tt0046359,tt0047437,tt0043014,tt0074958
nm0000035	James Horner	1953	2015	music_department,composer,actor	tt0120338,tt0499549,tt0120746,tt0177971
nm0000036	Buster Keaton	1895	1966	actor,writer,director	tt0017925,tt0015163,tt0015324,tt0016332
nm0000037	Gene Kelly	1912	1996	actor,miscellaneous,director	tt0045152,tt0043278,tt0041716,tt0053946
nm0000038	Grace Kelly	1929	1982	actress,producer,soundtrack	tt0046912,tt0047396,tt0048728,tt0046874
nm0000039	Deborah Kerr	1921	2007	actress,soundtrack,archive_footage	tt0049408,tt0045793,tt0039192,tt0050105
nm0000040	Stanley Kubrick	1928	1999	writer,director,producer	tt0062622,tt0066921,tt0072684,tt0093058
nm0000041	Akira Kurosawa	1910	1998	writer,director,assistant_director	tt0089881,tt0080979,tt0051808,tt0057565
nm0000042	Alan Ladd	1913	1964	actor,producer,camera_department	tt0046303,tt0035432,tt0034798,tt0038047
nm0000043	Veronica Lake	1922	1973	actress,producer,soundtrack	tt0034240,tt0038369,tt0035432,tt0034881
nm0000044	Burt Lancaster	1913	1994	actor,producer,miscellaneous	tt0045793,tt0085859,tt0040823,tt0051036
nm0000045	Bruce Lee	1940	1973	actor,writer,miscellaneous	tt0068767,tt0068935,tt0070034,tt0067824
nm0000046	Vivien Leigh	1913	1967	actress,writer,soundtrack	tt0044081,tt0031381,tt0033238,tt0034272
nm0000047	Sophia Loren	1934	\N	actress,soundtrack,archive_footage	tt0060121,tt0054749,tt0058335,tt0076085
nm0000048	Peter Lorre	1904	1964	actor,writer,director	tt0036613,tt0022100,tt0034583,tt0033870
nm0000049	Henry Mancini	1924	1994	music_department,composer,actor	tt0054698,tt0085101,tt0057413,tt0383216
nm0000050	Groucho Marx	1890	1977	actor,writer,director	tt0023027,tt0031060,tt0026778,tt0023969
nm0000051	James Mason	1909	1984	actor,producer,writer	tt0056193,tt0047522,tt0053125,tt0039677
nm0000052	Marcello Mastroianni	1924	1996	actor,producer,miscellaneous	tt0053779,tt0056801,tt0076085,tt0058335
nm0000053	Robert Mitchum	1917	1997	actor,producer,writer	tt0039689,tt0056197,tt0048424,tt0050356
nm0000054	Marilyn Monroe	1926	1962	actress,writer,soundtrack	tt0053291,tt0045810,tt0048605,tt0045891
nm0000055	Alfred Newman	1900	1970	music_department,composer,actor	tt0049408,tt0056085,tt0065377,tt0042192
nm0000056	Paul Newman	1925	2008	actor,producer,director	tt0054997,tt0257044,tt0084855,tt0064115
nm0000057	David Niven	1910	1983	actor,producer,director	tt0038733,tt0074937,tt0057413,tt0052182
nm0000058	Maureen O'Hara	1920	2015	actress,soundtrack,archive_footage	tt0045061,tt0033729,tt0039628,tt0055277
nm0000059	Laurence Olivier	1907	1989	actor,producer,director	tt0032976,tt0069281,tt0077269,tt0074860
nm0000060	Gregory Peck	1916	2003	actor,producer,miscellaneous	tt0056592,tt0038109,tt0046250,tt0077269
nm0000061	Tyrone Power	1914	1958	actor,producer,soundtrack	tt0032762,tt0051201,tt0039661,tt0042256
nm0000062	Elvis Presley	1935	1977	music_artist,actor,music_department	tt0056023,tt0056585,tt0054692,tt0058725
nm0000063	Anthony Quinn	1915	2001	actor,producer,director	tt0057831,tt0056172,tt0049456,tt0036244
nm0000064	Edward G. Robinson	1893	1973	actor,writer,soundtrack	tt0040506,tt0036775,tt0038991,tt0038057
nm0000065	Nino Rota	1911	1979	composer,music_department,actor	tt0068646,tt0063518,tt0071562,tt0056801
nm0000066	Jane Russell	1921	2011	actress,producer,soundtrack	tt0045810,tt0043643,tt0044919,tt0036241
nm0000067	Miklós Rózsa	1907	1995	music_department,composer,actor	tt0052618,tt0038109,tt0036775,tt0037884
nm0000068	Randolph Scott	1898	1987	actor,producer,miscellaneous	tt0056412,tt0026942,tt0035757,tt0046375
nm0000069	Frank Sinatra	1915	1998	music_artist,actor,producer	tt0045793,tt0056218,tt0049314,tt0052218
nm0000070	Max Steiner	1888	1971	music_department,composer,actor	tt0031381,tt0034583,tt0040897,tt0036613
nm0000071	James Stewart	1908	1997	actor,director,producer	tt0052357,tt0052561,tt0038650,tt0031679
nm0000072	Elizabeth Taylor	1932	2011	actress,producer,soundtrack	tt0061184,tt0051459,tt0053318,tt0061407
nm0000073	Shirley Temple	1928	2014	actress,writer,miscellaneous	tt0030657,tt0016029,tt0031580,tt0028118
nm0000074	Gene Tierney	1920	1991	actress,soundtrack,archive_footage	tt0037008,tt0037865,tt0035979,tt0038492
nm0000075	Spencer Tracy	1900	1967	actor,soundtrack,archive_footage	tt0061735,tt0055031,tt0053946,tt0042451
nm0000076	François Truffaut	1932	1984	writer,director,producer	tt0070460,tt0075860,tt0053198,tt0055032
nm0000077	Franz Waxman	1906	1967	music_department,composer,actor	tt0043014,tt0043924,tt0032976,tt0034248
nm0000078	John Wayne	1907	1979	actor,producer,art_department	tt0065126,tt0056217,tt0045061,tt0053580
nm0000079	Raquel Welch	1940	2023	actress,producer,writer	tt0072281,tt0060397,tt0061653,tt0066115
nm0000080	Orson Welles	1915	1985	actor,writer,director	tt0033467,tt0052311,tt0040525,tt0057427
nm0000081	Natalie Wood	1938	1981	actress,music_department,miscellaneous	tt0048545,tt0055614,tt0055471,tt0057263
nm0000082	Victor Young	1899	1956	music_department,composer,actor	tt0048960,tt0045061,tt3315342,tt0119094
nm0000083	Alan Miller	\N	\N	editor,writer,director	tt0424773,tt0969216,tt27504185,tt5969604
nm0000084	Gong Li	1965	\N	actress,producer,miscellaneous	tt0473444,tt0397535,tt0101640,tt4566758
nm0000085	Henner Hofmann	1950	\N	cinematographer,producer,camera_department	tt0097738,tt0097523,tt0113482,tt1825758
nm0000086	Louis de Funès	1914	1983	actor,writer,miscellaneous	tt0069747,tt0074103,tt0079200,tt0064425
nm0000087	Elena Koreneva	1953	\N	actress,director,writer	tt0122969,tt5847740,tt7529350,tt0080912
nm0000088	Aleksey Korenev	1927	1995	director,writer,assistant_director	tt0100069,tt0191104,tt0068304,tt0076551
nm0000089	Richard Paul	1940	1998	actor,soundtrack	tt0117318,tt0075489,tt0088529,tt0076009
nm0000090	Armin Mueller-Stahl	1930	\N	actor,director,writer	tt0765443,tt0117631,tt0963178,tt0139809
nm0000091	Gérard Pirès	1942	\N	director,writer,actor	tt0152930,tt0064297,tt0282552,tt0421974
nm0000092	John Cleese	1939	\N	actor,writer,producer	tt0095159,tt0071853,tt0072500,tt0063929
nm0000093	Brad Pitt	1963	\N	producer,actor,executive	tt0137523,tt0356910,tt1210166,tt0114746
nm0000094	J. Reifel	\N	\N	writer	tt0118886,tt0117915,tt0116030,tt0118631
nm0000095	Woody Allen	1935	\N	writer,director,actor	tt0075686,tt0079522,tt0118954,tt0070707
nm0000096	Gillian Anderson	1968	\N	actress,producer,director	tt0106179,tt2294189,tt0455590,tt0442632
nm0000097	Pamela Anderson	1967	\N	actress,producer,director	tt31193791,tt0096542,tt18376122,tt0101120
nm0000098	Jennifer Aniston	1969	\N	actress,producer,director	tt0108778,tt3442006,tt1723121,tt0279113
nm0000099	Patricia Arquette	1968	\N	actress,producer,director	tt0108399,tt1065073,tt0412175,tt0145531
nm0000100	Rowan Atkinson	1955	\N	actor,writer,producer	tt0274166,tt1634122,tt0118689,tt0110357
nm0000101	Dan Aykroyd	1952	\N	writer,actor,producer	tt0087332,tt0118747,tt0102558,tt0097428
nm0000102	Kevin Bacon	1958	\N	actor,producer,director	tt0087277,tt0164052,tt0361127,tt0327056
nm0000103	Fairuza Balk	1974	\N	actress,soundtrack,archive_footage	tt0115963,tt0181875,tt0089908,tt0120586
nm0000104	Antonio Banderas	1960	\N	actor,producer,writer	tt0120746,tt1189073,tt0101026,tt0120657
nm0000105	Adrienne Barbeau	1945	\N	actress,soundtrack,writer	tt0082340,tt0080749,tt0090685,tt0083767
nm0000106	Drew Barrymore	1975	\N	producer,actress,director	tt0160127,tt0151738,tt0343660,tt0120631
nm0000107	Kim Basinger	1953	\N	actress,producer,soundtrack	tt0119488,tt0096895,tt0104009,tt0337921
nm0000108	Luc Besson	1959	\N	writer,producer,director	tt0119116,tt0110413,tt2872732,tt0100263
nm0000109	Yasmine Bleeth	1968	\N	actress,archive_footage	tt0131857,tt0337851,tt0096542,tt0115285
nm0000110	Kenneth Branagh	1960	\N	actor,producer,director	tt0097499,tt0116477,tt0107616,tt3402236
nm0000111	Matthew Broderick	1962	\N	actor,director,producer	tt0395251,tt0086567,tt0091042,tt0126886
nm0000112	Pierce Brosnan	1953	\N	actor,producer,executive	tt0143145,tt0795421,tt0120347,tt0155267
nm0000113	Sandra Bullock	1964	\N	producer,actress,music_department	tt1041829,tt0212346,tt0111257,tt1454468
nm0000114	Steve Buscemi	1957	\N	actor,director,producer	tt0116282,tt0162346,tt0105236,tt4686844
nm0000115	Nicolas Cage	1964	\N	actor,producer,director	tt0119094,tt0113627,tt0117500,tt0435705
nm0000116	James Cameron	1954	\N	writer,producer,director	tt1630029,tt0499549,tt0090605,tt0103064
nm0000117	Neve Campbell	1973	\N	actress,producer,writer	tt0117571,tt0120082,tt0134084,tt0120890
nm0000118	John Carpenter	1948	\N	music_department,writer,composer	tt0077651,tt0080749,tt0069945,tt0082340
nm0000119	Tia Carrere	\N	\N	actress,soundtrack,producer	tt0105793,tt0275847,tt0207919,tt0111503
nm0000120	Jim Carrey	1962	\N	actor,writer,producer	tt0109040,tt0315327,tt0338013,tt0110475
nm0000121	Phoebe Cates	1963	\N	actress,soundtrack,archive_footage	tt0083929,tt0099700,tt0087363,tt0101775
nm0000122	Charles Chaplin	1889	1977	writer,actor,director	tt0032553,tt0027977,tt0021749,tt0044837
nm0000123	George Clooney	1961	\N	actor,producer,director	tt1124035,tt0433383,tt0465538,tt1193138
nm0000124	Jennifer Connelly	1970	\N	actress,producer,visual_effects	tt0268978,tt0315983,tt0286716,tt0180093
nm0000125	Sean Connery	1930	2020	actor,producer,director	tt0055928,tt0117500,tt0094226,tt0091605
nm0000126	Kevin Costner	1955	\N	actor,producer,writer	tt0119925,tt0099348,tt0102798,tt0103855
nm0000127	Wes Craven	1939	2015	writer,producer,director	tt0087800,tt0117571,tt0111686,tt0105121
nm0000128	Russell Crowe	1964	\N	actor,producer,director	tt1707386,tt0172495,tt0268978,tt0119488
nm0000129	Tom Cruise	1962	\N	actor,producer,director	tt0092099,tt0116695,tt0181689,tt0120755
nm0000130	Jamie Lee Curtis	1958	\N	actress,producer,director	tt0111503,tt1502407,tt6710474,tt0077651
nm0000131	John Cusack	1966	\N	actor,producer,writer	tt0119229,tt0146882,tt0098258,tt0450385
nm0000132	Claire Danes	1979	\N	actress,producer,soundtrack	tt0108872,tt1796960,tt0117509,tt0274558
nm0000133	Geena Davis	1956	\N	producer,actress,writer	tt0103074,tt0116908,tt0091064,tt0104694
nm0000134	Robert De Niro	1943	\N	actor,producer,director	tt0101540,tt0081398,tt0075314,tt1302006
nm0000135	John Denver	1943	1997	music_artist,actor,music_department	tt0120591,tt0076489,tt4649466,tt0299328
nm0000136	Johnny Depp	1963	\N	actor,producer,director	tt0408236,tt0325980,tt0449088,tt0367594
nm0000137	Bo Derek	1956	\N	actress,producer,camera_department	tt0086987,tt0099656,tt0114694,tt0083170
nm0000138	Leonardo DiCaprio	1974	\N	producer,actor,writer	tt1375666,tt0120338,tt0407887,tt0993846
nm0000139	Cameron Diaz	1972	\N	actress,producer,soundtrack	tt0160127,tt0259711,tt0129387,tt0119738
nm0000140	Michael Douglas	1944	\N	actor,producer,director	tt1291580,tt0094291,tt0088011,tt0103772
nm0000141	David Duchovny	1960	\N	actor,producer,director	tt0106179,tt0120902,tt0904208,tt0443701
nm0000142	Clint Eastwood	1930	\N	actor,producer,director	tt0405159,tt1205489,tt0105695,tt0186566
nm0000143	Erika Eleniak	1969	\N	actress,archive_footage	tt0105690,tt0083866,tt0094761,tt0106400
nm0000144	Cary Elwes	1962	\N	actor,producer,miscellaneous	tt0387564,tt0093779,tt0107977,tt0119468
nm0000145	Sherilyn Fenn	1965	\N	actress,soundtrack,archive_footage	tt0105046,tt0100935,tt0098936,tt0106471
nm0000146	Ralph Fiennes	1962	\N	actor,producer,director	tt0387131,tt2278388,tt0108052,tt1372686
nm0000147	Colin Firth	1960	\N	actor,producer,writer	tt1315981,tt1504320,tt0243155,tt2802144
nm0000148	Harrison Ford	1942	\N	actor,writer,producer	tt0082971,tt0106977,tt0076759,tt0090329
nm0000149	Jodie Foster	1962	\N	actress,producer,director	tt0102926,tt0075314,tt0476964,tt0094608
nm0000150	Michael J. Fox	1961	\N	actor,producer,miscellaneous	tt0088763,tt0096874,tt0116365,tt0115369
nm0000151	Morgan Freeman	1937	\N	actor,producer,director	tt0097239,tt0114369,tt0405159,tt0468569
nm0000152	Richard Gere	1949	\N	actor,producer,music_department	tt0299658,tt0100405,tt0084434,tt0119395
nm0000153	Gina Gershon	1962	\N	actress,producer,writer	tt0115736,tt1726669,tt0114436,tt0119094
nm0000154	Mel Gibson	1956	\N	actor,producer,director	tt0112573,tt0104714,tt0118883,tt0117438
nm0000155	Whoopi Goldberg	1955	\N	actress,producer,writer	tt0099653,tt0105417,tt0088939,tt0108147
nm0000156	Jeff Goldblum	1952	\N	actor,producer,writer	tt0107290,tt0091064,tt2278388,tt0116629
nm0000157	Linda Hamilton	1956	\N	actress,soundtrack,archive_footage	tt0103064,tt6450804,tt0088247,tt0118928
nm0000158	Tom Hanks	1956	\N	producer,actor,writer	tt0162222,tt0094737,tt0109830,tt0107818
nm0000159	Teri Hatcher	1964	\N	actress,writer,director	tt0120347,tt0410975,tt0106057,tt0327597
nm0000160	Ethan Hawke	1970	\N	actor,producer,writer	tt0139654,tt0112471,tt2209418,tt0381681
nm0000161	Salma Hayek	1966	\N	actress,producer,director	tt0120679,tt0112851,tt0120891,tt0120655
nm0000162	Anne Heche	1969	2022	actress,producer,writer	tt0120828,tt0119008,tt0120885,tt0120461
nm0000163	Dustin Hoffman	1937	\N	actor,producer,director	tt0084805,tt0095953,tt0079417,tt0064665
nm0000164	Anthony Hopkins	1937	\N	actor,composer,producer	tt0102926,tt0113987,tt0975645,tt0412080
nm0000165	Ron Howard	1954	\N	producer,actor,writer	tt0367279,tt0268978,tt0075213,tt0112384
nm0000166	Helen Hunt	1963	\N	actress,producer,director	tt0119822,tt0117998,tt0103484,tt0455805
nm0000167	Elizabeth Hurley	1965	\N	actress,producer,archive_footage	tt22805652,tt3597912,tt0118655,tt0230030
nm0000168	Samuel L. Jackson	1948	\N	actor,producer,miscellaneous	tt0110912,tt3460252,tt0417148,tt2802144
nm0000169	Tommy Lee Jones	1946	\N	actor,director,writer	tt2398231,tt0106977,tt0477348,tt0443272
nm0000170	Milla Jovovich	1975	\N	actress,producer,director	tt0119116,tt1220634,tt0120804,tt1220198
nm0000171	Ashley Judd	1968	\N	actress,producer,director	tt0150377,tt0470705,tt0119468,tt0244970
nm0000172	Harvey Keitel	1939	\N	actor,producer,soundtrack	tt0105236,tt0103759,tt2278388,tt0110912
nm0000173	Nicole Kidman	1967	\N	actress,producer,music_department	tt0203009,tt0274558,tt0935075,tt0276919
nm0000174	Val Kilmer	1959	2025	actor,producer,director	tt0101761,tt0120053,tt0373469,tt0096446
nm0000175	Stephen King	1947	\N	writer,producer,actor	tt0091499,tt0083767,tt0105428,tt0111161
nm0000176	Nastassja Kinski	1961	\N	actress,producer,soundtrack	tt0080009,tt0087884,tt0083722,tt0111400
nm0000177	Kevin Kline	1947	\N	actor,director,producer	tt0120891,tt0095159,tt0106673,tt0113117
nm0000178	Diane Lane	1965	\N	actress,soundtrack,archive_footage	tt0250797,tt0328589,tt0086066,tt2096673
nm0000179	Jude Law	1972	\N	actor,producer,director	tt0134119,tt0376541,tt2278388,tt0346156
nm0000180	David Lean	1908	1991	director,writer,editor	tt0056172,tt0059113,tt0050212,tt0038574
nm0000181	Heather Locklear	1961	\N	actress,producer,soundtrack	tt0103491,tt0380623,tt0098193,tt0119695
nm0000182	Jennifer Lopez	1969	\N	music_artist,producer,actress	tt5503686,tt2126357,tt0120780,tt0252076
nm0000183	Traci Lords	1968	\N	actress,producer,director	tt1984153,tt0099329,tt0120611,tt1007028
nm0000184	George Lucas	1944	\N	writer,producer,director	tt0076759,tt0066434,tt0069704,tt0082971
nm0000185	Dolph Lundgren	1957	\N	actor,producer,director	tt0089927,tt0098141,tt0093507,tt0105698
nm0000186	David Lynch	1946	2025	writer,director,producer	tt0098936,tt0460829,tt0105665,tt0166924
nm0000187	Madonna	1958	\N	music_artist,actress,composer	tt0104694,tt0116250,tt0089017,tt0156841
nm0000188	Steve Martin	1945	\N	writer,actor,producer	tt0093886,tt0079367,tt0383216,tt0131325
nm0000189	Jenny McCarthy-Wahlberg	1972	\N	actress,producer,writer	tt0327643,tt0455967,tt0134084,tt0131857
nm0000190	Matthew McConaughey	1969	\N	actor,producer,director	tt0816692,tt0790636,tt1935179,tt1915581
nm0000191	Ewan McGregor	1971	\N	actor,producer,writer	tt0203009,tt0117951,tt1322269,tt2763304
nm0000192	Alyssa Milano	1972	\N	actress,producer,writer	tt0158552,tt0086827,tt0088944,tt0116287
nm0000193	Demi Moore	1962	\N	actress,producer,director	tt0119173,tt17526714,tt0107211,tt0099653
nm0000194	Julianne Moore	1960	\N	actress,producer,soundtrack	tt0297884,tt0118749,tt0175880,tt0842926
nm0000195	Bill Murray	1950	\N	actor,writer,producer	tt0335266,tt0128445,tt1748122,tt0362270
nm0000196	Mike Myers	1963	\N	actor,writer,producer	tt0295178,tt0145660,tt0118655,tt0811138
nm0000197	Jack Nicholson	1937	\N	actor,producer,writer	tt0071315,tt0119822,tt0407887,tt0073486
nm0000198	Gary Oldman	1958	\N	actor,producer,director	tt1340800,tt0468569,tt4555426,tt0103874
nm0000199	Al Pacino	1940	\N	actor,director,producer	tt0070666,tt0072890,tt0068646,tt0099422
nm0000200	Bill Paxton	1955	2017	actor,producer,writer	tt0264616,tt0090605,tt0112384,tt0117998
nm0000201	Michelle Pfeiffer	1958	\N	actress,producer,soundtrack	tt0097322,tt0161081,tt0427327,tt0117247
nm0000202	Ryan Phillippe	1974	\N	actor,producer,director	tt0375679,tt0280707,tt0139134,tt0120577
nm0000203	River Phoenix	1970	1993	actor,soundtrack,archive_footage	tt0102494,tt0092005,tt0091557,tt0096018
nm0000204	Natalie Portman	1981	\N	actress,producer,director	tt0947798,tt0434409,tt1619029,tt0376541
nm0000205	Parker Posey	1968	\N	actress,producer,writer	tt0348150,tt0134084,tt0359013,tt0106677
nm0000206	Keanu Reeves	1964	\N	actor,producer,miscellaneous	tt0133093,tt0111257,tt0102685,tt0113481
nm0000207	Christina Ricci	1980	\N	actress,producer,soundtrack	tt0118789,tt0101272,tt0112642,tt0811080
nm0000208	Molly Ringwald	1968	\N	actress,music_department,soundtrack	tt0088128,tt0088847,tt0091790,tt0095169
nm0000209	Tim Robbins	1958	\N	actor,producer,director	tt0327056,tt0105151,tt0091225,tt0111161
nm0000210	Julia Roberts	1967	\N	actress,producer,soundtrack	tt0100405,tt1322269,tt0376541,tt0195685
nm0000211	Mimi Rogers	1956	\N	actress,producer,soundtrack	tt0210070,tt0120738,tt0488085,tt0118655
nm0000212	Meg Ryan	1961	\N	actress,producer,director	tt0098635,tt0128853,tt0108160,tt0120632
nm0000213	Winona Ryder	1971	\N	actress,producer,director	tt0118583,tt0110367,tt0103874,tt0099487
nm0000214	Mia Sara	1967	\N	actress,soundtrack,archive_footage	tt0111438,tt0091042,tt0089469,tt0312098
nm0000215	Susan Sarandon	1946	\N	actress,producer,miscellaneous	tt0103074,tt0112818,tt0120686,tt0109446
nm0000216	Arnold Schwarzenegger	1947	\N	actor,producer,writer	tt0103064,tt0216216,tt0088247,tt0107362
nm0000217	Martin Scorsese	1942	\N	producer,director,actor	tt0075314,tt5537002,tt0070379,tt0099685
nm0000218	Kristin Scott Thomas	1960	\N	actress,director,writer	tt0280707,tt0116209,tt0109831,tt1602613
nm0000219	Steven Seagal	1952	\N	actor,producer,writer	tt0110725,tt0094602,tt0105690,tt0114781
nm0000220	Joan Severance	1958	\N	actress,producer,miscellaneous	tt0098282,tt0099141,tt0143050,tt0112519
nm0000221	Charlie Sheen	1965	\N	actor,producer,writer	tt0369179,tt0108333,tt0094291,tt0096487
nm0000222	Brooke Shields	1965	\N	actress,producer,director	tt0080453,tt0078111,tt0082329,tt0080116
nm0000223	Elisabeth Shue	1963	\N	actress,producer,soundtrack	tt0113627,tt0092513,tt0120053,tt1190634
nm0000224	Alicia Silverstone	1976	\N	actress,producer,soundtrack	tt0112697,tt0118688,tt0124298,tt0119086
nm0000225	Christian Slater	1969	\N	actor,producer,director	tt0124198,tt0108399,tt0102798,tt0115759
nm0000226	Will Smith	1968	\N	producer,actor,writer	tt0098800,tt0480249,tt0119654,tt0120891
nm0000227	Mira Sorvino	1967	\N	actress,producer,soundtrack	tt0113819,tt0120008,tt0364343,tt0120032
nm0000228	Kevin Spacey	1959	\N	actor,producer,director	tt0119488,tt0114814,tt0169547,tt0114369
nm0000229	Steven Spielberg	1946	\N	producer,writer,director	tt0108052,tt0083866,tt0120815,tt0082971
nm0000230	Sylvester Stallone	1946	\N	actor,producer,writer	tt0075148,tt0089927,tt3076658,tt0084602
nm0000231	Oliver Stone	1946	\N	director,producer,writer	tt0091763,tt0102138,tt0096969,tt0110632
nm0000232	Sharon Stone	1958	\N	actress,producer,miscellaneous	tt0103772,tt0112641,tt0114214,tt0108162
nm0000233	Quentin Tarantino	1963	\N	writer,producer,actor	tt0105236,tt0110912,tt0116367,tt7131622
nm0000234	Charlize Theron	1975	\N	producer,actress,costume_designer	tt0340855,tt1392190,tt5610554,tt1735898
nm0000235	Uma Thurman	1970	\N	actress,producer,writer	tt0266697,tt0378194,tt0110912,tt0118688
nm0000236	Jennifer Tilly	1958	\N	actress,writer,soundtrack	tt0115736,tt0144120,tt0387575,tt0109348
nm0000237	John Travolta	1954	\N	actor,producer,music_department	tt0110912,tt0113161,tt0076666,tt0077631
nm0000238	Shannon Tweed	1957	\N	actress,producer,miscellaneous	tt0112942,tt0165710,tt0094834,tt0110675
nm0000239	Liv Tyler	1977	\N	actress,producer,soundtrack	tt0120591,tt0167260,tt0120737,tt0482606
nm0000240	Skeet Ulrich	1970	\N	actor,director,producer	tt0117571,tt0115963,tt0409572,tt17663992
nm0000241	Jean-Claude Van Damme	1960	\N	actor,producer,writer	tt0101764,tt0119013,tt0097659,tt0111301
nm0000242	Mark Wahlberg	1971	\N	producer,actor,composer	tt0964517,tt0118749,tt0407887,tt1637725
nm0000243	Denzel Washington	1954	\N	actor,producer,director	tt2671706,tt1037705,tt0168786,tt0139654
nm0000244	Sigourney Weaver	1949	\N	actress,producer,soundtrack	tt0118583,tt0499549,tt0078748,tt0125022
nm0000245	Robin Williams	1951	2014	actor,writer,producer	tt0107614,tt0093105,tt0265459,tt0115685
nm0000246	Bruce Willis	1955	\N	actor,producer,writer	tt0095016,tt0110912,tt0088571,tt0167404
nm0000247	John Woo	1946	\N	director,producer,writer	tt0092263,tt0425637,tt0104684,tt0119094
nm0000248	Edward D. Wood Jr.	1924	1978	writer,director,actor	tt0052077,tt0045826,tt0067479,tt0047127
nm0000249	James Woods	1947	\N	actor,producer,director	tt0120877,tt0119282,tt0159097,tt0086541
nm0000250	Renée Zellweger	1969	\N	actress,producer,writer	tt0299658,tt0159365,tt0116695,tt0243155
nm0000251	Timothy Dowling	1973	\N	actor,writer,script_department	tt2120120,tt0181852,tt1596350,tt1564367
nm0003678	Kate Reid	1948	\N	actress	tt0093700,tt0086024,tt0085006,tt0100463
nm0000252	Robert Ellis	1892	1974	actor,director,writer	tt0010781,tt0030778,tt0006213,tt0030738
nm0000253	Robert Ellis	1888	1935	art_director,miscellaneous	tt0010965,tt0014083,tt0026454,tt0014515
nm0000254	Isabelle Adjani	1955	\N	actress,producer,miscellaneous	tt0082933,tt0094828,tt0079641,tt0073114
nm0000255	Ben Affleck	1972	\N	producer,actor,writer	tt1024648,tt2267998,tt0840361,tt0119217
nm0000256	Jenny Agutter	1952	\N	actress,soundtrack,archive_footage	tt0074812,tt0848228,tt0067959,tt0082010
nm0000257	Alan Alda	1936	\N	actor,miscellaneous,writer	tt0068098,tt0082405,tt0097123,tt7653254
nm0000258	Stephanie Zimbalist	1956	\N	actress,writer,soundtrack	tt0083470,tt0099225,tt0076993,tt0080402
nm0000259	Ginger Lynn	1962	\N	actress,producer,director	tt0210365,tt0134898,tt0395584,tt0087562
nm0000260	Joan Allen	1956	\N	actress,producer,soundtrack	tt3170832,tt0452608,tt0208874,tt0115988
nm0000261	Karen Allen	1951	\N	actress,director,soundtrack	tt0082971,tt0088172,tt0367882,tt0077975
nm0000262	Nancy Allen	1950	\N	actress,soundtrack,archive_footage	tt0080661,tt0107978,tt0093870,tt0100502
nm0000263	Kirstie Alley	1951	2022	actress,producer,writer	tt0084726,tt0097778,tt0157503,tt0113442
nm0000264	Pedro Almodóvar	1949	\N	writer,director,producer	tt0287467,tt0101026,tt1189073,tt0095675
nm0000265	Robert Altman	1925	2006	director,producer,writer	tt0280707,tt0073440,tt0108122,tt0105151
nm0000266	Ursula Andress	1936	\N	actress,archive_footage	tt0055928,tt0061452,tt0060177,tt0082186
nm0000267	Julie Andrews	1935	\N	actress,writer,producer	tt0059742,tt0058331,tt0084865,tt0062362
nm0000268	Ann-Margret	1941	\N	actress,soundtrack,archive_footage	tt0066892,tt0056891,tt0060646,tt0316732
nm0000269	Jean-Jacques Annaud	1943	\N	director,producer,writer	tt0091605,tt0215750,tt2909116,tt0120102
nm0000270	Gabrielle Anwar	1970	\N	actress,producer,director	tt0108333,tt0105323,tt0114660,tt0810788
nm0000271	Anne Archer	1947	\N	actress,producer,writer	tt0093010,tt0108122,tt0105112,tt0109444
nm0000272	Fanny Ardant	1949	\N	actress,director,writer	tt0283832,tt0086551,tt0127536,tt0082370
nm0000273	Alan Arkin	1934	2023	actor,director,writer	tt1024648,tt0449059,tt0104348,tt0099487
nm0000274	David Arquette	1971	\N	producer,actor,director	tt0134084,tt0151738,tt0120082,tt0271367
nm0000275	Rosanna Arquette	1959	\N	actress,producer,director	tt0089017,tt0110912,tt0088680,tt0190138
nm0000276	Sean Astin	1971	\N	actor,producer,director	tt0167261,tt0167260,tt0120737,tt0089218
nm0000277	Richard Attenborough	1923	2014	actor,producer,director	tt0107290,tt0057115,tt0083987,tt0119567
nm0000278	Pernilla August	1958	\N	actress,director,writer	tt0120915,tt0104350,tt0115164,tt0121765
nm0000279	Hank Azaria	1964	\N	actor,producer,writer	tt0096697,tt1839481,tt0115685,tt0118617
nm0000280	Catherine Bach	1954	\N	actress,soundtrack,archive_footage	tt0078607,tt0072288,tt1414382,tt0087032
nm0000281	Scott Baio	1960	\N	actor,director,producer	tt0270846,tt0070992,tt0367279,tt0281680
nm0000282	Scott Bairstow	1970	\N	actor,archive_footage	tt0119925,tt0283084,tt0120512,tt0118730
nm0000283	Brenda Bakke	1963	\N	actress,archive_footage	tt0119488,tt0107144,tt0114608,tt0114781
nm0000284	Adam Baldwin	1962	\N	actor,soundtrack,archive_footage	tt0379786,tt0116629,tt0093058,tt0187393
nm0000285	Alec Baldwin	1958	\N	actor,producer,writer	tt0407887,tt1230414,tt0318374,tt0104348
nm0000286	Stephen Baldwin	1966	\N	actor,producer,director	tt0114814,tt0115683,tt0158622,tt0111418
nm0000287	William Baldwin	1963	\N	actor,producer,stunts	tt0101393,tt0108162,tt0113010,tt0367089
nm0000288	Christian Bale	1974	\N	actor,producer,editorial_department	tt0468569,tt0372784,tt1345836,tt1800241
nm0000289	Ellen Barkin	1954	\N	actress,producer,archive_footage	tt0116277,tt0157503,tt0086856,tt0108330
nm0000290	John Barry	1933	2011	music_department,composer,actor	tt0089755,tt0099348,tt0093428,tt0081534
nm0000291	Angela Bassett	1958	\N	actress,producer,director	tt0114558,tt1825683,tt9114286,tt0118884
nm0000292	Michelle Bauer	1958	\N	actress,miscellaneous,costume_department	tt0094998,tt0103213,tt0094734,tt0112408
nm0000293	Sean Bean	1959	\N	actor,producer,animation_department	tt0120737,tt1181791,tt0944947,tt0332452
nm0000294	Amanda Bearse	1958	\N	actress,director,producer	tt0089175,tt0092400,tt14146836,tt9731598
nm0000295	Kate Beckinsale	1973	\N	actress,producer,miscellaneous	tt3068194,tt0401855,tt0320691,tt0452702
nm0000296	Robert Beltran	1953	\N	actor,soundtrack,archive_footage	tt0112178,tt0113987,tt0087799,tt0101516
nm0000297	Tom Berenger	1949	\N	actor,producer,writer	tt0091763,tt1375666,tt0085244,tt0097815
nm0000298	Candice Bergen	1946	\N	actress,producer,soundtrack	tt0212346,tt0901476,tt0094514,tt0402711
nm0000299	Michael Biehn	1956	\N	actor,producer,director	tt0090605,tt0088247,tt0096754,tt0117500
nm0000300	Juliette Binoche	1964	\N	actress,director,art_department	tt0116209,tt2452254,tt1219827,tt0108394
nm0000301	Thora Birch	1982	\N	actress,producer,director	tt0162346,tt0169547,tt0107120,tt0114011
nm0000302	Jacqueline Bisset	1944	\N	actress,producer,soundtrack	tt0062765,tt0071877,tt0070460,tt0088322
nm0000303	Honor Blackman	1925	2020	actress,soundtrack,archive_footage	tt0058150,tt0057197,tt0054518,tt0243155
nm0000304	Linda Blair	1959	\N	actress,producer,miscellaneous	tt0070047,tt0076009,tt0089964,tt0088044
nm0000305	Mel Blanc	1908	1989	actor,music_department,soundtrack	tt0096438,tt0094939,tt0078915,tt0077278
nm0000306	Brian Blessed	1936	\N	actor,director,art_department	tt0080745,tt0120915,tt0120855,tt0107616
nm0000307	Helena Bonham Carter	1966	\N	actress,director,producer	tt0408236,tt1707386,tt0137523,tt1504320
nm0000308	Ernest Borgnine	1917	2012	actor,producer,soundtrack	tt0048356,tt0069113,tt0082340,tt0045793
nm0000309	David Bowie	1947	2016	music_artist,composer,actor	tt0091369,tt0074851,tt0482571,tt0196229
nm0000310	Bruce Boxleitner	1950	\N	actor,producer,soundtrack	tt0105946,tt1104001,tt0084827,tt0871427
nm0000311	Annie Rosar	1888	1963	actress,soundtrack,archive_footage	tt0034800,tt0025411,tt0034396,tt0041552
nm0000312	Amy Brenneman	1964	\N	actress,producer,writer	tt0209069,tt0113277,tt0116287,tt0116040
nm0000313	Jeff Bridges	1949	\N	actor,producer,art_department	tt0118715,tt1263670,tt1403865,tt0088172
nm0000314	Charles Bronson	1921	2003	actor,archive_footage	tt0071402,tt0064116,tt0057115,tt0054047
nm0000315	Louise Brooks	1906	1985	actress,archive_footage	tt0018737,tt0017382,tt0021917,tt0021273
nm0000316	Mel Brooks	1926	\N	actor,writer,producer	tt0094012,tt0395251,tt0082517,tt0071230
nm0000317	Clancy Brown	1959	\N	actor,producer,miscellaneous	tt0111161,tt0120201,tt3501632,tt1179056
nm0000318	Tim Burton	1958	\N	producer,writer,miscellaneous	tt0099487,tt1142977,tt0121164,tt0408236
nm0000319	Yancy Butler	1970	\N	actress,producer	tt1650554,tt0107076,tt0274298,tt1250777
nm0000320	Luis Buñuel	1900	1983	writer,director,actor	tt0068361,tt0061395,tt0075824,tt0056732
nm0000321	Gabriel Byrne	1950	\N	actor,producer,writer	tt0114814,tt0146675,tt7784604,tt0100150
nm0000322	Emmanuelle Béart	1963	\N	actress,director,writer	tt0283832,tt0117060,tt0113947,tt0109731
nm0000323	Michael Caine	1933	\N	actor,producer,miscellaneous	tt3312830,tt0468569,tt0482571,tt0069281
nm0000324	Barbara Carrera	1945	\N	actress,soundtrack,archive_footage	tt0086006,tt0076210,tt0082199,tt0085862
nm0000325	David Caruso	1956	\N	actor,producer,archive_footage	tt0083944,tt0228750,tt0261983,tt0099939
nm0000326	Kim Cattrall	1956	\N	actress,producer,soundtrack	tt1261945,tt0102975,tt1000774,tt0159206
nm0000327	Lacey Chabert	1982	\N	actress,producer,writer	tt0377092,tt0120738,tt0277371,tt0454082
nm0000328	Richard Chamberlain	1934	2025	actor,producer,soundtrack	tt0072308,tt0076299,tt0085101,tt0073012
nm0000329	Jackie Chan	1954	\N	producer,actor,stunts	tt0127357,tt0120812,tt0089374,tt0266915
nm0000330	Stockard Channing	1944	\N	actress,soundtrack,archive_footage	tt0120791,tt0077631,tt0108149,tt0198021
nm0000331	Chevy Chase	1943	\N	actor,writer,producer	tt0104850,tt0085995,tt0080487,tt0102558
nm0000332	Don Cheadle	1964	\N	actor,producer,director	tt0375679,tt1540133,tt0988047,tt0395169
nm0000333	Cher	1946	\N	music_artist,actress,producer	tt0093565,tt1126591,tt0100140,tt0089560
nm0000334	Chow Yun-Fat	1955	\N	actor,writer,soundtrack	tt0092263,tt0190332,tt0120008,tt0104684
nm0000335	Glenn Close	1947	\N	actress,producer,director	tt0093010,tt3750872,tt2015381,tt0094947
nm0000336	James Coburn	1928	2002	actor,producer,director	tt0057115,tt0056923,tt0054047,tt0074695
nm0000337	Rachael Leigh Cook	1979	\N	actress,producer,writer	tt0160862,tt11100856,tt5659816,tt0331811
nm0000338	Francis Ford Coppola	1939	\N	producer,director,writer	tt0078788,tt0071360,tt0071562,tt0068646
nm0000339	Roger Corman	1926	2024	producer,director,actor	tt0102926,tt0112384,tt0091419,tt0099612
nm0000340	Cindy Crawford	1966	\N	actress,producer,soundtrack	tt0113010,tt0120577,tt1441109,tt0186549
nm0000341	Michael Crichton	1942	2008	writer,producer,director	tt0107290,tt0117998,tt0070909,tt0108757
nm0000342	James Cromwell	1940	\N	actor,producer,soundtrack	tt0119488,tt0120689,tt0343818,tt0398165
nm0000343	David Cronenberg	1943	\N	actor,director,writer	tt0091064,tt0094964,tt0120907,tt0115964
nm0000344	Denise Crosby	\N	\N	actress,producer,archive_footage	tt0098084,tt0097889,tt0104119,tt0120647
nm0000345	Billy Crystal	1948	\N	actor,writer,producer	tt0113097,tt0101587,tt0098635,tt0122933
nm0000346	Macaulay Culkin	1980	\N	actor,producer,director	tt0099785,tt0102492,tt0107034,tt0104431
nm0000347	Tim Curry	1946	\N	actor,producer,soundtrack	tt0112715,tt0117110,tt0088930,tt0073629
nm0000348	Tony Curtis	1925	2010	actor,producer,soundtrack	tt0051036,tt0053291,tt0054331,tt0066701
nm0000349	Joan Cusack	1962	\N	actress,writer,soundtrack	tt0119360,tt0119229,tt0096463,tt1659337
nm0000350	Beverly D'Angelo	1951	\N	actress,producer,soundtrack	tt0120434,tt0085995,tt0089670,tt0120586
nm0000351	Donna D'Errico	1968	\N	actress,director,producer	tt4459134,tt12861508,tt7235466,tt4270458
nm0000352	Vincent D'Onofrio	1959	\N	actor,producer,director	tt0119654,tt0209958,tt0093058,tt0109707
nm0000353	Willem Dafoe	1955	\N	actor,producer,writer	tt0145487,tt6938828,tt5649144,tt7984734
nm0000354	Matt Damon	1970	\N	producer,actor,writer	tt0119217,tt3659388,tt0407887,tt0134119
nm0000355	Anthony Daniels	1946	\N	actor,producer,writer	tt2488496,tt2527336,tt0076759,tt0080684
nm0000356	Sybil Danning	\N	\N	actress,producer,writer	tt0080421,tt0373883,tt0085672,tt0072281
nm0000357	Lolita Davidovich	1961	\N	actress,archive_footage	tt0329717,tt0096943,tt0092513,tt0110146
nm0000358	Daniel Day-Lewis	1957	\N	actor,writer,music_department	tt0469494,tt0104691,tt0443272,tt5776858
nm0000359	Olivier De Funès	1949	\N	actor,writer,soundtrack	tt0250077,tt0065848,tt0064425,tt0060475
nm0000360	Rebecca De Mornay	1959	\N	actress,producer,director	tt0104389,tt0089941,tt0086200,tt0309698
nm0000361	Brian De Palma	1940	\N	director,writer,producer	tt0086984,tt0080661,tt0099165,tt0094226
nm0000362	Danny DeVito	1944	\N	actor,producer,director	tt0117008,tt0098621,tt0103776,tt0119488
nm0000363	Loren Dean	1969	\N	actor,soundtrack,archive_footage	tt2935510,tt7959026,tt0112384,tt0119177
nm0000364	Sandra Dee	1942	2005	actress,soundtrack,archive_footage	tt0052847,tt0056093,tt0054759,tt0053320
nm0000365	Julie Delpy	1969	\N	actress,writer,producer	tt0111507,tt0841044,tt0112471,tt0381681
nm0000366	Catherine Deneuve	1943	\N	actress,producer,talent_agent	tt0283832,tt0061395,tt0168629,tt0059646
nm0000367	Gérard Depardieu	1948	\N	actor,producer,director	tt0099334,tt0120744,tt0099699,tt0083789
nm0000368	Laura Dern	1967	\N	actress,producer,writer	tt0107290,tt2305051,tt7653254,tt0090756
nm0000369	Matt Dillon	1964	\N	actor,director,producer	tt0375679,tt0129387,tt0097240,tt4003440
nm0000370	Walt Disney	1901	1966	producer,actor,miscellaneous	tt0029583,tt0048280,tt0046183,tt0032910
nm0000371	Ami Dolenz	1969	\N	actress,producer,miscellaneous	tt0092718,tt0110913,tt0107949,tt0056758
nm0000372	Amanda Donohoe	1962	\N	actress,producer,archive_footage	tt0095488,tt0119528,tt0110428,tt0090466
nm0000373	Michael Dorn	1952	\N	actor,director,writer	tt0117731,tt0092455,tt0120844,tt0111280
nm0000374	Brad Dourif	1950	\N	actor,archive_footage,archive_sound	tt0073486,tt0167261,tt0087182,tt0099528
nm0000375	Robert Downey Jr.	1965	\N	actor,producer,writer	tt0371746,tt1300854,tt4154796,tt0848228
nm0000376	Fran Drescher	1957	\N	writer,actress,producer	tt0106080,tt0118691,tt0837562,tt0098546
nm0000377	Richard Dreyfuss	1947	\N	actor,producer,writer	tt0076095,tt0075860,tt0073195,tt0113862
nm0000378	Minnie Driver	1970	\N	actress,producer,soundtrack	tt0112679,tt0496343,tt0119217,tt5592146
nm0000379	Kirsten Dunst	1982	\N	actress,producer,director	tt0145487,tt1527186,tt0110148,tt0110367
nm0000380	Robert Duvall	1931	\N	actor,producer,director	tt0118632,tt0086423,tt1872194,tt0316356
nm0000381	Anthony Edwards	1962	\N	actor,producer,director	tt0108757,tt0092099,tt0443706,tt0088000
nm0000382	Atom Egoyan	1960	\N	director,writer,producer	tt0120255,tt3704050,tt0273435,tt2326612
nm0000383	Jennifer Ehle	1969	\N	actress,archive_footage	tt1790885,tt2392830,tt4919484,tt0112130
nm0000384	Danny Elfman	1953	\N	music_department,composer,actor	tt0107688,tt0367594,tt0121164,tt0119654
nm0000385	Sam Elliott	1944	\N	actor,producer,writer	tt1517451,tt5655222,tt0286716,tt0208874
nm0000386	Roland Emmerich	1955	\N	writer,producer,director	tt0116629,tt0120685,tt0319262,tt1628841
nm0000387	Robert Englund	1947	\N	actor,miscellaneous,director	tt0087800,tt0095742,tt0093629,tt0329101
nm0000388	R. Lee Ermey	1944	2018	actor,miscellaneous,producer	tt0093058,tt0114369,tt0324216,tt0095647
nm0000389	Emilio Estevez	1962	\N	actor,director,producer	tt1441912,tt0308055,tt3294746,tt0100994
nm0000390	Joe Eszterhas	1944	\N	writer,producer,miscellaneous	tt0103772,tt0114436,tt0108162,tt0118577
nm0000391	Rupert Everett	1959	\N	actor,producer,writer	tt0119738,tt2404639,tt0109592,tt0122541
nm0000392	Morgan Fairchild	1950	\N	actress,producer,miscellaneous	tt0108778,tt0084652,tt0089791,tt1823059
nm0000393	Peter Falk	1927	2011	actor,producer,director	tt1466074,tt0074937,tt0093779,tt0281322
nm0000394	Chris Farley	1964	1997	actor,stunts,miscellaneous	tt0114694,tt0118708,tt0115697,tt0106598
nm0000395	Terry Farrell	1963	\N	actress,soundtrack,archive_footage	tt0106145,tt0174378,tt0104409,tt0090685
nm0000396	Farrah Fawcett	1947	2009	actress,producer,miscellaneous	tt0074812,tt0079285,tt0082136,tt0091024
nm0000397	Corey Feldman	\N	\N	actor,producer,director	tt0092005,tt0093437,tt0089218,tt0096734
nm0000398	Sally Field	1946	\N	actress,producer,director	tt0443272,tt0109830,tt0098384,tt0076729
nm0000399	David Fincher	1962	\N	producer,director,writer	tt0114369,tt2267998,tt1285016,tt0443706
nm0000400	Linda Fiorentino	1958	\N	actress,soundtrack,archive_footage	tt0110308,tt0119654,tt0120655,tt0088680
nm0000401	Laurence Fishburne	1961	\N	actor,producer,director	tt0133093,tt1598778,tt0234215,tt0327056
nm0000402	Carrie Fisher	1956	2016	actress,miscellaneous,writer	tt0076759,tt2527336,tt0086190,tt0080684
nm0000403	Bridget Fonda	1964	\N	actress,soundtrack,archive_footage	tt0120324,tt0107843,tt0105414,tt0139414
nm0000404	Jane Fonda	1937	\N	actress,producer,miscellaneous	tt0067309,tt0062711,tt0077362,tt0076245
nm0000405	Michelle Forbes	1965	\N	actress,archive_footage,archive_sound	tt0107302,tt0844441,tt0116225,tt1951266
nm0000406	John Ford	1894	1973	director,producer,actor	tt0045061,tt0032551,tt0033729,tt0031971
nm0000407	Vivica A. Fox	1964	\N	actress,producer,director	tt0116629,tt0266697,tt0373474,tt0118688
nm0000408	Jonathan Frakes	1952	\N	actor,director,producer	tt0117731,tt0120844,tt0111280,tt0253754
nm0000409	Brendan Fraser	1968	\N	actor,producer,art_department	tt0120616,tt0375679,tt0209163,tt13833688
nm0000410	Stephen Fry	1957	\N	actor,producer,writer	tt0280707,tt0434409,tt0120514,tt0371724
nm0000411	Edward Furlong	1977	\N	actor,producer,soundtrack	tt0103064,tt0165710,tt0120586,tt0107130
nm0000412	Andy Garcia	1956	\N	actor,producer,director	tt0240772,tt1981128,tt0099674,tt0349903
nm0000413	Janeane Garofalo	1964	\N	actress,writer,producer	tt0132347,tt0117979,tt0382932,tt0243655
nm0000414	Teri Garr	1944	2024	actress,miscellaneous,soundtrack	tt0084805,tt0075860,tt0072431,tt0085970
nm0000415	Jami Gertz	1965	\N	actress,producer,executive	tt0117998,tt0093437,tt0320970,tt0088128
nm0000416	Terry Gilliam	1940	\N	director,writer,actor	tt0088846,tt0071853,tt0081633,tt0085959
nm0000417	Crispin Glover	\N	\N	actor,director,writer	tt0118141,tt0310357,tt0091860,tt7972570
nm0000418	Danny Glover	1946	\N	actor,producer,director	tt0093409,tt0122151,tt0097733,tt1190080
nm0000419	Jean-Luc Godard	1930	2022	director,writer,editor	tt0057869,tt0056663,tt0058898,tt0059592
nm0000420	Valeria Golino	1965	\N	actress,writer,producer	tt0095953,tt8613070,tt0102059,tt0107144
nm0000421	Cuba Gooding Jr.	1968	\N	actor,writer,producer	tt0116695,tt0316465,tt0114069,tt0250687
nm0000422	John Goodman	1952	\N	actor,producer,soundtrack	tt1179933,tt0101410,tt1024648,tt1907668
nm0000423	Serena Grandi	1958	\N	actress,archive_footage	tt2358891,tt0089598,tt0104123,tt0089271
nm0000424	Hugh Grant	1960	\N	actor,soundtrack,archive_footage	tt0314331,tt0276751,tt0109831,tt0125439
nm0000425	Peter Greenaway	1942	\N	director,writer,editor	tt0097108,tt0446750,tt1702429,tt0092929
nm0000426	Jennifer Grey	1960	\N	actress,producer,miscellaneous	tt0092890,tt0091042,tt21823606,tt0087985
nm0000427	Pam Grier	1949	\N	actress,writer,soundtrack	tt0119396,tt0228333,tt0069897,tt0071517
nm0000428	D.W. Griffith	1875	1948	director,writer,producer	tt0004972,tt0006864,tt0010484,tt0012532
nm0000429	Melanie Griffith	1957	\N	actress,producer,archive_footage	tt0096463,tt0086984,tt0091983,tt0099165
nm0000430	Steve Guttenberg	1958	\N	actor,producer,director	tt0094137,tt0091949,tt0087928,tt0098966
nm0000431	Taylor Hackford	1944	\N	producer,director,writer	tt0350258,tt0106469,tt0109642,tt0084434
nm0000432	Gene Hackman	1930	2025	actor,producer,stunts	tt0067116,tt0265666,tt0105695,tt0069113
nm0000433	Corey Haim	1971	2010	actor,producer,soundtrack	tt0093437,tt0095519,tt0091445,tt0090021
nm0000434	Mark Hamill	\N	\N	actor,producer,director	tt0076759,tt2527336,tt0080684,tt0086190
nm0000435	Daryl Hannah	1960	\N	actress,producer,director	tt0094291,tt0378194,tt0088161,tt0083658
nm0000436	Curtis Hanson	1945	2016	director,producer,writer	tt0119488,tt0388125,tt0104389,tt0185014
nm0000437	Woody Harrelson	1961	\N	actor,producer,director	tt2356777,tt0117318,tt0110632,tt5027774
nm0000438	Ed Harris	1950	\N	actor,producer,director	tt0800308,tt0183659,tt0120382,tt0112384
nm0000439	Neil Patrick Harris	1973	\N	actor,producer,writer	tt4834206,tt0460649,tt2267998,tt0120201
nm0000440	Nina Hartley	1959	\N	actress,director,producer	tt0118749,tt0189990,tt1282224,tt0126098
nm0000441	Noah Hathaway	1971	\N	actor,miscellaneous,producer	tt0088323,tt0077215,tt0076984,tt0092115
nm0000442	Rutger Hauer	1944	2019	actor,producer,director	tt1640459,tt0083658,tt0372784,tt0091209
nm0000443	Goldie Hawn	1945	\N	actress,producer,director	tt0081375,tt0093693,tt0116313,tt0064117
nm0000444	Glenne Headly	1955	2017	actress,archive_footage	tt0095031,tt2229499,tt0099422,tt0113862
nm0000445	Dan Hedaya	1940	\N	actor,soundtrack,archive_footage	tt0114814,tt0112697,tt0166924,tt0088944
nm0000446	Mariel Hemingway	1961	\N	actress,producer,executive	tt0079522,tt0094074,tt0208874,tt0096193
nm0000447	Marilu Henner	1952	\N	actress,miscellaneous,producer	tt0102250,tt0077089,tt0105017,tt0087507
nm0000448	Lance Henriksen	1940	\N	actor,producer,miscellaneous	tt0107076,tt0090605,tt0370263,tt0103644
nm0000449	Natasha Henstridge	1974	\N	actress,producer,soundtrack	tt0114508,tt0228333,tt0120841,tt0190138
nm0000450	Philip Seymour Hoffman	1967	2014	actor,producer,director	tt1560747,tt0379725,tt0292963,tt0175880
nm0000451	Gaby Hoffmann	1982	\N	actress,director,soundtrack	tt0097351,tt0114011,tt0116242,tt0098554
nm0000452	Lauren Holly	\N	\N	actress,producer,writer	tt0109686,tt0103512,tt0106770,tt0116130
nm0000453	Ian Holm	1931	2020	actor,animation_department,miscellaneous	tt0120737,tt0167260,tt0088846,tt0120681
nm0000454	Dennis Hopper	1936	2010	actor,director,writer	tt0064276,tt0090756,tt0111257,tt0114898
nm0000455	John Hughes	1950	2009	writer,producer,director	tt0093748,tt0098554,tt0088847,tt0090305
nm0000456	Holly Hunter	1958	\N	actress,producer,miscellaneous	tt0092699,tt0107822,tt0328538,tt3606756
nm0000457	John Hurt	1940	2017	actor,soundtrack,archive_footage	tt0087803,tt0078748,tt0080678,tt1340800
nm0000458	William Hurt	1950	2022	actor,producer,archive_footage	tt0399146,tt0120738,tt0080360,tt0092699
nm0000459	Timothy Hutton	1960	\N	actor,producer,director	tt0081283,tt1103987,tt0115639,tt0343737
nm0000460	Jeremy Irons	1948	\N	actor,producer,director	tt0094964,tt0110357,tt2094766,tt0119558
nm0000461	Michael Ironside	1950	\N	actor,producer,writer	tt0120201,tt0100802,tt0081455,tt0092099
nm0000462	Kate Jackson	1948	\N	actress,producer,director	tt0085088,tt0073972,tt0084293,tt0059978
nm0000463	Famke Janssen	1964	\N	actress,writer,producer	tt0376994,tt0113189,tt0120903,tt0185371
nm0000464	Jim Jarmusch	1953	\N	director,writer,actor	tt0412019,tt1714915,tt0088184,tt5247022
nm0000465	Ron Jeremy	1953	\N	actor,director,writer	tt0144117,tt0165710,tt0124819,tt0120577
nm0000466	Jean-Pierre Jeunet	1953	\N	director,writer,producer	tt0344510,tt0211915,tt0101700,tt0112682
nm0000467	Don Johnson	1949	\N	actor,producer,director	tt0086759,tt0072730,tt1853728,tt8946378
nm0000468	Lynn-Holly Johnson	1958	\N	actress,director,archive_footage	tt0082398,tt0077716,tt0081738,tt0088395
nm0000469	James Earl Jones	1931	2024	actor,soundtrack,archive_footage	tt3748528,tt6105098,tt0097351,tt0099810
nm0000470	Jeffrey Jones	1946	\N	actor,miscellaneous,soundtrack	tt0086879,tt0091225,tt0099810,tt0091042
nm0000471	Raul Julia	1940	1994	actor,soundtrack,archive_footage	tt0111301,tt0101272,tt0106220,tt0100404
nm0000472	Boris Karloff	1887	1969	actor,soundtrack,archive_footage	tt0026138,tt0023245,tt0021884,tt0024894
nm0000473	Diane Keaton	1946	\N	actress,producer,director	tt0075686,tt0082979,tt0337741,tt0356680
nm0000474	Michael Keaton	1951	\N	actor,miscellaneous,producer	tt2562232,tt1895587,tt4276820,tt0096895
nm0000475	Patsy Kensit	1968	\N	actress,composer,soundtrack	tt0097733,tt0090585,tt0071577,tt0079268
nm0000476	Sally Kirkland	1941	\N	actress,producer,miscellaneous	tt0092569,tt0070735,tt0102138,tt3216866
nm0000477	Mia Kirshner	1975	\N	actress,archive_footage	tt0277371,tt0387877,tt0115986,tt0109759
nm0000478	Tawny Kitaen	1961	2021	actress,producer,archive_footage	tt0086927,tt0087903,tt0090327,tt2797190
nm0000479	Walter Koenig	1936	\N	actor,writer,producer	tt0060028,tt0084726,tt0092007,tt0102975
nm0000480	Elias Koteas	1961	\N	actor,producer,archive_footage	tt0120863,tt0822854,tt0100758,tt1709143
nm0000481	Alice Krige	1954	\N	actress,producer,writer	tt0117731,tt0105428,tt9086228,tt1981115
nm0000482	Sylvia Kristel	1952	2012	actress,director,soundtrack	tt0078740,tt0071464,tt0081249,tt0077497
nm0000483	Christopher Lambert	1957	\N	actor,producer,writer	tt0091203,tt0113855,tt0090095,tt0106950
nm0000484	John Landis	1950	\N	producer,director,actor	tt0080455,tt0067716,tt0086491,tt0118747
nm0000485	Fritz Lang	1890	1976	writer,director,producer	tt0057345,tt0022100,tt0017136,tt0027652
nm0000486	Heather Langenkamp	1964	\N	actress,writer,producer	tt0087800,tt0111686,tt0094490,tt13444912
nm0000487	Ang Lee	1954	\N	director,producer,writer	tt0107156,tt0190332,tt0454876,tt0808357
nm0000488	Brandon Lee	1965	1993	actor,miscellaneous,archive_footage	tt0109506,tt0105219,tt0102915,tt0099978
nm0000489	Christopher Lee	1922	2015	actor,miscellaneous,producer	tt0121765,tt0120737,tt0070917,tt0167261
nm0000490	Spike Lee	1957	\N	director,producer,writer	tt0097216,tt0104797,tt0091939,tt0102175
nm0000491	John Leguizamo	1960	\N	actor,producer,writer	tt0203009,tt0120177,tt0162677,tt0117509
nm0000492	Jennifer Jason Leigh	1962	\N	actress,producer,writer	tt3460252,tt0105414,tt0108122,tt0109642
nm0000493	Jack Lemmon	1925	2001	actor,producer,director	tt0053604,tt0104348,tt0053291,tt0078966
nm0000494	Robert Sean Leonard	1969	\N	actor,soundtrack	tt0097165,tt0412142,tt0106226,tt0107616
nm0000495	Téa Leoni	1966	\N	actress,producer,miscellaneous	tt0218967,tt0163025,tt0120647,tt0112442
nm0000496	Juliette Lewis	1973	\N	actress,director,producer	tt0101540,tt1322269,tt0110632,tt0116367
nm0000497	Jennifer Lien	1974	\N	actress,producer,script_department	tt0112178,tt0120586,tt0133189,tt0106100
nm0000498	Matthew Lillard	1970	\N	actor,producer,director	tt0267913,tt0133189,tt1033575,tt0331632
nm0000499	Bai Ling	\N	\N	actress,director,producer	tt0119994,tt1121931,tt0109506,tt0405336
nm0000500	Richard Linklater	1960	\N	producer,director,writer	tt0243017,tt2209418,tt0102943,tt0405296
nm0000501	Ray Liotta	1954	2022	actor,producer,soundtrack	tt0099685,tt0097351,tt0272207,tt0091983
nm0000502	Christopher Lloyd	1938	\N	actor,producer,soundtrack	tt0088763,tt0101272,tt0106220,tt0096438
nm0000503	Emily Lloyd	1970	\N	actress,archive_footage	tt0094331,tt0105265,tt0310952,tt0120490
nm0000504	Amy Locane	\N	\N	actress,soundtrack	tt0099329,tt0105327,tt0103491,tt0274812
nm0000505	Nia Long	1970	\N	actress,producer,director	tt0168501,tt0208003,tt2083355,tt0181984
nm0000506	Julia Louis-Dreyfus	1961	\N	actress,producer,writer	tt0098904,tt2390361,tt1759761,tt0462128
nm0000507	Rob Lowe	1964	\N	actor,producer,writer	tt0090060,tt1291580,tt0086066,tt0105793
nm0000508	Carey Lowell	1961	\N	actress,archive_footage	tt0097742,tt0108160,tt0119115,tt0098844
nm0000509	Bela Lugosi	1882	1956	actor,costume_department,miscellaneous	tt0021814,tt0024894,tt0024188,tt0031951
nm0000510	Andie MacDowell	1958	\N	actress,producer,writer	tt0107048,tt0098724,tt0109831,tt0099699
nm0000511	Shirley MacLaine	1934	\N	actress,writer,producer	tt0086425,tt0053604,tt0048750,tt0098384
nm0000512	Elle Macpherson	1964	\N	producer,actress,soundtrack	tt0119051,tt0118688,tt0108778,tt0111201
nm0000513	William H. Macy	1950	\N	actor,writer,producer	tt0116282,tt0175880,tt1586680,tt0118749
nm0000514	Michael Madsen	1957	2025	actor,producer,writer	tt3460252,tt0266697,tt0114508,tt0086567
nm0000515	Virginia Madsen	1961	\N	actress,producer,miscellaneous	tt0375063,tt0103919,tt0114194,tt0492044
nm0000516	Lee Majors	1939	\N	actor,music_department,producer	tt0071054,tt0081859,tt0096061,tt0081558
nm0000517	Terrence Malick	1943	\N	producer,writer,director	tt0077405,tt0069762,tt0478304,tt5827916
nm0000518	John Malkovich	1953	\N	actor,producer,writer	tt0120601,tt0107206,tt0887883,tt0094947
nm0000519	David Mamet	1947	\N	writer,producer,director	tt0120176,tt0093223,tt0120202,tt0104348
nm0000520	Michael Mann	1943	\N	producer,writer,director	tt0140352,tt0369339,tt0104691,tt0083190
nm0000521	Sophie Marceau	1966	\N	actress,writer,director	tt0082100,tt0143145,tt0112573,tt1194616
nm0000522	Vanessa Marcil	1968	\N	actress,archive_footage	tt0117500,tt0056758,tt0364828,tt0098749
nm0000523	Julianna Margulies	1966	\N	actress,producer,executive	tt0108757,tt0288477,tt1174730,tt0417148
nm0000524	Mary Stuart Masterson	1966	\N	actress,producer,director	tt0106387,tt0094006,tt0101921,tt0109198
nm0000525	Heather Matarazzo	1982	\N	actress,producer,director	tt0114906,tt0498353,tt0118971,tt0247638
nm0000526	Samantha Mathis	1970	\N	actress,executive,soundtrack	tt0115759,tt0144084,tt0108255,tt0100436
nm0000527	Walter Matthau	1920	2000	actor,director,producer	tt0063374,tt0074174,tt0072251,tt0060424
nm0000528	Mathilda May	1965	\N	actress,miscellaneous,writer	tt0089489,tt0119395,tt0092797,tt0102130
nm0000529	Debi Mazar	1964	\N	actress,make_up_department,producer	tt0112950,tt0290095,tt0140352,tt0106375
nm0000530	Andrew McCarthy	1962	\N	actor,director,producer	tt2372162,tt2741602,tt0091790,tt0098627
nm0000531	Frances McDormand	1957	\N	actress,producer,soundtrack	tt0116282,tt5027774,tt0181875,tt1748122
nm0000532	Malcolm McDowell	1943	\N	actor,producer,writer	tt0066921,tt0111280,tt0373883,tt0080025
nm0000533	Gates McFadden	1949	\N	actress,producer,miscellaneous	tt8806524,tt0092455,tt0091369,tt0112060
nm0000534	Kelly McGillis	1957	\N	actress,producer,soundtrack	tt0092099,tt0090329,tt0094608,tt0093467
nm0000535	Rose McGowan	1973	\N	actress,producer,director	tt1077258,tt0155776,tt0462322,tt0158552
nm0000536	Robert Duncan McNeill	1964	\N	director,producer,actor	tt8690918,tt0112178,tt0934814,tt2817246
nm0000537	Steve McQueen	1930	1980	actor,producer,stunts	tt0057115,tt0063688,tt0070511,tt0062765
nm0000538	Colm Meaney	1953	\N	actor,producer,soundtrack	tt0106145,tt0105690,tt0375912,tt0118880
nm0000539	Dina Meyer	\N	\N	actress,producer,archive_footage	tt0120201,tt0113481,tt0387564,tt0116136
nm0000540	Russ Meyer	1922	2004	director,cinematographer,writer	tt0078846,tt0059170,tt0054859,tt0059474
nm0000541	Bette Midler	1945	\N	actress,producer,writer	tt0094715,tt0116313,tt0107120,tt0091877
nm0000542	Penelope Ann Miller	1964	\N	actress,soundtrack,archive_footage	tt0106519,tt1655442,tt0099938,tt0099615
nm0000543	Sal Mineo	1939	1976	actor,writer,music_department	tt0053804,tt0048545,tt0067065,tt0049261
nm0000544	Carmen Miranda	1909	1955	actress,miscellaneous,soundtrack	tt0036881,tt0035916,tt0037295,tt0039277
nm0000545	Helen Mirren	1945	\N	actress,producer,director	tt0436697,tt1245526,tt0280707,tt0975645
nm0000546	Matthew Modine	1959	\N	actor,producer,director	tt0093058,tt0112760,tt1345836,tt0086969
nm0000547	Alfred Molina	1953	\N	actor,producer,director	tt0316654,tt0120679,tt0118749,tt0175880
nm0000548	Elizabeth Montgomery	1933	1995	actress,miscellaneous,soundtrack	tt0057733,tt0073273,tt0071868,tt0076981
nm0000549	Roger Moore	1927	2017	actor,miscellaneous,producer	tt0079574,tt0076752,tt0082398,tt0086034
nm0000550	Kate Mulgrew	1955	\N	actress,producer,writer	tt0112178,tt2372162,tt0253754,tt0203946
nm0000551	Dermot Mulroney	1963	\N	actor,music_department,producer	tt0119738,tt1322269,tt0096487,tt0372532
nm0000552	Eddie Murphy	1961	\N	actor,writer,producer	tt0097481,tt0117218,tt0092644,tt0443489
nm0000553	Liam Neeson	1952	\N	actor,producer,soundtrack	tt0362269,tt0108052,tt1601913,tt0429493
nm0000554	Sam Neill	1947	\N	actor,producer,director	tt0107290,tt4698684,tt0104850,tt0163025
nm0000555	Judd Nelson	1959	\N	actor,writer,producer	tt0088847,tt0090060,tt0092106,tt1300851
nm0000556	Olivia Newton-John	1948	2022	music_artist,actress,music_department	tt0077631,tt0081777,tt0086494,tt0119094
nm0000557	Brigitte Nielsen	1963	\N	actress,producer,writer	tt0089893,tt0092644,tt5073058
nm0000558	Leslie Nielsen	1926	2010	actor,producer,writer	tt0080339,tt0102510,tt0095705,tt0120901
nm0000559	Leonard Nimoy	1931	2015	actor,producer,director	tt0092007,tt0102975,tt0088170,tt0796366
nm0000560	Nick Nolte	1941	\N	actor,producer,soundtrack	tt1291584,tt0118564,tt0102713,tt0120863
nm0000561	Peter North	1957	\N	actor,director,producer	tt0093774,tt0183057,tt0199096,tt0160323
nm0000562	Jeremy Northam	1961	\N	actor,soundtrack,archive_footage	tt0280707,tt0284978,tt0116191,tt0162360
nm0000563	Chris O'Donnell	1970	\N	actor,producer,director	tt0118688,tt0105323,tt0108333,tt0190865
nm0000564	Peter O'Toole	1932	2013	actor,producer,director	tt0056172,tt0063227,tt0332452,tt0081568
nm0000565	Lena Olin	1955	\N	actress,archive_footage	tt0096332,tt0285333,tt0241303,tt0107983
nm0000566	Julia Ormond	1965	\N	actress,producer,archive_footage	tt0114319,tt0421715,tt1655420,tt0110322
nm0000567	George Orwell	1903	1950	writer,director,producer	tt0087803,tt35854107,tt0048918,tt1785318
nm0000568	Frank Oz	1944	\N	actor,miscellaneous,director	tt0074028,tt0080684,tt0063951,tt0086190
nm0000569	Gwyneth Paltrow	1972	\N	actress,producer,director	tt0138097,tt0120148,tt0116191,tt1300854
nm0000570	Alan Parker	1944	2020	director,writer,producer	tt0116250,tt0095647,tt0077928,tt0101605
nm0000571	Mary-Louise Parker	1964	\N	actress,miscellaneous,soundtrack	tt1245526,tt0439100,tt0318997,tt0790736
nm0000572	Sarah Jessica Parker	1965	\N	actress,producer,miscellaneous	tt0159206,tt1261945,tt1000774,tt0356680
nm0000573	Dolly Parton	1946	\N	music_artist,music_department,producer	tt0162822,tt0092342,tt0073984,tt0080319
nm0000574	Jason Patric	1966	\N	actor,producer,archive_footage	tt0272207,tt0120179,tt0093437,tt0480255
nm0000575	Alexandra Paul	1963	\N	actress,producer,writer	tt0096542,tt0085333,tt0092925,tt0106689
nm0000576	Sean Penn	1960	\N	actor,producer,director	tt0327056,tt0315733,tt1013753,tt0112818
nm0000577	George Peppard	1928	1994	actor,assistant_director,director	tt0054698,tt0060177,tt0057917,tt0056085
nm0000578	Anthony Perkins	1932	1992	actor,director,writer	tt0054215,tt0086154,tt0091799,tt0065528
nm0000579	Ron Perlman	1950	\N	actor,producer,director	tt3973768,tt0411477,tt0167190,tt0092319
nm0000580	Luke Perry	1966	2019	actor,producer,director	tt0098749,tt0119116,tt0103893,tt7131622
nm0000581	Joseph L. Mankiewicz	1909	1993	writer,producer,director	tt0042192,tt0041587,tt0056937,tt0069281
nm0000582	Joe Pesci	1943	\N	actor,producer,soundtrack	tt0099685,tt0081398,tt1302006,tt0104952
nm0000583	Wolfgang Petersen	1941	2022	director,writer,producer	tt0082096,tt0089092,tt0088323,tt0114069
nm0000584	Amanda Peterson	1971	2015	actress,archive_footage	tt0092718,tt0089114,tt0083564,tt0092488
nm0000585	Robert Picardo	1953	\N	actor,writer,director	tt0112178,tt0094433,tt0117731,tt0093260
nm0000586	Jada Pinkett Smith	1971	\N	producer,actress,writer	tt0242653,tt0114608,tt0120082,tt0369339
nm0000587	Donald Pleasence	1919	1995	actor,writer,director	tt0077651,tt0082495,tt0057115,tt0062512
nm0000588	Martha Plimpton	1970	\N	actress,writer,producer	tt0089218,tt0091557,tt0115639,tt0096018
nm0000589	Eve Plumb	1958	\N	actress,producer,soundtrack	tt9278110,tt1595859,tt5037914,tt2359024
nm0000590	Edgar Allan Poe	1809	1849	writer,miscellaneous,soundtrack	tt1772264,tt21321726,tt0024894,tt8381734
nm0000591	Roman Polanski	1933	\N	director,actor,writer	tt0071315,tt0074811,tt1139328,tt0063522
nm0000592	Pete Postlethwaite	1946	2011	actor,producer,archive_footage	tt0114814,tt0840361,tt0119567,tt1375666
nm0000593	Kelly Preston	1962	2020	actress,soundtrack,archive_footage	tt0185183,tt0405325,tt0116695,tt0312528
nm0000594	Jason Priestley	1969	\N	actor,producer,director	tt0098749,tt1558182,tt2334593,tt5722298
nm0000595	Victoria Principal	1950	\N	actress,producer,executive	tt0075393,tt0077000,tt0068853,tt0071455
nm0000596	Jonathan Pryce	1947	\N	actor,producer,soundtrack	tt8404614,tt0088846,tt3750872,tt0120347
nm0000597	Bill Pullman	1953	\N	actor,director,producer	tt0116629,tt1628841,tt0094012,tt0116922
nm0000598	Dennis Quaid	1954	\N	actor,producer,music_department	tt0297884,tt0319262,tt0186151,tt0093260
nm0000599	Kathleen Quinlan	1954	\N	actress,producer,director	tt0112384,tt0118771,tt0101761,tt0120633
nm0000600	Sam Raimi	1959	\N	producer,writer,actor	tt0145487,tt0083907,tt0106308,tt0099365
nm0000601	Harold Ramis	1944	2014	writer,actor,producer	tt0087332,tt0107048,tt0083131,tt0478311
nm0000602	Robert Redford	1936	2025	producer,actor,director	tt0087781,tt0081283,tt0064115,tt0074119
nm0000603	Vanessa Redgrave	1937	\N	actress,producer,director	tt0783233,tt1372686,tt0104454,tt0892318
nm0000604	John C. Reilly	1965	\N	actor,writer,producer	tt0299658,tt0841046,tt2015381,tt0118749
nm0000605	Brad Renfro	1982	2008	actor,writer,producer	tt0109446,tt0118636,tt0112757,tt0117665
nm0000606	Jean Reno	1948	\N	actor,archive_footage,archive_sound	tt0110413,tt0095250,tt0122690,tt0383216
nm0000607	Paul Reubens	1952	2023	actor,writer,director	tt0090500,tt0089791,tt0094744,tt0251640
nm0000608	Burt Reynolds	1936	2018	producer,actor,director	tt0118749,tt0076729,tt0082136,tt0117765
nm0000609	Ving Rhames	1959	\N	actor,producer,writer	tt0110912,tt0120755,tt0163988,tt0317919
nm0000610	Giovanni Ribisi	1974	\N	actor,producer,cinematographer	tt0181984,tt0346156,tt0499549,tt0246677
nm0000611	Ariana Richards	1979	\N	actress,archive_footage	tt0107290,tt0100814,tt0119567,tt0259685
nm0000612	Denise Richards	1971	\N	actress,producer,executive	tt0143145,tt0120201,tt0120890,tt0314331
nm0000613	Joely Richardson	1965	\N	actress,producer,soundtrack	tt0361217,tt0187393,tt0119081,tt0111205
nm0000614	Alan Rickman	1946	2016	actor,writer,director	tt0095016,tt0102798,tt0102744,tt0177789
nm0000615	John Ritter	1948	2003	actor,producer,writer	tt0117666,tt0075596,tt0100419,tt0307987
nm0000616	Eric Roberts	1956	\N	actor,producer,soundtrack	tt0089941,tt1791528,tt0468569,tt1320253
nm0000617	Tanya Roberts	1949	2021	actress,producer,archive_footage	tt0090264,tt0083630,tt0088103,tt0165598
nm0000618	Isabella Rossellini	1952	\N	actress,director,writer	tt0090756,tt0104070,tt20215234,tt0106881
nm0000619	Tim Roth	1961	\N	actor,producer,director	tt0114287,tt3460252,tt0110912,tt0133152
nm0000620	Mickey Rourke	1952	\N	actor,writer,producer	tt0401792,tt1125849,tt0092563,tt1228705
nm0000621	Kurt Russell	1951	\N	actor,producer,writer	tt0082340,tt3460252,tt0084787,tt0116225
nm0000622	Theresa Russell	1957	\N	actress,miscellaneous,soundtrack	tt0413300,tt0120890,tt0080408,tt0098093
nm0000623	Rene Russo	1954	\N	actress,producer,archive_footage	tt2872718,tt0155267,tt0117438,tt0113161
nm0000624	Laura San Giacomo	1961	\N	actress,soundtrack,archive_footage	tt0098724,tt0100405,tt0102744,tt0118364
nm0000625	Fred Savage	1976	\N	actor,director,producer	tt0094582,tt0093779,tt0090768,tt4481322
nm0000626	John Sayles	1950	\N	writer,actor,director	tt0116905,tt0095082,tt0087004,tt0119657
nm0000627	Greta Scacchi	1960	\N	actress,archive_footage	tt0105151,tt0116191,tt0100404,tt0102900
nm0000628	Johnathon Schaech	1969	\N	actor,producer,writer	tt27589772,tt0926129,tt0159276,tt0117887
nm0000629	Claudia Schiffer	1970	\N	actress,producer,archive_footage	tt0314331,tt0196229,tt2802144,tt0110989
nm0000630	Liev Schreiber	1967	\N	actor,producer,miscellaneous	tt1895587,tt0458525,tt0368008,tt0404030
nm0000631	Ridley Scott	1937	\N	producer,director,production_designer	tt3659388,tt0083658,tt0103074,tt0172495
nm0000632	Jerry Seinfeld	1954	\N	producer,writer,actor	tt0098904,tt0389790,tt14914430,tt2314952
nm0000633	Tom Selleck	1945	\N	actor,soundtrack,producer	tt1595859,tt0080240,tt0119360,tt0102744
nm0000634	Peter Sellers	1925	1980	actor,writer,director	tt0078841,tt0057012,tt0057413,tt0072081
nm0000635	Yahoo Serious	1953	\N	director,actor,writer	tt0096486,tt0107930,tt0156807,tt6893696
nm0000636	William Shakespeare	1564	1616	writer,miscellaneous,music_department	tt10095582,tt20711868,tt8632012,tt14297038
nm0000637	Tupac Shakur	1971	1996	music_artist,actor,composer	tt0104573,tt0107840,tt0118900,tt0109035
nm0000638	William Shatner	1931	\N	actor,producer,writer	tt0098382,tt0084726,tt0092007,tt0088170
nm0000639	Ally Sheedy	1962	\N	actress,producer,soundtrack	tt0086567,tt0088847,tt0091949,tt0139362
nm0000640	Martin Sheen	1940	\N	actor,producer,director	tt0407887,tt0069762,tt1441912,tt0078788
nm0000641	Gary Sinise	1955	\N	actor,producer,director	tt0109830,tt0105046,tt0112384,tt0395843
nm0000642	Marina Sirtis	1955	\N	actress,producer,soundtrack	tt0092455,tt0111280,tt0375679,tt0117731
nm0000643	Tom Skerritt	1933	\N	actor,director,producer	tt0078748,tt0118884,tt0092099,tt0098384
nm0000644	Helen Slater	1963	\N	actress,writer,producer	tt0088206,tt0091877,tt0101587,tt0089470
nm0000645	Anna Nicole Smith	1967	2007	actress,miscellaneous,producer	tt0110622,tt0377471,tt0758754,tt0110074
nm0000646	Jaclyn Smith	1945	\N	actress,producer,soundtrack	tt0065374,tt0073972,tt0094791,tt5033998
nm0000647	Alan Smithee	\N	\N	director,actor,producer	tt27881541,tt0118577,tt0095342,tt28795838
nm0000648	Wesley Snipes	1962	\N	actor,producer,stunts	tt0120611,tt0102526,tt0106697,tt0105812
nm0000649	Paul Sorvino	1939	2022	actor,director,producer	tt0102803,tt0963194,tt0099685,tt0113987
nm0000650	Talisa Soto	1967	\N	actress,archive_footage	tt0119707,tt0113855,tt0097742,tt0117723
nm0000651	Sissy Spacek	1949	\N	actress,art_department,director	tt0247425,tt0080549,tt0074285,tt1454029
nm0000652	James Spader	1960	\N	actor,producer,soundtrack	tt2741602,tt0402711,tt0098724,tt2395427
nm0000653	Brent Spiner	1949	\N	actor,director,writer	tt0117731,tt1628841,tt0253754,tt0111280
nm0000654	Terence Stamp	1938	2025	actor,director,writer	tt0165854,tt0109045,tt1385826,tt0081573
nm0000655	Eric Stoltz	\N	\N	actor,producer,director	tt0110912,tt0089560,tt0289879,tt0094006
nm0000656	Madeleine Stowe	1958	\N	actress,director,writer	tt0114746,tt0144214,tt0108122,tt0104691
nm0000657	David Strathairn	1949	\N	actor,producer,miscellaneous	tt0433383,tt0443272,tt0831387,tt0119488
nm0000658	Meryl Streep	1949	\N	actress,writer,producer	tt0089755,tt1322269,tt0084707,tt0458352
nm0000659	Barbra Streisand	1942	\N	music_artist,actress,producer	tt0062994,tt0086619,tt0117057,tt0070903
nm0000660	Tami Stronach	1972	\N	actress,producer,archive_footage	tt0088323,tt12623434,tt3222644,tt6557704
nm0000661	Donald Sutherland	1935	2024	actor,producer,writer	tt1951264,tt0414387,tt0067309,tt0066026
nm0000662	Kiefer Sutherland	1966	\N	actor,producer,miscellaneous	tt0285331,tt0183649,tt0790686,tt1527186
nm0000663	Dominique Swain	1980	\N	actress,producer,assistant_director	tt0119558,tt0119094,tt0426883,tt0203975
nm0000664	Patrick Swayze	1952	2009	actor,producer,miscellaneous	tt0092890,tt0099653,tt0102685,tt0098206
nm0000665	D.B. Sweeney	\N	\N	actor,writer,director	tt0104040,tt0106912,tt0463963,tt10128846
nm0000666	Lili Taylor	1967	\N	actress,writer,producer	tt3488298,tt1457767,tt0116594
nm0000667	David Thewlis	1963	\N	actor,writer,director	tt0107653,tt1201607,tt2980516,tt0451279
nm0000668	Emma Thompson	1959	\N	actress,writer,producer	tt0114388,tt2140373,tt0107943,tt0104454
nm0000669	Fred Thompson	1942	2015	actor,archive_footage	tt0099810,tt0093640,tt1922777,tt0109190
nm0000670	Lea Thompson	1961	\N	actress,director,producer	tt0088763,tt5039578,tt1727381,tt1758772
nm0000671	Billy Bob Thornton	1955	\N	actor,writer,director	tt0117666,tt0120324,tt0243133,tt0219965
nm0000672	Meg Tilly	1960	\N	actress,writer,archive_footage	tt0085244,tt0088683,tt0086154,tt0106452
nm0000673	Marisa Tomei	1964	\N	actress,producer,soundtrack	tt0104952,tt1125849,tt0247425,tt0207201
nm0000674	Tamlyn Tomita	1966	\N	actress,writer,producer	tt0319262,tt0091326,tt0406759,tt0411951
nm0000675	Jeanne Tripplehorn	1963	\N	actress,soundtrack,archive_footage	tt0103772,tt0114898,tt0106918,tt0120148
nm0000676	Chris Tucker	1971	\N	actor,writer,producer	tt0120812,tt0266915,tt1045658,tt0119695
nm0000677	Robin Tunney	1972	\N	actress,soundtrack,archive_footage	tt0115963,tt0190865,tt0112950,tt0146675
nm0000678	Kathleen Turner	1954	\N	actress,producer,director	tt0088011,tt0091738,tt0082089,tt0111127
nm0000679	Deborah Kara Unger	1966	\N	actress,producer,miscellaneous	tt0119174,tt1441912,tt0384537,tt0328538
nm0000680	Casper Van Dien	1968	\N	actor,producer,director	tt0120201,tt13443470,tt0162661,tt0120856
nm0000681	Vince Vaughn	1970	\N	producer,actor,writer	tt0452594,tt1078940,tt0396269,tt5657856
nm0000682	Paul Verhoeven	1938	\N	director,producer,writer	tt3716530,tt0389557,tt0093870,tt0120201
nm0000683	Gore Vidal	1925	2012	writer,actor,archive_footage	tt0119177,tt0111732,tt0080491,tt0041061
nm0000684	Nana Visitor	1957	\N	actress,soundtrack,archive_footage	tt0106145,tt0758746,tt2637276,tt1334102
nm0000685	Jon Voight	1938	\N	actor,producer,writer	tt0064665,tt0118615,tt0068473,tt0089941
nm0000686	Christopher Walken	1943	\N	actor,producer,miscellaneous	tt0264464,tt0077416,tt0114194,tt0427327
nm0000687	J.T. Walsh	1943	1998	actor,archive_footage,archive_sound	tt0118771,tt0117666,tt0107665,tt0104257
nm0000688	Sela Ward	1956	\N	actress,producer,archive_footage	tt1628841,tt2267998,tt0106977,tt0338096
nm0000689	Julie Warner	1965	\N	actress,director,producer	tt0114694,tt0101745,tt0430634,tt0099582
nm0000690	Lesley Ann Warren	1946	\N	actress,producer,soundtrack	tt0084865,tt0410975,tt0088930,tt0057950
nm0000691	John Waters	1946	\N	actor,writer,director	tt0126604,tt0069089,tt0387575,tt0095270
nm0000692	Teri Weigel	1962	\N	actress,archive_footage	tt0100403,tt0098257,tt0096889,tt0100114
nm0000693	Peter Weller	1947	\N	actor,director,writer	tt0093870,tt0102511,tt0100502,tt0097737
nm0000694	Wim Wenders	1945	\N	director,producer,writer	tt0093191,tt27503384,tt0087884,tt0101458
nm0004123	Dave Kluft	1968	\N	producer	tt0243741,tt0199372
nm0000695	Joanne Whalley	1961	\N	actress,archive_footage	tt0120483,tt0096446,tt0090521,tt0098260
nm0000696	Wil Wheaton	1972	\N	actor,writer,producer	tt0092005,tt0103112,tt0084649,tt0092455
nm0000697	Billy Wilder	1906	2002	writer,director,producer	tt0053604,tt0053291,tt0047437,tt0043014
nm0000698	Gene Wilder	1933	2016	actor,writer,director	tt0067992,tt0072431,tt0063462,tt0098282
nm0000699	Michael Wincott	1958	\N	actor,archive_footage	tt0102798,tt0109506,tt0114558,tt0108333
nm0000700	Debra Winger	1955	\N	actress,producer,miscellaneous	tt0086425,tt0084434,tt1084950,tt0108101
nm0000701	Kate Winslet	1975	\N	actress,producer,director	tt0338013,tt0120338,tt0959337,tt0976051
nm0000702	Reese Witherspoon	1976	\N	producer,actress,executive	tt2305051,tt0358273,tt0250494,tt0126886
nm0000703	BD Wong	1960	\N	actor,director,soundtrack	tt0107290,tt4158110,tt0369610,tt0120762
nm0000704	Elijah Wood	1981	\N	actor,producer,miscellaneous	tt0120737,tt0167260,tt0167261,tt0338013
nm0000705	Robin Wright	1966	\N	actress,producer,director	tt0109830,tt0217869,tt0442933,tt0093779
nm0000706	Michelle Yeoh	1962	\N	actress,producer,writer	tt6710474,tt0190332,tt1262426,tt1302011
nm0000707	Sean Young	\N	\N	actress,miscellaneous,director	tt1856101,tt0087182,tt0109040,tt0083658
nm0000708	Billy Zane	1966	\N	actor,producer,director	tt0120338,tt0117331,tt0097162,tt0096874
nm0000709	Robert Zemeckis	1952	\N	producer,writer,director	tt0088763,tt0109830,tt0118884,tt1907668
nm0000710	David Raksin	1912	2004	music_department,composer,miscellaneous	tt0458339,tt0027977,tt0037008,tt0119668
nm0000711	Rick Baker	1950	\N	make_up_department,actor,special_effects	tt0133152,tt0119654,tt0780653,tt0170016
nm0000712	Steve Cohen	\N	\N	director,producer,writer	tt0089218,tt0098844,tt0143213,tt0363685
nm0000713	Joel Oliansky	1935	2002	writer,director,actor	tt0205655,tt0096108,tt0081900,tt0069599
nm0000714	Willie Aames	1960	\N	actor,writer,director	tt0075500,tt0086681,tt0084945,tt21193618
nm0000715	Caroline Aaron	1952	\N	actress,producer,miscellaneous	tt1232829,tt0099487,tt0108160,tt0118954
nm0000716	Paula Abdul	1962	\N	actress,miscellaneous,producer	tt0358082,tt0093894,tt3513500,tt0169547
nm0000717	Kareem Abdul-Jabbar	1947	\N	actor,producer,writer	tt0080339,tt11564570,tt0089155,tt0113097
nm0000718	Ian Abercrombie	1934	2012	actor,miscellaneous,archive_footage	tt0106308,tt0106220,tt0455499,tt1185834
nm0000719	F. Murray Abraham	1939	\N	actor,soundtrack,archive_footage	tt0086879,tt2278388,tt0113819,tt0091605
nm0000720	Jim Abrahams	1944	2024	writer,producer,director	tt0080339,tt0088286,tt0083466,tt0102059
nm0000721	Victoria Abril	1959	\N	actress,soundtrack,archive_footage	tt0101026,tt0103030,tt0284491,tt0113918
nm0000722	Joss Ackland	1928	2023	actor,soundtrack,archive_footage	tt0099810,tt0097733,tt0101452,tt0078480
nm0000723	Deborah Adair	1952	\N	actress,archive_footage	tt0058796,tt0099701,tt0081856,tt0069658
nm0000724	Brooke Adams	1949	\N	actress,producer,writer	tt0077745,tt0085407,tt0077405,tt0103157
nm0000725	Joey Lauren Adams	1968	\N	actress,director,writer	tt0118842,tt0106677,tt0142342,tt2996684
nm0000726	Maud Adams	1945	\N	actress,director,archive_footage	tt0086034,tt0071807,tt0073631,tt0083178
nm0000727	Percy Adlon	1935	2024	director,writer,producer	tt0095801,tt0090377,tt0082225,tt0108636
nm0000728	Mario Adorf	1930	\N	actor,writer,director	tt0078875,tt0065143,tt0103432,tt0067429
nm0000729	Casey Affleck	1975	\N	actor,director,writer	tt4034228,tt6063090,tt6265828,tt0443680
nm0000730	John Agar	1921	2002	actor,music_department,archive_footage	tt0040369,tt0100260,tt0049516,tt0041841
nm0000731	Brian Aherne	1902	1986	actor,soundtrack,archive_footage	tt0030442,tt0036203,tt0032686,tt0040804
nm0000732	Danny Aiello	1933	2019	actor,producer,writer	tt0097216,tt0110413,tt0093565,tt0102070
nm0000733	Anouk Aimée	1932	2024	actress,soundtrack,archive_footage	tt0056801,tt0061138,tt0055093,tt0053779
nm0000734	Eddie Albert	1906	2005	actor,producer,writer	tt0046250,tt0058808,tt0068687,tt0056197
nm0000735	Brian Aldiss	1925	2017	writer,actor	tt0212720,tt0099612,tt31724576,tt0432260
nm0000736	Robert Aldrich	1918	1983	director,assistant_director,producer	tt0070030,tt0071771,tt0056687,tt0061578
nm0000737	Jane Alexander	1939	\N	actress,producer,miscellaneous	tt0079417,tt0124315,tt0074119,tt0086429
nm0000738	Muhammad Ali	1942	2016	actor,writer,producer	tt0076111,tt0056406,tt0118147,tt0077003
nm0000739	Debbie Allen	1950	\N	producer,actress,director	tt0083412,tt0413573,tt0118607,tt0080716
nm0000740	Irwin Allen	1916	1991	writer,producer,director	tt0072308,tt0057798,tt0044009,tt0120738
nm0000741	Tim Allen	1953	\N	actor,producer,miscellaneous	tt0114709,tt0101120,tt0177789,tt0452681
nm0000742	June Allyson	1917	2006	actress,soundtrack,archive_footage	tt0041594,tt0041928,tt0046963,tt0042883
nm0000743	Néstor Almendros	1930	1992	cinematographer,director,camera_department	tt0077405,tt0084707,tt0080453,tt0079417
nm0000744	Maria Conchita Alonso	1955	\N	actress,producer,composer	tt0093894,tt0100403,tt0107151,tt1186370
nm0000745	Carol Alt	1960	\N	actress,producer,miscellaneous	tt0119951,tt12598744,tt0112829,tt1859650
nm0000746	Trini Alvarado	1967	\N	actress,soundtrack	tt0110367,tt0116365,tt0100691,tt11324406
nm0000747	Don Ameche	1908	1993	actor,director,soundtrack	tt0088933,tt0035979,tt0086465,tt0107131
nm0000748	Leon Ames	1902	1993	actor,soundtrack,archive_footage	tt0091738,tt0037059,tt0066473,tt0043880
nm0000749	Mädchen Amick	1970	\N	actress,director,producer	tt0105428,tt0109665,tt0098936,tt0105665
nm0000750	Jon Amiel	1948	\N	director,producer,writer	tt0112722,tt0298814,tt0137494,tt0100822
nm0000751	Suzy Amis	1962	\N	actress,producer,soundtrack	tt0114814,tt0109303,tt0120338,tt0106350
nm0000752	Judith Anderson	1897	1992	actress,soundtrack,archive_footage	tt0032976,tt0037008,tt0088170,tt0051459
nm0000753	Juliet Anderson	1938	2010	actress,director,producer	tt0183031,tt0082707,tt0184233,tt0265023
nm0000754	Kevin Anderson	1960	\N	actor,soundtrack,stunts	tt0093683,tt0102945,tt0118411,tt0413895
nm0000755	Lindsay Anderson	1923	1994	director,actor,writer	tt0063850,tt0082158,tt0083694,tt0057578
nm0000756	Loni Anderson	1945	2025	actress,soundtrack,archive_footage	tt0077097,tt0120770,tt0086379,tt0096787
nm0007375	Petri Aalto	\N	\N	actor	tt0138903,tt0104588,tt1281963,tt0099931
nm0000757	Melissa Sue Anderson	1962	\N	actress,producer,soundtrack	tt0082498,tt0071007,tt0463850,tt0202179
nm0000758	Melody Anderson	1955	\N	actress,manager,archive_footage	tt0080745,tt0082242,tt0098369,tt0076984
nm0000759	Paul Thomas Anderson	1970	\N	director,producer,writer	tt0272338,tt0469494,tt1791528,tt0118749
nm0000760	Richard Dean Anderson	1950	\N	actor,producer,executive	tt0118480,tt0088559,tt0374455,tt0929629
nm0000761	Bibi Andersson	1935	2019	actress,soundtrack,archive_footage	tt0060827,tt0050986,tt0050976,tt0837106
nm0000762	Anthony Andrews	1948	\N	actor,producer,soundtrack	tt1504320,tt0084637,tt0083390,tt0088322
nm0000763	Dana Andrews	1909	1992	actor,soundtrack,archive_footage	tt0037008,tt0036868,tt0036244,tt0038116
nm0000764	André René Roussimoff	1946	1993	actor,archive_footage,archive_sound	tt0093779,tt0250824,tt0071054,tt1529215
nm0000765	Pier Angeli	1932	1971	actress,soundtrack,archive_footage	tt0058947,tt0043743,tt0056504,tt0049778
nm0000766	Theodoros Angelopoulos	1935	2012	director,writer,producer	tt0096288,tt0156794,tt0081148,tt0114863
nm0000767	Jean-Hugues Anglade	1955	\N	actor,director,writer	tt0090563,tt0100263,tt0110963,tt0090095
nm0000768	Francesca Annis	1945	\N	actress,archive_footage	tt0087182,tt0085811,tt0077042,tt0375920
nm0000769	Susan Anspach	1942	2018	actress,soundtrack,archive_footage	tt0065724,tt0069097,tt0077233,tt0069808
nm0000770	David Anspaugh	1946	\N	producer,director	tt0091217,tt0108002,tt0081873,tt4196848
nm0000771	Lysette Anthony	1963	\N	actress,producer,archive_footage	tt0112896,tt0085811,tt0104466,tt0112004
nm0000772	Susan Anton	1950	\N	actress,producer,executive	tt0087032,tt0079225,tt0078694,tt0096542
nm0000773	Laura Antonelli	1941	2015	actress,archive_footage	tt0082883,tt0070358,tt0074686,tt0071844
nm0000774	Michelangelo Antonioni	1912	2007	writer,director,editor	tt0053619,tt0060176,tt0073580,tt0047821
nm0000775	Christina Applegate	1971	\N	actress,producer,soundtrack	tt0101757,tt0092400,tt4651520,tt0253867
nm0000776	Michael Apted	1941	2021	director,producer,miscellaneous	tt0454776,tt0095243,tt0384766,tt0157583
nm0000777	Gregg Araki	1959	\N	writer,director,producer	tt0370986,tt2238050,tt1523483,tt0119809
nm0000778	Alfonso Arau	1932	\N	actor,director,writer	tt0092086,tt0103994,tt2380307,tt0114887
nm0000779	Roscoe 'Fatty' Arbuckle	1887	1933	actor,director,writer	tt0007761,tt0012382,tt0007819,tt0009123
nm0000780	Denys Arcand	1941	\N	writer,director,actor	tt0338135,tt0097635,tt0090985,tt7231342
nm0000781	Eve Arden	1908	1990	actress,soundtrack,archive_footage	tt0044287,tt0037913,tt0077631,tt0052561
nm0000782	Asia Argento	1975	\N	actress,director,writer	tt0418819,tt0295701,tt0804507,tt0368774
nm0000783	Dario Argento	1940	\N	writer,producer,director	tt0065143,tt0073582,tt0084777,tt0087909
nm0000784	Pedro Armendáriz	1912	1963	actor,producer,archive_footage	tt0057076,tt0040369,tt0040064,tt0037981
nm0000785	Alison Armitage	1965	\N	actress,archive_footage	tt0116695,tt0180339,tt0105930,tt0155425
nm0000786	George Armitage	1942	2025	producer,writer,director	tt0119229,tt0065760,tt0075393,tt0100143
nm0000787	Bess Armstrong	1953	\N	actress,archive_footage	tt0085750,tt0082405,tt0085678,tt0108872
nm0000788	Gillian Armstrong	1950	\N	director,producer,writer	tt0079596,tt0117206,tt0110367,tt0245046
nm0000789	Desi Arnaz	1917	1986	producer,actor,production_manager	tt0043208,tt0047191,tt0049225,tt1243974
nm0000790	James Arness	1923	2011	actor,producer,miscellaneous	tt0047736,tt0047573,tt0044121,tt0092527
nm0000791	Jack Arnold	1912	1992	director,producer,writer	tt0046876,tt0050539,tt0045920,tt2402723
nm0000792	Tom Arnold	1959	\N	actor,producer,writer	tt0111503,tt0117768,tt0242445,tt0306685
nm0000793	Alexis Arquette	1969	2016	actress,art_department,producer	tt0110912,tt0144120,tt0160862,tt0105046
nm0000794	Lewis Arquette	1935	2001	actor,writer,producer	tt0185431,tt0118111,tt0098439,tt0078966
nm0000795	Jean Arthur	1900	1991	actress,soundtrack,archive_footage	tt0031679,tt0040367,tt0036172,tt0030993
nm0000796	Dana Ashbrook	1967	\N	actor,writer,archive_footage	tt0098936,tt0105665,tt5334704,tt0095990
nm0000797	Hal Ashby	1929	1988	director,editorial_department,actor	tt0061811,tt0067185,tt0078841,tt0070290
nm0000798	Linden Ashby	1960	\N	actor,director,archive_footage	tt0113855,tt0111756,tt0432021,tt1567432
nm0000799	Edward Asner	1929	2021	actor,producer,miscellaneous	tt1049413,tt0065314,tt0319343,tt0061619
nm0000800	Armand Assante	1949	\N	actor,producer,music_department	tt0116441,tt0765429,tt0104802,tt0113492
nm0000801	Olivier Assayas	1955	\N	writer,director,producer	tt4714782,tt2452254,tt0401711,tt1321865
nm0000802	Mary Astor	1906	1987	actress,soundtrack,archive_footage	tt0033870,tt0033677,tt0037059,tt0034428
nm0000803	Christopher Atkins	1961	\N	actor,writer,producer	tt0080453,tt0084504,tt0086011,tt0493406
nm0000804	Stéphane Audran	1932	2018	actress,soundtrack,archive_footage	tt0068361,tt0092603,tt0064106,tt0062728
nm0000805	Claudine Auger	1941	2019	actress,soundtrack,archive_footage	tt0059800,tt0080718,tt0092995,tt1369743
nm0000806	Bille August	1948	\N	director,writer,cinematographer	tt0107151,tt0093713,tt0438859,tt0119683
nm0000807	Jane Austen	1775	1817	writer,archive_footage	tt0114388,tt0116191,tt0414387,tt13456318
nm0000808	Paul Auster	1947	2024	writer,director,producer	tt0114478,tt0125879,tt3350042,tt0479074
nm0000809	Daniel Auteuil	1950	\N	actor,director,writer	tt0387898,tt0091288,tt0144201,tt1473063
nm0000810	Gene Autry	1907	1998	music_artist,actor,producer	tt0042110,tt0034106,tt0039909,tt0027361
nm0000811	Frankie Avalon	1940	\N	actor,producer,soundtrack	tt0077631,tt0059726,tt0058953,tt0053580
nm0000812	Roger Avary	1965	\N	producer,writer,director	tt0110912,tt0105236,tt0110265,tt0442933
nm0000813	Tex Avery	1908	1980	director,actor,writer	tt0027779,tt0040960,tt0033260,tt0032243
nm0000814	John G. Avildsen	1935	2017	director,editor,producer	tt0075148,tt0100507,tt0097647,tt0087538
nm0000815	Mili Avital	1972	\N	actress,director,producer	tt0111282,tt0112817,tt0181199,tt0120723
nm0000816	Jon Avnet	1949	\N	director,producer,writer	tt0101921,tt0118055,tt0086200,tt0947798
nm0000817	Lew Ayres	1908	1996	actor,director,producer	tt0020629,tt0030241,tt0040495,tt0069768
nm0007376	Teemu Aalto	1986	\N	actor,cinematographer,producer	tt0279161
nm0000818	Shabana Azmi	1950	\N	actress,music_department,producer	tt14993250,tt0083578,tt0116308,tt2792284
nm0000819	Barbara Bach	1946	\N	actress,soundtrack,archive_footage	tt0076752,tt0080058,tt0081695,tt0064750
nm0000820	Burt Bacharach	1928	2023	composer,music_department,actor	tt0064115,tt0082031,tt0119738,tt0145660
nm0000821	Amitabh Bachchan	1942	\N	actor,producer,writer	tt0375611,tt0213890,tt5571734,tt0337578
nm0000822	Jim Backus	1913	1989	actor,writer,soundtrack	tt0048545,tt0057193,tt0076538,tt0043643
nm0000823	Angelo Badalamenti	1937	2022	composer,music_department,actor	tt0166924,tt0105665,tt0344510,tt0116922
nm0000824	John Badham	1939	\N	director,producer,actor	tt0086567,tt0091949,tt0076666,tt0113972
nm0000825	Mary Badham	1952	\N	actress,archive_footage	tt0056592,tt0060626,tt0052520,tt0061089
nm0000826	Jane Badler	1953	\N	actress,producer,music_department	tt4054004,tt0086822,tt0085106,tt0086823
nm0000827	Maxine Bahns	1971	\N	actress	tt0117628,tt0811124,tt0232957,tt0759482
nm0000828	Barbara Bain	1931	\N	actress,soundtrack,archive_footage	tt0060009,tt0270197,tt0072564,tt8717656
nm0000829	Stuart Baird	1947	\N	editor,editorial_department,director	tt1074638,tt0381061,tt0078346,tt0253754
nm0000830	Oksana Baiul	1977	\N	actress,archive_footage	tt0115101,tt0118186,tt7462076,tt0243458
nm0000832	Diane Baker	1938	\N	actress,producer,production_manager	tt0058329,tt0102926,tt0115798,tt0057426
nm0000833	Joe Don Baker	1936	2025	actor,miscellaneous,production_manager	tt0113189,tt0112715,tt0101540,tt0093428
nm0000834	Kathy Baker	1950	\N	actress,producer,archive_footage	tt0103512,tt1315216,tt0159365,tt0099487
nm0000835	Ralph Bakshi	1938	\N	director,animation_department,writer	tt0076929,tt0077869,tt0085542,tt0068612
nm0000836	Scott Bakula	1954	\N	actor,producer,director	tt0096684,tt1291580,tt0169547,tt1130080
nm0000837	Bob Balaban	1945	\N	actor,director,producer	tt0280707,tt0310281,tt0075860,tt0379725
nm0000838	Daniel Baldwin	1960	\N	actor,director,producer	tt1600194,tt1830617,tt0368479,tt0758751
nm0000839	Ina Balin	1937	1990	actress,writer,producer	tt0054757,tt0053841,tt0058456,tt0076984
nm0000840	Lucille Ball	1911	1989	producer,actress,production_manager	tt0043208,tt0055686,tt0062570,tt0047191
nm0000841	Michael Ballhaus	1935	2017	cinematographer,director,actor	tt0099685,tt0097322,tt0103874,tt0106226
nm0000842	Martin Balsam	1919	1996	actor,archive_footage	tt0074119,tt0054215,tt0050083,tt0059798
nm0000843	Anne Bancroft	1931	2005	actress,director,writer	tt0061722,tt0056241,tt0076843,tt0119223
nm0000844	Tamasaburô Bandô	1950	\N	actor,director,writer	tt0108639,tt0184507,tt0230866,tt0079041
nm0000845	Tallulah Bankhead	1902	1968	actress,archive_footage	tt0037017,tt0038040,tt0022873,tt0021735
nm0000846	Ian Bannen	1928	1999	actor,soundtrack,archive_footage	tt0166396,tt0112573,tt0093209,tt0059183
nm0000847	Theda Bara	1885	1955	actress,writer,archive_footage	tt0005339,tt0007769,tt0005100,tt0009792
nm0000848	Olivia Barash	\N	\N	actress,director,producer	tt0087995,tt0083412,tt0101761,tt0090213
nm0000849	Javier Bardem	1969	\N	actor,producer,music_department	tt1074638,tt0477348,tt0369702,tt1164999
nm0000850	Clive Barker	1952	\N	writer,producer,actor	tt0100260,tt0093177,tt0103919,tt0887261
nm0000851	Lex Barker	1919	1973	actor,archive_footage	tt0045220,tt0046404,tt0059915,tt0058751
nm0000852	Jean-Marc Barr	1960	\N	actor,producer,director	tt0095250,tt0178721,tt1462411,tt1692227
nm0000853	Bruno Barreto	1955	\N	director,producer,writer	tt2217458,tt0077452,tt0119815,tt0086871
nm0000854	Majel Barrett	1932	2008	actress,producer,writer	tt0117731,tt0070909,tt0111280,tt0253754
nm0000855	Raymond J. Barry	1939	\N	actor,archive_footage	tt0305711,tt0110955,tt0841046,tt0139654
nm0000856	Ethel Barrymore	1879	1959	actress,archive_footage	tt0038975,tt0037135,tt0041746,tt0039659
nm0000857	John Drew Barrymore	1932	2004	actor,director,archive_footage	tt0043340,tt0059069,tt0055866,tt0055855
nm0000858	John Barrymore	1882	1942	actor,writer,soundtrack	tt0025919,tt0022958,tt0022454,tt0032637
nm0000859	Lionel Barrymore	1878	1954	actor,director,writer	tt0030993,tt0040506,tt0038650,tt0022958
nm0000860	Paul Bartel	1938	2000	actor,director,writer	tt0078087,tt0083869,tt0098261,tt0114814
nm0000861	Freddie Bartholomew	1924	1992	producer,actor,director	tt0028691,tt0030384,tt0027518,tt0027893
nm0000862	Robin Bartlett	1951	\N	actress,miscellaneous,archive_footage	tt0120632,tt2042568,tt1130884,tt0097722
nm0000863	Billy Barty	1924	2000	actor,director,miscellaneous	tt0093507,tt0096446,tt0089469,tt0083254
nm0000864	Mikhail Baryshnikov	1948	\N	actor,producer,miscellaneous	tt0076843,tt0101606,tt0136439,tt0090319
nm0000865	Richard Basehart	1914	1984	actor,director,miscellaneous	tt0049513,tt0043560,tt0047528,tt0057798
nm0000866	Saul Bass	1920	1996	miscellaneous,art_department,animation_department	tt0063804,tt0070531,tt0053125,tt0086162
nm0000867	Jason Bateman	1969	\N	actor,producer,director	tt0367279,tt2948356,tt2170299,tt2704998
nm0000868	Justine Bateman	1966	\N	writer,director,producer	tt6852672,tt6662050,tt0083413,tt0367279
nm0000869	Alan Bates	1934	2003	actor,producer,soundtrack	tt0280707,tt0265349,tt0066579,tt0164184
nm0000870	Kathy Bates	1948	\N	actress,producer,director	tt0100157,tt0109642,tt0120338,tt0257360
nm0000871	Randall Batinkoff	1968	\N	actor,producer,director	tt2357144,tt0105327,tt0103893,tt0119874
nm0000872	Patrick Bauchau	\N	\N	actor,producer,writer	tt0258000,tt0115320,tt0319969,tt0090264
nm0000873	Belinda Bauer	1950	\N	actress	tt0100502,tt0085549,tt0098546,tt0090066
nm0000874	Steven Bauer	1956	\N	actor,producer,music_department	tt0181865,tt0086250,tt0117381,tt1769323
nm0000875	L. Frank Baum	1856	1919	writer,producer,miscellaneous	tt0032138,tt0000679,tt0089908,tt0004207
nm0000876	Noah Baumbach	1969	\N	writer,director,producer	tt6160448,tt7653254,tt0367089,tt1517268
nm0000877	Lamberto Bava	1944	\N	director,assistant_director,producer	tt0089013,tt0101493,tt0090930,tt0088100
nm0000878	Mario Bava	1914	1980	cinematographer,special_effects,director	tt0067656,tt0068863,tt0058567,tt0055022
nm0000879	Anne Baxter	1923	1985	actress,soundtrack,archive_footage	tt0042192,tt0049833,tt0035015,tt0038873
nm0000880	Meredith Baxter	1947	\N	actress,producer,miscellaneous	tt0074119,tt0083413,tt0105833,tt0073992
nm0000881	Michael Bay	1965	\N	producer,director,actor	tt0120591,tt2109248,tt1055369,tt0418279
nm0000882	Nathalie Baye	1948	\N	actress,writer,soundtrack	tt0264464,tt0070460,tt4645368,tt1650048
nm0000883	Stephanie Beacham	1947	\N	actress,soundtrack,archive_footage	tt0081856,tt0452643,tt0068505,tt0088496
nm0000884	Jennifer Beals	1963	\N	actress,producer,camera_department	tt0085549,tt1037705,tt0112857,tt0113101
nm0000885	Ned Beatty	1937	2021	actor,soundtrack,archive_footage	tt0074958,tt0068473,tt0822854,tt0078346
nm0000886	Warren Beatty	1937	\N	actor,producer,writer	tt0082979,tt0077663,tt0118798,tt0061418
nm0000887	Harold Becker	1928	\N	director,producer,cinematographer	tt0107497,tt0098273,tt0120749,tt0249478
nm0000888	Meret Becker	1969	\N	actress,composer,soundtrack	tt0408306,tt0111183,tt0111613,tt0128133
nm0000889	Bonnie Bedelia	1948	\N	actress,soundtrack,archive_footage	tt0095016,tt0099423,tt0100404,tt0085656
nm0000890	Noah Beery Jr.	1913	1994	actor,soundtrack,archive_footage	tt0071042,tt0040724,tt0031762,tt0053946
nm0000891	Wallace Beery	1885	1949	actor,director,writer	tt0022958,tt0022357,tt0025907,tt0040271
nm0000892	Jason Beghe	1960	\N	actor,producer,archive_footage	tt1458175,tt0103074,tt0095652,tt0119173
nm0000893	Ed Begley Jr.	1949	\N	actor,producer,director	tt0310281,tt0910936,tt1178663,tt0088194
nm0000894	Jean-Jacques Beineix	1946	2022	assistant_director,producer,director	tt0090563,tt0082269,tt0104473,tt0098226
nm0000895	Barbara Bel Geddes	1922	2005	actress,soundtrack,archive_footage	tt0052357,tt0077000,tt0042832,tt0040221
nm0000896	Harry Belafonte	1927	2023	music_artist,actor,producer	tt0308055,tt7349662,tt0116745,tt0053454
nm0000897	Ralph Bellamy	1904	1991	actor,soundtrack,archive_footage	tt0086465,tt0034398,tt0032599,tt0028597
nm0000898	Kathleen Beller	1956	\N	actress,archive_footage	tt0071562,tt0081856,tt0084749,tt0077174
nm0000899	Monica Bellucci	1964	\N	actress,producer,soundtrack	tt0213847,tt0242653,tt0234215,tt0465602
nm0000900	Pamela Bellwood	1944	\N	actress	tt0075648,tt0081856,tt0081485,tt0075359
nm0000901	Jean-Paul Belmondo	1933	2021	actor,producer,stunts	tt0059592,tt0055082,tt0082949,tt0061452
nm0000902	Jim Belushi	1954	\N	actor,music_department,producer	tt0095963,tt0097637,tt0072562,tt0091419
nm0000903	Brian Benben	1956	\N	actor,producer,writer	tt0098780,tt0099817,tt0110939,tt0167547
nm0000904	William Bendix	1906	1964	actor,writer,soundtrack	tt0037017,tt0039973,tt0038369,tt0034798
nm0000905	Roberto Benigni	1952	\N	actor,writer,director	tt0118799,tt0419198,tt0090967,tt0102164
nm0000906	Annette Bening	1958	\N	actress,producer,soundtrack	tt0169547,tt4385888,tt0099703,tt0842926
nm0000907	Richard Benjamin	1938	\N	actor,director,producer	tt0070909,tt0073766,tt0070291,tt0065528
nm0000908	David Bennent	1966	\N	actor,soundtrack,archive_footage	tt0089469,tt0078875,tt0303457,tt0085289
nm0000909	Constance Bennett	1904	1965	actress,producer,soundtrack	tt0021825,tt0023686,tt0025520,tt0029682
nm0000910	Joan Bennett	1910	1990	actress,soundtrack,archive_footage	tt0076786,tt0038057,tt0037469,tt0033873
nm0000911	Nigel Bennett	1949	\N	actor,director,stunts	tt0103417,tt5580390,tt0284978,tt0115243
nm0000912	Jack Benny	1894	1974	actor,producer,soundtrack	tt0035446,tt0042116,tt0031611,tt0033457
nm0000913	Robby Benson	1956	\N	actor,director,soundtrack	tt0101414,tt0108778,tt0076500,tt11280740
nm0000914	Robert Benton	1932	2025	writer,director,producer	tt0079417,tt0061418,tt0078346,tt0087921
nm0000915	Bruce Beresford	1940	\N	director,producer,writer	tt0097239,tt0080310,tt0091081,tt4196848
nm0000916	Peter Berg	1964	\N	producer,actor,writer	tt0108724,tt0124198,tt0110308,tt1091191
nm0000917	Polly Bergen	1930	2014	actress,miscellaneous,writer	tt0099329,tt0055824,tt0057329,tt0058266
nm0000918	Helmut Berger	1944	2023	actor,soundtrack,archive_footage	tt0099674,tt0068883,tt0064118,tt0073634
nm0000919	Senta Berger	1941	\N	actress,producer,soundtrack	tt0062657,tt0090465,tt0896680,tt5500148
nm0000920	Patrick Bergin	1951	\N	actor,producer,soundtrack	tt0105112,tt0102945,tt0102797,tt0102340
nm0000921	Andrew Bergman	1945	\N	writer,director,producer	tt0117765,tt0071230,tt0089155,tt0110167
nm0000922	Sandahl Bergman	1951	\N	actress,miscellaneous,soundtrack	tt0082198,tt0089893,tt0090009,tt0093171
nm0000923	Busby Berkeley	1895	1976	miscellaneous,director,music_department	tt0026421,tt0024028,tt0027686,tt0029725
nm0000924	Elizabeth Berkley	1972	\N	actress,producer,soundtrack	tt0114436,tt0116313,tt0096694,tt0256524
nm0000925	Steven Berkoff	1937	\N	actor,writer,director	tt0086034,tt0066921,tt1243957,tt0086960
nm0000926	Milton Berle	1908	2002	actor,producer,director	tt0057193,tt0079588,tt0040041,tt0060801
nm0000927	Irving Berlin	1888	1989	music_department,composer,writer	tt0029852,tt0038370,tt0036430,tt0034862
nm0000928	Sandra Bernhard	1955	\N	actress,writer,music_department	tt0085794,tt0102070,tt0100946,tt0120901
nm0000929	Corbin Bernsen	1954	\N	actor,producer,writer	tt0373469,tt0097815,tt0110442,tt0116075
nm0000930	Elmer Bernstein	1922	2004	music_department,composer,miscellaneous	tt0297884,tt0120891,tt0054047,tt0056592
nm0000931	Elizabeth Berridge	1962	\N	actress,producer,archive_footage	tt0086879,tt0317648,tt0082427,tt0106039
nm0000932	Halle Berry	1966	\N	actress,producer,director	tt0327554,tt0348836,tt0246460,tt0285742
nm0000933	Valerie Bertinelli	1960	\N	actress,producer,soundtrack	tt0072554,tt0078924,tt0088078,tt0926284
nm0000934	Bernardo Bertolucci	1941	2018	writer,director,producer	tt0065571,tt0093389,tt0070849,tt0117737
nm0000935	Bibi Besch	1942	1996	actress,archive_footage	tt0084726,tt0098384,tt0100814,tt0104118
nm0000936	Martine Beswick	1941	\N	actress,miscellaneous,archive_footage	tt0059800,tt0057076,tt0080839,tt0068502
nm0000937	Richard Beymer	1939	\N	actor,cinematographer,editor	tt0055614,tt0098936,tt0056197,tt0226836
nm0000938	Daniela Bianchi	1942	\N	actress,archive_footage	tt0057076,tt0062078,tt0062397,tt0060704
nm0000939	Adrian Biddle	1952	2005	cinematographer,camera_department,archive_footage	tt0434409,tt0103074,tt0103594,tt0090605
nm0000940	Bigas Luna	1946	2013	writer,director,producer	tt0104545,tt0078934,tt0090644,tt0129923
nm0000941	Kathryn Bigelow	1951	\N	director,producer,actress	tt0887912,tt1790885,tt5390504,tt0093605
nm0007377	Teukka Aalto	\N	\N	composer,stunts	tt0281078
nm0000942	Theodore Bikel	1924	2015	actor,writer,director	tt0058385,tt0051525,tt0050356,tt0043265
nm0000943	Traci Bingham	1968	\N	actress,archive_footage	tt0114608,tt0096542,tt3572718,tt0373163
nm0000944	Antonia Bird	1951	2013	director,producer,archive_footage	tt0110889,tt0119092,tt0129332,tt0263181
nm0000945	Jane Birkin	1946	2023	actress,director,writer	tt0083908,tt0060176,tt0077413,tt0901473
nm0000946	Whit Bissell	1909	1996	actor,soundtrack,archive_footage	tt0054047,tt0046876,tt0070723,tt0054387
nm0000947	Karen Black	1939	2013	actress,writer,composer	tt0065724,tt0071577,tt0251736,tt0073440
nm0000948	Shane Black	1961	\N	writer,actor,director	tt0093773,tt3799694,tt0373469,tt1300854
nm0000949	Cate Blanchett	1969	\N	actress,producer,writer	tt2402927,tt2334873,tt0120737,tt0421715
nm0000950	Brenda Blethyn	1946	\N	actress,writer,soundtrack	tt0414387,tt0117589,tt0147004,tt0195234
nm0000951	Joan Blondell	1906	1979	actress,soundtrack,archive_footage	tt0021673,tt0077631,tt0030857,tt0059037
nm0000952	Hart Bochner	1956	\N	actor,director,writer	tt0095016,tt0078902,tt0106364,tt0088206
nm0000953	Peter Bogdanovich	1939	2022	actor,director,writer	tt0067328,tt0063671,tt0070510,tt0079843
nm0000954	Jon Bon Jovi	1962	\N	music_artist,actor,composer	tt0100994,tt0384286,tt0141926,tt1389096
nm0000955	Ward Bond	1903	1960	actor,soundtrack,archive_footage	tt0033870,tt0038650,tt0045061,tt0049730
nm0000956	Lisa Bonet	1967	\N	actress,director,soundtrack	tt0092563,tt0146882,tt0120660,tt0086687
nm0000957	Jan de Bont	1943	\N	cinematographer,camera_department,producer	tt0111257,tt0171363,tt0181689,tt0117998
nm0000958	John Boorman	1933	\N	producer,director,writer	tt0093209,tt0082348,tt0120706,tt0068473
nm0000959	Powers Boothe	1948	2017	actor,soundtrack,archive_footage	tt0114576,tt0401792,tt0848228,tt0264616
nm0000960	Barry Bostwick	1945	\N	actor,producer,soundtrack	tt0073629,tt0084316,tt0070544,tt0115369
nm0000961	Timothy Bottoms	1951	\N	actor,producer,soundtrack	tt0067328,tt0067277,tt0070509,tt0363589
nm0000962	Carole Bouquet	1957	\N	actress,director,soundtrack	tt0082398,tt0281364,tt0075824,tt0398664
nm0000963	Stephen Boyd	1931	1977	actor,producer,soundtrack	tt0052618,tt0060397,tt0060801,tt0058085
nm0000964	Charles Boyer	1899	1978	actor,producer,miscellaneous	tt0036855,tt0028739,tt0033722,tt0029855
nm0000965	Danny Boyle	1956	\N	director,producer,writer	tt1542344,tt0289043,tt1010048,tt0111149
nm0000966	Lorraine Bracco	1954	\N	actress,producer,director	tt0099685,tt0104839,tt0141842,tt0112461
nm0000967	Eric Braeden	1941	\N	actor,producer,archive_footage	tt0069658,tt0067065,tt0120338,tt0064177
nm0000968	Sonia Braga	1950	\N	actress,producer,miscellaneous	tt0077452,tt0089424,tt0095654
nm0000969	Lillo Brancato	1976	\N	actor,producer,archive_footage	tt0106489,tt0112740,tt0110971,tt0180052
nm0000970	Jonathan Brandis	1976	2003	actor,miscellaneous,director	tt0100240,tt0106126,tt0099864,tt0104670
nm0000971	Nicoletta Braschi	1960	\N	actress,producer,archive_footage	tt0118799,tt6752992,tt0102164,tt0090967
nm0000972	Tinto Brass	1933	\N	actor,writer,director	tt0065161,tt0080491,tt0057942,tt0169806
nm0000973	Benjamin Bratt	\N	\N	actor,producer,director	tt0212346,tt2380307,tt0181865,tt0098844
nm0000974	Walter Brennan	1894	1974	actor,soundtrack,archive_footage	tt0037382,tt0033253,tt0038762,tt0040724
nm0000975	Robert Bresson	1901	1999	writer,director,assistant_director	tt0049902,tt0060138,tt0042619,tt0061996
nm0000976	Martin Brest	1951	\N	director,writer,producer	tt0105323,tt0095631,tt0086960,tt0119643
nm0000977	Beau Bridges	1941	\N	actor,director,producer	tt0097322,tt0467197,tt1033575,tt2097307
nm0000978	Lloyd Bridges	1913	1998	actor,director,soundtrack	tt0107144,tt0083530,tt0080339,tt0102059
nm0000979	Wilford Brimley	1934	2020	actor,stunts,archive_footage	tt0087781,tt0119360,tt0088933,tt0106918
nm0000980	Jim Broadbent	1949	\N	actor,writer,producer	tt0203009,tt1431181,tt1007029,tt0151568
nm0000981	James Brolin	1940	\N	actor,producer,director	tt0181865,tt0077294,tt0078767,tt0070909
nm0000982	Josh Brolin	1968	\N	actor,producer,director	tt0477348,tt4154796,tt4154756,tt1791528
nm0000983	Albert Brooks	1947	\N	actor,writer,music_department	tt0780504,tt0092699,tt0089504,tt0101698
nm0000984	Avery Brooks	1948	\N	actor,director,music_department	tt0106145,tt0120609,tt0120586,tt0094213
nm0000985	James L. Brooks	1940	\N	writer,producer,miscellaneous	tt0092699,tt0119822,tt0086425,tt0371246
nm0000986	Bryan Brown	1947	\N	actor,producer,writer	tt0094889,tt0145547,tt0080310,tt0101846
nm0000987	Jim Brown	1936	2023	actor,producer,archive_footage	tt0116996,tt0093894,tt0146838,tt0061578
nm0000988	Jerry Bruckheimer	1943	\N	producer,music_department,writer	tt1745960,tt0120591,tt0449088,tt0210945
nm0000989	Yul Brynner	1920	1985	actor,director,producer	tt0049408,tt0049833,tt0054047,tt0070909
nm0000990	Betty Buckley	1947	\N	actress,producer,writer	tt4972582,tt0949731,tt0074285,tt0095174
nm0000991	Geneviève Bujold	1942	\N	actress,writer,music_department	tt0094964,tt0077355,tt0064030,tt0228301
nm0000992	Billie Burke	1884	1970	actress,soundtrack,archive_footage	tt0032138,tt0023948,tt0030442,tt0022685
nm0000993	Carol Burnett	1933	\N	actress,producer,writer	tt0061240,tt0083564,tt0105017,tt0082405
nm0000994	Raymond Burr	1917	1993	actor,production_manager,director	tt0047396,tt0061266,tt0197521,tt0087344
nm0000995	Ellen Burstyn	1932	\N	actress,producer,director	tt0180093,tt0071115,tt0070047,tt0067328
nm0000996	LeVar Burton	1957	\N	actor,director,producer	tt0111280,tt0117731,tt0085075,tt0120844
nm0000997	Gary Busey	1944	\N	actor,producer,composer	tt0077280,tt0093409,tt0102685,tt0105690
nm0000998	Jake Busey	1971	\N	actor,producer,music_department	tt0120201,tt0116365,tt0309698,tt0120660
nm0000999	Red Buttons	1919	2006	actor,writer,miscellaneous	tt0076538,tt0050933,tt0069113,tt0056059
nm0001000	Tom Byron	1961	\N	actor,director,producer	tt2059288,tt0178845,tt0097039,tt0148895
nm0001001	James Caan	1940	2022	actor,director,stunts	tt0083190,tt0073631,tt0100157,tt0068646
nm0001002	Dean Cain	1966	\N	actor,producer,writer	tt0106057,tt2528814,tt0250687,tt0313443
nm0001003	Simon Callow	1949	\N	actor,writer,director	tt0109831,tt0091867,tt0138097,tt0293508
nm0007537	Craig Aasen	\N	\N	stunts,actor	tt0117762,tt0112368
nm0001004	Billy Campbell	1959	\N	actor,camera_department,producer	tt0102803,tt0278435,tt0103874,tt5583512
nm0001005	Jane Campion	1954	\N	writer,producer,director	tt0810784,tt0107822,tt10293406,tt2103085
nm0001006	John Candy	1950	1994	actor,writer,music_department	tt0093748,tt0098554,tt0094012,tt0088161
nm0001007	Dyan Cannon	1937	\N	actress,writer,producer	tt0077663,tt0064100,tt0083806,tt0070291
nm0001008	Frank Capra	1897	1991	director,writer,producer	tt0038650,tt0025316,tt0030993,tt0031679
nm0001009	Kate Capshaw	1953	\N	actress,producer,art_director	tt0087469,tt0096933,tt0113501,tt0166252
nm0001010	Capucine	1928	1990	actress,archive_footage	tt0057413,tt0085384,tt0056671,tt0054324
nm0001011	Irene Cara	1959	2022	music_artist,actress,music_department	tt0080716,tt0085549,tt0075249,tt0085387
nm0001012	Claudia Cardinale	1938	2025	actress,soundtrack,archive_footage	tt0064116,tt0056801,tt0083946,tt0057413
nm0001013	Harry Carey Jr.	1921	2012	actor,writer,producer	tt0108358,tt0087363,tt0049730,tt0099528
nm0001014	Mariah Carey	1969	\N	music_artist,actress,composer	tt0118589,tt0929632,tt4116284,tt0120596
nm0001015	Robert Carlyle	1961	\N	actor,director,producer	tt0119164,tt0117951,tt2763304,tt0143145
nm0001016	David Carradine	1936	2009	actor,producer,director	tt0378194,tt0074235,tt0072856,tt0490086
nm0001017	John Carradine	1906	1988	actor,soundtrack,archive_footage	tt0032551,tt0031971,tt0082533,tt0056217
nm0001018	Keith Carradine	1949	\N	actor,music_department,composer	tt0073440,tt0409847,tt0773262,tt0348914
nm0001019	Robert Carradine	1954	\N	actor,producer,composer	tt0088000,tt0116225,tt0080437,tt0306841
nm0001020	Katrin Cartlidge	1961	2002	actress,archive_footage	tt0115751,tt0107653,tt0118818,tt0120681
nm0001021	Veronica Cartwright	1949	\N	actress,soundtrack,archive_footage	tt0078748,tt0094332,tt0056869,tt0077745
nm0001022	Dana Carvey	1955	\N	actor,writer,producer	tt0105793,tt0295427,tt0108525,tt0072562
nm0001023	John Cassavetes	1929	1989	actor,director,writer	tt0063522,tt0087644,tt0072417,tt0079672
nm0001024	Nick Cassavetes	1959	\N	actor,director,writer	tt0119094,tt0138304,tt1078588,tt0426883
nm0001025	Seymour Cassel	1935	2019	actor,cinematographer,miscellaneous	tt0128445,tt0104503,tt0099422,tt0338466
nm0001026	Joanna Cassidy	\N	\N	actress,producer,miscellaneous	tt0083658,tt0096438,tt0098051,tt0248654
nm0001027	Shaun Cassidy	1958	\N	producer,writer,actor	tt0111880,tt0233491,tt0460651,tt0075513
nm0001028	Maxwell Caulfield	1959	\N	actor,producer,soundtrack	tt0084021,tt0088496,tt0112950,tt0119987
nm0001029	Jim Caviezel	1968	\N	actor,producer,soundtrack	tt0335345,tt0120863,tt0186151,tt0450340
nm0001030	John Cazale	1935	1978	actor,cinematographer,editor	tt0072890,tt0071360,tt0068646,tt0071562
nm0001031	Claude Chabrol	1930	2010	director,writer,actor	tt0051404,tt0112769,tt0096336,tt0064106
nm0001032	Marilyn Chambers	1952	2009	actress,writer,music_department	tt0076590,tt0085167,tt0087475,tt1328912
nm0001033	Lon Chaney Jr.	1906	1973	actor,soundtrack,archive_footage	tt0034398,tt0044706,tt0031742,tt0035899
nm0001034	Rosalind Chao	\N	\N	actress,soundtrack,archive_footage	tt13016388,tt12809988,tt4370596,tt0322330
nm0001035	Ben Chaplin	1970	\N	actor,soundtrack,archive_footage	tt0120863,tt28082769,tt0117979,tt0264935
nm0001036	Geraldine Chaplin	1944	\N	actress,writer,soundtrack	tt0287467,tt0059113,tt0073440,tt0464141
nm0001037	Graham Chapman	1941	1989	writer,actor,miscellaneous	tt0071853,tt0085959,tt0079470,tt0063929
nm0001038	Josh Charles	1971	\N	actor,director,miscellaneous	tt0097165,tt0430105,tt0257076,tt1442462
nm0001039	David Charvet	1972	\N	actor,soundtrack,archive_footage	tt0103491,tt0096542,tt0496375,tt0112464
nm0001040	Joan Chen	1961	\N	actress,director,producer	tt0110725,tt0113492,tt0452631,tt0808357
nm0001041	Maggie Cheung	1964	\N	actress,soundtrack,archive_footage	tt0118694,tt0299977,tt0101258,tt0117905
nm0001042	Lois Chiles	1947	\N	actress,soundtrack,archive_footage	tt0079574,tt0092699,tt0077413,tt0071577
nm0001043	Anna Chlumsky	1980	\N	actress,soundtrack,archive_footage	tt0102492,tt1759761,tt0110613,tt0113188
nm0001044	Rae Dawn Chong	1961	\N	actress,producer,director	tt0088944,tt0088939,tt0082484,tt1588334
nm0001045	Tommy Chong	1938	\N	actor,writer,producer	tt0078446,tt2948356,tt0087042,tt0080520
nm0001046	Julie Christie	1940	\N	actress,miscellaneous,soundtrack	tt0059113,tt0069995,tt0060390,tt0491747
nm0001047	Michael Cimino	1939	2016	director,writer,producer	tt0077416,tt0080855,tt0067756,tt0090350
nm0001048	Andrew Dice Clay	1957	\N	actor,producer,writer	tt0098987,tt2334873,tt1517451,tt1674771
nm0001049	Jill Clayburgh	1944	2010	actress,soundtrack,archive_footage	tt1478338,tt0078444,tt0439289,tt0078227
nm0001050	Montgomery Clift	1920	1966	actor,writer,stunts	tt0043924,tt0045793,tt0041452,tt0040765
nm0001051	Bill Clinton	1946	\N	writer,producer,actor	tt27941351,tt16756412,tt7466880,tt12660626
nm0001052	Kurt Cobain	1967	1994	music_artist,actor,music_department	tt1877830,tt3480822,tt0203009,tt4154664
nm0001053	Ethan Coen	1957	\N	producer,writer,director	tt6412452,tt2042568,tt1019452,tt0116282
nm0001054	Joel Coen	1954	\N	producer,writer,director	tt10095582,tt6412452,tt2042568,tt0116282
nm0001055	Claudette Colbert	1903	1996	actress,soundtrack,archive_footage	tt0025316,tt0029929,tt0036367,tt0031647
nm0001056	Dabney Coleman	1932	2024	actor,miscellaneous,producer	tt0086567,tt0080319,tt0128853,tt0084805
nm0001057	Toni Collette	1972	\N	actress,producer,director	tt0167404,tt0276751,tt7784604,tt0274558
nm0001058	Joan Collins	1933	\N	actress,producer,writer	tt0081856,tt0158622,tt0053800,tt0075989
nm0001059	Robbie Coltrane	1950	2022	actor,writer,producer	tt0105977,tt0241527,tt0295297,tt0143145
nm0001060	Chris Columbus	1958	\N	producer,writer,director	tt0241527,tt0295297,tt1454029,tt0294870
nm0001061	Holly Marie Combs	1973	\N	actress,producer,writer	tt0158552,tt0103512,tt0104139,tt0096969
nm0001062	Jeffrey Combs	1954	\N	actor,miscellaneous,soundtrack	tt0116365,tt0089885,tt0106145,tt1999995
nm0001063	Jeff Conaway	1950	2011	actor,writer,producer	tt0077631,tt0077089,tt0155776,tt0105946
nm0001064	Jason Connery	1963	\N	actor,director,producer	tt3467914,tt1937506,tt0184894
nm0001065	Harry Connick Jr.	1967	\N	actor,music_department,producer	tt0119313,tt0129167,tt0112722,tt0116629
nm0001066	Robert Conrad	1935	2020	actor,director,writer	tt0073961,tt0116705,tt0076993,tt0080132
nm0001067	Jackie Coogan	1914	1984	actor,miscellaneous,director	tt0013450,tt0021483,tt0014733,tt0012349
nm0001068	Sofia Coppola	1971	\N	director,actress,writer	tt0099674,tt0159097,tt0335266,tt5592248
nm0001069	Bud Cort	1948	\N	actor,director,writer	tt0362270,tt0067185,tt0066026,tt0200550
nm0001070	Bill Cosby	1937	\N	actor,music_department,writer	tt0086687,tt0093405,tt0058816,tt0063871
nm0001071	Annie Costner	1984	\N	producer,actress,director	tt0119925,tt0099348,tt5994270,tt10918878
nm0001072	Joseph Cotten	1905	1994	actor,writer,soundtrack	tt0033467,tt0035015,tt0036342,tt0041959
nm0001073	Courteney Cox	1964	\N	actress,producer,director	tt0108778,tt0117571,tt0120082,tt0134084
nm0001074	Ronny Cox	1938	\N	actor,writer,producer	tt0100802,tt0068473,tt0086960,tt0093870
nm0001075	Peter Coyote	1941	\N	actor,producer,writer	tt0104779,tt0281358,tt0129290,tt0083866
nm0001076	Joan Crawford	1907	1977	actress,writer,producer	tt0037913,tt0056687,tt0023369,tt0038622
nm0001077	Richard Crenna	1926	2003	actor,director,producer	tt0095956,tt0062467,tt0083944,tt0089880
nm0001078	Bing Crosby	1903	1977	music_artist,actor,producer	tt0047673,tt0049314,tt0036872,tt0038032
nm0001079	Scatman Crothers	1910	1986	actor,soundtrack,archive_footage	tt0081505,tt0073486,tt0086491,tt0065421
nm0001080	Lindsay Crouse	1948	\N	actress,miscellaneous,soundtrack	tt0115571,tt0076723,tt0140352,tt0074119
nm0001081	Cameron Crowe	1957	\N	writer,producer,director	tt0181875,tt0116695,tt0259711,tt0105415
nm0001082	Billy Crudup	1968	\N	actor,producer,soundtrack	tt0181875,tt0409459,tt0343737,tt0319061
nm0001083	Jon Cryer	1965	\N	actor,producer,director	tt0369179,tt0091790,tt0094074,tt0102059
nm0001084	Ice Cube	1969	\N	executive,director,producer	tt13186306,tt6914708,tt0285341,tt0102526
nm0001085	Kieran Culkin	1982	\N	actor,archive_footage	tt7660850,tt0280760,tt21823606,tt0446029
nm0001086	Alan Cumming	1965	\N	actor,producer,director	tt0254099,tt0158622,tt0113189,tt0290334
nm0001087	Lee Curreri	1961	\N	actor,composer,sound_department	tt0083412,tt0080716,tt0405473,tt0480239
nm0001088	Peter Cushing	1913	1994	actor,writer,art_department	tt0076759,tt0051554,tt0050280,tt0052905
nm0001089	Henry Czerny	1959	\N	actor,archive_footage	tt0117060,tt0109444,tt0383216,tt7798634
nm0001090	Joe D'Amato	1936	1999	director,cinematographer,camera_department	tt0068972,tt0074472,tt0085183,tt0083565
nm0001091	Patti D'Arbanville	1951	\N	actress,soundtrack,archive_footage	tt1126618,tt0082763,tt0116277,tt0197182
nm0001092	Mark Dacascos	\N	\N	actor,stunts,director	tt0237534,tt6146586,tt0116147,tt0106761
nm0001093	John Dahl	1956	\N	director,art_department,writer	tt0110308,tt0105226,tt0097662,tt0128442
nm0001094	Roald Dahl	1916	1990	writer,actor,soundtrack	tt0100944,tt0062512,tt0067992,tt0047708
nm0001095	Béatrice Dalle	1964	\N	actress,archive_footage	tt0856288,tt0090563,tt0102536,tt10272534
nm0001096	Timothy Dalton	1946	\N	actor,soundtrack,archive_footage	tt0093428,tt0097742,tt0425112,tt0080745
nm0001097	Charles Dance	1946	\N	actor,producer,director	tt0280707,tt2084970,tt0944947,tt0107362
nm0001098	Rodney Dangerfield	1921	2004	actor,writer,producer	tt0090685,tt0102813,tt0080487,tt0085470
nm0001099	Jeff Daniels	1955	\N	actor,producer,writer	tt0367089,tt0099052,tt0089853,tt0109686
nm0001100	Blythe Danner	1943	\N	actress,soundtrack,archive_footage	tt0212338,tt1092026,tt0434139,tt3236120
nm0001101	Ted Danson	1947	\N	actor,producer,writer	tt0083399,tt4955642,tt0082089,tt0098966
nm0001102	Joe Dante	1946	\N	director,producer,miscellaneous	tt0078087,tt0093260,tt0087363,tt0082533
nm0001103	Tony Danza	1951	\N	actor,producer,miscellaneous	tt2229499,tt0086827,tt0077089,tt0109127
nm0001104	Frank Darabont	1959	\N	writer,producer,director	tt0111161,tt0120689,tt0884328,tt1520211
nm0001105	Linda Darnell	1923	1965	actress,soundtrack,archive_footage	tt0042792,tt0039391,tt0037691,tt0033405
nm0001106	Racquel Darrian	1968	\N	actress,director,archive_footage	tt0221458,tt0134087,tt0134054,tt0144561
nm0001107	Stacey Dash	1967	\N	actress,producer,archive_footage	tt0112697,tt0110971,tt0264150,tt0115137
nm0001108	Robert Davi	1951	\N	actor,producer,director	tt0095016,tt0089218,tt0097742,tt2333784
nm0001109	Jaye Davidson	1968	\N	actor,archive_footage	tt0104036,tt0111282,tt1493839,tt0179250
nm0001110	Embeth Davidtz	1965	\N	actress,director,writer	tt0182789,tt0106308,tt0117008,tt2051879
nm0001111	Jeremy Davies	1969	\N	actor,archive_footage	tt0120815,tt0307479,tt0117998,tt0274812
nm0001112	Andrew Davis	1946	\N	director,cinematographer,writer	tt0106977,tt0311289,tt0105690,tt0406816
nm0001113	Brad Davis	1949	1991	actor,archive_footage	tt0077928,tt0084565,tt0082158,tt0084997
nm0001114	Judy Davis	1955	\N	actress,producer,soundtrack	tt0104466,tt0110955,tt0101410,tt2910904
nm0001115	Ossie Davis	1917	2005	actor,writer,director	tt0097216,tt0281686,tt0107050,tt0109446
nm0001116	Warwick Davis	1970	\N	actor,writer,producer	tt0096446,tt0107387,tt0371724,tt0350258
nm0001117	Bruce Davison	1946	\N	actor,director,producer	tt0120903,tt18335752,tt0100049,tt5071412
nm0001118	Pam Dawber	1951	\N	actress,producer,soundtrack	tt0077053,tt0105466,tt0078349,tt0118385
nm0001119	Yvonne De Carlo	1922	2007	actress,soundtrack,archive_footage	tt0049833,tt0042287,tt0094642,tt0060726
nm0001120	Vittorio De Sica	1901	1974	actor,director,writer	tt0040522,tt0045274,tt0047313,tt0043809
nm0001121	Brandon De Wilde	1942	1972	actor,soundtrack,archive_footage	tt0046303,tt0044896,tt0057163,tt0059309
nm0001122	Ellen DeGeneres	1958	\N	producer,writer,actress	tt0379623,tt2796782,tt0108761,tt0266543
nm0001123	Dom DeLuise	1933	2009	actor,director,writer	tt0082136,tt0071230,tt0096787,tt0084649
nm0001124	Cecil B. DeMille	1881	1959	producer,director,editor	tt0049833,tt0044672,tt0043014,tt0041838
nm0001125	Benicio Del Toro	1967	\N	actor,producer,director	tt3397884,tt0114814,tt0181865,tt2015381
nm0001126	Kim Delaney	1958	\N	actress,producer,archive_footage	tt0106079,tt0065272,tt0362359,tt0463850
nm0001127	Dana Delany	\N	\N	actress,producer,soundtrack	tt0094433,tt0108358,tt0106364,tt0410975
nm0001128	Alain Delon	1935	2024	actor,producer,writer	tt0062229,tt0057091,tt0054189,tt0056736
nm0007538	Finn Aasen	\N	\N	writer	tt0217874
nm0001129	Jonathan Demme	1944	2017	director,producer,writer	tt0102926,tt1084950,tt0107818,tt0268126
nm0001130	Ted Demme	1963	2002	director,producer,actor	tt0221027,tt0115639,tt0342275,tt0110955
nm0001131	Patrick Dempsey	1966	\N	actor,production_manager,producer	tt0413573,tt0092718,tt1399103,tt0461770
nm0001132	Judi Dench	1934	\N	actress,music_department,director	tt1074638,tt0465551,tt0138097,tt1412386
nm0001133	Brian Dennehy	1938	2020	actor,producer,director	tt0083944,tt0117509,tt0090022,tt0088933
nm0001134	Bob Denver	1935	2005	actor,soundtrack,archive_footage	tt0057751,tt0052490,tt0078155,tt0092608
nm0001135	John Derek	1926	1998	actor,director,cinematographer	tt0049833,tt0041555,tt0099656,tt0086987
nm0001136	Bruce Dern	1936	\N	actor,producer,soundtrack	tt1821549,tt3460252,tt0096734,tt0071577
nm0001137	William Devane	1939	\N	actor,writer,director	tt0078638,tt0120784,tt0074860,tt0186566
nm0001138	Susan Dey	1952	\N	actress,producer,archive_footage	tt0065333,tt0090466,tt0069278,tt0082677
nm0001139	Tom DiCillo	1953	\N	director,cinematographer,writer	tt0412637,tt0113677,tt0104567,tt1333667
nm0001140	Philip K. Dick	1928	1982	writer,actor,archive_footage	tt0083658,tt0181689,tt0100802,tt0405296
nm0001141	Angie Dickinson	1931	\N	actress,soundtrack,archive_footage	tt0053221,tt0080661,tt0114319,tt0062138
nm0001142	Uschi Digard	1948	\N	actress,producer,miscellaneous	tt0078846,tt0070752,tt0073768,tt0324310
nm0001143	Kevin Dillon	1965	\N	actor,producer,soundtrack	tt0409182,tt0091763,tt0094761,tt0101761
nm0001144	Céline Dion	1968	\N	music_artist,actress,music_department	tt0120338,tt0101414,tt5463162,tt0182789
nm0001145	Divine	1945	1988	actor,writer,soundtrack	tt0069089,tt0095270,tt0072979,tt0149261
nm0001146	Donna Dixon	1957	\N	actress,soundtrack,archive_footage	tt0090056,tt0105793,tt0086491,tt0113987
nm0001147	Shannen Doherty	1971	2024	actress,producer,director	tt0098749,tt0158552,tt0097493,tt0113749
nm0001148	Troy Donahue	1936	2001	actor,soundtrack,archive_footage	tt0053320,tt0051948,tt0099329,tt0071562
nm0001149	Richard Donner	1930	2021	director,producer,actor	tt0078346,tt0089457,tt0093409,tt0118883
nm0001150	James Doohan	1920	2005	actor,miscellaneous,soundtrack	tt0060028,tt0092007,tt0102975,tt0084726
nm0001151	Stephen Dorff	1973	\N	actor,producer,writer	tt0120611,tt1421051,tt1117385,tt1253864
nm0001152	Illeana Douglas	1961	\N	actress,producer,writer	tt0164181,tt0114681,tt0241760,tt0162346
nm0001153	Lesley-Anne Down	1954	\N	actress,writer,soundtrack	tt0088583,tt0092325,tt0075066,tt0079240
nm0001154	Michael Dudikoff	\N	\N	actor,assistant_director,producer	tt0095877,tt0088708,tt0086927,tt0158671
nm0001155	Patrick Duffy	1949	\N	actor,director,producer	tt0077000,tt1414382,tt0101205,tt0182576
nm0001156	Olympia Dukakis	1931	2021	actress,producer,archive_footage	tt0093565,tt0098384,tt0419843,tt1466054
nm0001157	Patty Duke	1946	2016	actress,producer,writer	tt0062430,tt0056241,tt0058972,tt0073971
nm0001158	Keir Dullea	1936	\N	actor,soundtrack,archive_footage	tt0062622,tt0055892,tt0086837,tt0071222
nm0001159	Faye Dunaway	1941	\N	actress,producer,director	tt0074958,tt0061418,tt0071315,tt0082766
nm0001160	Adrian Dunbar	1958	\N	actor,producer,director	tt0104036,tt0102014,tt2303687,tt0097937
nm0001161	Dominique Dunne	1959	1982	actress,soundtrack,archive_footage	tt0084516,tt0080203,tt0078622,tt0081873
nm0001162	Griffin Dunne	1955	\N	actor,director,producer	tt0088680,tt0082010,tt1333125,tt0790636
nm0001163	Roy Dupuis	1963	\N	actor,producer,director	tt0118379,tt0472562,tt0114367,tt0460505
nm0001164	Charles Durning	1923	2012	actor,miscellaneous,soundtrack	tt0072890,tt0080736,tt0079588,tt0190590
nm0001165	Charles S. Dutton	1951	\N	actor,producer,director	tt0103644,tt0348836,tt0117913,tt1038686
nm0001166	James Duval	1972	\N	actor,producer,writer	tt0246578,tt0187078,tt0116629,tt0139239
nm0001167	Shelley Duvall	1949	2024	producer,actress,writer	tt0081505,tt0075612,tt0081353,tt0075686
nm0001168	Bob Dylan	1941	\N	music_artist,music_department,composer	tt0078151,tt0319829,tt0070518,tt0185014
nm0001169	George Dzundza	1945	\N	actor,assistant_director,soundtrack	tt0112740,tt0103772,tt0112792,tt0077416
nm0001170	Roger Ebert	1942	2013	writer,actor,producer	tt0090523,tt2382298,tt0075583,tt0065466
nm0001171	Buddy Ebsen	1908	2003	actor,music_department,producer	tt0055662,tt0054698,tt0027387,tt0047977
nm0001172	Christopher Eccleston	1964	\N	actor,producer,archive_footage	tt1981115,tt0436992,tt0111149,tt0289043
nm0001173	Aaron Eckhart	1968	\N	actor,producer,soundtrack	tt0468569,tt0427944,tt0935075,tt0298814
nm0001174	Barbara Eden	\N	\N	actress,producer,miscellaneous	tt0058815,tt0077660,tt0055608,tt0115341
nm0001175	Blake Edwards	1922	2010	writer,producer,director	tt0075066,tt0072081,tt0084865,tt0051301
nm0001176	Nicole Eggert	1972	\N	actress,producer,archive_footage	tt0086681,tt0103843,tt0096542,tt0086827
nm0001177	Chris Eigeman	1965	\N	actor,director,writer	tt0100142,tt0252076,tt0109219,tt0120728
nm0001178	Sergei Eisenstein	1898	1948	director,writer,editor	tt0037824,tt0029850,tt0015648,tt0079020
nm0001179	Anita Ekberg	1931	2015	actress,miscellaneous,archive_footage	tt0053779,tt0047889,tt0049934,tt0051985
nm0001180	Britt Ekland	1942	\N	actress,writer,director	tt0071807,tt0070917,tt0067128,tt0067489
nm0001181	Jack Elam	1920	2003	actor,soundtrack,archive_footage	tt0064116,tt0082136,tt0065051,tt0048261
nm0001182	Carmen Electra	1972	\N	actress,producer,writer	tt0362120,tt1073498,tt0175142,tt0799949
nm0001183	Bodhi Elfman	1969	\N	actor,producer,writer	tt0120749,tt0120660,tt0369339,tt0111686
nm0001184	Jenna Elfman	1971	\N	actress,producer,archive_footage	tt0118303,tt0171433,tt1632708,tt0131369
nm0001185	Hector Elizondo	1936	\N	actor,director,producer	tt0100405,tt0163187,tt0109254,tt0368933
nm0001186	Denholm Elliott	1922	1992	actor,soundtrack,archive_footage	tt0091867,tt0086465,tt0082971,tt0097576
nm0001187	Noah Emmerich	1965	\N	actor,director	tt1650062,tt0120382,tt0349825,tt0115639
nm0001188	Nora Ephron	1941	2012	writer,producer,director	tt1135503,tt0098635,tt0374536,tt0128853
nm0001189	Gabriel Yared	1949	\N	composer,music_department,actor	tt0134119,tt0159365,tt0116209,tt0405094
nm0001190	David Prowse	1935	2020	actor,miscellaneous,archive_footage	tt0076759,tt0086190,tt0066921,tt0080684
nm0001191	Adam Sandler	1966	\N	actor,producer,writer	tt0120484,tt0142342,tt0185431,tt0120888
nm0001192	John Mark Robinson	1949	\N	actor,director,writer	tt0088008,tt0102205,tt0105442,tt0147762
nm0001193	Shelley Fabares	1944	\N	actress,producer,soundtrack	tt0051267,tt0059224,tt0096560,tt0061489
nm0001194	Jeff Fahey	1952	\N	actor,producer,miscellaneous	tt0411008,tt0111756,tt5465142,tt0437086
nm0001195	Douglas Fairbanks Jr.	1909	2000	actor,producer,production_manager	tt0023642,tt0039826,tt0032558,tt0029442
nm0001196	Douglas Fairbanks	1883	1939	actor,writer,producer	tt0015400,tt0013556,tt0023243,tt0021287
nm0001197	Anna Falchi	1972	\N	actress,producer,executive	tt0109592,tt0109358,tt0111049,tt4142394
nm0001198	Debrah Farentino	1959	\N	actress,producer,archive_footage	tt0101516,tt0107497,tt0796264,tt0083397
nm0001199	Dennis Farina	1944	2013	actor,producer,executive	tt0113161,tt0091474,tt0208092,tt0184858
nm0001200	Gary Farmer	1953	\N	actor,director,miscellaneous	tt0112817,tt0165798,tt0098112,tt0120321
nm0001201	Mia Farrow	1945	\N	actress,soundtrack,archive_footage	tt0063522,tt0089853,tt0087003,tt0097123
nm0001202	Rainer Werner Fassbinder	1945	1982	writer,director,actor	tt0072976,tt0079095,tt0071141,tt0064536
nm0001203	William Faulkner	1897	1962	writer,archive_footage	tt0038355,tt0037382,tt0051055,tt5208974
nm0001204	Marty Feldman	1934	1982	writer,actor,script_department	tt0072431,tt0080917,tt0076297,tt0129696
nm0001205	Norman Fell	1924	1998	actor,soundtrack,archive_footage	tt0075596,tt0062765,tt0061722,tt0053946
nm0001206	Abel Ferrara	1951	\N	director,actor,writer	tt0103759,tt0099939,tt0133122,tt13432484
nm0001207	José Ferrer	1912	1992	actor,director,miscellaneous	tt0042367,tt0046816,tt0087182,tt0044926
nm0001208	Miguel Ferrer	1955	2017	actor,director,cinematographer	tt0284718,tt0181865,tt0105665,tt0093870
nm0001209	William Fichtner	1956	\N	actor,producer,director	tt0375679,tt1502404,tt0265086,tt0120591
nm0001210	Chelsea Field	1957	\N	actress,miscellaneous,archive_footage	tt0093507,tt0088944,tt0102005,tt0102266
nm0001211	W.C. Fields	1880	1946	actor,writer,director	tt0025318,tt0025590,tt0033945,tt0032234
nm0001212	Joseph Fiennes	1970	\N	actor,producer,director	tt0138097,tt3231054,tt0127536,tt0379889
nm0001213	Harvey Fierstein	1952	\N	actor,writer,soundtrack	tt0116629,tt0107614,tt0109348,tt0120762
nm0001214	Mike Figgis	1948	\N	director,writer,composer	tt0113627,tt0096180,tt0220100,tt2265565
nm0001215	Albert Finney	1936	2019	actor,producer,director	tt0071877,tt0195685,tt0319061,tt0066344
nm0001216	Tara Fitzgerald	1967	\N	actress,director,music_department	tt1528100,tt0115744,tt0111201,tt0944947
nm0001217	Fionnula Flanagan	1941	\N	actress,producer,writer	tt0230600,tt0166396,tt1540133,tt0430105
nm0001218	Sean Patrick Flanery	1965	\N	actor,producer,writer	tt0114168,tt0144117,tt14537248,tt1477076
nm0001219	Gary Fleder	1965	\N	producer,director,miscellaneous	tt0114660,tt0313542,tt0160399,tt0119468
nm0001220	Ian Fleming	1908	1964	writer,miscellaneous,archive_footage	tt0381061,tt0055928,tt0059800,tt0086006
nm0001221	Louise Fletcher	1934	2022	actress,archive_footage	tt0073486,tt0114857,tt0093036,tt0139134
nm0001222	Calista Flockhart	1964	\N	actress,producer,soundtrack	tt0118254,tt0115685,tt4016454,tt0140379
nm0001223	Lara Flynn Boyle	1970	\N	actress,producer,soundtrack	tt0147612,tt0120912,tt0105793,tt0098936
nm0001224	Errol Flynn	1909	1959	actor,writer,producer	tt0029843,tt0026174,tt0040076,tt0034277
nm0001225	Nina Foch	1924	2008	actress,miscellaneous,director	tt0049833,tt0043278,tt0054331,tt0037932
nm0001226	James Foley	1953	2025	director,writer,producer	tt0090670,tt0098994,tt0104348,tt1856010
nm0001227	Megan Follows	1968	\N	actress,director,producer	tt0088727,tt0092571,tt0090021,tt0158466
nm0001228	Peter Fonda	1940	2019	actor,producer,director	tt0064276,tt0381849,tt0120402,tt0486946
nm0001229	Glenn Ford	1916	2006	actor,producer,soundtrack	tt0038559,tt0078346,tt0055312,tt0041300
nm0001230	Harrison Ford	1884	1957	actor,archive_footage	tt0016251,tt0017344,tt0017201,tt0008351
nm0001231	Claire Forlani	1971	\N	actress,producer,archive_footage	tt0119643,tt0132347,tt0460780,tt0117500
nm0001232	Milos Forman	1932	2018	director,writer,actor	tt0073486,tt0086879,tt0117318,tt0079261
nm0001233	Robert Forster	1941	2019	actor,producer,director	tt0119396,tt1033575,tt0166924,tt2302755
nm0001234	John Forsythe	1918	2010	actor,producer,soundtrack	tt0048750,tt0081856,tt0061809,tt0160127
nm0001235	William Forsythe	1955	\N	actor,producer,writer	tt0093822,tt0395584,tt0099422,tt0114660
nm0001236	Meg Foster	1948	\N	actress,archive_footage	tt0096256,tt0093507,tt0097737,tt1731697
nm0001237	Samantha Fox	1950	2020	actress,miscellaneous,archive_footage	tt0079356,tt0081622,tt0081986,tt0084842
nm0001238	Jesús Franco	1930	2013	writer,director,actor	tt0067846,tt0086428,tt0072904,tt0109441
nm0001239	John Frankenheimer	1930	2002	director,miscellaneous,producer	tt0056218,tt0116654,tt0058576,tt0119189
nm0001240	Dennis Franz	1944	\N	actor,writer,producer	tt0106079,tt0120632,tt0099423,tt0082085
nm0001241	Stephen Frears	1941	\N	director,producer,actor	tt0094947,tt2431286,tt0436697,tt0301199
nm0001242	Matt Frewer	1958	\N	actor,writer,producer	tt0409459,tt2120120,tt0119282,tt0097523
nm0001243	William Friedkin	1935	2023	director,writer,producer	tt0090180,tt0067116,tt0070047,tt0080569
nm0001244	Sadie Frost	1965	\N	actress,producer,director	tt0103874,tt0346156,tt0199727,tt0211577
nm0001245	Mira Furlan	1955	2021	actress,archive_footage	tt0105946,tt0091398,tt0120711,tt0121804
nm0001246	Dan Futterman	1967	\N	actor,producer,writer	tt0379725,tt0829459,tt0115685,tt0835434
nm0001247	Eva Gabor	1919	1995	actress,soundtrack,archive_footage	tt0076618,tt0058808,tt0065421,tt0100477
nm0001248	Zsa Zsa Gabor	1917	2016	actress,soundtrack,archive_footage	tt0102510,tt0093629,tt0052311,tt0052104
nm0001249	Monique Gabrielle	1962	\N	actress,producer,executive	tt0092962,tt0092860,tt0086927,tt0106278
nm0001250	Charlotte Gainsbourg	1971	\N	actress,writer,composer	tt2382009,tt0870984,tt1527186,tt1937390
nm0001251	Peter Gallagher	1955	\N	actor,writer,soundtrack	tt0169547,tt0362359,tt0280590,tt0114924
nm0001252	Vincent Gallo	1961	\N	actor,director,producer	tt0118789,tt0330099,tt0106307,tt1561768
nm0001253	Mason Gamble	1986	\N	actor,archive_footage	tt0106701,tt0128445,tt0119177,tt0117723
nm0001254	James Gandolfini	1961	2013	actor,producer,soundtrack	tt0141842,tt2390361,tt0113161,tt1764234
nm0001255	Victor Garber	1949	\N	actor,miscellaneous,music_department	tt1024648,tt0285333,tt0120338,tt0250494
nm0001256	Greta Garbo	1905	1990	actress,soundtrack,archive_footage	tt0031725,tt0022958,tt0026071,tt0028683
nm0001257	Ava Gardner	1922	1990	actress,soundtrack,archive_footage	tt0058404,tt0046085,tt0053137,tt0044030
nm0001258	James Garner	1928	2014	actor,producer,director	tt0332280,tt0057115,tt0071042,tt0186566
nm0001259	Jennie Garth	1972	\N	actress,producer,writer	tt0098749,tt0321018,tt0369910,tt0985692
nm0001260	John Gavin	1931	2018	actor,soundtrack,archive_footage	tt0054215,tt0054331,tt0052296,tt0062362
nm0001261	Rebecca Gayheart	1971	\N	actress,director,archive_footage	tt0146336,tt0155776,tt0119807,tt7131622
nm0001262	Ben Gazzara	1930	2012	actor,director,writer	tt0098206,tt0052561,tt0118715,tt0074749
nm0001263	Jason Gedrick	\N	\N	actor,director,writer	tt1578887,tt3502248,tt0773262,tt0101393
nm0001264	Sarah Michelle Gellar	1977	\N	actress,producer,editorial_department	tt0118276,tt0139134,tt0267913,tt0119345
nm0001265	Susan George	1950	\N	actress,producer,music_department	tt0067800,tt0071424,tt0073349,tt0082332
nm0001266	Gil Gerard	1943	\N	actor,producer,director	tt0077278,tt3799694,tt0075648,tt1277731
nm0001267	Balthazar Getty	1975	\N	actor,producer,music_department	tt0100054,tt0116922,tt0426459,tt0100994
nm0001268	Estelle Getty	1923	2008	actress,soundtrack,archive_footage	tt0088526,tt0105477,tt0093493,tt0164912
nm0001269	Cynthia Gibb	1963	\N	actress,director,producer	tt0083412,tt0091886,tt0107065,tt0096101
nm0001270	Brian Gibson	1944	2004	director,producer,writer	tt0080469,tt0318224,tt0120679,tt0165592
nm0001271	Melissa Gilbert	1964	\N	actress,producer,director	tt0071007,tt8650976,tt0087630,tt8205246
nm0001272	Annabeth Gish	1971	\N	actress,archive_footage	tt0095690,tt0115639,tt0113987,tt3174376
nm0001273	Lillian Gish	1893	1993	actress,writer,director	tt0048424,tt0019585,tt0014605,tt0094315
nm0001274	Paul Michael Glaser	1943	\N	actor,producer,director	tt0072567,tt0067093,tt0335438,tt0093894
nm0001275	Philip Glass	1937	\N	composer,music_department,writer	tt0274558,tt0443543,tt0120382,tt0119485
nm0001276	Jackie Gleason	1916	1987	music_department,actor,writer	tt0054997,tt0076729,tt0042114,tt0081529
nm0001277	Scott Glenn	1939	\N	actor,producer,stunts	tt0099810,tt0101393,tt0978764,tt0102926
nm0001278	John Glover	1944	\N	actor,miscellaneous,soundtrack	tt0096061,tt0099700,tt0120784,tt0118688
nm0001279	William Goldman	1931	2018	writer,script_department,miscellaneous	tt0064115,tt0074119,tt0093779,tt0074860
nm0001280	Jenette Goldstein	1960	\N	actress,archive_footage	tt0090605,tt0103064,tt0093605,tt0111280
nm0001281	Bobcat Goldthwait	1962	\N	director,actor,writer	tt1912398,tt0096061,tt0102898,tt0119282
nm0001282	Tony Goldwyn	1960	\N	actor,director,writer	tt0099653,tt0216216,tt0325710,tt0472399
nm0001283	Louis Gossett Jr.	1936	2024	actor,producer,director	tt0084434,tt0089092,tt0085750,tt0075572
nm0001284	Michael Gough	1916	2011	actor,archive_footage,archive_sound	tt0112462,tt0118688,tt0096895,tt0088286
nm0001285	Elliott Gould	1938	\N	actor,producer,soundtrack	tt0066026,tt0240772,tt0070334,tt0077294
nm0001286	Elizabeth Gracen	1961	\N	actress,producer,director	tt0103442,tt2866360,tt0144714,tt8947100
nm0001287	Heather Graham	1970	\N	actress,producer,director	tt0118749,tt0145660,tt0131325,tt0120738
nm0001288	Kelsey Grammer	1955	\N	producer,actor,music_department	tt0083399,tt0106004,tt2109248,tt0376994
nm0001289	Stewart Granger	1913	1993	actor,archive_footage	tt0042646,tt0045125,tt0045329,tt0039195
nm0001290	Richard E. Grant	1957	\N	actor,director,writer	tt0280707,tt4595882,tt0102070,tt0094336
nm0001291	Rupert Graves	1963	\N	actor,writer,director	tt1475582,tt0434409,tt0093512,tt0795368
nm0001292	Erin Gray	1950	\N	actress,talent_agent,producer	tt0077278,tt0107254,tt1053835,tt0078579
nm0001293	Seth Green	1974	\N	actor,writer,producer	tt0437745,tt0317740,tt0118655,tt0320244
nm0001294	Graham Greene	1904	1991	writer,actor,producer	tt0040338,tt0258068,tt0041959,tt0172396
nm0001295	Graham Greene	1952	2025	actor,writer,producer	tt0120689,tt5362988,tt0099348,tt0112864
nm0001296	Lorne Greene	1915	1987	actor,producer,miscellaneous	tt0052451,tt0077215,tt0076984,tt0071455
nm0001297	Joel Grey	1932	\N	actor,camera_department,soundtrack	tt0068327,tt0089901,tt0168629,tt1024715
nm0001298	Richard Grieco	1965	\N	actor,producer,director	tt0102095,tt4702194,tt8804580,tt0120770
nm0001299	Thomas Ian Griffith	1962	\N	actor,producer,writer	tt0120877,tt0097647,tt0113313,tt0295701
nm0001300	John Grisham	1955	\N	writer,producer,actor	tt0313542,tt0119978,tt0117913,tt0106918
nm0001301	Charles Grodin	1935	2021	actor,writer,director	tt0095631,tt0068687,tt0074751,tt0081480
nm0001302	Christopher Guest	1948	\N	actor,writer,director	tt0088258,tt0118111,tt0310281,tt0218839
nm0001303	Carla Gugino	1971	\N	actress,producer,soundtrack	tt0409459,tt3748172,tt0120832,tt0978764
nm0001304	Fred Gwynne	1926	1993	actor,writer,soundtrack	tt0104952,tt0098084,tt0054528,tt0087089
nm0001305	Lukas Haas	1976	\N	actor,music_department,soundtrack	tt1375666,tt0090329,tt0116996,tt0095484
nm0001306	Larry Hagman	1931	2012	actor,producer,director	tt0077000,tt0078346,tt0058083,tt0113987
nm0001307	Stacy Haiduk	1968	\N	actress,producer,archive_footage	tt0069658,tt0058796,tt0100688,tt0094559
nm0001308	Alan Hale Jr.	1921	1990	actor,soundtrack,archive_footage	tt0057751,tt0082502,tt0073043,tt0061747
nm0001309	Anthony Michael Hall	1968	\N	actor,producer,director	tt4758646,tt2361317,tt1100089,tt0468569
nm0001310	Kevin Peter Hall	1955	1991	actor,miscellaneous,soundtrack	tt0100403,tt0093773,tt0093148,tt0088568
nm0001311	Philip Baker Hall	1931	2022	actor,soundtrack,archive_footage	tt0175880,tt0118749,tt0119256,tt0120812
nm0001312	Geri Horner	1972	\N	actress,writer,director	tt0120185,tt1121931,tt4495098,tt0243155
nm0001313	George Hamilton	1939	\N	actor,producer,soundtrack	tt0083366,tt0079489,tt0099674,tt0278823
nm0001314	John Hannah	1962	\N	actor,producer,archive_footage	tt0109831,tt0120616,tt0859163,tt1442449
nm0001315	Marcia Gay Harden	1959	\N	actress,producer,archive_footage	tt0327056,tt0884328,tt0183659,tt0758758
nm0001316	Oliver Hardy	1892	1957	actor,miscellaneous,director	tt0029923,tt0024852,tt0033022,tt0024601
nm0001317	Renny Harlin	1959	\N	producer,director,writer	tt0132245,tt1905040,tt0106582,tt0112760
nm0001318	Jean Harlow	1911	1937	actress,soundtrack,archive_footage	tt0023382,tt0023825,tt0024130,tt0023385
nm0001319	Mark Harmon	1951	\N	actor,producer,director	tt0364845,tt0360139,tt0322330,tt0094072
nm0001320	Valerie Harper	1939	2019	actress,writer,producer	tt0065314,tt0071040,tt0086973,tt0071521
nm0001321	Richard Harris	1930	2002	actor,producer,director	tt0105695,tt0172495,tt0061439,tt0245844
nm0001322	Rex Harrison	1908	1990	actor,producer,soundtrack	tt0058385,tt0056937,tt0039420,tt0061584
nm0001323	Debbie Harry	1945	\N	actress,composer,producer	tt0086541,tt0095270,tt0314412,tt0100740
nm0001324	Ian Hart	1964	\N	actor,writer,miscellaneous	tt0241527,tt0106339,tt0120660,tt5797184
nm0001325	Hal Hartley	1959	\N	director,producer,writer	tt0103130,tt0444628,tt0388973,tt0100842
nm0001326	Josh Hartnett	1978	\N	actor,producer,archive_footage	tt0425210,tt0389722,tt0265086,tt0387877
nm0001327	David Hasselhoff	1952	\N	actor,producer,writer	tt0096542,tt0083437,tt1714203,tt3896198
nm0001328	Howard Hawks	1896	1977	director,producer,writer	tt0053221,tt0040724,tt0061619,tt0037382
nm0001329	Nigel Hawthorne	1929	2001	actor,producer,archive_footage	tt0110428,tt0106697,tt0120772,tt0080306
nm0001330	Sterling Hayden	1916	1986	actor,writer,soundtrack	tt0057012,tt0049406,tt0068646,tt0070334
nm0001331	Todd Haynes	1961	\N	director,producer,writer	tt0297884,tt0368794,tt2402927,tt0120879
nm0001332	Robert Hays	1947	\N	actor,producer,director	tt0080339,tt0083530,tt0426592,tt0088889
nm0001333	Susan Hayward	1917	1975	actress,soundtrack,archive_footage	tt0051758,tt0045333,tt0041672,tt0048191
nm0001334	John Heard	1946	2017	actor,producer,soundtrack	tt0094737,tt0406816,tt0099077,tt0099785
nm0001335	Tippi Hedren	1930	\N	actress,producer,archive_footage	tt0056869,tt0058329,tt0083001,tt0356721
nm0001336	Van Heflin	1908	1971	actor,soundtrack,archive_footage	tt0046303,tt0038988,tt0036275,tt0039725
nm0001337	Katherine Heigl	1978	\N	actress,producer,soundtrack	tt1598828,tt0478311,tt1142988,tt0413573
nm0001338	Brian Helgeland	\N	\N	director,writer,producer	tt7991508,tt0453562,tt0328107,tt0183790
nm0001339	Marg Helgenberger	1958	\N	actress,archive_footage	tt0247082,tt0195685,tt0385267,tt0114508
nm0001340	Katherine Helmond	1929	2019	actress,director,archive_footage	tt0075584,tt0093693,tt0086827,tt0088846
nm0001341	Florence Henderson	1934	2016	actress,producer,writer	tt0063878,tt0075485,tt0112572,tt0102898
nm0001342	Jimi Hendrix	1942	1970	music_artist,music_department,composer	tt0066580,tt1131729,tt0409459,tt3450958
nm0001343	Carrie Henn	1976	\N	actress,archive_footage	tt0090605,tt4885144,tt10533976,tt0297720
nm0001344	Gregg Henry	\N	\N	actor,music_department,producer	tt2015381,tt0120784,tt0439815,tt1837576
nm0001345	Jim Henson	1936	1990	actor,writer,producer	tt0074028,tt0063951,tt0083791,tt0079588
nm0001346	Edward Herrmann	1943	2014	actor,miscellaneous,soundtrack	tt0093693,tt0093437,tt0082979,tt0113987
nm0001347	Barbara Hershey	1948	\N	actress,soundtrack,archive_footage	tt0947798,tt0091167,tt1591095,tt0331811
nm0001348	Werner Herzog	1942	\N	director,writer,producer	tt0083946,tt0068182,tt0790724,tt0427312
nm0001349	Jennifer Love Hewitt	1979	\N	actress,producer,director	tt0119345,tt0130018,tt0290095,tt0125022
nm0001350	Benny Hill	1924	1992	writer,actor,music_department	tt0063869,tt0064505,tt0062803,tt0059797
nm0001351	George Roy Hill	1921	2002	director,actor,writer	tt0070735,tt0064115,tt0076723,tt0069280
nm0001352	Terence Hill	1939	\N	actor,director,miscellaneous	tt0067355,tt0069697,tt0070215,tt0057091
nm0001353	Walter Hill	1942	\N	producer,writer,director	tt0083511,tt0090605,tt0088194,tt0103644
nm0001354	Ciarán Hinds	1953	\N	actor,soundtrack,archive_footage	tt12789558,tt1596365,tt1340800,tt2294629
nm0001355	Michael Hoffman	1956	\N	director,writer,producer	tt0140379,tt0824758,tt0095916,tt0117247
nm0001356	Hulk Hogan	1953	2025	actor,producer,soundtrack	tt0084602,tt0097987,tt0103003,tt0099700
nm0001357	Paul Hogan	1939	\N	actor,writer,producer	tt0090555,tt0092493,tt0231402,tt0099018
nm0001358	Hal Holbrook	1925	2021	actor,director,writer	tt0758758,tt0443272,tt0077294,tt0074119
nm0001359	Sterling Holloway	1905	1992	actor,miscellaneous,soundtrack	tt0076363,tt0061852,tt0043274,tt0065421
nm0001360	John Holmes	1944	1988	actor,production_manager,assistant_director	tt0125269,tt0128724,tt0124491,tt0127170
nm0001361	Tobe Hooper	1943	2017	director,writer,producer	tt0072271,tt0092076,tt0084516,tt0089489
nm0001362	Bob Hope	1903	2003	actor,producer,writer	tt0039645,tt0032520,tt0038032,tt0033963
nm0001363	Jane Horrocks	1964	\N	actress,writer,music_department	tt0100024,tt0147004,tt0121164,tt0120630
nm0001364	Bob Hoskins	1942	2014	actor,director,producer	tt0081070,tt0091538,tt0096438,tt0108255
nm0001365	Whitney Houston	1963	2012	music_artist,actress,producer	tt0103855,tt0117372,tt0114885,tt0120794
nm0001366	Leslie Howard	1893	1943	actor,producer,director	tt0030637,tt0029058,tt0031381,tt0034027
nm0001367	C. Thomas Howell	1966	\N	actor,producer,director	tt0086066,tt0091209,tt0083866,tt0107007
nm0001368	Ernie Hudson	1945	\N	actor,producer,writer	tt0087332,tt7146326,tt0097428,tt0109506
nm0001369	Rock Hudson	1925	1985	actor,producer,soundtrack	tt0049261,tt0053172,tt0055100,tt0054759
nm0001370	Finola Hughes	1959	\N	actress,director,producer	tt1758692,tt0056758,tt0086361,tt0065272
nm0001371	Tom Hulce	1953	\N	actor,producer,sound_department	tt0086879,tt0116583,tt0077975,tt0098067
nm0001372	Bonnie Hunt	1961	\N	producer,writer,actress	tt0113497,tt2948356,tt0120689,tt0116695
nm0001373	Linda Hunt	1945	\N	actress,soundtrack,archive_footage	tt0086617,tt0087182,tt0099938,tt0114148
nm0001374	Jeffrey Hunter	1926	1969	actor,producer,soundtrack	tt0049730,tt0055047,tt0049279,tt0060311
nm0001375	Kim Hunter	1922	2002	actress,soundtrack,archive_footage	tt0044081,tt0038733,tt0063442,tt0067065
nm0001376	Isabelle Huppert	1953	\N	actress,music_department,producer	tt3716530,tt0254686,tt0283832,tt4120176
nm0001377	Olivia Hussey	1951	2024	actress,soundtrack,archive_footage	tt0063518,tt0071222,tt0077413,tt0099864
nm0001378	Anjelica Huston	1951	\N	actress,producer,director	tt0099703,tt0100944,tt0120631,tt0089841
nm0001379	John Huston	1906	1987	actor,director,writer	tt0040897,tt0071315,tt0042208,tt0089841
nm0001380	Jim Hutton	1934	1979	actor,archive_footage	tt0063035,tt0054469,tt0059250,tt0063060
nm0001381	Lauren Hutton	1943	\N	producer,actress,soundtrack	tt0080365,tt0089730,tt0120577,tt0083366
nm0001382	Peter Hyams	1943	\N	director,cinematographer,writer	tt0086837,tt0082869,tt0111438,tt0120004
nm0001383	David Hyde Pierce	1959	\N	actor,producer,writer	tt0106004,tt0120623,tt0309530,tt0243655
nm0001384	Ice-T	1958	\N	actor,producer,composer	tt0102526,tt0111323,tt0114614,tt0113481
nm0001385	Eric Idle	1943	\N	actor,writer,music_department	tt0071853,tt0085959,tt0079470,tt0096764
nm0001386	Natalie Imbruglia	1975	\N	actress,music_department,director	tt0274166,tt0139239,tt0775080,tt0245574
nm0001387	Kathy Ireland	1963	\N	actress,soundtrack,archive_footage	tt0107659,tt0092532,tt0102517,tt0105151
nm0001388	Amy Irving	1953	\N	actress,music_department,producer	tt0181865,tt0074285,tt1185836,tt0094921
nm0001389	Chris Isaak	1956	\N	music_artist,actor,producer	tt0105665,tt0100935,tt0120663,tt0107426
nm0001390	Janet Jackson	1966	\N	music_artist,actress,composer	tt0107840,tt0144528,tt0906108,tt1391137
nm0001391	Michael Jackson	1958	2009	music_artist,actor,composer	tt0095655,tt1477715,tt0078504,tt0120912
nm0001392	Peter Jackson	1961	\N	producer,director,writer	tt0120737,tt0092610,tt0360717,tt0110005
nm0001393	Irène Jacob	1966	\N	actress,executive,archive_footage	tt0101765,tt0111495,tt0092593,tt0120873
nm0001394	Derek Jacobi	1938	\N	actor,producer,soundtrack	tt0280707,tt0172495,tt0101669,tt1521197
nm0001395	Richard Jaeckel	1926	1997	actor,soundtrack,archive_footage	tt0088172,tt0061578,tt0083530,tt0070518
nm0001396	Mick Jagger	1943	\N	music_artist,composer,producer	tt0375173,tt0104299,tt5875444,tt0066214
nm0001397	Brion James	1945	1999	actor,producer,archive_footage	tt0083658,tt0119116,tt0108238,tt0099044
nm0001398	Jenna Jameson	1974	\N	actress,producer,director	tt0368859,tt0960890,tt0119951,tt0317688
nm0001399	Marianne Jean-Baptiste	1967	\N	actress,director,producer	tt0321021,tt0117589,tt0266987,tt11891850
nm0001400	Michelle Johnson	1965	\N	actress,archive_footage	tt0086973,tt0104070,tt0104231,tt0096426
nm0001401	Angelina Jolie	1975	\N	actress,producer,director	tt1587310,tt0172493,tt0824747,tt0146316
nm0001402	Terry Jones	1942	2020	writer,actor,producer	tt0085959,tt0071853,tt0079470,tt0118172
nm0001403	Neil Jordan	1950	\N	writer,producer,director	tt0104036,tt0411195,tt2639336,tt0117039
nm0001404	Madeline Kahn	1942	1999	actress,soundtrack,archive_footage	tt0070510,tt0069495,tt0072431,tt0088930
nm0001405	Janusz Kaminski	1959	\N	cinematographer,camera_department,director	tt0181689,tt3581652,tt0108052,tt0120815
nm0001406	Carol Kane	1952	\N	actress,producer,soundtrack	tt0093779,tt0106220,tt0096061,tt0395699
nm0001407	Mitzi Kapture	1962	\N	actress,director,producer	tt0101198,tt4560374,tt0094656,tt0096542
nm0001408	Shekhar Kapur	1945	\N	director,actor,producer	tt0127536,tt0414055,tt0109206,tt0240510
nm0001409	Tchéky Karyo	1953	\N	actor,soundtrack,archive_footage	tt0100263,tt0298814,tt0187393,tt0112442
nm0001410	Lawrence Kasdan	1949	\N	writer,producer,director	tt0085244,tt0090022,tt0111756,tt0082971
nm0001411	William Katt	1951	\N	actor,director,writer	tt0756683,tt0074285,tt0091223,tt0081871
nm0001412	Andy Kaufman	1949	1984	actor,writer,composer	tt0077089,tt0082507,tt0125664,tt0080917
nm0001413	Julie Kavner	1950	\N	actress,soundtrack,archive_footage	tt0096697,tt0462538,tt0389860,tt0091167
nm0001414	Danny Kaye	1911	1987	actor,director,music_department	tt0056748,tt0049096,tt0047673,tt0039808
nm0001415	Elia Kazan	1909	2003	director,writer,producer	tt0047296,tt0048028,tt0044081,tt0056825
nm0001416	Catherine Keener	1959	\N	actress,producer,casting_department	tt0120601,tt0379725,tt0405422,tt5052448
nm0001417	Brian Keith	1921	1997	actor,director,soundtrack	tt0055277,tt0096487,tt0073906,tt0062185
nm0001418	David Keith	1954	\N	actor,music_department,director	tt0084434,tt0159273,tt0287978,tt0113419
nm0001419	Sally Kellerman	1937	2022	actress,miscellaneous,producer	tt0066026,tt0090685,tt0110907,tt0120784
nm0001420	DeForest Kelley	1920	1999	actor,soundtrack,archive_footage	tt0060028,tt0098382,tt0102975,tt0084726
nm0001421	George Kennedy	1925	2016	actor,miscellaneous,soundtrack	tt0061512,tt0072288,tt0065377,tt0095705
nm0001422	Persis Khambatta	1948	1998	actress,producer,archive_footage	tt0079945,tt0093731,tt0084316,tt0088380
nm0001423	Richard Kiel	1939	2014	actor,writer,producer	tt0079574,tt0116483,tt0398286,tt0089767
nm0001424	Udo Kier	\N	\N	actor,writer,producer	tt30333632,tt27847051,tt7456722,tt10832274
nm0001425	Krzysztof Kieslowski	1941	1996	writer,director,actor	tt0101765,tt0108394,tt0111495,tt0095467
nm0001426	Ben Kingsley	1943	\N	actor,producer,miscellaneous	tt0203119,tt0083987,tt0108052,tt0315983
nm0001427	Greg Kinnear	1963	\N	actor,producer,writer	tt0119822,tt0449059,tt0114319,tt0128853
nm0001428	Klaus Kinski	1926	1991	actor,writer,miscellaneous	tt0079641,tt0068182,tt0083946,tt0059578
nm0001429	Takeshi Kitano	1947	\N	actor,writer,director	tt0363226,tt0119250,tt0108188,tt0199683
nm0001430	Jack Klugman	1922	2012	actor,writer,director	tt0050083,tt0065329,tt0074042,tt0055895
nm0001431	Wayne Knight	1955	\N	actor,soundtrack,archive_footage	tt0107290,tt0092890,tt0250687,tt0098904
nm0001432	Charlie Korsmo	1978	\N	actor,archive_footage	tt0102057,tt0099422,tt0127723,tt0103241
nm0001433	Yaphet Kotto	1939	2021	actor,writer,director	tt0078748,tt0070328,tt0095631,tt0106028
nm0001434	Kris Kristofferson	1936	2024	music_artist,actor,composer	tt0120611,tt0120784,tt0187738,tt0075265
nm0001435	Lisa Kudrow	1963	\N	actress,producer,writer	tt0108778,tt0434672,tt0120777,tt1282140
nm0001436	Swoosie Kurtz	1944	\N	actress,soundtrack,archive_footage	tt0258470,tt0119528,tt0292644,tt0110950
nm0001437	Emir Kusturica	1954	\N	director,writer,actor	tt0106307,tt0114787,tt0118843,tt0097223
nm0001438	Neil LaBute	1963	\N	writer,producer,director	tt0119361,tt0119517,tt4277268,tt18224610
nm0007621	Rami Abadi	\N	\N	sound_department	tt0089473,tt0262955
nm0001439	Anthony LaPaglia	1959	\N	actor,producer,writer	tt0321021,tt0259393,tt0112950,tt0108174
nm0001440	Cheryl Ladd	1951	\N	actress,writer,music_department	tt0105156,tt0097883,tt3462710,tt0073972
nm0001441	Christine Lahti	1950	\N	actress,director,miscellaneous	tt0108724,tt0096018,tt0410997,tt0078718
nm0001442	Ricki Lake	1968	\N	actress,producer,soundtrack	tt0111127,tt0095270,tt0099329,tt0427327
nm0001443	Hedy Lamarr	1914	2000	actress,producer,miscellaneous	tt0038990,tt0033477,tt0041838,tt0037769
nm0001444	Lorenzo Lamas	1958	\N	actor,producer,director	tt0086985,tt0077631,tt0081858,tt0493406
nm0001445	Martin Landau	1928	2017	actor,producer,miscellaneous	tt0109707,tt0097123,tt0053125,tt0096316
nm0001446	Michael Landon	1936	1991	actor,producer,writer	tt0071007,tt0052451,tt0086730,tt0087631
nm0001447	Nathan Lane	1956	\N	actor,producer,soundtrack	tt0395251,tt0115685,tt0110357,tt0119715
nm0001448	Jessica Lange	1949	\N	actress,producer,soundtrack	tt0084805,tt0074751,tt0082934,tt0078754
nm0001449	Frank Langella	1938	\N	actor,producer,soundtrack	tt0870111,tt1990314,tt1070874,tt0362478
nm0001450	Angela Lansbury	1925	2022	actress,producer,executive	tt0056218,tt0086765,tt0077413,tt0036855
nm0001451	Queen Latifah	1970	\N	actress,producer,music_department	tt0299658,tt0427327,tt0316732,tt0305669
nm0001452	Charles Laughton	1899	1962	actor,writer,producer	tt0026752,tt0051201,tt0054331,tt0031455
nm0001453	Piper Laurie	1932	2023	actress,director,soundtrack	tt0054997,tt0074285,tt0098936,tt0089908
nm0001454	Martin Lawrence	1965	\N	actor,writer,producer	tt0103488,tt0172156,tt4919268,tt0112442
nm0001455	Matt LeBlanc	1967	\N	actor,producer,soundtrack	tt0108778,tt0120738,tt1582350,tt0375355
nm0001456	Kelly LeBrock	1960	\N	actress,archive_footage	tt0090305,tt0099739,tt0120901,tt0088414
nm0001457	James Le Gros	1962	\N	actor,producer,stunts	tt0097240,tt1492030,tt4468634,tt30319516
nm0001458	Cloris Leachman	1926	2021	actress,soundtrack,archive_footage	tt0067328,tt0072431,tt0371246,tt0481499
nm0001459	Denis Leary	1957	\N	writer,actor,producer	tt0381798,tt0155267,tt0110955,tt0106697
nm0001460	Mimi Leder	1952	\N	producer,director,script_department	tt7203552,tt4669788,tt0120647,tt0119874
nm0001461	Virginie Ledoyen	1976	\N	actress,producer,soundtrack	tt0283832,tt0163978,tt0109702,tt0123923
nm0001462	Jason Scott Lee	1966	\N	actor,archive_footage	tt0106770,tt0096874,tt0275847,tt4566758
nm0001463	Janet Leigh	1927	2004	actress,producer,miscellaneous	tt0054215,tt0056218,tt0052311,tt0080749
nm0001464	Kay Lenz	1953	\N	actress,producer,miscellaneous	tt0091223,tt0069822,tt0094510,tt0078349
nm0001465	Elmore Leonard	1925	2013	writer,producer,miscellaneous	tt0120780,tt0113161,tt1489428,tt0119396
nm0001466	Sergio Leone	1929	1989	assistant_director,writer,director	tt0087843,tt0067140,tt0064116,tt0060196
nm0001467	Jared Leto	1971	\N	actor,producer,director	tt0790636,tt0485947,tt1386697,tt5108870
nm0001468	David Letterman	1947	\N	writer,producer,actor	tt0106053,tt0083441,tt0115641,tt0119951
nm0001469	Barry Levinson	1942	\N	producer,writer,director	tt0095953,tt0101516,tt0120885,tt1933667
nm0001470	Charlotte Lewis	1967	\N	actress,archive_footage	tt0091129,tt0110490,tt0098758,tt2311530
nm0001471	Jerry Lewis	1926	2017	actor,writer,director	tt0057372,tt0085794,tt0106307,tt0055069
nm0001472	Jet Li	1963	\N	actor,producer,miscellaneous	tt0446059,tt0267804,tt0913968,tt0271027
nm0001473	Laura Linney	1964	\N	actress,producer,miscellaneous	tt1515193,tt0775529,tt0362269,tt0203230
nm0001474	Tom Lister Jr.	1958	2020	actor,producer,archive_footage	tt0119116,tt0113118,tt0468569,tt0119396
nm0001475	John Lithgow	1945	\N	actor,producer,writer	tt0084917,tt0106582,tt0086856,tt2639344
nm0001476	Cleavon Little	1939	1992	actor,soundtrack,archive_footage	tt0071230,tt0067927,tt0089730,tt0346222
nm0001477	Robyn Lively	1972	\N	actress,producer,archive_footage	tt0098453,tt0097647,tt0092214,tt1462054
nm0001478	June Lockhart	1925	\N	actress,soundtrack,archive_footage	tt0058824,tt0120738,tt0038934,tt0039230
nm0001479	Carole Lombard	1908	1942	actress,soundtrack,archive_footage	tt0028010,tt0035446,tt0029322,tt0026452
nm0001480	Shelley Long	1949	\N	actress,producer,miscellaneous	tt0083399,tt0098519,tt0091541,tt0093175
nm0001481	Tina Louise	1934	\N	actress,soundtrack,archive_footage	tt0057751,tt0051666,tt0073747,tt0054263
nm0001482	Courtney Love	1964	\N	actress,composer,producer	tt0117318,tt0280380,tt0125664,tt0091954
nm0001483	Linda Lovelace	1949	2002	actress,miscellaneous,archive_footage	tt0068468,tt0069957,tt1426329,tt21146780
nm0001484	Jon Lovitz	1957	\N	actor,writer,producer	tt0147612,tt0104694,tt0250687,tt0107659
nm0001485	Myrna Loy	1905	1993	actress,soundtrack,archive_footage	tt0025878,tt0040613,tt0027260,tt0031047
nm0001486	Sidney Lumet	1924	2011	director,writer,producer	tt0050083,tt0292963,tt0071877,tt0070666
nm0001487	John Lynch	1961	\N	actor,writer,assistant_director	tt1181791,tt0108071,tt0181311,tt0107207
nm0001488	Kelly Lynch	1959	\N	actress,archive_footage	tt0097240,tt0098206,tt0160127,tt1832045
nm0001489	Paul Lynde	1926	1982	actor,writer,soundtrack	tt0056891,tt0070016,tt0058571,tt0059995
nm0001490	Adrian Lyne	1941	\N	director,writer,producer	tt0099871,tt0085549,tt0107211,tt0093010
nm0001491	Melanie Lynskey	1977	\N	actress,soundtrack,archive_footage	tt3061830,tt0110005,tt1193138,tt4872078
nm0001492	Kyle MacLachlan	1959	\N	actor,director,soundtrack	tt4093826,tt0087182,tt1780441,tt0090756
nm0001493	Peter MacNicol	1954	\N	actor,director,writer	tt0084707,tt0118254
nm0001494	Ralph Macchio	1961	\N	actor,producer,director	tt0087538,tt0097647,tt0086066,tt0104952
nm0001495	Patrick Macnee	1922	2015	actor,costume_department,producer	tt0054518,tt0082533,tt0090264,tt0088258
nm0001496	Amy Madigan	1950	\N	actress,producer,soundtrack	tt0088194,tt0097351,tt0098554,tt0452623
nm0001497	Tobey Maguire	1975	\N	actor,producer,executive	tt0765010,tt0145487,tt0185014,tt0120789
nm0001498	John Mahoney	1940	2018	actor,producer,soundtrack	tt0106004,tt0093565,tt0101410,tt0817177
nm0001499	Tina Majorino	1985	\N	actress,soundtrack,archive_footage	tt0374900,tt2771372,tt0114898,tt0109484
nm0001500	Karl Malden	1912	2009	actor,director,soundtrack	tt0044081,tt0047296,tt0066206,tt0048973
nm0001501	Louis Malle	1932	1995	director,writer,producer	tt0092593,tt0051378,tt0071733,tt0080388
nm0001502	Luis Mandoki	1954	\N	director,producer,writer	tt0387914,tt0225071,tt0280380,tt2062575
nm0001503	Dinah Manoff	1956	\N	actress,director,writer	tt0077631,tt0094862,tt0094455,tt0081283
nm0001504	Marilyn Manson	1969	\N	music_artist,actor,composer	tt0165710,tt0133093,tt2911666,tt0114558
nm0001505	Joe Mantegna	1947	\N	actor,producer,director	tt0099674,tt0108065,tt0109190,tt0109068
nm0001506	Jane March	1973	\N	actress,producer,archive_footage	tt0109456,tt0101316,tt0800320,tt0338769
nm0001507	Cheech Marin	1946	\N	actor,writer,producer	tt0092690,tt0117918,tt0078446,tt0115285
nm0001508	Penny Marshall	1943	2018	actress,director,producer	tt0074016,tt0094737,tt0104694,tt0099077
nm0001509	Dean Martin	1917	1995	music_artist,actor,producer	tt0058797,tt0060980,tt0060728,tt0053221
nm0001510	Strother Martin	1919	1980	actor,soundtrack,archive_footage	tt0076723,tt0061512,tt0065214,tt0065126
nm0001511	Lee Marvin	1924	1987	actor,miscellaneous,soundtrack	tt0061578,tt0064782,tt0059017,tt0060862
nm0001512	Mary Elizabeth Mastrantonio	1958	\N	actress,soundtrack,archive_footage	tt0096754,tt0102798,tt0177971,tt0164085
nm0001513	Tim Matheson	1947	\N	actor,director,producer	tt0077975,tt0200276,tt1832979,tt9077530
nm0001514	Victor Mature	1913	1999	actor,producer,soundtrack	tt0039536,tt0046247,tt0038762,tt0035103
nm0001515	Joseph Mazzello	1983	\N	actor,director,writer	tt0107290,tt1285016,tt0110997,tt0124879
nm0001516	Rue McClanahan	1934	2010	actress,producer,soundtrack	tt0088526,tt0120201,tt0103426,tt0068103
nm0001517	Catherine McCormack	1972	\N	actress,director,writer	tt0112573,tt0266987,tt0189998,tt0463854
nm0001518	Dylan McDermott	1961	\N	actor,producer,director	tt0118437,tt1659337,tt2302755,tt0098384
nm0001519	Ian McDiarmid	1944	\N	actor,archive_footage,archive_sound	tt0121766,tt0086190,tt0120915,tt2527338
nm0001520	Christopher McDonald	\N	\N	actor,producer,director	tt0103074,tt0110932,tt0116483,tt1582453
nm0001521	Mary McDonnell	1952	\N	actress,soundtrack,archive_footage	tt0407362,tt0246578,tt1615147,tt0099348
nm0001522	Roddy McDowall	1928	1998	actor,producer,director	tt0033729,tt0089175,tt0056937,tt0068408
nm0001523	Natascha McElhone	1969	\N	actress,producer,soundtrack	tt0307479,tt0122690,tt0120382,tt0488085
nm0001524	Paul McGann	1959	\N	actor,director,soundtrack	tt0108333,tt0103644,tt0094336,tt0238546
nm0001525	John C. McGinley	1959	\N	actor,producer,writer	tt0285403,tt0102685,tt0114369,tt0094291
nm0001526	Patrick McGoohan	1928	2009	actor,producer,director	tt0061287,tt0112573,tt0117913,tt0081455
nm0001527	Elizabeth McGovern	1961	\N	actress,producer,writer	tt0081283,tt6398184,tt0099731,tt3750872
nm0001528	Don McKellar	1963	\N	actor,director,writer	tt0156729,tt0861689,tt0120802,tt0120907
nm0001529	Nancy McKeon	1966	\N	actress,producer,director	tt0078610,tt0272376,tt0286283,tt0083913
nm0001530	William McNamara	\N	\N	actor,producer,director	tt0112722,tt0096171,tt11416582,tt0111323
nm0001531	Kristy McNichol	1962	\N	actress,producer,soundtrack	tt0081060,tt0084504,tt0096324,tt0082853
nm0001532	John McTiernan	1951	\N	director,producer,writer	tt0095016,tt0246894,tt0107362,tt0093773
nm0001533	Meat Loaf	1947	2022	music_artist,actor,producer	tt0073629,tt0137523,tt0227984,tt0120185
nm0001534	Michelle Meyrink	1962	\N	actress,archive_footage	tt0089886,tt0086066,tt0088000,tt0086525
nm0001535	Dale Midkiff	1959	\N	actor,producer,soundtrack	tt0098084,tt0345591,tt0132910,tt0106154
nm0001536	Toshirô Mifune	1920	1997	actor,producer,director	tt0055630,tt0047478,tt0057565,tt0050613
nm0001537	Ray Milland	1907	1986	actor,director,producer	tt0037884,tt0046912,tt0040160,tt0066011
nm0001538	Jonny Lee Miller	1972	\N	actor,director,producer	tt0297284,tt0402022,tt0178737,tt0219653
nm0001539	Hayley Mills	1946	\N	actress,soundtrack,archive_footage	tt0054195,tt0055277,tt0053361,tt0059793
nm0001540	Rachel Miner	1980	\N	actress,producer,archive_footage	tt0242193,tt0044265,tt1234541,tt0387877
nm0001541	Kylie Minogue	1968	\N	music_artist,actress,composer	tt1480165,tt0203009,tt0111301,tt0088580
nm0001542	Jay Mohr	1970	\N	actor,writer,producer	tt0139239,tt0116695,tt0223897,tt0180052
nm0001543	Gretchen Mol	1972	\N	actress,miscellaneous,soundtrack	tt0139809,tt0381849,tt0979432,tt4034228
nm0001544	Ricardo Montalban	1920	2009	actor,director,soundtrack	tt0084726,tt0095705,tt0067065,tt0068408
nm0001545	Dudley Moore	1935	2002	actor,writer,music_department	tt0082031,tt0078721,tt0076161,tt0077578
nm0001546	Mary Tyler Moore	1936	2017	actress,producer,director	tt0081283,tt0065314,tt0062362,tt0054533
nm0001547	Agnes Moorehead	1900	1974	actress,miscellaneous,soundtrack	tt0035015,tt0057733,tt0033467,tt0058213
nm0001548	Rick Moranis	1953	\N	actor,writer,producer	tt0098067,tt0091419,tt0094012,tt0087332
nm0001549	Rita Moreno	1931	\N	actress,producer,soundtrack	tt0055614,tt3581652,tt0049408,tt0118421
nm0001550	Cathy Moriarty	1960	\N	actress,soundtrack,archive_footage	tt0081398,tt0102951,tt1038919,tt0179116
nm0001551	Alanis Morissette	1974	\N	music_artist,actress,composer	tt0120655,tt0120632,tt0363771,tt0458352
nm0001552	Pat Morita	1932	2005	actor,writer,producer	tt0087538,tt0097647,tt0110657,tt0091326
nm0001553	Ennio Morricone	1928	2020	composer,music_department,actor	tt3460252,tt0094226,tt1924396,tt0120731
nm0001554	Errol Morris	1948	\N	director,producer,writer	tt0317910,tt0096257,tt0119107,tt28486633
nm0001555	Rob Morrow	1962	\N	actor,director,producer	tt0098878,tt0246072,tt0110932,tt0825232
nm0001556	David Morse	1953	\N	actor,producer,director	tt0120689,tt0887912,tt0117500,tt0816711
nm0001557	Viggo Mortensen	1958	\N	actor,producer,composer	tt3553976,tt0898367,tt0167260,tt0765443
nm0001558	Mr. T	1952	\N	actor,soundtrack,archive_footage	tt0084602,tt0084967,tt0844471,tt0277371
nm0001559	Audie Murphy	1924	1971	actor,producer,writer	tt0046906,tt0052002,tt0052135,tt0048729
nm0001560	Ornella Muti	1955	\N	actress,miscellaneous,archive_footage	tt0080745,tt0102603,tt0232114,tt0094892
nm0001561	Jim Nabors	1930	2017	actor,producer,music_department	tt0057752,tt0086379,tt0053479,tt0083642
nm0001562	Kathy Najimy	1957	\N	actress,producer,writer	tt0105417,tt0107120,tt0118375,tt0108147
nm0001563	Kitten Natividad	1948	2022	actress,producer,archive_footage	tt0099044,tt0090123,tt5489156,tt0078846
nm0001564	Bebe Neuwirth	1958	\N	actress,director,miscellaneous	tt0113497,tt0083399,tt0162677,tt0251127
nm0001565	Mike Newell	1942	\N	director,producer,executive	tt0109831,tt0330373,tt0119008,tt0104522
nm0001566	Mike Nichols	1931	2014	director,producer,miscellaneous	tt0061722,tt0376541,tt0061184,tt0115685
nm0001567	Connie Nielsen	1965	\N	actress,producer,writer	tt0172495,tt0265459,tt0451279,tt0264395
nm0001568	Lisa Niemi	1956	\N	actress,director,miscellaneous	tt0157191,tt0096094,tt0098917,tt0092402
nm0001569	Chuck Norris	1940	\N	actor,music_department,producer	tt0106168,tt1764651,tt0068935,tt0089348
nm0001570	Edward Norton	1969	\N	actor,producer,writer	tt0137523,tt0120586,tt0117381,tt2562232
nm0001571	Kim Novak	1933	\N	actress,costume_department,soundtrack	tt0052357,tt0048491,tt0051406,tt0058265
nm0001572	Danny Nucci	1968	\N	actor,director,writer	tt0120338,tt0112740,tt0117500,tt0106246
nm0001573	Catherine O'Hara	1954	\N	actress,writer,producer	tt0310281,tt0218839,tt1142977,tt0470765
nm0001574	Michael O'Keefe	1955	\N	actor,director,soundtrack	tt0080487,tt0079239,tt0465538,tt0237572
nm0001575	Tatum O'Neal	1963	\N	actress,producer,soundtrack	tt0070510,tt0074174,tt1017451,tt0081060
nm0001576	Heather O'Rourke	1975	1988	actress,archive_footage	tt0084516,tt0091778,tt0095889,tt0070992
nm0001577	Maureen O'Sullivan	1911	1998	actress,soundtrack,archive_footage	tt0025878,tt0091167,tt0024865,tt0023551
nm0001578	Annette O'Toole	1952	\N	actress,writer,music_department	tt0086393,tt0279600,tt0310281,tt0083511
nm0001579	Edward James Olmos	1947	\N	actor,producer,director	tt0407362,tt0120094,tt0094027,tt0083658
nm0001580	Ashley Olsen	1986	\N	actress,producer,music_department	tt0092359,tt0113442,tt0363282,tt0106763
nm0001581	Mary-Kate Olsen	1986	\N	actress,producer,music_department	tt0113442,tt0363282,tt1152398,tt1082886
nm0001582	Susan Olsen	1961	\N	actress,producer,soundtrack	tt0063878,tt0075485,tt2250468,tt3210376
nm0001583	Jerry Orbach	1935	2004	actor,soundtrack,archive_footage	tt0098844,tt0101414,tt0092890,tt0105698
nm0001584	Miranda Otto	1967	\N	actress,producer,soundtrack	tt0167260,tt0167261,tt10638522,tt0120863
nm0001585	Kelly Packard	1975	\N	actress,soundtrack	tt0103380,tt0096542,tt0298744,tt1447793
nm0001586	Joanna Pacula	1957	\N	actress	tt0108358,tt0085615,tt0095454,tt0120458
nm0001587	Alan J. Pakula	1928	1998	producer,director,writer	tt0084707,tt0074119,tt0100404,tt0056592
nm0001588	Jack Palance	1919	2006	actor,director,assistant_director	tt0101587,tt0046303,tt0057345,tt0098439
nm0001589	Michael Palin	1943	\N	writer,actor,producer	tt0071853,tt0085959,tt0081633,tt0079470
nm0001590	Chazz Palminteri	1946	\N	actor,writer,producer	tt0114814,tt0106489,tt0109348,tt0473488
nm0001591	Bruce Paltrow	1943	2002	producer,writer,director	tt0083483,tt0077101,tt0108907,tt0094563
nm0001592	Joe Pantoliano	1951	\N	actor,producer,writer	tt0209144,tt0115736,tt0133093,tt0106977
nm0001593	Anna Paquin	1982	\N	actress,producer,soundtrack	tt0107822,tt0120903,tt0290334,tt0367089
nm0001594	Anne Parillaud	1960	\N	actress,director,soundtrack	tt0100263,tt0120744,tt0104511,tt0104812
nm0001595	Michael Paré	1958	\N	actor,producer,director	tt0088194,tt0159097,tt1838544,tt0119313
nm0001596	Pier Paolo Pasolini	1922	1975	writer,director,actor	tt0065622,tt0073650,tt0058715,tt0050783
nm0001597	Mandy Patinkin	1952	\N	actor,producer,soundtrack	tt1796960,tt0093779,tt0094631,tt0099422
nm0001598	Robert Patrick	1958	\N	actor,producer,archive_footage	tt0103064,tt0106912,tt0133751,tt0419946
nm0001599	Will Patton	1954	\N	actor,soundtrack,archive_footage	tt0119925,tt0093640,tt0120591,tt0265349
nm0001600	Adrian Paul	1959	\N	actor,producer,director	tt0103442,tt0144964,tt0299981,tt0812352
nm0001601	David Paymer	1954	\N	actor,director,producer	tt0113161,tt0120202,tt0112346,tt0385267
nm0001602	Guy Pearce	1967	\N	actor,producer,soundtrack	tt0209144,tt0119488,tt2345737,tt0887912
nm0001603	Sam Peckinpah	1925	1984	writer,director,producer	tt0065214,tt0067800,tt0086058,tt0049366
nm0001604	Nia Peeples	1961	\N	actress,producer,director	tt0083412,tt0297162,tt0106168,tt0097179
nm0001605	Amanda Peet	1972	\N	actress,writer,producer	tt1190080,tt0391304,tt0190138,tt0309698
nm0001606	Chris Penn	1965	2006	actor,producer,director	tt0108122,tt0105236,tt0108399,tt0087277
nm0001607	Sydney Penny	1971	\N	actress,producer,writer	tt0089767,tt0085101,tt0065272,tt1578873
nm0001608	Barry Pepper	1970	\N	actor,producer,executive	tt0431377,tt1403865,tt0120689,tt8364368
nm0001609	Rosie Perez	1964	\N	actress,miscellaneous,director	tt0105812,tt0106881,tt0108451,tt0102536
nm0001610	Elizabeth Perkins	1960	\N	actress,producer,archive_footage	tt2649356,tt12614214,tt0439100,tt5555260
nm0001611	Max Perlich	1968	\N	actor,miscellaneous,archive_footage	tt0115639,tt0097240,tt0106582,tt0110478
nm0001612	Matthew Perry	1969	2023	actor,producer,writer	tt0108778,tt0485842,tt0190138,tt0327247
nm0001613	Bernadette Peters	1948	\N	actress,soundtrack,archive_footage	tt0079367,tt0082894,tt0118617,tt0176357
nm0001614	Lori Petty	1963	\N	actress,writer,producer	tt0114614,tt0104694,tt0106965,tt0102685
nm0001615	Elizabeth Peña	1959	2014	actress,director,archive_footage	tt0120812,tt0116905,tt0093378,tt0317705
nm0001616	Mekhi Phifer	1974	\N	actor,producer,director	tt0108757,tt0322589,tt0363547,tt0298203
nm0001617	Lou Diamond Phillips	1962	\N	actor,director,writer	tt0115956,tt0096487,tt0120609,tt0094027
nm0001618	Joaquin Phoenix	1974	\N	actor,producer,director	tt0358273,tt0172495,tt1798709,tt1560747
nm0001619	Summer Phoenix	1978	\N	actress,soundtrack,archive_footage	tt0247199,tt0133751,tt0133189,tt0348155
nm0001620	Slim Pickens	1919	1983	actor,writer,stunts	tt0057012,tt0071230,tt0068638,tt0078723
nm0001621	Bronson Pinchot	1959	\N	actor,soundtrack,archive_footage	tt0086960,tt0108399,tt0086200,tt0109254
nm0001622	Danny Pintauro	1976	\N	actor,archive_footage	tt0086827,tt0085382,tt18350906
nm0001623	Maria Pitillo	1966	\N	actress,archive_footage	tt0120685,tt0103939,tt0108399,tt0110632
nm0001624	Oliver Platt	1960	\N	actor,producer,archive_footage	tt0108333,tt1190080,tt0139414,tt0182789
nm0001625	Amanda Plummer	1957	\N	actress,writer,archive_footage	tt0110912,tt2190165,tt0101889,tt8806524
nm0001626	Christopher Plummer	1929	2021	actor,producer,music_department	tt1532503,tt0140352,tt3704050,tt5294550
nm0001627	Sidney Poitier	1927	2022	actor,director,producer	tt0057251,tt0061811,tt0061735,tt0051525
nm0001628	Sydney Pollack	1934	2008	director,producer,actor	tt0084805,tt0465538,tt0120663,tt0089755
nm0001629	Kevin Pollak	1957	\N	actor,producer,writer	tt0114814,tt0146675,tt0327247,tt0104257
nm0001630	Tracy Pollan	1960	\N	actress,producer,archive_footage	tt0203259,tt0094799,tt0105483,tt0252133
nm0001631	Sarah Polley	1979	\N	actress,director,writer	tt0314412,tt0120255,tt0139239,tt0363547
nm0001632	Teri Polo	1969	\N	actress,archive_footage	tt0212338,tt0290002,tt0115571,tt0970866
nm0001633	Annie Potts	1952	\N	actress,producer,soundtrack	tt0087332,tt1979376,tt0091790,tt0090418
nm0001634	CCH Pounder	1952	\N	actress,producer,archive_footage	tt0286486,tt0499549,tt1538403,tt0107978
nm0001635	William Powell	1892	1984	actor,soundtrack,archive_footage	tt0025878,tt0028010,tt0027260,tt0031047
nm0001636	Priscilla Presley	1945	\N	actress,producer,writer	tt0102510,tt0095705,tt0110622,tt0098987
nm0001637	Vincent Price	1911	1993	actor,miscellaneous,writer	tt0066740,tt0051744,tt0038492,tt0037008
nm0001638	Jürgen Prochnow	1941	\N	actor,producer,soundtrack	tt0087182,tt0082096,tt0116209,tt0113492
nm0001639	Alex Proyas	1963	\N	director,writer,producer	tt0118929,tt0343818,tt0448011,tt0109506
nm0001640	Richard Pryor	1940	2005	actor,writer,producer	tt0086393,tt0075223,tt0082121,tt0097481
nm0001641	Vincent Perez	1964	\N	actor,director,writer	tt3026488,tt0104507,tt0110963,tt28106865
nm0001642	Randy Quaid	1950	\N	actor,producer,writer	tt0116778,tt0116629,tt0097958,tt0085995
nm0001643	Linnea Quigley	1958	\N	actress,producer,camera_department	tt0089907,tt0093624,tt0088117,tt0082467
nm0001644	Aidan Quinn	1959	\N	actor,producer,director	tt0120791,tt0817177,tt0110322,tt0117039
nm0001645	Serge Ladouceur	1952	\N	cinematographer,producer,camera_department	tt0460681,tt0318970,tt0319057,tt0119788
nm0001646	Ted Raimi	1965	\N	actor,writer,director	tt18815410,tt8762206,tt0098936,tt7325622
nm0001647	Claude Rains	1889	1967	actor,miscellaneous,soundtrack	tt0034583,tt0029843,tt0038787,tt0024184
nm0001648	Charlotte Rampling	1946	\N	actress,camera_department,writer	tt3544082,tt0324133,tt1527186,tt15239678
nm0001649	Anne Ramsey	1929	1988	actress,archive_footage	tt0089218,tt0094142,tt0096061,tt0090917
nm0001650	Michael Rapaport	1970	\N	actor,director,producer	tt0149261,tt0108399,tt0115639,tt0216216
nm0001651	Basil Rathbone	1892	1967	actor,writer,miscellaneous	tt0029843,tt0026174,tt0031448,tt0020081
nm0001652	John Ratzenberger	1947	\N	actor,director,writer	tt0083399,tt1453405,tt0114709,tt0317219
nm0001653	Stephen Rea	1946	\N	actor,writer,soundtrack	tt0104036,tt0434409,tt0411195,tt0112681
nm0001654	Ronald Reagan	1911	2004	actor,production_manager,miscellaneous	tt0034946,tt0039969,tt0045332,tt0032676
nm0001655	Lynn Redgrave	1943	2010	actress,soundtrack,archive_footage	tt0120684,tt0060453,tt0117631,tt0362269
nm0001656	Donna Reed	1921	1986	actress,soundtrack,archive_footage	tt0038650,tt0045793,tt0034618,tt0051267
nm0001657	Oliver Reed	1938	1999	actor,soundtrack,archive_footage	tt0172495,tt0063385,tt0096764,tt0073012
nm0001658	Robert Reed	1932	1992	actor,director,soundtrack	tt0063878,tt0075485,tt0074048,tt0075572
nm0001659	Christopher Reeve	1952	2004	actor,miscellaneous,producer	tt0078346,tt0081534,tt0081573,tt0086393
nm0001660	George Reeves	1914	1959	actor,director,miscellaneous	tt0044231,tt0031381,tt0044091,tt0041096
nm0001661	Rob Reiner	1947	\N	actor,writer,producer	tt0066626,tt0088258,tt0993846,tt0160916
nm0001662	Judge Reinhold	\N	\N	actor,producer,director	tt0086960,tt0083929,tt0098904,tt0111070
nm0001663	Paul Reiser	1956	\N	actor,writer,producer	tt0103484,tt0090605,tt2582802,tt0086960
nm0001664	James Remar	1953	\N	actor,soundtrack,archive_footage	tt0420896,tt33043892,tt15398776,tt19244304
nm0001665	Lee Remick	1935	1991	actress,soundtrack,archive_footage	tt0075005,tt0052561,tt0055895,tt0057681
nm0001666	Debbie Reynolds	1932	2016	actress,producer,writer	tt0045152,tt0058708,tt0119360,tt0051051
nm0001667	Jonathan Rhys Meyers	1977	\N	actor,producer,soundtrack	tt3300980,tt2306299,tt0758790,tt0437714
nm0001668	Kim Richards	1964	\N	actress,producer,archive_footage	tt0074156,tt0462200,tt1075417,tt0072951
nm0001669	Miranda Richardson	1958	\N	actress,soundtrack,archive_footage	tt0104036,tt0162661,tt0278731,tt0274558
nm0001670	Natasha Richardson	1963	2009	actress,producer,soundtrack	tt0348505,tt0120783,tt0099731,tt0252076
nm0001671	Diana Rigg	1938	2020	actress,costume_department,costume_designer	tt9639470,tt0064757,tt0944947,tt0446755
nm0001672	Joan Rivers	1933	2014	writer,actress,producer	tt0094012,tt1300854,tt0111127,tt0078133
nm0001673	Jason Robards	1922	2000	actor,soundtrack,archive_footage	tt0074119,tt0175880,tt0064116,tt0098067
nm0001674	Chris Rock	1965	\N	producer,actor,writer	tt2784678,tt0398165,tt0325537,tt0351283
nm0001675	Robert Rodriguez	1968	\N	producer,writer,director	tt0104815,tt0458481,tt0424774,tt0287717
nm0001676	Nicolas Roeg	1928	2018	camera_department,director,cinematographer	tt0069995,tt0067959,tt0074851,tt0100944
nm0001677	Ginger Rogers	1911	1995	actress,soundtrack,archive_footage	tt0032671,tt0035019,tt0031983,tt0025164
nm0001678	Roy Rogers	1911	1998	actor,producer,writer	tt0036725,tt0037535,tt1409024,tt0035364
nm0001679	Mark Rolston	1956	\N	actor,sound_department,writer	tt0111161,tt0090605,tt0120812,tt0407887
nm0001680	Robert Romanus	1956	\N	actor,soundtrack,archive_footage	tt0083929,tt1017451,tt0083412,tt0156146
nm0001681	George A. Romero	1940	2017	producer,writer,director	tt0418819,tt0848557,tt0063350,tt0095652
nm0001682	Mickey Rooney	1920	2014	actor,producer,director	tt0031066,tt0057193,tt0033110,tt0054698
nm0001683	Roseanne Barr	1952	\N	producer,actress,writer	tt0094540,tt0100050,tt0101917,tt0098309
nm0001684	Katharine Ross	1940	\N	actress,writer,soundtrack	tt0061722,tt0064115,tt0246578,tt0073747
nm0001685	Rick Rossovich	1957	\N	actor,camera_department,archive_footage	tt0092099,tt0093886,tt0088247,tt0100232
nm0001686	Cynthia Rothrock	1957	\N	actress,producer,miscellaneous	tt3393762,tt8840400,tt9626986,tt0099260
nm0001687	Gena Rowlands	1930	2024	actress,miscellaneous,writer	tt0332280,tt0072417,tt0119313,tt0397101
nm0001688	Alan Ruck	1956	\N	actor,soundtrack,archive_footage	tt0111257,tt0117998,tt0091042,tt0111280
nm0001689	Mercedes Ruehl	1948	\N	actress,soundtrack,archive_footage	tt0101889,tt0095593,tt0094737,tt0093936
nm0001690	Jennifer Runyon	1960	\N	actress,producer,soundtrack	tt0087332,tt0096376,tt0088333,tt0095362
nm0001691	Geoffrey Rush	1951	\N	actor,producer,writer	tt1504320,tt0138097,tt0180073,tt0352520
nm0001692	Ken Russell	1927	2011	director,writer,actor	tt0066993,tt0066858,tt0080360,tt0073812
nm0001693	Eva Marie Saint	1924	\N	actress,producer,soundtrack	tt0047296,tt0053125,tt0348150,tt0053804
nm0001694	Meredith Salenger	1970	\N	actress,producer,miscellaneous	tt0089385,tt0097236,tt0095736,tt0139414
nm0001695	George Sanders	1906	1972	actor,writer,soundtrack	tt0042192,tt0032976,tt0037988,tt0033873
nm0001696	Julian Sands	1958	2023	actor,assistant_director,soundtrack	tt0091867,tt0102511,tt0098622,tt0099052
nm0001697	Chris Sarandon	1942	\N	actor,soundtrack,producer	tt0107688
nm0001698	John Savage	\N	\N	actor,producer,composer	tt0783640,tt0077416,tt0079261,tt0120863
nm0001699	Telly Savalas	1922	1994	actor,director,writer	tt0069599,tt0077294,tt0065938,tt0064757
nm0001700	Nancy Savoca	1959	\N	director,writer,producer	tt0116607,tt0101748,tt0107152,tt0359161
nm0001701	Devon Sawa	1978	\N	actor,producer,director	tt0195714,tt0138510,tt0114011,tt0112642
nm0001702	Roy Scheider	1932	2008	actor,producer,soundtrack	tt0073195,tt0078754,tt0067116,tt0077766
nm0001703	Maximilian Schell	1930	2014	actor,director,writer	tt0055031,tt0078869,tt0076245,tt0120647
nm0001704	Vincent Schiavelli	1948	2005	actor,archive_footage	tt0120347,tt0099653,tt0083929,tt0086856
nm0001705	Rob Schneider	1963	\N	actor,writer,producer	tt0205000,tt0302640,tt0255798,tt0367652
nm0001706	Michael Schoeffling	1960	\N	actor,archive_footage	tt0088128,tt0100140,tt0103262,tt0090270
nm0001707	Paul Schrader	1946	\N	writer,director,producer	tt6053438,tt11196036,tt0118564,tt0075314
nm0001708	Joel Schumacher	1939	2020	director,writer,producer	tt0293508,tt0118688,tt0134273,tt0183649
nm0001709	Til Schweiger	1963	\N	actor,producer,director	tt0361748,tt0119472,tt0960790,tt0133189
nm0001710	David Schwimmer	1966	\N	actor,director,producer	tt0108778,tt0120828,tt0185906,tt0488085
nm0001711	Annabella Sciorra	1960	\N	actress,producer,archive_footage	tt0104389,tt0102175
nm0001712	Tracy Scoggins	\N	\N	actress,writer,producer	tt0871427,tt0106145,tt0106057,tt27712788
nm0001713	Izabella Scorupco	1970	\N	actress,archive_footage	tt0113189,tt0253556,tt0190865,tt0204313
nm0001714	Campbell Scott	1961	\N	actor,producer,director	tt0115678,tt0299117,tt0105415,tt1872181
nm0001715	George C. Scott	1927	1999	actor,director,producer	tt0066206,tt0054997,tt0080516,tt0099528
nm0001716	Tony Scott	1944	2012	producer,director,actor	tt0421054,tt0477080,tt0092099,tt0108399
nm0001717	Kyle Secor	1957	\N	actor,director,archive_footage	tt0106028,tt0101587,tt0109676,tt4094724
nm0001718	Kyra Sedgwick	1965	\N	actress,producer,director	tt0458253,tt0117333,tt0361127,tt0114496
nm0001719	George Segal	1934	2021	actor,producer,soundtrack	tt0061184,tt1190080,tt0115798,tt0097778
nm0001720	Ivan Sergei	1971	\N	actor,director,writer	tt0120777,tt0207889,tt0284718,tt7335154
nm0001721	Chloë Sevigny	1974	\N	actress,director,writer	tt9848536,tt0421030,tt0171804,tt8695030
nm0001722	Rufus Sewell	1967	\N	actor,soundtrack,archive_footage	tt0183790,tt0118929,tt0375154,tt0443543
nm0001723	Tom Shadyac	1958	\N	producer,director,actor	tt0117218,tt0259288,tt1741225,tt0109040
nm0001724	Tony Shalhoub	1953	\N	actor,producer,director	tt0312172,tt0243133,tt1291150,tt0120912
nm0001725	Omar Sharif	1932	2015	actor,writer,producer	tt0056172,tt0059113,tt0329388,tt0062994
nm0001726	Helen Shaver	1951	\N	actress,director,producer	tt0089015,tt0078767,tt0115317,tt0115963
nm0001727	Robert Shaw	1927	1978	actor,writer,miscellaneous	tt0073195,tt0060665,tt0070735,tt0064072
nm0001728	Wallace Shawn	1943	\N	actor,writer,producer	tt0082783,tt0093779,tt0112697,tt0317705
nm0001729	Craig Sheffer	1960	\N	actor,producer,director	tt0105265,tt0100260,tt0106912,tt0094006
nm0001730	Deborah Shelton	1948	\N	actress,music_department,writer	tt0086984,tt0108143,tt0111191,tt0107668
nm0001731	Sam Shepard	1943	2017	actor,writer,director	tt1322269,tt1935179,tt0265086,tt0086197
nm0001732	Cybill Shepherd	1950	\N	actress,producer,writer	tt0111932,tt0088571,tt0067328,tt0075314
nm0001733	Nicollette Sheridan	1963	\N	actress,producer,writer	tt0410975,tt0078638,tt0117723,tt0462229
nm0001734	Armin Shimerman	1949	\N	actor,writer,soundtrack	tt0106145,tt0091209,tt1094581,tt1430111
nm0001735	Talia Shire	1946	\N	actress,producer,director	tt0075148,tt0068646,tt0071562,tt0089927
nm0001736	Pauly Shore	1968	\N	actor,writer,producer	tt0115683,tt0104187,tt0284674,tt0108186
nm0001737	Martin Short	1950	\N	actor,writer,producer	tt0093260,tt0452681,tt1791528,tt0101862
nm0001738	Jonathan Silverman	1966	\N	actor,miscellaneous,producer	tt0098627,tt1870372,tt0090774,tt0108539
nm0001739	Jean Simmons	1929	2010	actress,soundtrack,archive_footage	tt0048140,tt0054331,tt0040416,tt0046564
nm0001740	O.J. Simpson	1947	2024	actor,producer,archive_footage	tt0077294,tt0110622,tt0095705,tt0102510
nm0001741	Bryan Singer	1965	\N	producer,director,actor	tt0120903,tt0114814,tt0348150,tt1877832
nm0001742	Lori Singer	\N	\N	actor,writer,director	tt0087277,tt0108122,tt2111478
nm0001743	Marc Singer	1948	\N	actor,director,miscellaneous	tt0083630,tt0085106,tt0086822,tt0101412
nm0001744	Tom Sizemore	1961	2023	actor,producer,writer	tt0120815,tt0265086,tt0120004,tt0114558
nm0001745	Stellan Skarsgård	\N	\N	actor,producer,writer	tt0119217,tt1937390,tt0118607,tt2382009
nm0001746	Ione Skye	1970	\N	actress,writer,director	tt0098258,tt0113101,tt0091860,tt0332047
nm0001747	Charles Martin Smith	1953	\N	actor,director,writer	tt0069704,tt0088172,tt0337721,tt1037156
nm0001748	Kurtwood Smith	1943	\N	actor,producer,soundtrack	tt0115759,tt0093870,tt0102975,tt0095956
nm0001749	Maggie Smith	1934	2024	actress,soundtrack,archive_footage	tt0280707,tt0091867,tt3722070,tt0064840
nm0001750	Madolyn Smith Osborne	1957	\N	actress	tt0086837,tt0081696,tt0095188,tt0086873
nm0001751	Jimmy Smits	1955	\N	actor,producer,soundtrack	tt0121766,tt0106079,tt1321510,tt3748528
nm0001752	Steven Soderbergh	1963	\N	producer,director,cinematographer	tt0098724,tt0181865,tt1291580,tt0195685
nm0001753	P.J. Soles	1950	\N	actress,producer,camera_department	tt0077651,tt0074285,tt0079813,tt0083131
nm0001754	Todd Solondz	1959	\N	director,writer,actor	tt0114906,tt0147612,tt0808526,tt4144190
nm0001755	Suzanne Somers	1946	2023	actress,composer,producer	tt0075596,tt0111127,tt0092449,tt0069704
nm0001756	Barry Sonnenfeld	1953	\N	producer,director,cinematographer	tt0119654,tt0120891,tt1409024,tt0106220
nm0001757	Kevin Sorbo	1958	\N	actor,producer,director	tt5804314,tt1714827,tt0213327,tt0110016
nm0001758	Timothy Spall	1957	\N	actor,producer,writer	tt2473794,tt0117589,tt0408236,tt1226271
nm0001759	Vincent Spano	\N	\N	actor,director,producer	tt0085208,tt0106246,tt0088960,tt0086216
nm0001760	Tori Spelling	1973	\N	actress,producer,music_department	tt0257106,tt0098749,tt0162710,tt0119324
nm0001761	Jerry Springer	1944	2023	producer,writer,actor	tt0421054,tt0145660,tt0165494,tt0402127
nm0001762	Jill St. John	1940	\N	actress,soundtrack,archive_footage	tt0066995,tt0054038,tt0060801,tt0069273
nm0001763	Nick Stahl	1979	\N	actor,producer,assistant_director	tt0401792,tt0107501,tt0181852,tt0247425
nm0001764	John Stamos	1963	\N	actor,producer,music_department	tt0092359,tt4465368,tt3986586,tt0262994
nm0001765	Harry Dean Stanton	1926	2017	actor,composer,soundtrack	tt5859238,tt0078748,tt0120689,tt0087995
nm0001766	Barbara Stanwyck	1907	1990	actress,soundtrack,archive_footage	tt0036775,tt0033804,tt0033373,tt0040823
nm0001767	Imelda Staunton	1956	\N	actress,soundtrack,archive_footage	tt0383694,tt0373889,tt3169706,tt0138097
nm0001768	Rod Steiger	1925	2002	actor,soundtrack,archive_footage	tt0061811,tt0047296,tt0059575,tt0146675
nm0001769	Howard Stern	1954	\N	producer,actor,writer	tt0474499,tt0119951,tt2248835,tt0159879
nm0001770	Fisher Stevens	1963	\N	actor,producer,director	tt0091949,tt0096101,tt0113243,tt0108255
nm0001771	Stella Stevens	1938	2023	actress,director,producer	tt0069113,tt0060980,tt0057372,tt0063800
nm0001772	Patrick Stewart	1940	\N	actor,producer,director	tt3315342,tt0117731,tt0120844,tt0092455
nm0001773	David Ogden Stiers	1942	2018	actor,director,miscellaneous	tt0068098,tt0101414,tt0114148,tt0275847
nm0001774	Ben Stiller	1965	\N	producer,actor,director	tt0196229,tt0942385,tt1608290,tt0129387
nm0001775	Whit Stillman	1952	\N	director,writer,actor	tt3068194,tt0100142,tt0109219,tt0120728
nm0001776	Sting	1951	\N	music_artist,actor,composer	tt0087182,tt0120917,tt1608290,tt0159365
nm0001777	Dean Stockwell	1936	2021	actor,director,writer	tt0096684,tt0095593,tt0087182,tt0087884
nm0001778	Matt Stone	1971	\N	music_department,writer,producer	tt0121955,tt0158983,tt0372588,tt0124819
nm0001779	Tom Stoppard	1937	\N	writer,script_department,producer	tt0138097,tt0088846,tt0100519,tt1781769
nm0001780	Peter Stormare	1953	\N	actor,writer,producer	tt0116282,tt0355295,tt0168629,tt0360486
nm0001781	Julie Strain	1962	2021	actress,producer,director	tt0109254,tt0119273,tt0110622,tt0116039
nm0001782	Susan Strasberg	1938	1999	actress,archive_footage	tt0048491,tt0052961,tt0055505,tt0052235
nm0001783	Sally Struthers	1947	\N	actress,music_department,soundtrack	tt0066626,tt0068638,tt0065724,tt0238784
nm0001784	Gloria Stuart	1910	2010	actress,soundtrack,archive_footage	tt0120338,tt0024184,tt0023293,tt0030657
nm0001785	Kristy Swanson	1969	\N	actress,producer,soundtrack	tt0103893,tt0091042,tt0093036,tt0242423
nm0001786	George Takei	1937	\N	actor,miscellaneous,writer	tt0060028,tt0102975,tt0084726,tt0088170
nm0001787	Jeffrey Tambor	1944	\N	actor,soundtrack,archive_footage	tt3502262,tt0367279,tt0167190,tt1092026
nm0001788	Jessica Tandy	1909	1994	actress,soundtrack,archive_footage	tt0097239,tt0101921,tt0092494,tt0056869
nm0001789	Andrei Tarkovsky	1932	1986	miscellaneous,writer,director	tt0091670,tt0069293,tt0086022,tt0079944
nm0001790	Sharon Tate	1943	1969	actress,soundtrack,archive_footage	tt0062430,tt0065225,tt0061634,tt0061655
nm0001791	Robert Taylor	1911	1969	actor,director,soundtrack	tt0043949,tt0033774,tt0033238,tt0028683
nm0001792	Rod Taylor	1930	2015	actor,music_department,writer	tt0361748,tt0054387,tt0056869,tt0055254
nm0001793	Heather Thomas	1957	\N	actress,archive_footage	tt0084945,tt1684562,tt0081859,tt0092812
nm0001794	Henry Thomas	1971	\N	actor,producer,composer	tt0083866,tt0331811,tt0110322,tt0217505
nm0001795	Jonathan Taylor Thomas	1981	\N	actor,director,soundtrack	tt0110357,tt0101120,tt0112302,tt0115472
nm0001796	Richard Thomas	1951	\N	actor,director,producer	tt0068149,tt0080421,tt0099864,tt0185014
nm0001797	Rachel Ticotin	1958	\N	actress,miscellaneous,archive_footage	tt0100802,tt0118880,tt0106856,tt0328107
nm0001798	Kevin Tighe	1944	\N	actor,director,stunts	tt0098206,tt0099044,tt0068067,tt0097637
nm0001799	John Toll	1952	\N	cinematographer,camera_department,producer	tt0112573,tt0325710,tt0120863,tt0110322
nm0001800	Rip Torn	1931	2019	actor,director,producer	tt0119654,tt0240515,tt0103466,tt0074851
nm0001801	Robert Towne	1934	2024	writer,producer,actor	tt0071315,tt0117060,tt0070290,tt0096244
nm0001802	Nancy Travis	1961	\N	actress,producer,soundtrack	tt0108174,tt0108473,tt0098966,tt0109936
nm0001803	Danny Trejo	1944	\N	actor,producer,miscellaneous	tt0985694,tt0116367,tt2002718,tt1424381
nm0001804	Stanley Tucci	1960	\N	actor,producer,writer	tt0115678,tt1895587,tt0380510,tt1135503
nm0001805	Lana Turner	1921	1995	actress,producer,soundtrack	tt0038854,tt0033553,tt0034415,tt0050839
nm0001806	John Turturro	1957	\N	actor,writer,producer	tt2258345,tt0101410,tt0190590,tt0110932
nm0001807	Cicely Tyson	1924	2021	actress,producer,soundtrack	tt1454029,tt0422093,tt0101921,tt0069303
nm0001808	Tracey Ullman	1959	\N	actress,writer,producer	tt0092469,tt0196216,tt0109348,tt2180411
nm0001809	Jay Underwood	1968	\N	actor,archive_footage	tt0090768,tt0093649,tt0098554,tt0185155
nm0001810	Robert Urich	1946	2002	actor,producer,writer	tt0087451,tt0096639,tt0070355,tt0077093
nm0001811	Peter Ustinov	1921	2004	actor,writer,director	tt0054331,tt0077413,tt0043949,tt0074812
nm0001812	Lee Van Cleef	1925	1989	actor,soundtrack,archive_footage	tt0082340,tt0060196,tt0059578,tt0056217
nm0001813	Dick Van Dyke	1925	\N	actor,producer,writer	tt0058331,tt0054533,tt5028340,tt0062803
nm0001814	Gus Van Sant	1952	\N	director,producer,actor	tt0363589,tt0842929,tt0097240,tt0102494
nm0001815	Jim Varney	1949	2000	actor,writer,soundtrack	tt0092974,tt0230011,tt0114709,tt0101821
nm0001816	Robert Vaughn	1932	2016	actor,director,archive_footage	tt0062765,tt0054047,tt0086393,tt0072308
nm0001817	Reginald VelJohnson	1952	\N	actor,writer,producer	tt0095016,tt0087332,tt0096579,tt0099423
nm0001818	Jesse Ventura	1951	\N	actor,producer,soundtrack	tt0093773,tt0118688,tt0093894,tt0106697
nm0001819	Petra Verkaik	1966	\N	actress,producer,miscellaneous	tt0212879,tt0102733,tt0127643,tt0106323
nm0001820	Abe Vigoda	1921	2016	actor,archive_footage	tt0068646,tt0119215,tt0072472,tt0099892
nm0001821	Jan-Michael Vincent	1945	2019	actor,producer,soundtrack	tt0072705,tt0068931,tt0075393,tt0118789
nm0001822	Robert Wagner	1930	\N	actor,producer,soundtrack	tt0072308,tt0118655,tt0295178,tt0057413
nm0001823	Tom Waits	1949	\N	music_artist,actor,composer	tt1931533,tt0090967,tt0108122,tt6412452
nm0001824	Ally Walker	1961	\N	actress,writer,producer	tt0105698,tt0115322,tt0116756,tt0114924
nm0001825	Andrew Kevin Walker	1964	\N	writer,script_department,actor	tt1136617,tt0114369,tt14636170,tt0162661
nm0001826	M. Emmet Walsh	1935	2024	actor,producer,stunts	tt0083658,tt0086979,tt0079367,tt0090887
nm0001827	Ray Walston	1914	2001	actor,soundtrack,archive_footage	tt0081353,tt0083929,tt0070735,tt0103512
nm0001828	Melora Walters	1960	\N	actress,director,writer	tt0175880,tt0118749,tt0097165,tt0289879
nm0001829	Rachel Ward	1957	\N	actress,director,writer	tt0085101,tt0086859,tt0083064,tt0083798
nm0001830	Sophie Ward	1964	\N	actress,soundtrack,archive_footage	tt0090357,tt1169809,tt1229822,tt0089908
nm0001831	David Warner	1941	2022	actor,producer,soundtrack	tt0102975,tt0084827,tt0120338,tt0113409
nm0001832	Sam Waterston	1940	\N	actor,producer,director	tt0087553,tt0071577,tt0098844,tt0111127
nm0001833	Emily Watson	1967	\N	actress,producer,soundtrack	tt0280707,tt0115751,tt0272338,tt0289765
nm0001834	Damon Wayans	1960	\N	actor,writer,producer	tt0273855,tt0102266,tt0110443,tt0104897
nm0001835	Carl Weathers	1948	2024	actor,director,producer	tt0093773,tt0116483,tt0075148,tt0084602
nm0001836	Steven Weber	1961	\N	actor,producer,writer	tt0118460,tt0112896,tt0105414,tt0098948
nm0001837	Peter Weir	1944	\N	director,writer,producer	tt0311113,tt1023114,tt0090329,tt0097165
nm0001838	Rachel Weisz	1970	\N	actress,producer,director	tt0387131,tt3464902,tt6108178,tt0120616
nm0001839	Tuesday Weld	1943	\N	actress,soundtrack,archive_footage	tt0083190,tt0087843,tt0106856,tt0069098
nm0001840	Ming-Na Wen	1963	\N	actress,soundtrack,archive_footage	tt0120762,tt2364582,tt0111301,tt0173840
nm0001841	George Wendt	1948	2025	actor,director,producer	tt0083399,tt0089155,tt0104291,tt0091223
nm0001842	Adam West	1928	2017	actor,director,miscellaneous	tt0059968,tt0060153,tt0371606,tt0157503
nm0001843	James Whale	1889	1957	director,miscellaneous,art_director	tt0026138,tt0024184,tt0021884,tt0028249
nm0001844	Frank Whaley	1963	\N	actor,director,writer	tt0115759,tt0110912,tt0452702,tt0101761
nm0001845	Forest Whitaker	1961	\N	actor,producer,director	tt0455590,tt1327773,tt0185183,tt1825683
nm0001846	Vanna White	1957	\N	actress,producer,archive_footage	tt0072584,tt0110622,tt0106761,tt0095230
nm0001847	Richard Widmark	1914	2008	actor,producer,director	tt0039536,tt0046187,tt0040843,tt0053580
nm0001848	Dianne Wiest	1948	\N	actress,soundtrack,archive_footage	tt0109348,tt0115685,tt0091167,tt0099487
nm0001849	Kathleen Wilhoite	1964	\N	actress,music_department,composer	tt0119051,tt0098206,tt0109456,tt0106912
nm0001850	Billy Dee Williams	1937	\N	actor,writer,soundtrack	tt0080684,tt0086190,tt4116284,tt2527338
nm0001851	JoBeth Williams	1948	\N	actress,producer,director	tt0084516,tt0085244,tt0091778,tt0079417
nm0001852	Treat Williams	1951	2023	actor,director,producer	tt0118956,tt0079261,tt0117331,tt0114660
nm0001853	Vanessa Williams	1963	\N	actress,producer,miscellaneous	tt0805669,tt0162650,tt0116213,tt0410975
nm0001854	Rita Wilson	1956	\N	actress,producer,director	tt0116705,tt0108160,tt0163187,tt0114011
nm0001855	Tom Wilson	1959	\N	actor,writer,producer	tt0099088,tt0088763,tt0096874,tt2404463
nm0001856	Oprah Winfrey	1954	\N	producer,actress,miscellaneous	tt0090493,tt1327773,tt0088939,tt1620680
nm0001857	Henry Winkler	1945	\N	actor,producer,writer	tt0120484,tt0084412,tt1648179,tt0389860
nm0001858	Mare Winningham	1959	\N	actress,soundtrack,archive_footage	tt0090060,tt2431286,tt0098536,tt0097889
nm0001859	Shelley Winters	1920	2006	actress,producer,soundtrack	tt0069113,tt0056193,tt0043924,tt0059573
nm0001860	Alicia Witt	1975	\N	actress,music_department,producer	tt0087182,tt0411061,tt0146336,tt0408985
nm0001861	Katarina Witt	1965	\N	actress,producer,writer	tt0122690,tt0243164,tt0116695,tt0134269
nm0001862	Mary Woronov	1943	\N	actress,writer,director	tt0083869,tt0072856,tt0087799,tt0079813
nm0001863	Kari Wuhrer	1967	\N	actress,producer,soundtrack	tt0271367,tt0118615,tt0117894,tt0306735
nm0001864	Noah Wyle	1971	\N	actor,producer,director	tt0108757,tt0246578,tt0104257,tt1146438
nm0001865	Amy Yasbeck	1962	\N	actress,archive_footage	tt0110475,tt0107977,tt0100405,tt0100419
nm0001866	Bolo Yeung	1946	\N	actor,stunts,director	tt0092675,tt0101764,tt0070034,tt0164441
nm0001867	Amy Yip	1965	\N	actress,costume_department,archive_footage	tt0105845,tt0101490,tt0102562,tt0105287
nm0001868	Michael York	1942	\N	actor,producer,miscellaneous	tt0074812,tt0068327,tt0063518,tt0118655
nm0001869	Tina Yothers	1973	\N	actress,soundtrack,archive_footage	tt0083413,tt0084675,tt0195301,tt0089125
nm0001870	Robert Young	1907	1998	actor,producer,soundtrack	tt0039286,tt0032851,tt0037671,tt0033686
nm0001871	Pia Zadora	1954	\N	actress,soundtrack,archive_footage	tt0085863,tt0082122,tt0096402,tt0095270
nm0001872	Steve Zahn	1967	\N	actor,producer,director	tt3450958,tt0462504,tt0206314,tt0318649
nm0001873	Steven Zaillian	1953	\N	writer,producer,director	tt0108065,tt1302006,tt0120633,tt1568346
nm0001874	Franco Zeffirelli	1923	2019	miscellaneous,production_designer,director	tt0063518,tt0084821,tt0099726,tt0061407
nm0001875	Anthony Zerbe	1936	\N	actor,archive_footage	tt0067525,tt0061512,tt0097742,tt0234215
nm0001876	Catherine Zeta-Jones	1969	\N	actress,producer,soundtrack	tt0299658,tt0120746,tt0181865,tt0137494
nm0001877	Hans Zimmer	1957	\N	music_department,composer,actor	tt0172495,tt0816692,tt1160419,tt15239678
nm0001878	David Zucker	1947	\N	writer,producer,director	tt0080339,tt0095705,tt0362120,tt0088286
nm0001879	Daphne Zuniga	1962	\N	actress,producer,director	tt0368530,tt0103491,tt0094012
nm0001880	Edward Zwick	1952	\N	producer,writer,director	tt0092492,tt0325710,tt0138097,tt0115956
nm0001881	Maryam d'Abo	1960	\N	actress,producer,director	tt0093428,tt1235124,tt0324937,tt0108360
nm0001882	Olivia d'Abo	1969	\N	actress,music_department,producer	tt0087078,tt0107843,tt2527338,tt2027128
nm0001883	Jenna von Oÿ	1977	\N	actress,producer,writer	tt0101050,tt0113198,tt0200353,tt0096969
nm0001884	Max von Sydow	1929	2020	actor,miscellaneous,director	tt0080745,tt0050976,tt0477302,tt2488496
nm0001885	Lars von Trier	1956	\N	writer,director,producer	tt0168629,tt1527186,tt0870984,tt4003440
nm0001886	Howard Ross	1941	\N	actor,archive_footage	tt0061218,tt0059672,tt0070023,tt0060590
nm0001887	Paul Brickman	1949	\N	writer,director,producer	tt0086200,tt0139668,tt0250798,tt0100134
nm0001888	Robert Douglas	1909	1999	director,actor,producer	tt0040076,tt0041386,tt0044760,tt0053335
nm0001889	Charles Hawtrey	1914	1988	actor,director,cinematographer	tt0062782,tt0060330,tt0064133,tt0060214
nm0001890	Hugh Herbert	1884	1952	actor,writer,director	tt0033397,tt0020953,tt0024075,tt0029541
nm0001891	Anthony Higgins	1947	\N	actor,soundtrack,archive_footage	tt0082971,tt0090357,tt0083851,tt0088851
nm0001892	Steve Rice	\N	\N	sound_department,editorial_department	tt0090728,tt0100029,tt0085333,tt0093605
nm0001893	John Archer	1915	1999	actor,archive_footage	tt0042041,tt0042393,tt0033787,tt0054692
nm0001894	Danny Dayton	1923	1999	actor,director,soundtrack	tt0048140,tt0109707,tt0074074,tt0060013
nm0001895	Glenn Miller	1904	1944	music_department,actor,composer	tt0100935,tt4255304,tt0094737,tt0117218
nm0001896	John W. Brown	1882	1949	cinematographer,assistant_director,actor	tt0005939,tt0012709,tt0007068,tt0014260
nm0001897	John M. Davis	\N	\N	music_department,sound_department,composer	tt8721424,tt0395251,tt4669264,tt0118799
nm0001898	Bryan Adams	1959	\N	music_artist,actor,composer	tt0102798,tt0166813,tt0108333,tt0112883
nm0001899	Remi Adefarasin	1948	\N	cinematographer,camera_department	tt0127536,tt0416320,tt0414055,tt1366365
nm0001900	Danny Aiello III	1957	2010	stunts,assistant_director,actor	tt0100685,tt0087781,tt0822854,tt0368008
nm0001901	Chantal Akerman	1950	2015	director,writer,actress	tt0078152,tt0071690,tt0073198,tt0118018
nm0001902	Edward Albert	1951	2006	actor,miscellaneous,producer	tt0068326,tt0074899,tt0082431,tt0493406
nm0001903	Norma Aleandro	1936	\N	actress,writer,archive_footage	tt0089276,tt0097116,tt0346765,tt0117684
nm0001904	Corey Allen	1934	2010	director,actor,writer	tt0048545,tt0081873,tt0092455,tt0068135
nm0001905	Yves Allégret	1905	1987	director,writer,assistant_director	tt0046149,tt0049491,tt0039344,tt0056569
nm0001906	Kirk Alyn	1910	1999	actor,archive_footage	tt0040852,tt0038456,tt0042873,tt0044427
nm0001907	Eric Ambler	1909	1998	writer,producer,director	tt0051994,tt0047376,tt0045659,tt0058672
nm0001908	Gilbert M. 'Broncho Billy' Anderson	1880	1971	director,actor,producer	tt0001706,tt0183803,tt0176832,tt0003719
nm0001909	Björn Andrésen	1955	\N	actor,soundtrack,archive_footage	tt8772262,tt4600502,tt0067445,tt0465689
nm0001910	Kenneth Anger	1927	2023	director,writer,editor	tt0039383,tt0489525,tt0489587,tt0489468
nm0001911	Philip Anglim	1952	\N	actor,archive_footage	tt0095280,tt0085101,tt0106145,tt0166593
nm0001912	Paul Anka	1941	\N	actor,composer,music_department	tt0093640,tt0056197,tt0427969,tt1156398
nm0001913	Little Oral Annie	1960	\N	actress,archive_footage	tt0196982,tt0124514,tt0086501,tt0167999
nm0001914	Adam Ant	1954	\N	actor,composer,director	tt0425112,tt0478970,tt0483607,tt0960144
nm0001915	Emile Ardolino	1943	1993	director,producer,miscellaneous	tt0092890,tt0149439,tt0085655,tt0165042
nm0001916	Arletty	1898	1992	actress,soundtrack,archive_footage	tt0056197,tt0037674,tt0030252,tt0035521
nm0001917	Pedro Armendáriz Jr.	1940	2011	actor,producer,writer	tt0097742,tt0285823,tt0120746,tt0236493
nm0001918	Louis Armstrong	1901	1971	music_artist,actor,music_department	tt0049314,tt0039655,tt2382320,tt0087995
nm0001919	Peggy Ashcroft	1907	1991	actress,archive_footage	tt0087892,tt0026029,tt0067805,tt0080212
nm0001920	Isaac Asimov	1920	1992	writer,miscellaneous,archive_footage	tt0343818,tt0182789,tt0079945,tt0804484
nm0001921	Paul Attanasio	1959	\N	writer,producer,script_department	tt0110932,tt0119008,tt0109635,tt0106028
nm0001922	Jean-Pierre Aumont	1911	2001	actor,writer,soundtrack	tt0070460,tt0035769,tt0046000,tt0038592
nm0001923	Margaret Avery	1944	\N	actress,producer,soundtrack	tt0088939,tt0070355,tt2345481,tt0094770
nm0001924	Hoyt Axton	1938	1999	actor,music_department,composer	tt0087363,tt0109830,tt0064276,tt0942385
nm0001925	Johann Sebastian Bach	1685	1750	music_department,composer,soundtrack	tt0181689,tt1318514,tt0399201,tt1706620
nm0001926	Joan Baez	1941	\N	music_department,actress,composer	tt0362270,tt0067756,tt5027774,tt1127896
nm0001927	Josephine Baker	1906	1975	actress,music_department,soundtrack	tt0026023,tt0026891,tt0135652,tt0401445
nm0001928	Roy Ward Baker	1916	2010	director,assistant_director,miscellaneous	tt0051994,tt0068230,tt0081178,tt0057610
nm0001929	Josiane Balasko	1950	\N	actress,writer,director	tt0113149,tt1442519,tt0074811,tt1091992
nm0001930	Russell Banks	1940	2023	writer,producer,actor	tt0120255,tt0118564,tt2150507,tt3750408
nm0001931	Binnie Barnes	1903	1998	actress,producer,soundtrack	tt0039037,tt0038108,tt0024473,tt0028373
nm0001932	Richard Barthelmess	1895	1963	actor,producer,soundtrack	tt0031762,tt0021865,tt0019557,tt0020370
nm0001933	Geoffrey Bayldon	1924	2017	actor,archive_footage	tt0061452,tt0063881,tt0051994,tt0056751
nm0001934	Kabir Bedi	1946	\N	actor,writer,miscellaneous	tt0086034,tt0347473,tt4535650,tt0074050
nm0001935	Noah Beery	1882	1946	actor,soundtrack,archive_footage	tt0016634,tt0024548,tt0018346,tt0027646
nm0001936	Roxanne Blaze	1974	\N	actress,archive_footage	tt0106366,tt0112466,tt0104579,tt0128759
nm0001937	Marco Beltrami	1966	\N	composer,music_department,producer	tt0343818,tt0816711,tt0167190,tt0187738
nm0001938	Richard Belzer	1944	2023	actor,writer,producer	tt0203259,tt0106028,tt0086250,tt0120841
nm0001939	Maurice Benard	1963	\N	actor,soundtrack,archive_footage	tt0056758,tt2446980,tt0065272,tt0107566
nm0007952	Daphne Abbott	1938	\N	actress	tt0048646,tt1611644,tt1337079
nm0001940	Peter Benchley	1940	2006	writer,producer,actor	tt0073195,tt0085750,tt0093300,tt0077766
nm0001941	Iris Berben	1950	\N	actress,soundtrack,archive_footage	tt7322224,tt0806904,tt1320320,tt1083452
nm0001942	Luca Bercovici	\N	\N	producer,actor,director	tt3148266,tt1564777,tt0094884,tt0089200
nm0001943	Marisa Berenson	1947	\N	actress,soundtrack,archive_footage	tt0068327,tt0072684,tt1130984,tt0393403
nm0001944	Edgar Bergen	1903	1978	actor,writer,soundtrack	tt0030359,tt0039404,tt0079588,tt0037297
nm0001945	Claude Berri	1934	2009	producer,actor,writer	tt0091288,tt0107002,tt0063771,tt0792965
nm0001946	Chuck Berry	1926	2017	music_artist,composer,actor	tt0119654,tt0088763,tt1959563,tt0120812
nm0001947	Turhan Bey	1922	2012	actor,producer,archive_footage	tt0035096,tt0036777,tt0040829,tt0038778
nm0001948	Charles Bickford	1891	1967	actor,soundtrack,archive_footage	tt0039224,tt0020641,tt0047522,tt0036377
nm0001949	Andrew Birkin	1945	\N	writer,miscellaneous,director	tt0091605,tt0396171,tt0106535,tt0094816
nm0001950	Steve Bisley	1951	\N	actor,archive_footage	tt0079501,tt0115417,tt1343092,tt0099138
nm0001951	Björk	1965	\N	music_artist,composer,actress	tt0168629,tt11138512,tt0138545,tt0110413
nm0001952	Rubén Blades	1948	\N	actor,composer,music_department	tt0285823,tt0109456,tt2193215,tt0100403
nm0001953	Moritz Bleibtreu	1971	\N	actor,producer,director	tt0119472,tt0250258,tt0177858,tt0130827
nm0001954	Claire Bloom	1931	\N	actress,archive_footage	tt0082186,tt0057129,tt0044837,tt1504320
nm0001955	Ann Blyth	1928	\N	actress,soundtrack,archive_footage	tt0037913,tt0050494,tt0040002,tt0039224
nm0001956	John Wayne Bobbitt	1967	\N	actor,archive_footage	tt0140058,tt29930730,tt0122561,tt13634472
nm0001957	Lloyd Bochner	1924	2005	actor,archive_footage	tt0062138,tt0102510,tt0057015,tt0085863
nm0001958	Dirk Bogarde	1921	1999	actor,writer,soundtrack	tt0057490,tt0059084,tt0067445,tt0075784
nm0001959	Corinne Bohrer	1958	\N	actress,archive_footage	tt0093756,tt0098798,tt0212815,tt0412253
nm0001960	Romane Bohringer	1973	\N	actress,director,writer	tt0105032,tt35465530,tt8792898,tt0115561
nm0001961	Ray Bolger	1904	1987	actor,soundtrack,archive_footage	tt0032138,tt0054649,tt0041599,tt0034243
nm0001962	Lizzie Borden	1958	\N	director,writer,producer	tt0092238,tt0085267,tt0144642,tt0102340
nm0001963	Jesse Borrego	1962	\N	actor,producer,director	tt0083412,tt0118880,tt0106469,tt1657507
nm0001964	Rob Bottin	1959	\N	make_up_department,miscellaneous,special_effects	tt0093870,tt0100802,tt0114369,tt0084787
nm0001965	Élodie Bouchez	1973	\N	actress,producer,soundtrack	tt0111019,tt0120449,tt0254199,tt0348876
nm0001966	Clara Bow	1905	1965	actress,music_department,soundtrack	tt0022737,tt0020590,tt0018578,tt0021492
nm0001967	Peter Boyle	1935	2006	actor,soundtrack,archive_footage	tt0115167,tt0095963,tt0075314,tt0072431
nm0001968	Elizabeth Bracco	1957	\N	actress,costume_designer,soundtrack	tt0097940,tt0122933,tt0094025,tt0107594
nm0001969	Ray Bradbury	1920	2012	writer,producer,actor	tt0088591,tt0060390,tt0086336,tt0049513
nm0001970	Klaus Maria Brandauer	1943	\N	actor,director,writer	tt0089755,tt0082736,tt0086006,tt0097417
nm0001971	Ewen Bremner	1972	\N	actor,producer,composer	tt2763304,tt0117951,tt0451279,tt0370263
nm0001972	Richard Briers	1934	2013	actor,soundtrack,archive_footage	tt0316396,tt0107616,tt0078480,tt0075511
nm0001973	Christie Brinkley	1954	\N	actress,soundtrack,archive_footage	tt0085995,tt0810913,tt0120434,tt1266020
nm0001974	Blair Brown	1947	\N	actress,director,producer	tt0092336,tt0080360,tt0186566,tt0138304
nm0001975	Roscoe Lee Browne	1922	2007	actor,soundtrack,archive_footage	tt0068421,tt0074812,tt0133240,tt0095776
nm0001976	Horst Buchholz	1933	2003	actor,miscellaneous,archive_footage	tt0118799,tt0054047,tt0055256,tt0054866
nm0001977	Charles Bukowski	1920	1994	writer,actor,music_department	tt0092618,tt0417658,tt0086410,tt26657933
nm0001978	Emma Bunton	1976	\N	actress,soundtrack,archive_footage	tt0120185,tt8106534,tt0981227,tt1489889
nm0001979	Tom Burlinson	1956	\N	actor,music_department,soundtrack	tt0084296,tt0089153,tt0157239,tt0094152
nm0001980	Carter Burwell	1954	\N	composer,music_department,actor	tt5027774,tt2402927,tt11813216,tt0116282
nm0001981	Spring Byington	1886	1971	actress,miscellaneous,soundtrack	tt0030993,tt0035979,tt0026752,tt0038492
nm0001982	Sebastian Cabot	1918	1977	actor,soundtrack,archive_footage	tt0061852,tt0054387,tt0057546,tt0044760
nm0001983	Rory Calhoun	1922	1999	actor,producer,writer	tt0045891,tt0081184,tt0105191,tt0039133
nm0001984	Naomi Campbell	1970	\N	actress,producer,miscellaneous	tt1608290,tt6791096,tt0114682,tt1844624
nm0001985	Christy Canyon	1966	\N	actress,producer,miscellaneous	tt33055479,tt0161026,tt0160373,tt0160153
nm0001986	Truman Capote	1924	1984	writer,actor,soundtrack	tt0074937,tt0055018,tt0054698,tt0061809
nm0001987	Tantoo Cardinal	1950	\N	actress,director,producer	tt5362988,tt5537002,tt0099348,tt0120321
nm0001988	Marc Caro	1956	\N	director,writer,actor	tt0101700,tt0112682,tt0118583,tt0487928
nm0001989	Leslie Caron	1931	\N	actress,miscellaneous,soundtrack	tt0051658,tt0043278,tt0046000,tt0241303
nm0001990	Elpidia Carrillo	1961	\N	actress,producer,director	tt0093773,tt0091886,tt0420015,tt0100403
nm0001991	Leo G. Carroll	1886	1972	actor,archive_footage	tt0053125,tt0044079,tt0038109,tt0057765
nm0001992	Johnny Carson	1925	2005	writer,actor,producer	tt0055708,tt0116282,tt0059398,tt0260758
nm0001993	Vincent Cassel	1966	\N	actor,producer,director	tt0411272,tt0947798,tt0113247,tt1259014
nm0001994	Michael Caton-Jones	1957	\N	director,producer,actor	tt0100133,tt0430912,tt0269095,tt0119395
nm0001995	George Chakiris	1932	\N	actor,miscellaneous,soundtrack	tt0055614,tt0062873,tt0064088,tt9815554
nm0001996	Jeff Chandler	1918	1961	actor,producer,soundtrack	tt0042286,tt0048064,tt0050680,tt0045343
nm0001997	Patricia Charbonneau	1959	\N	actress,producer,soundtrack	tt0089015,tt0091474,tt0096087,tt0160862
nm0001998	Cyd Charisse	1922	2008	actress,soundtrack,archive_footage	tt0050972,tt0049490,tt0045537,tt0046807
nm0001999	Maury Chaykin	1949	2010	actor,miscellaneous,assistant_director	tt0104952,tt0086567,tt0099348,tt0119715
nm0002000	Leslie Cheung	1956	2003	actor,music_department,writer	tt0101258,tt0118845,tt0106332,tt0092263
nm0002001	Maurice Chevalier	1888	1972	actor,writer,soundtrack	tt0025493,tt0051658,tt0023303,tt0020112
nm0002002	Shin'ichi Chiba	1939	2021	actor,stunts,miscellaneous	tt0266697,tt0463985,tt0378194,tt0078513
nm0002003	David Chokachi	1968	\N	actor,producer,archive_footage	tt5935694,tt0096542,tt1596346,tt15731728
nm0002004	Sarita Choudhury	1966	\N	actress,producer,archive_footage	tt0452637,tt0120787,tt1951266,tt2980210
nm0002005	Agatha Christie	1890	1976	writer,archive_footage,archive_sound	tt1349600,tt0051201,tt0071877,tt1869347
nm0002006	Thomas Haden Church	1960	\N	actor,miscellaneous,producer	tt0375063,tt0413300,tt10872600,tt1282140
nm0002007	Tom Clancy	1947	2013	writer,producer,actor	tt0099810,tt0164184,tt0109444,tt0105112
nm0002008	Eric Clapton	1945	\N	music_artist,actor,composer	tt0104714,tt0093409,tt0097733,tt0102820
nm0002009	Arthur C. Clarke	1917	2008	writer,actor,art_department	tt0062622,tt0086837,tt0134933,tt6076524
nm0002010	Christian Clavier	1952	\N	actor,writer,producer	tt0108500,tt0189192,tt0133385,tt0250223
nm0002011	Lee J. Cobb	1911	1976	actor,director,soundtrack	tt0050083,tt0047296,tt0053804,tt0039208
nm0002012	Randall 'Tex' Cobb	1950	\N	actor,archive_footage	tt0093822,tt0110622,tt0109040,tt0086508
nm0002013	Charles Coburn	1877	1961	actor,soundtrack,archive_footage	tt0036172,tt0045810,tt0033804,tt0033533
nm0002014	Iron Eyes Cody	1907	1999	actor,miscellaneous,costume_department	tt0047501,tt0092974,tt0065570,tt0077630
nm0002015	Phil Collins	1951	\N	music_artist,actor,composer	tt0120855,tt0094819,tt0102057,tt0328880
nm0002016	William Conrad	1920	1994	actor,director,producer	tt0066636,tt0038669,tt0102070,tt0047264
nm0002017	Richard Conte	1910	1975	actor,director,soundtrack	tt0041958,tt0068646,tt0040202,tt0038235
nm0002018	Tom Conti	1941	\N	actor,soundtrack,archive_footage	tt15398776,tt0398017,tt0085933,tt0084591
nm0002019	Kevin Corcoran	1949	2015	assistant_director,actor,producer	tt0050798,tt0054357,tt0054195,tt0054390
nm0002020	Costa-Gavras	1933	\N	director,writer,assistant_director	tt0065234,tt0084335,tt0280653,tt0422015
nm0002021	Noël Coward	1899	1973	writer,actor,music_department	tt0034891,tt0064505,tt0037558,tt0048960
nm0002022	Jeanne Crain	1925	2003	actress,soundtrack,archive_footage	tt0040104,tt0038116,tt0041746,tt0038727
nm0002023	Matt Craven	1956	\N	actor,producer,archive_footage	tt0112740,tt0104257,tt1270798,tt0099871
nm0002024	Broderick Crawford	1911	1986	actor,producer,soundtrack	tt0041113,tt0042276,tt0042343,tt0043812
nm0002025	Hume Cronyn	1911	2003	actor,producer,writer	tt0088933,tt0037017,tt0036342,tt0088850
nm0002026	Mary Crosby	1959	\N	actress,soundtrack,archive_footage	tt0087451,tt0077000,tt0386140,tt0106145
nm0002027	Ben Cross	1947	2020	actor,producer,archive_footage	tt0796366,tt0082158,tt0113071,tt0760188
nm0002028	Sheryl Crow	1962	\N	music_artist,actress,composer	tt0120347,tt0117333,tt2719848,tt0272152
nm0002029	Maria Grazia Cucinotta	1968	\N	actress,producer,director	tt0143145,tt0110877,tt1161864,tt0118782
nm0002030	George Cukor	1899	1983	director,miscellaneous,assistant_director	tt0058385,tt0036855,tt0032904,tt0050631
nm0002031	Michael Curtiz	1886	1962	director,writer,actor	tt0034583,tt0029843,tt0037913,tt0026174
nm0002032	Roger Daltrey	1944	\N	music_artist,actor,producer	tt0073298,tt0073812,tt0093437,tt0093936
nm0002033	Tyne Daly	1946	\N	actress,writer,soundtrack	tt0083395,tt0209069,tt2250912,tt0074483
nm0002034	Jane Darwell	1879	1967	actress,soundtrack,archive_footage	tt0032551,tt0036244,tt0031381,tt0038762
nm0002035	Sammy Davis Jr.	1925	1990	actor,music_department,producer	tt0082136,tt0087032,tt0063534,tt0098442
nm0002036	Ann B. Davis	1926	2014	actress,soundtrack,archive_footage	tt0063878,tt0047752,tt0075485,tt0055100
nm0002037	Cliff De Young	1945	\N	actor,soundtrack,archive_footage	tt0115963,tt0083067,tt0097441,tt0085701
nm0002038	Gloria DeHaven	1925	2016	actress,soundtrack,archive_footage	tt0037365,tt0045702,tt0037408,tt0040848
nm0002039	Ruby Dee	1922	2014	actress,writer,producer	tt0765429,tt0097216,tt0102175,tt0055353
nm0002040	Vanessa del Rio	1952	\N	actress,director,miscellaneous	tt0082287,tt0179505,tt0090939,tt1111948
nm0002041	Dean Devlin	1962	\N	producer,writer,actor	tt0116629,tt0120685,tt1628841,tt0111282
nm0002042	Charles Dickens	1812	1870	writer,miscellaneous,soundtrack	tt0038574,tt23733776,tt0096061,tt0063385
nm0002043	Madhuri Dixit	1967	\N	actress,music_department,producer	tt0118983,tt0238936,tt2675978,tt2178470
nm0002044	Roger Donaldson	1945	\N	director,producer,writer	tt0412080,tt0093640,tt0114508,tt0086993
nm0002045	Stanley Donen	1924	2019	director,miscellaneous,producer	tt0056923,tt0045152,tt0050419,tt0047472
nm0002046	Brian Donlevy	1901	1972	actor,producer,soundtrack	tt0031088,tt0032554,tt0041503,tt0039056
nm0002047	Diana Dors	1931	1984	actress,writer,soundtrack	tt0050653,tt0047841,tt0068200,tt0040662
nm0002048	Melvyn Douglas	1901	1981	actor,soundtrack,archive_footage	tt0078841,tt0057163,tt0040613,tt0031725
nm0002049	Robert Downey Sr.	1936	2021	actor,director,writer	tt0090180,tt0118749,tt0218967,tt0064855
nm0002050	Irene Dunne	1898	1990	actress,soundtrack,archive_footage	tt0028597,tt0029284,tt0031593,tt0040458
nm0002051	Jimmy Durante	1893	1980	actor,music_department,soundtrack	tt0057193,tt0039898,tt0021305,tt0021772
nm0002052	Deanna Durbin	1921	2013	actress,soundtrack,archive_footage	tt0032644,tt0031311,tt0033095,tt0038341
nm0002053	Dan Duryea	1907	1968	actor,soundtrack,archive_footage	tt0041968,tt0036323,tt0038057,tt0038360
nm0002054	Sheena Easton	1959	\N	actress,soundtrack,archive_footage	tt0082398,tt0107211,tt0439410,tt0356150
nm0002055	Alison Eastwood	1972	\N	actress,writer,producer	tt0119668,tt7959026,tt0118548,tt0088272
nm0002056	Christine Ebersole	1953	\N	actress,soundtrack,archive_footage	tt0993846,tt0086879,tt0110989,tt0139668
nm0002057	Richard Edson	\N	\N	actor,writer,camera_department	tt0097216,tt0091042,tt0091763,tt0089017
nm0002058	Samantha Eggar	1939	\N	actress,soundtrack,archive_footage	tt0059043,tt0119282,tt0078908,tt0061584
nm0002059	Lisa Eichhorn	1952	\N	actress,writer,producer	tt0108473,tt0082220,tt0079123,tt2194499
nm0002060	Lisa Eilbacher	1956	\N	actress,archive_footage	tt0086960,tt0097737,tt0085121,tt0084434
nm0002061	Maurice Elvey	1887	1967	director,producer,writer	tt0325470,tt0325379,tt0023145,tt0017998
nm0002062	Kathryn Erbe	1965	\N	actress,miscellaneous	tt0164181,tt0275140,tt0103241,tt0109520
nm0002063	Leif Erickson	1911	1986	actor,soundtrack,archive_footage	tt0047296,tt0061263,tt0044030,tt0057917
nm0002064	Giancarlo Esposito	1958	\N	music_department,actor,producer	tt0903747,tt0114814,tt3040964,tt0097216
nm0002065	Gloria Estefan	1957	\N	music_artist,music_department,actress	tt0166943,tt0409182,tt0111255,tt0113845
nm0002066	Ramon Estevez	1963	\N	producer,actor,writer	tt1986770,tt4820224,tt6360810,tt0101531
nm0002067	Linda Evans	1942	\N	actress,soundtrack,archive_footage	tt0081856,tt0058791,tt0412137,tt0420277
nm0002068	Frances Farmer	1913	1970	actress,writer,soundtrack	tt0027459,tt0032481,tt0029675,tt0028817
nm0002069	Mimsy Farmer	1945	\N	actress,art_department,writer	tt0064694,tt2015381,tt0237534,tt0067681
nm0002070	Richard Farnsworth	1920	2000	actor,stunts,soundtrack	tt0166896,tt0100157,tt0087781,tt0088727
nm0002071	Will Ferrell	1967	\N	producer,actor,writer	tt0415306,tt1229340,tt0445934,tt0357413
nm0002072	Mel Ferrer	1917	2008	actor,director,miscellaneous	tt0046000,tt0053454,tt0045966,tt0049934
nm0002073	Lou Ferrigno	1951	\N	actor,producer,miscellaneous	tt0077031,tt0800080,tt0286716,tt0085672
nm0002074	Sally Fields	\N	\N	soundtrack,archive_footage	tt0142377,tt2844946
nm0002075	Peter Finch	1916	1977	actor,director,writer	tt0074958,tt0067805,tt0054403,tt0076594
nm0002076	Jason Flemyng	1966	\N	actor,producer,director	tt0421715,tt0120735,tt0118956,tt0486655
nm0002077	Dexter Fletcher	1966	\N	director,actor,producer	tt15326988,tt2066051,tt1727824,tt1083452
nm0002078	Frederic Forrest	1936	2023	actor,soundtrack,archive_footage	tt0078788,tt0071360,tt0106856,tt0096639
nm0002079	Steve Forrest	1925	2013	actor,soundtrack,archive_footage	tt0082766,tt0056197,tt0090056,tt0046333
nm0002080	Bob Fosse	1927	1987	miscellaneous,actor,director	tt0068327,tt0071746,tt0078754,tt0256153
nm0002081	Edward Fox	1937	\N	actor,producer,miscellaneous	tt0069947,tt0075784,tt0086006,tt0064072
nm0002082	James Franciscus	1934	1991	actor,producer,writer	tt0065462,tt0065761,tt0070248,tt0079227
nm0002083	Carl Franklin	1949	\N	actor,director,producer	tt0112857,tt0102592,tt0313443,tt13207736
nm0002084	Brenda Fricker	1945	\N	actress,archive_footage	tt0097937,tt0117913,tt0108174,tt0104431
nm0002085	Gert Fröbe	1913	1988	actor,writer,soundtrack	tt0058150,tt0062803,tt0051588,tt0060814
nm0002086	Lucio Fulci	1927	1996	writer,director,actor	tt0080057,tt0084719,tt0087759,tt0081318
nm0002087	Samuel Fuller	1912	1997	writer,director,actor	tt0057495,tt0044072,tt0046187,tt0047073
nm0002088	Annette Funicello	1942	2013	actress,writer,producer	tt0058384,tt0059287,tt0058953,tt0058440
nm0002089	Sidney J. Furie	1933	\N	director,writer,producer	tt0094074,tt0059319,tt0060120,tt0091278
nm0002090	Zach Galligan	1964	\N	actor,director,archive_footage	tt0087363,tt0090106,tt0096426,tt6038042
nm0002091	Michael Gambon	1940	2023	actor,music_department,soundtrack	tt0280707,tt0097108,tt0417741,tt1504320
nm0002092	John Garfield	1913	1952	actor,producer,miscellaneous	tt0038854,tt0038622,tt0038000,tt0039416
nm0002093	Greer Garson	1904	1996	actress,miscellaneous,soundtrack	tt0032943,tt0035093,tt0031385,tt0035238
nm0002094	Vittorio Gassman	1922	2000	actor,writer,director	tt0117665,tt0056512,tt0049399,tt0072037
nm0002095	Will Geer	1902	1978	actor,soundtrack,archive_footage	tt0068149,tt0068762,tt0061809,tt0043137
nm0002096	Judy Geeson	1948	\N	actress,soundtrack,archive_footage	tt0062376,tt0066730,tt0074452,tt1731697
nm0002097	Bob Geldof	1951	\N	actor,composer,writer	tt0084503,tt0120185,tt0120783,tt0437863
nm0002098	Laura Gemser	1950	\N	actress,costume_designer,costume_department	tt0072930,tt0084869,tt0089091,tt0074473
nm0002099	Henry Gibson	1935	2009	actor,soundtrack,archive_footage	tt0073440,tt0080455,tt0175880,tt0093260
nm0002100	Marie Gillain	1975	\N	actress,director,soundtrack	tt1035736,tt0115478,tt0102465,tt0112387
nm0002101	Robin Givens	1964	\N	actress,director,producer	tt0103859,tt0109288,tt0325537,tt5478918
nm0002102	Sharon Gless	1943	\N	actress,producer,archive_footage	tt0083395,tt0810788,tt0262985,tt1315214
nm0002103	Julian Glover	1935	\N	actor,soundtrack,archive_footage	tt0097576,tt0082398,tt0080684,tt0332452
nm0002104	Paulette Goddard	1910	1990	actress,producer,soundtrack	tt0032520,tt0027977,tt0033722,tt0037849
nm0002105	Judith Godrèche	1972	\N	actress,writer,director	tt3844362,tt0283900,tt0120744,tt0117477
nm0002106	Ruth Gordon	1896	1985	actress,writer,soundtrack	tt0063522,tt0077523,tt0067185,tt0059314
nm0002107	Betty Grable	1916	1973	actress,soundtrack,archive_footage	tt0045891,tt0043370,tt0034405,tt0033740
nm0002108	Gloria Grahame	1923	1981	actress,soundtrack,archive_footage	tt0042593,tt0045555,tt0038650,tt0044391
nm0002109	Faye Grant	1957	\N	actress,soundtrack,archive_footage	tt1046163,tt0086822,tt0085106,tt0164114
nm0002110	Rodney A. Grant	1959	\N	actor,producer	tt0099348,tt0228333,tt0120891,tt0101761
nm0002111	Karen Grassle	1942	\N	actress,writer,archive_footage	tt0071007,tt9815554,tt0111756,tt0087631
nm0002112	Jennifer Gray	1916	1962	actress,archive_footage	tt0039985,tt4368128,tt1699666,tt1663176
nm0002113	Sydney Greenstreet	1879	1954	actor,soundtrack,archive_footage	tt0033870,tt0034583,tt0037055,tt0034428
nm0002114	Kim Greist	1958	\N	actress,art_department,archive_footage	tt0091474,tt0088846,tt0094142,tt0107131
nm0002115	Wayne Gretzky	1961	\N	actor,producer,stunts	tt0109520,tt1754438,tt0096697,tt0069658
nm0002116	Paul Guilfoyle	1902	1961	actor,director,miscellaneous	tt0032551,tt0037263,tt0034145,tt0030760
nm0002117	Paul Guilfoyle	\N	\N	actor,producer,archive_footage	tt0119488,tt0118571,tt5853176,tt0119942
nm0002118	Alan Hale	1892	1950	actor,director,soundtrack	tt0029843,tt0025316,tt0029842,tt0033028
nm0002119	Arsenio Hall	1956	\N	producer,actor,writer	tt0094898,tt0097481,tt6802400,tt0092546
nm0002120	Lasse Hallström	1946	\N	director,writer,editor	tt0108550,tt0241303,tt0089606,tt2980648
nm0002121	Margaret Hamilton	1902	1985	actress,soundtrack,archive_footage	tt0032138,tt0025222,tt0053559,tt0065492
nm0002122	Harry Hamlin	1951	\N	actor,producer,writer	tt0082186,tt0090466,tt0077952,tt0804503
nm0002123	Adam Hann-Byrd	1982	\N	writer,miscellaneous,actor	tt0119349,tt0113497,tt0102316,tt0120694
nm0002124	Melora Hardin	1967	\N	actress,director,producer	tt0974661,tt1114677,tt0386676,tt0988595
nm0002125	Tonya Harding	1970	\N	actress,miscellaneous,archive_footage	tt0115747,tt0115101,tt0353917,tt2310408
nm0002126	Dorian Harewood	1950	\N	actor,soundtrack,archive_footage	tt0093058,tt0117705,tt0398712,tt0114576
nm0002127	Mariska Hargitay	1964	\N	actress,producer,director	tt0203259,tt0495596,tt0139414,tt0113627
nm0002128	Tess Harper	1950	\N	actress,archive_footage	tt0477348,tt0086423,tt0090886,tt0119395
nm0002129	Gregory Harrison	1950	\N	actor,producer,director	tt0078704,tt0174119,tt0087981,tt0076993
nm0002130	Kathryn Harrold	1950	\N	actress,archive_footage	tt0091828,tt0084931,tt0082764,tt0395843
nm0002131	Laurence Harvey	1928	1973	actor,director,producer	tt0056218,tt0053226,tt0056671,tt0056700
nm0002132	Amy Heckerling	\N	\N	writer,director,producer	tt0115137,tt0083929,tt0097778,tt3973820
nm0002133	Ernest Hemingway	1899	1961	writer,actor,archive_footage	tt0037382,tt0038669,tt0035896,tt32060803
nm0002134	Paul Henreid	1908	1992	director,actor,producer	tt0034583,tt0035140,tt0038461,tt0040444
nm0002135	Pamela Hensley	1950	\N	actress,archive_footage	tt0077278,tt0073631,tt0081249,tt0071054
nm0002136	Bernard Herrmann	1911	1975	music_department,composer,actor	tt0052357,tt0053125,tt0075314,tt0054215
nm0002137	Arthur Hiller	1923	2016	director,producer,actor	tt0066011,tt0067217,tt0079336,tt0098282
nm0002138	Gregory Hines	1946	2003	actor,miscellaneous,director	tt0082517,tt0110971,tt0157246,tt0091875
nm0002139	Judd Hirsch	1935	\N	actor,miscellaneous,producer	tt0077089,tt14208870,tt0116629,tt0268978
nm0002140	Agnieszka Holland	1948	\N	director,writer,producer	tt5328350,tt27722543,tt6828390,tt1417075
nm0002141	Celeste Holm	1917	2012	actress,miscellaneous,soundtrack	tt0042192,tt0039416,tt0049314,tt0041257
nm0002142	Sandrine Holt	1972	\N	actress,archive_footage	tt30459041,tt1856010,tt20212786,tt1796960
nm0002143	Edward Everett Horton	1886	1970	actor,soundtrack,archive_footage	tt0036613,tt0030241,tt0027125,tt0026523
nm0002144	John Houseman	1902	1988	actor,producer,writer	tt0070509,tt0073631,tt0073802,tt0080749
nm0002145	Trevor Howard	1913	1988	actor,archive_footage	tt0041959,tt0066319,tt0037558,tt0078346
nm0002146	James Wong Howe	1899	1976	cinematographer,camera_department,director	tt0025878,tt0060955,tt0057163,tt0052027
nm0002147	Tab Hunter	1931	2018	actor,producer,writer	tt0051516,tt0084021,tt0049036,tt0082926
nm0002148	Mary Beth Hurt	1946	\N	actress,archive_footage	tt0084917,tt0452637,tt0077742,tt0404032
nm0002149	Betty Hutton	1921	2007	actress,writer,soundtrack	tt0042200,tt0044672,tt0037077,tt0039698
nm0002150	Billy Idol	1955	\N	music_artist,actor,composer	tt0120888,tt0111257,tt0098987,tt0108399
nm0002151	Frank DeMarco	\N	\N	special_effects,actor,art_department	tt0088247,tt0083630,tt0080421,tt0085862
nm0002152	Jörg Widmer	\N	\N	camera_department,cinematographer,actor	tt5827916,tt0478304,tt0434409,tt0317919
nm0002153	Jack Cardiff	1914	2009	cinematographer,camera_department,director	tt0039192,tt0054326,tt0049934,tt0043265
nm0002154	Alfred Abel	1879	1937	actor,director,miscellaneous	tt0017136,tt0013086,tt0021128,tt0013496
nm0002155	Edward M. Abroms	1935	2018	editor,director,editorial_department	tt1466074,tt0111301,tt0089370,tt0085255
nm0002156	Tengiz Abuladze	1924	1994	director,writer,archive_footage	tt0093754,tt0048324,tt0075963,tt0057695
nm0002157	Herbert Achternbusch	1938	2022	actor,writer,director	tt0082651,tt0113244,tt0081221,tt0085585
nm0002158	Edvin Adolphson	1893	1979	actor,director,writer	tt0036012,tt0026366,tt0035029,tt0024726
nm0002159	Alejandro Agresti	1961	\N	director,writer,cinematographer	tt0115773,tt0169364,tt0385889,tt0296915
nm0002160	Moustapha Akkad	1930	2005	producer,miscellaneous,director	tt0074896,tt0077651,tt0097474,tt0085636
nm0002161	Hans Albers	1891	1960	actor,producer,soundtrack	tt0036191,tt1244668,tt0022869,tt0030730
nm0002162	Henri Alekan	1909	2001	cinematographer,camera_department,director	tt0093191,tt0046250,tt0038348,tt0084829
nm0002163	Nusrat Fateh Ali Khan	1948	1997	music_artist,music_department,composer	tt1190080,tt0450259,tt0110632,tt0116409
nm0002164	Irving Allen	1905	1987	producer,miscellaneous,director	tt0039267,tt0041242,tt0039462,tt0047072
nm0002165	Marc Allégret	1900	1973	director,writer,art_director	tt0030100,tt0044385,tt0045942,tt0047817
nm0002166	John A. Alonzo	1934	2001	cinematographer,actor,camera_department	tt0054047,tt0071315,tt0111280,tt0067927
nm0002167	Gianni Amelio	1945	\N	director,writer,assistant_director	tt0104663,tt0345032,tt0110299,tt0100389
nm0002168	Willeke van Ammelrooy	1944	\N	actress,director,writer	tt0410297,tt0112379,tt0198654,tt0181194
nm0002169	Tori Amos	1963	\N	actress,composer,music_department	tt0117998,tt0116225,tt0304415,tt0114857
nm0002170	Ashok Amritraj	1957	\N	producer,actor,writer	tt0185183,tt1646980,tt0144117,tt0988047
nm0002171	Franco Amurri	\N	\N	director,writer,assistant_director	tt0164519,tt0099581,tt0110557,tt1010004
nm0002172	Mukul Anand	1951	1997	director,writer,producer	tt0104607,tt0098999,tt0092026,tt13782010
nm0002173	Laurie Anderson	1947	\N	actress,composer,writer	tt4935446,tt0091216,tt9495224,tt0247196
nm0002174	Yves Angelo	1956	\N	cinematographer,camera_department,director	tt0109454,tt0297301,tt0153588,tt0119853
nm0002175	Ken Annakin	1914	2009	director,writer,producer	tt0056197,tt0084504,tt0059797,tt0049847
nm0002177	Oscar Apfel	1878	1938	actor,director,writer	tt0022382,tt0004635,tt0021873,tt0006403
nm0002178	Alexandre Arcady	1947	\N	producer,writer,director	tt3600588,tt1934205,tt26680456,tt0090932
nm0002179	George Archainbaud	1890	1959	director,assistant_director,writer	tt0013463,tt0037742,tt0013944,tt0023327
nm0002180	Francesca Archibugi	1960	\N	writer,director,actress	tt0095633,tt1261056,tt0107040,tt0143093
nm0002181	Imanol Arias	1956	\N	actor,producer,director	tt0302447,tt0093458,tt0119974,tt0084228
nm0002182	Harold Arlen	1905	1986	music_department,composer,soundtrack	tt0032138,tt0346156,tt1856101,tt0120184
nm0002183	George Arliss	1868	1946	actor,writer,soundtrack	tt0019823,tt0020938,tt0021595,tt0025272
nm0002184	Vic Armstrong	1946	\N	stunts,assistant_director,actor	tt2467046,tt0480249,tt0246460,tt0160127
nm0002185	Malcolm Arnold	1921	2006	composer,music_department,soundtrack	tt0050212,tt0053318,tt0064072,tt0043650
nm0002186	Luciana Arrighi	1940	\N	production_designer,costume_designer,actress	tt0104454,tt0114388,tt0107943,tt0166485
nm0002187	Giorgos Arvanitis	1941	\N	cinematographer,camera_department,producer	tt0220831,tt0089590,tt4568370,tt0289485
nm0002188	Dorothy Arzner	1897	1979	director,writer,editor	tt0023891,tt0023213,tt0017865,tt0028661
nm0002189	Giuliano Carnimeo	1932	2016	director,assistant_director,writer	tt0073713,tt0063158,tt0085514,tt0055577
nm0002190	Anthony Asquith	1902	1968	director,writer,actor	tt0043362,tt0030637,tt0052033,tt0038238
nm0002191	Jacques Audiard	1952	\N	writer,director,producer	tt20221436,tt2053425,tt4971344,tt1235166
nm0002192	Michel Audiard	1920	1985	writer,director,actor	tt0164212,tt0082436,tt0057344,tt0089726
nm0002193	Claude Autant-Lara	1901	2000	director,writer,costume_designer	tt0038476,tt0049877,tt0047432,tt0045569
nm0002194	Pupi Avati	1938	\N	writer,director,producer	tt1267498,tt0098390,tt1249306,tt0085597
nm0002195	Hy Averback	1920	1997	director,producer,actor	tt0068098,tt0050053,tt0053547,tt0043435
nm0002196	Gabriel Axel	1918	2014	director,actor,writer	tt0092603,tt0063531,tt0125695,tt0050464
nm0002197	William Axt	1888	1959	composer,music_department,editorial_department	tt0025878,tt0021516,tt0026901,tt0025375
nm0002198	Charles Aznavour	1924	2018	actor,music_department,composer	tt0054389,tt10749896,tt0814314,tt0120663
nm0002199	Hector Babenco	1946	2016	director,writer,producer	tt0293007,tt0082912,tt0120674,tt0089424
nm0002200	Richard Walden	\N	\N	camera_department,cinematographer,art_department	tt0086567,tt0338337,tt0094894,tt0093409
nm0002201	John Debney	1956	\N	composer,music_department,soundtrack	tt3040964,tt1485796,tt0335345,tt1228705
nm0002202	Roy Webb	1888	1982	music_department,composer,art_director	tt0038787,tt0039689,tt0034587,tt0048356
nm0002203	Loren Miller	\N	\N	editor,director,writer	tt8686236,tt0190355,tt0190795,tt9394858
nm0002204	Michael A. Dawson	\N	\N	editorial_department,editor,sound_department	tt0780186,tt0119107,tt1205541,tt0133302
nm0002205	Branislav Zivkovic	1947	\N	composer,music_department,soundtrack	tt0088312,tt0074701,tt0094914,tt0187254
nm0002206	Kevin Brownlow	1938	\N	producer,director,writer	tt0055024,tt0364151,tt0158310,tt0073911
nm0002207	Richard Franklin	1948	2007	director,producer,writer	tt0113337,tt0078067,tt0091415,tt0080453
nm0002208	Michael T. Andreas	\N	\N	music_department,sound_department,composer	tt0167190,tt0219965,tt0308208,tt0111323
nm0002209	John McDermott	1893	1946	actor,writer,director	tt0017084,tt0012559,tt0024993,tt0011117
nm0002210	Frank DeCaro	1962	\N	actor,writer,producer	tt8900306,tt0289785,tt0296065,tt0283427
nm0002211	Christopher DeFaria	1959	\N	producer,production_manager,actor	tt1454468,tt1392190,tt1677720,tt0409459
nm0002212	Anders Bohman	1965	\N	cinematographer,camera_department,director	tt4446200,tt14509240,tt0496546,tt0171851
nm0002213	Anders Bohman	1957	\N	producer	tt0120150
nm0002214	Doug Nelson	\N	\N	sound_department,music_department	tt0092342,tt0096532,tt0331265,tt0355406
nm0002215	Doug Nelson	\N	\N	camera_department	tt0111127,tt0099329,tt0101264,tt0108277
nm0002216	Yves Robert	1920	2002	actor,producer,writer	tt0068655,tt0054949,tt0076470,tt0242775
nm0002217	Mychael Danna	1958	\N	composer,music_department,soundtrack	tt0454876,tt1210166,tt0449059,tt0265343
nm0002218	Claude Miller	1942	2012	writer,director,production_manager	tt0082436,tt0089072,tt0269329,tt0098087
nm0002219	Alexander Scherer	1965	\N	production_designer,art_director,art_department	tt1937390,tt2382009,tt0159382,tt1838603
nm0002220	Alexander Scherer	\N	\N	director,writer,producer	tt2879912,tt0110275
nm0002221	Mark V. Phillips	\N	\N	editorial_department,visual_effects,sound_department	tt10545296,tt0329774,tt6565702,tt15326988
nm0002222	Christopher Bradley	1961	\N	actor,writer,director	tt4287236,tt0119508,tt0096426,tt0087472
nm0002223	Vera Anderson	\N	\N	camera_department,miscellaneous,producer	tt0182992,tt0091343,tt0105729,tt0077660
nm0002224	James Moll	1963	\N	producer,director,editor	tt4329396,tt0795174,tt0827507,tt1853563
nm0002225	Axel Sand	1961	\N	director,cinematographer,camera_department	tt5567494,tt0458349,tt1305627,tt0258827
nm0002226	Misha Segal	1943	\N	composer,music_department,producer	tt0089461,tt0098090,tt0093744,tt1883367
nm0002227	John Frizzell	\N	\N	composer,music_department,producer	tt0118375,tt9308022,tt0151804,tt2071645
nm0002228	Nicholas Musuraca	1892	1975	cinematographer,camera_department,art_department	tt0039689,tt0034587,tt0031774,tt0038975
nm0002229	Carlos M. Gallardo	\N	\N	camera_department	tt0119229,tt0111143,tt0119488,tt0091129
nm0002230	Carlos Gallardo	\N	\N	producer,actor,writer	tt0104815,tt0112851,tt27806093,tt2034176
nm0002231	Gian Maria Volontè	1933	1994	actor,director,writer	tt0058461,tt0065889,tt0059578,tt0065531
nm0002232	Erich von Stroheim Jr.	1916	1968	assistant_director,actor	tt0056625,tt0057765,tt0052442,tt0048913
nm0002233	Erich von Stroheim	1885	1957	actor,writer,director	tt0043014,tt0028950,tt0019558,tt0009937
nm0002234	Scott Robertson Price	\N	\N	assistant_director,miscellaneous,producer	tt0097474,tt1084733,tt0285439,tt0182396
nm0002235	Mike Hagerty	1954	2022	actor,soundtrack	tt0093693,tt0120179,tt0141369,tt0108174
nm0002236	Eric M. Klein	\N	\N	producer,production_manager,editorial_department	tt32367551,tt27784227,tt30215084,tt26420234
nm0002237	John David Allen	\N	\N	editor,editorial_department,director	tt0306734,tt0384686,tt2707792,tt1440379
nm0002238	John A. Kuri	\N	\N	producer,writer,director	tt0101609,tt0092721,tt0110734,tt0092418
nm0002239	Prince	1958	2016	music_artist,composer,actor	tt0092133,tt0087957,tt0099691,tt0096895
nm0002240	Katt Shea	\N	\N	director,writer,actress	tt8323104,tt0105156,tt11278476,tt0144814
nm0002242	Anthony Valentine	1939	2015	actor,soundtrack,archive_footage	tt0424417,tt0061238,tt0103411,tt1356323
nm0002243	Sam Douglas	1957	\N	actor,special_effects,miscellaneous	tt0208092,tt1606610,tt1657507,tt0119116
nm0002244	Patrick Robert Smith	1964	\N	actor,stunts	tt0110442,tt1196946,tt1219024,tt0106079
nm0002245	Tzi Ma	1952	\N	actor,producer,archive_footage	tt4566758,tt0118928,tt0335245,tt2543164
nm0002246	Harry Van Gorkum	\N	\N	actor,miscellaneous,writer	tt1538403,tt0838232,tt0106080,tt0314353
nm0002247	Alan Natale	\N	\N	actor,director,writer	tt25809514,tt0292887,tt25817532
nm0002248	Gerard Kelly	1959	2010	actor,director,soundtrack	tt0197152,tt1380818,tt0090401,tt0281973
nm0002249	Matt Lyon	\N	\N	actor	tt0117420
nm0002250	Rémi Bergman	1960	\N	production_manager,actor,location_management	tt0401445,tt0269329,tt0106195,tt0191636
nm0002251	Dan Krumlauf	\N	\N	make_up_department	tt0116202
nm0002252	David A. Armstrong	\N	\N	camera_department,cinematographer,writer	tt0387564,tt0117218,tt2167202,tt1233227
nm0002253	John Carroll Lynch	1963	\N	actor,director,editor	tt4276820,tt0116282,tt1092026,tt5859238
nm0002254	King Hu	1932	1997	actor,director,writer	tt0064451,tt0192213,tt0084793,tt0079886
nm0002255	Sergei Kozlov	1964	\N	cinematographer,camera_department,actor	tt0107309,tt0106710,tt0130414,tt0110355
nm0002256	Jordanna Fineberg	1970	\N	costume_department,costume_designer,miscellaneous	tt1632701,tt2275629,tt1477715,tt0383574
nm0002257	Håkan Holmberg	1957	\N	cinematographer,camera_department,miscellaneous	tt13370748,tt10540142,tt0127382,tt0228871
nm0002258	Jeffrey Abramson	1974	\N	producer,miscellaneous,location_management	tt0116000,tt0120192,tt0116289,tt0413975
nm0002259	Danny Nowak	1959	\N	cinematographer,camera_department,miscellaneous	tt6195094,tt6491178,tt0120609,tt0460780
nm0002260	Melissa Moseley	\N	\N	camera_department	tt1375666,tt0433035,tt0401729,tt0166924
nm0002261	Alexander Kiening	1973	\N	producer,camera_department,production_manager	tt8629136,tt5314232,tt4670580,tt0133385
nm0002262	J.P. Manoux	\N	\N	actor,director,writer	tt0340281,tt0356150,tt1759761,tt0108757
nm0002263	Ken Rudolph	1941	\N	editorial_department,miscellaneous,visual_effects	tt0116225,tt0109190,tt3133240,tt0113451
nm0002264	Glenn Gaines	\N	\N	sound_department,actor,music_department	tt1353056,tt0245891,tt0176948,tt0207377
nm0002265	John B. Josselyn	1971	\N	art_director,art_department,production_designer	tt0117731,tt1464540,tt8111088,tt0233469
nm0002266	Jak Osmond	1966	\N	special_effects,assistant_director,actor	tt0253556,tt1772240,tt0449487,tt1306980
nm0002267	Franco Barbeite	\N	\N	editorial_department,editor,director	tt0183659,tt0111453,tt0176579,tt1437336
nm0002268	Gary Vermeir	\N	\N	writer,actor	tt0115243,tt0446636,tt0808080,tt0388618
nm0002269	Edmon Ryan	1905	1984	actor,archive_footage	tt0066473,tt0042771,tt0065112,tt0043238
nm0002270	Rex Ingram	1895	1969	actor,soundtrack,archive_footage	tt0027700,tt0033152,tt0051666,tt0036323
nm0002271	Rex Ingram	1892	1950	director,actor,writer	tt0006740,tt0014440,tt0017103,tt0201452
nm0002272	Glenn M. Benest	\N	\N	writer,producer,miscellaneous	tt0294631,tt0082245,tt0181804,tt0453463
nm0002273	Brett Boydstun	\N	\N	miscellaneous,production_manager,producer	tt0120903,tt0163025,tt0120828,tt0114194
nm0002274	Nina Gold	\N	\N	casting_director,casting_department,producer	tt20215234,tt2527338,tt1478964,tt0944947
nm0002275	Mark Parry	\N	\N	cinematographer,camera_department,actor	tt2159538,tt0104922,tt27923719,tt0104438
nm0002276	Reinier Selen	1972	\N	producer,miscellaneous,production_manager	tt1800338,tt1320352,tt1609159,tt0288861
nm0002277	Jürgen Knoll	1965	\N	costume_designer,costume_department	tt0113155,tt1054515,tt3825638,tt0347017
nm0002278	Simon Marshall	\N	\N	director,writer	tt0179400,tt5514364,tt31502841
nm0002279	Chuck McClelland	\N	\N	editor,editorial_department	tt0069897,tt0071517,tt0086734,tt0065317
nm0002280	Charles McClelland	\N	\N	editor,editorial_department,director	tt0286788,tt0118437,tt1319735,tt0115237
nm0002281	Lisa Janowski	\N	\N	assistant_director,miscellaneous	tt0119217,tt0110308,tt0158371,tt0208196
nm0002282	Jeff Marsh	1961	\N	composer,music_department,producer	tt0105104,tt0105932,tt0108099,tt3744264
nm0002283	Rodney Taylor	\N	\N	cinematographer,camera_department	tt1517260,tt0486822,tt0964517,tt0278435
nm0002284	Saeed Shahram	\N	\N	composer	tt5423636,tt0106207,tt33485500,tt0125032
nm0002285	Pat O'Brien	1899	1983	actor,producer,soundtrack	tt0053291,tt0029870,tt0032676,tt0033062
nm0002286	Michael W. Abbott	\N	\N	producer,director,cinematographer	tt10584528,tt0488535,tt4247938
nm0002287	Gary Kauffman	\N	\N	miscellaneous,producer,actor	tt0978759,tt0353324,tt0139362,tt0116985
nm0002288	Elliott Goldkind	1964	\N	music_department,composer,sound_department	tt2543508,tt0432291,tt0449059,tt10293938
nm0002289	Mikhail Kozlovsky	\N	\N	actor	tt0164204
nm0002290	Loren Avedon	1962	\N	actor,stunts,producer	tt0102217,tt0118944,tt0114447,tt0097991
nm0002291	Joanna Jimenez	\N	\N	editorial_department,sound_department,editor	tt0091867,tt0089118,tt0097351,tt0103644
nm0002292	Peggy Names	\N	\N	sound_department,camera_department	tt0181689,tt0368891,tt0407304,tt0272338
nm0002293	Heather Lee	\N	\N	actress,miscellaneous,writer	tt1442437,tt0844441,tt0497502
nm0002294	Timm Zemanek	1947	\N	actor	tt0331468,tt0110955,tt0116329,tt0161216
nm0002295	Karin Thayer	1971	\N	director,cinematographer,writer	tt0177211,tt0202332,tt0202394,tt0202631
nm0002296	Folmer Wiesinger	\N	\N	editor,editorial_department,sound_department	tt27715180,tt14825858,tt26452193,tt5665418
nm0002297	Oswald Schwander	\N	\N	sound_department,composer	tt1188729,tt0318081,tt0277327,tt0170949
nm0002298	Roger Sword	1933	2010	sound_department,editor,editorial_department	tt0088011,tt0080455,tt0081534,tt0092965
nm0002299	Carlo Varini	1946	2014	cinematographer,camera_department	tt0095250,tt0372824,tt0090095,tt0493395
nm0002300	Robert E. Collins	1935	2008	cinematographer,camera_department,actor	tt0078346,tt0086034,tt0086759,tt0202179
nm0002301	Carl Davis	1936	2023	composer,music_department,actor	tt0017925,tt0021749,tt0082416,tt0397786
nm0002302	James Bernard	1925	2001	composer,writer,music_department	tt0051554,tt0042949,tt0050280,tt0013442
nm0002303	Trevor Jones	1949	\N	composer,music_department,producer	tt0106582,tt0104691,tt0125439,tt0118929
nm0002304	Laurence Rosenthal	1926	\N	music_department,composer,soundtrack	tt0082186,tt0103586,tt0765476,tt0094791
nm0002305	Patrick Williams	1939	2018	composer,music_department,director	tt0078902,tt0075528,tt0104051,tt0108162
nm0002306	Boris Paval Conen	1968	\N	director,writer,miscellaneous	tt6242270,tt0486185,tt0938293,tt0756342
nm0002307	Marge Piane	\N	\N	assistant_director,miscellaneous	tt0120201,tt1135985,tt0279113,tt0103776
nm0002308	Ayesa Adams	\N	\N	camera_department,art_department	tt0119985,tt0118886,tt0150500,tt0187357
nm0002309	James 'Keeper' Auld	1968	\N	camera_department	tt0418279,tt0427392,tt0469263,tt0411008
nm0002310	David Trulli	1961	\N	cinematographer,camera_department	tt0137094,tt0268229,tt0326669,tt0203078
nm0002311	Montagu Love	1880	1943	actor,soundtrack,archive_footage	tt0031398,tt0033028,tt0032762,tt0028757
nm0002312	Obie Benz	1949	\N	producer,miscellaneous,director	tt0095289,tt0082012,tt5278426,tt0082315
nm0002313	Greg Fawcett	\N	\N	assistant_director,production_manager,stunts	tt0120901,tt8781414,tt0150377,tt0378109
nm0002314	Mac Ruth	1967	\N	sound_department,miscellaneous,assistant_director	tt1856101,tt3659388,tt0411477,tt0320691
nm0002315	Roger Wielgus	1951	\N	director,writer,producer	tt0205207,tt0205042,tt0204965,tt0205433
nm0002316	Alice D.G. Miller	1894	1985	writer	tt0023951,tt0019501,tt0017509,tt0017166
nm0002317	Alice Duer Miller	1874	1942	writer,actress,miscellaneous	tt0026942,tt0032205,tt0044855,tt0027457
nm0002318	John Foster	\N	\N	camera_department,cinematographer,producer	tt0274812,tt0082418,tt0420291,tt0120244
nm0002319	John Foster	\N	\N	camera_department	tt0118661,tt0113492,tt0454824,tt0100133
nm0002320	Fred Murphy	1942	\N	cinematographer,camera_department,director	tt0119664,tt0164181,tt0363988,tt0265349
nm0002321	Fred V. Murphy	1943	2013	cinematographer,camera_department	tt0097166,tt0105946,tt0346222,tt0094138
nm0002322	Richard Burns	\N	\N	actor,producer	tt0891527,tt0975645,tt0442933,tt0096134
nm0002323	Stephen McNutt	\N	\N	cinematographer,camera_department	tt0407362,tt17720272,tt0799862,tt1839578
nm0002324	Robert Dawson	\N	\N	miscellaneous,visual_effects	tt0119116,tt0120591,tt0368891,tt0120903
nm0002325	Matthew Versteeg	1966	\N	set_decorator,art_department,art_director	tt2654580,tt1259571,tt5531470,tt17720272
nm0002326	Al Sapienza	\N	\N	actor,producer,stunts	tt0141842,tt1856010,tt1632701,tt9288030
nm0002327	Brett Lewis	\N	\N	actor,writer,assistant_director	tt0197753,tt0077597
nm0002328	Christopher Prince	\N	\N	actor	tt0074042,tt0082386
nm0002329	Christopher Prince	\N	\N	editorial_department,editor,producer	tt1437346,tt0173760,tt0309905,tt0129117
nm0002330	Larry Portmann	1965	\N	camera_department	tt1318514,tt0831387,tt0770828,tt5315210
nm0002331	Stephen Jones	\N	\N	producer,production_manager	tt7126948,tt0451279,tt1454468,tt0348150
nm0002332	Stephen Lang	1952	\N	actor,producer,writer	tt0499549,tt4160708,tt1630029,tt0091474
nm0002333	Robert Estrin	1942	\N	editor,producer,editorial_department	tt0069762,tt0105265,tt0068334,tt0094894
nm0002334	Douglas C. Hart	\N	2023	camera_department,visual_effects	tt0097770,tt0100404,tt0118887,tt0089853
nm0002335	Brahm Wenger	\N	\N	composer,music_department,producer	tt0113313,tt1544572,tt4885044,tt14038512
nm0002336	Declan Quinn	\N	\N	cinematographer,camera_department,producer	tt8503618,tt9827834,tt10795574,tt0411195
nm0002337	Roger Christian	1944	\N	art_department,director,writer	tt0185183,tt0076759,tt0078748,tt0090068
nm0002338	Jack Clayton	1921	1995	producer,assistant_director,director	tt0055018,tt0062089,tt0297626,tt0071577
nm0002339	Allen Coulter	\N	\N	director,producer,assistant_director	tt1403981,tt0427969,tt0141842,tt0914387
nm0002340	Stuart Gordon	1947	2020	writer,director,producer	tt0089885,tt0091083,tt0758786,tt0106950
nm0002341	Richard T. Whelan	\N	\N	actor	tt0398839,tt0371282,tt0314822,tt0153012
nm0002342	Richard Whelan	\N	\N	assistant_director,producer,miscellaneous	tt0458339,tt2094766,tt0113189,tt6806448
nm0002343	Adrian G. Griffiths	1964	\N	actor,stunts,director	tt0822854,tt3385516,tt0458525,tt0213327
nm0002344	Tom Judson	1960	\N	composer,actor,music_department	tt0470272,tt0100142,tt1156149,tt0864992
nm0002345	Jonathan Southard	1960	\N	assistant_director,miscellaneous,producer	tt0111257,tt3276924,tt0372873,tt0120338
nm0002346	Harry Marker	1899	1990	editor	tt0031774,tt0037536,tt0038975,tt0032021
nm0002347	Kate O'Toole	1960	\N	actress,producer	tt0092843,tt1646922,tt0256276,tt2204867
nm0002348	Ray Preziosi	\N	\N	cinematographer,camera_department	tt7156832,tt0338988,tt0122076,tt0207554
nm0002349	Kevin Inch	1953	\N	producer,director,assistant_director	tt0083470,tt0993840,tt0101199,tt0096583
nm0002350	Jim Meskimen	1959	\N	actor,animation_department,miscellaneous	tt0170016,tt0112384,tt0098800,tt1266020
nm0002351	Juli-Ann Kay	1958	\N	casting_department,casting_director,producer	tt0120903,tt0144120,tt0240890,tt0266452
nm0002352	Raul daSilva	1933	\N	director,writer,camera_department	tt0207703,tt0307686,tt0307463,tt0385613
nm0002353	Thomas Newman	1955	\N	music_department,composer,soundtrack	tt1074638,tt0910970,tt8579674,tt1454029
nm0002354	John Williams	1932	\N	music_department,composer,actor	tt0107290,tt0076759,tt0078346,tt2488496
nm0002355	Charles Van Enger	1890	1980	cinematographer,camera_department,assistant_director	tt0035124,tt0033855,tt0011387,tt0037717
nm0002356	Gregory Avellone	\N	\N	actor,director,producer	tt0119925,tt0093640,tt0114898,tt0103855
nm0002357	JD Roberto	1969	\N	actor,stunts,producer	tt0120746,tt0990407,tt0115289,tt0106004
nm0002358	Laura Behary	1961	\N	editorial_department,miscellaneous	tt0228750,tt0113845,tt0405422,tt0120888
nm0002359	Katy Wallin	\N	\N	casting_director,casting_department,producer	tt0192788,tt0183515,tt5095514,tt2184219
nm0002360	Matthias Maaß	\N	\N	camera_department,cinematographer,director	tt0093191,tt2363241,tt1858812,tt1161645
nm0002361	Lynn Sable	\N	\N	sound_department,music_department	tt6791350,tt0458339,tt9032400,tt0913354
nm0002362	Ken Estes	\N	\N	special_effects	tt0253754,tt0267804,tt0102685,tt0088011
nm0002363	Don Neudecker	1971	\N	visual_effects,animation_department,producer	tt0105946,tt0225683,tt0121804,tt0120711
nm0002364	Dante Basco	1975	\N	actor,producer,writer	tt0102057,tt0179116,tt0446046,tt2139965
nm0002365	Dionysio Basco	1977	\N	actor,director,producer	tt0285728,tt0199725,tt4065382,tt13322120
nm0002366	Christopher Young	\N	\N	composer,music_department,actor	tt1922777,tt0244244,tt0137494,tt0391198
nm0002367	John Warren	\N	\N	location_management,miscellaneous	tt0116000,tt0112757,tt0110363,tt0088034
nm0002368	Tom Flynn	\N	\N	writer,director	tt5116302,tt4481414,tt0108521,tt0194342
nm0002369	John Williams	1903	1983	actor,archive_footage	tt0046912,tt0047437,tt0051201,tt0048728
nm0002370	J.A.C. Redford	1953	\N	composer,music_department,soundtrack	tt0096560,tt1385826,tt0120647,tt0499549
nm0002371	Karen Arbeeny	\N	\N	producer,director,assistant_director	tt0093692,tt0124800,tt0106258,tt1233611
nm0002372	Paul M. Gordon	\N	\N	editor	tt0119980,tt0182890
nm0002373	Janice Keuhnelian	\N	\N	editorial_department,editor,music_department	tt0116242,tt0120634,tt0104240,tt0088513
nm0008115	Curd Abdallah	\N	\N	production_manager	tt0090554
nm0002374	Robert de Vico	\N	\N	production_designer,art_department,director	tt0144117,tt0233142,tt0094169,tt0143874
nm0002375	Ron McLeod	\N	\N	producer,production_manager,assistant_director	tt5610554,tt15426714,tt9242528,tt13403046
nm0002376	David Hare	1947	\N	writer,director,producer	tt0274558,tt0976051,tt0090310,tt1797469
nm0002377	Stephen Semel	\N	\N	producer,editor,editorial_department	tt0411008,tt0475784,tt1839578,tt0245844
nm0002378	Catherine Davis	\N	\N	actress	tt0105341
nm0002379	Hans Moser	1880	1964	actor,writer,soundtrack	tt0033049,tt0036333,tt0048684,tt0055990
nm0002380	Giorgio Moroder	1940	\N	music_department,composer,actor	tt0092099,tt0085549,tt0093692,tt0077928
nm0002381	John Bailie	\N	\N	camera_department,cinematographer	tt10366206,tt11866324,tt4513678,tt2713180
nm0002382	Paul Chart	1961	\N	director,writer,producer	tt0118603,tt0200910,tt2295748,tt6131682
nm0002383	Myron Nettinga	1967	\N	sound_department	tt13309742,tt1679335,tt0266697,tt0265086
nm0002384	Samuel Vartek	1969	\N	editor,writer,sound_department	tt1137439,tt0206811,tt7374370,tt5628870
nm0002385	Linda Moran	\N	\N	producer,actress,miscellaneous	tt0808279,tt0407265,tt0242587,tt8110640
nm0002386	Preston Oliver	1952	\N	sound_department,miscellaneous,music_department	tt0129167,tt0286499,tt0257756,tt0100258
nm0002387	Andrew Cohen	1954	\N	editor,producer,assistant_director	tt15432016,tt11640020,tt2402207,tt0448190
nm0002388	Patrick J. Doody	\N	\N	producer,editor,writer	tt1647865,tt6987788,tt0205900,tt0206397
nm0002389	Nigel Plaskitt	\N	\N	actor,miscellaneous,producer	tt0120738,tt0091419,tt0091369,tt0117110
nm0002390	James R. Maceo	\N	\N	location_management,production_manager,miscellaneous	tt0107711,tt0307479,tt0964517,tt0257756
nm0002391	Dwayne Adway	\N	\N	actor,producer,writer	tt0361620,tt0378109,tt28024986,tt15800256
nm0002392	Brad Kersch	\N	\N	producer,director,writer	tt1429060,tt3481732,tt0207113,tt3337918
nm0002393	Tara Howie	1973	\N	miscellaneous,transportation_department,camera_department	tt0242445,tt0250687,tt0359013,tt7975244
nm0002394	Chris H. Ullrich	\N	\N	producer,production_manager,miscellaneous	tt0119282,tt0114148,tt0120855,tt0116583
nm0002395	Craig Binkley	1946	\N	art_department,miscellaneous,actor	tt0102685,tt0445946,tt0061184,tt0092086
nm0002396	Scott Shaw	1958	\N	producer,director,editor	tt0102804,tt0105310,tt0286668,tt0342750
nm0002397	Andrew Z. Davis	\N	\N	producer,production_manager,location_management	tt0120461,tt1053424,tt1637688,tt1240982
nm0002398	Paris Themmen	1959	\N	actor,miscellaneous,assistant_director	tt0067992,tt0491152,tt2198243,tt0185665
nm0002399	Alik Sakharov	1959	\N	director,producer,cinematographer	tt5071412,tt1856010,tt0944947,tt0141842
nm0002400	Suresh Jindal	1942	2022	producer,director,actor	tt0072064,tt0083987,tt0076696,tt2077904
nm0002401	David Max Steinberg	1958	\N	cinematographer,producer,director	tt0108136,tt0122106,tt9459336
nm0002402	Mark D. Allen	\N	\N	visual_effects,producer,director	tt3956230,tt0280665,tt29538091,tt0937403
nm0002403	Todd Baker	\N	\N	actor,producer,miscellaneous	tt5827228,tt0474499,tt0775407,tt8134184
nm0002404	Richard J. Gonzales Jr.	\N	\N	miscellaneous,camera_department,editor	tt0102185,tt0098600,tt0417750,tt0249347
nm0002405	Scott Harris	1966	\N	assistant_director,miscellaneous,producer	tt0106918,tt0114369,tt0112641,tt0096874
nm0002406	Harry Jay Knowles	1971	\N	producer,actor,writer	tt0133751,tt0306846,tt7171224,tt1707821
nm0002407	Jason D. Scott	\N	\N	miscellaneous	tt0119910
nm0002408	Todd R. Baker	\N	\N	producer	tt0109068,tt0119196,tt0112757,tt0111667
nm0002409	Paul Blomdahl	1976	\N	visual_effects,producer,director	tt0392690,tt0386620
nm0002410	Jerome Borenstein	1967	\N	assistant_director,actor,miscellaneous	tt0298814,tt4532826,tt0293564,tt0280665
nm0002411	Mani Kaul	1944	2011	director,writer,actor	tt0070009,tt0207626,tt0066514,tt0066787
nm0002412	Michael Fallavollita	\N	\N	editor,producer,editorial_department	tt3358964,tt0380008,tt0107290,tt0120647
nm0002413	David Jackson	\N	\N	director,writer,producer	tt0088513,tt0086759,tt0115277,tt0349358
nm0002414	Paul Chihara	1938	\N	composer,music_department,soundtrack	tt0072856,tt0165042,tt0149439,tt0368222
nm0002415	Colin Hoult	\N	\N	cinematographer,camera_department	tt8415836,tt13064902,tt8388390,tt5171438
nm0002416	John O'Hagan	1968	\N	cinematographer,director,miscellaneous	tt0120529,tt0207474,tt0102687,tt0109504
nm0002417	Daniel Pyne	\N	\N	writer,producer,script_department	tt0118150,tt0368008,tt0488120,tt0164184
nm0002418	Colin Brunton	1955	\N	producer,assistant_director,production_manager	tt9726452,tt3526078,tt0248845,tt0123755
nm0002419	Jay Sedrish	\N	\N	production_manager,producer,miscellaneous	tt0338337,tt0115956,tt0234215,tt1904996
nm0002420	Barry Stone	1945	\N	cinematographer,camera_department,producer	tt0107779,tt1573207,tt0114305,tt0081383
nm0002421	Robert McDonaugh	\N	\N	director,producer	tt0207420,tt0207799,tt0207770,tt0207403
nm0002422	Andy Pavord	1962	\N	location_management,production_manager,miscellaneous	tt0120902,tt0248126,tt0429715,tt0099818
nm0002423	Eric van Haren Noman	1943	\N	cinematographer,camera_department	tt0073341,tt0082418,tt0083284,tt0083972
nm0002424	Linda Lowy	\N	\N	casting_director,casting_department,miscellaneous	tt0413573,tt1440129,tt0758745,tt0143145
nm0002425	Stephanie Carroll	\N	\N	production_designer,set_decorator,art_department	tt0265343,tt4341582,tt0113677,tt0489010
nm0002426	Anthony Bennett	\N	\N	producer	tt0118780,tt0155944,tt0113650,tt0107432
nm0002427	Rob Merilees	\N	\N	producer,miscellaneous,assistant_director	tt2443340,tt0337721,tt0433400,tt3704700
nm0002428	Nick Davis	\N	\N	visual_effects,assistant_director,writer	tt0468569,tt1631867,tt0241527,tt0332452
nm0002429	Lloyd A. Silverman	\N	\N	producer,writer,actor	tt0120834,tt0143874,tt0207745,tt2002631
nm0002430	Keith Ogier	\N	\N	camera_department,cinematographer,miscellaneous	tt0405336,tt0300556,tt0278435,tt0133189
nm0002431	Nicholas Tabarrok	\N	\N	producer,writer,actor	tt3917710,tt2172985,tt4470266,tt0814131
nm0002432	John Grant	1960	\N	location_management	tt0114194,tt0268995,tt0116514,tt0107254
nm0002433	Scott Smith	\N	\N	director,producer,miscellaneous	tt4254242,tt1558182,tt1755893,tt0169190
nm0002434	Cam Cronin	1972	\N	actor	tt0309593,tt0385961,tt0106179,tt1119644
nm0002435	Volkan Gücer	1964	\N	composer,director,music_department	tt3516438,tt0446851,tt14584450,tt14540234
nm0008116	Mohamed Abdallah	\N	\N	actor	tt0211109
nm0002436	Shannon Elizabeth	1973	\N	actress,producer,director	tt0163651,tt0175142,tt6521876,tt0314331
nm0002437	Michael Kevin Walker	\N	\N	actor,writer,producer	tt0117894,tt0195582,tt1156394,tt0410626
nm0002438	Burnie Burns	1973	\N	producer,writer,actor	tt0401747,tt3864024,tt5707408,tt8390938
nm0002439	Guy Camara	1964	\N	producer,actor,writer	tt2338283,tt1059897,tt0119361,tt2328797
nm0002440	Kathy Orloff	1946	\N	miscellaneous,editorial_department	tt0117060,tt0356618,tt0119978,tt0081283
nm0002441	Alan L. Nineberg	1942	2002	sound_department	tt0133152,tt0093894,tt0086960,tt0088763
nm0002442	Fredrik Klasson	\N	\N	director,actor,cinematographer	tt0145830,tt0140295,tt0135042,tt0157584
nm0002443	Franz Hohler	1943	\N	writer,actor,director	tt0136795,tt0206702,tt0107338,tt11329008
nm0002444	Frederick Long	1948	2004	actor,writer,casting_department	tt0080354,tt0089835,tt0098944,tt0284225
nm0002445	Bob Shayne	\N	\N	writer,producer,miscellaneous	tt0093850,tt0081930,tt0085110,tt0108219
nm0002446	Ella Kutschera	\N	\N	assistant_director,miscellaneous	tt0338337,tt0216216,tt0111438,tt0290334
nm0002447	Ian D. Tootle	1954	\N	producer,production_manager,miscellaneous	tt0238793,tt1464668,tt2582590,tt0187666
nm0002448	Stephen McPherson	\N	\N	writer,miscellaneous,assistant_director	tt0094890,tt0078579,tt0115317,tt0085078
nm0002449	Martin Veselich	\N	\N	assistant_director,actor,producer	tt0329539,tt0228953,tt0272652,tt0133752
nm0002450	Wade S. Echer	\N	\N	camera_department,art_department,miscellaneous	tt0426740,tt0207212,tt0207337,tt0183392
nm0002451	Amy R. Baird	\N	\N	producer,miscellaneous	tt0160425,tt0332167,tt0208284,tt0208096
nm0002452	John Rutherford	\N	\N	sound_department,editor	tt0105977,tt0168596,tt0098898,tt0185102
nm0002453	Mary Prange	1947	2020	editorial_department,editor	tt0086734,tt0285331,tt0339789,tt0109761
nm0002454	Larry Lerner	1949	2020	assistant_director,producer,production_manager	tt6294706,tt4074374,tt2172103,tt1504319
nm0002455	Neil P. White	\N	\N	producer,executive	tt0213690,tt0130172,tt0166221,tt0214277
nm0002456	Melissa Lintinger	\N	\N	miscellaneous,producer	tt0243759,tt0208196,tt0210075,tt0112810
nm0002457	David Brady	\N	\N	producer,writer,director	tt0085622,tt1153114,tt0207258,tt2609544
nm0002458	Richard G. Owen	\N	\N	art_department,production_designer,miscellaneous	tt0247290,tt0167215,tt0369918,tt0209020
nm0002459	T.C. Christensen	\N	\N	cinematographer,director,producer	tt1909270,tt0214723,tt0136523,tt0292996
nm0002460	Lucia Mendoza	\N	\N	actress	tt0115907,tt0107897
nm0002461	Mike Cheda	\N	\N	producer,writer,script_department	tt0163579,tt0079894,tt0105063,tt0076920
nm0002462	Matt Tundo	\N	\N	camera_department,cinematographer	tt0070438,tt0083739,tt0079894,tt0109370
nm0002463	Guillermo Fernández Groizard	1960	\N	director,producer,visual_effects	tt14011664,tt2732140,tt0791231,tt0231040
nm0002464	Karen F. McCarthy	\N	\N	producer,writer,production_manager	tt0111418,tt0476988,tt0274023,tt0832525
nm0002465	Tyler Tharpe	1968	\N	director,writer,actor	tt0151305,tt0889218,tt3323838,tt0103783
nm0002466	Ryan B. Smith	\N	\N	director,producer	tt0193254
nm0002467	James Bain	1954	2016	casting_director,casting_department	tt0324937,tt0098765,tt0053494,tt0179051
nm0002468	Knox White	1963	\N	sound_department,actor,miscellaneous	tt0119654,tt0096754,tt1815862,tt0103064
nm0002469	Amy Chance	1966	2023	miscellaneous,production_manager,transportation_department	tt0112950,tt0107808,tt0118111,tt1405406
nm0002470	M. David Mullen	1962	\N	cinematographer,camera_department,art_department	tt5788792,tt3908142,tt1131734,tt0162830
nm0002471	Jeanne Slater	\N	\N	editor,editorial_department,production_manager	tt8338494,tt2649680,tt2529866,tt0422134
nm0002472	Scott Shiffman	\N	\N	producer,miscellaneous,director	tt0208874,tt0119675,tt0110308,tt0103893
nm0002473	Ellen Rutter	\N	\N	production_manager,producer,assistant_director	tt8741290,tt0379725,tt1998372,tt7888964
nm0002474	Charley Scalies	1940	2025	actor	tt0114746,tt0165859,tt0306414,tt0112712
nm0002475	Barry Dignam	1971	\N	director,producer,writer	tt0208920,tt0272034,tt0211427,tt0191492
nm0002476	Jeff Campbell	1962	\N	visual_effects,art_department,executive	tt1312171,tt2304933,tt1098327,tt0822847
nm0002477	Todd Toon	1964	\N	sound_department,actor	tt9243946,tt1663202,tt5116302,tt0187078
nm0002478	Ernst Gossner	\N	\N	director,writer,actor	tt0478273,tt0275219,tt0477139,tt1356778
nm0002479	Steven J. Brandman	\N	\N	producer,production_manager,assistant_director	tt0218127,tt0329390,tt0119501,tt0115458
nm0002480	Carmen Cuba	\N	\N	casting_director,casting_department,producer	tt4574334,tt8368368,tt14044212,tt28015403
nm0002481	Jim Greenhorn	\N	\N	sound_department	tt0117631,tt1478964,tt5719748,tt0465551
nm0002482	Irene Kassow	\N	\N	editorial_department,visual_effects	tt0947798,tt0363988,tt0352248,tt0809504
nm0002483	Daniel Fazel	\N	\N	visual_effects	tt7638348,tt0343818,tt0319262,tt1046173
nm0002484	David Glanzer	\N	\N	casting_director,casting_department,actor	tt0372283,tt1047445,tt1470846,tt0099587
nm0002485	William Preston Robertson	\N	\N	actor,miscellaneous,writer	tt0116282,tt0118715,tt0092991,tt0101410
nm0002486	Stephen Barden	1970	\N	sound_department,music_department,producer	tt22041854,tt0180093,tt0414993,tt1921064
nm0002487	Jackson Rose	1886	1956	cinematographer,camera_department	tt0021491,tt0039212,tt0020684,tt0018639
nm0002488	Ellen Freyer	\N	\N	producer,production_manager	tt0099327,tt0111698,tt0128648,tt0094500
nm0002489	Karl Anton	1898	1979	director,writer,producer	tt0033878,tt0036541,tt0038835,tt0165519
nm0002490	Bob Marley	1945	1981	music_artist,music_department,actor	tt0480249,tt0115857,tt0770752,tt0114558
nm0002491	Michael A. Martinez	1980	\N	visual_effects,camera_department,cinematographer	tt0252060,tt8851668,tt0362502,tt13186604
nm0002492	John Bowker	\N	\N	actor,writer,director	tt0375160,tt21209736,tt0220451,tt1199558
nm0002493	Simon Bowles	1971	\N	production_designer,art_director,art_department	tt13433802,tt14371860,tt2404181,tt0435625
nm0002494	Michael Cedar	1956	\N	producer,production_manager,assistant_director	tt0128445,tt1591493,tt0892535,tt5164196
nm0002495	Paul Eppleston	\N	\N	producer,editorial_department,art_department	tt0255189,tt0446809,tt5769154,tt0131327
nm0002496	Christoph Kanter	\N	\N	production_designer,art_department	tt1149362,tt0387898,tt0093428,tt0254686
nm0002497	Jeffrey Kushon	1963	\N	set_decorator,art_department,art_director	tt0116830,tt6806448,tt0242423,tt0419946
nm0002498	Matthew L. Weiss	\N	\N	editor,actor,cinematographer	tt9601220,tt4840804,tt11394186,tt0194515
nm0002499	John Lvoff	1954	\N	assistant_director,director,writer	tt0098245,tt0384389,tt0106618,tt0250427
nm0002500	Tom McArdle	\N	\N	editor,actor,editorial_department	tt1895587,tt5301662,tt1606392,tt10696896
nm0002501	Dan Schlaack	\N	\N	miscellaneous,production_manager	tt0195944,tt0175593,tt0250274,tt0196723
nm0002502	Yvann Thibaudeau	1973	\N	editor,actor,editorial_department	tt1486834,tt1656177,tt1048147,tt4610748
nm0002503	Harry Carey	1878	1947	actor,writer,producer	tt0031679,tt0022495,tt0040724,tt0032247
nm0002504	Herbert Beerbohm Tree	1852	1917	actor,director,writer	tt0000247,tt0001658,tt1986989,tt0004728
nm0002505	Michael Horowitz	\N	\N	producer,writer,director	tt0245503,tt0810788,tt0455275,tt4396630
nm0002506	Jessica Landaw	\N	\N	director,editor,editorial_department	tt0189168,tt1554369,tt0113820,tt0117429
nm0002507	Timothy Bird	\N	\N	assistant_director,producer,location_management	tt1219289,tt9071322,tt10962368,tt1600196
nm0002508	John Hays	\N	\N	sound_department,editor,director	tt1276104,tt1214962,tt0356910,tt0331811
nm0002509	Ramesh Iyer	\N	\N	director,writer,miscellaneous	tt0203325,tt0203957,tt0153098,tt0120118
nm0002510	David Avallone	1965	\N	writer,director,actor	tt2364947,tt2112164,tt4513850,tt3163414
nm0002511	Scott Schneid	\N	\N	writer,producer,director	tt0088117,tt0098089,tt0961721,tt0101188
nm0002512	Deborah Peart	\N	\N	editor,production_manager,editorial_department	tt3914672,tt7298596,tt9318588,tt11895154
nm0002513	Stephen Kearney	\N	\N	sound_department,editorial_department	tt0162222,tt0088247,tt0137363,tt0272338
nm0002514	Michael Marino	\N	\N	make_up_department,actor,miscellaneous	tt1877830,tt21097228,tt0947798,tt8695030
nm0002515	Sabine El Gemayel	\N	\N	editor,writer,director	tt6264018,tt1291643,tt22093574,tt0117497
nm0002516	Jill H. Greenlief	1968	\N	miscellaneous,production_manager	tt0109686,tt7053188,tt0117433,tt1740299
nm0002517	Lee Purcell	\N	\N	actress,producer,director	tt5321174,tt3500724,tt0086525,tt0077235
nm0002518	Ryan Koch	1982	\N	actor,writer,producer	tt10551078,tt0209779,tt1482403,tt0113100
nm0002519	Kate Eales	1975	\N	editorial_department,sound_department,editor	tt1458175,tt0286106,tt0368008,tt0138304
nm0002520	Jeff Mazzola	\N	\N	producer,director,actor	tt0139388,tt14795768,tt27629407,tt0887966
nm0002521	Markus Ziegler	1963	\N	camera_department,cinematographer	tt0257256,tt0806910,tt0379713,tt0099511
nm0002522	Jonathan Buss	1972	\N	producer,director,camera_department	tt3895884,tt0480244,tt3268200,tt13653972
nm0002523	Nathalie Gonthier	\N	\N	visual_effects,special_effects,animation_department	tt1877832,tt1631867,tt0145487,tt0120685
nm0002524	Kurt Kaya	\N	\N	producer,cinematographer,art_department	tt0116126,tt0102676,tt0141529,tt0109234
nm0002525	Kevin Marcy	\N	\N	miscellaneous,producer,actor	tt0106598,tt0095705,tt0306047,tt0102558
nm0002526	Robert Zappia	\N	\N	writer,director,producer	tt9271672,tt0120694,tt1116184,tt0101120
nm0002527	Dane Peterson	\N	\N	camera_department,cinematographer,producer	tt0114660,tt0119891,tt5034266,tt1078927
nm0002528	Thomas A. Ohanian	1960	\N	editor,editorial_department,production_manager	tt0118869,tt0117421,tt0135815,tt0110797
nm0002529	Brian A. Kates	1972	\N	editor,editorial_department,miscellaneous	tt0775529,tt21374850,tt1764234,tt0367027
nm0002530	Kelly Wagner	1972	\N	casting_director,producer,actress	tt0343818,tt0411951,tt1646980,tt1187064
nm0002531	Pascal Maeder	1965	\N	producer,director,writer	tt0210183,tt0200483,tt0481398,tt0344337
nm0002532	Nick O'Hagan	\N	\N	producer,miscellaneous,production_manager	tt14022350,tt2235759,tt5563334,tt0462335
nm0002533	Judy Dennis	\N	\N	casting_department,casting_director,director	tt0084707,tt0210220,tt0090350,tt0118421
nm0002534	Alex Erkiletian	1974	\N	producer,director,writer	tt0210223,tt0163894,tt0140067,tt0367854
nm0002535	Jasper Randall	1974	\N	music_department,composer,actor	tt2294629,tt3783958,tt0499549,tt3470600
nm0002536	Emmy Rossum	1986	\N	actress,producer,composer	tt0293508,tt0319262,tt1586680,tt0327056
nm0002537	Miles Davis	1926	1991	music_artist,music_department,composer	tt6306064,tt0107206,tt0051378,tt0105435
nm0002538	David Mercy	\N	\N	actor,director,writer	tt0110970,tt29137306
nm0002539	Roderic Kavanagh	\N	\N	miscellaneous,script_department	tt0262985,tt0775374,tt0105982,tt0106009
nm0002540	John Jabaley	1969	\N	actor,location_management,production_manager	tt0758758,tt3315342,tt1235522,tt0360009
nm0002541	Terry Morse Jr.	1931	\N	assistant_director,producer,production_manager	tt0108308,tt0061811,tt0114746,tt0103060
nm0002542	Terry O. Morse	1906	1984	editor,director,editorial_department	tt0037711,tt0197521,tt0044167,tt0032113
nm0002543	Gershon Ginsburg	\N	\N	production_designer,art_director,art_department	tt0096754,tt0257076,tt0898367,tt0134273
nm0002544	Michael Armstrong	1953	\N	director,writer,script_department	tt0206580,tt0213263,tt0213255,tt0212740
nm0002545	Preston Sturges	1898	1959	writer,director,producer	tt0034240,tt0032554,tt0036891,tt0040919
nm0002546	Mena Suvari	1979	\N	actress,producer,writer	tt0169547,tt0163651,tt0283003,tt3910630
nm0002547	Mark Bedrosian	\N	\N	camera_department,cinematographer,director	tt3738134,tt6958814,tt1513199,tt1545520
nm0002548	Ruby Yang	\N	\N	editor,producer,director	tt3804012,tt0859595,tt5514242,tt1744887
nm0002549	Marcelo Itzkoff	\N	\N	producer	tt0210809,tt0211311,tt0108291,tt0211353
nm0002550	Laura Julian	\N	\N	producer,production_manager,miscellaneous	tt1734493,tt0089370,tt0127536,tt0837106
nm0002551	Bill Davis	1951	\N	art_department,miscellaneous,special_effects	tt0387564,tt0333766,tt0362120,tt0109402
nm0002552	Trip Brock	\N	\N	sound_department,music_department,executive	tt3758814,tt0426459,tt0120784,tt5254868
nm0002553	Alexis Magagni-Seely	\N	\N	producer,miscellaneous,production_manager	tt0179116,tt0160434,tt0109765,tt0338543
nm0002554	Claudette Nevins	1937	2020	actress,soundtrack	tt0102945,tt0120844,tt0112022,tt0090213
nm0002555	Konstantin Seitz	\N	\N	producer,miscellaneous,actor	tt27075958,tt5916734,tt0806910,tt2085752
nm0002556	Billy Maddox	\N	\N	actor	tt0272036,tt0303017,tt0119996,tt0112173
nm0002557	Vanja Cernjul	\N	\N	cinematographer,camera_department,producer	tt11198330,tt3104988,tt4998350,tt18224594
nm0002558	Ken Brooker	1973	\N	location_management,production_manager,miscellaneous	tt2188671,tt5097410,tt11952606,tt0401855
nm0002559	Peter De Kock	1967	\N	camera_department,cinematographer,director	tt0210725,tt0102254,tt0177908,tt0101125
nm0002560	Adam Nordén	1971	\N	composer,music_department,actor	tt2429292,tt0448267,tt0907683,tt5603140
nm0002561	Richard Candib	\N	\N	editor,editorial_department,sound_department	tt0367279,tt1850458,tt14852960,tt0078788
nm0002562	Maciek Wszelaki	\N	\N	director,cinematographer,editorial_department	tt0210878,tt0151384,tt0289470,tt0353985
nm0002563	Robert L. Sephton	\N	\N	sound_department	tt0213149,tt0210945,tt0120591,tt0245429
nm0002564	Marc Stekelenburg	\N	\N	producer,production_manager	tt0210884,tt0193151,tt0127023,tt4861072
nm0002565	Laine Megaw	\N	\N	actress	tt0986233,tt0122738,tt0127516,tt0388154
nm0002566	Caleb Womble	\N	\N	producer,miscellaneous,production_manager	tt1520211,tt1285309,tt1748227,tt0120238
nm0002567	Patricia Kruijer	\N	\N	producer,art_department	tt0208911,tt0331525,tt0151396,tt0138541
nm0002568	Robert De Grasse	1900	1971	cinematographer,camera_department,miscellaneous	tt0030944,tt0045410,tt0037549,tt0028481
nm0002569	Carl Koch	1892	1963	writer,miscellaneous,cinematographer	tt0031885,tt0028950,tt0033177,tt0127284
nm0002570	Melissa Reneé Martin	1979	\N	actress	tt0100419,tt0412253,tt0098790,tt0265787
nm0002571	Melissa Martin	1955	2008	actress,casting_director	tt0094963,tt0104070,tt0106644,tt0112867
nm0002572	Christopher Alender	1977	\N	director,producer,miscellaneous	tt12829958,tt10857210,tt2072092,tt4267492
nm0002573	Bill Corcoran	\N	\N	director,assistant_director,producer	tt0138959,tt0115763,tt7349950,tt0160277
nm0002574	Gerard DiNardi	\N	\N	assistant_director,producer,production_manager	tt5052448,tt2184339,tt1922777,tt0130623
nm0002575	Sergio Ercolessi	\N	\N	assistant_director,actor,producer	tt5056196,tt7599942,tt1697064,tt0335345
nm0002576	Walter Fasano	1970	\N	editor,director,assistant_director	tt5726616,tt1034415,tt2056771,tt10686204
nm0002577	Dave Halls	\N	\N	assistant_director,actor,director	tt0234215,tt0116282,tt5657856,tt0281322
nm0002578	Thomas J. Mack	\N	2021	assistant_director,producer,camera_department	tt0149261,tt0120749,tt0100685,tt0106977
nm0002579	MaryAnne McAlpin-Giraldo	\N	\N	costume_department,costume_designer	tt0119951,tt0116313,tt0119780,tt0199744
nm0002580	Eric A. Pot	\N	\N	director,producer,assistant_director	tt1378167,tt1144884,tt0337978,tt0322330
nm0002581	Nanci Roberts	1950	\N	production_designer,art_director,actress	tt0936501,tt2962876,tt1397280,tt2446042
nm0002582	Christopher Rouse	1958	\N	editor,writer,producer	tt0440963,tt1535109,tt0475276,tt0317740
nm0002583	Michael Sauerteig	\N	\N	production_manager,producer,assistant_director	tt0318627,tt3800278,tt8270494,tt0109153
nm0002584	Amanda Slater	\N	\N	producer,production_manager,assistant_director	tt0211933,tt0139134,tt0247425,tt7491982
nm0002585	Stephen White	\N	\N	writer,composer,actor	tt0120598,tt0144701,tt0202675,tt29780587
nm0002586	Chitra F. Mojtabai	1961	\N	assistant_director,miscellaneous,actress	tt0120461,tt0120746,tt0106697,tt0120768
nm0002587	Jeffery J. Tufano	1955	\N	camera_department,miscellaneous,cinematographer	tt1483013,tt2103281,tt0120458,tt1524137
nm0002588	Glenn Saxson	1942	\N	actor,producer	tt0060608,tt0061952,tt0061582,tt0188483
nm0002589	George Larkin	\N	\N	producer,director,writer	tt27912549,tt4043308,tt1385645,tt1687914
nm0002590	Harry Grey	1905	1963	producer,music_department,soundtrack	tt0040756,tt0039258,tt0029112,tt0029373
nm0002591	Carl Drews	1894	1983	cinematographer,camera_department,actor	tt0438051,tt0441298,tt0025386,tt0252810
nm0002592	David Fickas	\N	\N	director,writer,actor	tt0925435,tt0810788,tt9046022
nm0002593	Rick Johnson	1961	\N	actor,miscellaneous,director	tt0116695,tt0213205,tt0404203,tt0146838
nm0002594	Dylan Taylor	\N	\N	actor	tt0109783,tt0112104,tt3732206,tt4121264
nm0002595	Renato Lori	1955	\N	production_designer,art_department,set_decorator	tt0099674,tt0087909,tt0385216,tt0093677
nm0002596	Tony Rycyk	\N	\N	art_department,actor	tt0172495,tt0280788,tt0191996,tt0192126
nm0002597	Sreedevi Mina	\N	\N	actress,director,camera_department	tt11006642,tt11097240,tt27428598,tt31407116
nm0002598	Robert Benedetti	1939	\N	actor,producer,writer	tt0095088,tt0119679,tt0179940,tt0095687
nm0002599	Ricki Maslar	\N	\N	casting_director,casting_department,producer	tt14349032,tt24250020,tt21157352,tt0285728
nm0002600	Christopher Crane	1968	\N	actor,executive	tt0162766,tt0211296,tt0840406
nm0002601	Gary S. Lipsky	\N	\N	producer,director,writer	tt0211323,tt0109254,tt0138474,tt0351234
nm0002602	Armin Hofmann	\N	\N	producer,writer,director	tt0119286,tt1291131,tt0454898,tt2972766
nm0002603	Ian B. Wile	1971	\N	editorial_department,production_manager,editor	tt0261983,tt1034072,tt1037090,tt0460721
nm0002604	Robert Blanche	1962	2020	actor,writer,producer	tt0203019,tt0259153,tt5891062,tt0469641
nm0002605	Michael A. Levine	1964	\N	composer,music_department,actor	tt0368479,tt5615700,tt3569570,tt2362866
nm0002606	David Price	1961	\N	director,actor,producer	tt0112895,tt0106557,tt0107387,tt0083929
nm0002607	Nico Lypitkas	1974	\N	director,actor,assistant_director	tt0211474,tt0284433,tt0205469,tt0396958
nm0002608	Barbara Factorovich	\N	\N	production_manager,location_management,miscellaneous	tt0219449,tt0283897,tt0211347,tt0120275
nm0002609	Su Whitaker	1963	\N	art_director,art_department,visual_effects	tt11564570,tt0372784,tt1345836,tt2771200
nm0002610	Chris Chomyn	\N	\N	camera_department,cinematographer,miscellaneous	tt10946934,tt4547948,tt0281686,tt0196708
nm0002611	Claus Drexel	1968	\N	director,writer,cinematographer	tt0211505,tt1068676,tt2914068,tt11018044
nm0002612	Lisa Skinstad	1973	\N	miscellaneous,producer,production_manager	tt0281456,tt0281479,tt0120856,tt0231144
nm0002613	Talmage Watson	\N	\N	visual_effects	tt0120201,tt1663662,tt1440129,tt0371746
nm0002614	Peter Levy	\N	\N	cinematographer,camera_department,miscellaneous	tt0100403,tt0120738,tt0115759,tt0352520
nm0002615	Siegmund Lubin	1851	1923	producer,director,actor	tt0000472,tt0238498,tt0287024,tt0780034
nm0002616	Anita Loos	1889	1981	writer,producer,actress	tt0045810,tt0010185,tt0013540,tt0029516
nm0002617	Matthew Hintlian	\N	\N	producer,production_manager,assistant_director	tt0104981,tt0106850,tt0083470,tt0090062
nm0002618	Andrew Loschin	\N	\N	visual_effects,editorial_department	tt0343818,tt2935510,tt0311429,tt1104001
nm0002619	Ernest H. Roth	\N	\N	production_designer	tt0116839,tt0303648,tt0192722
nm0002620	Dorian Ramírez	\N	\N	director,actor,writer	tt0119966
nm0002621	Tucker Dansie	1978	\N	editorial_department,production_manager,director	tt0195892,tt0196133,tt14933338,tt0179739
nm0002622	Paul Maslak	\N	\N	producer,stunts,writer	tt0117803,tt0109125,tt0107762,tt0107937
nm0002623	Donald D. Coleman	\N	\N	special_effects,art_department,miscellaneous	tt0120647,tt1843866,tt0117723,tt0108154
nm0002624	Dan Pemberton	\N	\N	art_department	tt0107290,tt0993840,tt0100802,tt0114898
nm0002625	Alison E. McBryde	1971	\N	casting_department,casting_director,producer	tt0120591,tt0399201,tt0120828,tt0113277
nm0002626	Lee Holdridge	\N	\N	music_department,composer,soundtrack	tt0098022,tt0088161,tt0244353,tt1727596
nm0002627	Monty Berman	1913	2006	producer,writer,cinematographer	tt0063893,tt1139293,tt0062551,tt0053961
nm0002628	Félix de Pomés	1889	1969	actor,director,writer	tt0043903,tt0033862,tt0037387,tt0211614
nm0002629	Craig Voigt	\N	\N	animation_department,art_director,production_designer	tt0129167,tt0181739,tt0117705,tt0095043
nm0002630	Jennifer Truelove	\N	\N	assistant_director,miscellaneous,producer	tt1385826,tt0407304,tt0493464,tt0327162
nm0002631	Patrick McIntire	\N	\N	producer,location_management,production_manager	tt2304933,tt2436386,tt0429493,tt0910936
nm0002632	Anthony E. Kountz	\N	\N	assistant_director,miscellaneous,art_department	tt0119488,tt2975578,tt0251075,tt0343135
nm0002633	Ken Rush	1968	\N	actor	tt0162065,tt0188830,tt0179344,tt0254617
nm0002634	Imogen Murphy	\N	\N	director,writer,producer	tt11639300,tt10270200,tt10413648,tt5674872
nm0002635	Maurizio Argentieri	1964	\N	sound_department,actor	tt0237539,tt11016042,tt1608290,tt17024450
nm0002636	Heidi Grotsky	1969	\N	make_up_department,actress	tt0116367,tt0124901,tt0112906,tt0112867
nm0002637	Steven Warren Hill	1966	\N	actor,writer,camera_department	tt1733304,tt0156946,tt0808519,tt0164145
nm0002638	Robert F. Phillips	\N	\N	producer,production_manager,camera_department	tt0985699,tt2017109,tt5057054,tt2325989
nm0002639	Roger Slater	\N	\N	sound_department	tt10720914,tt0119800,tt1077744,tt0134250
nm0002640	Norman Orenstein	\N	\N	composer,music_department,producer	tt0377713,tt3067274,tt0848557,tt0285492
nm0002641	Erik MacArthur	1976	\N	actor,director,writer	tt0120789,tt0212555,tt1591613
nm0002642	Warwick Young	\N	\N	actor,writer,director	tt3469750,tt1418646,tt2973554,tt0348150
nm0002643	Robert A. Harris	\N	\N	miscellaneous,producer,production_manager	tt0052357,tt0047396,tt0099703,tt0056172
nm0002644	Brian Berdan	\N	\N	editor,editorial_department,miscellaneous	tt0119229,tt0479884,tt0402901,tt0110632
nm0002645	Paolo Genovese	1966	\N	writer,director	tt4901306,tt1630637,tt7063210,tt34621892
nm0002646	Sheila Haley	\N	\N	production_designer,art_director,art_department	tt0111438,tt0978764,tt1540011,tt0094608
nm0002647	Barrie Hemsley	\N	\N	visual_effects,producer,writer	tt3659388,tt0384766,tt0382625,tt1587310
nm0002648	Jeff Jenofsky	\N	\N	assistant_director,miscellaneous,production_manager	tt0246578,tt0146675,tt0169547,tt0208003
nm0002649	Yûki Masuda	1973	\N	actress,animation_department,music_department	tt0397192,tt0290223,tt0396659,tt0417104
nm0002650	Dylan Pank	1971	\N	sound_department,writer,director	tt1301163,tt0214644,tt1293596,tt0213537
nm0002651	Gary Rosen	\N	\N	writer,producer,director	tt0110443,tt11266702,tt3663490,tt0119244
nm0002652	Gary Rosen	\N	\N	\N	tt0358197,tt0268808
nm0002653	Joe Johnston	1950	\N	director,producer,visual_effects	tt0458339,tt0102803,tt0082971,tt0097523
nm0002654	Bill Schwarz	\N	\N	camera_department,cinematographer,producer	tt0104735,tt0087472,tt0259497,tt0124555
nm0002655	Tracy Granger	\N	\N	editor,editorial_department,music_department	tt0171804,tt2395417,tt6601502,tt0104321
nm0002656	Benedikt Brydern	\N	\N	composer,music_department,actor	tt5180504,tt2078718,tt0120014,tt1082599
nm0002657	Gary Ross	1956	\N	writer,producer,director	tt1392170,tt0120789,tt0329575,tt0094737
nm0002658	Michael Gibbs	1937	\N	composer,music_department,soundtrack	tt0104684,tt0093164,tt0094512,tt0100490
nm0002659	Les Weldon	\N	\N	producer,writer,actor	tt1320253,tt1959563,tt6189022,tt1206885
nm0002660	Paddy Eason	1966	\N	visual_effects,producer,miscellaneous	tt0304141,tt1010048,tt0319061,tt4649466
nm0002661	Chris Angel	1972	\N	editor,writer,director	tt0915473,tt7250628,tt7251532,tt0209160
nm0002662	Orestes Matacena	1941	\N	actor,writer,producer	tt0110475,tt0096213,tt2076974,tt0120891
nm0002663	Diane Ladd	1935	\N	actress,producer,director	tt0100935,tt0071115,tt2446980,tt0071315
nm0002664	David Diliberto	\N	\N	producer,visual_effects,editorial_department	tt0477348,tt4301160,tt0190590,tt0116282
nm0002665	Benjamin Parmentier	\N	\N	writer,miscellaneous	tt0191565,tt3743444
nm0002666	Nancy Klopper	\N	\N	casting_director,casting_department,executive	tt0350258,tt0120667,tt0151804,tt0118971
nm0002667	George Buck	\N	\N	actor	tt0092563,tt0086969,tt0094812,tt0098282
nm0002668	George 'Buck' Flower	1937	2004	actor,writer,producer	tt0088763,tt0096256,tt0096874,tt0088172
nm0002669	Lori L. Eschler	\N	\N	music_department,composer,editorial_department	tt0133093,tt0120623,tt0159273,tt0098936
nm0002670	Trevor Black	\N	\N	actor,producer	tt30796986,tt5348176,tt7909970,tt0118178
nm0002671	Trevor Black	\N	\N	actor	tt0462485,tt0112759
nm0002672	Joseph Conlan	\N	\N	composer,music_department,soundtrack	tt21446798,tt14949302,tt4664244,tt1208647
nm0002673	David Shaw	\N	\N	casting_director,casting_department,miscellaneous	tt0107207,tt2480514,tt2299141,tt0478942
nm0002674	C. Davis Smith	1930	2017	cinematographer,editor,camera_department	tt0196588,tt0131270,tt0212155,tt0210494
nm0002675	Robert Kuhn	\N	\N	writer	tt0130121,tt0112757,tt0102032,tt0120209
nm0002676	Robert Kuhn	\N	\N	actor	tt0334542,tt0082367,tt0091834,tt22875644
nm0002677	Nathalie Alonso Casale	1970	\N	editor,director,actress	tt0161800,tt0234188,tt0210838,tt0281193
nm0002678	Lincoln Stalmaster	1966	\N	miscellaneous,producer,actor	tt10955928,tt0474865,tt0094582,tt3584354
nm0002679	Lynn Stalmaster	1927	2021	casting_director,casting_department,actor	tt0078346,tt0083944,tt0185183,tt0068473
nm0002680	Jessica Gallant	1967	\N	cinematographer,camera_department,editor	tt0404505,tt2270372,tt10382816,tt7575886
nm0002681	Jim Denault	1960	\N	cinematographer,camera_department,sound_department	tt0103759,tt0247199,tt3203606,tt0815236
nm0002682	Richard Anselmo	1954	\N	actor,director,writer	tt0228309,tt0212795,tt0125643
nm0002683	Christopher Kendra	\N	\N	actor	tt0212815,tt0246890,tt0220360,tt0213763
nm0002684	Michael Galbraith	\N	\N	camera_department,cinematographer,assistant_director	tt13205670,tt11891246,tt7315484,tt5322012
nm0002685	Roger Neill	1963	\N	composer,music_department,soundtrack	tt4385888,tt0844286,tt1532503,tt0362153
nm0002686	Michael Stone	1949	2005	camera_department,cinematographer	tt0368891,tt0100685,tt0107206,tt0213149
nm0002687	Janet Zdyb	1975	\N	assistant_director,miscellaneous	tt0186151,tt0290095,tt0292506,tt0251160
nm0002688	Mitch Davis	1971	\N	producer,director,miscellaneous	tt0212919,tt21306248,tt2926810,tt23131648
nm0002689	Dana MacDuff	1955	\N	art_department,producer,production_manager	tt0936501,tt1397280,tt1650426,tt0251369
nm0002690	Danica DeCosto	1976	\N	actress,director,producer	tt0306998,tt0313708,tt0375962,tt0201050
nm0002691	Yoram Astrakhan	\N	\N	cinematographer,director,camera_department	tt5987842,tt0365653,tt0126886,tt3758150
nm0002692	Joshua Tunick	1977	\N	director,producer,editor	tt4723724,tt0404248,tt0929771,tt0213223
nm0002693	Sharon 'Mae' West	1953	2006	script_department,miscellaneous,set_decorator	tt0327850,tt0306685,tt0329774,tt0268695
nm0002694	Leland L. Jones	1963	\N	actor	tt4463894,tt0249478,tt1276434,tt0163676
nm0002695	Amit Khanna	1951	\N	producer,music_department,writer	tt0119234,tt0213239,tt0232626,tt0154788
nm0002696	Cort Hessler	1969	\N	stunts,assistant_director,miscellaneous	tt2741602,tt0480249,tt0452623,tt0197182
nm0002697	Mark Giambruno	\N	\N	actor,art_department,writer	tt0157493,tt0157501,tt0770762,tt0356878
nm0002698	Carl James	\N	\N	director,actor,writer	tt0169346,tt0311443,tt0218545
nm0002699	Xavier Koller	1944	\N	director,writer,actor	tt0143860,tt0100470,tt0186202,tt1853544
nm0002700	Malcolm D. Lee	1970	\N	director,writer,producer	tt14022728,tt3564472,tt0168501,tt2083355
nm0002701	Paulette Rubinstein	1923	2022	miscellaneous,actress,writer	tt0108550,tt0104452,tt0061299,tt0138101
nm0002702	Giancarlo Zagni	1926	2013	writer,director,assistant_director	tt0055787,tt0057615,tt0204675,tt0409665
nm0002703	Roger Heman Sr.	1898	1969	sound_department,assistant_director,miscellaneous	tt0045810,tt0048356,tt0045891,tt0038762
nm0002704	Bill D'Elia	\N	\N	producer,director,writer	tt0402711,tt3205802,tt11238096,tt0118254
nm0002705	Elfriede Gaeng	1944	\N	writer,director,soundtrack	tt0184710,tt0227386,tt0094766,tt0211169
nm0002706	David L. Bertman	\N	\N	editor,editorial_department,director	tt14315374,tt0120828,tt0250687,tt1758830
nm0002707	Michael Borthwick	\N	\N	art_department,art_director,production_designer	tt0101264,tt0103250,tt0159752,tt0114649
nm0002708	Todd Busch	\N	\N	editorial_department,visual_effects,editor	tt6791350,tt2250912,tt0437086,tt0121765
nm0002709	Richard Clabaugh	\N	\N	producer,director,cinematographer	tt21151212,tt0119891,tt0114194,tt0209264
nm0002710	Jeremy C. Colfer	1975	\N	production_manager,producer,writer	tt2353929,tt0162838,tt8380622,tt11378572
nm0002711	Michael Doherty	\N	\N	editor,production_manager,producer	tt0418819,tt0848557,tt2243973,tt1134854
nm0002712	Bas Dumoulin	1972	\N	editor,director,writer	tt0126906,tt0187739,tt0215697,tt0233578
nm0002713	Alan Farquharson	\N	\N	production_designer,art_department	tt0169083,tt0198668,tt0905642,tt0189479
nm0002714	Christopher Fink	\N	\N	miscellaneous,director,writer	tt17042812,tt0212360,tt1988654,tt0250133
nm0002715	Arthur K. Flam	1969	\N	writer,miscellaneous,director	tt0188757,tt0226994,tt0454224,tt1199550
nm0002716	Charles Gibson	\N	\N	visual_effects,assistant_director,director	tt0383574,tt0325980,tt0449088,tt0438488
nm0002717	Robert C. Jones	1936	2021	editor,writer,editorial_department	tt0057193,tt0077362,tt0061735,tt0099371
nm0002718	Brian Koppelman	1966	\N	writer,producer,actor	tt0313542,tt2364841,tt0465538,tt1547234
nm0002719	Vincent Lascoumes	1959	\N	assistant_director,actor	tt1840309,tt3501632,tt4500922,tt1634106
nm0002720	Andrew Lowes	1975	\N	director,writer,sound_department	tt0262544,tt0208678,tt0309510,tt0213537
nm0002721	Kieron Phipps	\N	\N	assistant_director,production_manager,actor	tt9731386,tt0112573,tt0203119,tt0404030
nm0002722	Barry Potter	1978	\N	director,writer,editor	tt0212908,tt0399282,tt0413324,tt2088800
nm0002723	Renny Rye	1947	\N	producer,director,miscellaneous	tt0107423,tt0086675,tt0205641,tt0094525
nm0002724	Herbert Wright	1947	2005	producer,miscellaneous,writer	tt0092455,tt0094578,tt0106144,tt0083198
nm0002725	Eric Yellin	1966	2022	assistant_director,miscellaneous,actor	tt12611178,tt0489099,tt0120685,tt0411951
nm0002726	Roger Young	1942	\N	director,producer,writer	tt0113483,tt0384766,tt0199232,tt3068894
nm0002727	Ludwig van Beethoven	1770	1827	music_department,composer,writer	tt1535108,tt1386703,tt0120844,tt0448011
nm0002728	Juan José Campanella	1959	\N	writer,director,producer	tt1305806,tt1994702,tt0210843,tt8453986
nm0002729	Matthew J. Clark	\N	2020	assistant_director,location_management,editor	tt0119215,tt0089686,tt2017109,tt0100661
nm0002730	Fiona Winning	\N	\N	assistant_director,production_manager,location_management	tt0338337,tt0831387,tt0376994,tt0290334
nm0002731	Kenna Doeringer	\N	\N	sound_department,editor,editorial_department	tt0352248,tt0368008,tt0120176,tt0117438
nm0002732	Taz Goldstein	\N	\N	miscellaneous,producer,writer	tt0210633,tt4740684,tt0815244,tt1230151
nm0002733	Marc Grossman	\N	\N	editor,editorial_department,camera_department	tt0398571,tt5453522,tt0110392,tt0100934
nm0002734	Catherine Ircha	\N	\N	art_director,art_department	tt1535108,tt1325004,tt10676012,tt1190080
nm0002735	Robert J. Lyons	\N	\N	producer,cinematographer,director	tt2158640,tt5599520,tt3130286,tt6087056
nm0002736	D.A. Metrov	\N	\N	writer,producer,director	tt1991186,tt2434766,tt0079082,tt0091981
nm0002737	Tomaz Sarc	1967	\N	actor,director	tt0210463,tt0064091
nm0002738	Cliff Lanning	\N	\N	assistant_director,producer,soundtrack	tt13654226,tt0372784,tt0373889,tt4630562
nm0002739	Daniel Geller	\N	\N	producer,director,cinematographer	tt0436095,tt2960450,tt0107314,tt7600742
nm0002740	Ben Eberhard	1975	\N	actor,producer	tt0115317,tt0138956,tt0207826,tt0112111
nm0002741	Oliver Block	1977	\N	actor	tt0094737,tt0099077,tt0093818
nm0002742	Marc Meisels	1965	\N	art_department,special_effects,miscellaneous	tt7737528,tt0119177,tt1189340,tt5090568
nm0002743	Daniel McVicar	1958	\N	actor,producer,director	tt0092325,tt0849423,tt0111093,tt0109950
nm0002744	Chris Baugh	\N	\N	location_management,production_manager,miscellaneous	tt1024648,tt2080374,tt6450804,tt0808151
nm0002745	Rolf Coulanges	1945	\N	cinematographer,director,editor	tt0180957,tt0181159,tt0180969,tt0180794
nm0002746	Terra Abroms	\N	\N	production_manager,editorial_department,producer	tt1600195,tt0430105,tt0132347,tt1213644
nm0002747	Mark Sanger	1974	\N	editor,editorial_department,visual_effects	tt8041270,tt1454468,tt4651466,tt3371366
nm0002748	Lisa L. Pollaro	\N	\N	visual_effects	tt0120844,tt0216216,tt0185183,tt0118571
nm0002749	Michael Nankin	1955	\N	producer,writer,director	tt3673480,tt14586544,tt0407362,tt15017118
nm0002750	Robert Cousins	\N	\N	production_designer,writer,miscellaneous	tt0424880,tt1111876,tt0462023,tt0137180
nm0002751	Francisco Rojo Villada	1958	\N	production_manager,transportation_department,actor	tt0947810,tt2515034,tt0758774,tt0440963
nm0002752	Tim Clague	1973	\N	camera_department,director,writer	tt3800520,tt8344316,tt1536519,tt9047024
nm0002753	Elvira Bolz	\N	\N	producer,production_manager,writer	tt0907694,tt0118646,tt0432432,tt0111416
nm0002754	Steven Tyler Sahlein	\N	\N	producer,executive,production_manager	tt5420210,tt0101414,tt0238414,tt6833470
nm0002755	Nellie Adami	\N	\N	miscellaneous,assistant_director	tt0118928,tt0115759,tt0479884,tt0378109
nm0002756	Cal Johnson	\N	\N	stunts,actor,assistant_director	tt5095030,tt3890160,tt7638348,tt4073790
nm0002757	Kami Turrou	1967	\N	miscellaneous	tt0103074,tt0102005,tt0105986,tt0213997
nm0002758	Jean-Claude Schlim	1963	\N	producer,production_manager,location_management	tt0405022,tt0379889,tt0189998,tt0118604
nm0002759	Ernesto Gastaldi	1934	\N	writer,director,assistant_director	tt0070215,tt0062806,tt0061906,tt0087261
nm0002760	Derek Bruyere	\N	\N	camera_department,miscellaneous	tt0120812,tt0120891,tt0146984,tt0119215
nm0002761	Tov Belling	\N	\N	camera_department,miscellaneous,assistant_director	tt0121766,tt0325710,tt0458525,tt0117786
nm0002762	Travis Baumann	1972	\N	visual_effects	tt0190332,tt1517260,tt0181689,tt5886046
nm0002763	James S. Fowler	1971	\N	assistant_director,director,cinematographer	tt0213849,tt0207347,tt0207569,tt0262985
nm0002764	Tina Pehme	\N	\N	producer,executive,miscellaneous	tt0213985,tt6054710,tt1014774,tt5734214
nm0002765	Alan Williams	\N	\N	composer,music_department,soundtrack	tt32140915,tt13194200,tt19863432,tt0140803
nm0002766	Larry Lalonde	\N	\N	producer,writer,miscellaneous	tt0159797,tt5797772,tt0103417,tt0224902
nm0002767	Larry Lalonde	\N	\N	music_department,actor,composer	tt0101452,tt1007028,tt1701990,tt0339851
nm0002768	Blanche Friderici	1878	1933	actress,soundtrack	tt0025316,tt0019344,tt0024539,tt0020748
nm0002769	Romy Schneider	1938	1982	actress,soundtrack,archive_footage	tt0073155,tt0081182,tt0048624,tt0057427
nm0002770	John Hughes	1882	1954	art_director,miscellaneous,art_department	tt0044121,tt0040897,tt0034167,tt0036582
nm0002771	Edward J. Montagne	1885	1932	writer,script_department,miscellaneous	tt0008730,tt0013105,tt0166997,tt0014424
nm0002772	Jay Jennings	1965	\N	producer,writer,director	tt0213061,tt1861344,tt0851215,tt0914842
nm0002773	Norma Maldonado	\N	\N	actress	tt6470478,tt3566726,tt2262532,tt29493821
nm0002774	Ken Lauber	\N	\N	music_department,composer,sound_department	tt1450321,tt0060347,tt0080116,tt0064947
nm0002775	Brendan Kailer Lieb	1967	\N	actor	tt0119672,tt0195108,tt0114910
nm0002776	Johnny Hallyday	1943	2017	music_artist,actor,music_department	tt0301414,tt0838232,tt3922798,tt1329454
nm0002777	Larry Mendte	1957	\N	director,actor,producer	tt0167515,tt1475226,tt0119942,tt2102736
nm0002779	Jennifer O'Neil	\N	\N	miscellaneous,casting_department	tt0131325,tt0115710,tt0202752,tt0106069
nm0002780	Jennifer O'Neil	\N	\N	miscellaneous	tt0119318,tt0112160
nm0002781	Jessica Wilson	\N	\N	script_department,miscellaneous,assistant_director	tt0120875,tt0118730,tt0120878,tt0254320
nm0002782	Jessica Looney	1974	\N	actress,producer,editor	tt20879464,tt0093780,tt0285341,tt0119837
nm0002783	Alain Olivieri	1960	\N	assistant_director,production_manager,miscellaneous	tt0387898,tt0091288,tt1602620,tt0290594
nm0002784	Frank Simeone	\N	\N	production_manager,producer,assistant_director	tt0329774,tt0096332,tt0078788,tt0364961
nm0002785	Henri Aubertin	\N	\N	costume_department,costume_designer	tt1877832,tt5834426,tt0414993,tt6565702
nm0002786	Mia Korf	\N	\N	actress	tt0118431,tt0062595,tt0285336,tt0108724
nm0002787	Steve Cohen	1964	2012	writer,producer	tt0433309,tt0120596,tt0282695
nm0002788	Matthew M. Meyer	\N	\N	sound_department,music_department,miscellaneous	tt0210000,tt1244588,tt0174543,tt0151022
nm0002789	Matt Mayer	\N	\N	editor,editorial_department,visual_effects	tt3532216,tt0414993,tt0327162,tt0412019
nm0002790	Mark Hager	\N	\N	miscellaneous,actor,producer	tt0330793,tt0234215,tt0286716,tt0119174
nm0002791	Craig Dabrowski	1974	\N	editorial_department,producer,actor	tt0393567,tt1362264,tt0155197,tt0413573
nm0002792	Doug Hobart	1927	2024	actor,make_up_department,special_effects	tt0065727,tt0071654,tt0062481,tt0067476
nm0002793	Antony Thomas	1940	\N	director,writer,producer	tt0096154,tt0277667,tt0388574,tt0815171
nm0002794	Archie Hankins	1962	\N	art_department,miscellaneous	tt0266697,tt0115956,tt0378194,tt0110443
nm0002795	Karen Rea	\N	\N	casting_department,casting_director	tt0087332,tt0088011,tt0120901,tt0316654
nm0002796	Ofer Inov	\N	\N	cinematographer,camera_department,director	tt0758732,tt3757218,tt0268696,tt0374036
nm0002797	Ricardo Franco	1949	1998	director,writer,actor	tt0118788,tt0094729,tt0176912,tt0073518
nm0002798	R. Scott Loughran	1964	\N	art_department,assistant_director,miscellaneous	tt0273982,tt0183280,tt0212815,tt0281398
nm0002799	Laurie Murdoch	1958	\N	actor	tt1895587,tt5639976,tt1442065,tt0106179
nm0002800	Scott Levy	1971	\N	actor,producer,sound_department	tt0119567,tt0120338,tt0401462,tt1323595
nm0002801	Ashley Edner	1990	\N	actress,miscellaneous	tt0145487,tt0315983,tt0087544,tt2660888
nm0002802	Nicolas Lartigue	\N	\N	camera_department,actor,writer	tt0473753,tt0344854,tt0118685,tt0492498
nm0002803	Michael Klastorin	1957	\N	miscellaneous,actor,writer	tt0117318,tt0102070,tt0099088,tt0253754
nm0002804	Joyce Marie Brusasco	\N	\N	producer,assistant_director	tt0168035,tt0127024,tt0214604,tt0218678
nm0002805	Mark DeSousa	\N	\N	visual_effects,producer	tt1825683,tt7605074,tt0120461,tt0120844
nm0002806	Bart Schroeven	1975	\N	producer	tt0444425
nm0002807	Ogi Ogas	1971	\N	director,writer,editor	tt0211180,tt0214610,tt0214631,tt0485072
nm0008117	Mohsen Ben Abdallah	\N	\N	actor	tt0063443,tt0168387,tt0086899
nm0002808	Andrea Maxwell	\N	\N	visual_effects,editor,director	tt9114286,tt3480822,tt1825683,tt6320628
nm0002809	Brian Capener	\N	\N	cinematographer,camera_department,writer	tt0120321,tt0107183,tt0452829,tt0118205
nm0002810	Bobby Edner	1988	\N	actor,miscellaneous,soundtrack	tt0338459,tt0104652,tt0313911,tt0388944
nm0002811	Jeremy Knaster	\N	\N	camera_department,actor,art_department	tt0133952,tt0368008,tt0115956,tt0268695
nm0002812	Rick Nathanson	\N	\N	producer,production_manager,miscellaneous	tt2652118,tt0425637,tt0106770,tt0105156
nm0002813	Amanda White	\N	\N	producer,miscellaneous,executive	tt0184858,tt0206314,tt0119217,tt1356864
nm0002814	Christopher Leone	\N	\N	director,writer,visual_effects	tt3479316,tt0830361
nm0002815	Pedro Lazaga	1918	1979	director,writer,assistant_director	tt0047335,tt0043789,tt0061470,tt0059611
nm0002816	Miguel Ligero	1890	1968	actor,writer,soundtrack	tt0029897,tt0025942,tt0047206,tt0057641
nm0002817	Soledad Miranda	1943	1970	actress,archive_footage	tt0218181,tt0066380,tt0055577,tt0067846
nm0002818	Kristoffer Sjöström	1955	\N	art_department,production_designer	tt6304046,tt1440728,tt0837106,tt0203166
nm0002819	Jeffrey R. Gund	\N	\N	casting_department,music_department,sound_department	tt0081857,tt0215934,tt1694423,tt4843648
nm0002820	Thomas Carnegie	\N	\N	art_department,production_designer,art_director	tt0120903,tt0251160,tt0299658,tt0337539
nm0002821	R. Orlando Duenas	1960	\N	editor,editorial_department,music_department	tt0338348,tt11084896,tt0118884,tt0458290
nm0002822	Mark Hosack	1975	\N	producer,writer,editor	tt0343818,tt0493165,tt0230540,tt8964206
nm0002823	J.P. Luijsterburg	1967	\N	editor,composer,editorial_department	tt1846526,tt0433686,tt0117142,tt0118588
nm0002824	Molly Mikula	\N	\N	art_department,art_director	tt0421715,tt1853728,tt0453467,tt1133985
nm0002825	Robert Morris	\N	\N	production_designer	tt0222375,tt0146516,tt0119330,tt0185400
nm0002826	Sally Plum	\N	\N	costume_designer,costume_department	tt0401995,tt0368249,tt0187623,tt0111902
nm0002827	Michael Reynolds	\N	\N	editorial_department	tt0112715,tt0172495,tt0265086,tt0117765
nm0002828	Mark Sanders	\N	\N	editor,editorial_department,sound_department	tt1217560,tt0377713,tt1617110,tt1206304
nm0002829	Chris Seagers	\N	\N	production_designer,art_director,art_department	tt2316204,tt0120815,tt0453467,tt6654210
nm0002830	Ricardo Spinacé	\N	\N	production_designer,art_department,art_director	tt0216216,tt0429493,tt0190374,tt0139414
nm0002831	John 'J.T.' Tully	\N	\N	actor,camera_department,miscellaneous	tt1669268,tt0879836,tt0773297,tt0445922
nm0002832	Alejandro Valadez	\N	\N	composer,director,writer	tt0214127,tt0122419,tt0134172
nm0002833	David Webb	\N	\N	assistant_director,producer,actor	tt7286456,tt1462764,tt1302006,tt1024648
nm0002834	Brandon L. Wilson	1972	\N	producer,editor,director	tt0398571,tt4063096,tt0914829,tt0312113
nm0002835	Adam Bernstein	1960	\N	director,producer,writer	tt2802850,tt0127288,tt0496424,tt0903747
nm0002836	Annie Bradley	\N	\N	director,producer,writer	tt7772602,tt15566744,tt5834204,tt21105638
nm0002837	Stefan Brönneke	1964	\N	director,actor,writer	tt0463847,tt0213782,tt0819958,tt0489298
nm0002838	Jaro Dick	\N	\N	set_decorator,art_department,actor	tt0119217,tt8622160,tt2243973,tt1898069
nm0002839	Michael J. Ferrari	\N	\N	editorial_department,editor,assistant_director	tt0195393,tt0106913,tt0108540,tt0142224
nm0002840	Reuben Gonzalez	\N	\N	writer,actor,director	tt0199744,tt0363269,tt1935277,tt0128414
nm0002841	Jamie Kirkpatrick	\N	\N	editor,editorial_department,producer	tt20201748,tt12731980,tt7870102,tt2291540
nm0002842	Caitlin Blue	\N	\N	set_decorator,art_department,production_designer	tt0115736,tt0116361,tt0114170,tt0312081
nm0002843	Steve Rosenzweig	\N	\N	production_designer,art_department	tt1385826,tt0440963,tt1135487,tt1176740
nm0002844	Donna Wheeler	\N	\N	editorial_department,producer,director	tt0204250,tt2338357,tt9144872,tt9168912
nm0002845	Amy Segal	\N	\N	producer,production_manager,assistant_director	tt0113189,tt0137494,tt0166485,tt0107183
nm0002846	Josh Skye	1976	\N	miscellaneous,assistant_director,art_department	tt0338337,tt0150377,tt0184858,tt0120657
nm0002847	Sean-Michael Smith	1972	\N	camera_department,cinematographer,producer	tt0329774,tt0486822,tt0361620,tt0168629
nm0002848	Stephan Brenninkmeijer	1964	\N	director,cinematographer,producer	tt0284534,tt0106103,tt1736555,tt0228901
nm0002849	Linda Vipond	\N	\N	set_decorator,art_department	tt0097388,tt0088024,tt0304669,tt1132285
nm0002850	Rick Giovinazzo	\N	\N	music_department,composer,actor	tt1877832,tt1440129,tt0418279,tt3371366
nm0002851	Ricardo Olivero	\N	\N	editorial_department	tt0113481,tt0120907,tt0399146,tt0227984
nm0002852	Bernhard Lebourne	\N	\N	editor,miscellaneous,producer	tt4230078,tt5227746,tt3487654,tt5327922
nm0002853	Chris Petts	\N	\N	visual_effects,actor	tt0120738,tt3480822,tt0149261,tt4154796
nm0002854	Jens Schlosser	1954	\N	cinematographer,camera_department,miscellaneous	tt2720680,tt0208911,tt0167137,tt1135922
nm0002855	Neil Delama	\N	\N	actor,stunts	tt0139151,tt1593774,tt0306699,tt0166286
nm0002856	Ken Tipton	1952	\N	actor,producer,director	tt0415838,tt0211638,tt3431592,tt0111653
nm0002857	Michael Kearns	1950	\N	actor,writer,producer	tt0086984,tt0371008,tt15432574,tt0100705
nm0002858	David McGiffert	\N	\N	assistant_director,producer,editor	tt0095953,tt0259711,tt0088763,tt0106918
nm0002859	Ned Kopp	1935	2020	production_manager,assistant_director,producer	tt0232500,tt0066434,tt0097742,tt0090264
nm0002860	Yves Agostini	\N	\N	camera_department,cinematographer	tt0280665,tt0310203,tt0119038,tt0416496
nm0002861	William T. Orr	1917	2002	producer,actor,writer	tt0052472,tt0051247,tt0047786,tt0033725
nm0002862	Ernst Winar	1894	1978	actor,director,writer	tt0435695,tt0332186,tt0026826,tt0026584
nm0002863	Ken Ziegler	\N	\N	visual_effects,miscellaneous	tt0163025,tt0121765,tt0120915,tt0114508
nm0002864	Michael Markowitz	1961	\N	producer,writer,miscellaneous	tt0108755,tt1499658,tt0174378,tt0366034
nm0002866	Christopher Covert	\N	\N	music_department,producer	tt0331953,tt0144084,tt0247745,tt0261983
nm0002867	Ann Curtis	\N	\N	costume_department,costume_designer	tt0063297,tt0084889,tt0279887,tt0060039
nm0002868	Annie Curtis-Jones	\N	\N	costume_designer,costume_department,art_department	tt0103312,tt0097861,tt0094819,tt0088807
nm0002869	Mario Gallo	1923	1984	actor	tt0081398,tt0074751,tt0072417,tt0086192
nm0002870	Pierre Courrège	1959	\N	writer,director,production_manager	tt3855752,tt0115897,tt0328820,tt30851085
nm0002871	Beatrice Ring	1965	\N	actress,director,writer	tt0096511,tt0093268,tt0143839,tt0216209
nm0002872	Kelsa Kinsly	\N	\N	actress,miscellaneous,stunts	tt0119051,tt0115351,tt0135067,tt0115243
nm0002873	Gregory Puchalski	\N	\N	art_department,music_department	tt6018306,tt0104427,tt0120655,tt0087781
nm0002874	Jennifer Giles	\N	\N	producer,production_manager,actress	tt0208204,tt0176118,tt0216394,tt0215478
nm0002875	Freddie Young	1902	1998	cinematographer,camera_department,director	tt0056172,tt0059113,tt0066319,tt0062512
nm0002876	Cathie Filian	\N	\N	producer,actress,writer	tt0259711,tt0117998,tt0119925,tt0128445
nm0002877	José Retra	\N	\N	composer,actress,music_department	tt0126906,tt0340214,tt0288916,tt0140789
nm0002878	Ric Sarabia	1959	\N	actor	tt7668870,tt3986820,tt2361317,tt0824747
nm0002879	Astrid Sieben	\N	\N	art_director,art_department,production_designer	tt10272386,tt4799064,tt1894476,tt7991608
nm0002880	Lisa Freiberger	\N	\N	casting_department,casting_director	tt0083944,tt0082085,tt0085970,tt0083530
nm0002881	Eric Aubin	1971	\N	camera_department,miscellaneous,cinematographer	tt0319262,tt1877832,tt0414993,tt5834426
nm0002882	Charles Libin	\N	\N	cinematographer,camera_department,director	tt9222438,tt7861644,tt6144092,tt3180668
nm0002883	Brad Arensman	\N	\N	production_manager,editorial_department,producer	tt1037705,tt1856101,tt3397884,tt2209764
nm0002884	Andrea V. Rossotto	\N	\N	cinematographer,camera_department	tt1502404,tt0119985,tt0416775,tt0248742
nm0002885	François Audouy	\N	\N	production_designer,art_department,art_director	tt1950186,tt11563598,tt3315342,tt4513678
nm0002886	Robert J. Walsh	1947	2018	composer,music_department,miscellaneous	tt2955402,tt0144117,tt2717822,tt0257756
nm0002887	Alan Myerson	1936	\N	director,actor,writer	tt0095882,tt0103466,tt0064962,tt0083437
nm0002888	Stephen Blackehart	\N	\N	actor,producer,casting_department	tt5950044,tt3896198,tt6791350,tt2015381
nm0002889	Michael Albanese	\N	\N	miscellaneous,actor,writer	tt0103064,tt0099460,tt1621429
nm0002890	Walter Halsey Davis	1942	2019	writer,producer	tt0108134,tt0085747,tt0089032,tt0096072
nm0002891	Lawrence Jones	\N	\N	cinematographer,camera_department	tt0328799,tt0098765,tt1729107,tt0207275
nm0002892	Wally Pfister	1961	\N	cinematographer,camera_department,director	tt1375666,tt0468569,tt0482571,tt0372784
nm0002893	Linda Shayne	\N	\N	director,writer,producer	tt8394708,tt29474792,tt13404242,tt35677250
nm0002894	Anthony Gasparro	\N	\N	production_designer,art_director,art_department	tt22408160,tt9231040,tt30253473,tt0455538
nm0002895	Mohammed Sharafi	1976	\N	actor	tt0120188
nm0002896	Ann E. Todd	1931	2020	actress,soundtrack,archive_footage	tt0033729,tt0031491,tt0038038,tt0042151
nm0002897	Ann Todd	1907	1993	actress,soundtrack,archive_footage	tt0039694,tt0041735,tt0038924,tt0042700
nm0002898	Burke Moses	1959	\N	actor,miscellaneous	tt0065272,tt0200337,tt3288518,tt0386616
nm0002899	Martin Meyer	1956	\N	camera_department,cinematographer,miscellaneous	tt0084704,tt0447812,tt0192712,tt0086564
nm0002900	Wayne Massarelli	1949	2012	make_up_department	tt0267804,tt0452681,tt0087755,tt0117119
nm0002901	Muse Watson	1948	\N	actor,producer,soundtrack	tt0364845,tt0455275,tt0114496,tt0119345
nm0002902	Andy Thompson	\N	\N	actor,producer,writer	tt7826376,tt7608248,tt5511512,tt3691740
nm0002903	David Tucker	\N	\N	director,editor,producer	tt0099698,tt0108993,tt0090541,tt3003684
nm0002904	Joseph P. Lucky	\N	\N	production_designer,art_director,art_department	tt6226232,tt0439100,tt6315640,tt4481266
nm0002905	Michael Hertlein	\N	\N	sound_department,actor	tt23137904,tt1856101,tt0265086,tt0397535
nm0002906	Richard Sobin	\N	\N	camera_department,cinematographer	tt0115857,tt0114814,tt0204626,tt0110632
nm0002907	Alexander Skarsgård	1976	\N	actor,producer,director	tt0918940,tt3920596,tt0844441,tt7598448
nm0002908	Kelly Granite	1961	\N	visual_effects,producer,art_department	tt0119116,tt0120685,tt0120157,tt0118928
nm0002909	Rachela Williams	1967	2001	actress,writer,producer	tt0271649,tt0197104,tt0216926,tt0196768
nm0002910	Gianni Lepre	1947	\N	director,writer	tt0211131,tt0224815,tt0307850,tt1812418
nm0002911	Jay Holben	\N	\N	director,producer,cinematographer	tt0773262,tt1841108,tt3910648,tt0216969
nm0002912	Michael K. Bucher	1939	2012	cinematographer,camera_department,editor	tt0189038,tt0241161,tt0133987,tt0195343
nm0002913	Chris Jaymes	\N	\N	actor,writer,director	tt31923069,tt7772588,tt0411008,tt12677870
nm0002914	Jarrell Jay Knowles	1945	\N	art_department,actor,set_decorator	tt0217123,tt2189892
nm0002915	Erwin Hillier	1911	2005	cinematographer,camera_department	tt0056886,tt0037800,tt0041511,tt0036310
nm0002916	Ray Brady	1961	\N	director,writer,editor	tt2363065,tt7123996,tt15062874,tt18360192
nm0002917	William Dodds	1976	\N	assistant_director,miscellaneous	tt27953589,tt4575576,tt11068094,tt1661199
nm0002918	Richard Ferrando	\N	\N	composer,director,writer	tt33737571,tt0353341,tt3243638,tt0819704
nm0002919	Zachary Gamburg	1975	\N	miscellaneous,director,actor	tt0171580,tt0204076,tt0765725,tt1058042
nm0002920	Mike Hansel	\N	\N	director	tt0150492
nm0002921	Tiffany Hillkurtz	\N	\N	editor,producer,miscellaneous	tt7510222,tt5113040,tt6718170,tt0076759
nm0002922	Stephen Mark	\N	\N	editor,editorial_department,writer	tt0120902,tt0204993,tt0106179,tt0348914
nm0002923	Ezekiel Norton	1970	\N	animation_department,director,visual_effects	tt1190080,tt0765446,tt0814255,tt0290983
nm0002924	Ilja Obretenov	1951	\N	art_department,production_designer,set_decorator	tt0283559,tt0171648,tt1928116,tt0123920
nm0002925	Isaac Sehayek	\N	\N	editor,producer,editorial_department	tt2164718,tt0391788,tt10370402,tt3921362
nm0002926	Enrique Chediak	1967	\N	cinematographer,camera_department,producer	tt1542344,tt0463854,tt1790864,tt2304933
nm0002927	Michael Hofstein	\N	\N	camera_department,cinematographer,assistant_director	tt0093507,tt0120812,tt2249826,tt5771574
nm0002928	Igor Sunara	1955	\N	cinematographer,camera_department,director	tt0118887,tt2160181,tt0888050,tt0100817
nm0002929	Mitch Levine	\N	\N	director,actor,writer	tt0201919,tt7477946,tt8224738,tt12636394
nm0002930	Julie St. Claire	1970	\N	actress,director,producer	tt0091954,tt0166247,tt0112451,tt0134269
nm0002931	Greg Walker	1945	2025	stunts,actor,assistant_director	tt0093260,tt0088944,tt0100502,tt0107978
nm0002932	Greg Walker	\N	\N	producer,writer,miscellaneous	tt0321021,tt1043813,tt0279600,tt0182587
nm0002933	Brian Berkenfeld	\N	\N	talent_agent,miscellaneous	tt0120524,tt0113074,tt0112625,tt0114041
nm0002934	Normand Corbeil	1956	2013	composer,music_department,sound_department	tt0160009,tt0114367,tt1606610,tt0383782
nm0002935	Moe Howard	1897	1975	actor,writer,producer	tt0037813,tt0056579,tt0025688,tt0037132
nm0002936	Kristina Anapau	1979	\N	actress,producer,writer	tt0947798,tt0844441,tt1830617,tt0391891
nm0002937	Adam McCulloch	\N	\N	writer,art_department,visual_effects	tt0133093,tt0117631,tt0217830,tt0119272
nm0002938	Jane Tattersall	\N	\N	sound_department,editorial_department,music_department	tt2306299,tt5834204,tt1423894,tt0102511
nm0002939	Mustafa Presheva	1961	\N	editor,actor,editorial_department	tt6316138,tt7832124,tt0127311,tt0384116
nm0002940	Ghislain Pensa	\N	\N	editorial_department,miscellaneous,production_manager	tt0809273,tt0271324,tt0103534,tt0185052
nm0002941	Kevin Loader	1956	\N	producer,director,assistant_director	tt4686844,tt1266029,tt1226774,tt0488604
nm0002942	Verton R. Banks	\N	\N	actor,producer,writer	tt13207736,tt2342652,tt7235466,tt7661046
nm0002943	R.H. Davies	\N	\N	miscellaneous	tt0245844,tt1371111,tt0108333,tt0112760
nm0002944	Michael Boisvert	1973	\N	actor,stunts	tt2120120,tt0242445,tt0132245,tt3348730
nm0002945	Francesco Marras	1965	\N	producer,production_manager,location_management	tt2719848,tt1243957,tt0963178,tt1859650
nm0002946	Jeff Kushner	1965	\N	sound_department,editor,actor	tt0132347,tt0313911,tt0159273,tt0250797
nm0002947	Toby Oliver	\N	\N	cinematographer,camera_department,producer	tt5052448,tt26342662,tt30428143,tt3797512
nm0002948	Costas Ferris	1935	\N	director,writer,actor	tt0123053,tt0086182,tt0071513,tt0217745
nm0002949	Frank Schlegel	1962	\N	visual_effects,special_effects,art_department	tt0434409,tt0811080,tt1186367,tt2278388
nm0002950	Robert J. Burke Jr.	\N	\N	actor,writer	tt2249786,tt2842662,tt0217711,tt0350811
nm0002951	Alyce Wittenstein	\N	\N	director,writer,actress	tt0090715,tt0113868,tt0097992,tt0109590
nm0002952	Rupert Lazarus	\N	\N	production_designer,art_department,art_director	tt9252156,tt2121286,tt5918982
nm0002953	Judith Vogelsang	\N	\N	assistant_director,director,producer	tt1015988,tt1326226,tt1358251,tt1462705
nm0002954	Kellie Ann Benz	\N	\N	writer,director,producer	tt1278300,tt0310516,tt0245055,tt2654712
nm0002955	Joseph Melskens	1960	\N	production_manager,camera_department,location_management	tt0159603,tt0128023,tt0128325,tt0100511
nm0002956	Barry Gibb	1946	\N	actor,composer,music_department	tt0077631,tt0076666,tt0114857,tt1677720
nm0002957	Nadeem Saifi	\N	\N	music_artist,composer,music_department	tt0117437,tt0119861,tt0307873,tt0126871
nm0002958	Stephen Maynard	\N	\N	sound_department	tt0076704
nm0002959	Stephen Maynard	\N	\N	producer,miscellaneous	tt0114367,tt0143166,tt0251446,tt0112758
nm0002960	Julio Iglesias	1943	\N	music_artist,actor,composer	tt1340800,tt0095675,tt0081146,tt0065178
nm0002961	Frances Burroughs	\N	\N	producer,miscellaneous,production_designer	tt0867482,tt0420098,tt0328558,tt0331207
nm0002962	Alex Corven	1963	2018	producer,location_management,production_manager	tt0320661,tt0317740,tt1657507,tt0265086
nm0002963	Luc Chalifour	1961	\N	director,assistant_director	tt0115326,tt0250750,tt0205737,tt0172057
nm0002964	John Covert	\N	\N	producer,actor,director	tt0177350,tt0249402,tt0217143,tt9058654
nm0002965	Curran G. Engel	1963	2016	miscellaneous,assistant_director,producer	tt0113957,tt0106469,tt0116683,tt0364083
nm0002966	Jonathan Figg	1975	\N	writer,producer,director	tt0212829,tt0275236,tt6467466,tt3489302
nm0002967	Flip Filippelli	1973	\N	art_department,art_director,miscellaneous	tt1079360,tt0447999,tt0115151,tt30496274
nm0002968	Derubín Jácome	1948	\N	art_director,production_designer,costume_designer	tt0178266,tt0089288,tt1838571,tt0092761
nm0002969	Dina Lipton	\N	\N	production_designer,art_department,art_director	tt0206314,tt0110308,tt1333125,tt0124198
nm0002970	Ray Melendez	1976	\N	miscellaneous,camera_department,actor	tt0212346,tt0295498,tt0248760,tt1709165
nm0002971	Ángel Mena	1975	\N	producer,director,writer	tt0217907,tt0122419
nm0002972	Henric Nieminen	\N	\N	producer,miscellaneous,director	tt0349710,tt0408790,tt0141926,tt0331933
nm0002973	Lev L. Spiro	\N	\N	director,writer,actor	tt14825736,tt2372162,tt1442437,tt1369845
nm0002974	Clay Walker	1968	\N	editor,editorial_department,cinematographer	tt0217220,tt0405839,tt0217818,tt0102034
nm0002975	Evi Quaid	1963	\N	producer,director,actress	tt0167110,tt0099286,tt1913145,tt0109514
nm0002976	Kevin Mukherji	1962	\N	actor,producer,director	tt0362227,tt1586680,tt2427150,tt4370596
nm0002977	J. Keith van Straaten	1971	\N	producer,writer,actor	tt0836827,tt0264235,tt6966758,tt0072331
nm0002978	Florian Gärtner	1968	\N	director,writer,actor	tt0166581,tt0366767,tt0806910,tt0117173
nm0002979	Lynn Guthrie	1941	\N	assistant_director,production_manager,producer	tt0102070,tt0074464,tt0068149,tt0092319
nm0002980	Shirley Walker	1945	2006	music_department,composer,soundtrack	tt0099365,tt0099422,tt0116225,tt0111503
nm0002981	Fredrik Agetoft	1971	\N	writer,script_department,producer	tt0907683,tt0185112,tt12304420,tt4473482
nm0002982	Victoria Arch	\N	\N	writer,director,producer	tt0338096,tt3744264,tt0426406,tt0361912
nm0002983	Stephen Peters	1947	\N	writer,actor	tt0120890,tt0114973,tt0099606,tt0448179
nm0002984	Richard Hissong	1947	\N	cinematographer,camera_department,miscellaneous	tt0075584,tt0131675,tt0346222,tt0108778
nm0002985	Mari Weiss	\N	\N	actress,script_department,sound_department	tt1586680,tt0804503,tt3205802,tt0321777
nm0002986	Howard Young	\N	\N	producer,miscellaneous,production_manager	tt2097307,tt0317919,tt13405778,tt0120179
nm0002987	Bram Eisenthal	\N	\N	miscellaneous	tt0184858,tt0114367,tt0118647,tt0127640
nm0002988	Mark Lambert Bristol	1969	\N	art_department,director,writer	tt9201172,tt9603212,tt4912910
nm0002989	Andrew Stevens	1955	\N	writer,producer,director	tt0144117,tt0233142,tt0190138,tt0237572
nm0002990	Dianah Wynter	\N	\N	director,writer,miscellaneous	tt1267434,tt0248655,tt0208228,tt0200353
nm0002991	Jill Robertson	\N	\N	director,producer,miscellaneous	tt0117951,tt13430420,tt5761478,tt4122068
nm0002992	Jeff Economy	1965	\N	camera_department,producer,cinematographer	tt0180459,tt0180387,tt0180699,tt0381938
nm0002993	Aleksandr Lokshin	1920	1987	composer,actor,soundtrack	tt0167420,tt0146363,tt0352246,tt0049191
nm0008196	Ourahou Abdelwahad	\N	\N	transportation_department	tt0104082
nm0002994	Kevin McCarthy	1914	2010	actor,miscellaneous,soundtrack	tt0049366,tt0098546,tt0078087,tt0077745
nm0002995	Dwayne Grady	\N	\N	art_department,actor,miscellaneous	tt0120201,tt0387808,tt0780571,tt0212346
nm0002996	Shawn K. Clement	1968	\N	composer,music_department,miscellaneous	tt0312305,tt0118276,tt1326218,tt2847178
nm0002997	Greg Orrante	1962	\N	sound_department,producer	tt0170884,tt0460649,tt0318443,tt0098793
nm0002998	Kenneth Hughes	\N	\N	actor,producer,director	tt0399201,tt1022603,tt1744671,tt0104070
nm0002999	Richard S. Wright	\N	\N	producer,production_manager,executive	tt1189340,tt6850820,tt3717252,tt1655441
nm0003000	Alon Bar	1966	\N	writer,producer,assistant_director	tt0219467,tt0218190,tt1951234,tt0221184
nm0003001	Shelly Lyons	\N	\N	actress,director,writer	tt3923098,tt5627626,tt0218058,tt0123615
nm0003002	Sergei Karnet	\N	\N	production_designer,art_department,set_decorator	tt0094371,tt0134185,tt0102851,tt0218306
nm0003003	Ron Gilbert	\N	\N	actor,producer,casting_department	tt0114814,tt4125630,tt7866456,tt1814790
nm0003004	Charlene Amateau	\N	\N	costume_department	tt2473602,tt0122151,tt0325710,tt0790724
nm0003005	Gary Lionelli	\N	\N	composer,music_department,soundtrack	tt5275892,tt3279124,tt1578887,tt11893274
nm0003006	Anita Finlay	1958	\N	actress,archive_footage	tt1219024,tt0218390,tt0402711,tt0274924
nm0003007	Velimir Kovacic	1972	\N	cinematographer	tt0196745,tt0218114,tt0269144,tt0221250
nm0003008	Liz Kivowitz	\N	\N	producer,miscellaneous	tt0307848,tt0231043,tt0218447,tt0214490
nm0003009	Keith Clark	\N	\N	producer,editor,editorial_department	tt15677070,tt13540650,tt5867314,tt12198950
nm0003010	Gary Tuck	\N	\N	producer,production_manager,miscellaneous	tt7366338,tt7243884,tt4163668
nm0003011	Dariusz Wolski	1956	\N	cinematographer,camera_department,actor	tt3659388,tt6878306,tt13287846,tt0112740
nm0003012	Michael Creighton Rogers	1963	\N	music_department,producer,actor	tt1856107,tt4994716,tt0892082,tt0438486
nm0003013	Jay Nierenberg	1966	\N	sound_department,actor,editorial_department	tt0105690,tt0106977,tt0232500,tt0109444
nm0003014	Peter Agnew	\N	\N	assistant_director,location_management,camera_department	tt0112573,tt2234003,tt0107207,tt0327679
nm0003015	Shannon Denton	\N	\N	art_department,producer,writer	tt3513500,tt0268397,tt1001484,tt6148376
nm0003016	John Gilbert	\N	\N	editor,producer,writer	tt0120737,tt2119532,tt0412080,tt1297919
nm0003017	Lori Elberg	1975	\N	director,writer,editorial_department	tt2791166,tt0131597,tt16302576,tt0482960
nm0003018	Barbara Haberecht	\N	\N	set_decorator,art_department,production_designer	tt0137363,tt2467046,tt0166924,tt0100502
nm0003020	Kathleen Higgins	\N	\N	miscellaneous,script_department,assistant_director	tt3829266,tt1431045,tt0978764,tt0150377
nm0003021	Chris McKay	1973	\N	director,producer,editor	tt11358390,tt9777666,tt4116284,tt1490017
nm0003022	Lee Rose	\N	\N	director,producer,writer	tt5171438,tt0844441,tt3609352,tt9012876
nm0003023	Jesse Ray Boehm	\N	\N	miscellaneous,writer,director	tt0186566,tt0146675,tt0160184,tt0196573
nm0003024	Roberto Cimatti	1954	\N	cinematographer,camera_department,producer	tt0483206,tt1351672,tt1951299,tt1176439
nm0003025	Michael Halstead	\N	\N	actor	tt0182306,tt0119608
nm0003026	Steven Griffith	\N	\N	actor	tt0109830,tt0107889,tt0094484,tt0407095
nm0003027	Néstor Sanz	1957	\N	cinematographer,actor,director	tt0245067,tt0091215,tt0092552,tt0106382
nm0003028	Rodrigo Botero	\N	\N	actor,producer,writer	tt0113041,tt0139669,tt0096542,tt18328514
nm0003029	Isabelle Broué	1968	\N	director,script_department,writer	tt5285048,tt0255715,tt0209067,tt0378898
nm0003030	Rosa Maria Sardà	1941	2020	actress,writer,director	tt0185125,tt1067128,tt0277578,tt0158030
nm0003031	Caroline Thompson	1956	\N	writer,producer,director	tt0099487,tt0101272,tt0970411,tt0107688
nm0003032	Bob Ducsay	\N	\N	editor,producer,editorial_department	tt17220216,tt0120616,tt2527336,tt14364480
nm0003033	Aaron Weintraub	1975	\N	visual_effects,editor,sound_department	tt0377713,tt1488589,tt2023587,tt1663662
nm0003034	John Stewart	\N	\N	cinematographer,editor,director	tt0173746,tt0218824,tt0173874,tt0173693
nm0003035	Frank Morrone	\N	\N	sound_department,music_department,producer	tt0411008,tt0162661,tt0092329,tt0117438
nm0003036	Dave Fallon	\N	\N	sound_department	tt0166458,tt0294175,tt3585778,tt0363314
nm0003037	Egidio Tari	1968	\N	actor	tt0963194,tt3148266,tt1694893,tt0233052
nm0003038	Daniel E. Teaze	\N	\N	camera_department,visual_effects	tt0119654,tt0120647,tt0116629,tt0103064
nm0003039	Alan Ari Lazar	\N	\N	composer,music_department,soundtrack	tt11199410,tt8510488,tt14151720,tt0802948
nm0003040	Rick Sander	1970	\N	visual_effects,assistant_director,miscellaneous	tt5057054,tt5765844,tt2168000,tt1837576
nm0003041	John Johns	1963	\N	camera_department,visual_effects,miscellaneous	tt0183523,tt0882977,tt0430357,tt0390022
nm0003042	Karl Heinz Knippenberg	\N	\N	production_manager,producer,writer	tt0103432,tt0091917,tt0806910,tt0071460
nm0003043	Alexander Gradet	1976	\N	producer,writer,director	tt4669538,tt0461770,tt0268380,tt0206388
nm0003044	Michael Jordan	1963	\N	actor,executive,soundtrack	tt0117705,tt0124718,tt0317313,tt37503797
nm0003045	Brian Ash	1974	\N	producer,writer,miscellaneous	tt0169986,tt0233142,tt9619846,tt0810912
nm0003046	Andrew Parke	\N	\N	cinematographer,camera_department,miscellaneous	tt0120685,tt0116629,tt0267804,tt0826756
nm0003047	Marc Simard	\N	\N	art_department,camera_department,production_manager	tt0368794,tt0282552,tt0168631,tt0128648
nm0003048	Suze Randall	1946	\N	director,producer,actress	tt0128631,tt0125315,tt0087726,tt0189126
nm0003049	Peter Thomas	1925	2020	composer,music_department,actor	tt0270288,tt0067824,tt0053829,tt0057035
nm0003050	Gerhard Schedel	1955	\N	composer,visual_effects,art_department	tt0329502,tt0215824,tt0094684,tt0314226
nm0003051	Richard E. Doherty	1965	\N	director,actor,sound_department	tt0219191,tt0187747,tt0331577,tt6641598
nm0003052	Filippo Fassetta	\N	\N	assistant_director,miscellaneous,script_department	tt2395427,tt0134119,tt0875034,tt0360139
nm0003053	Beauchamp Fontaine	\N	\N	set_decorator,production_designer,art_department	tt9777666,tt12361974,tt1670345,tt1727776
nm0003054	Ben Howard	\N	\N	assistant_director,actor,miscellaneous	tt6166392,tt12299608,tt8847712,tt2278388
nm0003055	Sherard Jayasuriya	\N	\N	assistant_director,art_department,actor	tt31591912,tt14588522,tt9255182,tt1704142
nm0003056	Stacey Kalkowski	\N	\N	assistant_director,miscellaneous	tt1083456,tt0197072,tt0167145,tt0139442
nm0003057	Keith Putnam	1978	\N	cinematographer,camera_department,editor	tt3501074,tt6692994,tt1800741,tt1615147
nm0003058	Elizabeth Shelton	\N	\N	costume_department,costume_designer	tt0368891,tt0480249,tt0100685,tt4154756
nm0003059	Joe Zimmerman	1963	\N	miscellaneous,actor,stunts	tt0107290,tt0109254,tt0211323,tt0800038
nm0003060	Mason Alan Dinehart	1936	\N	actor	tt0051740,tt0047750,tt0230702,tt0050229
nm0003061	Alan Dinehart	1918	1992	actor,miscellaneous,producer	tt0076983,tt0042070,tt0057730,tt0045400
nm0003062	Alan Dinehart	1889	1944	actor,miscellaneous,soundtrack	tt0024631,tt0025330,tt0024625,tt0026920
nm0003063	David Tarleton	1971	\N	producer,director,editor	tt13524686,tt21202100,tt16058160,tt10502690
nm0003064	Lew Brown	1925	2014	actor,archive_footage	tt0065377,tt0065112,tt0064177,tt0058796
nm0003065	Steven T Puri	\N	\N	visual_effects,miscellaneous,producer	tt0116629,tt0111143,tt0106697,tt0120685
nm0003066	Gregg Vance	\N	\N	actor,producer,director	tt5363178,tt1260911,tt0112112,tt5866856
nm0003067	Sebastian Roché	\N	\N	actor,writer,director	tt18335752,tt1740299,tt8415836,tt3655448
nm0003068	Ron Rapiel	\N	\N	assistant_director,producer,miscellaneous	tt16358384,tt13659418,tt1759761,tt1856010
nm0003069	James DuMont	1965	\N	actor,producer,script_department	tt0257076,tt0369610,tt0111257,tt1860357
nm0003070	Michael R. Joyce	\N	\N	producer,production_manager,assistant_director	tt0089370,tt0110678,tt0110763,tt0314979
nm0003071	John Michael Weatherly	1980	\N	actor	tt0968264,tt4781612,tt0210945,tt2647544
nm0003072	Byron A. Martin	\N	\N	producer,production_manager,location_management	tt1220634,tt0418819,tt0296572,tt0120903
nm0003073	Arno	1949	2022	composer,actor,music_department	tt0214520,tt0953318,tt0812243,tt3456414
nm0003074	Brian McNulty	\N	\N	producer,miscellaneous,production_manager	tt0177971,tt0107206,tt0114069,tt0118571
nm0003075	Casey Brown	1956	\N	producer,miscellaneous,actress	tt1458175,tt0087781,tt0185014,tt1648208
nm0003076	Peter Weyrauch	\N	\N	camera_department,cinematographer,producer	tt0219531,tt0303758,tt0181447,tt0113659
nm0003077	Jess Bowers	\N	\N	music_department,editor	tt0192551,tt0400801,tt0419326
nm0003078	Roger Cross	\N	\N	actor,producer,writer	tt8593252,tt1954347,tt4159076,tt0951216
nm0003079	Laura J. DeRosa	\N	\N	art_department,miscellaneous	tt0166924,tt0242423,tt0181852,tt0250494
nm0003080	Rachel Talalay	1958	\N	director,producer,miscellaneous	tt0101917,tt0114614,tt1475582,tt7569592
nm0003081	Doug Metzger	\N	\N	assistant_director,producer,stunts	tt0317740,tt0099348,tt0185014,tt5516154
nm0003082	Bailey Chase	\N	\N	actor,producer,archive_footage	tt33484648,tt1836037,tt0830900
nm0003083	Richard Potter	\N	\N	producer,production_manager,writer	tt0114194,tt0119675,tt0104558,tt0117571
nm0003084	Gregor Narholz	1971	\N	composer,music_department,soundtrack	tt0345950,tt0362225,tt0124298,tt0221465
nm0003085	Alan Roberts	\N	2016	editor,producer,director	tt0147479,tt0226429,tt0076944,tt4746512
nm0003086	Kristen Couchot	\N	\N	costume_designer,costume_department,actress	tt0180093,tt0203536,tt0309986,tt0219756
nm0003087	Simon Downes	\N	\N	assistant_director,miscellaneous,actor	tt3480822,tt0120738,tt2120120,tt1509767
nm0003088	Chris Noonan	1952	\N	writer,director,producer	tt0112431,tt0081559,tt0482546,tt0140770
nm0003089	Carlos Ebert	1946	\N	cinematographer,director,camera_department	tt0144782
nm0003090	Graham Shirley	\N	\N	miscellaneous,director,producer	tt0219981,tt0219639,tt0220850,tt0219867
nm0003091	Molly Allen	\N	\N	producer,location_management,production_manager	tt0427309,tt0371746,tt6968614,tt0814314
nm0003092	Michael Gaspar	\N	\N	special_effects,stunts,miscellaneous	tt7638348,tt12361974,tt0993840,tt0478970
nm0003093	Stuart McDonald	1970	\N	sound_department,music_department	tt0257548,tt8667748,tt1884390,tt1628033
nm0003094	Martin Faltýn	1957	\N	actor,assistant_director,director	tt0150550,tt0498353,tt0104643,tt0086163
nm0003095	Michael Yaroshevsky	1969	\N	director,cinematographer,producer	tt1322293,tt0330765,tt31849406,tt6969764
nm0003096	Jennifer Harris	1992	\N	actress	tt0211423,tt0220114,tt0377263
nm0003097	Jonathan Price	\N	\N	composer,music_department,producer	tt0298814,tt0219965,tt0313542,tt0146336
nm0003098	Susanne Schiebler	1979	\N	editor,visual_effects,editorial_department	tt0119849,tt3543084,tt17067140,tt28662681
nm0003099	Jan Richter-Friis	\N	\N	cinematographer,camera_department,miscellaneous	tt1074206,tt0112453,tt1851040,tt2647544
nm0003100	Guy Bodart	\N	\N	director,producer,writer	tt0206555,tt0219641,tt32453362,tt0220139
nm0003101	Tom Brown	\N	\N	production_designer,art_director,art_department	tt15239678,tt1160419,tt0120815,tt1340800
nm0003102	Job ter Burg	\N	\N	editor,editorial_department,actor	tt26736843,tt3716530,tt11858890,tt1895315
nm0003103	Nicolas Debot	1973	\N	director,producer,actor	tt15290430,tt3708326,tt26627462,tt26627341
nm0003104	Fabian	1943	\N	actor,producer,soundtrack	tt0056197,tt0061075,tt0061014,tt0062365
nm0003105	Richard Gironi	1976	\N	assistant_director,miscellaneous,actor	tt0190374,tt0134033,tt0283027,tt0221928
nm0003106	Lin MacDonald	\N	\N	set_decorator,art_department	tt1104001,tt1964418,tt0343818,tt0298814
nm0003107	Bethan Mowat	\N	\N	assistant_director,executive	tt1877832,tt0945513,tt1411250,tt0366627
nm0003108	B. Scott O'Malley	1970	\N	script_department,writer,director	tt0118739,tt1033468,tt0382579,tt0107216
nm0003109	Edward Peghin	1966	\N	producer,director,writer	tt0406402,tt0118956,tt0220047,tt0120901
nm0003110	Cesar Romero	1907	1994	actor,soundtrack,archive_footage	tt0060153,tt0054135,tt0047647,tt0057007
nm0003111	Isabelle Stamper	1969	\N	set_decorator,art_department,art_director	tt0315323,tt0183808,tt0143261,tt0163608
nm0003112	Roy Unger	\N	\N	camera_department,cinematographer,assistant_director	tt0259711,tt0114558,tt0164181,tt0120338
nm0003113	Derth Adams	\N	\N	camera_department,cinematographer,editorial_department	tt0437741,tt2930446,tt1697792,tt7939778
nm0003114	Emmy Smith	\N	\N	actress,producer	tt0113097,tt0401448,tt0332286,tt0272950
nm0003115	Christine Lakin	1979	\N	director,actress,choreographer	tt2712740,tt8510382,tt0182576,tt6546758
nm0003116	Anthony C. Ferrante	\N	\N	director,writer,producer	tt2724064,tt14292086,tt26736344,tt0385560
nm0003117	Ken Wheat	1950	\N	writer,producer,director	tt0134847,tt1411250,tt0296572,tt0096769
nm0003118	Riccardo Bertoni	1933	2003	casting_department,actor,casting_director	tt0120685,tt0112864,tt0246894,tt0250797
nm0003119	Steve Cubine	\N	\N	producer,writer,production_manager	tt3261668,tt0407095,tt0204640
nm0003120	Jayson Clute	\N	\N	director,cinematographer,camera_department	tt0120338,tt0144084,tt1091909,tt11671006
nm0003121	David Quinn	\N	\N	actor,producer	tt1159721,tt0091472,tt0190169,tt0261024
nm0003122	Doyle Smith	\N	\N	camera_department,cinematographer,miscellaneous	tt0114114,tt0107819,tt0167194,tt0072975
nm0003123	Dolores Del Río	1904	1983	actress,soundtrack,archive_footage	tt0019305,tt0036577,tt0018318,tt0024025
nm0003124	Pedro de Cordoba	1881	1950	actor,archive_footage	tt0035279,tt0029284,tt0013750,tt0032245
nm0003125	Katrina Elder	\N	\N	production_manager,miscellaneous,actress	tt1745960,tt8749198,tt10838180,tt7653254
nm0003126	Dan Appel	\N	\N	producer,director,art_department	tt12059644,tt5759314,tt2375230,tt7435402
nm0003127	Ken Pisani	\N	\N	producer,writer,director	tt4789496,tt1552113,tt17129114,tt3377500
nm0003128	David Jablin	\N	\N	producer,director,writer	tt0087979,tt0186336,tt0107896,tt0380923
nm0003129	John J. Condne III	\N	\N	producer,actor,editorial_department	tt0270349,tt1285260,tt1577103,tt1377603
nm0003130	Bernie Abramson	1923	2010	camera_department,cinematographer,miscellaneous	tt0094138,tt0074901,tt0366711,tt0337626
nm0003131	Jon Kroll	\N	\N	producer,writer,director	tt13964000,tt0285335,tt0433308,tt0117021
nm0003132	Andre Morgan	\N	\N	producer,actor,miscellaneous	tt0082136,tt0913968,tt0077594
nm0003133	Jean-Christophe Bouvet	1947	\N	actor,writer,assistant_director	tt0422720,tt0804540,tt0295721,tt0183869
nm0003134	Gregory Poppen	1963	\N	writer,producer,director	tt9239382,tt2232446,tt8787698,tt14940048
nm0003135	Victoria Barkoff	\N	\N	actress	tt0120613,tt0425210,tt0190884,tt0347544
nm0003136	Matthew Williams	\N	\N	cinematographer,camera_department,assistant_director	tt8510382,tt5195114,tt1235836,tt1160313
nm0003137	Daniel J. Lester	\N	\N	costume_department,costume_designer	tt1413492,tt1843230,tt1790885,tt0298814
nm0003138	Nicholas Josef von Sternberg	1951	\N	cinematographer,camera_department	tt0077634,tt0109545,tt0077409,tt0087523
nm0003139	Ingo Frenzel	1966	\N	composer,music_department,soundtrack	tt2101473,tt1817209,tt6847874,tt1361825
nm0003140	David Klein	1972	\N	cinematographer,camera_department,actor	tt8111088,tt13668894,tt4943998,tt1796960
nm0003141	Alan Bennett	1934	\N	actor,writer,producer	tt3722070,tt0110428,tt0464049,tt0089838
nm0003142	Peter Menne	1960	\N	production_designer,art_department,art_director	tt0342272,tt1234554,tt0424992,tt0256761
nm0003143	Laura Rosow	\N	\N	editor,editorial_department,actress	tt0115270,tt0102453,tt0110153,tt0383572
nm0003144	Walter Coblenz	1928	2022	miscellaneous,production_manager,producer	tt0074119,tt0119695,tt0082648,tt0069806
nm0003145	Paul Barry	\N	\N	assistant_director,producer,director	tt12593682,tt5463162,tt1684562,tt7888964
nm0003146	Adam Bernardi	1957	\N	editor,editorial_department,producer	tt0093748,tt0104694,tt0091042,tt0093936
nm0003147	Andrew Deskin	\N	\N	production_designer,art_department,art_director	tt0109823,tt0087553,tt0468965,tt0116337
nm0003148	Amy E. Duddleston	\N	\N	editor,editorial_department,miscellaneous	tt28013708,tt10155688,tt5672290,tt0139362
nm0003149	Scott Andrew Hutchins	1976	\N	director,actor,writer	tt0145421,tt0365591,tt0166600,tt0369077
nm0003150	Michael Katleman	1960	\N	producer,director,assistant_director	tt1267295,tt0772193,tt0787490,tt2402207
nm0003151	Melissa Kent	\N	\N	editor,editorial_department,actress	tt19853698,tt0800325,tt1655441,tt0159097
nm0003152	Sean McGinly	\N	\N	writer,director,producer	tt7212992,tt0460810,tt0188256,tt0320668
nm0003153	Randy Moore	1949	2023	art_director,art_department,actor	tt0421715,tt1046173,tt0077651,tt0848228
nm0003154	Juan Carlos Negrete	\N	\N	editor,cinematographer	tt0204621,tt1341720,tt0196480,tt0170608
nm0003155	J. Robinson Wheeler	1970	\N	sound_department,art_department,camera_department	tt3602746,tt0220605,tt0159232,tt0159461
nm0003156	C.J. Young	\N	\N	cinematographer,director,writer	tt0220771,tt0191782,tt0220321
nm0003157	E Kurt Zimmerman	1977	\N	director,writer,producer	tt0213095,tt0212962,tt0216581,tt0216227
nm0003158	Joseph Tartaglia	1968	\N	director,actor,writer	tt0158130,tt1338629
nm0003159	Luciano Fineschi	1925	2006	actor,composer,music_department	tt0146268,tt0138609,tt0153511,tt0054401
nm0003160	Christopher McQuarrie	1968	\N	writer,producer,director	tt0114814,tt4912910,tt1745960,tt9603212
nm0003161	Sara Barrett	1973	\N	actress,producer,soundtrack	tt0413573,tt0169299,tt0094574,tt0816399
nm0003162	Marc Summers	1951	\N	producer,actor,writer	tt5649144,tt0965985,tt1735572,tt4566242
nm0003163	Tucker Gates	\N	\N	director,producer,miscellaneous	tt17491088,tt7203552,tt0386676,tt2188671
nm0003164	John Brownlow	\N	\N	writer,producer,director	tt0185055,tt14484760,tt0487947,tt1272881
nm0003165	Corrado Farina	1939	2016	director,writer,actor	tt0067178,tt0069753,tt35447619,tt35447605
nm0003166	Kevin Williams	\N	\N	director,writer,producer	tt0172182,tt8316992,tt8316840
nm0003167	Jace Alexander	1964	\N	director,producer,actor	tt0095082,tt1132290,tt0112697,tt0092493
nm0003168	Jay Fortune	1955	\N	camera_department	tt1483013,tt1234721,tt1291150,tt0137494
nm0003169	Jordan Foster	1964	\N	actor	tt0204582,tt0057731,tt0112628,tt0123238
nm0003170	Georg Haentzschel	1907	1992	composer,music_department,actor	tt0028973,tt0033345,tt0052244,tt0312475
nm0003171	Peter Wunstorf	1959	\N	cinematographer,camera_department,director	tt3606888,tt1637727,tt0388795,tt7945440
nm0003172	Arron Wayne Cull	\N	\N	actor	tt0088580,tt1822469,tt0907831,tt0094511
nm0003173	Jonathan Block	\N	\N	visual_effects,animation_department,miscellaneous	tt0343818,tt0319262,tt2103281,tt0407304
nm0003174	Darren Brisker	\N	\N	sound_department	tt0298814,tt5758778,tt4500922,tt0253556
nm0003175	Bob Greene	\N	\N	camera_department	tt0164212,tt0079817,tt0117496,tt0499603
nm0003176	Michel Parry	1947	2014	writer,director,assistant_director	tt0094512,tt0086610,tt2315368,tt0076853
nm0003177	Maxime Laboy	1963	\N	editorial_department,sound_department	tt0113872,tt0221599,tt0221017,tt0202835
nm0003178	Andy Picheta	\N	\N	location_management,producer,production_manager	tt0308213,tt0159876,tt0066684,tt11958610
nm0003179	Jon Kull	\N	\N	music_department,composer,producer	tt0343818,tt0499549,tt3850590,tt3183660
nm0003180	David S. Cass Sr.	1942	2020	actor,stunts,director	tt0096244,tt0084827,tt2195666,tt0103003
nm0003181	Thomas G. Philpott	\N	\N	producer,editorial_department,miscellaneous	tt0158671,tt0338159,tt0221297,tt0138581
nm0003182	Athena Massey	\N	\N	actress,producer,soundtrack	tt0098904,tt0112178,tt0117218,tt0295203
nm0003183	Richard Sharkey	\N	\N	producer,location_management,production_manager	tt2189461,tt0374463,tt11198330,tt5743796
nm0003184	Pat Sito	\N	\N	animation_department,art_department,visual_effects	tt0831387,tt2015381,tt0441773,tt0097757
nm0003185	Eric Kaye	1970	\N	composer,music_department,actor	tt3743384,tt4405736,tt2065898,tt0150142
nm0003186	Jordan Alan	1967	\N	director,writer,producer	tt0105562,tt0183113,tt0468534,tt1731702
nm0003187	Ryan Chan	\N	\N	editorial_department,editor,producer	tt18272208,tt17632862,tt0805647,tt32490110
nm0003188	Natasha Gjurokovic	\N	\N	editor,editorial_department	tt13918776,tt7861612,tt6503244,tt4688366
nm0003189	Morgan Lewington	\N	\N	transportation_department,assistant_director,miscellaneous	tt0419843,tt0182587,tt0247419,tt0428390
nm0003190	Mark Neale	\N	\N	editorial_department,editor,visual_effects	tt18259204,tt15765412,tt12048234,tt5180504
nm0003191	Danny Rafic	\N	\N	editor,editorial_department,visual_effects	tt1046173,tt0120667,tt3014866,tt1843866
nm0003192	Sandy Struth	\N	\N	set_decorator	tt0118749,tt0120784,tt1870479,tt0162065
nm0003193	Harry Davenport	1866	1949	actor,director,soundtrack	tt0031381,tt0037059,tt0031455,tt0032484
nm0003194	Bridgett Baron	\N	\N	miscellaneous,actress,transportation_department	tt0091042,tt0120768,tt0324554,tt0259288
nm0003195	John Rogers	\N	\N	production_manager,editor,actor	tt0118799,tt0058182,tt0117609,tt0120613
nm0003196	Ueli Christen	1962	\N	editor,sound_department,assistant_director	tt1063669,tt3522806,tt5760392,tt1692504
nm0003197	Chris Gilmer	\N	\N	miscellaneous,assistant_director,producer	tt0110074,tt0176269,tt0109686,tt0112818
nm0003198	Jerome Bixby	1923	1998	writer,composer	tt0756683,tt0060028,tt0060397,tt0086491
nm0003199	Leon Fromkess	1901	1977	producer,production_manager,miscellaneous	tt0036879,tt0051249,tt0037638,tt0037622
nm0003200	Andrea King	\N	\N	writer,miscellaneous,producer	tt6215212,tt1400516,tt0897394,tt13838492
nm0003201	Tim Sullivan	1958	\N	director,writer,miscellaneous	tt0892318,tt0424095,tt0113448,tt10101702
nm0003202	David G. Russell	\N	\N	music_department,composer,actor	tt13622776,tt12708542,tt0458290,tt9419884
nm0003203	Mel Welles	1924	2005	actor,miscellaneous,director	tt0054033,tt0077778,tt0262177,tt0059215
nm0003204	Ernst Ritter von Theumer	1926	\N	producer,writer,director	tt0087523,tt0091193,tt0256444,tt0055014
nm0003205	Steve Gainer	1962	\N	cinematographer,director,producer	tt0242193,tt0246578,tt0370986,tt1512235
nm0003206	Clay Westervelt	1973	\N	cinematographer,producer,camera_department	tt1453253,tt2898306,tt2276000,tt5178264
nm0003207	Greg C. Jensen Sr.	1945	\N	special_effects,art_department	tt0111257,tt0277296,tt0083929,tt0107050
nm0003208	Alessandro Jacchia	\N	\N	producer,writer,actor	tt0178132,tt1245689,tt0214358,tt1379579
nm0003209	Martin Kunert	1974	\N	producer,writer,director	tt0115813,tt0126253,tt0221741,tt0275130
nm0003210	C. Ernst Harth	1970	\N	actor,producer,production_manager	tt0245674,tt0331632,tt14394620,tt8552934
nm0003211	Joe Hackett	\N	\N	actor,writer,director	tt0120324,tt0115674,tt5941692,tt2139563
nm0003212	Mary Soan	\N	\N	assistant_director,production_manager,miscellaneous	tt0213149,tt0243155,tt0178737,tt0363771
nm0003213	Stephen Lighthill	\N	\N	cinematographer,camera_department,editor	tt0066434,tt0092099,tt0104531,tt0092475
nm0003214	Matthew Wood	1972	\N	sound_department,actor,miscellaneous	tt0121766,tt1650062,tt3748528,tt2527336
nm0003215	Warren Yeager	\N	\N	camera_department,cinematographer,director	tt3118452,tt0189998,tt3528906,tt3563892
nm0003216	Oana Bogdan Miller	\N	\N	art_director,art_department,production_designer	tt12584954,tt0343818,tt1386703,tt0120685
nm0003217	Angelina P. Cameron	1966	2006	make_up_department	tt0120657,tt0343818,tt0298814,tt0289879
nm0003218	Alain Robillard	1962	\N	writer,producer,director	tt4324330,tt0381551,tt0759057,tt6206160
nm0003219	Richard Fife	1966	\N	miscellaneous	tt0164179,tt0164127,tt0257229,tt0395268
nm0003220	David Balfour	\N	\N	art_department,miscellaneous	tt2049403,tt0970179,tt0117039,tt1677720
nm0003221	Georg Söring	1970	\N	editor,script_department,director	tt0222490,tt0496325,tt0224051,tt0223613
nm0003222	Cheryl Anderson	\N	\N	actress,miscellaneous	tt0098536,tt0814335,tt0087429,tt0086730
nm0003223	Cheryl Anderson	\N	\N	actress	tt0053534
nm0003224	Stanley Andrews	1891	1969	actor,archive_footage	tt0039776,tt0044091,tt0032651,tt0032281
nm0003225	Ed Begley	1901	1970	actor,soundtrack,archive_footage	tt0050083,tt0056541,tt0061747,tt0061405
nm0003226	Kenji Mizoguchi	1898	1956	director,writer,assistant_director	tt0046478,tt0045112,tt0047445,tt0046851
nm0003227	Vicente Sempere	\N	\N	production_manager,producer,actor	tt0038725,tt0065570,tt0059698,tt0042361
nm0003228	Kelli-Michelle Evans	\N	\N	miscellaneous,location_management	tt0122151,tt0158622,tt0227005,tt0141907
nm0003229	Roger Cardinal	\N	2017	director,writer,miscellaneous	tt0097818,tt0244500,tt0396514,tt0244403
nm0003230	Edward R. Abroms	\N	\N	editor,editorial_department,producer	tt6394324,tt3186162,tt1567432,tt0475355
nm0003231	Larry Bock	\N	\N	editor,editorial_department,actor	tt0096928,tt0089880,tt0090887,tt0204946
nm0003232	Michael S. Bolton	\N	\N	production_designer,art_director,actor	tt0165929,tt0375210,tt0120901,tt0239948
nm0003233	Jaymes Hinkle	1953	\N	production_designer,art_department,art_director	tt0095016,tt0093409,tt0120458,tt0090305
nm0003234	Wendi Lampassi	\N	\N	assistant_director,producer,production_manager	tt0329774,tt0155776,tt0456554,tt0251736
nm0003235	Julian Keith Loren	1969	\N	director	tt0221400
nm0003236	Peter Rogness	\N	\N	art_director,art_department,production_designer	tt0264464,tt0445922,tt0297884,tt0477302
nm0003237	Kate Sanford	\N	\N	editor,editorial_department,sound_department	tt5788792,tt0306414,tt1279972,tt0979432
nm0003238	Amy Beth Silver	\N	\N	production_designer,set_decorator,art_department	tt30253473,tt22408160,tt9606374,tt0119237
nm0003239	Edgar Soberón Torchia	1951	\N	writer,actor,producer	tt7975040,tt22044952,tt1581322,tt0092957
nm0003241	Heli Finkenzeller	1911	1991	actress,soundtrack	tt0122275,tt0049183,tt0031763,tt0030721
nm0003242	Jacqueline L'Eveque	\N	\N	writer,producer	tt0190073,tt0189997
nm0008197	Abdelmalek Kadi	\N	\N	actor	tt0262826,tt0933008,tt0422015,tt1669798
nm0003243	Jack C. Thomas	\N	\N	writer,producer,miscellaneous	tt1710308,tt18274176,tt3010520,tt10687134
nm0003244	Jordi Mollà	1968	\N	actor,writer,director	tt1411250,tt0172156,tt3014866,tt0221027
nm0003245	Sterling Wolfe	1964	2019	actor,miscellaneous,archive_footage	tt0824747,tt0287659,tt0163246,tt0138089
nm0003246	Lisa Cangelosi	1968	\N	actress	tt0219075,tt0126943,tt0109694,tt0114419
nm0003247	Sherry Greenberg	\N	\N	producer,miscellaneous,production_manager	tt0304951,tt0187761,tt0260871,tt0206742
nm0003248	Fritz Rasp	1891	1976	actor,archive_footage	tt0017136,tt0021818,tt0024967,tt0026645
nm0003249	Kristofor Brown	\N	\N	producer,miscellaneous,writer	tt0105950,tt0273028,tt3544772,tt0817538
nm0003250	Michael Bard Bayer	1965	\N	actor,producer,legal	tt0103524,tt0112894,tt0169619,tt0162999
nm0003251	Steven P. Saeta	\N	\N	assistant_director,production_manager,producer	tt0145487,tt0399201,tt2679042,tt0431197
nm0003252	Jacinta Leong	\N	\N	production_designer,art_director,art_department	tt1392190,tt0203009,tt1343092,tt2316204
nm0003253	Alexandra Hoesdorff	1967	\N	producer,production_manager,actress	tt3594464,tt32828108,tt7279868,tt7284066
nm0003254	Neil Lundell	\N	\N	production_manager,producer,actor	tt1225901,tt0412253,tt0133302,tt0115289
nm0003255	Chris Perry	1970	\N	director,writer,producer	tt1344727,tt0119715,tt13363184,tt0116756
nm0003256	Joshua Pines	\N	\N	visual_effects,editorial_department,director	tt0107290,tt0120201,tt0083658,tt0111280
nm0003257	Kim T. Searow	\N	\N	art_department,art_director,production_designer	tt0499556,tt1241317,tt0945580,tt0762145
nm0003258	Mireille de Tissot	\N	\N	production_manager,producer,miscellaneous	tt0141817,tt0065912,tt0056214,tt0131401
nm0003259	Nils Post	\N	\N	cinematographer,camera_department,producer	tt0108504,tt0803004,tt0140791,tt0382960
nm0003260	Sean Cooney	\N	\N	production_manager,editorial_department,assistant_director	tt3731562,tt0780511,tt1226753,tt0436697
nm0003261	Johnny Kim	1968	\N	actor,producer,miscellaneous	tt0133152,tt0222790,tt0116629,tt0114069
nm0003262	Giovanni Robbiano	1958	\N	writer,script_department,producer	tt0218803,tt0178444,tt0206806,tt0223120
nm0003263	James Bolt	1956	\N	sound_department,producer	tt1682180,tt1446192,tt0319262,tt0133152
nm0003264	Blake B. Jackson	\N	\N	camera_department,cinematographer,producer	tt0120684,tt0109144,tt0112960,tt0116075
nm0003265	Sergio Myers	\N	\N	producer,director,writer	tt2354827,tt4259760,tt1467349,tt2165897
nm0003266	David Legault	1966	\N	visual_effects,editor,editorial_department	tt1535108,tt14371878,tt0417148,tt8404256
nm0003267	Oskar Sima	1896	1969	actor,soundtrack,archive_footage	tt0129927,tt0027683,tt0025389,tt0048441
nm0003268	Giovanni Pedde	\N	\N	writer,director,producer	tt1127859,tt0428052,tt0223075,tt0116621
nm0003269	Buck Deachman	\N	\N	assistant_director,actor	tt0298814,tt0945513,tt13368198,tt0145681
nm0003270	Philip Lewis	\N	\N	assistant_director,production_manager,miscellaneous	tt0101074,tt0053494,tt0098912,tt0068069
nm0003271	Rodney Washington	\N	\N	writer,director,producer	tt5166476,tt0233078,tt0229567,tt1535597
nm0003272	Christian Schäfer	1967	\N	production_designer,art_department,art_director	tt0434409,tt0387131,tt0402022,tt0301357
nm0003273	David R. Casey	\N	\N	camera_department,miscellaneous	tt0096913,tt0118668,tt0118149,tt0469184
nm0003274	Philip Schulz-Deyle	1972	\N	producer,production_manager,miscellaneous	tt3774114,tt0455782,tt1298628,tt0338751
nm0003275	Mark L. Rosen	1947	2012	producer,actor	tt0120185,tt0080354,tt0085318,tt0084749
nm0003276	Ron Ofer	1971	\N	writer,director,producer	tt14670810,tt0223746,tt1978443,tt0214172
nm0003277	Joseph Crehan	1883	1966	actor,archive_footage	tt0028695,tt0036705,tt0029080,tt0027300
nm0003278	Holly Unterberger	\N	\N	script_department,miscellaneous	tt1385867,tt3631112,tt0993846,tt0963966
nm0003279	James McGuire	\N	\N	camera_department	tt0245844,tt1540133,tt2639336,tt0317648
nm0003280	Bert Grund	1920	1992	composer,music_department,actor	tt0044342,tt0045139,tt0350369,tt0158570
nm0003281	Richard Horowitz	1949	2024	composer,music_department,actor	tt0146838,tt0100594,tt0103594,tt6571548
nm0003282	Antonio Adamo	1957	\N	director,cinematographer,writer	tt0326015,tt7355200,tt2131621,tt9170590
nm0003283	Christopher Webb Young	\N	\N	producer,writer,miscellaneous	tt0223137,tt1024444,tt21859886,tt2364827
nm0003284	Jim Fleigner	1967	\N	director,writer,editor	tt0419099,tt0225812,tt0286617
nm0003285	Kerstin Kexel	1964	\N	editor,editorial_department,sound_department	tt0806910,tt0805414,tt0090945,tt0106178
nm0003286	Taylor St. Clair	1969	\N	actress,archive_footage	tt0341350,tt0412930,tt0309583,tt0310351
nm0003287	Greg Loewen	\N	\N	art_department,art_director,production_designer	tt0106179,tt0249326,tt0182587,tt0216930
nm0003288	Ernesto McCausland	1961	2012	director,writer,producer	tt1418902,tt0213324,tt1986831,tt0312542
nm0003289	John Putch	\N	\N	director,writer,producer	tt5047788,tt24822574,tt1407050,tt32752472
nm0003291	W. Scott Wolf	\N	\N	assistant_director,miscellaneous,visual_effects	tt0118928,tt0219965,tt0314353,tt0162222
nm0003292	Kelly Aisenstat	\N	\N	actor	tt0113673
nm0003293	Jason Alderman	\N	\N	actor	tt0091042,tt0091653,tt0091445
nm0003294	Warren Skeels	1975	\N	director,actor,writer	tt13232552,tt7183282
nm0003295	Jeremy M. Gilleece	\N	\N	sound_department,miscellaneous,editor	tt6141334,tt0303103,tt13196552,tt3955652
nm0003296	C. Andrew Nelson	1962	\N	actor,visual_effects,producer	tt0489099,tt0163025,tt0177971,tt0121765
nm0003297	Andy Brown	\N	\N	editorial_department,production_manager,producer	tt1265619,tt0327375,tt2417970,tt0253335
nm0003298	Scott Rosenberg	1963	\N	producer,writer,actor	tt0115639,tt0118880,tt7975244,tt0187078
nm0003299	Marc Shaiman	1959	\N	music_department,composer,actor	tt1825133,tt0427327,tt5028340,tt0158983
nm0003300	Duncan Kennedy	\N	\N	writer	tt0149261,tt1438173,tt0112111,tt7086706
nm0003301	Wolfgang Esenwein	\N	\N	producer,writer	tt1517471,tt0397044,tt0406728,tt0387925
nm0003302	Yasha Aginsky	1944	\N	editor,director,cinematographer	tt0204332,tt1380848,tt0224678,tt0225637
nm0003303	Edward V. Pannozzo	\N	\N	art_department,miscellaneous,special_effects	tt6710474,tt0368891,tt0120685,tt0816692
nm0003304	Andrew Rosen	\N	\N	producer,miscellaneous	tt3901826,tt26426076,tt8602408,tt18327948
nm0003305	Fausto Canel	1939	\N	director,writer,assistant_director	tt0084528,tt0226285,tt0225497,tt0225727
nm0008198	Amine Abdenahime	\N	\N	actor	tt0085248
nm0003306	Jeff Freilich	\N	\N	producer,writer,director	tt2543312,tt6128254,tt3609352,tt0804555
nm0003307	Michael Ambrose	1962	\N	camera_department	tt0418279,tt1270797,tt1843866,tt1408101
nm0003308	Stephen L. Johnson	1949	\N	editor,editorial_department	tt0099462,tt0239463,tt0091587,tt0106644
nm0003309	Steve Schoenberg	\N	\N	editorial_department,writer,editor	tt0109456,tt0118655,tt0107050,tt0104952
nm0003310	Gavin Toomey	1974	\N	visual_effects,director,composer	tt0163978,tt0119081,tt0348150,tt0332452
nm0003311	Beau Borders	\N	\N	sound_department,actor,camera_department	tt10471902,tt4495098,tt12747748,tt0120338
nm0003312	Michael Diersing	1953	\N	art_department,special_effects	tt1160419,tt0119654,tt1270797,tt1219827
nm0003313	Lynne Littman	1941	\N	director,producer,miscellaneous	tt0086429,tt0074987,tt0158672,tt0196603
nm0003314	Tim Atzinger	\N	\N	editor,producer,director	tt0239195,tt0313038,tt0348894,tt27789140
nm0003315	Anders Melander	\N	\N	composer,soundtrack	tt0367027,tt2429292,tt0847183,tt1711522
nm0003316	Serge Morache	1962	\N	make_up_department	tt0119395,tt0120802,tt0092172,tt0157262
nm0003317	Kitarô	1953	\N	music_artist,composer,actor	tt0091474,tt0107096,tt0120164,tt0088126
nm0003318	Howard Duff	1913	1990	actor,director,producer	tt0040636,tt0093640,tt0079417,tt0042953
nm0003319	Viktor Giacobbo	1952	\N	writer,actor,producer	tt0291943,tt0311081,tt0473714,tt2889820
nm0003320	Michael Albala	\N	\N	actor	tt2211129,tt1499658,tt5555260,tt2467372
nm0003321	Scott Mitchell Rosenberg	\N	\N	producer,writer,executive	tt0409847,tt1220203,tt1511491,tt0290966
nm0003322	Jim Geddes	1947	\N	art_department	tt0970416,tt0103502,tt0103442,tt0389564
nm0003323	Zevi Ghivelder	1934	\N	producer,writer	tt0143035,tt0198011,tt0209543,tt0272916
nm0003324	Richard Foreman Jr.	\N	\N	camera_department	tt17505010,tt3397884,tt0780504,tt0477348
nm0003325	Jeff Olm	\N	\N	producer,visual_effects,editorial_department	tt0120338,tt1663202,tt0892769,tt0162222
nm0003326	Josep M. Civit	\N	\N	cinematographer,director,writer	tt7590074,tt1772250,tt6718730,tt17676706
nm0003327	Karen E. Weber	\N	\N	production_designer,art_director,set_decorator	tt0113118,tt0183505,tt0118607,tt18394190
nm0003328	Peter Foldy	\N	\N	producer,writer,director	tt3480822,tt1229238,tt0104864,tt3079380
nm0003329	Craig Holt	\N	\N	script_department,editorial_department,editor	tt0102034,tt0096684,tt2719796,tt0074749
nm0003330	Tia Nolan	\N	\N	editor,editorial_department	tt9419884,tt32221196,tt26047818,tt1632708
nm0003331	Kevin Fennessy	\N	\N	actor,casting_director,casting_department	tt9419056,tt0177971,tt0144117,tt0120176
nm0003332	Julian Richards	1965	\N	director,writer,producer	tt0127500,tt0319728,tt0847527,tt0227325
nm0003333	Michael Kohnhorst	\N	\N	camera_department,cinematographer	tt0106977,tt0095963,tt0094602,tt0164181
nm0003334	Charles Homet	1960	\N	actor	tt0112022,tt0101198,tt0118437,tt0115322
nm0003335	Michele Bock	\N	\N	miscellaneous,production_manager	tt0119094,tt0116629,tt0117381,tt0116250
nm0003336	Jeanine Rohn	1963	\N	producer,assistant_director,production_manager	tt0171804,tt0264235,tt0437745
nm0003337	Karlheinz Böhm	1928	2014	actor,assistant_director,director	tt0054167,tt0049762,tt0048624,tt0056700
nm0003338	Ramiro Gómez	1916	2003	set_decorator,production_designer,art_director	tt0054422,tt0066623,tt0064888,tt0070878
nm0003339	Herbert Marshall	1890	1966	actor,soundtrack,archive_footage	tt0023622,tt0033836,tt0032701,tt0051622
nm0003340	Marcel Jullian	1922	2004	writer,director,producer	tt0216441,tt0060474,tt0253512,tt0056917
nm0003341	Joshua J. Masters	1973	\N	actor,assistant_director,location_management	tt0154901,tt0270197,tt0299075,tt0154908
nm0003342	E. Bennett Walsh	\N	\N	producer,production_manager,miscellaneous	tt0419887,tt0293429,tt1226273,tt1815862
nm0003343	Rob Schmidt	1965	\N	director,camera_department,actor	tt0295700,tt0197384,tt0165461,tt5997452
nm0003344	Frank Evans	1917	1973	actor,producer	tt0056742,tt0052463,tt0056768,tt0052473
nm0003345	Nicolas Mize	\N	\N	actor	tt0103786,tt0212671,tt0118437,tt0112112
nm0003346	Benjamin Greenacre	\N	\N	producer,location_management,assistant_director	tt14190592,tt15398980,tt11646832,tt2395427
nm0003347	Stéphane Pereira	\N	\N	editor,music_department,producer	tt0250223,tt7552686,tt13136332,tt0162555
nm0003348	Alexander Rannie	\N	\N	composer,music_department,miscellaneous	tt0006333,tt0100409,tt0371823,tt5830100
nm0003349	Bing Sokolsky	1963	\N	cinematographer,camera_department,producer	tt0117731,tt0120844,tt0246578,tt0114558
nm0003350	Larry A. Cornick	\N	\N	art_department	tt0120685,tt0268695,tt0116225,tt0120179
nm0003351	Declan Quinn	\N	\N	visual_effects	tt0133152,tt0253754,tt0163025
nm0003352	Fima Noveck	1918	2004	miscellaneous,editorial_department,production_manager	tt0113987,tt0095444,tt0106309,tt0108045
nm0003353	Marni Lustig	1972	\N	actress,director,casting_department	tt16043770,tt0263265,tt0220331,tt0168449
nm0003354	Judy Norton	\N	\N	actress,writer,director	tt0068149,tt0118480,tt5755622,tt0199356
nm0003355	Christopher Monger	1950	\N	director,writer,producer	tt0112966,tt0227980,tt1278469,tt2020082
nm0003356	Patrick Granier	1959	\N	actor,writer,director	tt0163716,tt0091525,tt0088462,tt0165425
nm0003357	Craig Henighan	\N	\N	sound_department,visual_effects,assistant_director	tt6155172,tt0414993,tt4574334,tt0318627
nm0003358	Ted Haimes	\N	\N	producer,cinematographer,director	tt10181606,tt5823482,tt6628850,tt5278426
nm0003359	Basil Grillo	\N	\N	assistant_director,production_manager,producer	tt7991608,tt2283362,tt0357413,tt0265086
nm0003360	Tony Dawe	1940	\N	sound_department	tt0086190,tt0293508,tt0092965,tt0097576
nm0003361	Beer Boneschansker	\N	\N	director,writer,assistant_director	tt0148970,tt0228589,tt0228464,tt0125874
nm0003362	Mark Tobey	\N	\N	producer,production_manager,assistant_director	tt0475784,tt10466872,tt0348914,tt0115685
nm0003363	Marc Vanocur	\N	\N	composer,editorial_department,sound_department	tt0116922,tt5861882,tt3956336,tt7444626
nm0003364	Gayle M. Grech	1961	\N	editorial_department,editor,animation_department	tt0235917,tt0218791,tt0364774,tt0172052
nm0003365	Marc Pitre	\N	\N	producer,miscellaneous,sound_department	tt0382992,tt0228856,tt0859163,tt0329774
nm0003366	Steve R. Moore	\N	\N	visual_effects,editorial_department,editor	tt0113855,tt1060277,tt0133152,tt0120903
nm0003367	Peter Bernstein	1951	\N	composer,music_department,actor	tt0087332,tt2463208,tt0120891,tt0118747
nm0003368	David Clayton Miller	\N	\N	miscellaneous,producer,actor	tt0156460,tt0092494,tt0102057,tt0103939
nm0003369	Karin Howard	\N	\N	writer,director,location_management	tt0100240,tt0105593,tt0133966,tt0110647
nm0003370	Till Fuhrmann	1970	\N	costume_designer,costume_department,art_department	tt2126235,tt0318081,tt0115243,tt0269356
nm0003371	Wedigo von Schultzendorff	1945	\N	cinematographer,camera_department,producer	tt1188729,tt0139809,tt9685782,tt0278823
nm0003372	Chris Seager	1949	\N	cinematographer,camera_department	tt4604612,tt5114840,tt0489974,tt0944947
nm0003373	James P. Hogan	1890	1943	director,writer,assistant_director	tt0025391,tt0029952,tt0017001,tt0016551
nm0003374	Dominik Scherrer	1967	\N	composer,music_department,sound_department	tt7985576,tt3877200,tt2183641,tt0475380
nm0003375	Jorge Bustos	\N	\N	editor,editorial_department,sound_department	tt0044416,tt0038414,tt0048045,tt0132064
nm0003376	Michael A. Brown	1942	\N	cinematographer,camera_department	tt0119434,tt0492947,tt0068537,tt1715802
nm0003377	Harry Langdon	1884	1944	actor,writer,director	tt0016971,tt0017483,tt0034871,tt0017437
nm0003378	Tony Coldwell	\N	\N	cinematographer,camera_department,director	tt2310212,tt0310455,tt1652216,tt1477131
nm0003379	John P. Fleenor	\N	\N	camera_department,cinematographer,miscellaneous	tt0317919,tt0257076,tt1727776,tt0481369
nm0003380	Douglas Yellin	\N	\N	producer,miscellaneous,director	tt0106950,tt0100405,tt0137342,tt0138928
nm0003381	Miguel Ángel Rivas	\N	2003	assistant_director,writer,director	tt0079544,tt0081289,tt0077263,tt0255379
nm0003382	Alain Mayor	1947	\N	producer,production_manager,writer	tt0114622,tt1874574,tt2363315,tt0114303
nm0003383	John Serpe	1971	\N	writer,director,actor	tt4910718,tt9629470,tt0427449,tt0229400
nm0003384	Peter Breiner	1957	\N	music_department,composer,soundtrack	tt2980648,tt0270846,tt10160804,tt0252028
nm0003385	John C. Joseph	\N	\N	producer,director,editor	tt0076105,tt2105407,tt0094574,tt0103412
nm0003386	Mark Doering-Powell	\N	\N	cinematographer,camera_department,visual_effects	tt0460637,tt2090440,tt2698984,tt0412080
nm0003387	Deb Fink	\N	\N	actress,miscellaneous,producer	tt25756324
nm0003388	Brian Pearson	1967	\N	cinematographer,camera_department,actor	tt11252254,tt7949218,tt2106361,tt0480249
nm0003389	Kandice King	\N	\N	producer,writer,director	tt0207036,tt7984380,tt4737992,tt0098100
nm0003390	José Luis Sánchez	\N	\N	cinematographer,director	tt0169867,tt0205265,tt0157284,tt0170063
nm0003391	Susan Antonelli	\N	\N	costume_department,costume_designer	tt0368891,tt0465234,tt0758774,tt0319061
nm0003392	George S. Clinton	1947	\N	composer,music_department,soundtrack	tt0113855,tt0118655,tt0145660,tt0295178
nm0003393	Larissa LaRenne	\N	\N	actress,writer,director	tt10618286,tt0147757,tt0429455,tt0108757
nm0003394	Lawrence Sher	\N	\N	cinematographer,director,producer	tt7286456,tt1119646,tt0333766,tt11315808
nm0003395	John Beal	\N	\N	music_department,composer,miscellaneous	tt0075500,tt0082427,tt0077093,tt0083400
nm0003396	Dennis Burke	\N	\N	composer,sound_department,music_department	tt1918639,tt0294802,tt1235419,tt1020845
nm0003397	Angus Bickerton	1963	\N	visual_effects,assistant_director,special_effects	tt0120738,tt0382625,tt0808151,tt2049403
nm0003398	Loni Peristere	\N	\N	director,producer,visual_effects	tt11198330,tt5743796,tt2017109,tt1844624
nm0003399	Vincent Arnardi	1957	\N	sound_department,miscellaneous	tt0211915,tt0112682,tt1149361,tt0152930
nm0003400	Joram Lürsen	1963	\N	director,producer,writer	tt0382095,tt4610378,tt1609122,tt0468644
nm0003401	Marko A. Costanzo	1959	\N	sound_department,actor,editorial_department	tt6048922,tt0944835,tt0454876,tt1403865
nm0003402	Karen Hazzard	1938	2015	casting_director,casting_department,actress	tt0085334,tt0094082,tt0081383,tt0080768
nm0003403	Timothy Bond	1942	\N	director,writer,animation_department	tt0092357,tt0098931,tt0088476,tt0127276
nm0003404	Edgar Burcksen	1947	2024	editor,editorial_department,visual_effects	tt0099810,tt0103586,tt0099423,tt4052882
nm0003405	Nathan Anderson	\N	\N	actor,editor,sound_department	tt11231226,tt8861802,tt0804503,tt0379060
nm0003406	Zane Weiner	\N	\N	production_manager,producer,miscellaneous	tt0167260,tt1571234,tt1170358,tt1598828
nm0003407	Thomas Mann	1875	1955	writer,archive_footage,archive_sound	tt0067445,tt0104881,tt0045980,tt0013901
nm0003408	Chris Marker	1921	2012	writer,director,editor	tt0114746,tt0084628,tt0054799,tt0065453
nm0003409	Alain Zouvi	1959	\N	actor,miscellaneous	tt0149407,tt1178524,tt0229898,tt3480144
nm0003410	Howard Heard	\N	\N	editor,editorial_department,production_manager	tt3153582,tt1131732,tt0086200,tt0095360
nm0003411	Ronny Hallin	1938	\N	producer,casting_department,miscellaneous	tt0350028,tt0101912,tt0074016,tt0109758
nm0003412	Declan Recks	\N	\N	director,producer,actor	tt27827440,tt10653008,tt15193160,tt1020950
nm0003413	Peter Benison	\N	\N	cinematographer,camera_department,miscellaneous	tt0185183,tt0299658,tt0100926,tt0384537
nm0003414	Daemion Barry	1960	2004	composer	tt0157224,tt0112161,tt0283675,tt0144796
nm0003415	Houshang Baharlou	\N	\N	cinematographer,art_director	tt0318069,tt0078893,tt0319314,tt0078299
nm0003416	Denis Behnke	1972	\N	visual_effects,actor,special_effects	tt6506264,tt1139328,tt5723272,tt2101473
nm0003417	David Arnold	1962	\N	music_department,composer,actor	tt0381061,tt0120685,tt0116629,tt0143145
nm0003418	Rob Cohen	1949	\N	producer,director,actor	tt0116136,tt0106770,tt0382992,tt0093894
nm0003419	Dayyan Eng	1975	\N	producer,director,writer	tt0311041,tt3308358,tt0280538,tt1032763
nm0003420	George Grossmith	1874	1935	actor,writer,soundtrack	tt0024757,tt0024064,tt0021561,tt0023455
nm0003421	George Grossmith	1847	1912	writer,soundtrack	tt0268695,tt0497975,tt0037465,tt0077004
nm0003422	Louis King	1898	1962	director,miscellaneous	tt0022637,tt0046891,tt0027349,tt0030875
nm0003423	Peter MacDonald	1939	\N	camera_department,assistant_director,director	tt0095956,tt0126388,tt7710360,tt0117420
nm0003424	Hank Mann	1887	1971	actor,director,writer	tt0027977,tt0032553,tt0021749,tt0403878
nm0003425	Asta Nielsen	1881	1972	actress,producer,director	tt0012249,tt0001892,tt0132207,tt0015842
nm0003426	Joseph Baldwin	1970	\N	actor,writer,producer	tt0229734,tt0139388,tt0190174,tt0423030
nm0003427	Bubba Baker	1957	\N	actor,camera_department	tt0172156,tt0340855,tt0113010,tt0108006
nm0003428	Sean Higgins	\N	\N	camera_department,miscellaneous,location_management	tt1840309,tt14856980,tt1270797,tt1650062
nm0003430	Jim O'Grady	\N	\N	producer,production_manager,art_director	tt0486051,tt0452625,tt11947264,tt1626146
nm0003431	Dan Mossberg	\N	\N	sound_department,composer	tt0221197,tt0120191,tt0220034,tt0221823
nm0003432	David Stump	\N	\N	visual_effects,camera_department,cinematographer	tt0120903,tt0149261,tt0405336,tt0111143
nm0003433	Carl Theodor Dreyer	1889	1968	writer,director,editor	tt0058138,tt0048452,tt0023649,tt0019254
nm0003434	Susan A. Cabral	\N	\N	make_up_department,actress	tt0120789,tt0102803,tt0177971,tt0114069
nm0003435	Juan Villarreal	\N	\N	actor	tt0244739,tt0201567
nm0003436	Simone de Beauvoir	1908	1986	writer,actress,archive_footage	tt6888894,tt0151316,tt0112323,tt15197014
nm0003437	Judy Cairo	\N	\N	producer,executive	tt1263670,tt6744044,tt1435513,tt2205697
nm0003438	John Woodward	\N	\N	director,writer,editor	tt0232957,tt0352297,tt0099681
nm0003439	John M. Woodward	\N	\N	transportation_department,stunts,actor	tt0110478,tt0118883,tt0300556,tt0329717
nm0003440	John R. Woodward	1951	\N	assistant_director,location_management,producer	tt0343818,tt0093894,tt1656190,tt0183523
nm0003441	Michele Conroy	1966	\N	editor,editorial_department	tt1921064,tt1017460,tt4687108,tt2023587
nm0003442	Matthias Grunsky	\N	\N	cinematographer,camera_department,director	tt0112471,tt5936578,tt11678452,tt2007360
nm0003443	Bill Tarling	1960	\N	actor	tt0120901,tt0375210,tt0144146,tt0100430
nm0003444	Maciek Malish	1962	2015	sound_department,editor,producer	tt0411008,tt0120201,tt1853739,tt1082886
nm0003445	Steven Begg	\N	\N	visual_effects,special_effects,cinematographer	tt19854762,tt0381061,tt1074638,tt2802144
nm0003446	Jonathan Brown	1970	\N	director,cinematographer,producer	tt14449470,tt3205802,tt9165830,tt0356680
nm0003447	Whitney Ransick	\N	\N	director,producer,writer	tt0109982,tt0138801,tt0147070,tt0107763
nm0003448	Renee Davenport	\N	\N	art_department,costume_designer,production_designer	tt0126886,tt0113092,tt0315323,tt0122161
nm0003449	Cheryl Young	\N	\N	script_department,miscellaneous	tt0115243,tt0250750,tt0135727,tt0172754
nm0003450	Gianni Fantoni	1967	\N	actor	tt0417930,tt0446239,tt1267498,tt0175575
nm0003451	Robyn Knoll	\N	\N	casting_director,producer,casting_department	tt0129028,tt0165107,tt0176700,tt0098577
nm0003452	Richard Crudo	\N	\N	cinematographer,director,producer	tt0163651,tt0231775,tt1661382,tt18351120
nm0003453	Rick Millikan	\N	\N	casting_director,casting_department,actor	tt0106179,tt0115341,tt0460627,tt0805666
nm0003454	Gary Hutchings	\N	\N	camera_department	tt0120738,tt1631867,tt1562871,tt0830515
nm0003455	Michael Wale	\N	\N	cinematographer,camera_department,director	tt1954347,tt3501584,tt0411061,tt0279600
nm0003456	Derek Vaughn	\N	\N	editor,editorial_department,writer	tt0318374,tt0245341,tt2283358,tt2339852
nm0003457	John Henry Canavan	\N	\N	actor	tt5028002,tt0804503,tt0413573,tt0210628
nm0003458	Steven R. Monroe	1964	\N	director,camera_department,producer	tt1242432,tt2537176,tt0395585,tt3800796
nm0003459	Stephen Adrianson	\N	\N	editor,production_manager,editorial_department	tt0109890,tt0138089,tt0233656,tt0208037
nm0003460	Oscar Beuselinck	1969	\N	assistant_director,producer,miscellaneous	tt0203119,tt0109831,tt0349683,tt0866439
nm0003461	Max Biscoe	\N	\N	production_designer,art_director,art_department	tt1130884,tt0114194,tt0120241,tt12731980
nm0003462	George Blumetti	\N	\N	director,writer,producer	tt1398918,tt0233900,tt2771990,tt0929241
nm0003463	Gregg Cannizzaro	\N	\N	cinematographer,director,camera_department	tt0119996,tt0970936,tt6423920,tt0449063
nm0003464	Bernt Amadeus Capra	1941	\N	production_designer,director,art_department	tt0088258,tt0319969,tt0108550,tt0438315
nm0003465	Cristian Olcina	1977	\N	producer,writer,editor	tt0231194,tt0233992,tt0235371,tt0233506
nm0003466	Susan Drennan Mcgrath	\N	\N	assistant_director,casting_department,camera_department	tt0387131,tt0448134,tt0288045,tt0323033
nm0003467	Pamela Dresser	\N	\N	director,miscellaneous,producer	tt0289727,tt1669571,tt0108174,tt0212643
nm0003468	Marc Fisichella	\N	\N	production_designer,art_director,art_department	tt0166485,tt1790864,tt0111282,tt1860357
nm0003469	Michael Ferris Gibson	\N	\N	producer,director,writer	tt0202695,tt0443527,tt0377029,tt1174042
nm0003470	Jack Haigis	\N	\N	editor,sound_department,editorial_department	tt0289848,tt0096087,tt0138353,tt0328547
nm0003471	Richard Wagner	1813	1883	music_department,writer,composer	tt0409459,tt0458339,tt0080455,tt10548174
nm0003472	Todd Hooker	\N	\N	editor,editorial_department,miscellaneous	tt0228977,tt0353248,tt0115727,tt1298716
nm0003473	Alexander Jovy	1971	\N	director,producer,actor	tt0221563,tt1583948,tt32275453,tt0188667
nm0003474	Troy Miller	\N	\N	producer,director,writer	tt0863046,tt0367279,tt0141109,tt2089826
nm0003475	Saul Pincus	\N	\N	editorial_department,editor,visual_effects	tt1434446,tt4687108,tt0231571,tt4878326
nm0003476	Miranda K. Spigener	\N	\N	writer,producer,director	tt7752842,tt10549038,tt21053184
nm0003477	Michael Lennick	1952	2014	writer,director,visual_effects	tt0086541,tt0085407,tt1474476,tt1391814
nm0003478	David Blass	1968	\N	production_designer,art_director,art_department	tt1489428,tt8806524,tt1190634,tt3489184
nm0003479	Steve Bloom	\N	\N	editor,editorial_department,miscellaneous	tt2380307,tt8097030,tt1453405,tt1217209
nm0003480	Paolo Boni	\N	\N	assistant_director	tt0168345,tt0202072,tt0286996
nm0003481	Sarah Campbell	\N	\N	assistant_director,miscellaneous	tt1017460,tt2039338,tt5397194,tt7315484
nm0003482	Nash Edgerton	1973	\N	director,stunts,actor	tt7472896,tt3721964,tt1085507,tt1029161
nm0003483	Sarah Flack	\N	\N	editor,editorial_department,miscellaneous	tt0335266,tt0165854,tt22041854,tt0425598
nm0003484	Tony Grocki	1958	\N	editor,editorial_department,producer	tt4578000,tt0106519,tt0107034,tt0100150
nm0003485	Dan Hubp	\N	\N	art_department,editor,editorial_department	tt1105290,tt1853559,tt0227842,tt0477435
nm0003486	Tom Oseransky	\N	\N	miscellaneous,assistant_director	tt0115624,tt0115285,tt0158423,tt0192766
nm0003487	Lon Takiguchi	1973	\N	assistant_director,producer,production_manager	tt35825699,tt9873892,tt0314353,tt1636826
nm0003488	Jason Weil	1963	\N	art_department,art_director,production_designer	tt0181689,tt0119094,tt0133152,tt0134273
nm0003489	Billy Martin	\N	\N	composer,music_department,soundtrack	tt0330793,tt0168786,tt2315596,tt0435528
nm0003490	Ludwig Berger	1892	1969	director,writer,cinematographer	tt0033152,tt0022263,tt0021261,tt0018592
nm0008199	Antar Abderhamin	\N	\N	camera_department	tt0234878
nm0003491	Darren Kaliciak	\N	\N	script_department,miscellaneous,producer	tt0313911,tt0350261,tt0243069,tt0796264
nm0003492	Heinrich Schafmeister	1957	\N	actor,archive_footage	tt0128133,tt0838244,tt0119451,tt0107330
nm0003493	Steve Tom	1953	\N	actor	tt1936532,tt2096672,tt1556078,tt0369179
nm0003494	Doug Olear	1972	\N	actor,producer,director	tt0306414,tt0386792,tt0098844,tt1196946
nm0003495	Antoni Padrós	1937	\N	writer,director,editor	tt0246925,tt0205231,tt0170645,tt0164808
nm0003496	Richard Jenkins	\N	\N	assistant_director,miscellaneous,location_management	tt0075925,tt0087799,tt0075232,tt0077921
nm0003497	Aaron Lipstadt	\N	\N	producer,director,writer	tt0088925,tt0082340,tt0083557,tt0412175
nm0003498	James Seidelman	\N	\N	editorial_department,art_department	tt0087332,tt0099582,tt0101764,tt0095655
nm0003499	Victor Brooks	1918	2000	actor,archive_footage	tt0058150,tt0063893,tt0055894,tt0247115
nm0003500	Neil Kaplan	\N	\N	producer,writer	tt0328503,tt0906326,tt0139388,tt0216815
nm0003501	Jamie Gillis	1943	2010	actor,director,camera_department	tt0075018,tt0125727,tt0083007,tt0126098
nm0003502	Stephen Graziano	\N	\N	composer,music_department,writer	tt0144964,tt2327553,tt2830210,tt6610158
nm0003503	Ross A. Maehl	1938	\N	camera_department,cinematographer	tt0075148,tt0087538,tt0086200,tt0097647
nm0003504	Alka Yagnik	1966	\N	music_artist,music_department,actress	tt3148502,tt0172684,tt0169102,tt0234000
nm0003505	Laini Thompson	\N	\N	make_up_department,actress,producer	tt0119654,tt0106697,tt0119731,tt0112442
nm0003506	James Mangold	1963	\N	producer,director,writer	tt3315342,tt11563598,tt1950186,tt0358273
nm0003507	Pamela Choules	\N	\N	editorial_department,visual_effects,miscellaneous	tt1318514,tt0800080,tt0377062,tt0120667
nm0003508	Michel Blanc	1952	2024	actor,writer,director	tt0109942,tt0097904,tt1781843,tt0087681
nm0003509	Daniela Akerblom	1975	\N	actress,miscellaneous,assistant_director	tt6097798,tt16030542,tt0118346,tt0101092
nm0003510	Melanie J. Elin	\N	\N	production_manager,producer,assistant_director	tt8679236,tt5669272,tt3530232,tt1325113
nm0003511	Tommy Dorsett	\N	\N	visual_effects,editorial_department,editor	tt0346156,tt0120903,tt0120844,tt0115857
nm0003512	Mark Putnam	\N	\N	cinematographer,camera_department,actor	tt3774802,tt2396721,tt1757746,tt0117912
nm0003513	Keith Manning	\N	\N	camera_department,visual_effects	tt0434409,tt1631867,tt0816711,tt2802144
nm0003514	Gareth Wingrove	1976	\N	special_effects	tt4154796,tt8364368,tt2431438,tt10872600
nm0003515	Ralph Winter	\N	\N	producer,production_manager,director	tt2887954,tt0290334,tt4776998,tt2261227
nm0003516	Paolo G. Venturi	\N	\N	art_department,art_director,production_designer	tt11866324,tt3829266,tt0216216,tt0376994
nm0003517	Jean Beaudoin	\N	\N	editor,editorial_department,producer	tt0112335,tt0119674,tt2277932,tt0240278
nm0003518	Richard Comeau	1960	\N	editor,editorial_department,sound_department	tt1194238,tt4412528,tt0429573,tt3106846
nm0003519	Anna Pinnock	1961	\N	set_decorator,art_department	tt2278388,tt6723592,tt0454876,tt3183660
nm0003521	Greg Tennant	\N	\N	editorial_department,camera_department,editor	tt0220394,tt0274812,tt0112867,tt1002965
nm0003522	Laura Wood Fawcett	\N	\N	assistant_director,location_management	tt0113481,tt0210070,tt0113965,tt0115320
nm0003523	Toby Yates	1962	2023	editor,editorial_department,producer	tt0805570,tt1185836,tt1763264,tt0460873
nm0003524	Eric Neal Young	\N	\N	producer,writer,director	tt11395060,tt14361330,tt16431882,tt0222849
nm0003525	Jay Cannold	\N	\N	producer,miscellaneous,production_manager	tt0162677,tt0107034,tt0133122,tt0118734
nm0003526	Peter Golub	1952	\N	composer,music_department,miscellaneous	tt0427309,tt0978759,tt0257850,tt1273222
nm0003527	Ned Bastille	1953	2019	editor,producer,editorial_department	tt0765476,tt0139699,tt0477051,tt0314498
nm0003528	Raúl Dávalos	\N	2017	editor,editorial_department,producer	tt0285531,tt0106387,tt0090022,tt0104029
nm0003529	Dan Harris	1979	\N	writer,director,producer	tt0348150,tt0290334,tt0373024,tt4843344
nm0003530	Tze S. Hoh	\N	\N	assistant_director,production_manager	tt0137494,tt0166485,tt0205718,tt0198779
nm0003531	Michael Krantz	\N	\N	production_designer,art_director,art_department	tt0119256,tt0251736,tt0120577,tt0243759
nm0003532	Douglas Law	\N	\N	assistant_director,director,actor	tt0381361,tt0103442,tt0160644,tt0787255
nm0003533	Shawn Paper	\N	\N	editor,producer,editorial_department	tt1759761
nm0003534	Peter Pistor	\N	\N	director,producer,writer	tt0109795,tt0206826,tt0202375,tt0420432
nm0003535	Ken Sanzel	\N	\N	producer,writer,director	tt0120008,tt0433309,tt0282695,tt0126016
nm0003536	Joe Talbott	1963	\N	producer,director,writer	tt0161076,tt0148095,tt0350145,tt0368331
nm0003537	Jerry A. Vasilatos	\N	\N	director,producer,editor	tt0134108,tt0286855,tt1330604,tt0911896
nm0003538	Raffaele Verzillo	1969	\N	assistant_director,director,actor	tt2401561,tt1179758,tt4543898,tt0178132
nm0003539	Nikolay P. Cherkasov	1884	1944	actor	tt0033118,tt0332012,tt0035118,tt0034533
nm0003540	Nikolay Cherkasov	1903	1966	actor,archive_footage	tt0029850,tt0037824,tt0051790,tt0027509
nm0003541	Gilles-Marie Tiné	\N	\N	producer,writer	tt1077083,tt0404794,tt0130179,tt0343513
nm0003542	Philippe Rousselot	1945	\N	cinematographer,camera_department,director	tt0110148,tt0105265,tt0319061,tt0094947
nm0003543	Alec Bartsch	1966	\N	visual_effects,animation_department,art_department	tt0346156,tt0183523,tt0253556,tt0164181
nm0003544	Christopher Ball	\N	\N	camera_department,cinematographer,assistant_director	tt7984734,tt1477834,tt0109642,tt1874451
nm0003545	Christopher Ball	\N	\N	producer,miscellaneous,executive	tt0246578,tt0482571,tt0209144,tt0192614
nm0003546	Charles Rosher	1885	1974	cinematographer,camera_department,miscellaneous	tt0018455,tt0039111,tt0042200,tt0024816
nm0003547	Roger Taylor	1949	\N	actor,music_department,composer	tt0080745,tt0203009,tt0119229,tt1727824
nm0003548	Porter Jordan	\N	\N	music_department,composer,soundtrack	tt0066915,tt0066905,tt0069372,tt0074415
nm0003549	Daniel Geller	\N	\N	actor	tt0113826,tt0338616
nm0003550	Asta Nielsen	1897	1975	actress	tt0012337,tt0011173,tt0012159
nm0003551	Stephen Goldblatt	\N	\N	art_department	tt0101371,tt0116745,tt0100200,tt0102842
nm0003552	Stephen Goldblatt	1945	\N	cinematographer,camera_department,director	tt1454029,tt0376541,tt0318997,tt5034266
nm0003553	John McCarthy	\N	\N	composer,music_department,soundtrack	tt12137964,tt0847897,tt0108756,tt0107447
nm0003554	Robert W. Morgenroth	1957	\N	camera_department,visual_effects,miscellaneous	tt0113855,tt0119229,tt0115624,tt0242423
nm0003555	Donald B. Woodruff	\N	\N	art_director,art_department	tt0325980,tt0185014,tt0133152,tt0120461
nm0003556	Gabriela Vázquez	\N	\N	production_manager,assistant_director,producer	tt1663202,tt0119654,tt0120912,tt0118884
nm0003557	Richard J. Lewis	\N	\N	producer,director,writer	tt1423894,tt0247082,tt0475784,tt0111687
nm0003558	Glenn Micallef	\N	\N	sound_department	tt1838544,tt0120891,tt1099212,tt0098878
nm0003559	Christian Biron	\N	\N	location_management,transportation_department,camera_department	tt0414993,tt0180052,tt0388980,tt0118564
nm0003560	Linda Pickett	1955	\N	transportation_department,miscellaneous	tt0097138,tt1300854,tt0119468,tt0100758
nm0003561	Mick Erausquin	\N	\N	editorial_department,editor,producer	tt0167150,tt0179477,tt0233407,tt0196857
nm0003562	Stephen Tibbo	1968	\N	sound_department,producer,actor	tt1442437,tt0373469,tt0490086,tt0116126
nm0003563	Evan Evans	1975	\N	music_department,composer,producer	tt0287072,tt7262922,tt1067773,tt0824747
nm0003564	Amy L. Klein	1965	\N	casting_department,casting_director	tt0110366,tt0116705,tt0119432,tt0109520
nm0003565	Richard Worden	1967	\N	assistant_director	tt1438254,tt1465522,tt9354842,tt4047038
nm0003566	Susanne Schlomer	\N	\N	miscellaneous	tt0124879,tt0144168,tt0182000,tt0160401
nm0003567	Martin Carr	\N	\N	producer,production_manager,actor	tt3922704,tt0856778,tt1833885,tt0234321
nm0003568	Michelle Convey	\N	\N	set_decorator,art_department,art_director	tt0380623,tt0176783,tt0085031,tt0246628
nm0003569	Jan Blomgren	\N	\N	producer,assistant_director,location_management	tt5194446,tt6647016,tt0374248,tt0388233
nm0003570	Sara Flamm	\N	\N	production_manager,miscellaneous	tt0409459,tt0770752,tt1981128,tt0120768
nm0003571	Robert Florio	\N	\N	editor,producer,director	tt7370804,tt1378167,tt0411008,tt0810726
nm0003572	William Olsen	1950	2019	director,camera_department,producer	tt0130982,tt0120173,tt0085588,tt0096770
nm0003573	Mark Layton	\N	\N	assistant_director,production_manager,miscellaneous	tt1462764,tt9224104,tt6673612,tt2345759
nm0003574	Maurice Jarre	1924	2009	composer,music_department,producer	tt0056172,tt0059113,tt0099653,tt0090329
nm0003575	Doug Abel	\N	\N	editor,editorial_department,producer	tt32937646,tt0912590,tt0258038,tt11823076
nm0003576	Sebastian Henckel-Donnersmarck	1972	\N	director,writer,producer	tt0308972,tt0491792,tt0228186,tt0233589
nm0003577	Kevin R. Hershberger	1973	\N	director,costume_designer,producer	tt0235048,tt4327600,tt4465100,tt2477218
nm0003578	Ray Nicholas Hosack	\N	\N	actor,producer,writer	tt1318527,tt1326272,tt0230540,tt0212991
nm0003579	Magda Schneider	1909	1996	actress,soundtrack,archive_footage	tt0048624,tt0047259,tt0023449,tt0028168
nm0003580	Paul Inglis	\N	\N	art_director,art_department,production_designer	tt1856101,tt1074638,tt0206634,tt2527338
nm0003581	Katie Lee	\N	\N	art_department,set_decorator	tt0120631,tt0122541,tt0396752,tt0094525
nm0003582	Emily McGovern	\N	\N	assistant_director,miscellaneous	tt0831387,tt1458175,tt0114746,tt0119925
nm0003583	Ken Morrisey	\N	\N	editor,editorial_department,production_manager	tt0093692,tt0098536,tt0252866,tt0096098
nm0003584	Joel T. Pashby	\N	\N	editor,editorial_department,production_manager	tt1637727,tt4158110,tt2581458,tt6905686
nm0003585	Gustav Knuth	1901	1987	actor,soundtrack,archive_footage	tt0048624,tt0049762,tt0055111,tt0121935
nm0003586	Theo Lingen	1903	1978	actor,director,writer	tt0022100,tt0023563,tt0799833,tt0137476
nm0003587	John Penney	\N	\N	writer,producer,director	tt1430116,tt0107953,tt0429277,tt0156735
nm0003588	Craig Pryce	\N	\N	director,producer,writer	tt0102784,tt0109551,tt3906732,tt8461042
nm0003589	Kathy Ringer	1971	\N	assistant_director,miscellaneous	tt0316356,tt0184894,tt0388795,tt0337692
nm0003590	Emma Schofield	\N	\N	assistant_director,miscellaneous,production_manager	tt0116209,tt0118929,tt0134119,tt0252444
nm0003591	Robert Sonntag	1949	\N	assistant_director,miscellaneous,writer	tt0046593,tt0078704,tt0059991,tt0112729
nm0003592	Eddy Stevesyns	1960	\N	assistant_director,location_management,camera_department	tt5363618,tt0374345,tt0926762,tt0953318
nm0003593	Fred Zinnemann	1907	1997	director,assistant_director,producer	tt0045793,tt0060665,tt0044706,tt0069947
nm0003595	Corey Klemow	1970	\N	actor,art_department,casting_department	tt0162065,tt0203940,tt1954612,tt14069588
nm0003596	Barry Papick	\N	\N	actor,miscellaneous,director	tt0181536,tt0258153,tt0119951,tt1231287
nm0003597	Josh Edwards	\N	\N	actor	tt0171319
nm0003599	Daniel M. Berger	1965	\N	production_designer,art_department,producer	tt0185101,tt1724970,tt1039614,tt0361852
nm0003600	Klaus Biedermann	\N	\N	director,writer,archive_footage	tt0171791,tt0338411,tt0806910,tt0171998
nm0003601	Gary Muller	\N	\N	camera_department	tt0118880,tt0112864,tt0113845,tt0108238
nm0003602	Gregory M. Gerlich	1957	\N	sound_department,editorial_department,producer	tt0111257,tt0095016,tt0120841,tt0090859
nm0003603	Kelly Zombor	1966	\N	sound_department,director,writer	tt0831387,tt3829266,tt0280380,tt0449487
nm0003604	David Connell	1955	\N	cinematographer,camera_department	tt0337721,tt0091069,tt3203528,tt0120756
nm0003605	Monica Deeter	\N	\N	actress,editorial_department,producer	tt0119142,tt0086734,tt0204640,tt0165584
nm0003606	Philippe de Broca	1933	2004	director,writer,actor	tt0058203,tt0053964,tt0055832,tt0054621
nm0003607	Nicola Piovani	1946	\N	composer,music_department,actor	tt0118799,tt0419198,tt0091113,tt7736478
nm0003608	Karen Remy O'Toole	\N	\N	miscellaneous,casting_department,production_manager	tt0271367,tt0105698,tt0096928,tt0407265
nm0003609	Troy Bishop	1972	\N	actor,miscellaneous,archive_footage	tt0117571,tt0086425,tt0426905,tt0065272
nm0003610	Mike Lanoue	\N	\N	sound_department,producer	tt2562726,tt0112112,tt0235404,tt0195462
nm0003611	Uwe Greiner	1969	\N	camera_department,transportation_department,director	tt28082769,tt19395018,tt6506264,tt9203694
nm0003612	Michael Man-Kin Chow	\N	\N	actor,producer,director	tt0117100,tt0303970,tt0282667,tt0095403
nm0003613	Jay Shapiro	\N	\N	producer,miscellaneous	tt0118636,tt0096874,tt0099088,tt0238924
nm0003614	Carol Kupisz	\N	\N	art_department,miscellaneous	tt11564570,tt0451279,tt0118661,tt0206634
nm0003615	Fabrice Nordmann	1974	\N	director,writer,assistant_director	tt0123103,tt0112371,tt0274117,tt0119919
nm0003616	Brigitte Rabazo	\N	\N	editorial_department,editor,production_manager	tt1663662,tt0800080,tt0186151,tt0119731
nm0003617	Buzz Sapien	1947	\N	assistant_director,miscellaneous,art_department	tt0112220,tt0106080,tt0081930,tt0077097
nm0003618	Bruce Babcock	\N	\N	music_department,composer	tt0086765,tt0298814,tt0120738,tt0090481
nm0003619	Jay Flood	\N	\N	music_department,composer,soundtrack	tt0418279,tt1399103,tt0372873,tt1055369
nm0003620	Kevin Smith	1970	\N	producer,actor,writer	tt0109445,tt0118842,tt0424345,tt0120655
nm0003621	Anthony Domingo	\N	\N	miscellaneous,costume_department,producer	tt0120794,tt0138749,tt0166813,tt0120587
nm0003622	William F. Conrad	\N	\N	actor,writer	tt0236124
nm0003623	Scott Ford	\N	\N	actor	tt0160652,tt1481573,tt0210742,tt0375176
nm0003624	Heidemarie Hatheyer	1918	1990	actress,archive_footage	tt0095594,tt0037809,tt0052213,tt0048542
nm0003625	J. André Chaintreuil	1972	\N	art_department,visual_effects,special_effects	tt0181689,tt1440129,tt0379786,tt0163025
nm0003626	Charlie Condou	1973	\N	actor,producer,archive_footage	tt0426654,tt0280770,tt0053494,tt0486583
nm0003627	Jessica Fasman	\N	\N	costume_department,costume_designer	tt1825683,tt0118884,tt1598828,tt0109830
nm0003628	Kay Fenton	\N	\N	script_department,miscellaneous	tt0117060,tt0078748,tt0089469,tt0077928
nm0003629	Shirley Jo Finney	1949	2023	actress,director	tt0075528,tt0084070,tt0093660,tt0098026
nm0003630	Ryan Glorioso	1973	\N	casting_department,casting_director,actor	tt15428778,tt13984270,tt14261112,tt16302202
nm0003631	Denis Lenoir	1949	\N	cinematographer,camera_department	tt0401711,tt0284034,tt1034331,tt0411061
nm0003632	Anne-Marie Blanc	1919	2009	actress,archive_footage	tt0250573,tt0855815,tt0061410,tt0032801
nm0003633	Moet Meira	1970	\N	actress,producer,miscellaneous	tt0146838,tt0374201,tt0362716,tt0203259
nm0003634	Danny Mormino	\N	\N	miscellaneous,visual_effects	tt0286716,tt0120755,tt0181875,tt0245562
nm0003635	Nicholas Renbeck	\N	\N	sound_department,music_department,actor	tt0903657,tt0959337,tt0358082,tt7660850
nm0003636	Matthew Spiegel	\N	\N	producer,production_manager,miscellaneous	tt5071412,tt10857164,tt14761860,tt33035373
nm0003637	Kit Whitmore	1947	\N	camera_department,cinematographer,sound_department	tt0988047,tt0144117,tt0242445,tt0377713
nm0003638	F.W. Murnau	1888	1931	director,writer,producer	tt0018455,tt0013442,tt0022458,tt0012973
nm0003639	Ben Zeller	1933	\N	actor,art_department,art_director	tt0120604,tt0328107,tt1263670,tt0087985
nm0003640	Scott Arundale	\N	\N	editorial_department,editor,producer	tt0095956,tt0090357,tt1461242,tt0236261
nm0003641	Maeyen A. Bassey	\N	\N	producer,director,writer	tt15395964,tt18071752,tt6580248,tt16277384
nm0003642	Jeff Bessner	\N	\N	editorial_department,production_manager,producer	tt0365954,tt0114648,tt0482866,tt0784142
nm0003643	Sue Chan	\N	\N	production_designer,art_director,art_department	tt9376612,tt2267998,tt9411972,tt0272338
nm0003644	Tim Douglas	\N	\N	visual_effects,director,actor	tt0114857,tt0112864,tt0111742,tt0116514
nm0003645	Daniel Glasser	1980	\N	producer,director,editor	tt0235816,tt0249892,tt0180246,tt0409825
nm0003646	Samu Heikkilä	1971	\N	editor,editorial_department,sound_department	tt21027780,tt3678192,tt8562100,tt0388318
nm0003647	George Keller	1953	\N	composer,music_department,actor	tt0180748,tt0120002,tt0400538,tt2113646
nm0003648	Paul Kermizian	1974	\N	production_manager,director,producer	tt0235252,tt0406604,tt0372140,tt0300776
nm0003649	Henrique Laplaine	\N	\N	producer,assistant_director,actor	tt0116040,tt0309987,tt0305711,tt0203408
nm0003650	Michael Legge	1953	\N	actor,director,writer	tt0245019,tt17072218,tt0184370,tt1645988
nm0003651	Nick South	\N	\N	music_department,composer,sound_department	tt7599146,tt1389072,tt0467406,tt0377092
nm0003652	Jodene McNarland	\N	\N	miscellaneous,script_department	tt0157191,tt0262208,tt0254872,tt0254871
nm0003653	Craig Miller	1954	\N	writer,miscellaneous,producer	tt0080684,tt0449545,tt0115108,tt0083791
nm0003654	David Aldrich	1970	\N	actor	tt0096936,tt0090481
nm0003655	Seth C. Walsh	\N	\N	assistant_director,visual_effects,production_manager	tt0133240,tt0130623,tt0115584,tt0131603
nm0003656	Matthew Kershaw	1972	\N	producer,writer,assistant_director	tt0986337,tt0316356,tt1875707,tt0273435
nm0003657	Stephen A. Marinaccio II	1972	\N	production_manager,producer,miscellaneous	tt2189461,tt5057054,tt0297144,tt1277737
nm0003658	Phedon Papamichael	1922	2008	art_director,production_designer,actor	tt0072417,tt0074749,tt0096072,tt0069167
nm0003659	Phedon Papamichael	1962	\N	cinematographer,camera_department,director	tt1821549,tt1950186,tt0358273,tt1070874
nm0003660	Charlene Hamer	\N	\N	editorial_department,sound_department,miscellaneous	tt0229260,tt0105665,tt0147612,tt0101004
nm0003661	Cloud Michaels	\N	\N	actress	tt0209188,tt8223242,tt0264335,tt0134989
nm0003662	Graham Yost	1959	\N	producer,writer,script_department	tt1489428,tt0120570,tt0111257,tt0374463
nm0003663	Lisa Eisler	\N	\N	costume_department,costume_designer	tt0814335,tt0926129,tt1406662,tt0460651
nm0003664	Jason Waters	\N	\N	actor	tt0106179,tt0244365,tt0112104,tt0115404
nm0003665	Wolfgang Amadeus Mozart	1756	1791	music_department,composer,writer	tt0086879,tt0822847,tt0119094,tt0399201
nm0003666	Debbie Denise	\N	\N	visual_effects,producer,miscellaneous	tt0118884,tt0083658,tt1872181,tt0120912
nm0003667	Richard Bazley	1962	\N	art_department,animation_department,director	tt3651448,tt17498030,tt25297786,tt3158496
nm0003668	Brian Benison	\N	\N	music_department,composer,actor	tt0401711,tt0240468,tt0285462,tt0006333
nm0003669	James M. LeGoy	\N	\N	cinematographer,producer,camera_department	tt0257076,tt0308055,tt1776884,tt0308499
nm0003670	Andreas Morell	1946	\N	director,writer,cinematographer	tt0430662,tt4791168,tt0447812,tt1461962
nm0003671	Rob Rowan	1965	\N	camera_department,actor	tt0427470,tt0492044,tt0433400,tt0425430
nm0003672	Marco Uggiano	1969	\N	cinematographer,camera_department,editorial_department	tt1223934,tt8884330,tt0806910,tt1118674
nm0003673	Richard Brick	1945	2014	producer,production_manager,sound_department	tt0236412,tt0106307,tt0158371,tt0118954
nm0003674	Oliver Pautsch	1965	\N	writer,camera_department,transportation_department	tt0209512,tt0182630,tt0108977,tt0116176
nm0003675	Lee Cleary	\N	\N	assistant_director,producer,composer	tt0887912,tt0120667,tt0376994,tt0120903
nm0003676	C. Courtney Joyner	\N	\N	writer,actor,producer	tt0095904,tt0099277,tt6855174,tt4440596
nm0003677	Todd J. Adelman	1956	\N	miscellaneous,stunts,actor	tt0107290,tt0108399,tt0119567,tt0120902
nm0003679	Kate Reid	1930	1993	actress	tt0066769,tt0089006,tt0080388,tt0096677
nm0003680	Giedrius Nagys	1965	\N	stunts,actor,miscellaneous	tt3659388,tt31434639,tt3464902,tt2488496
nm0003681	Suzanne Colvin	\N	\N	producer,production_manager,miscellaneous	tt0159097,tt3846642,tt8593252,tt6635810
nm0003682	Akiva Tevet	\N	\N	director,assistant_director,miscellaneous	tt0236454,tt0143119,tt2130051,tt0083637
nm0003683	Daniel Pagan	1968	\N	sound_department,editorial_department	tt0409459,tt0382625,tt7638348,tt0458339
nm0003684	Amanda K. Montgomery	1972	\N	miscellaneous,visual_effects,writer	tt0117731,tt0117998,tt0267804,tt0120915
nm0003685	Elwira Pluta	1967	\N	production_designer,art_director,set_decorator	tt1442584,tt1533795,tt26937210,tt10651230
nm0003686	John L. Demps Jr.	\N	\N	cinematographer,camera_department,miscellaneous	tt0097322,tt0107554,tt0212772,tt0091080
nm0003687	Otakar Brousek	1924	2014	actor,archive_footage	tt1946559,tt0069982,tt0924182,tt3608644
nm0003688	Otakar Brousek	1957	\N	actor	tt3785750,tt14220422,tt0138711,tt0119930
nm0003689	Mathew Dunne	\N	\N	assistant_director,producer,production_manager	tt3450958,tt2103281,tt1270798,tt5884796
nm0003690	Paul Ghirardani	\N	\N	art_director,art_department,producer	tt5040012,tt0944947,tt0166485,tt11138512
nm0003691	Matt Absher	\N	\N	editorial_department,editor,camera_department	tt9376612,tt7737528,tt10954984,tt5463162
nm0003692	Erik C. Andersen	\N	\N	editor,editorial_department,producer	tt6111130,tt2179936,tt1567432,tt5686888
nm0003693	David Allen Cluck	\N	\N	assistant_director,producer,actor	tt1655442,tt0806203,tt8784956,tt0340855
nm0003694	Michael B. Druxman	1941	2025	writer,miscellaneous,actor	tt0063006,tt0235353,tt0097655,tt0232098
nm0003695	Christopher K. Grap	\N	\N	miscellaneous,actor,make_up_department	tt0219653,tt0292644,tt0265208,tt0204313
nm0003696	Harold Harris	\N	\N	director,miscellaneous,music_department	tt1870073,tt5607658,tt3533604,tt35497724
nm0003697	Florian Henckel von Donnersmarck	1973	\N	director,writer,producer	tt0405094,tt5311542,tt1243957,tt0233589
nm0003698	Shirley Lixenberg	\N	\N	set_decorator,art_department,director	tt0243155,tt0239484,tt0293929,tt1037218
nm0003699	Richard Oswald	\N	\N	assistant_director,production_manager	tt1440129,tt3410834,tt0253754,tt1340138
nm0003700	Dean Rusu	\N	\N	director,writer,cinematographer	tt0225828,tt2120045
nm0003701	Chris Salay	\N	\N	editor	tt0171827
nm0003702	Kenn Scott	\N	\N	actor,assistant_director,director	tt0103060,tt0100758,tt0457748,tt1260348
nm0003703	Eric Strand	\N	\N	editor,editorial_department	tt0246578,tt0149261,tt0087262,tt0146316
nm0003704	Christopher Swartout	1963	\N	assistant_director,director,miscellaneous	tt30057084,tt0889573,tt0477302,tt0101540
nm0003705	Joanna Syrokomla	\N	\N	costume_designer,costume_department,miscellaneous	tt1091909,tt4329242,tt1794147,tt8318648
nm0003706	Tim McCoy	1891	1978	actor,miscellaneous,writer	tt0023631,tt0023567,tt0023682,tt0033351
nm0003707	Jean-Jacques Rousseau	1712	1778	writer,music_department,miscellaneous	tt0064840,tt5048406,tt10324124,tt11878690
nm0003708	L. David Silva	\N	\N	assistant_director,miscellaneous,producer	tt0114898,tt0118928,tt0259288,tt0120004
nm0003709	Joanna Ball	\N	\N	art_department,miscellaneous,production_designer	tt0090521,tt0112586,tt0086747,tt0147763
nm0003710	Charles William Breen	1953	2018	production_designer,art_department,art_director	tt0271367,tt0103064,tt0419946,tt0242423
nm0003711	Sue Randall	1935	1984	actress,soundtrack,archive_footage	tt0050307,tt0052520,tt0048893,tt0050032
nm0003712	Anastas N. Michos	\N	\N	camera_department,cinematographer,visual_effects	tt8415836,tt3799232,tt5867314,tt0304415
nm0003713	Marc Pilvinsky	\N	\N	editorial_department,editor,producer	tt0101921,tt1377663,tt0401687,tt0285217
nm0003714	Frederick Iannone	\N	\N	camera_department,cinematographer	tt0149261,tt0115759,tt0248654,tt0360009
nm0003715	Andris Matiss	\N	\N	camera_department,cinematographer	tt0398712,tt0120577,tt0124743,tt0429422
nm0003716	Randy Cabral	\N	\N	special_effects	tt0106977,tt0118928,tt0090728,tt0120891
nm0003717	Gloria Pryor	\N	\N	producer,actress	tt0395669,tt0237199,tt0156005,tt0163543
nm0003718	Larry Scharf	\N	\N	sound_department,music_department,miscellaneous	tt0426459,tt0232500,tt0325980,tt0454919
nm0003719	Alessandro Lucidi	1947	\N	editor,editorial_department,production_manager	tt0102070,tt0238012,tt0065374,tt0125897
nm0003720	David Womark	\N	\N	producer,assistant_director,writer	tt0454876,tt1860357,tt3823392,tt0296572
nm0003721	Rick Butler	1952	\N	production_designer,art_director,art_department	tt0134119,tt0200550,tt0838232,tt0108160
nm0003722	Michael G. England	1971	\N	editorial_department,visual_effects,editor	tt0446059
nm0003723	Angie Hill	\N	\N	actress	tt0105459,tt0115243,tt0352277,tt0395843
nm0003724	Michelle Benoit	\N	\N	assistant_director	tt0120832,tt0190138,tt0267248,tt0117653
nm0003725	Christoph Hochenbichler	1970	\N	cinematographer,camera_department	tt0112901,tt7543648,tt0219909,tt0373941
nm0003726	Tallulah Hazekamp Schwab	1973	\N	director,writer,assistant_director	tt7972570,tt3218368,tt0481422,tt2090481
nm0003727	Marco Speroni	1955	\N	director,writer,producer	tt0220374,tt0212439,tt14366518,tt0220502
nm0003728	Owen Roe	1959	\N	actor	tt0117039,tt0411195,tt0332658,tt0319938
nm0003729	Kevin Bowe	1968	\N	sound_department,camera_department,actor	tt1185836,tt0340377,tt0857191,tt0247199
nm0003730	Graham Brown	\N	\N	cinematographer,camera_department,miscellaneous	tt0112004,tt2076226,tt0133322,tt15455964
nm0003731	Gregory Alosio	\N	\N	director,producer,actor	tt4121042,tt6286116,tt6492702,tt0238135
nm0003732	Neil Alumkal	1971	\N	producer,writer	tt0117172,tt0479140,tt0072506
nm0003733	Daniel Attias	\N	\N	director,producer,assistant_director	tt0090021,tt0285333,tt0306414,tt0421030
nm0003734	Lee Beckett	\N	\N	producer,miscellaneous,music_department	tt0115988,tt3044834,tt0117724,tt0192526
nm0003735	Antony J. Bowman	\N	\N	writer,director,producer	tt2379673,tt0180037,tt3329018,tt0097012
nm0003736	Scott Brooke	\N	\N	camera_department	tt0109642,tt0114345,tt0118002,tt0110765
nm0003737	Jim Brooks	1977	\N	actor,writer	tt0237995,tt0238122,tt0187665,tt0423296
nm0003738	Jay Cannistraci	1930	2011	make_up_department,actor	tt0111255,tt0430357,tt0109830,tt0120890
nm0003739	Randy Carter	\N	\N	editor,editorial_department,assistant_director	tt9419834,tt2474984,tt1698008,tt29120807
nm0003740	Julie Dretzin	1968	\N	actress	tt1152398,tt0215545,tt0903747,tt0248654
nm0003741	Robin Driscoll	\N	\N	actor,writer,miscellaneous	tt0096657,tt0118689,tt0453451,tt0373632
nm0003742	Robyn Driscoll	\N	\N	actor,writer	tt0184858,tt0113497,tt0106179,tt0120670
nm0003743	Clive Edwards	\N	\N	art_department,set_decorator,miscellaneous	tt4680182,tt0457572,tt0175142,tt0406759
nm0003744	Nick Evans	\N	\N	set_decorator,art_department	tt0328589,tt0147612,tt0251127,tt0382628
nm0003745	Anthony Fabian	1965	\N	director,producer,writer	tt5151570,tt8553340,tt0964586,tt2417404
nm0003747	Nina M. Gilberti	\N	\N	editor,producer,director	tt0452046,tt0367345,tt0243069,tt9011378
nm0003748	Anthony Green	1970	\N	actor	tt0258463,tt0120347,tt0182408,tt1137996
nm0003749	Peter Hearn	\N	\N	editor,sound_department	tt0296886,tt0086964,tt0110891,tt0076101
nm0003750	Steve Herold	\N	\N	miscellaneous,editorial_department,director	tt10403250,tt7270922,tt0321550,tt0331426
nm0003751	Marichelle Daywalt	\N	\N	producer,director,art_director	tt2041511,tt1693752,tt0286152,tt0233849
nm0003753	Peter Kambasis	\N	\N	sound_department,director,writer	tt0237344,tt0366545,tt0414694,tt0298744
nm0003754	Bob Kensinger	\N	\N	set_decorator,art_department,production_designer	tt0087597,tt1217613,tt1232829,tt1596343
nm0003755	Paula Lane	\N	\N	producer,production_designer	tt0114025,tt0302855,tt0449625,tt0386118
nm0003756	Richard Leeman	\N	\N	editor,editorial_department,sound_department	tt0097737,tt0086927,tt0086759,tt0109086
nm0003757	Jacqueline Lewis	\N	\N	actress	tt0052676
nm0003758	Gustavo Lipsztein	\N	\N	writer,producer,director	tt16427924,tt8972568,tt5822138,tt10520386
nm0003759	Ed Marx	\N	\N	editor,producer,sound_department	tt2190467,tt0263488,tt1323045,tt0870122
nm0003760	Ron Mason	\N	\N	art_department,art_director,production_designer	tt4154796,tt11286314,tt12584954,tt9777666
nm0003761	Edward T. McDougal	\N	\N	producer,writer,director	tt0235166,tt0192360,tt0418704,tt0418709
nm0003762	Alexandre Michaud	\N	\N	producer,director,writer	tt0235847,tt0388091,tt0844289,tt0267253
nm0003763	Sharron Miller	\N	\N	director,sound_department,editor	tt0202179,tt0083395,tt0136671,tt0176357
nm0003764	Daniel Osers	1970	\N	actor,miscellaneous	tt0109865,tt0106148,tt0110587,tt0138459
nm0003765	Laura Misch Owens	1953	\N	actress	tt0077912,tt0076055,tt0073690,tt27042739
nm0003766	Michael Pakleppa	1950	\N	producer,director,writer	tt3519178,tt0237052,tt0237827,tt0154443
nm0003767	Adam Peiken	\N	\N	editorial_department,miscellaneous,assistant_director	tt0251075,tt0218475,tt0159233,tt0315459
nm0003768	Efram Potelle	\N	\N	visual_effects,animation_department,director	tt0213994,tt0329676,tt0451279,tt1020543
nm0003769	Dan Sacks	1977	\N	producer,miscellaneous,director	tt0472023,tt2303011,tt0272937,tt0192704
nm0003770	Whitney Saik	\N	\N	producer,assistant_director,miscellaneous	tt0119806,tt0420460,tt0278250,tt0236576
nm0003771	David Schneider	\N	\N	editor,director,writer	tt2056696,tt0286152,tt0233849,tt1322998
nm0003772	Richard Schwartz	1956	\N	manager,producer,camera_department	tt2312530,tt5670364,tt0227671
nm0003773	Claire Schwob	\N	\N	director,producer,editor	tt1078940,tt3487892,tt3357214,tt0246870
nm0003774	Matt Z. Siegel	\N	\N	sound_department,producer,director	tt0199557,tt0331340,tt0244094,tt0187853
nm0003775	Cynthia Sleiter	\N	\N	set_decorator,art_department,art_director	tt20215234,tt0460791,tt0489099,tt0097737
nm0003776	Trey Stokes	\N	\N	visual_effects,director,editor	tt0120201,tt0358640,tt0096754,tt0114508
nm0003777	J. Ben Sykes	1974	\N	casting_department,miscellaneous,art_department	tt0169547,tt0166276,tt0107594,tt0107831
nm0003778	David Teller	\N	\N	editorial_department,editor,miscellaneous	tt0892782,tt0133240,tt0892769,tt9684220
nm0003779	Alessandra Torresani	1987	\N	actress,producer	tt1682940,tt0799862,tt0851851,tt1844624
nm0003780	Ladd Vance	\N	\N	producer,miscellaneous,actor	tt0095016,tt0111438,tt0098206,tt0266465
nm0003781	Timothy J. Warenz	\N	\N	production_manager,producer,miscellaneous	tt0188205,tt0292634,tt0234890,tt0150500
nm0003782	Jeff Winner	1971	\N	director,editor,producer	tt0408162,tt0238743,tt0171359,tt6351056
nm0003783	Bill Yahraus	\N	\N	editor,director,cinematographer	tt0238277,tt0238125,tt3235012,tt0439384
nm0003784	Joe Grisaffi	1968	\N	actor,casting_department,producer	tt0151309,tt1884338,tt2909196,tt8835638
nm0003785	Titus Y.H. Chong	\N	\N	producer,script_department,miscellaneous	tt0120751,tt1429042,tt1414215,tt3856916
nm0003786	Marc Singer	\N	\N	director,cinematographer,producer	tt0235327,tt1991264,tt0343329
nm0003787	Bil Yoelin	\N	\N	editor,writer,camera_department	tt1992224,tt0234854,tt5665418,tt0828164
nm0003788	Patti McGuire	\N	\N	miscellaneous,producer	tt0119488,tt0115685,tt1414382,tt0103776
nm0003789	David Birdsell	\N	\N	editor,director,writer	tt0137396,tt0161915,tt0325039,tt1024848
nm0003790	Carlos Barbosa	\N	\N	production_designer,producer,art_director	tt0435670,tt0393162,tt0155975,tt0285331
nm0003791	Christian Sebaldt	\N	\N	cinematographer,camera_department,producer	tt9619824,tt0318627,tt0295254,tt0247082
nm0003792	Dino Herrmann	\N	\N	sound_department,music_department,composer	tt0319262,tt0370263,tt0332452,tt2980210
nm0003793	David Attis	\N	\N	actor	tt0158671,tt0338159,tt0285624,tt0207881
nm0003794	Ryszard Bugajski	1943	2019	director,writer,producer	tt0084548,tt5662990,tt1420543,tt2807624
nm0003795	Kristina Trirogoff	\N	\N	editor,editorial_department,director	tt0113277,tt0369339,tt1723125,tt0183649
nm0003796	Ricky Edwards	\N	\N	composer,music_department,soundtrack	tt0120382,tt0881320,tt0117631,tt0200465
nm0003797	Thomas Vicari	1948	\N	music_department,sound_department,composer	tt0318997,tt1291580,tt0266543,tt4975722
nm0003798	Donald Martin	\N	\N	writer,producer,miscellaneous	tt8338076,tt13978306,tt2806390,tt1216477
nm0003799	Shane Daly	1966	\N	actor,miscellaneous	tt0165710,tt0482527,tt0242445,tt1650554
nm0003800	Sean Michael Fish	1964	\N	actor,art_department,miscellaneous	tt0106144,tt0277670,tt0280415,tt0320595
nm0003801	Julian Ferreira	\N	\N	camera_department	tt0169161,tt0165628,tt0164887,tt0229021
nm0003802	Uta Briesewitz	\N	\N	director,producer,cinematographer	tt7462410,tt4574334,tt15384586,tt0306414
nm0003803	Donald Irvine	\N	\N	camera_department	tt0120903,tt0217823
nm0003804	Don Irvine	\N	\N	camera_department	tt0123755,tt0251160,tt1396484,tt0192071
nm0003805	Geoffrey Brown	\N	2015	producer,actor,director	tt0238217,tt0163179,tt0087612,tt0083868
nm0003806	Bill Bannerman	\N	\N	producer,assistant_director,miscellaneous	tt0427340,tt1673434,tt8629748,tt3829266
nm0003807	Paul Greenberg	1970	\N	director,producer,writer	tt0179803,tt0238319,tt15766900,tt21065376
nm0003808	Kate Forster	1969	\N	actress,producer	tt0166924,tt0183505,tt1619856,tt0200427
nm0003809	Ari Bass	1967	\N	producer,music_department,miscellaneous	tt0118076,tt0260555,tt0238410,tt0113816
nm0003810	Colin Matthews	\N	\N	writer,director,art_department	tt8623904,tt8368512,tt0183523,tt0118480
nm0003811	Kelley Ray	\N	\N	visual_effects,assistant_director	tt0120201,tt0113957,tt0120609,tt0120008
nm0003812	Guglielmo Enea	\N	\N	writer,director	tt1961356,tt0124203,tt0263274,tt0238468
nm0003813	Liselotte Pulver	1929	\N	actress,soundtrack,archive_footage	tt0055256,tt0051200,tt0052656,tt0055070
nm0003814	Alana Sosnova	\N	\N	actress,producer,miscellaneous	tt0112998,tt0107752,tt0193508,tt0166845
nm0003815	Ronn Brown	\N	\N	visual_effects,animation_department,art_department	tt0217505,tt0133152,tt0119654,tt0076759
nm0003816	Jamie D. Boscardin	\N	\N	producer,production_manager,miscellaneous	tt0113277,tt18394190,tt0107798,tt0387877
nm0003817	Michael Clarke Duncan	1957	2012	actor,producer,soundtrack	tt0120689,tt0401792,tt0120591,tt0190138
nm0003818	Nick Brimble	1944	\N	actor,archive_footage	tt0102798,tt0183790,tt0119214,tt0099612
nm0003819	Kevin Kelly Brown	\N	\N	producer	tt3203606,tt6297682,tt7588054,tt0201391
nm0003820	Andrew Charas	\N	\N	producer,writer,miscellaneous	tt0337610,tt0293176,tt0160339,tt0115880
nm0003821	Tony Gardner	\N	\N	actor	tt0064003,tt0067791,tt0063972,tt0059968
nm0003822	Hubie Kerns Jr.	1949	\N	stunts,actor,assistant_director	tt0316732,tt1055369,tt0399201,tt0418279
nm0003823	Richard McQuilkin	\N	\N	miscellaneous,camera_department,location_management	tt0113277,tt0097770,tt0296745,tt0113926
nm0003824	Karen M. Murphy	\N	\N	visual_effects,miscellaneous,producer	tt1856101,tt0970179,tt0241527,tt0133093
nm0003825	Andrew Neiderman	1940	\N	writer,miscellaneous,producer	tt0118971,tt2393727,tt0478237,tt0095871
nm0003826	Eric Parkinson	1958	\N	producer,actor,writer	tt3455542,tt32513080,tt6598282,tt10294634
nm0003827	Hammond Peek	\N	\N	sound_department,production_manager,camera_department	tt0360717,tt0120737,tt0167261,tt0167260
nm0003828	Martin Pope	1961	\N	producer,script_department	tt1235189,tt1762300,tt0465430,tt9109620
nm0003829	Mickey Rat	\N	\N	composer	tt0102420
nm0003830	Wendy Richardson	\N	\N	art_department,miscellaneous,producer	tt0109830,tt0277434,tt0126916,tt0110074
nm0003831	Andy Ryan	\N	\N	camera_department,actor	tt0117500,tt0319262,tt1790864,tt1276104
nm0003832	Ingrid Schölderle	1952	\N	actress	tt13264068,tt0806910,tt9097694,tt0085948
nm0003833	James D. Solomon	\N	\N	miscellaneous,writer,producer	tt0968264,tt3568002,tt0486531,tt0118437
nm0003834	John Stoneham Jr.	\N	\N	stunts,actor,assistant_director	tt3450958,tt2120120,tt0335121,tt0800080
nm0003835	Heather Waters	\N	\N	actress	tt0211955,tt0376606,tt0366620,tt0331634
nm0003836	Michael Powell	1905	1990	director,writer,producer	tt0054167,tt0038733,tt0040725,tt0044103
nm0003837	Stuart Cooper	\N	\N	director,writer,producer	tt6044436,tt0150705,tt0405496,tt0870985
nm0003838	Dominick Tavella	\N	\N	sound_department,music_department	tt0299658,tt0947798,tt0795421,tt0138704
nm0003839	Alain Renoir	1921	2008	camera_department,actor,cinematographer	tt0031885,tt0033151,tt0268284,tt0029957
nm0003840	Mark Boucher	1967	\N	art_department	tt5834262,tt2103281,tt1060277,tt0120768
nm0003841	Jon Fries	1968	\N	editorial_department,producer,assistant_director	tt0117468,tt0109770,tt0820466,tt1320103
nm0003842	Femke-Anna Broere	1972	\N	actress	tt0115189,tt0222564,tt0112315
nm0003843	Jack Blum	\N	\N	writer,actor,producer	tt0147867,tt0079540,tt0082498,tt0115397
nm0003844	Darla Crane	1966	\N	actress,director,producer	tt0239141,tt1085798,tt0238884,tt0238842
nm0003845	Craig Camp	\N	\N	camera_department,cinematographer	tt0082984,tt0080836,tt0071780,tt0068540
nm0003846	Volker Gläser	\N	\N	cinematographer,camera_department,editorial_department	tt0765432,tt0119167,tt0253474,tt0116742
nm0003847	Bryan Donnell	1968	\N	cinematographer,camera_department,producer	tt11691160,tt21629194,tt37666468,tt8218940
nm0003848	Charles-André Bertrand	1960	\N	art_department,assistant_director,transportation_department	tt1877832,tt0335121,tt0160009,tt0270288
nm0003849	Daniel Hubbard	1975	\N	casting_director,casting_department,producer	tt13210838,tt1535109,tt0440963,tt1226271
nm0003850	Penny Rogers	\N	\N	miscellaneous,visual_effects,location_management	tt0343818,tt0120901,tt0404032,tt0160184
nm0003851	James Francis Jr.	1979	\N	special_effects,actor	tt0324133,tt0160904,tt0205177,tt0207275
nm0003852	Ernst Kaufmann	1954	\N	director,writer,cinematographer	tt0109076,tt0297952,tt9359696,tt0107352
nm0003853	Robert Ohlandt	\N	\N	sound_department,miscellaneous,assistant_director	tt0209144,tt0118636,tt0162360,tt0145734
nm0003854	Diana Eden	1940	\N	costume_designer,actress,costume_department	tt0063462,tt3733774,tt0068319,tt3775918
nm0003855	Peter Dashkewytch	\N	\N	assistant_director,director,producer	tt0290334,tt0094025,tt3846674,tt2231554
nm0003856	Michael Townsend Wright	1956	\N	actor	tt0146165,tt2572042,tt0179298,tt0177455
nm0003857	Mel Stewart	1929	2002	actor,writer,archive_footage	tt0075590,tt0099180,tt0085088,tt0070833
nm0003858	Mel Stewart	1968	\N	actor	tt0096542,tt0110805,tt0246108,tt0307129
nm0003859	Owen Brenman	1956	\N	actor,director,writer	tt0098882,tt0241383,tt0163964,tt0443390
nm0003860	David Caprita	1953	\N	actor,miscellaneous	tt0102492,tt0111255,tt1826940,tt0106168
nm0003861	David Jensen	1952	\N	actor,camera_department,producer	tt2649554,tt4419214,tt0421715,tt0240772
nm0003862	Amy Wilson	1969	\N	actress	tt0362269,tt1671582,tt0181935,tt0264761
nm0003863	Stacey Byers	\N	\N	art_department,miscellaneous	tt0120591,tt0118883,tt0213149,tt0141369
nm0003864	Michael S. Murphey	\N	\N	producer,miscellaneous,writer	tt1136608,tt0096928,tt1343727,tt0089686
nm0003865	Tony Hudson	1963	\N	visual_effects,animation_department,special_effects	tt0093260,tt0091225,tt0119654,tt10545296
nm0003866	Donald Brian	1875	1948	actor	tt0029204,tt0006230,tt0007360,tt4846432
nm0003867	John R. Grantham	\N	\N	actor	tt0102984
nm0003868	John T. Grantham	\N	\N	actor,stunts	tt0113161,tt0106761,tt0117373,tt0105946
nm0003869	David Parks	\N	\N	camera_department,cinematographer,producer	tt0107254,tt0106922,tt0288379,tt0114339
nm0003870	Marilyn Ghigliotti	1961	\N	actress,make_up_department,producer	tt0109445,tt11128440,tt6521876,tt4937114
nm0003871	Jamison Goei	\N	\N	visual_effects,producer,assistant_director	tt26584495,tt2582802,tt1099212,tt0454841
nm0003872	David Arnold	\N	\N	assistant_director,miscellaneous	tt1270798,tt0985699,tt2887954,tt0489974
nm0003873	Brian Backman	1975	2016	assistant_director,miscellaneous,location_management	tt0242445,tt1321870,tt0120338,tt1592281
nm0003874	Robyn Badger	\N	\N	producer,art_department,production_designer	tt0340390,tt0187995,tt0113776,tt0263905
nm0003875	Hyatt Bass	1969	\N	director,writer,camera_department	tt0212719,tt0108358,tt0105417,tt0108223
nm0003876	Laurent Boulanger	1972	\N	director,writer,editor	tt0210124,tt0497991,tt0255376,tt0240145
nm0003877	Dan Brown	1970	\N	director,producer,writer	tt0238834,tt0993777,tt4081504,tt0497306
nm0003878	David Eric Chapman	\N	\N	assistant_director,producer,production_manager	tt6264654,tt4669264,tt0177971,tt0144117
nm0003879	Jean-Christophe Delpias	\N	\N	director,actor,writer	tt28247370,tt14060708,tt13327060,tt1816049
nm0003880	Sam Hill	\N	\N	producer,director,assistant_director	tt0313043,tt9288030,tt2654580,tt0139134
nm0003881	Steve Hughes	\N	\N	director,assistant_director,writer	tt8270592,tt1888075,tt7573024,tt0436992
nm0003882	Brandon L. Hull	\N	\N	miscellaneous,cinematographer,production_manager	tt0242445,tt0120755,tt0181739,tt0230030
nm0003883	Laura MacNutt	1963	\N	art_director,production_designer,art_department	tt11242218,tt0280969,tt0115243,tt0284655
nm0003884	Paulo Machline	\N	\N	director,producer,writer	tt0207112,tt2041532,tt9125246,tt1539980
nm0003885	Kristen Toscano Messina	\N	\N	set_decorator,art_department	tt0307479,tt0452624,tt0240772,tt0115736
nm0003886	Conrad E. Palmisano	1948	2024	stunts,assistant_director,actor	tt1833673,tt2016894,tt0293564,tt0266915
nm0003887	David W. Rose	1953	\N	assistant_director,producer,director	tt0094025,tt0093137,tt0113820,tt0116483
nm0003888	J.A. Steel	1969	\N	writer,director,producer	tt0860528,tt1194424,tt5372176,tt0221637
nm0003889	John Stothart	\N	\N	editor,editorial_department	tt0124241,tt0081919,tt0103129,tt0107042
nm0003890	Marcel Visbeen	1966	\N	director,producer,writer	tt0985638,tt0420219,tt1978200,tt2365936
nm0003891	Jane Waters	1944	2011	cinematographer,camera_department,director	tt0089680,tt28511314,tt0177676,tt0153819
nm0003892	David 'Wex' Wechsler	\N	\N	assistant_director,miscellaneous,actor	tt0914387,tt3322312,tt5090568,tt21261712
nm0003893	Hughes Winborne	\N	\N	editor,editorial_department,sound_department	tt0375679,tt2015381,tt2120120,tt1219827
nm0003894	Brian Young	\N	\N	director,writer,producer	tt1905052,tt4135666,tt3359394,tt4115690
nm0003895	Ramon Novarro	1899	1968	actor,director,writer	tt0016641,tt0020253,tt0015268,tt0023778
nm0003896	Eric Dawson	1962	\N	casting_director,casting_department,executive	tt13207736,tt1844624,tt1984119,tt1327801
nm0003897	Claude Ludovicy	\N	\N	location_management,miscellaneous,production_manager	tt0780516,tt0189998,tt0396171,tt0118604
nm0003898	Kirk Bloom	\N	\N	camera_department,miscellaneous,script_department	tt0368891,tt2140379,tt0120768,tt0119925
nm0003899	Markham Cook	\N	\N	director,editor,writer	tt1087817,tt3654312,tt0487002,tt0294683
nm0003900	José Luis Alcaine	1938	\N	cinematographer,camera_department,miscellaneous	tt1189073,tt0441909,tt0101026,tt8291806
nm0003901	James Porteous	\N	\N	sound_department,miscellaneous,director	tt0092329,tt0092038,tt0482857,tt0220264
nm0003902	Michael DeSantis	\N	\N	miscellaneous,production_manager	tt6264654,tt1637688,tt3385516,tt4682266
nm0003903	Catalina Maria Johnson	\N	\N	producer	tt0179844,tt0359896
nm0003904	Paul May	1909	1976	director,editor,writer	tt0053393,tt0055596,tt0026461,tt0045353
nm0003905	Jim Vines	1963	\N	writer,camera_department,actor	tt14197758,tt0160652,tt0464054,tt13057276
nm0003906	Robert Grand	\N	\N	production_manager,producer,actor	tt0111280,tt0082089,tt0085995,tt0106977
nm0003907	Peter Rosen	\N	\N	director,producer,editor	tt0396087,tt0357625,tt27739992,tt0238226
nm0003909	Michael Lonsdale	1931	2020	actor,writer,miscellaneous	tt0069947,tt0122690,tt0079574,tt0408306
nm0003910	Travis Fine	1968	\N	actor,writer,director	tt2066176,tt0172493,tt0103956,tt10820264
nm0003911	Brian Tyler	1972	\N	music_department,composer,producer	tt2395427,tt1300854,tt1059786,tt1197624
nm0003912	Andrew Mulkani	\N	\N	camera_department,producer,miscellaneous	tt0108330,tt0175142,tt0110322,tt0239948
nm0003913	Daniel R. Bradette	\N	\N	art_department,set_decorator	tt0113481,tt0120338,tt0099141,tt0120824
nm0003914	Bill Wandel	1969	\N	composer,music_department,soundtrack	tt19800322,tt1481576,tt1290400,tt1059773
nm0003915	Lindsay Chag	\N	\N	casting_director,casting_department,producer	tt3118452,tt0098084,tt0107977,tt0095705
nm0003916	Tim Trageser	1969	\N	director,writer,actor	tt0134782,tt0240664,tt0240421,tt0258502
nm0003917	Kelley Cauthen	\N	\N	editorial_department,production_manager,editor	tt3846674,tt1699231,tt1086841,tt0845955
nm0003918	Leonor Areal	\N	\N	director,editor,writer	tt6889708,tt28452302,tt1548972,tt0240535
nm0003919	Jeff Ferris	1970	\N	actor,producer,miscellaneous	tt0938291,tt14205648,tt0171056,tt0330622
nm0003920	Michael Ellis	\N	\N	editor,sound_department,editorial_department	tt0078346,tt0115744,tt0089370,tt0914798
nm0003921	Jeff McEvoy	\N	\N	editor,editorial_department,miscellaneous	tt3531824,tt1189340,tt8760708,tt7550000
nm0003922	Michael Goi	1959	\N	cinematographer,camera_department,director	tt11794642,tt1844624,tt1087461,tt8362852
nm0003923	Rodger Boyce	\N	\N	actor	tt0477348,tt0419294,tt0198021,tt0107808
nm0003924	Sandra Woodring	1964	\N	make_up_department,production_manager	tt0250687,tt0164114,tt0214388,tt0197862
nm0003925	Julianne Buescher	\N	\N	actress,miscellaneous,writer	tt4651824,tt0800039,tt0452046,tt1408101
nm0003926	Michael Huens	\N	\N	producer,production_manager,assistant_director	tt0261755,tt0285487,tt0407254,tt3212026
nm0003927	Gyula Gazdag	1947	\N	director,writer,editor	tt0083878,tt0093199,tt0494222,tt0067816
nm0003928	Bob Clendenin	\N	\N	actor,soundtrack	tt1441109,tt0285403,tt0242423,tt0165598
nm0003929	Neill Gorton	1969	\N	make_up_department,special_effects,director	tt0436992,tt0470752,tt0206634,tt0113492
nm0003930	Will Wallace	\N	\N	actor,producer,director	tt0311850,tt0404826,tt0120863,tt0402399
nm0003931	Steve Balderson	\N	\N	director,writer,producer	tt27426981,tt0204322,tt1686326,tt0131534
nm0003932	Josy Capkun	\N	\N	assistant_director	tt0831387,tt6264654,tt4978420,tt1325004
nm0008685	Clemente Abete	\N	\N	actor	tt0120857
nm0003933	Mark S. Constance	\N	\N	assistant_director,producer,miscellaneous	tt1754701,tt0120601,tt1535109,tt3012698
nm0003934	David Crowther	1970	\N	editor,editorial_department,producer	tt0137363,tt0096754,tt0118928,tt0111503
nm0003935	Ken DuPuis	\N	\N	producer,director	tt0236342,tt0260211,tt0315911
nm0003936	Eivind Fredagsvik Øyangen	1979	\N	\N	\N
nm0003937	Steffen 'Bobby' Henzler	1972	\N	assistant_director	tt0223724
nm0003938	Steven Kreuch	\N	\N	art_department,set_decorator	tt0119675,tt0118671,tt0120523,tt0120261
nm0003939	Vikramaditya Motwane	1976	\N	producer,director,writer	tt1639426,tt19868804,tt3322420,tt1327035
nm0003940	Craig H. Shepherd	\N	\N	miscellaneous,producer,director	tt29417745,tt0221728,tt0210075,tt7370898
nm0003941	David Winning	\N	\N	director,producer,writer	tt5197820,tt0374455,tt0120389,tt0103352
nm0003942	Blake Bashoff	1981	\N	actor,miscellaneous,archive_footage	tt0115676,tt0181689,tt0403508,tt0112602
nm0003943	David Bloch	1965	\N	casting_department,casting_director,actor	tt0187393,tt0120685,tt0139809,tt0177991
nm0003944	Ian James Corlett	1962	\N	actor,writer,music_department	tt0214341,tt1700841,tt0115108,tt2440832
nm0003945	Jud Cremata	\N	\N	writer,producer,director	tt15079526,tt8547768
nm0003946	Marius De Vries	1961	\N	music_department,composer,actor	tt3783958,tt0203009,tt0117509,tt5697572
nm0003947	Carey Dietrich	\N	\N	assistant_director,producer,production_manager	tt0169547,tt0108399,tt1284575,tt0093692
nm0003948	Michael Duggan	\N	\N	producer,writer,director	tt0098844,tt0086759,tt0108758,tt0118278
nm0003949	David E. Fluhr	1957	\N	sound_department,music_department,miscellaneous	tt13622970,tt7207238,tt2953050,tt10016180
nm0003950	Vicky Herman	\N	\N	producer,production_manager,miscellaneous	tt0114814,tt4474344,tt0126802,tt34851918
nm0003951	Eric Hester	1974	\N	composer,music_department,actor	tt0295264,tt0295460,tt0115320,tt0292515
nm0003952	Adam Howard	1962	\N	visual_effects,director,manager	tt8068860,tt0121766,tt0383574,tt0117731
nm0003953	Matthew Huffman	\N	\N	writer,director,producer	tt2963232,tt1376213,tt0187559,tt5649144
nm0003954	Laurent Kossayan	\N	\N	sound_department	tt9150192,tt1896747,tt1152836,tt0211915
nm0003955	Rick B. Larsen	\N	\N	producer,production_manager	tt0112473,tt0174683,tt0155919,tt0113121
nm0003956	David Lombardi	\N	\N	visual_effects,actor,animation_department	tt0298814,tt0120458,tt0185183,tt0359013
nm0003957	Brad Marlowe	\N	\N	director,writer,producer	tt0220852,tt0108538,tt0217031,tt0881919
nm0003958	Pat Mastroianni	1971	\N	actor,director,editor	tt0090417,tt0120685,tt0288937,tt2193041
nm0003959	Louis Natale	1950	2019	composer,music_department,soundtrack	tt0119223,tt0151804,tt0088591,tt0283203
nm0003960	Zrinko Ogresta	1958	\N	director,writer,assistant_director	tt0210629,tt0334551,tt4647482,tt0113440
nm0003961	Allen Ormerod	1958	\N	sound_department,producer,editorial_department	tt0118379,tt0108756,tt0159920,tt0283203
nm0003962	Mike Rotman	\N	\N	producer,director,writer	tt2543712,tt1910277,tt2149310,tt0218495
nm0003963	Bruce A. Simon	\N	\N	assistant_director,production_manager,actor	tt0114745,tt0092455,tt0361192,tt1034320
nm0003964	Frank C. Turner	1951	\N	actor	tt0107665,tt3794354,tt0368578,tt0239395
nm0003965	Václav Táborsky	1928	2025	director,writer	tt0208542,tt0236884,tt0182545,tt26441071
nm0003966	Charles R. Uy	\N	\N	producer,assistant_director,director	tt2400997,tt0209471,tt1172509,tt2531318
nm0003967	Benjamin A. Weissman	\N	\N	editor,producer,visual_effects	tt0094791,tt0103897,tt0101766,tt0102962
nm0003968	Ralph Strasser	\N	\N	director,editor,editorial_department	tt0252778,tt0091069,tt0386977,tt0088580
nm0003969	Jane Walker	\N	\N	make_up_department,actress,producer	tt0944947,tt0209163,tt0365748,tt1478964
nm0003970	Stephanee LaFleur	1969	\N	actress	tt0189184,tt0206285,tt0210112,tt0188688
nm0003971	David Stephens	1948	\N	producer,writer,camera_department	tt0126943,tt0123956,tt0146233,tt0128755
nm0003972	Ryan Shore	1974	\N	composer,music_department,actor	tt21317634,tt6779076,tt11031770,tt3674910
nm0003973	Peter Blinn	1954	\N	visual_effects,special_effects,camera_department	tt0084827,tt0112625,tt0089878
nm0003974	Philippe Muyl	1953	\N	writer,director,producer	tt0329485,tt2976864,tt0088733,tt0217116
nm0003975	Jeff Stephenson	\N	\N	director,writer,producer	tt1072438,tt2437712,tt0379288,tt1657302
nm0003976	Theo J. Hyman	1978	\N	editorial_department,miscellaneous,sound_department	tt0137494,tt0419978
nm0003977	Gary Rydstrom	1959	\N	sound_department,miscellaneous,director	tt0107290,tt0181689,tt2935510,tt0103064
nm0003978	Andrew Deutsch	\N	\N	writer,actor	tt0102213,tt0098205,tt0093525,tt0101702
nm0003979	Daniel Schweiger	\N	\N	actor,producer,editor	tt1464540,tt0457939,tt0463034,tt0397078
nm0003980	Andrea Carter	\N	\N	art_department,miscellaneous,actress	tt2660888,tt0770828,tt0499549,tt0433035
nm0003981	Lydia Cornell	\N	\N	actress,producer,writer	tt0264235,tt0080299,tt0096684,tt0083437
nm0003982	Miura Kite	\N	\N	producer,executive,miscellaneous	tt13354972,tt0374463,tt20560404,tt7137906
nm0003983	Andy Roberts	1946	\N	composer,actor,music_department	tt0110889,tt0119092,tt0241492,tt0969784
nm0003984	Guy Gonçalves	\N	\N	cinematographer,camera_department,director	tt1828148,tt3310894,tt0295529,tt0264692
nm0003985	Rick Gioia	\N	\N	camera_department,cinematographer,actor	tt1219289,tt1670345,tt0337876,tt1041829
nm0003986	Stan Egi	\N	\N	actor	tt1600194,tt0107969,tt0119859,tt0091159
nm0003987	Mohandas K. Gandhi	1869	1948	miscellaneous,writer,music_department	tt0083987,tt0456144,tt0232081,tt0244776
nm0003988	Erik Gustafson	\N	\N	actor	tt0115654
nm0003989	Erik Gustavson	1955	\N	director,script_department,camera_department	tt0099764,tt0090736,tt0108309,tt0113365
nm0003990	Erik Gustavsson	\N	\N	camera_department,cinematographer,assistant_director	tt0075660,tt0068882,tt0162867,tt0192229
nm0003991	Beth Colt	\N	\N	actress,producer,assistant_director	tt0200530,tt0120197,tt0108758,tt0101064
nm0003992	Charles Burke	\N	\N	camera_department,producer,production_manager	tt0120710,tt0882969,tt0468449,tt1582268
nm0003993	Toby Jaffe	\N	\N	producer	tt1386703,tt1634106,tt0114214,tt1846589
nm0003994	Christian Williams	\N	\N	writer,producer,miscellaneous	tt0248654,tt0111999,tt0098761,tt0272376
nm0003995	G. John Garrett	1956	\N	sound_department,miscellaneous	tt0332047,tt1895587,tt0492956,tt3450900
nm0003996	Butch McCain	1958	\N	actor,music_department,producer	tt12038670,tt3147312,tt0115683,tt0489235
nm0003997	Derrick Peters	\N	\N	camera_department,cinematographer,director	tt12361974,tt6654210,tt3778644,tt0439572
nm0003998	Sarah Bicknell	\N	\N	assistant_director,miscellaneous	tt1571234,tt0360717,tt0779982,tt0760329
nm0003999	Valéry Gaillard	\N	\N	director,assistant_director,actor	tt0811168,tt0101581,tt4952142,tt0853066
nm0004000	Gustavo Fernández	\N	\N	director,assistant_director,miscellaneous	tt19267756,tt29259067,tt5906126,tt0144085
nm0004001	Mark Archer	1973	\N	producer,director,cinematographer	tt13222004,tt19759596,tt0119361,tt0140806
nm0004002	Chris Gurney	1950	\N	sound_department	tt0114388,tt0425413,tt0162661,tt0430912
nm0004003	Joseph Rochlitz	\N	\N	director,actor,writer	tt0102536,tt0212985,tt0362091,tt3089952
nm0004004	Ben Krout	\N	\N	camera_department	tt0227538,tt2717822,tt0477051,tt1411704
nm0004005	Marklen Kennedy	1967	\N	producer,actor,director	tt0165913,tt3809960,tt5662550,tt7289492
nm0004006	Colin Skelton	1976	\N	director,actor	tt0241950
nm0004007	Raymond King	\N	\N	visual_effects,special_effects	tt0120201,tt0296572,tt0822847,tt1034032
nm0004008	Monika Raebel	\N	\N	producer,miscellaneous,writer	tt0148859,tt0165418,tt0163038,tt0329502
nm0004009	Shawn Tanaka	\N	\N	miscellaneous,actor,writer	tt0120903,tt0486946,tt0427944,tt0308055
nm0004010	Lee Hickey	\N	\N	editor,editorial_department,miscellaneous	tt26751825,tt2231473,tt1173924,tt0306753
nm0004011	Patrick J. Don Vito	\N	\N	editor,editorial_department,visual_effects	tt6966692,tt5706370,tt0251127,tt0145660
nm0004012	Simon Emanuel	\N	\N	producer,production_manager,assistant_director	tt1462764,tt1877830,tt5180504,tt3748528
nm0004013	Fred Fouquet	\N	\N	editor,editorial_department,visual_effects	tt0119675,tt1663662,tt0116629,tt0116654
nm0004014	Scott Gamzon	\N	\N	editor,editorial_department,producer	tt0141716,tt5171438,tt0851851,tt2647544
nm0004015	Diana Horn	\N	\N	assistant_director,script_department,miscellaneous	tt0379623,tt9022950,tt0108778,tt8359018
nm0004016	Tod Lippy	\N	\N	director,writer,cinematographer	tt0241320,tt1391092
nm0004017	Pamela Malouf	\N	\N	editor,editorial_department,assistant_director	tt0076759,tt0083476,tt0463398,tt5296406
nm0004018	John Nein	1971	\N	miscellaneous,assistant_director,editor	tt0120902,tt0420316,tt0116212,tt0414924
nm0004019	William Pruss	\N	\N	producer,assistant_director,miscellaneous	tt26237514,tt9184986,tt4912910,tt5013056
nm0004020	Steven Douglas Smith	\N	\N	cinematographer,camera_department,producer	tt0343660,tt0795461,tt0455407,tt0130623
nm0004021	Tim Geideman	\N	\N	visual_effects,cinematographer,camera_department	tt0107290,tt0120201,tt0181689,tt0111280
nm0004022	Morton Stevens	1929	1991	music_department,composer,actor	tt0062568,tt0390022,tt0343660,tt0057765
nm0004023	Philipp Timme	1968	\N	cinematographer,camera_department,visual_effects	tt0120591,tt0116629,tt0119925,tt0118928
nm0004024	Simon Mills	\N	\N	producer,production_manager,assistant_director	tt11318602,tt6212478,tt0490879,tt0103129
nm0004025	Erik Fleming	\N	\N	producer,director,actor	tt0112761,tt0159060,tt2837336,tt3526286
nm0004026	Jeff Hoffman	1971	\N	director,actor,writer	tt2011833,tt0213201,tt0329663,tt14134070
nm0004028	Daniel Bacon	1970	\N	actor	tt3691740,tt1878870,tt3704700,tt0837143
nm0004029	Lillian Buyeff	1920	2001	actress	tt0051907,tt0050987,tt0051301,tt0055674
nm0004030	John Karyus	1975	\N	actor,camera_department,art_department	tt29002105,tt26287892,tt36748605,tt2450186
nm0004031	Brian Hughes	\N	\N	casting_director,casting_department,visual_effects	tt0265944,tt0163596,tt0207826,tt0144146
nm0004032	Thom Powers	1967	\N	producer,director,writer	tt0486531,tt0117025,tt0388574,tt0463322
nm0004033	Diego Quemada-Diez	\N	\N	director,writer,cinematographer	tt2042583,tt0816201,tt0387131,tt0114671
nm0004034	Elizabeth Holder	\N	\N	producer,director,assistant_director	tt1614992,tt0163929,tt0358079,tt0243022
nm0004035	Alessandra Carlino	\N	\N	producer,director,editor	tt17825078,tt23080002,tt0413895,tt0120685
nm0004036	Roger Dertinger	1973	\N	art_department,actor,cinematographer	tt0450340,tt0367631,tt0204679,tt0345551
nm0004037	Suzanne Nicell	\N	\N	miscellaneous,assistant_director,costume_department	tt0375154,tt0288045,tt0411195,tt0107207
nm0004038	Jack S. Schlosser	\N	\N	camera_department	tt0107290,tt0116629,tt0120877,tt0093300
nm0004039	Larry A. Thompson	1944	\N	producer,writer,miscellaneous	tt1559025,tt2375255,tt2937530,tt29379064
nm0004040	Michael Condro	\N	\N	camera_department,visual_effects,cinematographer	tt2253976,tt0117731,tt0111257,tt0120461
nm0004041	David J. McGraw	1954	\N	camera_department,visual_effects,miscellaneous	tt0368891,tt0377062,tt0094894,tt0417148
nm0004042	Victor Galvis	\N	\N	camera_department	tt0160127,tt0119695,tt0117539,tt0166276
nm0004043	George Zaloom	\N	\N	producer,writer,director	tt0104187,tt0086154,tt0102015,tt0219408
nm0004044	Paul Janossy	1964	\N	camera_department,actor	tt0115734,tt0315983,tt0802948,tt0400497
nm0004045	Massimo Nouhra	\N	\N	miscellaneous,producer	tt0144117,tt0185183,tt0160009,tt0208988
nm0004046	Jean-Louis Nieuwbourg	\N	\N	production_manager,producer,location_management	tt0274117,tt0205422,tt7858472,tt0098396
nm0004047	Jack Sojka	1964	\N	producer,production_manager,writer	tt3082898,tt0284655,tt5613122,tt1233219
nm0004048	Paul Raimondi	\N	\N	cinematographer,director,producer	tt0115981,tt4563660
nm0004049	Peter Atherton	1974	\N	location_management,miscellaneous,actor	tt0405296,tt0212346,tt0758746,tt1065073
nm0004050	Scott Getzinger	1965	2012	art_department,writer,camera_department	tt0120461,tt0120685,tt0116629,tt0407304
nm0004051	Brian Cox	1946	\N	actor,producer,director	tt7660850,tt0332452,tt0290334,tt0268126
nm0004052	Bob Shaw	\N	\N	production_designer,art_department,art_director	tt1302006,tt0993846,tt4406178,tt0112864
nm0004053	Ray McCort	\N	\N	miscellaneous,visual_effects,stunts	tt0120611,tt0116040,tt0114011,tt0116778
nm0004054	Philip D. Schwartz	\N	\N	camera_department,cinematographer,actor	tt0113957,tt0373051,tt3730126,tt0303017
nm0004055	Marco Black	1970	\N	production_manager,producer,assistant_director	tt0313043,tt0373469,tt0302886,tt0251736
nm0004056	Andrew Stanton	1965	\N	writer,producer,actor	tt0910970,tt0266543,tt2277860,tt0120623
nm0004057	Marietta Carter-Narcisse	\N	\N	make_up_department,producer	tt0120768,tt0116908,tt0120184,tt0099653
nm0004058	Heidi Kneisl	\N	\N	actress,art_department,set_decorator	tt0113449,tt0167107
nm0004059	Yvon Sarray	1917	1990	actor	tt0197199,tt1063369,tt0852611,tt0272389
nm0004060	Morgana Rae	\N	\N	actress	tt0287659,tt0186988,tt0231496,tt0245841
nm0004061	Nicholas Kamenos	\N	\N	actor	tt0120921,tt0066672,tt0297625,tt0762803
nm0004062	François Dagenais	\N	\N	cinematographer,camera_department	tt0377713,tt11875316,tt1389072,tt6632666
nm0004063	François Dagenais	\N	\N	make_up_department,special_effects,producer	tt10342730,tt1663662,tt0418819,tt4139588
nm0004064	Marco Sacerdoti	1958	\N	camera_department,cinematographer	tt1638355,tt0320661,tt0091474,tt1243957
nm0004065	André Gailhard	1885	1966	composer,soundtrack	tt0021321,tt0036575,tt0025892,tt0160657
nm0004066	Robbi Hinds	\N	\N	camera_department,visual_effects,cinematographer	tt0377713,tt0120609,tt0100464,tt0318236
nm0004067	Russell Yuen	1965	\N	actor,stunts,director	tt1448754,tt15203594,tt12327578,tt13016388
nm0004068	Suju Vijayan	\N	\N	producer,director,writer	tt2040562,tt0412517,tt0896232,tt27732168
nm0004069	Oliver Brzoska	\N	\N	assistant_director,script_department,production_manager	tt0276216,tt0243636,tt0243528,tt0319309
nm0004070	Niall Byrne	\N	\N	composer,music_department	tt13355234,tt9131050,tt6816780,tt5164184
nm0004071	Álvaro Curiel	1973	\N	director,writer,assistant_director	tt1174933,tt5355580,tt1076874,tt0388409
nm0004072	Kaizad Gustad	1968	\N	director,writer,miscellaneous	tt0168529,tt3309662,tt0330082,tt0819646
nm0004073	Jason Gondek	\N	\N	miscellaneous,art_department,actor	tt0119094,tt0327056,tt0186566,tt0309377
nm0004074	Igor Meglic	\N	\N	camera_department,cinematographer,assistant_director	tt1270797,tt1524137,tt0816711,tt3371366
nm0004075	Travis Price	1968	2015	visual_effects,animation_department,art_department	tt0848537,tt0120591,tt0120844,tt0120912
nm0004076	Jonny Vasic	\N	\N	producer,production_manager,miscellaneous	tt0165186,tt0256155,tt0442651,tt1852028
nm0004077	Klaus Christian Schreiber	1959	\N	actor,director,writer	tt1513068,tt0853076,tt0806910,tt28483934
nm0004078	Péter Politzer	1974	\N	director,editor,writer	tt6605846,tt0397857,tt0464955,tt10415684
nm0004079	Jim Michaels	1965	\N	producer,visual_effects,director	tt0460681,tt0460637,tt0096874,tt0090305
nm0004080	Grant Viklund	\N	\N	visual_effects,animation_department,production_manager	tt0115857,tt0311429,tt0357277,tt0331468
nm0004081	Tom Delmar	1963	\N	stunts,assistant_director,actor	tt0117951,tt0126388,tt0102798,tt0119395
nm0004082	Geoff Marslett	\N	\N	actor,producer,director	tt11662660,tt9109086,tt1109488,tt2091343
nm0004083	Brent Crowell	\N	\N	producer,director,assistant_director	tt13271734,tt4270458,tt1119644,tt3107288
nm0004084	Steven Nevius	1964	\N	editor,editorial_department,producer	tt0104257,tt1022603,tt0098635,tt0106598
nm0004085	Hilary Benson	\N	\N	producer,production_manager,miscellaneous	tt0178737,tt0360139,tt0117631,tt0377107
nm0004086	Penny Segal	\N	\N	producer,production_manager,miscellaneous	tt0099422,tt0099385,tt0202745,tt0115278
nm0004087	Howard Bernstein	1966	\N	producer,miscellaneous,soundtrack	tt0243655,tt0185937,tt0270707,tt0115754
nm0004088	László Kovács	1933	2007	cinematographer,camera_department,director	tt0064276,tt0065724,tt0087332,tt0075860
nm0004089	Matthew Irving	\N	\N	cinematographer,writer,camera_department	tt0473308,tt0348333,tt1699231,tt3491962
nm0004090	Eric Alan Edwards	1953	\N	cinematographer,camera_department,animation_department	tt0102494,tt0898367,tt0097240,tt0118887
nm0004091	Tom Fillingham	\N	\N	camera_department,cinematographer	tt0280380,tt0250687,tt0245674,tt0112750
nm0004092	Jean-Marc Félio	1953	\N	producer,production_manager,director	tt0138035,tt0099333,tt0295254,tt0158671
nm0004093	Travis Davis	1968	2009	actor,director,producer	tt1160368,tt0758746,tt0443454,tt0491117
nm0004094	Betsy Thomas	1966	\N	producer,writer,director	tt0496356,tt7768346,tt0363368,tt5462364
nm0004095	Bobbie Phillips	\N	\N	actress,producer,writer	tt4677244,tt0174543,tt0112086
nm0004096	Leesa Castaneda	1969	\N	actress	tt0261492,tt0106126,tt0117776,tt0235947
nm0004097	Alec Von Bargen	1972	\N	actor,miscellaneous,writer	tt0362107,tt17424878,tt11865946,tt10851662
nm0004098	Ellen Wheeler	1961	\N	producer,actress,director	tt0057731,tt0044265,tt0048845,tt0065272
nm0004099	Jayant	1915	1975	actor,archive_footage	tt0157064,tt0156048,tt0155745,tt0395602
nm0004100	Jayant	1949	\N	actor	tt0081518
nm0004101	Michael Perry	\N	\N	production_designer,art_department,art_director	tt9620292,tt5691670,tt3235888,tt0097322
nm0004102	Marc Sadeghi	\N	\N	visual_effects,editorial_department,producer	tt1392170,tt0319262,tt0346156,tt0371746
nm0004103	Michael Derbas	\N	\N	producer,camera_department,actor	tt0402910,tt0263746,tt0385961,tt0233656
nm0004104	Harry Shannon	1948	\N	music_department,actor,writer	tt0105698,tt0103772,tt0088533,tt0075950
nm0004105	Jay Sandrich	1932	2021	director,assistant_director,producer	tt0065314,tt0086687,tt0075584,tt0088526
nm0004106	Gregory Ruzzin	1964	\N	director,producer,writer	tt0282965,tt15690874,tt0112540,tt0197570
nm0004107	Darrin Klimek	1970	\N	actor,cinematographer,producer	tt0285531,tt0110598,tt0213327,tt0111964
nm0004108	Brett Miller	\N	\N	producer,actor	tt6587668,tt0095188
nm0004109	Gulshan Grover	1955	\N	actor,music_department,archive_footage	tt5912310,tt0120087,tt1805263,tt0150433
nm0004110	Carl R. Botefuhr	1925	1996	actor	tt0022812,tt0062568
nm0004111	Mark Frost	1953	\N	writer,producer,miscellaneous	tt0120667,tt0081873,tt0098936,tt4093826
nm0004112	Mark Frost	1968	\N	actor,archive_sound	tt4348012,tt0223268,tt3636060,tt1250890
nm0004113	Halina Dobrowolska	1929	2016	production_designer,art_director,art_department	tt0101765,tt0095467,tt0111507,tt0188387
nm0004114	Halina Dobrowolska	1930	1999	actress	tt0048126,tt0049555,tt0182607,tt0441074
nm0004115	Thom Tierney	\N	\N	actor	tt0178229,tt0982881,tt1630574,tt1181917
nm0004116	Larry D. Horricks	1960	\N	camera_department,assistant_director,actor	tt7181546,tt3960394,tt11097384,tt12758486
nm0004117	Roger Bondelli	\N	\N	editor,editorial_department,producer	tt0119190,tt0116409,tt0120631,tt0119141
nm0004118	Marie Nardella	\N	\N	make_up_department,art_department	tt0489099,tt0290095,tt0318627,tt0370032
nm0004119	Kurt Hall	\N	\N	editorial_department,camera_department,visual_effects	tt0467695,tt0180052,tt0218817,tt0105690
nm0004120	George Tarrant	1955	\N	sound_department	tt0100260,tt0409572,tt0281373,tt0106087
nm0004121	Mikael Salomon	\N	\N	director,cinematographer,producer	tt0096754,tt0101393,tt0185906,tt1494829
nm0004122	Robert Bolt	1924	1995	writer,director,actor	tt0056172,tt0060665,tt0059113,tt0091530
nm0004124	Laurent Herbiet	1961	\N	assistant_director,writer,director	tt0800135,tt5736758,tt2294727,tt1883242
nm0004125	Radan Popovic	\N	\N	cinematographer,camera_department,actor	tt0126886,tt11564570,tt10927414,tt1389072
nm0004126	Ian Gilmour	1955	\N	actor,director,camera_department	tt0292515,tt0329814,tt0240278,tt0115403
nm0004127	David McKail	1938	2021	actor,archive_footage	tt0458339,tt0108967,tt0408236,tt1109624
nm0004128	Craig Campobasso	\N	\N	casting_director,casting_department,producer	tt0346156,tt0259685,tt1334553,tt2645374
nm0004129	Sheri Bylander	\N	\N	editor,editorial_department,producer	tt30459041,tt13819960,tt7949218,tt10732048
nm0004130	Adina Shore	1971	\N	make_up_department,camera_department,miscellaneous	tt0338337,tt1964418,tt0429493,tt0280380
nm0004131	Antoine Beau	\N	\N	assistant_director,production_manager,producer	tt0101318,tt1784515,tt0091497,tt0444182
nm0004132	Jill Footlick	\N	\N	producer,production_manager,miscellaneous	tt11280740,tt5057054,tt4635282,tt0203230
nm0004133	Aure Atika	1970	\N	actress,director,writer	tt1399664,tt0411270,tt0464913,tt1285246
nm0004134	Tasma Walton	\N	\N	actress,miscellaneous,producer	tt13589004,tt7298596,tt10530838,tt21053652
nm0004135	Jeffrey Kaplan	\N	\N	sound_department,music_department,producer	tt2261391,tt0116367,tt0120201,tt0098844
nm0004137	Tia Texada	\N	\N	actress	tt0460690,tt0197182
nm0004138	Vince Corazza	\N	\N	actor,miscellaneous,archive_footage	tt0338852,tt0114327,tt0285861,tt0144120
nm0004139	Murilo Salles	1950	\N	cinematographer,director,writer	tt0115929,tt0133131,tt0334316,tt0093059
nm0004140	Steve Arnold	1953	\N	production_designer,art_director,art_department	tt1856010,tt1478338,tt0145487,tt0119094
nm0004141	Pazz Neglia	\N	\N	production_manager,producer,stunts	tt1094229,tt3230854,tt5834204,tt11671006
nm0004142	Michael Grady	\N	\N	cinematographer,camera_department	tt1838544,tt1433108,tt1282140,tt0470705
nm0004143	Michael Grady	\N	\N	camera_department	tt0116629,tt0307479,tt0325710,tt0119695
nm0004144	Joanne Ottaviano	\N	\N	make_up_department	tt0133122,tt0117443,tt0117958,tt0171791
nm0004145	Peter Lance	\N	\N	writer,producer,miscellaneous	tt0090410,tt0086759,tt0106067,tt0092484
nm0004146	Mikko Nousiainen	1938	2011	actor,archive_footage	tt0097682,tt0120427,tt0437273,tt0138664
nm0004147	Mikko Nousiainen	1975	\N	actor,soundtrack,archive_footage	tt0119211,tt1067580,tt1145479,tt0328432
nm0004148	Don Kirshner	1934	2011	music_department,producer,composer	tt0066469,tt0198188,tt0202206,tt0455585
nm0004149	Bo Svenson	1941	\N	actor,writer,producer	tt0361748,tt0378194,tt0076028,tt0079640
nm0004150	Jeremy Benning	1974	\N	cinematographer,camera_department,producer	tt29634843,tt3230854,tt8415836,tt11794812
nm0004151	Jennifer Ann Henry	1973	2017	camera_department,cinematographer,actress	tt0319262,tt0438488,tt0450405,tt0206314
nm0004152	Roel Reiné	1969	\N	director,producer,cinematographer	tt10098580,tt2544766,tt2934286,tt2375692
nm0004153	Carol Goldwasser	\N	2024	casting_director,casting_department,miscellaneous	tt1830491,tt0493093,tt7631348,tt2222135
nm0004154	Peter Thomas	1959	2006	sound_department	tt0349710,tt0384286,tt0325537,tt0144168
nm0004155	Daniel A. Valverde	1961	\N	editor,editorial_department,actor	tt0105046,tt2149175,tt6110648,tt0118437
nm0004156	Shawn Murphy	1948	\N	music_department,sound_department,soundtrack	tt0107290,tt0117060,tt3581652,tt0120915
nm0004157	TyRuben Ellingson	\N	\N	art_department,visual_effects,miscellaneous	tt0499549,tt0107290,tt1663662,tt0167190
nm0004158	Emily Ferry	\N	\N	set_decorator,art_department	tt0397535,tt0119177,tt0952640,tt3609352
nm0004159	Tom Tangen	1961	\N	miscellaneous,actor,producer	tt0246578,tt1411238,tt0092086,tt0415298
nm0004160	Jan Lipsansky	1968	\N	writer,director,script_department	tt0273928,tt0240000,tt0244785,tt0244681
nm0004161	Mark Roper	1958	\N	assistant_director,director,writer	tt4160708,tt1772264,tt1480295,tt2167202
nm0004162	Patti Podesta	\N	\N	production_designer,art_department,miscellaneous	tt0107290,tt0209144,tt7144666,tt0115736
nm0004163	Marco Guidone	1966	\N	producer,assistant_director,miscellaneous	tt0246677,tt0460808,tt0400773,tt0107426
nm0004164	Bob Brooks	\N	\N	editor,editorial_department,camera_department	tt0116026,tt0114590,tt0115237,tt0117481
nm0004165	Lance W. Dreesen	\N	\N	producer,writer,director	tt1252507,tt2094146,tt0211661,tt0488962
nm0004166	Adam Hackbarth	1973	\N	miscellaneous,actor,writer	tt0349612,tt0489024,tt0427688,tt0469135
nm0004167	Bart DeFinna	\N	\N	actor	tt1190689,tt0096310,tt0265803,tt11096780
nm0004168	Aaron Griffith	\N	\N	casting_director,casting_department,executive	tt1485761,tt0828158,tt0301470
nm0004169	Bo Kane	\N	\N	actor,miscellaneous	tt10323338,tt5691552,tt3566726,tt0108551
nm0004170	Bob Kane	1915	1998	writer,miscellaneous,actor	tt1877830,tt0372784,tt0468569,tt0096895
nm0004171	Drew Wood	\N	\N	actor,archive_footage	tt0056751,tt0224883,tt0069739,tt0072993
nm0004172	Drew Wood	1976	\N	actor	tt0292644,tt0247082,tt0158552,tt0115937
nm0004173	Charlotte Fontijn	\N	\N	script_department,actress,assistant_director	tt0317919,tt0892318,tt0123095,tt0384766
nm0004174	Frederick Howard	\N	\N	sound_department,music_department,producer	tt0970416,tt0116922,tt0479537,tt0118655
nm0004175	Jonathan Short	1959	2006	art_department,art_director	tt0330793,tt0319061,tt0190590,tt0141098
nm0004176	Lisa C. Satriano	\N	\N	assistant_director,producer,director	tt4978420,tt0158206,tt0145487,tt1270797
nm0004177	Tiffany Smith Llorens	\N	\N	visual_effects,producer,production_manager	tt0298814,tt1458175,tt0377062,tt1034032
nm0004178	Jeff Wolfe	\N	\N	director,actor,stunts	tt27791972,tt0780504,tt10293938,tt0848228
nm0004179	Helene Egelund	1965	\N	actress	tt0128007,tt0494216,tt0131674,tt1570091
nm0004180	Dick Vosburgh	1929	2007	writer,actor,script_department	tt0384771,tt0059985,tt0054530,tt0164289
nm0004181	Ronald Shore	\N	\N	producer,actor,casting_department	tt0317640,tt5897570,tt0237199,tt1754457
nm0004182	Frank Petzold	\N	\N	visual_effects,special_effects,camera_department	tt1016150,tt0120201,tt0120591,tt0164052
nm0004183	Tom P. Murphy	1951	\N	actor	tt0241793,tt0180451
nm0004184	Robert Dassanowsky	1956	2023	producer,actor,miscellaneous	tt0244200,tt2224676,tt0259425,tt0244306
nm0004185	Paul Roer	\N	\N	art_department	tt0180093,tt0250081,tt0259484,tt0227005
nm0004186	Peter Hanrahan	\N	\N	editorial_department,miscellaneous,producer	tt0285751,tt1007810,tt0791055,tt0127998
nm0004187	Casey Cannon	\N	\N	visual_effects,producer,writer	tt0120201,tt0119654,tt5265790,tt0164052
nm0004188	Rea Tajiri	1958	\N	director,writer,producer	tt5825548,tt0108233,tt0285191,tt14650084
nm0004189	Tamara Johnson	\N	\N	sound_department,music_department,producer	tt2785032,tt1024715,tt2112307,tt0106080
nm0004190	Glenn Dreher	\N	\N	assistant_director	tt0184894,tt0118570,tt0239330,tt0268805
nm0004191	Ricard Casals	1949	\N	sound_department,composer	tt1649444,tt1454523,tt0102788,tt0104545
nm0004192	Kenny Hotz	1967	\N	actress,actor,writer	tt0121955,tt0384746,tt1007028,tt0127388
nm0004193	Debbie Rochon	1968	\N	actress,producer,writer	tt32421430,tt2274752,tt1937154,tt1401631
nm0004194	Lyn Pinezich	\N	\N	production_manager,location_management,producer	tt0993840,tt20969586,tt31036941,tt0407304
nm0004195	Gabriel Figueroa	1907	1997	cinematographer,camera_department,archive_footage	tt0037981,tt0037054,tt0042804,tt0040715
nm0004196	Verne Nobles	\N	\N	writer,producer,director	tt0243609,tt0409811,tt0906763,tt0077099
nm0004197	Vern Nobles Jr.	\N	\N	camera_department,cinematographer,assistant_director	tt1509767,tt0111257,tt1855325,tt5884796
nm0004198	David Acord	\N	\N	sound_department,actor,miscellaneous	tt5950044,tt9253284,tt5776858,tt2488496
nm0004199	Nicolas Amiache	\N	\N	assistant_director,production_manager	tt0225605,tt0441912,tt0330247,tt0363263
nm0004200	John Ian Briody	\N	\N	miscellaneous,assistant_director	tt0155267,tt0142192,tt0186975,tt0132512
nm0004201	Neil Cedar	\N	\N	sound_department,actor,miscellaneous	tt2149175,tt0473308,tt0115641,tt0247303
nm0004202	Jean-Pierre Duret	1953	\N	sound_department,director,writer	tt1270680,tt2737050,tt0092593,tt1827512
nm0004203	Abi Feijó	1956	\N	director,producer,editor	tt0108030,tt0121606,tt0298277,tt5573970
nm0004204	Peter Freeman	\N	\N	assistant_director,casting_department,production_manager	tt2934286,tt6475714,tt9814116,tt2708480
nm0004205	John Frick	\N	\N	art_director,art_department,production_designer	tt1403865,tt1458175,tt0387808,tt0133751
nm0004206	Goran Gajic	1962	\N	director,writer,actor	tt9861884,tt0105946,tt0244627,tt0301829
nm0004207	Giel van Geloven	1972	\N	sound_department,music_department,camera_department	tt2707150,tt0239020,tt0808174,tt1634332
nm0004208	Gabriel Guy	1976	\N	sound_department,music_department,actor	tt2245084,tt2294629,tt2953050,tt2948356
nm0004209	E.B. Hughes	\N	\N	director,writer,producer	tt6745550,tt1476425,tt8064374
nm0004210	Nicholas Korda	1945	2018	sound_department,editorial_department,music_department	tt0232500,tt0498380,tt0418689,tt0140352
nm0004211	Nikolas Korda	\N	\N	assistant_director,production_manager,producer	tt3896198,tt2015381,tt0167260,tt0918940
nm0004212	Peter F. Kurland	\N	\N	sound_department,producer,miscellaneous	tt0477348,tt0358273,tt1403865,tt0190590
nm0004213	Cliff Latimer	\N	\N	sound_department,miscellaneous,editorial_department	tt0115857,tt0134619,tt0119177,tt0365929
nm0004214	Bey Logan	1963	\N	producer,actor,writer	tt0288045,tt0865556,tt4327752,tt8180932
nm0004215	Mark Lombardo	1949	\N	producer,production_manager,actor	tt0280665,tt2058673,tt1529233,tt0091757
nm0004216	Gerard McCann	\N	\N	music_department,sound_department,soundtrack	tt1201607,tt1707386,tt2431286,tt1790885
nm0004217	André Øvredal	1973	\N	director,writer,producer	tt1740707,tt3289956,tt4583446,tt1001520
nm0004218	Péter Palátsik	\N	\N	writer,assistant_director,director	tt0388136,tt0245893,tt0454814,tt0197676
nm0004219	Klaus Peintner	\N	\N	sound_department	tt0205000,tt0245686,tt0185431,tt0120753
nm0004220	Doug Pope	\N	\N	sound_department,cinematographer,editor	tt0332255,tt0243145
nm0004221	Will Ralston	\N	\N	sound_department,writer,miscellaneous	tt0190332,tt3640424,tt4998350,tt4881806
nm0004222	Hansl Schulder	\N	\N	writer	tt0145649
nm0004223	Philip Sgriccia	\N	\N	producer,director,editor	tt1190634,tt14261112,tt0460681,tt0092402
nm0004224	Anne Sirois	\N	\N	assistant_director,miscellaneous,producer	tt1588173,tt26862142,tt1756750,tt0885761
nm0004225	Eduardo Soto-Falcon	\N	\N	director,writer,editor	tt0403830,tt0241798,tt0945533,tt1981685
nm0004226	David B. Thompson	\N	\N	editor,editorial_department,actor	tt1114706,tt0285331,tt1567215,tt1517121
nm0004227	Dick Ziker	1940	\N	stunts,actor,assistant_director	tt0090180,tt0284490,tt0111143,tt0070909
nm0004228	Elmo Weber	\N	\N	sound_department,composer,director	tt0842926,tt2479478,tt0116922,tt2106651
nm0004229	Adam Greenberg	1937	\N	cinematographer,camera_department,miscellaneous	tt0103064,tt0099653,tt0088247,tt0417148
nm0004230	Frank Loesser	1910	1969	music_department,composer,writer	tt0045325,tt0041687,tt0348150,tt0094737
nm0004231	Kenny Davis	1940	2016	actor	tt0087363,tt1810683,tt0077031,tt0426371
nm0004232	Erik Svane	\N	\N	actor	tt0161203,tt0180837,tt0137546,tt0472604
nm0004233	Nick Gillard	\N	\N	stunts,actor,assistant_director	tt0493464,tt0245844,tt0113492,tt0102798
nm0004234	Alfonso Gomez-Rejon	\N	\N	producer,director,assistant_director	tt2582496,tt1844624,tt0473705,tt1034389
nm0004235	James William Newport	\N	\N	production_designer,art_director,art_department	tt0814022,tt3522806,tt0101452,tt0286486
nm0004236	Ângelo Antônio	1964	\N	actor,producer,archive_footage	tt0439547,tt0142045,tt1234559,tt2390460
nm0004237	Ângelo Antônio	1939	1983	actor	tt0200884,tt0139077,tt0200417,tt0201599
nm0004238	Cindy Geppi	1967	\N	actress	tt0094155
nm0004239	Meg Thalken	1954	\N	actress	tt0120873,tt0095889,tt0108757,tt0085346
nm0004240	Tom Scorza	\N	\N	writer	tt11769434,tt0157871
nm0004241	Donald E. Thorin	1934	2016	cinematographer,camera_department,assistant_director	tt0083190,tt0091129,tt0098439,tt0097770
nm0004242	Fidel Castro	1926	2016	actor,miscellaneous,archive_footage	tt2088683,tt0827190,tt1098200,tt3967500
nm0004243	Eric Mises-Rosenfeld	\N	\N	visual_effects	tt0267804,tt0758730,tt0119707,tt0329691
nm0004244	Jacques Tati	1907	1982	writer,actor,director	tt0062136,tt0046487,tt0050706,tt0040497
nm0004245	Carla S. Nemec	\N	\N	art_department,miscellaneous,production_designer	tt0120053,tt2935510,tt0379786,tt0103064
nm0004246	Pamela Scott Arnold	\N	\N	editor,editorial_department,music_department	tt1597089,tt0194624,tt5806432,tt0090968
nm0004247	Bob Sarles	1957	\N	editor,producer,editorial_department	tt5432624,tt3264110,tt0103520,tt0124010
nm0004248	Georges Corraface	1952	\N	actor,producer,writer	tt0097810,tt0378897,tt0116225,tt0110785
nm0008687	Gisèle Abetissian	\N	\N	actress	tt0069443
nm0004249	Curtis Choy	\N	\N	sound_department,director,cinematographer	tt0468963,tt0406763,tt0406729,tt0100318
nm0004250	Quentin Lee	\N	\N	producer,director,writer	tt19861158,tt18554664,tt1024770,tt0122710
nm0004251	Sharon Smith Holley	\N	\N	visual_effects,editorial_department,production_manager	tt0437086,tt1025100,tt0949731,tt9114286
nm0004252	Thomas Duval	\N	\N	visual_effects,special_effects,editor	tt1034032,tt0364970,tt0465494,tt0112682
nm0004253	Marc Pollon	\N	\N	editor,editorial_department	tt6045840,tt5987254,tt9742936,tt1405406
nm0004254	Edward Terry	\N	\N	actor,writer,producer	tt0080527,tt35674497,tt0092843,tt0100079
nm0004255	Laura Marolakos	\N	\N	costume_department,costume_designer	tt0209144,tt0343135,tt0278488,tt0119891
nm0004256	Suzan Derkson	\N	\N	assistant_director,production_manager,producer	tt0175142,tt0306047,tt2626350,tt14637386
nm0004257	James R. Bagdonas	1951	\N	cinematographer,camera_department,director	tt1442437,tt0108724,tt0086734,tt0283111
nm0004258	Pino Ammendola	1951	\N	actor,writer,miscellaneous	tt7144978,tt0103873,tt18115604,tt2869788
nm0004259	André Kaminski	1985	\N	actor	tt0806910,tt2133298,tt0239450,tt0366767
nm0004260	Pamela Bowman	\N	\N	actress	tt0083131,tt0086494,tt0086501,tt0083437
nm0004262	Lynn Marie Latham	\N	\N	writer,producer,miscellaneous	tt0101121,tt0069658,tt0106127,tt0078638
nm0004263	Lynne Latham	\N	\N	actress,casting_department,miscellaneous	tt0075485,tt0082474,tt0081777,tt0084273
nm0004264	Jude Herrera	\N	\N	actress,miscellaneous	tt0255653,tt0160403,tt0127020,tt0134247
nm0004265	Maria Herrera	1969	\N	actress,producer	tt4733624,tt0837563,tt16030542,tt0289791
nm0004266	Anne Hathaway	1982	\N	actress,producer,soundtrack	tt1707386,tt1345836,tt1084950,tt0758752
nm0004267	Xavier Grobet	1964	\N	cinematographer,camera_department,actor	tt0247196,tt2381941,tt1121977,tt0457510
nm0004268	Mark Allen	\N	\N	sound_department,music_department,miscellaneous	tt0285333,tt2261227,tt0475784,tt0445946
nm0004269	Oliver Driscoll	1974	\N	camera_department,actor,miscellaneous	tt0816711,tt1524137,tt3371366,tt8041270
nm0004270	Fabiomassimo Dell'Orco	1964	\N	executive,producer,production_manager	tt8106534,tt0384766,tt1608290,tt0116209
nm0004271	Paul Curtis	1970	\N	visual_effects,producer,cinematographer	tt2716482,tt0120738,tt0134847,tt12614000
nm0004272	Paul Hipp	1963	\N	actor,composer,writer	tt0119668,tt0119094,tt0103759,tt0104714
nm0004273	Joel Kramer	1957	\N	stunts,assistant_director,actor	tt2820852,tt0093260,tt0093773,tt1856101
nm0004274	Martijn Veltman	\N	\N	camera_department,director,writer	tt2771372,tt0331610,tt0996979,tt0164974
nm0004275	Steven Wren	\N	\N	assistant_director,location_management,producer	tt0109178,tt0116723,tt0084867,tt0238035
nm0004276	Peter Menich	\N	\N	visual_effects,miscellaneous,animation_department	tt0120053,tt0120738,tt0377062,tt0159273
nm0004277	Adam Belanoff	1962	\N	producer,writer,miscellaneous	tt1936532,tt0458253,tt0115144,tt0092455
nm0004278	Terry Chapman	\N	\N	special_effects,miscellaneous	tt1440129,tt0796366,tt1951265,tt1951266
nm0004279	Liz Radley	\N	\N	visual_effects,camera_department,miscellaneous	tt0111280,tt0117731,tt0119654,tt0106977
nm0004280	Chris Blackwood	1972	\N	stunts,actor	tt0163025,tt0120157,tt0120902,tt0119432
nm0004281	Stephen Butcher	1946	\N	director,producer,actor	tt0086699,tt0053494,tt1382578,tt0074035
nm0004282	Anne Francis	1930	2011	actress,soundtrack,archive_footage	tt0049223,tt0062994,tt0047849,tt0059678
nm0004283	Sharon Farber	\N	\N	composer,music_department,producer	tt10410506,tt0069658,tt0256394,tt4177080
nm0004284	Cristine Rose	1951	\N	actress,archive_footage	tt0207201,tt0813715,tt0092455,tt0364845
nm0004285	Oak O'Connor	\N	\N	production_manager,producer,assistant_director	tt0159922,tt0183280,tt0115674,tt0448156
nm0004286	Clifton Collins Jr.	1970	\N	actor,producer,director	tt0796366,tt0379725,tt0181865,tt0765010
nm0004287	Alex Thomson	1929	2007	camera_department,cinematographer,visual_effects	tt0116477,tt0089469,tt0082348,tt0120053
nm0004288	Jeff Lass	\N	\N	composer,music_department,producer	tt0099422,tt2066176,tt0106644,tt0109987
nm0004289	Bryan Handy	\N	\N	actor,miscellaneous	tt2989692,tt0412253,tt5632318,tt0203078
nm0004290	Margaret Booth	1898	2002	editor,editorial_department,producer	tt0026752,tt0074937,tt0083564,tt0070903
nm0004291	Nargis	1929	1981	actress,archive_footage	tt0050188,tt0156923,tt0041161,tt0141441
nm0004292	Raj Kapoor	1924	1988	actor,producer,director	tt0066070,tt0058547,tt0084532,tt0152139
nm0004293	Matt Bellner	1969	\N	script_department,actor,assistant_director	tt0118484,tt0108778,tt1548544,tt0058796
nm0004294	Nadia Bjorlin	1980	\N	actress,producer,soundtrack	tt0058796,tt1695746,tt0780595,tt14550714
nm0004295	Michael Stearns	1940	2007	actor,archive_footage	tt0078767,tt0069768,tt0063928,tt0066905
nm0004296	Tamara Torres	1979	\N	actress,miscellaneous,make_up_department	tt0230838,tt0230030,tt0987915,tt0376720
nm0004297	Tamara Torres	\N	\N	location_management	tt0106257
nm0004298	David T. Anderson	\N	\N	art_department,camera_department	tt0181984,tt0110620
nm0004299	Jason Board	1965	\N	special_effects,art_department	tt0800080,tt0186151,tt1053424,tt0211443
nm0004300	Buddy Bregman	1930	2017	producer,director,music_department	tt0425413,tt0086425,tt0245675,tt0245633
nm0004301	Alexandra Adi	1971	\N	actress	tt0155776,tt0118887,tt0163651,tt0116168
nm0004302	Ken Kelsch	1947	2023	cinematographer,camera_department,actor	tt0103759,tt0068833,tt0899128,tt0116378
nm0004303	Gavin Hood	1963	\N	actor,director,producer	tt0468565,tt5431890,tt2057392,tt0178860
nm0004304	Jonathon E. Salzman	\N	\N	camera_department,cinematographer	tt0139654,tt0101410,tt0165854,tt0133952
nm0004305	George Miller	1943	2023	director,producer,assistant_director	tt0084296,tt0100240,tt0067408,tt0109120
nm0004306	George Miller	1945	\N	producer,writer,director	tt1392190,tt0082694,tt0079501,tt12037194
nm0004307	Shane Salerno	1972	\N	producer,writer,music_department	tt0120591,tt1596753,tt1630029,tt9174536
nm0004308	Dirk Ahner	1973	\N	writer,camera_department,director	tt0221928,tt2171897,tt0222256,tt5521594
nm0004309	Shirley Knight	1936	2020	actress,producer,soundtrack	tt0119822,tt1114740,tt0456554,tt0225071
nm0004310	Larry Fine	1902	1975	actor,writer,soundtrack	tt0027529,tt0044007,tt0056579,tt0033312
nm0004311	Danny B. Harvey	\N	\N	composer,actor,soundtrack	tt0349710,tt0144814,tt12861508,tt1104052
nm0008931	Dan Abraham	\N	\N	actor	tt2368716
nm0004312	Richard Milward	\N	\N	editor,editorial_department,miscellaneous	tt0120199,tt0166047,tt0252963,tt12749392
nm0004313	John A. Aiello	\N	\N	casting_director,casting_department	tt0117218,tt0115123,tt0115320,tt0115285
nm0004314	Angie Luckey	\N	\N	editorial_department,sound_department,actress	tt0102803,tt0098382,tt0099582,tt0311429
nm0004315	Eric Le Roy	1962	\N	actor,assistant_director,production_manager	tt0088462,tt0203579,tt0267103,tt0348080
nm0004316	Philip Judd	1953	\N	music_department,composer,actor	tt0101692,tt0099138,tt0084728,tt0219457
nm0004317	Phil Judd	1948	\N	sound_department,actor,director	tt0105488,tt0280490,tt0187636,tt0076299
nm0004318	Michel Trouillard	\N	\N	sound_department	tt0089776,tt0095710,tt0112366,tt0091429
nm0004319	Sarah Robinson	\N	\N	costume_department,art_department,miscellaneous	tt2382320,tt4777008,tt2316204,tt3659388
nm0004320	Karl Denham	\N	\N	visual_effects,director,cinematographer	tt1104001,tt0443706,tt0298814,tt0112173
nm0004321	Henning Lohner	1961	\N	composer,director,writer	tt0377109,tt0460780,tt0277941,tt0298130
nm0004322	Patrick Ramsay	\N	\N	sound_department,producer,miscellaneous	tt0374455,tt0364343,tt0758730,tt0357277
nm0004323	Jean-Luc Dinsdale	1971	\N	visual_effects,camera_department,cinematographer	tt2193021,tt0457572,tt12263384,tt0118480
nm0004324	Caroline Hutchings	1946	\N	costume_designer,costume_department,casting_director	tt0247329,tt0293020,tt0072500,tt0218000
nm0004325	Michiel Snijders	1972	\N	producer,writer,animation_department	tt4809396,tt0800164,tt29560024,tt4080760
nm0004326	Asher Ettinger	\N	\N	composer,music_department,actor	tt0178145,tt4720284,tt11996588,tt0220760
nm0004327	Rachel Dixon	\N	\N	producer	tt0217007,tt0247656,tt0247435,tt0247395
nm0004328	Lawrence R. Leritz	1962	\N	actor,miscellaneous,producer	tt6735740,tt1385826,tt10474162,tt7620960
nm0004329	Brian Bowles	\N	\N	sound_department,miscellaneous	tt1517268,tt2771200,tt1321510,tt1485796
nm0004330	David Rawlins	1935	\N	editor,editorial_department,director	tt0087262,tt0078966,tt0090685,tt0092699
nm0004331	Luke Freeborn	\N	\N	art_director,art_department,production_designer	tt1375666,tt3315342,tt1355644,tt0796366
nm0004332	Robert B. Weide	\N	\N	producer,director,writer	tt0264235,tt0175844,tt0435651,tt0364151
nm0004333	John Lanza	\N	\N	producer,miscellaneous,production_manager	tt0112047,tt0185143,tt0795430,tt1183921
nm0004334	Rekha	1954	\N	actress,music_department,miscellaneous	tt0254481,tt0083248,tt0432637,tt0151206
nm0004335	Hrithik Roshan	1974	\N	actor,assistant_director,music_department	tt1562872,tt0254481,tt1029231,tt5460276
nm0004336	Tristan Oliver	\N	\N	cinematographer,camera_department,actor	tt0432283,tt5104604,tt1623288,tt0312004
nm0004338	David Potischman	\N	\N	actor	tt0167880,tt0205940,tt0194421
nm0004339	Laura M. Grody	\N	\N	editorial_department,editor,actress	tt0107302,tt0105226,tt0111693,tt0102343
nm0004340	Brian Daly	\N	\N	writer	tt0134316
nm0004341	Diane Kirman	\N	\N	producer,casting_department,miscellaneous	tt12356844,tt1303803,tt5843878,tt28477323
nm0004342	Mitchell Rose	\N	\N	director,editor,producer	tt0304413,tt0467410,tt3223544,tt0467464
nm0004343	David S. Warner	\N	\N	camera_department,cinematographer	tt0822854,tt0758730,tt1964418,tt13207508
nm0004344	Michael Barrett	1970	\N	cinematographer,camera_department,producer	tt1637725,tt0373469,tt0308055,tt0247082
nm0004345	Richard A. Roth	1940	2017	actor,producer	tt0082869,tt0072431,tt0067803,tt0072608
nm0004346	Richard A. Roth	\N	\N	\N	tt0110724
nm0004347	Alain Goldman	\N	\N	producer,writer,actor	tt0450188,tt0364970,tt2398149,tt0228786
nm0004348	Craig Haagensen	1947	\N	camera_department,assistant_director,cinematographer	tt2402927,tt0385887,tt6111574,tt0114746
nm0004349	Kam Heskin	1973	\N	actress,soundtrack	tt0327643,tt0264464,tt0366920,tt0133152
nm0004350	Nick Pearson	\N	\N	camera_department,art_department	tt0117060,tt0213149,tt0241303,tt0096895
nm0004351	Valerie Mayhew	\N	\N	producer,miscellaneous,writer	tt0247097,tt0106179,tt0158552,tt0118509
nm0004352	Elsa Saladin	\N	\N	actress,casting_department	tt0387899,tt2325761,tt0107446,tt1780701
nm0004353	Beatrice Pettovich	\N	\N	assistant_director,location_management,camera_department	tt0335119,tt0189998,tt0254199,tt0340096
nm0004354	Caveh Zahedi	1960	\N	director,writer,producer	tt0428649,tt0324369,tt0102319,tt5097492
nm0004355	Roger Ashton-Griffiths	1957	\N	actor,writer,director	tt0944947,tt20911974,tt0088846,tt0217505
nm0004356	Lisa Jakub	1978	\N	actress,producer,archive_footage	tt0107614,tt0116629,tt0203523,tt0107529
nm0004357	Michael Roberds	1964	2016	actor,producer,writer	tt0319343,tt1231587,tt0239948,tt1122836
nm0004358	Terry Odem	\N	\N	producer,miscellaneous,actress	tt0109830,tt0117887,tt0098536,tt0108160
nm0004359	Donald Vetick	1962	\N	camera_department,art_department	tt15047880,tt0477302,tt0407304,tt0117438
nm0004360	Attila Szalay	\N	\N	cinematographer,camera_department,director	tt5071412,tt1489428,tt2406376,tt1453159
nm0004361	Roger Guyett	\N	\N	visual_effects,assistant_director,actor	tt2488496,tt1677720,tt2527338,tt0796366
nm0004362	Roshan	1917	1967	composer,music_department,actor	tt0057555,tt0350028,tt0176313,tt0044360
nm0004363	Rakesh Roshan	1949	\N	actor,producer,director	tt0254481,tt0432637,tt1029231,tt0234000
nm0004364	Merle Bertrand	\N	\N	assistant_director,camera_department,producer	tt0109363,tt0296745,tt0111361,tt0367995
nm0004365	Fred Williamson	1938	\N	actor,producer,director	tt0116367,tt0066026,tt0335438,tt0072725
nm0004366	Tom Wolfe	1930	2018	writer,actor,miscellaneous	tt0086197,tt0099165,tt1049951,tt14953612
nm0004367	Antonio L. Ballesteros	1910	\N	cinematographer,camera_department	tt0069015,tt0045713,tt0054422,tt0062834
nm0004368	Stanley Myers	1930	1993	composer,music_department,soundtrack	tt0100944,tt0093776,tt0077416,tt0418763
nm0004369	Robert Lyon Rasner	1973	\N	actor,writer,miscellaneous	tt3120280,tt0240732,tt0408524,tt0435770
nm0004370	Ron Petruccione	\N	\N	special_effects,stunts	tt0379786,tt0120611,tt0118928,tt0118880
nm0004371	Robert David Hall	1947	\N	actor,miscellaneous,soundtrack	tt0247082,tt0120201,tt0120768,tt0118437
nm0004372	Gary Graver	1938	2006	cinematographer,director,camera_department	tt0082004,tt0178845,tt0121549,tt0207568
nm0004373	Martin Fischer	\N	\N	camera_department,transportation_department,miscellaneous	tt0130827,tt1972571,tt0101458,tt0101606
nm0004374	Bruce Woloshyn	1964	\N	visual_effects,actor,editorial_department	tt0374455,tt0306841,tt0118480,tt1234721
nm0004375	John Dykstra	1947	\N	visual_effects,producer,special_effects	tt0316654,tt0145487,tt0089489,tt0076759
nm0004376	Franka Potente	1974	\N	actress,director,writer	tt0130827,tt0258463,tt0372183,tt0203632
nm0004377	Heather Scobie	\N	\N	camera_department,producer,miscellaneous	tt0177971,tt1221355,tt0155425,tt1763327
nm0004378	Jimmy Mcconnell	\N	\N	stunts,actor	tt0118615,tt0102685,tt0118688,tt0109303
nm0004379	Pierpaolo Tiano	\N	\N	composer,actor,music_department	tt1319736,tt0234137,tt1301309,tt1235543
nm0004380	Antoine de Caunes	1953	\N	actor,director,producer	tt0119307,tt2313389,tt0235606,tt0774756
nm0004381	Emma de Caunes	1976	\N	actress,director,producer	tt0453451,tt0401383,tt0354899,tt0120405
nm0004382	Jean-Jacques Vanier	\N	\N	actor	tt33504161,tt0115070,tt0781455,tt0926759
nm0004383	Michael Kamen	1948	2003	music_department,composer,actor	tt0102798,tt0112883,tt0120903,tt0093409
nm0004384	Wojciech Kilar	1932	2013	composer,music_department,soundtrack	tt0103874,tt0142688,tt0253474,tt0120382
nm0004385	Michael Broomberg	\N	\N	sound_department	tt0407304,tt0409459,tt23137904,tt4633694
nm0004386	Jerome R. Vitucci	\N	\N	sound_department,miscellaneous	tt0259711,tt0119822,tt0108162,tt0200550
nm0004387	Helmi Sirkiä	1981	\N	actress,director,writer	tt0249597,tt0247109,tt0249709,tt0249289
nm0004388	Michael Selditch	\N	\N	producer,director,writer	tt17634108,tt9139238,tt2498968,tt0358332
nm0004389	Jason Kaplan	1969	\N	sound_department,editorial_department	tt0180093,tt0243655,tt0218188,tt0210075
nm0004390	Teri Kennedy	\N	\N	producer,director,camera_department	tt0239195,tt7620590,tt0373395,tt0119819
nm0004391	Chris Dowell	\N	\N	production_manager,editorial_department,visual_effects	tt1877832,tt0120903,tt3829266,tt0376994
nm0004392	Charles Blackman	1928	2016	make_up_department	tt0058968,tt0063811,tt0053810,tt0064895
nm0004393	David J. Barker	1962	\N	special_effects,art_department	tt0453467,tt0418279,tt0458339,tt0399201
nm0004394	Mark Kadlec	\N	\N	actor,miscellaneous,assistant_director	tt0197072,tt0186454,tt0256856,tt0207100
nm0004395	Adam Scott	1973	\N	actor,producer,director	tt1266020,tt11280740,tt1073507,tt0838283
nm0004396	Steven E. Hoffman	1969	\N	producer	tt0160289,tt0249082
nm0004397	Frank Walsh	\N	\N	art_director,production_designer,art_department	tt1375666,tt0462335,tt1186830,tt1587310
nm0004398	Rodney Glenn	\N	\N	sound_department,editorial_department,miscellaneous	tt0372784,tt0088846,tt0081633,tt0073629
nm0004399	William F. Reynolds	\N	\N	art_department,set_decorator,special_effects	tt0475276,tt2199571,tt2053463,tt0098273
nm0004400	John Curcio	\N	\N	sound_department,producer,writer	tt0084237,tt2816232,tt0068588,tt0090520
nm0004401	Steven M. Stern	1967	\N	composer,music_department,soundtrack	tt1431045,tt3315342,tt0117500,tt2267998
nm0004402	Dan Wool	\N	\N	composer,music_department,sound_department	tt15090124,tt0091954,tt31030668,tt0094048
nm0004403	Paula P-Orridge	\N	\N	actress	tt0183015,tt37023270,tt1223163,tt12856970
nm0004404	Jerry D. O'Donnell	\N	\N	actor,director,writer	tt0203259,tt2741602,tt7817340,tt4270492
nm0004405	Jerry O'Donnell	\N	\N	actor,archive_footage	tt0285333,tt0119288,tt0773262,tt0112022
nm0004406	Curtis Smith	\N	\N	camera_department,actor,producer	tt1037705,tt0409847,tt1767354,tt2980592
nm0004407	Curtis Smith	1974	\N	assistant_director,miscellaneous,actor	tt9071322,tt0790712,tt3111426,tt4385888
nm0004408	Carrie Urzua	\N	\N	camera_department,miscellaneous	tt0183280,tt0208104,tt0168589,tt0217894
nm0004409	Kathy Ann Wittes	\N	\N	actress	tt1336617,tt1720621,tt3980530,tt1361787
nm0004410	Mark Neveldine	\N	\N	writer,director,producer	tt1034032,tt1121931,tt0479884,tt1075747
nm0004411	Jonathan Levit	1971	\N	actor,miscellaneous,producer	tt1670345,tt7585146,tt0790628,tt1441135
nm0004412	Ed Solomon	1960	\N	writer,script_department,producer	tt0119654,tt0096928,tt3110958,tt0304328
nm0004413	Brian Hamill	\N	\N	camera_department,actor,producer	tt0100685,tt0120184,tt0219965,tt0094737
nm0004414	Paul Barge	1890	1960	actor	tt0043386,tt0031818,tt0051624,tt0143235
nm0004415	Louis Irving	1950	2016	cinematographer,camera_department,actor	tt0117331,tt0089530,tt0113875,tt0426741
nm0004416	S.P. Balasubrahmanyam	1946	2020	music_artist,music_department,actor	tt1305797,tt0100095,tt0109117,tt1725795
nm0004417	N.T. Rama Rao	1923	1996	actor,director,writer	tt0259261,tt0259576,tt0259579,tt0254764
nm0004418	Kajol	1974	\N	actress,soundtrack,archive_footage	tt0439662,tt0172684,tt1188996,tt0248126
nm0004419	Edida Nageswara Rao	1934	2015	producer,actor	tt0086231,tt0090109,tt0079889,tt0246262
nm0004420	Larry Adlon	1967	\N	visual_effects,animation_department,composer	tt0418819,tt0144120,tt3183660,tt0363282
nm0004421	Rich Robinson	\N	\N	art_department	tt1931533,tt0117247,tt0424345,tt1389137
nm0004422	Rich Robinson	1961	\N	producer,miscellaneous	tt0450348,tt0447778,tt0407383,tt0431501
nm0004423	Gerry Robert Byrne	\N	\N	production_manager,producer,actor	tt0217505,tt0388795,tt6866266,tt1327773
nm0004424	Brian Gunter	\N	\N	camera_department,cinematographer	tt0107978,tt0838232,tt0265349,tt0482606
nm0004425	Beau Holden	1960	\N	actor,stunts,transportation_department	tt0232500,tt6966692,tt0319262,tt0120632
nm0004426	Mike McGowan	1973	\N	camera_department,cinematographer	tt0111255,tt0112442,tt0120179,tt0134273
nm0004427	Philip Wilson	\N	\N	miscellaneous	tt0104691,tt0138097,tt0107302,tt0210945
nm0004428	Jeff Rafner	\N	\N	producer,production_manager,assistant_director	tt0099582,tt0091129,tt0118715,tt0108122
nm0004429	Dharmendra	1935	\N	actor,producer,miscellaneous	tt0073707,tt0099652,tt14993250,tt0233147
nm0004430	Karan Kapoor	1962	\N	actor,camera_department,miscellaneous	tt0088335,tt0086992,tt0359614,tt0153545
nm0004431	Kunal Kapoor	1959	\N	actor,producer,production_manager	tt0101283,tt1188982,tt0086711,tt0119132
nm0004432	Prithviraj Kapoor	1906	1972	actor,director,archive_footage	tt0054098,tt0252677,tt0028626,tt0241387
nm0004433	Shammi Kapoor	1931	2011	actor,director,archive_footage	tt1839596,tt0147925,tt0231226,tt0084866
nm0004434	Shashi Kapoor	1938	2017	actor,producer,assistant_director	tt0072860,tt0080982,tt0077783,tt0101283
nm0004435	Rajesh Khanna	1942	2012	actor,music_department,producer	tt0066763,tt0068257,tt0150251,tt0154749
nm0004436	Rajesh Roshan	1955	\N	composer,music_department,actor	tt0234000,tt0254481,tt5460276,tt0113526
nm0004437	Sridevi	1963	2018	actress,music_department,producer	tt2181931,tt0097045,tt5690142,tt0091601
nm0004438	Mia Farrell	\N	\N	miscellaneous,editorial_department,executive	tt0338097,tt0101891,tt0373024,tt0169376
nm0004439	Elio Quiroga	\N	\N	producer,writer,director	tt0484273,tt11409214,tt4168132,tt8343828
nm0004440	Martin Sharpe	\N	\N	editor,editorial_department,sound_department	tt0098913,tt0115113,tt0468431,tt0111549
nm0004441	Larry Ruppel	\N	\N	animation_department,visual_effects	tt2241351,tt0365907,tt7160070,tt0099472
nm0004442	Evan Green-Hughes	\N	\N	special_effects,visual_effects,producer	tt0445922,tt0436697,tt0366777,tt0280788
nm0004443	Fiachra Trench	1941	\N	music_department,composer,writer	tt0095016,tt4139588,tt0213149,tt0236784
nm0004444	Askia Won-Ling Jacob	\N	\N	costume_department,actress,costume_designer	tt0489099,tt0775440,tt0217869,tt2802144
nm0004445	Dan Sharp	1958	\N	sound_department,producer	tt1517260,tt0120201,tt0120591,tt0453467
nm0004446	Bernard Weiser	\N	\N	sound_department,editor,editorial_department	tt1190080,tt0413300,tt3758542,tt0362227
nm0004447	Peter Lhotka	1962	\N	producer,production_manager,actor	tt0486051,tt0112023,tt0862856,tt0121200
nm0004448	Joel Hladecek	\N	\N	visual_effects,writer	tt0102975,tt0102798,tt0113243,tt0107497
nm0004449	Felix Werner	1966	\N	producer,miscellaneous,director	tt0119558,tt0443496,tt0337619,tt0109758
nm0004450	Sebastian DeVicente	\N	\N	actor	tt0246498,tt0250100,tt0450294,tt0235333
nm0004451	Thorsten Schmidt	1969	\N	director,actor,writer	tt0209282,tt0192576,tt2286220,tt5506088
nm0004452	Csaba Erös	1959	\N	sound_department,miscellaneous,actor	tt2106651,tt0297181,tt0373981,tt0192533
nm0004453	Arthur Cohn	1927	\N	producer,production_manager,executive	tt0140888,tt0372824,tt5459382,tt0291003
nm0004454	Jean Boyer	1901	1965	writer,director,music_department	tt0241303,tt0031158,tt0147863,tt0250999
nm0004455	Greg Kozikowski	\N	\N	visual_effects,miscellaneous	tt0120844,tt0111438,tt0114614,tt0103855
nm0004456	Clare Kramer	1974	\N	producer,actress,writer	tt0204946,tt0292644,tt0337953,tt0119360
nm0004457	Dirk Piepenbring	\N	\N	production_manager,location_management,assistant_director	tt0169272,tt0473587,tt0115033,tt0118529
nm0004458	Peter Heller	\N	\N	manager,producer,miscellaneous	tt0115624,tt0297037,tt0119988,tt0284135
nm0004459	Rachel Kennedy	\N	\N	actress	tt0215719,tt0108780,tt0882822
nm0004460	Rachel Davey	\N	\N	actress	tt0112431,tt0120363,tt0120623,tt0118266
nm0004461	George Verschoor	\N	\N	producer,miscellaneous,director	tt0103520,tt0388595,tt0357388,tt14691382
nm0004462	Jean-Louis Trintignant	1930	2022	actor,writer,director	tt1602620,tt0065234,tt0111495,tt0064612
nm0004463	Akkineni Nageswara Rao	1923	2014	actor,producer,miscellaneous	tt0251834,tt0259392,tt0256719,tt0253667
nm0004464	Heinz Rühmann	1902	1994	actor,producer,director	tt0053047,tt0049293,tt0053674,tt0060654
nm0004465	Sailaja S.P.	\N	\N	music_department,actress,miscellaneous	tt0252196,tt0086231,tt0249818,tt0320736
nm0004466	E.V.V. Satyanarayana	1956	2011	writer,director,producer	tt1606217,tt0245704,tt3449978,tt0282554
nm0004467	Kaikala Satyanarayana	1935	2022	actor,producer	tt0263623,tt0259261,tt0156058,tt0265799
nm0004468	J.V. Somayajulu	1928	2004	actor	tt0156135,tt0252196,tt0079889,tt11576150
nm0004469	Kota Srinivasa Rao	1944	2025	actor,music_department,soundtrack	tt1756476,tt0491772,tt0471571,tt0266727
nm0004470	Veerendranath Yandamoori	\N	\N	writer,director,script_department	tt0245995,tt0246255,tt0246008,tt17250160
nm0004471	Subhalekha Sudhakar	1960	\N	actor,miscellaneous	tt7838252,tt6485666,tt27540217,tt6836936
nm0004472	Nuthan Prasad	1945	2011	actor	tt0245995,tt0246313,tt2971464,tt0186807
nm0004473	Potti Prasad	1929	1998	actor	tt0086231,tt0155855,tt0155492,tt0249561
nm0004474	Margaret Mitchell	\N	\N	miscellaneous,location_management,producer	tt0093894,tt0086190,tt0113845,tt0325805
nm0004475	Mitch Engel	1958	\N	producer,miscellaneous,production_manager	tt4254242,tt2149175,tt1567254,tt2708480
nm0004476	Jennifer Lyne	\N	\N	location_management,writer,producer	tt10676048,tt1292566,tt10223460,tt4682786
nm0004477	Vic Goss	\N	\N	camera_department,cinematographer,art_department	tt0102057,tt0129727,tt0068673,tt0110991
nm0004478	Victor Goss	\N	\N	cinematographer,camera_department,writer	tt1522841,tt2940766,tt0098801,tt0319970
nm0004479	K.V. Mahadevan	1918	2001	composer,music_department,soundtrack	tt0317056,tt0079889,tt0192198,tt0156058
nm0004480	Joe Milazzo	1924	2010	actor	tt0100003,tt0098073,tt0102395,tt0255272
nm0004481	Cheryl Ann Nick	\N	\N	make_up_department	tt0160127,tt0145660,tt0187393,tt0118655
nm0004482	Tracy McKnight	\N	\N	music_department,miscellaneous,actress	tt1392170,tt1951264,tt1620680,tt1091722
nm0004483	Bethany Scott	\N	\N	costume_designer,costume_department	tt0116508,tt0264606,tt0231781,tt0205526
nm0004484	Johannes Weuthen	\N	\N	editor,editorial_department,sound_department	tt0130827,tt0245891,tt0362993,tt0242339
nm0004485	Kevin Mendonca	1976	\N	producer,editorial_department,miscellaneous	tt1877010,tt2930446,tt0206771,tt0120202
nm0004486	Bruno Ganz	1941	2019	actor,director,cinematographer	tt0363163,tt0093191,tt1401152,tt2193215
nm0004487	Juhi Chawla	1967	\N	actress,producer,music_department	tt0109555,tt0095936,tt0164550,tt2980648
nm0004488	Rick King	\N	\N	producer,director,writer	tt2058673,tt0102685,tt0091170,tt0092475
nm0004489	Fiona Jackson	\N	\N	stunts,producer,actress	tt3228826,tt0120889,tt3837236,tt1405794
nm0004490	Simon de La Brosse	1965	1998	actor,archive_footage	tt0101364,tt0086087,tt0090563,tt0101359
nm0004491	Amanda Kravat	1966	\N	composer,actress,soundtrack	tt0134630,tt0153866,tt0119709,tt0119098
nm0004492	Gordon Lightfoot	1938	2023	music_artist,actor,music_department	tt8946378,tt11271038,tt9683478,tt0758794
nm0004493	Ana Vaz da Silva	\N	\N	art_department,actress,production_designer	tt0105924,tt0098396,tt0084824,tt0083904
nm0004494	Michael Swiney	1959	\N	actor	tt0144214,tt0240900,tt0118437,tt1608230
nm0004495	Steve Sessions	\N	\N	composer,writer,director	tt7657024,tt5442436,tt1820664,tt0372859
nm0004496	Van Johnson	1916	2008	actor,soundtrack,archive_footage	tt0046816,tt0041163,tt0041507,tt0037366
nm0004497	Greg De Belles	\N	\N	music_department,composer,sound_department	tt0308152,tt0198021,tt0100135,tt0097028
nm0004498	Ron Hannah	\N	\N	composer	tt0186221
nm0004499	David Reynolds	\N	\N	composer,music_department,soundtrack	tt13610562,tt8521876,tt0493464,tt0425061
nm0009014	Johannes Abrahams	\N	\N	art_department	tt0130159
nm0004500	Geary McLeod	\N	\N	director,cinematographer,camera_department	tt0093409,tt0122718,tt0113845,tt0097733
nm0004501	Jirí Svoboda	1945	\N	director,writer,actor	tt0230994,tt0090028,tt0232600,tt29257762
nm0004502	Gregory M. Edgar	\N	\N	art_department,miscellaneous	tt1046173,tt1502712,tt2267998,tt5095030
nm0004503	Dietmar Fischer	\N	\N	production_manager,producer,location_management	tt13514420,tt7964852,tt1020516,tt0806910
nm0004504	Michael Heinkel	\N	\N	composer,music_department,soundtrack	tt0145531,tt0250611,tt0088060,tt0084403
nm0004505	Gina Nuccio	\N	\N	manager,music_department,sound_department	tt0948745,tt0160016,tt0163764,tt26919707
nm0004506	Patrick Allombert	\N	\N	camera_department,cinematographer,miscellaneous	tt0377080,tt0219369,tt0300594,tt0187200
nm0004507	Isidor Torkar	1960	\N	actor,miscellaneous,archive_footage	tt0907702,tt1733785,tt0109921,tt0169638
nm0004508	Red Murphy	1964	\N	transportation_department	tt0289879,tt0285531,tt0499556,tt0449487
nm0004509	Patricia Chica	\N	\N	director,writer,producer	tt4245368,tt4920098,tt32260733,tt27121929
nm0004510	Kathleen Tonkin	\N	\N	special_effects,executive,stunts	tt0281358,tt0264395,tt0315733,tt0108255
nm0004511	Timothy Kiley	\N	\N	camera_department,miscellaneous,cinematographer	tt14135146,tt0120684,tt14140550,tt0180207
nm0004512	Richard Bullock	\N	\N	producer,production_manager,miscellaneous	tt0237572,tt0366348,tt1131750,tt1694021
nm0004513	Adam Doench	\N	\N	assistant_director,miscellaneous,producer	tt0286197,tt0288936,tt0442651,tt6331398
nm0004514	Terry Maher	\N	\N	cinematographer,camera_department,writer	tt0059387,tt0059495,tt0064734,tt0054897
nm0004515	Yakov Tolchan	1901	1993	cinematographer,camera_department,archive_footage	tt21928214,tt0179977,tt21954592,tt21954676
nm0004516	Ross Adams	\N	\N	sound_department,editorial_department,actor	tt0089489,tt0120797,tt0119081,tt0093428
nm0004517	Jason Alexander	1959	\N	actor,writer,producer	tt0098904,tt0116583,tt0100405,tt0106598
nm0004518	David Copperfield	1956	\N	director,producer,actor	tt3110958,tt1670345,tt0790628,tt3895884
nm0004519	Neal Acree	1974	\N	composer,music_department,miscellaneous	tt4332152,tt0433664,tt2288037,tt0472399
nm0004520	Paul Diamond	1951	\N	writer,producer,miscellaneous	tt0101133,tt0092374,tt0083437,tt0086759
nm0004521	John Watkin	\N	\N	producer,director,writer	tt0202179,tt1432143,tt0353252,tt0280780
nm0004522	Pip Mushin	\N	\N	actor,script_department,producer	tt0105488,tt0360717,tt0359518,tt0238546
nm0004523	Aiden Shaw	1966	\N	actor,archive_footage	tt0455681,tt0189805,tt1019887,tt0345349
nm0004524	Pat Sandys	1926	2000	producer,actress,writer	tt4250224,tt0914702,tt0086287,tt0298665
nm0004525	Brenda Kincaid	\N	\N	visual_effects	tt0115571
nm0004526	Liz Ryan	\N	\N	assistant_director,production_manager,producer	tt0100685,tt0120689,tt0089853,tt0099699
nm0004527	Daniel J. Heffner	1956	\N	producer,executive,production_manager	tt11301886,tt5834874,tt13655328,tt21807222
nm0004528	Tim Ritter	\N	\N	art_department	tt0117446
nm0004529	Sarah Cawley	\N	\N	cinematographer,camera_department,actress	tt8421350,tt15483276,tt2963254,tt2372162
nm0004530	Nick Abdo	\N	\N	producer,director,writer	tt0094715,tt0093693,tt1129421,tt0101912
nm0004531	Mario Serandrei	1907	1966	editor,writer,assistant_director	tt0058946,tt0057091,tt0054067,tt0058567
nm0004532	Catherine Avril Morris	1976	\N	casting_department,actress	tt0106677,tt0251314
nm0004533	Michal Struss	1975	\N	visual_effects,animation_department,director	tt0207182,tt7662644,tt0206862,tt2251519
nm0004534	Francesca Galesi	1971	\N	miscellaneous,director,writer	tt0325109,tt1398426,tt4209788,tt0251040
nm0004535	Micheline Garant	\N	\N	production_manager,producer,miscellaneous	tt0348836,tt0132245,tt0190138,tt0283453
nm0004536	Annika Hellström	1957	\N	producer,script_department	tt13817770,tt9179230,tt1598496,tt3749338
nm0004537	Thomas Merker	1958	\N	cinematographer,camera_department,director	tt3982856,tt0294424,tt0084456,tt0190799
nm0004538	Gianfranco Barbagallo	1961	\N	producer,production_manager,miscellaneous	tt22001304,tt0345032,tt0353436,tt0429727
nm0004539	Vanessa Williams	1963	\N	actress,producer,director	tt0103919,tt0102526,tt0248655,tt0112086
nm0004540	Darren Shahlavi	1972	2015	actor,stunts,miscellaneous	tt0297181,tt1386932,tt1053424,tt0970416
nm0004541	David Blair	\N	\N	director,producer,production_manager	tt3430548,tt0209813,tt0472984,tt0122579
nm0004542	John Clement	\N	\N	camera_department,cinematographer,miscellaneous	tt0092089,tt0108228,tt0410960,tt1805351
nm0004543	Holger Seidel	\N	\N	camera_department,cinematographer	tt0100240,tt0222096,tt0110024,tt0806910
nm0004544	Derek Gleeson	\N	\N	composer,music_department	tt0235353,tt35825676,tt0119383,tt0120174
nm0004545	Gregory Middleton	\N	\N	cinematographer,camera_department,director	tt7049682,tt0944947,tt1637727,tt0439815
nm0004546	Ann Christman	\N	\N	miscellaneous,costume_department,set_decorator	tt4630562,tt0219965,tt4094724,tt1001508
nm0004547	Paul Jacobsen	1942	\N	camera_department,cinematographer,miscellaneous	tt0101272,tt0094008,tt0085255,tt0099460
nm0004548	Carl Mahakian	1926	2015	editorial_department,sound_department,producer	tt0080365,tt0056218,tt0093493,tt0099892
nm0004549	Michael McGowan	1946	2008	camera_department,cinematographer	tt0104691,tt0113501,tt0116253,tt0082089
nm0004550	Mindy Miller	1963	\N	miscellaneous,actress,producer	tt0120828,tt0120885,tt0134084,tt0167116
nm0004551	Pamela Parker	\N	\N	miscellaneous,writer	tt0191748,tt0137334,tt0114754
nm0004552	Tom Sito	1956	\N	art_department,animation_department,director	tt0113568,tt0110357,tt0126029,tt0103639
nm0004553	Florence Fouquier D'Herouel	\N	\N	make_up_department	tt0091670,tt0088297,tt0082230,tt0075932
nm0004554	Ben Hernandez Bray	\N	\N	stunts,actor,director	tt0796366,tt0371746,tt1601913,tt1055369
nm0004555	Walter Murch	1943	\N	sound_department,editor,editorial_department	tt0116209,tt0071360,tt0066434,tt0078788
nm0004556	David Lloyd Wilson	\N	\N	actor,archive_footage	tt0100318,tt0101198,tt0085032,tt1773374
nm0004557	Matt Granger	\N	\N	miscellaneous,actor,writer	tt6263850,tt0120903,tt0770828,tt1259521
nm0004558	George Jesse	1975	\N	director,editor,producer	tt0230887,tt0251735
nm0004559	Elton MacPherson	\N	\N	miscellaneous,production_manager,location_management	tt0106918,tt0117331,tt0120681,tt0166485
nm0004560	Gianfranco Pierantoni	1966	\N	producer,production_manager,miscellaneous	tt0332452,tt1320253,tt0416449,tt0816462
nm0009015	Johnson Abrahams	\N	\N	writer	tt0025313
nm0004561	Al LaVerde	\N	\N	camera_department	tt1825683,tt1843866,tt1637688,tt12593682
nm0004562	Peter Greenwood	1962	2021	actor,animation_department,special_effects	tt0325980,tt0100477,tt0251700,tt0300512
nm0004563	Bruce Birmelin	\N	\N	camera_department	tt0096256,tt0272338,tt0098382,tt0084726
nm0004564	Hema Malini	1948	\N	actress,producer,director	tt0337578,tt0073707,tt0072026,tt0082797
nm0004566	Rhoda Kaindl	1967	\N	actress	tt33265942,tt0240286,tt1008628,tt0103434
nm0004567	Jen Stivala	1975	\N	miscellaneous,producer	tt0172495,tt1480656,tt0217630,tt2023587
nm0004568	Ike Gingrich	\N	\N	actor,accountant,writer	tt0338726,tt1110046,tt0319512,tt0178030
nm0004569	Sanjay Dutt	1959	\N	actor,music_department,producer	tt0374887,tt0456144,tt1849718,tt0220832
nm0004570	Sunil Dutt	1929	2005	actor,producer,director	tt0057332,tt0067668,tt0374887,tt0063404
nm0004571	Dan van Husen	1945	2020	actor,archive_footage	tt0079641,tt0215750,tt3127824,tt1895315
nm0004572	Dominik Podbielski	1982	\N	actor	tt2055730,tt0218094
nm0004573	Paul Landres	1912	2001	director,editor,editorial_department	tt0051150,tt0052131,tt0043843,tt0039339
nm0004574	Paul Landers	1964	\N	actor,composer,writer	tt0116922,tt0295701,tt1937390,tt0300140
nm0004575	Francis Creighton	1972	\N	actor	tt0100142,tt0109219
nm0004576	Sobhan Babu	1937	2008	actor	tt0269398,tt1865426,tt0155188,tt0263623
nm0004577	David E. West	\N	\N	cinematographer,camera_department,producer	tt2072934,tt0284336,tt14251152,tt1977508
nm0004578	David J. West	\N	\N	cinematographer,director	tt0133004,tt0186133,tt0170726,tt0415067
nm0004579	Vidyasagar	1963	\N	composer,music_department,actor	tt10579952,tt1034053,tt1740549,tt0375705
nm0004581	Harry Gregson-Williams	\N	\N	composer,music_department,producer	tt9218128,tt3659388,tt0126029,tt0328107
nm0004582	Jeff Danna	1964	\N	composer,music_department,soundtrack	tt7146812,tt31038430,tt0318627,tt0144117
nm0004583	Gary Frutkoff	\N	\N	production_designer,art_department,actor	tt0112857,tt0099365,tt0120780,tt0465602
nm0004584	David Melito	\N	\N	miscellaneous,art_department,producer	tt2649554,tt1981128,tt0806203,tt0465602
nm0004585	Carolyne Chauncey	\N	\N	editorial_department,editor	tt0289992,tt0101605,tt0107207,tt0116250
nm0004586	Byron Werner	\N	\N	cinematographer,camera_department,producer	tt0783640,tt1922685,tt2071590
nm0004587	Byron Werner	\N	\N	visual_effects,animation_department,miscellaneous	tt0343818,tt0253754,tt0099653,tt0084827
nm0004588	Kerry Phillips	\N	\N	special_effects,camera_department,actor	tt0298814,tt3829266,tt0417148,tt0499556
nm0004589	Matt Farell	1967	\N	visual_effects,animation_department	tt0133093,tt0120685,tt1392190,tt2015381
nm0004590	Wade Eastwood	\N	\N	stunts,director,assistant_director	tt9603212,tt4912910,tt7975244,tt1631867
nm0004591	John Fasano	1961	2014	writer,producer,director	tt0282209,tt0099044,tt0176269,tt0108358
nm0004592	Robert Israel	1963	\N	composer,music_department,producer	tt0017925,tt0015324,tt0006206,tt0016039
nm0004594	Jérôme Savary	1942	2013	writer,miscellaneous,actor	tt0072984,tt0069819,tt0368937,tt0368869
nm0004595	Stephen P. Robinson	\N	\N	sound_department,music_department	tt14856980,tt1477834,tt1663202,tt1596343
nm0004596	Steve Binder	1932	\N	producer,director,writer	tt0331188,tt2763050,tt0075582,tt0283516
nm0004597	Adam Weissman	1958	\N	director,producer,writer	tt11853378,tt3596174,tt0972534,tt0415463
nm0004598	Kas Braganza	\N	\N	assistant_director,production_manager,location_management	tt7011370,tt23576878,tt14502758,tt6538034
nm0004599	Tricia Cameron	\N	\N	make_up_department	tt0425112,tt0311429,tt0293508,tt0120347
nm0004600	Alberto Basail	1938	2000	cinematographer,director,actor	tt0182035,tt0106989,tt0178643,tt0098732
nm0004601	LaNessa Phearson	1961	\N	sound_department	tt0181875,tt0145660,tt0120684,tt0116130
nm0004602	Elenie Mansalis	\N	\N	assistant_director,production_manager,producer	tt0265208,tt0283111,tt3205802,tt2693776
nm0004603	Warren Bennett	1962	\N	composer,music_department,actor	tt2872718,tt0091853,tt0166458,tt2349144
nm0004604	Bruce Swift	1952	\N	camera_department,miscellaneous	tt0095742,tt0093629,tt0097981,tt0104922
nm0004605	Joe Virzi	\N	\N	casting_department,actor,miscellaneous	tt0145487,tt0413300,tt0316654,tt0270980
nm0004606	Dafydd Arwyn Jones	\N	\N	assistant_director,production_manager,producer	tt0485301,tt0108836,tt0498330,tt0119960
nm0004607	Markus Wade	1966	\N	sound_department,actor	tt0489099,tt0120903,tt0211443,tt0290095
nm0004608	Kevin Speckmaier	\N	\N	assistant_director,director,writer	tt0267749,tt0281432,tt6214928,tt0108330
nm0004609	Edward Nassour	1947	\N	editor,editorial_department,production_manager	tt0083437,tt0081859,tt0046593,tt0090547
nm0004610	Karen Gaviola	\N	\N	producer,director,assistant_director	tt1190634,tt2403776,tt1520211,tt10623646
nm0004611	Sandy Collora	1968	\N	producer,special_effects,director	tt1270291,tt0115571,tt0374526,tt0120655
nm0004612	Tómas Gislason	1961	\N	editor,writer,director	tt0219876,tt0087280,tt0252526,tt0253454
nm0004613	Dean Okrand	1951	\N	sound_department	tt1442437,tt0125622,tt0093507,tt0089885
nm0004614	Ron Arnold	\N	\N	sound_department,composer,miscellaneous	tt0369179,tt0320970,tt14369056,tt0094540
nm0004615	Dick Smith	1922	2014	make_up_department,miscellaneous,special_effects	tt0070047,tt0080360,tt0086879,tt0081455
nm0004616	John 'Bud' Cardos	1929	2020	actor,stunts,transportation_department	tt0209144,tt0076271,tt0193288,tt0274812
nm0004618	Paul Robert Langdon	1988	\N	actor	tt0112178,tt0152588,tt0252019,tt0115320
nm0004619	Scott Garrett	1959	\N	art_department,actor	tt0119094,tt0120461,tt0111143,tt0327850
nm0004620	Sam Hurwitz	\N	\N	producer,miscellaneous,director	tt33034210,tt0103893,tt2501370,tt0458275
nm0004621	Paul Schneider	\N	\N	director,producer	tt0096542,tt0112022,tt1070886,tt0098826
nm0004622	Alfred F. Woodley	1969	\N	actor,writer,director	tt0475394,tt3453064,tt27630806,tt0955353
nm0004623	Thomas Morris	1966	\N	actor,writer	tt0963178,tt0375154,tt0108052,tt0808151
nm0004624	Eddie Mui	\N	\N	actor,producer,writer	tt0187078,tt2075259,tt2533024,tt0493406
nm0004625	Daniel Gélin	1921	2002	actor,writer,director	tt0049470,tt0052130,tt0048413,tt0122412
nm0004626	Kareena Kapoor	1980	\N	actress,music_department,make_up_department	tt1093370,tt1187043,tt0488414,tt1562871
nm0004627	Michael Lange	1950	\N	director,producer,assistant_director	tt8741582,tt0976014,tt0098878,tt0106179
nm0004628	Sönke Hansen	\N	\N	camera_department,cinematographer,director	tt1951266,tt1951265,tt1371111,tt1186367
nm0004629	Don Dunn	\N	\N	producer,production_manager,miscellaneous	tt14490706,tt3846674,tt8324422,tt21057450
nm0004630	A. Kodandarami Reddy	1950	\N	director,writer,actor	tt0246313,tt0245980,tt0245731,tt0246144
nm0004631	Seeta Rama Anjaneyulu Chilakalapudi	1907	1963	actor,music_department	tt0155091,tt0262075,tt0255824,tt0246139
nm0004632	Andrea Powell	\N	\N	actress	tt8634332,tt1673434,tt1731141,tt4229954
nm0004633	Mark A. Lewis	\N	\N	camera_department,miscellaneous	tt0103772,tt0182789,tt0114852,tt0480242
nm0004634	Ann Kindberg	\N	\N	producer,production_manager,assistant_director	tt0972412,tt3315386,tt0086927,tt5296406
nm0004635	Catrine McGregor	\N	\N	casting_director,producer,writer	tt0097474,tt0171606,tt0297120,tt6135014
nm0004636	Glenn S. Gainor	\N	\N	production_manager,producer,actor	tt1632708,tt0822847,tt1621045,tt1135084
nm0004637	Harry Keramidas	1940	\N	editor,editorial_department,sound_department	tt0088763,tt0113492,tt0118884,tt0096874
nm0004638	Bac DeLorme	\N	\N	assistant_director,producer,director	tt0477348,tt0120591,tt1951265,tt1951266
nm0004639	Marc Forget	\N	\N	actor,writer,producer	tt1950186,tt2249007,tt0203259,tt0106052
nm0004640	Mark Forget	\N	\N	actor	tt0115832
nm0004641	Kevin O'Hara	1969	\N	miscellaneous,actor,writer	tt0106308,tt0292255,tt0104115,tt0109838
nm0004642	Joseph Maurer	\N	\N	producer,writer,miscellaneous	tt0985040,tt0239935,tt0232676,tt0120497
nm0004643	D. Joanne Malo	\N	\N	assistant_director,miscellaneous,camera_department	tt5719748,tt0165710,tt2226597,tt0273435
nm0004644	Paolo deGuzman	1969	\N	visual_effects,animation_department,art_department	tt0183523,tt0253556,tt0137523,tt1446192
nm0004645	Antonio Sabato Jr.	1972	\N	actor,producer,director	tt0120609,tt0383010,tt1336621,tt0329589
nm0004646	Antonio Sabato	1943	2021	actor,miscellaneous,archive_footage	tt0060472,tt0089104,tt0072590,tt0202570
nm0004647	Carroll Baker	1931	\N	actress,archive_footage	tt0048973,tt0099938,tt0049261,tt0051411
nm0004648	Clark Hayes	\N	\N	actress	tt0120663,tt0118717,tt0241383
nm0004649	Clark Hayes	\N	\N	sound_department	tt0105215,tt0101502,tt0100588,tt0104402
nm0004650	Marisa Paredes	1946	2024	actress,miscellaneous,archive_footage	tt0185125,tt1189073,tt0103030,tt0113083
nm0004651	Pamela Stahl	1976	\N	miscellaneous,art_department,location_management	tt0215458,tt0157030,tt0185442,tt0320668
nm0004652	Hal Kessler	\N	\N	producer,miscellaneous,executive	tt10621250,tt9185066,tt1190074,tt0124555
nm0004653	Ann Carli	\N	\N	producer,writer,music_department	tt0275022,tt0460792,tt12305436,tt0222851
nm0004654	Nicolas Gessner	1931	2023	director,writer,assistant_director	tt0074806,tt0176390,tt0098154,tt0061410
nm0004655	Salik Silverstein	\N	\N	director,actor,writer	tt0117786,tt0313726,tt5159348,tt0322458
nm0004656	James Joyce	1882	1941	writer,miscellaneous,soundtrack	tt0092843,tt7322224,tt0305570,tt1314953
nm0004657	Rocco Salata	1970	\N	actor,miscellaneous,cinematographer	tt3202890,tt0119336,tt1462808,tt0490080
nm0004658	James Jacobson	\N	\N	music_department,composer,miscellaneous	tt0244244,tt0265709,tt0304746,tt0386799
nm0004659	Dic Jones	1934	2009	producer,production_manager	tt0179443,tt0190899,tt0210357,tt0246353
nm0004660	Rajkumar	1928	2006	actor,music_department,producer	tt0233270,tt1401730,tt0245694,tt0282112
nm0004661	Marco Marinangeli	\N	\N	composer,music_department,soundtrack	tt0190138,tt0306841,tt0118886,tt0111191
nm0004662	Peter Myslowski	1956	\N	camera_department	tt1562871,tt0121766,tt0121765,tt0120915
nm0004663	Suella Kennedy	\N	\N	visual_effects,producer,writer	tt0114898,tt0101393,tt0096874,tt0102057
nm0004664	Sally Eccleston	\N	\N	camera_department,director,miscellaneous	tt0238380,tt1051906,tt1131724,tt0360717
nm0004665	Wolfgang Wesemann	\N	\N	camera_department,cinematographer,art_department	tt0280609,tt4005402,tt0335119,tt0131646
nm0004666	Learan Kahanov	\N	\N	cinematographer,producer,writer	tt11128440,tt10732104,tt3501074,tt10327830
nm0004667	Nikhil Kamkolkar	\N	\N	director,writer,actor	tt33000419,tt28751287,tt13807096,tt35884942
nm0004668	Kevin Cooney	1945	\N	actor	tt0295178,tt0145660,tt0250494,tt0118798
nm0004669	Laura Albert	\N	\N	stunts,actress,casting_department	tt0840361,tt1586680,tt0317740,tt7942796
nm0004670	Heath Banks	\N	\N	miscellaneous,production_manager,producer	tt0120903,tt0356618,tt0329717,tt0199725
nm0004671	Amy Lyndon	\N	\N	actress,director,writer	tt1657081,tt1176095,tt0805669,tt0364845
nm0004672	Fred V. Merrick	1899	1983	assistant_director,writer,director	tt3706170,tt0026326,tt0028300,tt0018344
nm0004673	Julie Mannix	\N	\N	actress,miscellaneous,archive_footage	tt0076000,tt0068135,tt0075357,tt0107025
nm0004674	Susan McNamara	\N	\N	production_manager,miscellaneous,producer	tt0437086,tt1464540,tt11271038,tt3397884
nm0004675	Phil Alden Robinson	1950	\N	writer,director,producer	tt0097351,tt0105435,tt0164184,tt0213668
nm0004676	Antonio Machado	1875	1939	writer,soundtrack	tt0039577,tt0041324,tt0107435,tt0044819
nm0004677	Ivan Rogers	1954	2010	actor,producer,writer	tt0125029,tt0245904,tt0094917,tt0190846
nm0004678	Paul Maibaum	\N	\N	cinematographer,camera_department,director	tt1124373,tt5580540,tt7053188,tt2177489
nm0004679	Serge Colbert	1967	\N	composer,soundtrack	tt0201485,tt0196723,tt0277944,tt1267314
nm0004680	Ari Wise	\N	\N	composer,music_department,sound_department	tt0222568,tt0135067,tt0160277,tt0388535
nm0004681	Chad Waters	\N	\N	special_effects,make_up_department,miscellaneous	tt0167190,tt0133152,tt0119654,tt1411250
nm0004682	C. Cory M. McCrum-Abdo	1949	\N	editorial_department,producer,production_manager	tt0076759,tt0164212,tt1112782,tt0420223
nm0004683	Bry Thomas Sanders	1968	\N	camera_department,cinematographer,producer	tt4209090,tt6432466,tt14309446,tt5011296
nm0004684	Ken Blakey	1947	\N	cinematographer,camera_department,director	tt0275170,tt0896533,tt6330132,tt0783565
nm0004685	Sheila Curran Bernard	\N	\N	writer,producer,director	tt0092999,tt2231299,tt0254916,tt1773294
nm0004686	Malcolm Xerxes	1965	2005	actor,stunts	tt0284978,tt0318627,tt0207919,tt0193866
nm0004687	Elaine C. Andrianos	\N	\N	visual_effects,editorial_department,miscellaneous	tt1877832,tt0078346,tt0120157,tt2250912
nm0004688	Gina Marie Ome	\N	\N	costume_department	tt0372784,tt0164181,tt0452594,tt0119738
nm0004689	Frédéric Forestier	1969	\N	director,writer,actor	tt0463872,tt6286630,tt3410528,tt32192665
nm0004690	Marc Rizzo	\N	\N	production_designer,art_director,actor	tt0208017,tt0110136,tt0171135,tt0112960
nm0004691	Aaliyah	1979	2001	music_artist,actress,composer	tt0165929,tt0238546,tt0118998,tt0118617
nm0004692	Mark Addy	1964	\N	actor,music_department,producer	tt0119164,tt0183790,tt0944947,tt0955308
nm0004693	Lou Adler	1933	\N	producer,music_department,miscellaneous	tt0078446,tt0073629,tt0090329,tt0120890
nm0004694	Christina Aguilera	1980	\N	music_artist,actress,composer	tt1839337,tt1126591,tt0203009,tt4877122
nm0004695	Jessica Alba	1981	\N	actress,producer,cinematographer	tt0120667,tt0401792,tt0486576,tt0985694
nm0004696	Buzz Aldrin	1930	\N	actor,miscellaneous,camera_department	tt1399103,tt1872220,tt8760684,tt0898266
nm0004697	Erika Alexander	1969	\N	actress,producer,director	tt5052448,tt0106056,tt10310096,tt0453467
nm0004698	Kim Alexis	1960	\N	actress,archive_footage	tt0120701,tt0101069,tt0083399,tt0112006
nm0004699	Lucky Ali	1958	\N	music_artist,actor,music_department	tt0234000,tt3148502,tt0332766,tt0294662
nm0004700	Tatyana Ali	1979	\N	actress,producer,soundtrack	tt0098800,tt0155776,tt0069658,tt0385726
nm0004701	Marcus Allen	1960	\N	actor,producer,soundtrack	tt5503686,tt0436754,tt0115101,tt0285341
nm0004702	Marty Allen	1922	2018	actor,director,soundtrack	tt0065327,tt0071123,tt0096707,tt0060619
nm0004703	Alley	\N	\N	actress	tt0230043
nm0004704	Herb Alpert	1935	\N	actor,music_department,composer	tt0086006,tt1300854,tt0090329,tt5164214
nm0004705	Summer Altice	1979	\N	actress,archive_footage	tt3276924,tt0277296,tt0396269,tt0463034
nm0004706	Louie Anderson	1953	2022	actor,writer,producer	tt0112047,tt0094898,tt3468798,tt0115251
nm0004707	Mario Andretti	1940	\N	actor,producer,writer	tt0317219,tt1860353,tt0115320,tt0075774
nm0004708	Michael Andretti	1962	\N	actor,camera_department,producer	tt0132245,tt0115320,tt6758316,tt10771928
nm0004709	Giuseppe Andrews	1979	\N	actor,director,writer	tt0165710,tt0303816,tt0120789,tt0151738
nm0004710	Naveen Andrews	1969	\N	actor,archive_footage	tt0116209,tt1077258,tt0411008,tt1758595
nm0004711	Marc Anthony	1968	\N	music_artist,actor,composer	tt0328107,tt0120746,tt0458522,tt0163988
nm0004712	Fiona Apple	1977	\N	actress,composer,music_department	tt0120789,tt1478338,tt1758830,tt2699110
nm0004713	Jodi Applegate Kay	1964	\N	actress,archive_footage	tt1194173,tt4422836,tt2071645,tt0278633
nm0004714	Giorgio Armani	1934	2025	costume_department,costume_designer,producer	tt1535108,tt0468569,tt0107969,tt0088194
nm0004715	Will Arnett	1970	\N	actor,producer,writer	tt4116284,tt1490017,tt0367279,tt3949660
nm0004716	Darren Aronofsky	1969	\N	producer,writer,director	tt0138704,tt0414993,tt0180093,tt5109784
nm0004717	Peter Asher	1944	\N	music_department,actor,producer	tt0120591,tt0352277,tt0770828,tt1277953
nm0004718	Desmond Askew	1972	\N	actor,archive_footage,archive_sound	tt0139239,tt0201391,tt0454841
nm0004719	Jennifer Aspen	1973	\N	actress,producer,writer	tt0419984,tt0413573,tt0247082,tt1327801
nm0004720	Patti Austin	1950	\N	actress,music_department,soundtrack	tt1832045,tt0096316,tt0083641,tt0098319
nm0004721	Erykah Badu	1971	\N	music_artist,actress,music_department	tt0124315,tt0118747,tt7634968,tt0297037
nm0004722	Glen Ballard	1953	\N	composer,writer,producer	tt0167757,tt7322210,tt0338348
nm0004723	Tyra Banks	1973	\N	producer,writer,actress	tt0200550,tt0942385,tt0363307,tt0199725
nm0004724	Christine Baranski	1952	\N	actress,producer,soundtrack	tt0795421,tt0299658,tt2180411,tt6911608
nm0004725	Charles Barkley	1963	\N	actor,producer,writer	tt0102059,tt0124718,tt0117705,tt8009428
nm0004726	Lance Bass	1979	\N	actor,producer,writer	tt0279286,tt0257516,tt0196229,tt0942385
nm0004727	Kylie Bax	1975	\N	actress	tt0204175,tt0192071,tt0179477,tt0199650
nm0004728	Carole Bayer Sager	1944	\N	music_department,composer,soundtrack	tt0076752,tt0082031,tt0110216,tt0128853
nm0004729	Michael Beach	1963	\N	actor,producer,archive_footage	tt11712058,tt16358384,tt13207736,tt1477834
nm0004730	Orson Bean	1928	2020	actor,writer,soundtrack	tt0120601,tt0093260,tt0077687,tt3766354
nm0004731	Garcelle Beauvais	1966	\N	actress,producer,writer	tt2250912,tt1907668,tt3507138
nm0004732	Boris Becker	1967	\N	actor,archive_footage,archive_sound	tt10467632,tt3770700,tt16387572,tt1842451
nm0004733	Walter Becker	1950	2017	composer,producer,director	tt0790736,tt0429493,tt0443706,tt0181875
nm0004734	Tyson Beckford	1970	\N	actor,producer,archive_footage	tt0378109,tt0326769,tt0196229,tt0374201
nm0004735	James Van Der Beek	1977	\N	actor,music_department,writer	tt0118300,tt0139699,tt0292644,tt6390538
nm0004736	Jason Behr	1973	\N	actor,soundtrack,archive_footage	tt0201391,tt0391198,tt0372873,tt0461703
nm0004737	Shari Belafonte	1954	\N	actress,camera_department,producer	tt0085032,tt8478042,tt2435970,tt0105151
nm0004738	Catherine Bell	1968	\N	actress,producer,script_department	tt0315327,tt0452573,tt0110490,tt0112022
nm0004739	Lauralee Bell	1968	\N	actress,producer,writer	tt8079880,tt3412828,tt1577049,tt0069658
nm0004740	Bill Bellamy	1965	\N	actor,producer,writer	tt14972114,tt7942794
nm0004741	Camilla Belle	1986	\N	actress,producer,director	tt0120791,tt0455857,tt0465580,tt0443649
nm0004742	Maria Bello	1967	\N	actress,producer,writer	tt0399146,tt0318374,tt0200550,tt4786282
nm0004743	Gil Bellows	1967	\N	actor,producer,director	tt4687882,tt0111161,tt0110395,tt8594276
nm0004744	Lawrence Bender	1957	\N	producer,camera_department,actor	tt0110912,tt0266697,tt0105236,tt0361748
nm0004745	Paulo Benedeti	1975	\N	actor,writer,producer	tt0044265,tt0120890,tt0092325,tt4837396
nm0004746	Tony Bennett	1926	2023	music_artist,actor,writer	tt2281587,tt0407304,tt0060801,tt0369610
nm0004747	Wes Bentley	1978	\N	actor,producer,soundtrack	tt0169547,tt1392170,tt0816692,tt0804516
nm0004748	Julie Benz	1972	\N	actress,producer,soundtrack	tt0773262,tt1600194,tt2189221,tt0462499
nm0004749	Emily Bergl	1975	\N	actress,producer,archive_footage	tt0144814,tt0289830,tt2334873,tt0244365
nm0004750	Marilyn Bergman	1928	2022	music_department,writer,composer	tt0084805,tt0061811,tt0114319,tt0070903
nm0004751	Crystal Bernard	1961	\N	actress,soundtrack	tt0098948,tt0093996,tt0080233,tt0084938
nm0004752	Troy Byer	1964	\N	actress,writer,director	tt0337592,tt0251160,tt0118663,tt0165857
nm0009174	Edward Abrahms	\N	\N	actor,art_director	tt0075956
nm0004753	Leslie Bibb	1973	\N	actress,producer,soundtrack	tt0371746,tt1197624,tt1129427,tt1228705
nm0004754	Jessica Biel	1982	\N	actress,producer,director	tt0443543,tt1386703,tt0435705,tt0324216
nm0004755	Jason Biggs	1978	\N	actor,producer,director	tt0163651,tt0252866,tt0217630,tt1605630
nm0004756	Clint Black	1962	\N	music_artist,producer,actor	tt0110478,tt0305224,tt0107711,tt0103466
nm0004757	Selma Blair	1972	\N	actress,archive_footage	tt0139134,tt0167190,tt0253867,tt0411477
nm0004758	Asha Blake	1961	\N	actress,archive_footage	tt0337551,tt0171925,tt0211818,tt1206246
nm0004759	Kayla Blake	\N	\N	actress,miscellaneous	tt31938062,tt14403178,tt7772588,tt1844624
nm0004760	Jennifer Blanc-Biehn	1974	\N	actress,producer,director	tt0204993,tt2797642,tt3552592,tt1535616
nm0004761	Rachel Blanchard	\N	\N	actress,producer,archive_footage	tt14016500,tt2802850,tt0387764,tt0863046
nm0004762	Miko Blanco	\N	\N	miscellaneous	tt0098071
nm0004763	Mary J. Blige	1971	\N	music_artist,actress,composer	tt2396589,tt1454029,tt1336608,tt0929632
nm0004764	Charlene Bloom	\N	\N	actress	tt0187078,tt0111994,tt0115372,tt0176376
nm0004765	Andrea Bocelli	1958	\N	music_artist,actor,art_department	tt5523010,tt0122690,tt0493464,tt1839492
nm0004766	Steven Bochco	1943	2018	writer,producer,miscellaneous	tt0081873,tt0090466,tt0106079,tt0112086
nm0004767	Joseph Bologna	1934	2017	actor,writer,producer	tt2084952,tt0074205,tt0086973,tt0142342
nm0004768	Gillian Bonner	1966	\N	producer,editor,actress	tt0340937,tt2485152,tt3774134,tt2485168
nm0004769	Pat Boone	1934	\N	actor,music_department,producer	tt0052948,tt0056526,tt0102266,tt0348150
nm0004770	David Boreanaz	1969	\N	actor,producer,director	tt0162065,tt0460627,tt0242998,tt0118276
nm0004771	Da Brat	1974	\N	actress,producer,composer	tt0281364,tt0112442,tt0208003,tt0119807
nm0004772	Toni Braxton	1966	\N	music_artist,producer,actress	tt0103859,tt1520498,tt5037902,tt0278488
nm0004773	Lisa Brenner	\N	\N	actress,producer,writer	tt0187393,tt7250378,tt17371078,tt1621046
nm0004774	Angelica Bridges	1970	\N	actress,soundtrack,archive_footage	tt0132347,tt0096542,tt0170982,tt0106079
nm0004775	Todd Bridges	1965	\N	actor,producer,director	tt0077003,tt0071007,tt0075572,tt0460637
nm0004776	Pat Briggs	1964	2022	actor	tt0118586,tt0252802
nm0004777	Erin Brockovich-Ellis	1960	\N	producer,writer,actress	tt0195685,tt11237708,tt33826249,tt31462874
nm0004778	Adrien Brody	1973	\N	actor,producer,composer	tt0253474,tt2278388,tt1683526,tt8999762
nm0004779	Garth Brooks	1962	\N	music_artist,actor,producer	tt0186151,tt0126916,tt0119313,tt0123086
nm0004780	Meredith Brooks	1958	\N	actress,composer,writer	tt0120832,tt0131369,tt11057302,tt13327038
nm0004781	Bobbie Jean Brown	1969	\N	actress,archive_footage	tt0107362,tt0104135,tt0111892,tt0101615
nm0004782	Kimberly J. Brown	1985	\N	actress,miscellaneous,archive_footage	tt0305669,tt0161023,tt0173886,tt0377471
nm0004783	Ryan Browning	1974	\N	actor	tt0245891,tt0261992,tt0118276,tt0366709
nm0004784	Tony Bui	1973	\N	writer,producer,director	tt0138874,tt0229002,tt4076980,tt0202128
nm0004785	Delta Burke	1956	\N	actress,producer,soundtrack	tt0090418,tt0207201,tt0161233,tt0103399
nm0004786	Brooke Burns	1978	\N	actress,soundtrack,archive_footage	tt1327788,tt0256380,tt0096542,tt1640571
nm0004787	Saffron Burrows	1972	\N	actress,director,writer	tt7335184,tt3502172,tt0200465,tt0332452
nm0004788	Rebeccah Bush	1968	\N	actress,archive_footage	tt0046593,tt0106004,tt0096671,tt0228351
nm0004789	Amanda Bynes	1986	\N	actress,writer,soundtrack	tt0427327,tt0454945,tt0286788,tt1282140
nm0004790	Scott Caan	1976	\N	actor,writer,producer	tt0240772,tt0496806,tt0187078,tt0139699
nm0004791	Linda Lee Cadwell	1945	\N	director,actress,writer	tt0106770,tt0086011,tt0072562,tt0217243
nm0004792	Ashley Tesoro	1983	\N	actress,writer,producer	tt0092325,tt0106123,tt0175323,tt0113690
nm0004793	Monica Calhoun	1971	\N	actress,producer,writer	tt0095801,tt0168501,tt2083355,tt0119905
nm0004794	Glen Campbell	1936	2017	music_artist,actor,music_department	tt0065126,tt0149523,tt6565702,tt0149261
nm0004795	Jessica Campbell	1982	2020	actress,camera_department,producer	tt0126886,tt0104496,tt0288584,tt0256359
nm0004796	Tevin Campbell	1976	\N	actor,composer,miscellaneous	tt0113198,tt0101507,tt0120207,tt0117891
nm0004797	Bruno Campos	1973	\N	actor,soundtrack	tt0780521,tt0361217,tt0156196,tt0416658
nm0004798	Stephen J. Cannell	1941	2010	writer,producer,actor	tt0071042,tt0080289,tt0081871,tt0092484
nm0004799	Mark Canton	1949	\N	producer,production_manager,miscellaneous	tt0416449,tt1253864,tt3281796,tt1259528
nm0004800	Jessica Capshaw	1976	\N	actress,miscellaneous,soundtrack	tt0242998,tt0413573,tt9866072,tt0181689
nm0004801	Nestor Carbonell	1967	\N	actor,director,writer	tt0468569,tt1345836,tt0411008,tt2188671
nm0004802	Linda Cardellini	1975	\N	actress,producer,soundtrack	tt0267913,tt0388795,tt2395427,tt4913966
nm0004803	Amie Carey	\N	\N	actress,archive_footage	tt0120238,tt0108724,tt0129884,tt0226851
nm0004804	Drew Carey	1958	\N	producer,actor,writer	tt0111945,tt0358082,tt0810913,tt0106598
nm0004805	Adam Carolla	1964	\N	writer,producer,actor	tt0202741,tt1772341,tt0814130,tt4875844
nm0004806	Charisma Carpenter	\N	\N	actress,producer,miscellaneous	tt0162065,tt0118276,tt1320253,tt0412253
nm0004807	Gabriel Carpenter	1977	\N	actor	tt0164114,tt0200027,tt0247081,tt0108876
nm0004808	Lisa Nicole Carson	1969	\N	actress,soundtrack,archive_footage	tt0118254,tt0108757,tt0112857,tt0123964
nm0004809	Aaron Carter	1987	2022	actor,producer,director	tt0268397,tt0247638,tt0403016,tt0426550
nm0004810	Chris Carter	1956	\N	writer,producer,director	tt0106179,tt0443701,tt0120902,tt0096974
nm0004811	Deana Carter	1966	\N	actress,composer,music_department	tt4883336,tt0118617,tt1298649,tt0119313
nm0004812	Lynda Carter	1951	\N	actress,music_department,producer	tt0074074,tt0405325,tt0377818,tt7126948
nm0004813	Nancy Cartwright	1957	\N	actress,producer,miscellaneous	tt0096697,tt0462538,tt0120685,tt0386789
nm0004814	Jessica Cauffiel	1976	\N	actress,producer,writer	tt0250494,tt0381707,tt0412080,tt0372237
nm0004815	Christine Cavanaugh	1963	2014	actress,soundtrack,archive_footage	tt0115157,tt0112431,tt0116695,tt0293092
nm0004816	Lumi Cavazos	1968	\N	actress	tt0103994,tt0115734,tt0163983,tt0857255
nm0004817	Matt Cedeño	1973	\N	actor,archive_footage	tt3281796,tt3843168,tt2226342
nm0004818	Jo Champa	1968	\N	actress,producer	tt0102614,tt0112883,tt1421051,tt0112022
nm0004819	Charo	1951	\N	actress,miscellaneous,soundtrack	tt0111419,tt0078740,tt0063696,tt1819509
nm0004820	Morris Chestnut	1969	\N	actor,producer,director	tt1650554,tt0168501,tt0114781,tt0366174
nm0004821	Michael Chiklis	1963	\N	actor,producer,director	tt15431864,tt0486576,tt1038081,tt0101069
nm0004822	Melanie C	1974	\N	actress,composer,music_department	tt0120185,tt0286499,tt8106534,tt0981227
nm0004823	Scarlett Chorvat	1972	\N	actress	tt0364725,tt0218864,tt0281865,tt1196134
nm0004824	China Chow	1974	\N	actress,producer,archive_sound	tt0120609,tt0283003,tt0192111,tt0384833
nm0004825	Emmanuelle Chriqui	1975	\N	actress,producer,archive_footage	tt0295700,tt0214388,tt0960144,tt0348333
nm0004826	Helena Christensen	1968	\N	actress,miscellaneous,archive_footage	tt1365471,tt0110907,tt0424789,tt4959548
nm0004827	Eddie Cibrian	1973	\N	actor,archive_footage	tt0197182,tt0402901,tt0118484,tt2083355
nm0004828	Cisco	\N	\N	actor	tt0155877,tt0456291,tt1071161
nm0004829	Spencer Treat Clark	1987	\N	actor,producer,archive_footage	tt5574490,tt2364582,tt0327056,tt0172495
nm0004830	Tamara Clatterbuck	\N	\N	actress	tt0452046,tt0069658,tt0058796,tt0117603
nm0004831	Natalie Cole	1950	2015	actress,music_department,producer	tt0316732,tt0448115,tt0100405,tt0096061
nm0004832	Paula Cole	1968	\N	music_department,actress,composer	tt0146336,tt0230838,tt0119668,tt0120632
nm0004833	Gary Collins	1938	2012	actor,writer,miscellaneous	tt0065377,tt0080836,tt0075503,tt0059996
nm0004834	Stephen Collins	1947	\N	actor,director,soundtrack	tt0115083,tt0079945,tt0116313,tt0450259
nm0004835	Sean 'Diddy' Combs	1969	\N	music_artist,producer,actor	tt1226229,tt0120685,tt0285742,tt0172156
nm0004836	Brian Connolly	\N	\N	actor	tt0089200,tt1933790
nm0004837	Richard Cook	\N	\N	actor,writer	tt0193254,tt0284426
nm0004838	Martha Coolidge	1946	\N	director,producer,writer	tt0089886,tt0073467,tt5070062,tt0109254
nm0004839	Coolio	1963	2022	music_department,actor,composer	tt0287978,tt0112792,tt2222042,tt0119807
nm0004840	Alice Cooper	1948	\N	music_artist,actor,composer	tt0105793,tt1877832,tt6791350,tt2274648
nm0004841	Stewart Copeland	1952	\N	composer,music_department,actor	tt0086216,tt0158983,tt0102034,tt0181984
nm0004842	Billy Corgan	1967	\N	music_department,producer,actor	tt0118688,tt0117438,tt0145531,tt0368891
nm0004843	Don Cornelius	1936	2012	writer,producer,actor	tt0144528,tt0161194,tt0069890,tt0096223
nm0004844	Dan Cortese	1967	\N	actor,soundtrack,director	tt13623608,tt0118506,tt12197698,tt0321018
nm0004845	Elvis Costello	1954	\N	music_artist,actor,composer	tt0159365,tt0145660,tt0415306,tt0120185
nm0004846	Marisa Coughlan	1974	\N	actress,writer,producer	tt0240515,tt0247745,tt0133046,tt0265591
nm0004847	Walter Cronkite	1916	2009	actor,producer,editorial_department	tt0337550,tt0398443,tt0108526,tt0065314
nm0004848	Cathy Lee Crosby	1944	\N	actress,producer,executive	tt0105151,tt0072419,tt0079027,tt0217979
nm0004849	David Crosby	1941	2023	music_artist,actor,music_department	tt0101393,tt0102057,tt0105585,tt0165854
nm0004850	Alexis Cruz	1974	\N	actor,miscellaneous,archive_footage	tt0111282,tt0123324
nm0004851	Penélope Cruz	1974	\N	actress,producer,director	tt0497465,tt0259711,tt0441909,tt1298650
nm0004852	Jane Curtin	1947	\N	actress,soundtrack,archive_footage	tt0106598,tt1155056,tt0115082,tt0086742
nm0004853	Julie Cypher	1964	\N	director,assistant_director,actress	tt0111397,tt0094027,tt0816420,tt0099578
nm0004854	Billy Ray Cyrus	1961	\N	actor,writer,producer	tt1114677,tt1273678,tt0166924,tt0493093
nm0004855	Mike D	1965	\N	actor,composer,writer	tt10872600,tt0433035,tt0796366,tt2660888
nm0004856	Carson Daly	1973	\N	producer,actor,writer	tt0236348,tt0261983,tt1839337,tt0167735
nm0004857	Tim Daly	1956	\N	actor,producer,director	tt0247097,tt0264395,tt0098948,tt2027128
nm0004858	Patrika Darbo	1948	\N	actress,producer,director	tt0058796,tt0112431,tt1192628,tt0120179
nm0004859	Dana Daurey	1976	\N	actress	tt0374536,tt0177991,tt1714204,tt1218509
nm0004860	Clive Davis	1932	\N	producer,actor,writer	tt5463162,tt0800241,tt0280486,tt1659337
nm0004861	Josie Davis	\N	\N	actress,producer,writer	tt36984946,tt8323340,tt29168943,tt0305973
nm0004862	Kristin Davis	1965	\N	actress,producer,soundtrack	tt1261945,tt0159206,tt1000774,tt0790604
nm0004863	Marvin Davis	1931	2005	actor	tt0038908,tt0127416
nm0004864	Nancy Reagan	1921	2016	actress,soundtrack,archive_footage	tt0050500,tt0043852,tt0045699,tt0042786
nm0004865	Taylor Dayne	1962	\N	actress,composer,music_department	tt0335559,tt0101921,tt0306841,tt0165057
nm0004866	Amanda De Cadenet	1972	\N	actress,producer,director	tt0113101,tt0119098,tt0120620,tt0106440
nm0004867	James DeBello	1980	\N	actor,soundtrack,archive_footage	tt0165710,tt0303816,tt0257106,tt0163651
nm0004868	Majandra Delfino	1981	\N	actress,writer,producer	tt0201391,tt1055292,tt0212235,tt0120550
nm0004869	Pepa	1969	\N	producer,actress,writer	tt1431045,tt0116707,tt0115783,tt0112697
nm0004870	Paula Devicq	1965	\N	actress	tt1764183,tt1400335,tt0381798,tt1820742
nm0004871	Neil Diamond	1941	\N	music_artist,music_department,actor	tt0080948,tt0239948,tt0070248,tt10539608
nm0004872	Don Diamont	1962	\N	actor,stunts,archive_footage	tt0305224,tt0092325,tt0096542,tt0126411
nm0004873	Andy Dick	1965	\N	actor,writer,producer	tt0215129,tt0424993,tt0110950,tt0141369
nm0004874	Vin Diesel	1967	\N	producer,actor,director	tt0232500,tt2015381,tt2820852,tt0295701
nm0004875	Taye Diggs	1971	\N	actor,producer,executive	tt0299658,tt0185371,tt0294870,tt0238380
nm0004876	Dishwalla	\N	\N	actor,music_department,composer	tt0124298,tt0164181,tt0112950,tt0163651
nm0004877	Roy Edward Disney	1930	2009	producer,writer,director	tt0120910,tt0088814,tt0070422,tt0046593
nm0004878	Kevin Dobson	1943	2020	actor,director,archive_footage	tt0078638,tt0069599,tt0074899,tt0450385
nm0004879	Snoop Dogg	1971	\N	music_artist,actor,producer	tt0139654,tt1860353,tt0255819,tt0335438
nm0004880	Micky Dolenz	1945	\N	actor,producer,director	tt0060010,tt0063049,tt0373883,tt0999913
nm0004881	Plácido Domingo	1941	\N	actor,music_department,producer	tt2262227,tt0203009,tt0159876,tt1014775
nm0004882	Phil Donahue	1935	2024	actor,producer,director	tt1068634,tt0065335,tt0086827,tt0092325
nm0004883	Tate Donovan	1963	\N	actor,director,producer	tt1024648,tt0119282,tt0822854,tt4034228
nm0004884	Roma Downey	1960	\N	actress,producer,director	tt0108968,tt2245988,tt2638144,tt3210686
nm0004885	Fred Dryer	1946	\N	actor,producer,writer	tt0086734,tt0361192,tt0092854,tt0112039
nm0004886	Bill Duke	1943	\N	actor,director,producer	tt0093773,tt0088944,tt0376994,tt0242445
nm0004887	Nora Dunn	1952	\N	actress,writer,soundtrack	tt0120188,tt0405336,tt0910936,tt0315327
nm0004888	Debbe Dunning	1966	\N	actress,animation_department,miscellaneous	tt0101120,tt0312324,tt0116861,tt0859215
nm0004889	Jermaine Dupri	1972	\N	actor,composer,music_department	tt0208003,tt0112442,tt0181316,tt0281364
nm0004890	Fred Durst	1970	\N	actor,director,producer	tt7869070,tt15574270,tt0433035,tt0146675
nm0004891	John Dye	1963	2011	actor,director,producer	tt0092468,tt0108968,tt0103449,tt0087666
nm0004892	Kenneth 'Babyface' Edmonds	1959	\N	music_department,composer,actor	tt0097428,tt0112442,tt0103859,tt0114885
nm0004893	Hallie Eisenberg	1992	\N	actress,miscellaneous,soundtrack	tt0182789,tt0125454,tt0210567,tt0140352
nm0004894	Michael Eisner	1942	\N	producer,writer,executive	tt1355237,tt14850070,tt2309979,tt26242284
nm0004895	David James Elliott	1960	\N	actor,producer,director	tt3203606,tt0112022,tt2277932,tt1415244
nm0004896	Eminem	1972	\N	music_artist,actor,composer	tt0298203,tt1201167,tt1596343,tt0306685
nm0004897	John Enos III	1962	\N	actor,writer,archive_footage	tt0183649
nm0004898	Omar Epps	1973	\N	actor,music_department,producer	tt0199725,tt0412142,tt0219653,tt0104573
nm0004899	Ethan Erickson	1973	\N	actor	tt0155776,tt1783732,tt0118276,tt0395843
nm0004900	Rob Estes	1963	\N	actor,director,archive_footage	tt0101198,tt0103491,tt1225901,tt10362466
nm0004901	Esther Cañadas	1977	\N	actress,archive_footage	tt0155267,tt0257231,tt0404513,tt0236195
nm0004902	Melissa Etheridge	1961	\N	actress,composer,music_department	tt0497116,tt0113845,tt0118972,tt0111397
nm0004903	Kevin Eubanks	1957	\N	music_department,actor,composer	tt0201694,tt0460810,tt0485842,tt0126869
nm0004904	Angie Everhart	1969	\N	actress,producer,archive_footage	tt0107362,tt0810922,tt0117826,tt0297012
nm0004905	Ava Fabian	1962	\N	actress,archive_footage	tt0092925,tt0102940,tt0108763,tt0266195
nm0004906	Peter Facinelli	1973	\N	actor,director,producer	tt1324999,tt9794630,tt1190689,tt4016454
nm0004907	Donald Fagen	1948	\N	composer,actor,music_department	tt0790736,tt0429493,tt0443706,tt0181875
nm0004908	Edie Falco	1963	\N	actress,producer,casting_director	tt0141842,tt0286179,tt1190689,tt0496424
nm0004909	Joey Fatone	1977	\N	producer,actor,music_department	tt0259446,tt3760922,tt0279286,tt0204946
nm0004910	David Faustino	1974	\N	actor,writer,producer	tt0092400,tt1695360,tt1372191,tt1674771
nm0004911	Angela Featherstone	1965	\N	actress,writer,director	tt0120888,tt0118880,tt0218619,tt0120906
nm0004912	Oded Fehr	1970	\N	actor,archive_footage	tt30955673,tt5171438,tt0120616,tt0432021
nm0004913	José Feliciano	1945	\N	music_artist,composer,actor	tt0203009,tt0116282,tt0078239,tt0443706
nm0004914	Fergie	1975	\N	music_artist,music_department,actress	tt0875034,tt1077258,tt0409182,tt0479952
nm0004915	Giselle Fernandez	1961	\N	actress,producer,director	tt0120885,tt0302640,tt0359225,tt0291766
nm0004916	Conchata Ferrell	1943	2020	actress,soundtrack,archive_footage	tt0369179,tt0095690,tt0099487,tt0074958
nm0004917	Kim Fields	1969	\N	actress,director,producer	tt0078610,tt0106056,tt1586265,tt10945036
nm0004918	Danielle Fishel	1981	\N	producer,actress,director	tt0105958,tt2543796,tt2591692,tt0362511
nm0004919	Denielle Fisher Johnson	\N	\N	actress	tt1723121,tt5563324,tt21103218,tt0106123
nm0004920	Frances Fisher	1952	\N	actress,camera_department,archive_footage	tt0120338,tt0105695,tt0323033,tt9866072
nm0004921	Joely Fisher	\N	\N	actress,director,producer	tt0141369,tt0110475,tt0108761,tt4494094
nm0004922	Schuyler Fisk	1982	\N	actress,soundtrack,archive_footage	tt0273923,tt0184907,tt1972779,tt1498569
nm0004923	Vitamin C	1969	\N	music_department,actress,miscellaneous	tt0219653,tt0095270,tt0102510,tt0202470
nm0004924	Michael Flatley	1958	\N	actor,producer,director	tt8246646,tt1792584,tt0157262,tt28037103
nm0004925	Jennifer Flavin	1968	\N	producer,actress,archive_footage	tt0100507,tt5779130,tt16358384,tt6812404
nm0004926	Heidi Fleiss	1965	\N	actress,producer,miscellaneous	tt0284674,tt0112887,tt0384803,tt0435363
nm0004927	Beau Flynn	1970	\N	producer,miscellaneous	tt2126355,tt2231461,tt1397514,tt0180093
nm0004928	John Fogerty	1945	\N	music_artist,music_department,actor	tt1440129,tt0368008,tt0120611,tt0993840
nm0004929	Dave Foley	1963	\N	actor,writer,producer	tt0096626,tt0120536,tt0120623,tt0486640
nm0004930	Scott Foley	1972	\N	actor,producer,director	tt1837576,tt0134247,tt0460690,tt0134084
nm0004931	June Foray	1917	2017	actress,miscellaneous,writer	tt0120762,tt0096438,tt0131704,tt0099472
nm0004932	Betty Ford	1918	2011	actress,writer,archive_footage	tt0065314,tt0081856,tt0092642,tt0103477
nm0004933	Faith Ford	1964	\N	actress,producer,soundtrack	tt0395699,tt0094514,tt0158743,tt7798604
nm0004934	Gerald Ford	1913	2006	actor,miscellaneous,archive_footage	tt0081856,tt0304178,tt0271895,tt13465736
nm0004935	Ian Ford	\N	\N	actor	tt2554714,tt0486011,tt0082291,tt16900208
nm0004936	Ben Foster	1980	\N	actor,producer,director	tt2582782,tt0381849,tt0790712,tt3892172
nm0004937	Jamie Foxx	1967	\N	producer,actor,writer	tt0350258,tt0369339,tt1853728,tt0443489
nm0004938	Kirk Franklin	1970	\N	producer,actor,music_department	tt0477051,tt0146838,tt0116126,tt5580266
nm0004939	Joe Frazier	1944	2011	actor,soundtrack,archive_footage	tt0075148,tt0372799,tt0123221,tt9459336
nm0004940	Glenn Frey	1948	2016	actor,composer,music_department	tt0116695,tt10121392,tt0298845,tt0086960
nm0004941	Soleil Moon Frye	1976	\N	actress,producer,director	tt0086787,tt0115341,tt0110913,tt0417503
nm0004942	Daisy Fuentes	1966	\N	actress,archive_footage	tt0096542,tt0111996,tt0085049,tt0115994
nm0004943	Warren G	1970	\N	actor,music_department,composer	tt0112442,tt0302886,tt0208003,tt0109035
nm0004944	Michael Galeota	1984	2016	actor,archive_footage	tt0118264,tt0211816,tt0115916,tt0280282
nm0004945	Garbage	\N	\N	composer,actor,music_department	tt0143145,tt4154664,tt0133751,tt0117509
nm0004946	Randy Gardner	1957	\N	actor,miscellaneous,writer	tt0078622,tt1230433,tt0206184,tt0098749
nm0004947	Jennifer Gareis	1970	\N	actress,archive_footage	tt0212346,tt0216216,tt0119951,tt0265198
nm0004948	Priscilla Garita	\N	\N	actress	tt31122579,tt7820906,tt3502248,tt2226417
nm0004949	Troy Garity	1973	\N	actor,producer,miscellaneous	tt2891574,tt3628584,tt1833285,tt0324013
nm0004950	Jennifer Garner	1972	\N	actress,producer,director	tt0285333,tt0287978,tt0337563,tt0467406
nm0004951	Brad Garrett	1960	\N	actor,producer,writer	tt0115167,tt4575576,tt0398286,tt0112642
nm0004952	Cynthia Garrett	1964	\N	actress,producer	tt0423370,tt11876878,tt0820001,tt0948534
nm0004953	Steve Garvey	1948	\N	actor,archive_footage	tt0115101,tt0096542,tt0109630,tt0111094
nm0004954	Boy George	1961	\N	music_artist,actor,composer	tt0104036,tt0319262,tt4334266,tt0993840
nm0004955	Galen Gering	1971	\N	actor	tt0192917,tt0058796,tt1695746,tt34580526
nm0004956	Anna Getty	1972	\N	actress,producer,camera_department	tt0120619,tt0119548,tt0108757,tt0340147
nm0004957	Leeza Gibbons	1957	\N	producer,actress,archive_footage	tt0364782,tt0205656,tt0081857,tt1898066
nm0004958	Marla Gibbs	1931	\N	actress,miscellaneous,writer	tt0072519,tt0088470,tt0103488,tt0168337
nm0004959	Thomas Gibson	\N	\N	actor,director,writer	tt5178864,tt0118303,tt0120663,tt0192949
nm0004960	Sara Gilbert	1975	\N	producer,writer,actress	tt0105156,tt0094540,tt0100711,tt0200027
nm0004961	Vince Gill	1957	\N	music_artist,actor,music_department	tt0110478,tt0126916,tt0443453,tt0107211
nm0004962	Bill Gilman	1971	\N	visual_effects,director,writer	tt0796366,tt1856101,tt1483013,tt1650062
nm0004963	Peri Gilpin	1961	\N	actress,producer,soundtrack	tt14124236,tt0106004,tt11867884,tt10430850
nm0004964	Dale Godboldo	1975	\N	actor,producer,composer	tt2788432,tt7235466,tt2077823,tt0800369
nm0004965	Adam Goldberg	1970	\N	actor,writer,director	tt0268978,tt0120815,tt0453467,tt0106677
nm0004966	Bill Goldberg	1966	\N	actor,producer,archive_footage	tt0398165,tt0176269,tt0393685,tt5451690
nm0004967	Ricky Paull Goldin	1965	\N	actor,producer,director	tt0094761,tt0044265,tt0057731,tt0065272
nm0004968	Jaime Gomez	\N	\N	actor,producer,writer	tt0139654,tt0112740,tt0109444,tt0115285
nm0004969	Jill Goodacre	1964	\N	actress,director,archive_footage	tt0108778,tt0239028,tt0087829,tt0103382
nm0004971	Mark-Paul Gosselaar	1974	\N	actor,producer,director	tt1600199,tt0106079,tt1074206,tt5500158
nm0004972	Samaria Graham	1967	\N	actress	tt0119807,tt0177991,tt0202179,tt0115351
nm0004973	Amy Grant	1960	\N	actress,composer,producer	tt0119925,tt0356910,tt0366551,tt0110478
nm0004974	Johnny Grant	1923	2008	actor,producer,director	tt0329717,tt0241481,tt0043791,tt0049683
nm0004975	Macy Gray	1967	\N	actress,composer,producer	tt0421054,tt0139654,tt1496422,tt0145487
nm0004976	Brian Grazer	1951	\N	producer,actor,writer	tt0268978,tt0367279,tt0088161,tt0112384
nm0004977	Brian Austin Green	1973	\N	actor,producer,director	tt0098749,tt0366517,tt0078638,tt0851851
nm0004978	Adrian Grenier	1976	\N	actor,producer,director	tt0458352,tt0387199,tt1674771,tt0212720
nm0004979	David Alan Grier	1956	\N	actor,writer,producer	tt14271652,tt13018090,tt4718770,tt15481366
nm0004980	Kathy Griffin	1960	\N	actress,writer,producer	tt0115798,tt0892791,tt0115376,tt0480687
nm0004981	Matt Groening	1954	\N	writer,producer,animation_department	tt0096697,tt0149460,tt0462538,tt5363918
nm0004982	Jasmine Guy	1962	\N	actress,writer,director	tt0097481
nm0004983	Buddy Hackett	1924	2003	actor,writer,producer	tt0057193,tt0097757,tt0056262,tt0064603
nm0004984	Deidre Hall	1947	\N	actress,producer,archive_footage	tt0058796,tt0147762,tt1668079,tt0068067
nm0004985	Edd Hall	1958	\N	actor,miscellaneous,art_department	tt0103569,tt0106053,tt0092400,tt0991263
nm0004986	LisaGay Hamilton	1964	\N	actress,director,producer	tt0118437,tt0139668,tt0119396,tt0164184
nm0004987	Kirk Hammett	1962	\N	actor,composer,music_department	tt0870154,tt0120177,tt3317234,tt0302886
nm0004988	Colin Hanks	1977	\N	actor,director,producer	tt0360717,tt0273923,tt0852713,tt0880578
nm0004989	Alyson Hannigan	1974	\N	actress,producer,soundtrack	tt0163651,tt0118276,tt0460649,tt1605630
nm0004990	Angie Harmon	1972	\N	actress,director,producer	tt0313911,tt1551632,tt0098844,tt0479537
nm0004991	Hill Harper	1966	\N	actor,producer,writer	tt0395843,tt0192614,tt0124718,tt2388621
nm0004992	Andre Harrell	1960	2020	producer,music_department,actor	tt0322589,tt0108876,tt0102996,tt11447916
nm0004993	Desmond Harrington	1976	\N	actor,archive_footage	tt0773262,tt1974419,tt5011816,tt0381798
nm0004994	Emmylou Harris	1947	\N	music_artist,actress,writer	tt0388795,tt0190590,tt1212450,tt0093748
nm0004995	Mel Harris	1956	\N	actress,director,writer	tt0097637,tt0092492,tt0110763,tt0105217
nm0004996	Steve Harris	1965	\N	actor,producer	tt0118437,tt0117500,tt0422093,tt0181689
nm0004997	Melissa Joan Hart	1976	\N	actress,producer,director	tt0115341,tt0164114,tt0101065,tt4824308
nm0004998	Lisa Hartman	1956	\N	actress,music_department,producer	tt0075590,tt0078638,tt0082245,tt0088395
nm0004999	Shawn Hatosy	1975	\N	actor,director,writer	tt31938062,tt5574490,tt1299368,tt0133751
nm0005000	Tony Hawk	1968	\N	actor,producer,stunts	tt0295701,tt0355702,tt1047540,tt0097438
nm0005001	Sophie B. Hawkins	1964	\N	actress,composer,art_department	tt0114011,tt0243736,tt6566576,tt0201479
nm0005002	Isaac Hayes	1942	2008	music_artist,actor,music_department	tt0082340,tt0158983,tt0184858,tt0067741
nm0005003	Sean Hayes	1970	\N	actor,producer,writer	tt0157246,tt0312528,tt0825232,tt0383010
nm0005004	Patricia Heaton	1958	\N	actress,producer,executive	tt0115167,tt0103786,tt0117705,tt0104850
nm0005005	Hugh Hefner	1926	2017	producer,actor,miscellaneous	tt1151922,tt1411704,tt0092644,tt0082517
nm0005006	Elaine Hendrix	\N	\N	actress,producer,director	tt6128300,tt3594982,tt0120783,tt0120032
nm0005007	Jill Hennessy	\N	\N	actress,director,producer	tt0284718,tt0098844,tt0486946,tt7187044
nm0005008	Brian Henson	1963	\N	producer,actor,director	tt0104940,tt0117110,tt0091369,tt0089908
nm0005009	Laura Harring	1964	\N	actress,archive_footage	tt0166924,tt0330793,tt0484740
nm0005010	Lori Heuring	1973	\N	actress	tt0166924,tt1564367,tt0305224,tt0926129
nm0009335	César Abreu	\N	\N	sound_department	tt0259700
nm0005011	Faith Hill	1967	\N	music_artist,producer,actress	tt0327162,tt0213149,tt0120791,tt0110478
nm0005012	Lauryn Hill	1975	\N	music_artist,actress,composer	tt0108147,tt8722346,tt0118883,tt10696784
nm0005013	Iben Hjejle	1971	\N	actress,writer,archive_footage	tt0146882,tt1034303,tt0164756,tt0282768
nm0005014	David Hockney	1937	\N	art_department,production_designer,actor	tt0337741,tt0159876,tt0089343,tt0139011
nm0005015	Susanna Hoffs	1959	\N	actress,composer,music_department	tt0295178,tt0103893,tt1981677,tt0145660
nm0005016	Alexandra Holden	1977	\N	actress,soundtrack	tt0157503,tt0308152,tt0302640,tt2294677
nm0005017	Katie Holmes	1978	\N	actress,producer,director	tt0372784,tt0134619,tt0810913,tt0118300
nm0005018	Evander Holyfield	1962	\N	actor,producer,archive_footage	tt0162677,tt1334512,tt1661382,tt0099153
nm0005019	Bo Hopkins	1938	2022	actor,producer,archive_footage	tt0069704,tt0077928,tt0065214,tt0068638
nm0005020	Josh Hopkins	1970	\N	actor,director,producer	tt0177971,tt0119173,tt3829920,tt1441109
nm0005021	Kaitlin Hopkins	1964	\N	actress,producer,soundtrack	tt0231402,tt0119822,tt0112178,tt0106145
nm0005022	Peter Horton	\N	\N	producer,actor,director	tt7817340,tt3551796,tt0413573,tt0092492
nm0005023	Djimon Hounsou	1964	\N	actor,producer,director	tt0450259,tt2015381,tt0298845,tt0118607
nm0005024	Terrence Howard	1969	\N	actor,producer,writer	tt0410097,tt0375679,tt0371746,tt0430105
nm0005025	Traylor Howard	1966	\N	actress,soundtrack,archive_footage	tt0312172,tt0120654,tt0183505,tt0362165
nm0005026	Kelly Hu	1968	\N	actress,soundtrack,archive_footage	tt0277296,tt0097388,tt0471041,tt0290334
nm0005027	Liza Huber	1975	\N	actress	tt0192917,tt0284787,tt0138968,tt0426850
nm0005028	Kate Hudson	1979	\N	actress,producer,director	tt0181875,tt0251127,tt0901476,tt0770752
nm0005029	Oliver Hudson	1976	\N	actor,producer,miscellaneous	tt0454082,tt2463288,tt0116253,tt0263386
nm0005030	Jon Huertas	\N	\N	actor,director,writer	tt5555260,tt1219024,tt0995832,tt2006120
nm0005031	Felicity Huffman	1962	\N	actress,producer,director	tt0407265,tt0410975,tt0165961,tt0791304
nm0005032	Suzan Hughes	\N	\N	actress,producer,writer	tt0116778,tt4878970,tt0123072,tt0097876
nm0005033	Sammo Kam-Bo Hung	1952	\N	actor,stunts,producer	tt1220719,tt0085211,tt1386932,tt4431104
nm0005034	Amy Hunter	1966	\N	actress,producer,miscellaneous	tt0431197,tt0277296,tt0937375,tt0247087
nm0005035	Rachel Hunter	1969	\N	actress,producer,soundtrack	tt0437863,tt0202470,tt0800183,tt0473365
nm0005036	Gale Anne Hurd	1955	\N	producer,writer,miscellaneous	tt0088247,tt0120591,tt0090605,tt0800080
nm0005037	James Hyde	1962	\N	actor,producer,writer	tt8655736,tt0192917,tt10953370,tt9730822
nm0005038	Chrissie Hynde	1951	\N	actress,music_department,composer	tt0366548,tt0382992,tt0093428,tt0780536
nm0005039	Julio Iglesias Jr.	1973	\N	actor,soundtrack,archive_footage	tt0166943,tt1371903,tt2078446,tt1387231
nm0005040	Enrique Iglesias	1975	\N	music_artist,composer,actor	tt0285823,tt0120891,tt1231587,tt0119141
nm0005041	Laura Innes	1957	\N	actress,director,writer	tt0108757,tt0120647,tt1839683,tt1582459
nm0005042	Jason Isaacs	1963	\N	actor,producer,animation_department	tt0295297,tt0187393,tt4686844,tt11389748
nm0005043	Ray J	1981	\N	actor,producer,writer	tt0116996,tt0117603,tt0356233,tt0186804
nm0005044	Jonathan Jackson	1982	\N	actor,director,writer	tt2281375,tt0278504,tt0283084,tt0056758
nm0005045	Joshua Jackson	1978	\N	actor,producer,director	tt14351748,tt2699110,tt0118300,tt0109520
nm0005046	Shar Jackson	1976	\N	actress,producer,director	tt0119215,tt0199725,tt0115275,tt0108872
nm0005047	Jimmy Jam	1959	\N	composer,music_department,actor	tt19388788
nm0005048	Thomas Jane	1969	\N	actor,producer,director	tt0118749,tt0149261,tt0120863,tt0884328
nm0005049	Allison Janney	1959	\N	actress,producer,music_department	tt1454029,tt0467406,tt0274558,tt0427327
nm0005050	Justin Jeffre	1973	\N	actor,soundtrack,archive_footage	tt0184907,tt0048845,tt28262225,tt0380934
nm0005051	Dominique Jennings	1965	\N	actress	tt0114369,tt0118484,tt0099423,tt0118475
nm0005052	Michael Jeter	1952	2003	actor,director,soundtrack	tt0316356,tt0120689,tt0163025,tt0098790
nm0005053	Joan Jett	1958	\N	actress,music_department,composer	tt0093415,tt2015381,tt0114614,tt1677720
nm0005054	Gladise Jiminez	\N	\N	actress,producer,soundtrack	tt0327375,tt0437171,tt0108495,tt0092325
nm0005055	Billy Joel	1949	\N	music_artist,actor,composer	tt0095776,tt2704998,tt0104694,tt0981227
nm0005056	Elton John	1947	\N	music_artist,actor,music_department	tt4649466,tt2066051,tt0110357,tt0377981
nm0005057	Amy Jo Johnson	1970	\N	actress,director,writer	tt9386648,tt0134247,tt1059475,tt0113820
nm0005058	Kirsten Johnson	\N	\N	actress,director,producer	tt0120907,tt5535796,tt0109705,tt0156729
nm0005059	Magic Johnson	1959	\N	actor,producer,executive	tt1198138,tt0251640,tt0297037,tt0462160
nm0005060	Kristen Johnston	1967	\N	actress,soundtrack,archive_footage	tt0145660,tt0158622,tt0758766,tt0115082
nm0005061	Quincy Jones III	1968	\N	composer,music_department,producer	tt0139654,tt0098800,tt0107554,tt0151804
nm0005062	Chuck Jones	1912	2002	animation_department,director,writer	tt0087363,tt0078915,tt0093260,tt0198545
nm0005063	Grace Jones	1948	\N	music_artist,actress,composer	tt0090264,tt0087078,tt0118661,tt0103859
nm0005064	January Jones	1978	\N	actress,soundtrack,archive_footage	tt1270798,tt1401152,tt0804503,tt0338096
nm0005065	Quincy Jones	1933	2024	music_department,producer,composer	tt0088939,tt0061811,tt0068638,tt1877832
nm0005066	Spike Jones	1911	1965	actor,composer,soundtrack	tt0485947,tt0110099,tt0046980,tt0039951
nm0005067	Tamala Jones	1974	\N	actress,producer,soundtrack	tt4996328,tt1219024,tt0325537,tt0118750
nm0005068	Vinnie Jones	1965	\N	actor,producer,soundtrack	tt0208092,tt0120735,tt0805570,tt0376994
nm0005069	Spike Jonze	1969	\N	producer,writer,director	tt1798709,tt0120188,tt0386117,tt0120601
nm0005070	Montell Jordan	1968	\N	actor,composer,producer	tt2719848,tt1596350,tt0117108,tt9376612
nm0005071	Al Joyner	1960	\N	actor,producer	tt0107985,tt14781284,tt0117527,tt0396992
nm0005072	Naomi Judd	1946	2022	actress,producer,composer	tt0244970,tt2505818,tt0108968,tt3052440
nm0005073	Kato Kaelin	1959	\N	actor,casting_department,producer	tt0131857,tt0284674,tt3219618,tt0108495
nm0009336	Danielle Almeida Abreu	\N	\N	actress	tt0278681
nm0005074	Melina Kanakaredes	\N	\N	actress,writer,producer	tt0177991,tt0395843,tt0116908,tt0882977
nm0005075	Sabine Karsenti	1974	\N	actress,archive_footage	tt0185183,tt0166425,tt0190577,tt0114448
nm0005076	Jeffrey Katzenberg	1950	\N	producer,production_manager,writer	tt0126029,tt0166813,tt0425123,tt0120794
nm0005077	James Keach	1947	\N	actor,director,producer	tt0085995,tt0358273,tt0081071,tt1296898
nm0005078	Stacy Keach	1941	\N	actor,producer,director	tt1821549,tt0116225,tt1194173,tt0068575
nm0005079	Josh Keaton	\N	\N	actor,music_department,producer	tt0976192,tt0119282,tt5580664,tt0365498
nm0005080	Andrew Keegan	1979	\N	actor,producer	tt0147800,tt0222850,tt0116629,tt0109369
nm0005081	Mary Page Keller	1961	\N	actress,producer,writer	tt1532503,tt0120768,tt0112022,tt0275039
nm0005082	David E. Kelley	1956	\N	writer,producer,miscellaneous	tt0118437,tt3920596,tt0090466,tt0118254
nm0005083	David Kelley	\N	\N	assistant_director,miscellaneous	tt0133152,tt0149261,tt0368008,tt0106977
nm0005084	R. Kelly	1967	\N	music_artist,composer,director	tt0491587,tt0117705,tt1042567,tt0123964
nm0005085	Jamie Kennedy	1970	\N	actor,writer,producer	tt0362165,tt0120082,tt0117509,tt0328099
nm0005086	Kathleen Kennedy	1953	\N	producer,miscellaneous,executive	tt0421715,tt0107290,tt0286106,tt0083866
nm0005087	Leila Kenzle	1960	\N	actress,archive_footage	tt0309698,tt0283139,tt0103484,tt0302640
nm0005088	Joanna Kerns	1953	\N	actress,director,producer	tt0172493,tt0478311,tt0088527,tt0117882
nm0005089	Boyd Kestner	1964	\N	actor,writer,producer	tt0212985,tt0119173,tt0144214,tt0093894
nm0005090	Nerine Kidd	1959	1999	actress	tt0202245,tt0215446
nm0005091	Don King	1931	\N	actor,producer,miscellaneous	tt0118971,tt0083437,tt0086759,tt0091183
nm0005092	Larry King	1933	2021	producer,actor,writer	tt0087332,tt0120660,tt0389790,tt0106673
nm0005093	Regina King	1971	\N	actress,producer,director	tt0350258,tt7125860,tt10696784,tt0385307
nm0005094	Alex Kingston	1963	\N	actress,writer,soundtrack	tt0108757,tt0436992,tt0426883,tt1117666
nm0005095	Justin Kirk	1969	\N	actor,producer,miscellaneous	tt0318997,tt0439100,tt0207889,tt1838603
nm0005096	Chris Kirkpatrick	1971	\N	actor,producer,soundtrack	tt4534164,tt0235918,tt0201694,tt0279286
nm0005097	Bryan Kirkwood	1975	\N	actor	tt0356159,tt1308745,tt0245866,tt0281432
nm0005098	Chris Klein	1979	\N	actor,producer,soundtrack	tt0163651,tt0126886,tt0277434,tt0433400
nm0005099	Heidi Klum	1973	\N	producer,actress,writer	tt0437741,tt0327679,tt0196229,tt0366629
nm0005100	Jordan Knight	1970	\N	actor,producer,composer	tt0184907,tt3986586,tt1948070,tt1823246
nm0005101	Harmony Korine	1973	\N	director,writer,actor	tt0119237,tt0113540,tt2101441,tt6511932
nm0005102	Lindsay Hartley	1978	\N	actress,director,writer	tt16027110,tt32466551,tt0192917,tt0056758
nm0005103	Dave Koz	1963	\N	music_department,actor,composer	tt0094612,tt0104073,tt0104283,tt0805669
nm0005104	Heather Kozar	1976	\N	actress,archive_footage	tt0442738,tt0206508,tt0227972,tt0327349
nm0005105	Jane Krakowski	1968	\N	actress,soundtrack,archive_footage	tt0496424,tt0085995,tt0118254,tt0158622
nm0005106	Diana Krall	1964	\N	music_artist,actress,soundtrack	tt1152836,tt0227445,tt0313792,tt0132512
nm0005107	Lenny Kravitz	1964	\N	actor,composer,music_department	tt1392170,tt0929632,tt1951264,tt1327773
nm0005108	Ilia Kulik	1977	\N	actor	tt0210616,tt0242683,tt0312080,tt0453477
nm0005109	Mila Kunis	1983	\N	actress,producer,make_up_department	tt0947798,tt1617661,tt0800039,tt4651520
nm0005110	Ashton Kutcher	1978	\N	actor,producer,writer	tt0165598,tt0305711,tt0391304,tt1103153
nm0005111	Michelle Kwan	1980	\N	actress,producer,miscellaneous	tt0115341,tt0228769,tt1411276,tt9286908
nm0005112	LL Cool J	1968	\N	actor,producer,miscellaneous	tt0149261,tt0297284,tt0301181,tt0120694
nm0005113	Eriq La Salle	\N	\N	actor,producer,director	tt0108757,tt0094898,tt3315342,tt0265459
nm0005114	Nick Lachey	1973	\N	music_artist,actor,writer	tt0380934,tt0374536,tt1401687,tt0158552
nm0005115	Leah Lail	1965	\N	actress,archive_footage	tt0110006,tt0185431,tt0098904,tt0134269
nm0005116	Mary Lambert	1951	\N	director,writer,miscellaneous	tt0098084,tt0163676,tt2741602
nm0005117	Tina Landon	1963	\N	miscellaneous,actress,writer	tt0381707,tt0095655,tt1744570,tt0452046
nm0005118	Ali Landry	1973	\N	actress,producer,archive_footage	tt0260320,tt7599146,tt0279750,tt1814790
nm0005119	Artie Lange	1967	\N	actor,writer,producer	tt0112056,tt0474499,tt0319343,tt0120654
nm0005120	Wallace Langham	1965	\N	actor,director,writer	tt2077823,tt1311076,tt0247082,tt0103466
nm0005121	Sherry Lansing	1944	\N	producer,actress,production_manager	tt0107211,tt0093010,tt0096933,tt0066301
nm0005122	Ryan Larson	\N	\N	actress	tt0218625,tt0105701,tt1485105,tt0205610
nm0005123	Ali Larter	1976	\N	actress,producer,music_department	tt0195714,tt1198138,tt0250494,tt0309593
nm0005124	John Lasseter	1957	\N	producer,writer,miscellaneous	tt0120363,tt0120623,tt0317219,tt0114709
nm0005125	Sanaa Lathan	\N	\N	actress,producer,director	tt0199725,tt0370263,tt0437777,tt3862750
nm0005126	Matt Lauer	1957	\N	actor,archive_footage,archive_sound	tt0457400,tt1608290,tt1321860,tt1674771
nm0005127	Greg Lauren	1970	\N	actor,archive_footage	tt0118749,tt0118688,tt0112462,tt0117913
nm0005128	Lucy Lawless	1968	\N	actress,producer,director	tt0112230,tt1442449,tt0145487,tt0356150
nm0005129	Joey Lawrence	1976	\N	actor,music_department,producer	tt0101050,tt0095776,tt0111901,tt0081869
nm0005130	Sharon Lawrence	1961	\N	actress,producer,soundtrack	tt0106079,tt1586680,tt4998212,tt4419214
nm0005131	Norman Lear	1922	2023	producer,writer,production_manager	tt0066626,tt0101921,tt0074021,tt0068103
nm0005132	Heath Ledger	1979	2008	actor,director,cinematographer	tt0388795,tt0468569,tt0183790,tt0147800
nm0005133	Priscilla Inga Taylor	1971	\N	actress,producer,archive_footage	tt6090642,tt0120828,tt0264150,tt2042544
nm0005134	Jason Lee	1970	\N	actor,producer,director	tt0181875,tt0118842,tt0259711,tt0460091
nm0005135	Shannon Lee	1969	\N	producer,actress,writer	tt5743796,tt11394168,tt16277384
nm0005136	Tommy Lee	1962	\N	actor,composer,producer	tt0115624,tt0800325,tt0259711,tt0390022
nm0005137	Jane Leeves	1961	\N	actress,miscellaneous,soundtrack	tt0106004,tt1583607,tt6483832,tt0098904
nm0005138	Kristin Lehman	1972	\N	actress,producer,director	tt0296572,tt1850397,tt2443340,tt0202677
nm0005139	Mike Leigh	1943	\N	director,writer,miscellaneous	tt0117589,tt1045670,tt0107653,tt0383694
nm0005140	Eva Tamargo	1960	\N	actress,producer,writer	tt0192917,tt4125630,tt0146838,tt1843146
nm0005141	Sean Lennon	1975	\N	actor,composer,writer	tt0369735,tt1322312,tt33986138,tt3727982
nm0005142	Annie Lennox	1954	\N	music_artist,actress,composer	tt0167260,tt0096061,tt0103874,tt2368254
nm0005143	Jay Leno	1950	\N	producer,writer,actor	tt0103569,tt0106673,tt0186566,tt0118884
nm0005145	Sugar Ray Leonard	1956	\N	actor,producer,stunts	tt0964517,tt0433035,tt0297181,tt0416359
nm0005146	Lisa Leslie	1972	\N	actress,archive_footage	tt1621045,tt7634968,tt0115101,tt0103488
nm0005147	G. Gordon Liddy	1930	2021	actor,writer,miscellaneous	tt0160797,tt0221728,tt0100705,tt0086759
nm0005148	Delroy Lindo	1952	\N	actor,producer,soundtrack	tt0113161,tt9777644,tt0298814,tt0104797
nm0005149	Lisa Ling	1973	\N	producer,actress,writer	tt1862938,tt11188798,tt0123366,tt0247091
nm0005150	Tara Lipinski	1982	\N	actress,producer,set_decorator	tt0103352,tt0108968,tt0115341,tt0069658
nm0005151	Jonathan Lipnicki	1990	\N	actor,producer,writer	tt6483832,tt0116695,tt0308506,tt0164912
nm0005152	Peggy Lipton	1946	2019	actress,soundtrack,archive_footage	tt0098936,tt0062589,tt0119925,tt0105665
nm0005153	Little Richard	1932	2020	music_artist,music_department,actor	tt0093773,tt0107362,tt1424381,tt0119468
nm0005154	Lucy Liu	1968	\N	actress,director,producer	tt0266697,tt0160127,tt0299658,tt1302011
nm0005155	Desmond Llewelyn	1914	1999	actor,archive_footage	tt0113189,tt0086034,tt0079574,tt0082398
nm0005156	Eric Lloyd	1986	\N	actor,sound_department,editor	tt0111070,tt0304669,tt0116151,tt0156196
nm0005157	Jake Lloyd	1989	\N	actor,miscellaneous,archive_footage	tt0120915,tt0116705,tt0200172,tt0206113
nm0005158	Sabrina Lloyd	1970	\N	actress,writer,archive_footage	tt0165961,tt0433309,tt1258201,tt0112167
nm0005159	Tone Loc	1966	\N	actor,composer,producer	tt0113277,tt0109040,tt0120913,tt0104254
nm0005160	Lisa Loeb	1968	\N	music_artist,actress,music_department	tt0185371,tt2637294,tt0250494,tt0117998
nm0005161	Nick Loeb	1975	\N	actor,producer,writer	tt8639326,tt1259528,tt0263663,tt7037790
nm0005162	Robert Loggia	1930	2015	actor,director,miscellaneous	tt0094737,tt0116629,tt0116922,tt0086250
nm0005163	Greg Louganis	1960	\N	actor,producer,writer	tt28511620,tt1674771,tt3720434,tt0115750
nm0005164	Lyle Lovett	1957	\N	music_artist,actor,composer	tt0108122,tt0104036,tt0105151,tt0119807
nm0005165	Chad Lowe	1968	\N	actor,director,producer	tt0250797,tt0479275,tt0096635,tt1674771
nm0005166	Susan Lucci	1946	\N	actress,soundtrack,archive_footage	tt0065272,tt2446980,tt0112929,tt0087480
nm0005167	Lorna Luft	1952	\N	actress,writer,producer	tt0084021,tt0120577,tt0250581,tt0088395
nm0005168	Jamie Luner	1971	\N	actress,producer,soundtrack	tt2402061,tt0103491,tt0065272,tt0115346
nm0005169	Natasha Lyonne	1979	\N	actress,producer,writer	tt0163651,tt2372162,tt0179116,tt0165710
nm0005170	Bernie Mac	1957	2008	actor,writer,producer	tt0285341,tt0372237,tt0240772,tt0307987
nm0005171	Angus Macfadyen	1963	\N	actor,writer,director	tt0238380,tt0489270,tt0112573,tt1389137
nm0005172	Norm MacDonald	1959	2021	actor,writer,producer	tt0120654,tt0112508,tt0255798,tt0118998
nm0005173	Roma Maffia	1958	\N	actress	tt0109635,tt0150377,tt0113972,tt0361217
nm0005174	Ann Magnuson	1956	\N	actress,director,writer	tt0258000,tt0109444,tt0122718,tt0089017
nm0005175	Bill Maher	1956	\N	producer,writer,actor	tt0108897,tt0350448,tt1300854,tt1790886
nm0005176	Wendie Malick	1950	\N	actress,producer,soundtrack	tt0348333,tt0112346,tt0120917,tt0098780
nm0005177	Howie Mandel	1955	\N	actor,producer,writer	tt0103373,tt0087363,tt0099700,tt0097758
nm0005178	Barbara Mandrell	1948	\N	actress,producer,writer	tt0108968,tt0096542,tt13423326,tt0071042
nm0005179	Camryn Manheim	1961	\N	actress,producer,executive	tt0118437,tt0147612,tt0306047,tt0350261
nm0005180	Barry Manilow	1943	\N	music_artist,actor,music_department	tt0111419,tt0411477,tt0800241,tt0091790
nm0005181	Aimee Mann	1960	\N	actress,music_department,composer	tt0175880,tt0118715,tt9243946,tt0116695
nm0005182	Leslie Mann	1972	\N	actress,archive_footage	tt0478311,tt2203939,tt1758830,tt0119190
nm0005183	Pamela Mann	\N	\N	actress,archive_footage	tt0153962,tt0196522,tt0129502,tt0127863
nm0005184	Patricia Manterola	1972	\N	actress,music_department,producer	tt0124226,tt0420364,tt0811069,tt0473102
nm0005185	Marla Maples	1963	\N	actress,producer,archive_footage	tt0116253,tt0091499,tt0147612,tt0323120
nm0005186	Constance Marie	1965	\N	actress,soundtrack,archive_footage	tt0310460,tt1758772,tt0120094,tt0448694
nm0005187	Ziggy Marley	1968	\N	music_artist,music_department,actor	tt0307453,tt8521778,tt0378109,tt0343660
nm0005188	James Marsden	1973	\N	actor,soundtrack,archive_footage	tt0427327,tt0120903,tt0461770,tt0988595
nm0005189	Jason Marsden	1975	\N	actor,producer,director	tt0101205,tt0113198,tt0092359,tt0107120
nm0005190	Garry Marshall	1934	2016	writer,producer,actor	tt0104694,tt0151738,tt0100405,tt0791304
nm0005191	Paula Marshall	1964	\N	actress,camera_department,producer	tt1229401,tt0168326,tt0904208,tt0320030
nm0005192	Kellie Martin	1975	\N	actress,producer,director	tt0108757,tt0096635,tt0113198,tt0113008
nm0005193	Ricky Martin	1971	\N	music_artist,actor,composer	tt0119282,tt1322269,tt3469046,tt2788432
nm0005194	Danny Masterson	1976	\N	actor,producer,soundtrack	tt0165598,tt0219653,tt0119094,tt0106375
nm0005195	Monet Mazur	1976	\N	actress,producer	tt0132347,tt0329691,tt0243736,tt0305711
nm0005196	Paul Mazursky	1930	2014	actor,writer,director	tt0078444,tt0071598,tt0064100,tt0069808
nm0005197	Des McAnuff	1952	\N	miscellaneous,director,producer	tt0129167,tt1683003,tt0180073,tt3383040
nm0005198	Martina McBride	1966	\N	music_artist,actress,composer	tt0163187,tt0198021,tt0369436,tt0119313
nm0005199	Shalane McCall	1972	\N	actress,archive_footage	tt0077000,tt0088616,tt0086811,tt0090452
nm0005200	Paul McCartney	1942	\N	music_artist,composer,actor	tt0058182,tt0078239,tt0063823,tt9735318
nm0005201	Catherine McCord	1974	\N	actress,archive_footage	tt0350028,tt0785006,tt0873886,tt0398017
nm0005202	Eric McCormack	1963	\N	actor,producer,director	tt0157246,tt5651844,tt1714204,tt0348913
nm0005203	Mary McCormack	1969	\N	actress,producer,writer	tt0120647,tt0935095,tt0272152,tt0450385
nm0005204	Paul McCrane	1961	\N	actor,director,producer	tt0108757,tt0355853,tt0108909,tt10329042
nm0005205	Kimberly McCullough	1978	\N	director,producer,actress	tt8510382,tt0472954,tt8595140,tt6116060
nm0005206	James McDaniel	1958	\N	actor,director,producer	tt0106079,tt0104797,tt0289830,tt0363587
nm0005207	Reba McEntire	1955	\N	music_artist,actress,producer	tt0284722,tt0100814,tt0110366,tt0413895
nm0005208	Trina McGee	1969	\N	actress,writer,producer	tt0116040,tt0105958,tt0293815,tt0115685
nm0005209	Mark McGrath	1968	\N	actor,composer,soundtrack	tt0267913,tt0120890,tt0253867,tt0350028
nm0005210	Tim McGraw	1967	\N	music_artist,actor,producer	tt1964418,tt0878804,tt0390022,tt0434215
nm0005211	Danica McKellar	1975	\N	actress,producer,writer	tt0094582,tt26741429,tt1641384,tt0200276
nm0005212	Ian McKellen	1939	\N	actor,writer,producer	tt0120737,tt0120684,tt0167260,tt0114279
nm0005213	Brian McKnight	1969	\N	actor,composer,music_department	tt0203019,tt0800039,tt0144528,tt0110657
nm0005214	Sarah McLachlan	1968	\N	music_artist,actress,music_department	tt0413895,tt0120363,tt0476964,tt0141098
nm0005215	Jenny McShane	\N	\N	visual_effects,actress,producer	tt11691774,tt11242246,tt5555260,tt18412092
nm0005216	Janet McTeer	1961	\N	actress,writer,producer	tt1602098,tt9603208,tt2674426,tt0161023
nm0005217	Jayne Meadows	1919	2015	actress,writer,soundtrack	tt0101587,tt0088693,tt0043455,tt0053727
nm0005218	Tim Meadows	1961	\N	actor,writer,camera_department	tt0377092,tt0213790,tt3960412,tt0841046
nm0005219	Mike Medavoy	1941	\N	producer,actor,executive	tt0947798,tt0405676,tt0482546,tt0443706
nm0005220	Tamara Mello	1976	\N	actress,producer,sound_department	tt0160862,tt0255653,tt0202748,tt0112022
nm0005221	Christopher Meloni	1961	\N	actor,producer,director	tt0770828,tt0243655,tt0366551,tt0458481
nm0005222	Sam Mendes	1965	\N	producer,director,miscellaneous	tt8579674,tt14402146,tt0257044,tt1074638
nm0005223	Sergio Mendes	1941	2024	music_department,actor,composer	tt1436562,tt0086006,tt2357291,tt3381008
nm0005224	Alex Meneses	\N	\N	actress,producer,archive_footage	tt11006642,tt3566726,tt0115167,tt0120094
nm0005225	Jo Dee Messina	1970	\N	actress,soundtrack	tt0132245,tt0264150,tt0413099,tt0108968
nm0005226	Debra Messing	1968	\N	actress,producer,soundtrack	tt0157246,tt0372532,tt0810726,tt0278823
nm0005227	Breckin Meyer	1974	\N	actor,writer,producer	tt0215129,tt0250687,tt0101917,tt0112697
nm0005228	Ron Meyer	1944	\N	executive,archive_footage	tt7214762,tt2402179,tt9789324,tt4327328
nm0005229	Mike Meyers	\N	\N	actor	tt0069473
nm0005230	Michael Michele	1966	\N	actress,producer	tt0251127,tt0108757,tt0102526,tt0279331
nm0005231	Dash Mihok	1974	\N	actor,director,producer	tt2249007,tt0120863,tt12024308,tt0117509
nm0005232	Izabella Miko	1981	\N	actress,producer,director	tt0200550,tt0348914,tt0800320,tt5638056
nm0005233	Tangi Miller	1970	\N	actress,producer,executive	tt0134247,tt0804502,tt0455612,tt0320000
nm0005234	Donna Mills	1940	\N	actress,producer,soundtrack	tt0078638,tt0067588,tt10954984,tt6164210
nm0005235	Judson Mills	1969	\N	actor	tt0106168,tt0120742,tt0475784,tt0304584
nm0005236	Juliet Mills	1941	\N	actress,writer,soundtrack	tt0068240,tt0192917,tt0071039,tt0065326
nm0005237	Anthony Minghella	1954	2008	script_department,writer,producer	tt0134119,tt0159365,tt0116209,tt0103129
nm0005238	Beverley Mitchell	1981	\N	actress,producer,director	tt0115083,tt0432348,tt0115986,tt0323810
nm0005239	Kel Mitchell	1978	\N	actor,producer,writer	tt0132347,tt0119215,tt0115231,tt1204285
nm0005240	Moby	1965	\N	composer,music_department,actor	tt0405336,tt1458175,tt0120053,tt1194173
nm0005241	Ralf Moeller	1959	\N	actor,producer,archive_footage	tt0172495,tt1479835,tt0105698,tt0097138
nm0005242	Eleanor Mondale	1960	2011	actress,miscellaneous	tt0101775,tt0137799,tt0078558,tt0087829
nm0005243	Meredith Monroe	\N	\N	actress,archive_footage	tt0118300,tt0181689,tt1399103,tt1878870
nm0005244	Fernanda Montenegro	1929	\N	actress,soundtrack,archive_footage	tt0140888,tt14961016,tt0271383,tt0144043
nm0005245	Shemar Moore	1970	\N	actor,producer,archive_footage	tt0452046,tt0422093,tt0069658,tt0250274
nm0005246	Esai Morales	1962	\N	actor,producer,director	tt9603212,tt0093378,tt0106079,tt9603208
nm0005247	Debbi Morgan	1956	\N	actress,archive_footage	tt0119080,tt0174856,tt0065272,tt0199725
nm0005248	Mari Morrow	1968	\N	actress,producer	tt0114857,tt1464174,tt0271668,tt0431114
nm0005249	Peter Morton	\N	\N	producer	tt0486655,tt0208092,tt1083452,tt0120735
nm0005250	Fabrice Morvan	1966	\N	actor,composer,miscellaneous	tt0965381,tt0126727,tt0092348,tt0096698
nm0005251	Carrie-Anne Moss	1967	\N	actress,producer,archive_footage	tt0133093,tt0209144,tt0457572,tt0242653
nm0005252	Catherine Moss	\N	\N	actress	tt0244718
nm0005253	Elisabeth Moss	1982	\N	actress,producer,director	tt1051906,tt2756032,tt5834204,tt6857112
nm0005254	Tahj Mowry	1986	\N	actor,soundtrack,archive_footage	tt0118466,tt2177489,tt0092359,tt14309446
nm0005255	Tamera Mowry-Housley	1978	\N	actress,producer,soundtrack	tt0108927,tt0302640,tt1017465,tt0194422
nm0005256	Bridget Moynahan	1971	\N	actress,director,producer	tt0343818,tt1217613,tt2911666,tt0399295
nm0005257	Alan Mruvka	\N	\N	producer,writer,actor	tt0116848,tt0112112,tt0109723,tt0143044
nm0005258	Patrick Muldoon	1968	\N	actor,producer,writer	tt0120201,tt27775403,tt11196036,tt6722802
nm0005259	Megan Mullally	1958	\N	actress,producer,writer	tt0157246,tt3521126,tt4501244,tt2179116
nm0005260	Frankie Muniz	1985	\N	actor,producer,writer	tt0313911,tt0441796,tt0265298,tt0156812
nm0005261	Brittany Murphy	1977	2009	actress,producer,soundtrack	tt0112697,tt0305711,tt0172493,tt0298203
nm0005262	Billie Myers	1971	\N	actress,composer,music_department	tt0186975,tt0138063,tt0176579,tt0257019
nm0005263	Dave Navarro	1967	\N	music_department,producer,actor	tt0117998,tt0405336,tt0257076,tt0146675
nm0005264	Elise Neal	1966	\N	actress,producer	tt0410097,tt0120082,tt3315342,tt0119695
nm0005265	Kevin Nealon	1953	\N	actor,writer,producer	tt0072562,tt0439100,tt0116483,tt0120888
nm0005266	Craig T. Nelson	1944	\N	actor,producer,director	tt0096560,tt0317705,tt0084516,tt0356680
nm0005267	Shannon Nelson	\N	\N	actress,producer	tt0157503,tt5993740,tt2458862,tt0303140
nm0005268	Willie Nelson	1933	\N	music_artist,actor,producer	tt0377818,tt0120885,tt0145660,tt0092003
nm0005269	Corin Nemec	1971	\N	actor,producer,writer	tt14226748,tt31394126,tt0460681,tt0118480
nm0005270	Aaron Neville	1941	\N	actor,composer,writer	tt0103855,tt0117333,tt10016180,tt0106246
nm0005271	Randy Newman	1943	\N	music_artist,music_department,composer	tt0780521,tt0312172,tt0435761,tt0114709
nm0005272	Thomas Ian Nicholas	1980	\N	actor,producer,director	tt8597594,tt3576794,tt0878835,tt0292644
nm0005273	Alessandro Nivola	1972	\N	actor,producer,executive	tt8999762,tt1800241,tt6108178,tt0119094
nm0005274	Gena Lee Nolin	1971	\N	actress,soundtrack,archive_footage	tt0337851,tt0096542,tt0261492,tt0201290
nm0005275	Brandy Norwood	1979	\N	actress,music_department,producer	tt0130018,tt0115275,tt0181739,tt0128996
nm0005276	Jack Noseworthy	1964	\N	actor,archive_footage	tt2815030,tt4067076,tt0106246
nm0005277	Conan O'Brien	1963	\N	writer,producer,music_department	tt4116284,tt0106052,tt1637574,tt1670345
nm0005278	Jerry O'Connell	1974	\N	actor,producer,director	tt0092005,tt0112167,tt0257568,tt0120082
nm0005279	Carroll O'Connor	1924	2001	actor,music_department,producer	tt0066626,tt0094484,tt0078562,tt0065938
nm0005280	Rosie O'Donnell	1962	\N	writer,producer,actress	tt0104694,tt0120855,tt0108160,tt0109813
nm0005281	Jodi Lyn O'Keefe	1978	\N	actress,archive_footage	tt0160862,tt0120694,tt0202402,tt0455275
nm0005282	Mike O'Malley	1966	\N	actor,producer,writer	tt0380623,tt0765476,tt3263904,tt1327801
nm0005283	Jacqueline Obradors	\N	\N	actress,soundtrack	tt0120828,tt0230011,tt0255653,tt9484998
nm0005284	Chris Olivero	1984	\N	actor,executive	tt0756509,tt0364845,tt0247081,tt0182617
nm0005285	Ozzy Osbourne	1948	2025	music_artist,actor,music_department	tt0185431,tt0295178,tt0377981,tt0203009
nm0005286	Haley Joel Osment	1988	\N	actor,producer,soundtrack	tt0167404,tt0212720,tt0223897,tt0327137
nm0005287	Donny Osmond	1957	\N	actor,producer,writer	tt0120762,tt0175790,tt0073985,tt0077620
nm0005288	Marie Osmond	1959	\N	producer,actress,writer	tt0073985,tt0077612,tt0111877,tt0182617
nm0005289	Catherine Oxenberg	1961	\N	actress,producer,miscellaneous	tt0081856,tt0203408,tt0095488,tt0292109
nm0005290	Master P	1970	\N	actor,producer,writer	tt0329717,tt0131436,tt0337921,tt0267913
nm0005291	Erika Page White	1975	\N	actress	tt0062595,tt0115237,tt0115349,tt0058796
nm0005292	Erik Palladino	1968	\N	actor,producer,writer	tt0108757,tt1632701,tt2197797,tt0141926
nm0005293	Arnold Palmer	1929	2016	actor,archive_footage	tt0163810,tt0056897,tt11000622,tt11000630
nm0005294	Paula Jai Parker	1969	\N	actress,director,producer	tt0410097,tt0113118,tt0183649,tt0257756
nm0005295	Trey Parker	1969	\N	music_department,writer,producer	tt0121955,tt0158983,tt0124819,tt0372588
nm0005296	Tatjana Patitz	1966	2023	actress,archive_footage	tt0107969,tt0103466,tt0110907,tt0167150
nm0005297	Marnette Patterson	\N	\N	actress,producer,soundtrack	tt2179136,tt5929654,tt0109369
nm0005298	Alexander Paal	1910	1972	producer,writer,director	tt0046863,tt0046041,tt0045787,tt0041921
nm0005299	Sarah Paulson	1974	\N	actress,producer,director	tt2024544,tt8633478,tt1844624,tt6823368
nm0005300	Allen Payne	1968	\N	actor,archive_footage	tt0102526,tt0114825,tt0177971,tt0106500
nm0005301	Amanda Pays	1959	\N	actress,archive_footage	tt0097737,tt0089568,tt0092402,tt0106179
nm0005302	Austin Peck	1971	\N	actor,writer,director	tt2261391,tt0203259,tt0058796,tt0048845
nm0005303	Kimberly Peirce	1967	\N	director,producer,writer	tt0171804,tt0489281,tt1939659,tt1845296
nm0005304	Michael Penn	1958	\N	composer,soundtrack,music_department	tt1723816,tt0118749,tt0862846,tt0119256
nm0005305	Piper Perabo	1976	\N	actress,producer,archive_footage	tt0200550,tt0482571,tt6189022,tt4236770
nm0005306	Pauley Perrette	1969	\N	actress,producer,director	tt0364845,tt0181875,tt2224455,tt0328880
nm0005307	Jon Peters	1945	\N	producer,actor,make_up_department	tt1517451,tt0093260,tt0248667,tt0770828
nm0005308	Cassandra Peterson	1951	\N	actress,producer,writer	tt0095088,tt0089791,tt0262973,tt0265171
nm0005309	Joy Philbin	1941	\N	actress,soundtrack,archive_footage	tt0385307,tt0089539,tt0105001,tt0103484
nm0005310	Regis Philbin	1931	2020	actor,producer,miscellaneous	tt0185431,tt0068555,tt0385307,tt0413267
nm0005311	Busy Philipps	1979	\N	actress,producer,director	tt1001508,tt0381707,tt0866439,tt1441109
nm0005312	Gina Philips	1970	\N	actress,producer,miscellaneous	tt0263488,tt0410751
nm0005313	Bijou Phillips	1980	\N	actress,costume_department,soundtrack	tt0181875,tt0242193,tt0498353,tt0285175
nm0005314	Drew Pinsky	1958	\N	producer,podcaster,writer	tt0486946,tt0363282,tt1114705,tt0118300
nm0005315	Jeremy Piven	1965	\N	actor,producer,writer	tt0240890,tt0119229,tt0387199,tt1517489
nm0005316	Mary Kay Place	1947	\N	actress,director,writer	tt0120601,tt0074021,tt0172493,tt0085244
nm0005317	Carlos Ponce	1972	\N	actor,composer,music_department	tt1078940,tt1436562,tt3079380,tt9362930
nm0005318	Carly Pope	\N	\N	actress,producer,writer	tt1535108,tt0134619,tt0202748,tt0221218
nm0005319	Leslie Pope	1954	2020	set_decorator,art_department,art_director	tt4154796,tt1843866,tt0329575,tt1853728
nm0005320	Paulina Porizkova	1965	\N	actress,director,writer	tt0124901,tt0097500,tt0106307,tt0118127
nm0005321	Monica Potter	1971	\N	actress,producer,archive_footage	tt0844708,tt0129290,tt0387564,tt0164334
nm0005322	Sarah-Jane Potts	1976	\N	actress,producer,director	tt18930386,tt0434124,tt0452568,tt5277850
nm0005323	Paula Poundstone	1959	\N	actress,writer,producer	tt0197159,tt2096673,tt0141270,tt0298261
nm0005324	Maury Povich	1939	\N	actor,producer,miscellaneous	tt0120986,tt0460649,tt1787759,tt7713810
nm0005325	Keri Lynn Pratt	1978	\N	actress	tt1315981,tt0265029,tt0164114,tt0410997
nm0005326	Jaime Pressly	1977	\N	actress,producer,executive	tt0460091,tt0277371,tt1155056,tt0245686
nm0005327	Freddie Prinze Jr.	1976	\N	actor,producer,writer	tt0160862,tt0267913,tt0119345,tt0130018
nm0005328	Tito Puente	1923	2000	actor,composer,music_department	tt1408101,tt0328107,tt0138304,tt0498399
nm0005329	Sarah Purcell	1948	\N	actress,archive_footage	tt0074074,tt0138956,tt0075754,tt0073972
nm0005330	Buddy Quaid	1974	\N	actor,producer,miscellaneous	tt0092654,tt1232204,tt0160484,tt0167116
nm0005331	Francesco Quinn	1963	2011	actor,miscellaneous,director	tt1399103,tt0091763,tt0452046,tt0892318
nm0009337	Eliane Abreu	\N	\N	actress	tt6873658,tt0229142
nm0005332	Ingo Rademacher	1971	\N	actor,archive_footage	tt0056758,tt1712170,tt0243732,tt1600194
nm0005333	Cassidy Rae	1976	\N	actress	tt0245891,tt0115643,tt0166044,tt0103491
nm0005334	Lisa Rae	\N	\N	actress,miscellaneous	tt0120888,tt0097142
nm0005335	Natalie Raitano	1966	\N	actress,producer,archive_footage	tt0134269,tt0446012,tt1302137,tt0816263
nm0005336	Sheryl Lee Ralph	1955	\N	actress,producer,writer	tt0095776,tt0108147,tt0097880,tt14218830
nm0005337	Theresa Randle	1964	\N	actress,soundtrack,archive_footage	tt0112442,tt0172156,tt0109254,tt0120177
nm0005338	Sheeri Rappaport	1977	\N	actress,stunts	tt0106079,tt0247082,tt0112230,tt0120524
nm0005339	Kim Raver	1969	\N	actress,producer,director	tt0285331,tt0477347,tt0413573,tt2070791
nm0005340	Peter Reckell	1955	\N	actor,soundtrack,archive_footage	tt0058796,tt1695746,tt0078638,tt0112006
nm0005341	Deborah Reed	\N	\N	actress	tt0236641,tt0061468,tt0059992
nm0005342	Norman Reedus	\N	\N	actor,producer,soundtrack	tt13062500,tt5547946,tt21454134,tt0144117
nm0005343	Della Reese	1931	2017	actress,writer,music_department	tt0108968,tt0130623,tt0097481,tt0117891
nm0005344	Joe Regalbuto	1949	\N	actor,director,soundtrack	tt0091828,tt0084335,tt0094514,tt0087589
nm0005345	Robert Rehme	1935	\N	producer,executive,archive_footage	tt0109254,tt0120738,tt0109444,tt0105112
nm0005346	Tara Reid	1975	\N	actress,producer,soundtrack	tt0163651,tt0283111,tt0369226,tt0118715
nm0005347	Tim Reid	1944	\N	actor,producer,writer	tt0077097,tt0108927,tt0099864,tt0081930
nm0005348	Carl Reiner	1922	2020	writer,producer,actor	tt0054533,tt0240772,tt0079367,tt0496806
nm0005349	Gloria Reuben	1964	\N	actress,music_department,producer	tt0443272,tt4158110,tt1462059,tt1814621
nm0005350	Simon Rex	1974	\N	actor,producer,writer	tt13453006,tt0306047,tt0795461,tt14858658
nm0005351	Ryan Reynolds	1976	\N	actor,producer,writer	tt5463162,tt1431045,tt6263850,tt1462758
nm0005352	Caroline Rhea	1964	\N	actress,producer,writer	tt0115341,tt0380623,tt0388419,tt0217756
nm0005353	Nick Rhodes	1962	\N	actor,composer,music_department	tt0158983,tt0120053,tt0246578,tt0375912
nm0005354	Busta Rhymes	1972	\N	music_artist,actor,composer	tt0220506,tt0272207,tt3402138,tt0187738
nm0005355	Alfonso Ribeiro	1971	\N	actor,director,producer	tt0098800,tt0112015,tt0120891,tt0362404
nm0005356	Marissa Ribisi	1974	\N	actress,writer,archive_footage	tt0106677,tt0120789,tt0112572,tt0139668
nm0005357	Jerry Rice	1962	\N	actor,producer,archive_footage	tt0484082,tt0772137,tt0368530,tt0790772
nm0005358	Tim Rice	1944	\N	music_department,writer,producer	tt0103639,tt0110357,tt2771200,tt0116250
nm0005359	Patricia Richardson	1951	\N	actress,producer,director	tt0101120,tt0252019,tt0120402,tt0200276
nm0005360	Lionel Richie	1949	\N	music_artist,actor,composer	tt0088939,tt0119116,tt1650062,tt1855199
nm0005361	LeAnn Rimes	1982	\N	music_artist,actress,composer	tt0200550,tt5439796,tt0132245,tt0264150
nm0005362	Lisa Rinna	1963	\N	actress,producer,writer	tt0058796,tt0103491,tt0119781,tt0412253
nm0005363	Guy Ritchie	1968	\N	writer,director,producer	tt0988045,tt0120735,tt0208092,tt1638355
nm0005364	Johnny Rivers	1942	\N	actor,producer,soundtrack	tt0094894,tt0120890,tt8367814,tt0118655
nm0005365	Vincent Riverside	1972	\N	actor	tt1075747,tt0295427,tt0212974,tt0320000
nm0005366	Jay Roach	1957	\N	producer,director,writer	tt3203606,tt6394270,tt0118655,tt0109303
nm0005367	Brian Robbins	1963	\N	producer,actor,writer	tt0174432,tt0477051,tt0393162,tt0090444
nm0005368	Doris Roberts	1925	2016	actress,director,miscellaneous	tt0115167,tt0456554,tt0097958,tt0083470
nm0005369	Julie Roberts	\N	\N	actress	tt0109576
nm0005370	Kathleen Robertson	\N	\N	actress,writer,producer	tt11343686,tt8462412,tt2402061,tt1833285
nm0005371	Robbie Robertson	1943	2023	music_artist,music_department,actor	tt5537002,tt0993846,tt1302006,tt0349710
nm0005372	Holly Robinson Peete	1964	\N	actress,music_department,producer	tt0092312,tt1232829,tt0091225,tt0137302
nm0005373	Smokey Robinson	1940	\N	music_artist,actor,composer	tt0185931,tt0329717,tt1131729,tt0408985
nm0005374	Luc Robitaille	1966	\N	producer,actor,archive_footage	tt0114576,tt0109520,tt2829004,tt0460649
nm0005375	Lela Rochon	1964	\N	actress,producer,archive_footage	tt0118900,tt0114885,tt0146838,tt0120609
nm0005376	Kid Rock	1971	\N	music_artist,actor,composer	tt0245686,tt2106361,tt0325805,tt0181739
nm0005377	Sam Rockwell	1968	\N	actor,producer,director	tt1182345,tt5027774,tt0270288,tt1931533
nm0005378	Brande Roderick	\N	\N	actress,producer,director	tt0335438,tt0096542,tt0489237,tt21158916
nm0005379	Dennis Rodman	1961	\N	actor,director,writer	tt0119013,tt0168172,tt0116168,tt0790804
nm0005380	Ray Romano	1957	\N	actor,writer,producer	tt0115167,tt1302006,tt5462602,tt0268380
nm0005381	Rebecca Romijn	1972	\N	actress,producer,soundtrack	tt0120903,tt0280665,tt0290334,tt0376994
nm0005382	Summer Rose	1966	\N	actress,music_department,archive_footage	tt0183227,tt0184179,tt0140215,tt0182164
nm0005383	Charlotte Ross	1968	\N	actress,soundtrack,archive_footage	tt1502404,tt0106079,tt0108775,tt2193021
nm0005384	Diana Ross	1944	\N	music_artist,actress,producer	tt0078504,tt0068828,tt0073335,tt0117333
nm0005385	Marion Ross	1928	\N	actress,soundtrack,archive_footage	tt0426592,tt0116240,tt0070992,tt0101055
nm0005386	Cecilia Roth	1956	\N	actress,costume_designer,soundtrack	tt0185125,tt0119626,tt0084228,tt8291806
nm0005387	Joe Roth	1948	\N	producer,production_manager,director	tt0427309,tt1587310,tt0356618,tt1742334
nm0005388	Brad Rowe	1970	\N	actor,producer	tt0942384,tt0465234,tt0158131,tt1912398
nm0005389	Victoria Rowell	1959	\N	actress,director,writer	tt0109686,tt0104114,tt0105986,tt0069658
nm0005390	Patricia Rozema	1958	\N	director,writer,producer	tt2625810,tt0178737,tt0758751,tt0093239
nm0005391	Rick Rubin	1963	\N	producer,actor,music_department	tt1440129,tt0117998,tt10872600,tt0107362
nm0005392	Keri Russell	1976	\N	actress,producer,soundtrack	tt0317919,tt0426931,tt2103281,tt0134247
nm0005393	Kelly Rutherford	1968	\N	actress,producer,soundtrack	tt0105932,tt0103491,tt0460084,tt0364888
nm0005394	Jeri Ryan	1968	\N	actress,soundtrack,archive_footage	tt0112178,tt0219653,tt8806524,tt0309530
nm0005395	Immy Schell	1935	1992	actress	tt0281835,tt0255208,tt0051964,tt0051973
nm0005396	Carlos Santana	1947	\N	music_artist,actor,composer	tt0093378,tt0443706,tt0112851,tt0116277
nm0005397	Cristina Saralegui	1948	\N	actress,producer,archive_footage	tt0267220,tt0310460,tt0236891,tt0220882
nm0005398	Michael Saucedo	1970	\N	actor	tt0181865,tt0078650,tt0056758,tt0321021
nm0005399	Ben Savage	1980	\N	actor,producer,director	tt0105958,tt0097758,tt2543796,tt0109447
nm0005400	Timothy B. Schmit	1947	\N	actor,composer,music_department	tt0083929,tt0101757,tt0099329,tt0095178
nm0005401	Ricky Schroder	1970	\N	actor,producer,director	tt0363475,tt0080671,tt0078950,tt0106079
nm0005402	Travis Schuldt	1974	\N	actor,producer,soundtrack	tt1769363,tt3181822,tt0455960,tt0192917
nm0005403	Jason Schwartzman	1980	\N	actor,music_department,producer	tt0128445,tt0838221,tt1748122,tt0446029
nm0005404	Rusty Schwimmer	\N	\N	actress,soundtrack,archive_footage	tt0177971,tt0113670,tt0395972,tt1082807
nm0005405	Seann William Scott	1976	\N	actor,producer,writer	tt0163651,tt0328828,tt0252866,tt0377818
nm0005406	William Lee Scott	1973	\N	actor,writer,archive_footage	tt0132477,tt0289879,tt0187078,tt0213149
nm0005407	Jon Secada	1961	\N	actor,composer,soundtrack	tt0111255,tt0120746,tt0114148,tt0482463
nm0005408	Katey Sagal	1954	\N	actress,producer,music_department	tt0149460,tt0092400,tt0312081,tt1124373
nm0005409	Suzanne Sena	1963	\N	actress,producer	tt1717499,tt2461262,tt0044265,tt1219024
nm0005410	Brian Setzer	1959	\N	actor,composer,music_department	tt0093378,tt0118956,tt0110475,tt0285823
nm0005411	Rita Sever	\N	\N	actress,producer,miscellaneous	tt4765610,tt1225901,tt1615858,tt1666566
nm0005412	Jane Seymour	1951	\N	actress,producer,soundtrack	tt0081534,tt0103405,tt0070328,tt0396269
nm0005413	Shanice	1973	\N	music_department,actress,composer	tt0103859,tt0114148,tt0102789,tt0107563
nm0005414	Robert Shapiro	\N	\N	producer,director,actor	tt0092965,tt0361467,tt0112895,tt0089791
nm0005415	China Shavers	1977	\N	actress,producer	tt0277371,tt0221218,tt1532503,tt1839492
nm0005416	Vinessa Shaw	1976	\N	actress,director,producer	tt0381849,tt0107120,tt0120663,tt0243736
nm0005417	Lin Shaye	1943	\N	actress,producer,writer	tt1591095,tt0308152,tt3195644,tt0129387
nm0005418	Rhonda Shear	1954	\N	actress,writer,archive_footage	tt0272417,tt0094012,tt0104702,tt0339534
nm0005419	Judy Sheindlin	1942	\N	writer,producer,actress	tt0115227,tt13368190,tt2398249,tt3854942
nm0005420	Marley Shelton	1974	\N	actress,soundtrack,archive_footage	tt1077258,tt0151738,tt0242998,tt0258470
nm0005421	Ron Shelton	1945	\N	writer,director,producer	tt0094812,tt0329717,tt0117918,tt0105812
nm0005422	Hilary Shepard	1959	\N	actress,producer,soundtrack	tt0120389,tt0405422,tt0106145,tt0118436
nm0005423	Vonda Shepard	1963	\N	music_department,actress,composer	tt0118254,tt0758752,tt11304740,tt0069658
nm0005424	Grant Show	1962	\N	actor,director,producer	tt0431021,tt0072559,tt0830558,tt0103491
nm0005425	Maria Shriver	1955	\N	producer,actress,writer	tt0107362,tt3316960,tt3881494,tt1432143
nm0005426	Robert Shriver	1954	\N	producer,soundtrack,archive_footage	tt0111503,tt5648882,tt0138326,tt0214930
nm0005427	Cynthia Sikes Yorkin	1954	\N	actress,producer,archive_footage	tt1856101,tt0094678,tt0112022,tt0083483
nm0005428	Joel Silver	1952	\N	producer,miscellaneous,actor	tt3799694,tt5444294,tt0133093,tt0095016
nm0005429	Victoria Silvstedt	1974	\N	actress,producer,soundtrack	tt0253798,tt0131857,tt1465487,tt0285462
nm0005430	Gene Simmons	1949	\N	actor,producer,composer	tt1225822,tt0088024,tt0165710,tt4501244
nm0005431	Henry Simmons	\N	\N	actor,producer,archive_footage	tt10065678,tt2364582,tt2011159,tt0106079
nm0005432	Russell Simmons	1957	\N	producer,writer,actor	tt0117218,tt0242423,tt0804497,tt1398426
nm0005433	Jessica Simpson	1980	\N	actress,producer,music_department	tt0377818,tt0811138,tt0424993,tt0380934
nm0005434	Nancy Sinatra	1940	\N	actress,music_department,producer	tt0266697,tt0063634,tt0062512,tt0999913
nm0005435	Sinbad	1956	\N	actor,writer,producer	tt0116705,tt0119215,tt0106598,tt0116311
nm0005436	John Singleton	1968	2019	producer,writer,director	tt0101507,tt0430105,tt0255819,tt0162650
nm0005437	Sisqó	1978	\N	actor,composer,writer	tt0192071,tt0144528,tt0120812,tt0281373
nm0005438	Jeremy Sisto	1974	\N	actor,producer,writer	tt0295700,tt0112697,tt0303361,tt0120241
nm0005439	Azura Skye	1981	\N	actress	tt0191754,tt0479968,tt0219965,tt7090638
nm0005440	Kelly Slater	1972	\N	actor,producer,miscellaneous	tt0423294,tt0203755,tt0096542,tt0245891
nm0005441	Lindsay Sloane	\N	\N	actress,soundtrack,archive_footage	tt0204946,tt1386588,tt0815236,tt0314786
nm0005442	Amy Smart	1976	\N	actress,soundtrack,archive_footage	tt0120201,tt0250687,tt0479884,tt0433400
nm0005443	Jean Smart	1951	\N	actress,producer,executive	tt10640346,tt0333766,tt0285331,tt2140479
nm0005444	Keely Shaye Brosnan	1963	\N	actress,director,producer	tt8084776,tt0100300,tt0458443,tt0056758
nm0005445	Kerr Smith	1972	\N	actor,director,archive_footage	tt0118300,tt0195714,tt1179891,tt0158552
nm0005446	Patti Smith	1946	\N	actress,writer,composer	tt1959490,tt2062700,tt0115624,tt0110632
nm0005447	Leelee Sobieski	1983	\N	actress,producer,archive_footage	tt0151738,tt0411061,tt0460780,tt0120647
nm0005448	Marla Sokoloff	1980	\N	actress,director,writer	tt0118437,tt0242423,tt0186589,tt0202402
nm0005449	José Solano	1971	\N	production_manager,actor	tt0096542,tt0373569,tt0249313,tt0495921
nm0005450	David Spade	1964	\N	actor,writer,producer	tt0245686,tt0114694,tt0437863,tt0120917
nm0005451	Dana Sparks	\N	\N	actress,writer,archive_footage	tt0192917,tt0069658,tt0092455,tt0112022
nm0005452	Hal Sparks	1969	\N	actor,director,writer	tt0262985,tt0316654,tt0242423,tt1225822
nm0005453	Britney Spears	1981	\N	music_artist,actress,music_department	tt0275022,tt0295178,tt11057302,tt0460649
nm0005454	Scott Speedman	1975	\N	actor,soundtrack,archive_footage	tt0320691,tt0482606,tt2355495,tt0401855
nm0005455	Aaron Spelling	1923	2006	producer,writer,actor	tt0160127,tt0054532,tt0085970,tt0081856
nm0005456	Randy Spelling	1978	\N	actor,producer,archive_footage	tt0447999,tt0417056,tt0362511,tt0118484
nm0005457	Dina Spybey-Waters	\N	\N	actress,producer,soundtrack	tt0425123,tt0338094,tt0322330,tt0251160
nm0005458	Jason Statham	1967	\N	actor,producer,stunts	tt0479884,tt2820852,tt3079380,tt1297919
nm0005459	Liz Stauber	1979	\N	actress,archive_footage	tt0181875,tt0283139,tt0120188,tt0368447
nm0009338	Estela Abreu	\N	\N	actress	tt0213102,tt0230008,tt0282204
nm0005460	Mary Steenburgen	1953	\N	actress,producer,music_department	tt1204975,tt0838283,tt0099088,tt0080025
nm0005461	Gwen Stefani	1969	\N	music_artist,writer,actress	tt1679335,tt0338751,tt0196229,tt1291150
nm0005462	Leslie Stefanson	1971	\N	actress	tt0144214,tt0269347,tt0217869,tt0119822
nm0005463	Heather Stephens	1975	\N	actress,archive_sound	tt0118928,tt0116922,tt0246989,tt0120519
nm0005464	Alana Stewart	1945	\N	actress,producer,director	tt1455807,tt0159392,tt0067069,tt0069001
nm0005465	Rod Stewart	1945	\N	music_artist,actor,composer	tt0093260,tt0108333,tt0093640,tt0181875
nm0005466	Julia Stiles	1981	\N	actress,producer,director	tt0147800,tt0206275,tt1045658,tt0337697
nm0005467	Jerry Stiller	1927	2020	actor,producer,writer	tt0098904,tt0427327,tt0408839,tt0196229
nm0005468	Michael Stipe	1960	\N	actor,composer,producer	tt0120601,tt0125664,tt0116629,tt0259711
nm0005469	Mike Stoller	1933	\N	composer,music_department,actor	tt2222042,tt1060277,tt0077631,tt0116908
nm0005470	Kelly Stone	1966	\N	actress	tt0156904,tt0413373
nm0005471	Peter Strauss	1947	\N	actor,producer,archive_footage	tt0084649,tt0329774,tt0081900,tt0113972
nm0005472	Kimberly Stewart	1979	\N	actress,producer,archive_footage	tt0112112,tt1890455,tt0273028,tt1618376
nm0005473	Marty Stuart	1958	\N	actor,composer,writer	tt1319934,tt3553442,tt0369441,tt0149624
nm0005474	Nicole Sullivan	1970	\N	actress,writer,producer	tt3487356,tt0112056,tt0165581,tt1190536
nm0005475	David Sutcliffe	1969	\N	actor,director,editor	tt0238784,tt2078576,tt3595806,tt0361693
nm0005476	Hilary Swank	1974	\N	actress,producer,soundtrack	tt0405159,tt0171804,tt0431308,tt2398231
nm0005477	Lilly Tartikoff	1953	\N	producer,actress,executive	tt0199356,tt0290986,tt0870070,tt9022950
nm0005478	Larenz Tate	1975	\N	actor,producer,director	tt0375679,tt0112819,tt0119572,tt0107554
nm0005479	Bernie Taupin	1950	\N	composer,music_department,actor	tt2066051,tt0388795,tt0377981,tt0181875
nm0005480	Ryan Rene Taylor	\N	\N	director	tt0132479,tt0148885,tt0132344,tt0144375
nm0005481	Victoria Tennant	1950	\N	actress,producer,writer	tt0102250,tt0093036,tt0099731,tt0086873
nm0005482	John Tesh	1952	\N	music_department,composer,actor	tt0098320,tt2017020,tt0283644,tt0102951
nm0005483	Joe Theismann	1949	\N	actor,archive_footage	tt0087032,tt1136193,tt0081110,tt0116439
nm0005484	Alan Thicke	1947	2016	music_department,producer,actor	tt0088527,tt0350028,tt1232200,tt1092633
nm0005485	Tiffani Thiessen	1974	\N	actress,producer,director	tt6916746,tt1358522,tt13540190,tt11032396
nm0005486	Marlo Thomas	1937	\N	actress,producer,writer	tt0060034,tt1592873,tt0108778,tt5164214
nm0005487	Andrea Thompson	1960	\N	actress,miscellaneous,soundtrack	tt0106079,tt0094291,tt0105946,tt0081858
nm0005488	Scott 'Carrot Top' Thompson	1965	\N	actor,writer,producer	tt0118836,tt5985454,tt0129868,tt0284674
nm0005489	Courtney Thorne-Smith	1967	\N	actress,producer,soundtrack	tt0118254,tt0285351,tt0094072,tt0103491
nm0005490	Alexis Thorpe	1980	\N	actress	tt0756683,tt0328828,tt0417056,tt0058796
nm0005491	Maura Tierney	1965	\N	actress,producer,soundtrack	tt0108757,tt0119528,tt1226837,tt0278504
nm0005492	Charlene Tilton	1958	\N	actress,producer,soundtrack	tt0077000,tt1442464,tt5990386,tt12988016
nm0005493	Justin Timberlake	1981	\N	music_artist,actor,composer	tt1679335,tt1285016,tt6587640,tt1637688
nm0005494	Steve Tisch	1949	\N	producer,actor,miscellaneous	tt0109830,tt0119925,tt0814314,tt11003218
nm0005495	David Tom	1978	\N	actor,script_department,archive_footage	tt0105466,tt0069658,tt0108265,tt0120789
nm0005496	Heather Tom	1975	\N	actress,director,writer	tt0092325,tt0069658,tt0805669,tt0062595
nm0005497	Nicholle Tom	\N	\N	actress,producer,writer	tt0103786,tt0106375,tt0106080,tt0171028
nm0005498	Concetta Tomei	1945	\N	actress,archive_footage	tt0101757,tt0120647,tt0177991,tt0112178
nm0005499	Lily Tomlin	1939	\N	actress,producer,writer	tt0073440,tt4270516,tt0080319,tt0086873
nm0005500	Liz Torres	1947	\N	actress,writer,soundtrack	tt0238784,tt0106039,tt0113501,tt0245686
nm0005501	Lorraine Toussaint	1960	\N	actress,producer,archive_footage	tt0102070,tt1020072,tt0161233,tt2372162
nm0005502	Michelle Trachtenberg	1985	2025	actress,producer,soundtrack	tt0118276,tt0141369,tt0396652,tt0356150
nm0005503	Susan Traylor	1964	\N	actress,producer,writer	tt0113277,tt0105265,tt1234654,tt0113690
nm0005504	Lee Trevino	1939	\N	actor,archive_footage	tt0116483,tt31868189,tt12494574,tt3496994
nm0005505	Travis Tritt	1963	\N	music_artist,actor,composer	tt0118747,tt0104952,tt7959026,tt0109493
nm0005506	Ivana Trump	1949	2022	actress,writer,miscellaneous	tt0116313,tt0157238,tt0164029,tt36057267
nm0005507	Jimmy Tuckett	\N	\N	actor	tt0127489
nm0005508	Janine Turner	1962	\N	actress,producer,director	tt0106582,tt0098384,tt0098878,tt0758745
nm0005509	Jon Turteltaub	1963	\N	producer,director,writer	tt0106611,tt0114924,tt0117333,tt0368891
nm0005510	Shania Twain	1965	\N	music_artist,actress,composer	tt0356721,tt0117998,tt0125439,tt0275022
nm0005511	Tracy Tweed	1965	\N	actress,archive_footage	tt0113481,tt0104999,tt0107680,tt0104743
nm0005512	Mike Tyson	1966	\N	actor,producer,writer	tt1119646,tt1411697,tt2888046,tt1661382
nm0005513	Alanna Ubach	1975	\N	actress,producer,director	tt6394270,tt2380307,tt8772296,tt2817246
nm0005514	Kim Johnston Ulrich	1955	\N	actress,soundtrack,archive_footage	tt0192917,tt0092332,tt0460681,tt0114306
nm0005515	Lars Ulrich	1963	\N	actor,composer,music_department	tt1226229,tt1488606,tt3385516,tt0120755
nm0005516	Blair Underwood	1964	\N	actor,producer,director	tt0120647,tt0113501,tt0119177,tt0160797
nm0005517	Gabrielle Union	1972	\N	actress,producer,soundtrack	tt0204946,tt0172156,tt0301181,tt0147800
nm0005518	Steve Vai	1960	\N	actor,composer,music_department	tt0101452,tt0104187,tt12141112,tt0443474
nm0005519	Wilmer Valderrama	1980	\N	actor,producer,director	tt0165598,tt1583420,tt0364845,tt0460792
nm0005520	Amber Valletta	1974	\N	actress,producer,archive_footage	tt1034032,tt0455760,tt0386588,tt0388482
nm0005521	Joan Van Ark	1943	\N	actress,director,archive_footage	tt0078638,tt0076294,tt1559356,tt0202179
nm0005522	Mario Van Peebles	1957	\N	actor,director,producer	tt0367790,tt0091187,tt0093300,tt0114084
nm0005523	Steven Van Zandt	1950	\N	actor,music_department,writer	tt0141842,tt1958961,tt0404390,tt0113986
nm0009421	Marcel Absil	\N	\N	actor	tt0160138
nm0005524	Courtney B. Vance	1960	\N	actor,producer,soundtrack	tt0099810,tt0093137,tt0186566,tt0112792
nm0005525	Mark Vanderloo	1968	\N	actor,miscellaneous,archive_footage	tt0120533,tt1839558,tt1540125,tt1073668
nm0005526	Luther Vandross	1951	2005	music_artist,actor,music_department	tt0089218,tt0113845,tt2404463,tt8722346
nm0005527	Sofía Vergara	1972	\N	actress,producer,soundtrack	tt2967224,tt1442437,tt2883512,tt0383010
nm0005528	Scott Vickaryous	1975	\N	actor,archive_footage	tt31710822,tt0124934,tt0202402,tt0212662
nm0005529	Lisa Vidal	1965	\N	actress,producer,director	tt0796366,tt2345481,tt0113819,tt1582459
nm0005530	Katie Wagner	1964	\N	actress,miscellaneous,archive_footage	tt10919380,tt8179388,tt0155425,tt0141303
nm0005531	Donnie Wahlberg	1969	\N	actor,producer,composer	tt0432348,tt0117438,tt0455760,tt0167404
nm0005532	Kate Walsh	1967	\N	actress,producer,soundtrack	tt1659337,tt0413573,tt1038686,tt0367479
nm0005533	Maitland Ward	1977	\N	actress,director,writer	tt0381707,tt6230710,tt0092325,tt11309414
nm0005534	Diane Warren	1956	\N	music_artist,composer,music_department	tt0120591,tt24458622,tt1126591,tt0213149
nm0005535	Estella Warren	1978	\N	actress,archive_footage	tt0133152,tt0132245,tt0257568,tt1410295
nm0005536	Dionne Warwick	1940	\N	music_department,actress,producer	tt0106246,tt1308728,tt2737304,tt12676326
nm0005537	Don Was	1952	\N	music_department,actor,composer	tt0103484,tt0096933,tt0119313,tt0112401
nm0005538	Barry Watson	1974	\N	actor,miscellaneous,director	tt0115083,tt0898332,tt6821044,tt0460693
nm0005539	Rolonda Watts	1959	\N	producer,actress,soundtrack	tt0117768,tt4125630,tt0112022,tt1663628
nm0005540	Keenen Ivory Wayans	1958	\N	writer,producer,actor	tt0381707,tt0095348,tt0098830,tt0430304
nm0005541	Marlon Wayans	1972	\N	actor,writer,producer	tt0381707,tt0430304,tt0116126,tt0175142
nm0005542	Veronica Webb	1965	\N	actress,archive_footage	tt0244970,tt0104797,tt0120577,tt0196229
nm0005543	Victor Webster	1973	\N	actor,producer	tt6143796,tt3086386,tt0986263,tt0305669
nm0005544	Harvey Weinstein	1952	\N	producer,actor,writer	tt0138097,tt0120737,tt3460252,tt2170593
nm0005545	Jerry Weintraub	1937	2015	producer,actor,miscellaneous	tt0118661,tt0106918,tt1291580,tt0111255
nm0005546	Howard Weisman	\N	\N	director,producer,executive	tt0119580,tt6297994
nm0005547	Alexandra Wentworth	1965	\N	actress,writer,producer	tt1230414,tt0116695,tt5507340,tt0151804
nm0005548	Joel West	1975	\N	actor,producer,writer	tt0313043,tt0813715,tt1618390,tt0058796
nm0005549	Haskell Wexler	1922	2015	cinematographer,camera_department,director	tt0064652,tt0061811,tt0061184,tt0073486
nm0005550	Bryan White	1974	\N	actor,soundtrack	tt0120800,tt0120366,tt1635327,tt0086995
nm0005551	Lynn Whitfield	1953	\N	actress,producer	tt0455612,tt0119080,tt0102167,tt0093300
nm0005552	Kym Whitley	1962	\N	actress,producer,director	tt1192628,tt3401882
nm0005553	Jane Wiedlin	1958	\N	music_artist,actress,composer	tt0088930,tt0096928,tt0092007,tt1949599
nm0005554	James Wilder	1968	\N	actor,writer,producer	tt1907688,tt0108862,tt0094383,tt0098789
nm0005555	Anna Wilding	\N	\N	director,producer,actress	tt0449570,tt0098911,tt1627932,tt1961313
nm0005556	Jason Wiles	1970	\N	actor,producer,director	tt8323778,tt0197182,tt0113537,tt0464086
nm0005557	Edy Williams	1941	\N	actress,archive_footage	tt0065466,tt0058390,tt0102565,tt0101399
nm0005558	Harland Williams	1962	\N	actor,writer,producer	tt1667082,tt0116130,tt0358082,tt0120029
nm0005559	Kelli Williams	1970	\N	actress,director,producer	tt1235099,tt0118437,tt2262532,tt4671682
nm0005560	Robbie Williams	1974	\N	music_artist,actor,composer	tt14260836,tt0053494,tt1509767,tt0183790
nm0005561	Luke Wilson	1971	\N	actor,producer,director	tt0302886,tt0265666,tt0452702,tt0115734
nm0005562	Owen Wilson	1968	\N	actor,producer,writer	tt0265666,tt0115734,tt0396269,tt0335438
nm0005563	Irwin Winkler	1931	\N	producer,writer,director	tt0264796,tt3076658,tt0099685,tt0075148
nm0005564	Sara Winter	\N	\N	art_department,production_designer	tt1082088,tt0160425,tt0194624
nm0005565	Jonathan Winters	1925	2013	actor,writer,producer	tt0057193,tt0472181,tt0111143,tt2017020
nm0005566	Steve Winwood	1948	\N	music_artist,actor,composer	tt0118747,tt0377062,tt2250912,tt4154796
nm0005567	Stevie Wonder	1950	\N	music_artist,actor,composer	tt0120891,tt0088414,tt0102175,tt0112792
nm0005568	Russell Wong	1963	\N	actor,producer	tt0165929,tt0102526,tt0378918,tt0859163
nm0005569	Alfre Woodard	1952	\N	actress,producer,miscellaneous	tt0117731,tt2024544,tt0199725,tt3322940
nm0005570	Bud Yorkin	1926	2015	producer,director,writer	tt1856101,tt0068128,tt0083658,tt0327699
nm0005571	Lisa Zane	\N	\N	actress,writer,music_department	tt0101917,tt0117217,tt0099091,tt1372686
nm0005572	Lili Fini Zanuck	1954	\N	producer,director,assistant_director	tt0097239,tt0088933,tt0253556,tt0139668
nm0005573	Richard D. Zanuck	1934	2012	producer,miscellaneous,production_manager	tt0097239,tt0088933,tt0120647,tt0073195
nm0005574	Dweezil Zappa	1969	\N	actor,music_department,composer	tt0093894,tt0108755,tt0096928,tt0250494
nm0005575	Ian Ziering	1964	\N	actor,producer,writer	tt4831420,tt3899796,tt2724064,tt0098749
nm0005576	Drea de Matteo	1972	\N	actress,writer,director	tt0141842,tt0398712,tt0244244,tt2402101
nm0005577	Portia de Rossi	1973	\N	actress,producer,soundtrack	tt0367279,tt0120082,tt0257516,tt0145531
nm0005578	Rappin' 4-Tay	1968	\N	producer,actor,composer	tt0115783,tt0112792,tt5580266,tt1666185
nm0005579	Christy Carlson Romano	1984	\N	actress,producer,director	tt0278866,tt0206511,tt0385700,tt3778354
nm0005580	Carole King	1942	\N	music_artist,music_department,composer	tt0104694,tt0128853,tt0262727,tt0259711
nm0005581	David L. Lander	1947	2020	actor,writer,miscellaneous	tt0074016,tt0175142,tt0096438,tt0081698
nm0005582	Tammy Lynn Michaels	1974	\N	actress	tt0202748,tt0337953,tt0330251,tt0305472
nm0005583	Serena Scott Thomas	1961	\N	actress,producer,archive_footage	tt1791528,tt0143145,tt0340163,tt0118276
nm0005584	Jack Martin Smith	1911	1993	art_director,art_department,production_designer	tt0056937,tt0066473,tt0064418,tt0060397
nm0005585	Matteo Pedani	1966	\N	director,sound_department,writer	tt0245347,tt0255893,tt0256273,tt0256286
nm0005586	Jeff Frentzen	1956	\N	producer,writer,director	tt2513864,tt9115376,tt3910582,tt0472119
nm0009422	Vincent Absil	\N	\N	actor	tt0085284
nm0005587	Sean Everett	1962	\N	art_department,actor,art_director	tt0166924,tt0097474,tt0139239,tt0166896
nm0005588	Rob LaBelle	1962	\N	actor,producer,director	tt0409459,tt0160277,tt2443340,tt0312510
nm0005589	Elliot Easton	\N	\N	actor	tt0116130,tt0086759,tt0094466,tt0312627
nm0005590	Tony Klinger	1950	\N	producer,director,writer	tt0079400,tt0255918,tt0256024,tt0075214
nm0005591	John Foster	\N	\N	writer	tt13141620,tt0119522,tt0068069,tt0398603
nm0005592	Chris Castaldi	\N	\N	assistant_director,producer,miscellaneous	tt0371746,tt0770828,tt1649418,tt13452446
nm0005593	Chris L. Spellman	\N	\N	production_designer,set_decorator,art_department	tt0829482,tt0910936,tt0118715,tt0109830
nm0005594	George Frideric Handel	1685	1759	music_department,composer,writer	tt0206634,tt1971325,tt0119094,tt4520364
nm0005595	Michael Baugh	1943	\N	production_designer,art_director,art_department	tt0118411,tt0080198,tt1466074,tt0106701
nm0005596	Jonathan Bourne	\N	\N	producer,writer,assistant_director	tt0118515,tt7674544,tt1402219,tt4658614
nm0005597	Thom Brennan	\N	\N	sound_department,music_department,soundtrack	tt0133093,tt3450958,tt1190080,tt1136617
nm0005598	Grand L. Bush	1955	\N	actor,soundtrack,archive_footage	tt0097742,tt0095016,tt0161993,tt10045260
nm0005599	Jérémie Elkaïm	1978	\N	actor,writer,director	tt1931470,tt0242795,tt2059244,tt4428800
nm0005600	Lukas Erni	\N	\N	producer,director,writer	tt0266527,tt0446027,tt35700731,tt0216938
nm0005601	Katy Garretson	\N	\N	assistant_director,director,producer	tt0106004,tt0102975,tt0111255,tt0096933
nm0005602	Pierre Gill	\N	\N	cinematographer,director,assistant_director	tt12324366,tt10466872,tt15358446,tt1194238
nm0005603	Kim Huffman	\N	\N	actress,script_department	tt1714828,tt1239185,tt0193545,tt0115397
nm0005604	David Knoller	\N	\N	producer,director,writer	tt32375763,tt8559532,tt0421030,tt0193676
nm0005605	Scott Kraft	\N	\N	producer,writer,music_department	tt3121722,tt4791498,tt0172049
nm0005606	Maurice LaMarche	1958	\N	actor,producer,sound_department	tt0149460,tt0112123,tt2948356,tt0096697
nm0005607	Craig Marsden	\N	\N	cinematographer,camera_department,director	tt0127001,tt0119237,tt0427397,tt0116379
nm0005608	Robert Sidney Mellette	1962	\N	miscellaneous,producer,actor	tt0230350,tt0112230,tt0144528,tt0300532
nm0005609	Stephan Puchner	1971	\N	writer,director,miscellaneous	tt0232681,tt0190400,tt27042638,tt0207198
nm0005610	James Steven Sadwith	1952	\N	producer,writer,director	tt4048168,tt0094696,tt0118330,tt0105413
nm0005611	Edward Schofield	1966	\N	animation_department,actor,art_department	tt3692056,tt0213117,tt1786751,tt0137115
nm0005612	Jeremy Stein	1979	\N	producer,miscellaneous,director	tt0293429,tt0240802,tt2106361,tt2071550
nm0005613	Gregor Törzs	1970	\N	actor,cinematographer,camera_department	tt0371704,tt0350401,tt0968897,tt0345636
nm0005614	Stuart Urban	1958	\N	director,writer,producer	tt5116280,tt0134178,tt0119935,tt0882816
nm0005615	Urszula Urbaniak	1962	\N	director,assistant_director,miscellaneous	tt0216295,tt0441074,tt0388626,tt0461867
nm0005616	Aaron Woodley	1971	\N	director,writer,editor	tt3228088,tt0177349,tt0326065,tt0281821
nm0005617	Mark Woods	1947	\N	cinematographer,camera_department,director	tt0374312,tt0247254,tt1563777,tt0078335
nm0005618	Alex Zamm	\N	\N	director,producer,miscellaneous	tt2114504,tt0301454,tt7608418,tt13464350
nm0005619	Tom Jensen	1960	\N	camera_department,visual_effects,miscellaneous	tt0097138,tt0113253,tt0103923,tt0098320
nm0005620	Beth Wooke	\N	\N	set_decorator,art_department,production_designer	tt11291274,tt1186370,tt1621045,tt2870708
nm0005621	Thomas DeRenzo	1956	\N	composer,music_department,soundtrack	tt0301677,tt0765477,tt0439846,tt0305211
nm0005622	James Schmerer	1938	2019	miscellaneous,writer,producer	tt0088559,tt0069572,tt0072542,tt0060980
nm0005623	Lisa Essary	\N	\N	casting_director,casting_department,actress	tt8305806,tt3761426,tt8268028,tt7764650
nm0005624	Carlos Salces	1972	\N	editor,director,actor	tt0154450,tt0365967,tt0109265,tt29106482
nm0005625	Mark A. Mangini	1956	\N	sound_department,soundtrack,music_department	tt1160419,tt1856101,tt1392190,tt0119116
nm0005626	Skip Godwin	\N	\N	sound_department	tt0107076,tt0348333,tt0116039,tt0102978
nm0005627	Kimberly Mullen	\N	\N	casting_department,casting_director	tt0340855,tt0368008,tt0430357,tt0330793
nm0005628	Oliver Schmitz	1960	\N	director,writer,editor	tt0401711,tt1646111,tt0095587,tt4627352
nm0005629	Ali Kazimi	\N	\N	cinematographer,director,producer	tt6151812,tt0155171,tt0490857,tt0110627
nm0005630	Thomas E. Ackerman	1948	\N	cinematographer,camera_department,assistant_director	tt0426592,tt0250687,tt0119190,tt0094721
nm0005631	José F. Aguayo	1911	1999	cinematographer,camera_department	tt0066491,tt0055601,tt0042467,tt0062005
nm0005632	Bitto Albertini	1924	1999	cinematographer,writer,director	tt0189229,tt0209390,tt0064375,tt0167840
nm0005633	John Alcott	1930	1986	camera_department,cinematographer,archive_footage	tt0072684,tt0066921,tt0093640,tt0062622
nm0005634	Sepp Allgeier	1895	1968	cinematographer,director,writer	tt0020570,tt1464746,tt1630043,tt0447386
nm0005635	Lucien N. Andriot	1892	1979	cinematographer,camera_department	tt0037515,tt0034931,tt0311681,tt0012586
nm0005636	Thierry Arbogast	1957	\N	cinematographer,camera_department	tt0119116,tt0110413,tt0100263,tt0228786
nm0005637	Victor Arménise	1896	\N	cinematographer,camera_department	tt0143856,tt0029760,tt0035075,tt0020372
nm0005638	Ricardo Aronovich	1930	\N	cinematographer,camera_department	tt0126351,tt0186674,tt0189142,tt0085213
nm0005639	Raúl Artigot	1936	2014	cinematographer,writer,director	tt0068966,tt0085212,tt0077286,tt0062356
nm0005640	Helmuth Ashley	1919	2021	director,cinematographer,writer	tt0087118,tt0242203,tt0055212,tt0242211
nm0005641	Joseph H. August	1890	1947	cinematographer,camera_department,art_director	tt0040705,tt0029654,tt0013961,tt0010476
nm0005642	Robert Baberske	1900	1958	cinematographer,camera_department,writer	tt0022100,tt0024582,tt0028299,tt0015064
nm0005643	Hanania Baer	1943	\N	cinematographer,camera_department,producer	tt0093507,tt0202179,tt0985040,tt0088708
nm0005644	Lucien Ballard	1904	1988	cinematographer,camera_department,miscellaneous	tt0065214,tt0068638,tt0049406,tt0063415
nm0005645	Enzo Barboni	1922	2002	cinematographer,director,writer	tt0067355,tt0074442,tt0060315,tt0068154
nm0005646	André Barlatier	1882	1943	cinematographer,camera_department	tt0016831,tt0016832,tt0015207,tt0007649
nm0005647	Andrzej Bartkowiak	\N	\N	cinematographer,director,producer	tt0165929,tt0242445,tt0111257,tt0419706
nm0005648	Bojan Bazelli	1957	\N	cinematographer,camera_department,actor	tt1210819,tt0356910,tt0298130,tt4731136
nm0005649	Affonso Beato	1941	\N	cinematographer,producer,camera_department	tt0185125,tt0436697,tt0183613,tt0162346
nm0005650	Friedl Behn-Grund	1906	1989	cinematographer,actor,camera_department	tt0049533,tt0023046,tt0027581,tt0028973
nm0005651	José María Beltrán	1898	1962	cinematographer,director,camera_department	tt0158482,tt0037969,tt0022664,tt0026471
nm0005652	Manuel Berenguer	1913	1999	cinematographer,camera_department,director	tt0059113,tt0038500,tt0039653,tt0052995
nm0005653	Giovanni Bergamini	\N	\N	camera_department,cinematographer,actor	tt0060315,tt0086222,tt0076584,tt0069019
nm0005654	Emil Berna	1907	2000	cinematographer,director,writer	tt14064926,tt0043897,tt0032801,tt0056156
nm0005655	Renato Berta	1945	\N	cinematographer,camera_department,director	tt0092593,tt11012320,tt0105908,tt9526392
nm0005656	Theo Bierkens	1955	\N	cinematographer,camera_department	tt0120884,tt0353667,tt0099950,tt1295059
nm0005657	Joseph F. Biroc	1903	1996	cinematographer,camera_department,archive_footage	tt0072308,tt0067065,tt0038650,tt0058213
nm0005658	G.W. Bitzer	1872	1944	cinematographer,director,camera_department	tt0004972,tt0009968,tt0431889,tt0006864
nm0005659	Ralf D. Bode	1941	2001	cinematographer,camera_department,actor	tt0080661,tt0098554,tt0112883,tt0094608
nm0005660	Anchise Brizzi	1887	1964	cinematographer	tt0023874,tt0031949,tt0043802,tt0056641
nm0005661	Norbert Brodine	1896	1970	cinematographer,camera_department,miscellaneous	tt0045409,tt0030442,tt0043565,tt0026985
nm0005662	Léonce-Henri Burel	1892	1977	cinematographer,director,camera_department	tt0042619,tt0049902,tt0053168,tt0016491
nm0005663	Hans Burmann	1937	\N	cinematographer,camera_department,actor	tt0125659,tt0117883,tt0109105,tt0110699
nm0005664	Stephen H. Burum	1939	\N	cinematographer,visual_effects,camera_department	tt0104427,tt0094226,tt0098621,tt0117060
nm0005665	Russell Carpenter	1950	\N	cinematographer,camera_department,producer	tt1630029,tt0120338,tt0478970,tt0111503
nm0005666	Christopher Challis	1919	2012	cinematographer,camera_department,director	tt0060121,tt0040725,tt0075925,tt0088286
nm0005667	Caroline Champetier	1954	\N	cinematographer,camera_department,actress	tt2076220,tt6217926,tt0223709,tt1588337
nm0005668	Wilfrid M. Cline	1903	1976	cinematographer,camera_department,editorial_department	tt0031381,tt0063934,tt0033331,tt0045591
nm0005669	Ghislain Cloquet	1924	1981	cinematographer,camera_department,actor	tt0080009,tt0073312,tt0062873,tt0054407
nm0005670	William H. Clothier	1903	1996	cinematographer,camera_department,producer	tt0056217,tt0053580,tt0057940,tt0047086
nm0005671	Alfio Contini	1927	2020	cinematographer,camera_department,special_effects	tt0114086,tt0122241,tt0056512,tt0080439
nm0005672	Pio Corradi	1940	2019	cinematographer,camera_department,producer	tt1027742,tt9701382,tt5397076,tt0084214
nm0005673	Stanley Cortez	1908	1997	cinematographer,camera_department,visual_effects	tt0035015,tt0048424,tt0052564,tt0077394
nm0005674	Arthur Crabtree	1900	1975	director,cinematographer,camera_department	tt0041305,tt0040335,tt0037578,tt0042679
nm0005675	Jordan Cronenweth	1935	1996	cinematographer,camera_department,actor	tt0083658,tt0091738,tt0100685,tt0080360
nm0005676	Edward Cronjager	1904	1960	cinematographer,director,camera_department	tt0035979,tt0036926,tt0045551,tt0034241
nm0005677	Floyd Crosby	1899	1985	cinematographer,camera_department,director	tt0044706,tt0022458,tt0058440,tt0060415
nm0005678	Dean Cundey	1946	\N	cinematographer,camera_department,miscellaneous	tt0107290,tt0112384,tt0096438,tt0082340
nm0005679	Allen Daviau	1942	2020	cinematographer,camera_department,writer	tt0083866,tt0092965,tt0101516,tt0088939
nm0005680	Ernest Day	1927	2006	camera_department,cinematographer,assistant_director	tt0079574,tt0117060,tt0076752,tt0066921
nm0005681	Pasqualino De Santis	1927	1996	cinematographer,camera_department	tt0063518,tt0067445,tt0083226,tt0071585
nm0005682	Clyde De Vinna	1890	1953	cinematographer,camera_department,writer	tt0019574,tt0015359,tt0016641,tt0022495
nm0005683	Roger Deakins	1949	\N	cinematographer,camera_department,miscellaneous	tt1856101,tt1074638,tt0477348,tt8579674
nm0005684	Henri Decaë	1915	1987	cinematographer,director,camera_department	tt0077269,tt0051378,tt0062229,tt0065531
nm0005685	Franco Delli Colli	1929	2004	cinematographer,camera_department	tt0067140,tt0058700,tt0054248,tt0062073
nm0005686	Tonino Delli Colli	1922	2005	cinematographer,camera_department,actor	tt0091605,tt0118799,tt0104779,tt0087843
nm0005687	Peter Deming	\N	\N	cinematographer,camera_department,actor	tt0166924,tt30460310,tt9764362,tt4093826
nm0005688	Carlo Di Palma	1925	2004	cinematographer,camera_department,director	tt0113819,tt0060176,tt0107507,tt0069361
nm0005689	Gianni Di Venanzo	1920	1966	cinematographer,camera_department,archive_footage	tt0056801,tt0059229,tt0047821,tt0055399
nm0005690	William K.L. Dickson	1860	1935	cinematographer,director,producer	tt1428455,tt1496763,tt0308254,tt0219560
nm0005691	Jack Draper	1892	1962	cinematographer,camera_department,director	tt0040748,tt0046196,tt0272459,tt0277455
nm0005692	Edwin B. DuPar	1885	1961	cinematographer,special_effects,camera_department	tt0049261,tt0031867,tt0034449,tt0038417
nm0005693	Elmer Dyer	1892	1970	cinematographer,camera_department,assistant_director	tt0035616,tt0031762,tt0028725,tt0029162
nm0005694	István Eiben	1902	1958	cinematographer,camera_department	tt0009857,tt0036557,tt0025647,tt0173357
nm0005695	Frederick Elmes	1946	\N	cinematographer,camera_department,special_effects	tt8695030,tt2401256,tt5247022,tt0090756
nm0005696	Robert Elswit	1950	\N	cinematographer,visual_effects,camera_department	tt0469494,tt0433383,tt2872718,tt1791528
nm0005697	Basil Emmott	1894	1976	cinematographer,camera_department	tt0023145,tt0048595,tt0038723,tt0030863
nm0005698	Walther van den Ende	1947	\N	cinematographer,camera_department	tt0283509,tt0096025,tt0424205,tt0103105
nm0005699	Eduard van der Enden	1928	2011	cinematographer,camera_department,assistant_director	tt0107007,tt0071756,tt0083914,tt0060044
nm0005700	Teo Escamilla	1940	1997	cinematographer,camera_department,director	tt0088311,tt0097909,tt0090636,tt0094729
nm0005701	Daniel L. Fapp	1904	1986	cinematographer,camera_department,archive_footage	tt0055614,tt0057115,tt0063121,tt0064639
nm0005702	Vincent J. Farrar	1905	1950	cinematographer,camera_department	tt0178005,tt0040904,tt0038864,tt0178610
nm0005703	Don E. FauntLeRoy	1953	\N	cinematographer,camera_department,director	tt0263488,tt0108823,tt0103064,tt0089218
nm0005704	Marc Felperlaan	1944	\N	cinematographer,camera_department,art_department	tt0389557,tt0367652,tt0247303,tt0094651
nm0005705	Gunnar Fischer	1910	2011	cinematographer,camera_department,director	tt0050986,tt0050976,tt0048641,tt0036197
nm0005706	George J. Folsey	1898	1988	cinematographer,camera_department,actor	tt0047472,tt0037059,tt0049223,tt0039437
nm0005707	Emilio Foriscot	1904	2001	cinematographer,camera_department,archive_footage	tt0040295,tt0066949,tt0041803,tt0066412
nm0005708	Alfredo Fraile	1912	1994	cinematographer,producer,director	tt0038861,tt0058412,tt0029469,tt0062118
nm0005709	Robert Fraisse	1940	\N	cinematographer,camera_department,actor	tt0215750,tt0122690,tt0364970,tt0426883
nm0005710	William A. Fraker	1923	2010	camera_department,cinematographer,director	tt0062765,tt0086567,tt0073486,tt0078723
nm0005711	Freddie Francis	1917	2007	director,cinematographer,camera_department	tt0080678,tt0166896,tt0097441,tt0101540
nm0005712	Ellsworth Fredericks	1904	1993	cinematographer,camera_department	tt0049366,tt0050933,tt0058576,tt0049964
nm0005713	Karl Freund	1890	1969	cinematographer,director,camera_department	tt0040506,tt0023245,tt0017136,tt0021814
nm0005714	Tak Fujimoto	1939	\N	cinematographer,camera_department,actor	tt0102926,tt0112857,tt0167404,tt0076759
nm0005715	Ronald Víctor García	\N	\N	cinematographer,director,writer	tt0105665,tt0140613,tt0107619,tt0099493
nm0005716	Lee Garmes	1898	1978	cinematographer,director,producer	tt0023458,tt0023427,tt0021156,tt0037280
nm0005717	Fructuós Gelabert	1874	1955	director,cinematographer,writer	tt0004954,tt0000859,tt0001756,tt0002156
nm0005718	Juan Gelpí	1932	\N	cinematographer,camera_department	tt0059546,tt0075059,tt0060374,tt0052741
nm0005719	Merritt B. Gerstad	1900	1974	cinematographer,camera_department	tt0026778,tt0016989,tt0018528,tt0020492
nm0005720	Alfred Gilks	1891	1970	cinematographer,camera_department,writer	tt0043278,tt0049730,tt0024336,tt0029488
nm0005721	Blasco Giurato	1941	2022	cinematographer,camera_department	tt0095765,tt4736486,tt0110917,tt0140332
nm0005722	Hone Glendinning	1912	1997	cinematographer,camera_department	tt0040365,tt0158361,tt0030734,tt0047064
nm0005723	Pierre-William Glenn	1943	2024	cinematographer,camera_department,director	tt0070460,tt0130675,tt0081182,tt0106195
nm0005724	Willy Goldberger	1898	1961	cinematographer,director,writer	tt0041874,tt0447386,tt0024896,tt0158362
nm0005725	Jaems Grant	1952	\N	cinematographer,camera_department,art_director	tt0138487,tt2180697,tt0389125,tt0353676
nm0005726	Jack N. Green	1946	\N	camera_department,cinematographer,director	tt0105695,tt0112579,tt0379786,tt0117998
nm0005727	Mutz Greenbaum	1896	1968	cinematographer,director,writer	tt0028033,tt0036929,tt0016101,tt4905910
nm0005728	Jack Greenhalgh	1904	1971	cinematographer,camera_department	tt0039133,tt0041918,tt0038366,tt0037336
nm0005729	Loyal Griggs	1906	1978	cinematographer,visual_effects,camera_department	tt0046303,tt0049833,tt0047673,tt0043924
nm0005730	Ennio Guarnieri	1930	2019	cinematographer,camera_department,special_effects	tt0053779,tt0084821,tt0069824,tt0091113
nm0005731	René Guissart	1888	1960	cinematographer,director,camera_department	tt0030816,tt0177868,tt0158967,tt0198895
nm0005732	David Gurfinkel	1938	\N	cinematographer,camera_department,writer	tt0093692,tt0108308,tt0163595,tt0376007
nm0005733	Heinrich Gärtner	1895	1962	cinematographer,director,camera_department	tt0051588,tt0049499,tt0048697,tt0044574
nm0005734	Conrad L. Hall	1926	2003	cinematographer,camera_department,writer	tt0257044,tt0169547,tt0096244,tt0064115
nm0005735	Ernest Haller	1896	1970	cinematographer,camera_department,archive_footage	tt0031381,tt0037913,tt0056687,tt0048545
nm0005736	Willy Hameister	1889	1938	cinematographer,camera_department	tt0010323,tt0362444,tt7363364,tt0340177
nm0005737	Russell Harlan	1903	1974	cinematographer,camera_department	tt0056592,tt0056059,tt0051201,tt0044121
nm0005738	Byron Haskin	1899	1984	director,special_effects,cinematographer	tt0046534,tt0036613,tt0033028,tt0040567
nm0005739	Bernd Heinl	1947	\N	cinematographer,camera_department,producer	tt0462504,tt0103003,tt0119416,tt0113443
nm0005740	Otto Heller	1896	1970	cinematographer,actor,camera_department	tt0059319,tt0054167,tt0048281,tt0060086
nm0005741	Sidney Hickox	1895	1982	cinematographer,camera_department,actor	tt0038355,tt0037382,tt0042041,tt0047573
nm0005742	Jack Hildyard	1908	1990	cinematographer,camera_department,archive_footage	tt0050212,tt0060708,tt0061452,tt0074896
nm0005743	Winton C. Hoch	1905	1979	cinematographer,camera_department,miscellaneous	tt0045061,tt0057798,tt0041866,tt0049730
nm0005744	Slawomir Idziak	1945	\N	cinematographer,writer,camera_department	tt0108394,tt0265086,tt0119177,tt0228750
nm0005745	Silvano Ippoliti	1923	1994	cinematographer,camera_department	tt0080491,tt0092720,tt0089598,tt0087481
nm0005746	Konstantin Irmen-Tschet	1902	1977	cinematographer,special_effects,camera_department	tt0019901,tt0023996,tt23860220,tt0022869
nm0005747	Fred Jackman Jr.	1913	1982	cinematographer,director,special_effects	tt0054563,tt0035458,tt0036161,tt0040920
nm0005748	Julius Jaenzon	1885	1961	cinematographer,director,actor	tt0213210,tt0020473,tt0021498,tt0006617
nm0005749	Jeffrey Jur	\N	\N	cinematographer,camera_department,archive_footage	tt8740790,tt14661396,tt0319969,tt0092890
nm0005750	Hans Jura	1921	1996	cinematographer,camera_department	tt0057223,tt0057035,tt0061866,tt0064403
nm0005751	Jürgen Jürges	1940	\N	cinematographer,camera_department,actor	tt0204736,tt0360960,tt0134185,tt0163054
nm0005752	Ernst W. Kalinke	1918	1992	cinematographer,camera_department,director	tt0193297,tt0054480,tt0047656,tt0049003
nm0005753	Savas Kalogeras	1938	1996	cinematographer,camera_department	tt0078900,tt0076498,tt0454515,tt0072406
nm0005754	Avraham Karpick	\N	\N	cinematographer,camera_department,actor	tt0116987,tt0089421,tt2568204,tt0113719
nm0005755	Victor J. Kemper	1927	2023	cinematographer,camera_department,archive_footage	tt0088930,tt0080736,tt0085995,tt0072890
nm0005756	Bruno de Keyzer	1949	2019	cinematographer,camera_department,actor	tt0074811,tt0088318,tt1599975,tt0090557
nm0005757	Benjamin H. Kline	1894	1974	cinematographer,director,camera_department	tt0026443,tt0025630,tt0040414,tt0021491
nm0005758	Fred J. Koenekamp	1922	2017	cinematographer,camera_department,archive_footage	tt0072308,tt0066206,tt0057765,tt0086856
nm0005759	Lajos Koltai	1946	\N	cinematographer,director,camera_department	tt0120731,tt0213847,tt0367082,tt0113501
nm0005760	Günther Krampf	1899	1950	cinematographer	tt0015202,tt0023410,tt0018737,tt0042478
nm0005761	Robert Krasker	1913	1981	cinematographer,camera_department,archive_footage	tt0041959,tt0054847,tt0037558,tt0047029
nm0005762	Milton R. Krasner	1904	1988	cinematographer,camera_department,archive_footage	tt0050105,tt0042192,tt0041859,tt0065462
nm0005763	Willy Kurant	1934	2021	cinematographer,camera_department,miscellaneous	tt0258038,tt0094011,tt0064126,tt0060675
nm0005764	Robert Kurrle	1890	1932	cinematographer,camera_department,miscellaneous	tt0019320,tt0020977,tt0013824,tt0018908
nm0005765	Luigi Kuveiller	1927	2013	cinematographer,camera_department,archive_footage	tt0053619,tt0073582,tt0065119,tt0204098
nm0005766	Joseph LaShelle	1900	1989	cinematographer,camera_department	tt0037008,tt0053604,tt0048356,tt0056085
nm0005767	Edward Lachman	1946	\N	cinematographer,camera_department,director	tt0297884,tt2402927,tt0209077,tt0368794
nm0005768	Ernest Laszlo	1898	1984	cinematographer,camera_department	tt0074812,tt0057193,tt0055031,tt0053946
nm0005769	Philip H. Lathrop	1912	1995	cinematographer,camera_department,actor	tt0057413,tt0071455,tt0057840,tt0077474
nm0005770	Marcel Le Picard	1887	1952	cinematographer,camera_department	tt0029130,tt0037441,tt0033426,tt0036164
nm0005771	Franz Xaver Lederle	1931	\N	cinematographer,camera_department,writer	tt0083723,tt0068295,tt0062484,tt0062919
nm0005772	Matthew F. Leonetti	1941	\N	cinematographer,camera_department,producer	tt0114558,tt0117731,tt0120844,tt0289879
nm0005773	Dennis C. Lewiston	1934	2014	cinematographer,camera_department,director	tt0121744,tt0073629,tt0089306,tt0089283
nm0005774	Pierre Lhomme	1930	2019	cinematographer,camera_department,director	tt0099334,tt0094828,tt0075946,tt0064040
nm0005775	Edward Linden	1891	1956	cinematographer,camera_department,special_effects	tt0024216,tt0030725,tt36998854,tt0026216
nm0005776	Karl Walter Lindenlaub	1957	\N	cinematographer,camera_department,writer	tt0116629,tt0111282,tt0097910,tt0105698
nm0005777	Dietrich Lohmann	1943	1997	cinematographer,camera_department,writer	tt0120647,tt0109456,tt0067163,tt0119874
nm0005778	Angelo Lotti	\N	\N	cinematographer,camera_department	tt0061878,tt0058289,tt0055855,tt0128447
nm0005779	William Lubtchansky	1937	2010	cinematographer,camera_department,director	tt0443844,tt0059516,tt0086889,tt0087289
nm0005780	Igor Luther	1942	2020	cinematographer,camera_department	tt0074515,tt0162950,tt0078875,tt0162943
nm0005781	Bernard Lutic	1943	2000	cinematographer,camera_department,actor	tt0301727,tt0109454,tt0120453,tt0088357
nm0005782	Chester A. Lyons	1885	1936	cinematographer,camera_department	tt0026663,tt0013727,tt0018594,tt0021071
nm0005783	Alvaro Mancori	1923	2011	cinematographer,producer,camera_department	tt0271489,tt0059427,tt0060632,tt0275668
nm0005784	Oliver T. Marsh	1892	1941	cinematographer,camera_department	tt0030817,tt0032256,tt0029222,tt0032143
nm0005785	Jack A. Marta	1903	1991	cinematographer,camera_department,miscellaneous	tt0060153,tt0062591,tt0029054,tt0067023
nm0005786	Otello Martelli	1902	2000	cinematographer,camera_department	tt0047528,tt0053779,tt0045608,tt0051400
nm0005787	Stelvio Massi	1929	2004	cinematographer,director,camera_department	tt0058461,tt0072200,tt0076554,tt0142368
nm0005788	Hanns Matula	1923	1987	cinematographer,camera_department,editor	tt0041680,tt0055717,tt0048684,tt0057462
nm0005789	Rudolph Maté	1898	1964	cinematographer,director,camera_department	tt0038559,tt0032484,tt0035446,tt0046789
nm0005790	Alfredo Mayo	\N	\N	camera_department,cinematographer	tt0227277,tt0214608,tt0104788,tt0101026
nm0005791	Donald McAlpine	1934	\N	cinematographer,camera_department,director	tt0203009,tt0117509,tt2910904,tt0093773
nm0005792	Ted D. McCord	1900	1976	cinematographer,camera_department,miscellaneous	tt0059742,tt0040897,tt0048028,tt0056626
nm0005793	Phil Meheux	1941	\N	cinematographer,camera_department,actor	tt0381061,tt0120053,tt0298814,tt0113189
nm0005794	William C. Mellor	1903	1963	cinematographer,camera_department,assistant_director	tt0043924,tt0049261,tt0052738,tt0050839
nm0005795	Manuel Merino	1918	2001	cinematographer,camera_department,actor	tt0063859,tt0067999,tt0040575,tt0071439
nm0005796	John J. Mescall	1899	1962	cinematographer,director,camera_department	tt0026138,tt0035413,tt0024894,tt0019987
nm0005797	Russell Metty	1906	1978	cinematographer,camera_department,miscellaneous	tt0054331,tt0067525,tt0038991,tt0052311
nm0005798	Pierre Mignot	1944	\N	cinematographer,camera_department,director	tt0401085,tt0216216,tt0090648,tt0313300
nm0005799	Elfi Mikesch	1940	\N	cinematographer,director,writer	tt0162953,tt0163001,tt2999826,tt0102383
nm0005800	Victor Milner	1893	1972	cinematographer,actor,camera_department	tt0035244,tt0020112,tt0024991,tt0027664
nm0005801	Douglas Milsome	1939	\N	cinematographer,camera_department,assistant_director	tt0093058,tt0102798,tt0107711,tt0118771
nm0005802	Vicente Minaya	\N	\N	cinematographer,director,camera_department	tt0255380,tt0067049,tt0071471,tt0073713
nm0005803	Hal Mohr	1894	1974	cinematographer,director,camera_department	tt0036261,tt0026714,tt1918998,tt0044631
nm0005804	Bruno Mondi	1903	1991	cinematographer,camera_department,archive_footage	tt0042627,tt0048624,tt0012494,tt0026581
nm0005805	Donald M. Morgan	1932	\N	cinematographer,camera_department	tt0088172,tt0114369,tt0114781,tt0078723
nm0005806	Ira H. Morgan	1889	1959	cinematographer,camera_department,actor	tt0027977,tt0024727,tt0025424,tt0040243
nm0005807	Oswald Morris	1915	2014	cinematographer,camera_department,miscellaneous	tt0067093,tt0069281,tt0073341,tt0063385
nm0005808	Reginald H. Morris	1918	2004	cinematographer,camera_department,director	tt0085334,tt0078346,tt0071222,tt0084522
nm0005809	Joseph-Louis Mundwiller	1886	1967	cinematographer,camera_department,director	tt0293777,tt0191246,tt1029260,tt0201475
nm0005810	Robby Müller	1940	2018	cinematographer,camera_department,actor	tt0115751,tt0087884,tt0112817,tt0087995
nm0005811	Armando Nannuzzi	1925	2001	cinematographer,camera_department,director	tt0091499,tt0059856,tt0066549,tt0050435
nm0005812	Hiro Narita	1941	\N	cinematographer,camera_department,miscellaneous	tt0102975,tt0102803,tt0115571,tt0268695
nm0006155	Jürgen Knieper	1941	\N	composer,music_department,actor	tt0093191,tt0071483,tt0082176,tt0099389
nm0005813	Alfonso Nieva	\N	\N	cinematographer,camera_department,director	tt0137478,tt0060795,tt0247872,tt0064358
nm0005814	Bruno Nuytten	1945	\N	cinematographer,director,writer	tt0091288,tt0094828,tt0074888,tt0074184
nm0005815	Sven Nykvist	1922	2006	cinematographer,director,actor	tt0096332,tt0083922,tt0069467,tt0091670
nm0005816	Miroslav Ondrícek	1934	2015	cinematographer,camera_department,archive_footage	tt0086879,tt0063850,tt0079261,tt0084917
nm0005817	Arthur J. Ornitz	1916	1985	cinematographer,director,writer	tt0071402,tt0070666,tt0062794,tt0084049
nm0005818	Roy F. Overbaugh	1882	1966	cinematographer,camera_department	tt0011130,tt0021224,tt0014605,tt0010048
nm0005819	Godofredo Pacheco	1919	1974	cinematographer,camera_department	tt0055939,tt0070631,tt0056567,tt0057154
nm0005820	Rafael Pacheco	1921	\N	cinematographer,camera_department,actor	tt0059427,tt0059935,tt0066228,tt0066777
nm0005821	Theodore J. Pahle	1899	1979	cinematographer,director,actor	tt0052530,tt0017841,tt0036212,tt0089078
nm0005822	Riccardo Pallottini	1908	1982	cinematographer,camera_department,director	tt0059588,tt0063859,tt0054044,tt0055116
nm0005823	Ernest Palmer	1885	1978	cinematographer,camera_department	tt0033405,tt0042286,tt0019429,tt0018907
nm0005824	Phil Parmet	1942	\N	cinematographer,camera_department,producer	tt1265990,tt0462322,tt0373883,tt0113101
nm0005825	Edward J. Pei	\N	\N	cinematographer,camera_department,actor	tt19896510,tt32252772,tt8404094,tt4687880
nm0005826	C.M. Pennington-Richards	1911	2005	director,cinematographer,writer	tt0044008,tt0233069,tt0054820,tt0053496
nm0005827	James Pergola	\N	\N	cinematographer,producer,camera_department	tt0097815,tt0080487,tt0095882,tt0096542
nm0005828	Lewis W. Physioc	1879	1972	visual_effects,cinematographer,art_department	tt0009267,tt0007667,tt0014545,tt0020722
nm0005829	Claire Pijman	1965	\N	cinematographer,camera_department,director	tt8842066,tt1144521,tt0108276,tt0257986
nm0005830	Tomislav Pinter	1926	2008	cinematographer,camera_department	tt0415164,tt0060912,tt0076381,tt0173063
nm0005831	Larry Pizer	1925	2008	cinematographer,camera_department,assistant_director	tt0071994,tt0202179,tt0086443,tt0062089
nm0005832	Franz Planer	1894	1963	cinematographer,camera_department,archive_footage	tt0046250,tt0042367,tt0046672,tt0041239
nm0005833	Gábor Pogány	1915	1999	cinematographer,camera_department	tt0052791,tt0057638,tt0058234,tt0134061
nm0005834	Gene Polito	1918	2010	cinematographer,camera_department	tt0070909,tt0078446,tt0064177,tt0074559
nm0005835	Sol Polito	1892	1960	cinematographer,camera_department	tt0029843,tt0036613,tt0034167,tt0034578
nm0005836	Dick Pope	1947	2024	cinematographer,camera_department,actor	tt0443543,tt2473794,tt0383694,tt0117589
nm0005837	Jack Priestley	1926	1993	cinematographer,camera_department,director	tt0051297,tt0072251,tt0096874,tt0098932
nm0005838	Georges Périnal	1897	1965	cinematographer,camera_department	tt0033152,tt0021409,tt0043668,tt0040338
nm0005839	Elemér Ragályi	1939	2023	cinematographer,actor,director	tt0824329,tt0078353,tt1863192,tt0407703
nm0005840	Ray Rennahan	1896	1980	cinematographer,camera_department,miscellaneous	tt0031381,tt0033405,tt0035896,tt0032410
nm0005841	Claude Renoir	1913	1993	cinematographer,camera_department,set_decorator	tt0076752,tt0062711,tt0028950,tt0056937
nm0005842	Gayne Rescher	1924	2008	cinematographer,camera_department,actor	tt0084726,tt0098832,tt0096100,tt0157243
nm0005843	Ben F. Reynolds	1890	1948	cinematographer,camera_department,sound_department	tt0021515,tt0015881,tt0025491,tt0027812
nm0005844	Günther Rittau	1893	1971	cinematographer,director,writer	tt0017136,tt0363193,tt0035848,tt0135818
nm0005845	Owen Roizman	1936	2023	cinematographer,actor,camera_department	tt0067116,tt0084805,tt0070047,tt0074958
nm0005846	Gernot Roll	1939	2020	cinematographer,camera_department,director	tt0108900,tt0161860,tt1998204,tt0107330
nm0005847	Phil Rosen	1888	1951	director,cinematographer,producer	tt0029054,tt0020866,tt0020267,tt0032409
nm0005848	Charles Rosher Jr.	1935	2015	camera_department,cinematographer	tt0098105,tt0075612,tt0072300,tt0067610
nm0005849	Harold Rosson	1895	1988	cinematographer,camera_department,assistant_director	tt0042208,tt0045152,tt0027657,tt0032138
nm0005850	Giuseppe Rotunno	1923	2021	cinematographer,camera_department,actor	tt0078754,tt0096764,tt0057091,tt0071129
nm0005851	Juan Ruiz Anchía	1949	\N	cinematographer,camera_department,editor	tt1629705,tt0360009,tt0310910,tt0104348
nm0005852	John L. Russell	1905	1967	cinematographer,camera_department,sound_department	tt0054215,tt0045395,tt0043778,tt0048150
nm0005853	Joseph Ruttenberg	1889	1983	cinematographer,camera_department,archive_footage	tt0036855,tt0051658,tt0035093,tt0033553
nm0005854	Giuseppe Ruzzolini	1930	2007	cinematographer,camera_department	tt0087262,tt0070215,tt0067140,tt0061613
nm0005855	Javier Salmones	1953	\N	cinematographer,camera_department	tt33293050,tt29270150,tt0188620,tt0188030
nm0005856	Theo van de Sande	1947	\N	cinematographer,camera_department,producer	tt0120461,tt0120611,tt0110725,tt0419946
nm0005857	Edward Scaife	1912	1994	cinematographer,camera_department	tt0043265,tt0041959,tt0061578,tt0078477
nm0005858	Henning Schellerup	1928	2000	cinematographer,camera_department,director	tt0072856,tt0087800,tt0095271,tt0128771
nm0005859	Tobias A. Schliessler	1958	\N	cinematographer,camera_department,producer	tt2771200,tt0443489,tt1091191,tt0390022
nm0005860	Jörg Schmidt-Reitwein	1939	2023	cinematographer,camera_department,actor	tt0079641,tt0807720,tt0074626,tt0088412
nm0005861	Heinz Schnackertz	1911	1990	cinematographer,camera_department,director	tt0052801,tt0142847,tt0053941,tt0051917
nm0005862	Hans Schneeberger	1895	1971	cinematographer,camera_department,actor	tt0047176,tt0020570,tt0020697,tt0447386
nm0005863	Oskar Schnirch	1902	1995	cinematographer	tt0042563,tt0031264,tt0050969,tt0033694
nm0005864	Charles Edgar Schoenbaum	1893	1951	cinematographer,camera_department	tt0041594,tt0012410,tt0013455,tt0012768
nm0005865	Fred Schuler	1940	\N	cinematographer,camera_department,assistant_director	tt0072890,tt0075686,tt0085794,tt0079522
nm0005866	Xaver Schwarzenberger	1946	\N	cinematographer,director,camera_department	tt0087163,tt0089753,tt0086368,tt0100462
nm0005867	Eugen Schüfftan	1893	1977	cinematographer,visual_effects,miscellaneous	tt0054997,tt0017136,tt0053459,tt0030643
nm0005868	John Seale	1942	\N	camera_department,cinematographer,director	tt1392190,tt0116209,tt0090329,tt0134119
nm0005869	Guido Seeber	1879	1940	cinematographer,director,special_effects	tt0013829,tt0229543,tt0485853,tt0024036
nm0005870	John F. Seitz	1892	1979	cinematographer	tt0036775,tt0037884,tt0043014,tt0034240
nm0005871	Dean Semler	1943	\N	cinematographer,camera_department,assistant_director	tt0472043,tt0099348,tt0082694,tt0097162
nm0005872	Leon Shamroy	1901	1974	cinematographer,camera_department,director	tt0056937,tt0049408,tt0037865,tt0063442
nm0005873	William A. Sickner	1890	1967	cinematographer,camera_department	tt0046623,tt0031903,tt0046401,tt0042251
nm0005874	Allen G. Siegler	1892	1960	cinematographer,director,writer	tt0027368,tt0028525,tt0016679,tt0026186
nm0005875	Newton Thomas Sigel	1955	\N	cinematographer,camera_department,director	tt9130508,tt9777644,tt1727824,tt0780504
nm0005876	Sandi Sissel	1949	\N	cinematographer,camera_department,director	tt0311113,tt0096028,tt0105121,tt0098782
nm0005877	William V. Skall	1897	1976	cinematographer,camera_department,editorial_department	tt0043949,tt0040746,tt0035244,tt0040491
nm0005878	Douglas Slocombe	1913	2016	cinematographer,camera_department,archive_footage	tt0073631,tt0071577,tt0070239,tt0082971
nm0005879	Witold Sobocinski	1929	2018	cinematographer,miscellaneous,camera_department	tt0095174,tt0233781,tt0089714,tt0056971
nm0005880	Leonard J. South	1913	2006	cinematographer,camera_department,editor	tt0058329,tt0061107,tt0074512,tt0061747
nm0005881	Mike Southon	\N	\N	cinematographer,camera_department,director	tt0119227,tt27426505,tt0238552,tt0297012
nm0005882	Theodor Sparkuhl	1894	1946	cinematographer,director,camera_department	tt0175498,tt0026225,tt0025571,tt0030875
nm0005883	Dante Spinotti	1943	\N	cinematographer,camera_department,actor	tt0119488,tt0104691,tt0140352,tt0113277
nm0005884	Jan Stallich	1907	1973	cinematographer,miscellaneous,writer	tt1082841,tt0188186,tt0124888,tt0058132
nm0005885	Harold E. Stine	1903	1977	cinematographer,sound_department,visual_effects	tt0069113,tt0066026,tt0044248,tt0050037
nm0005886	Vittorio Storaro	1940	\N	cinematographer,camera_department,actor	tt0093389,tt0099422,tt0078788,tt0082979
nm0005887	Archie Stout	1886	1973	cinematographer,camera_department,visual_effects	tt0045061,tt0040369,tt0022637,tt0029030
nm0005888	Harry Stradling Jr.	1925	2017	cinematographer,camera_department	tt0070903,tt0065988,tt0068156,tt0073396
nm0005889	Harry Stradling Sr.	1901	1970	cinematographer,camera_department	tt0058385,tt0062994,tt0044081,tt0037988
nm0005890	Göran Strindberg	1917	1991	cinematographer,camera_department,actor	tt0047080,tt0048542,tt0043567,tt0047057
nm0005891	Tim Suhrstedt	1948	\N	cinematographer,camera_department	tt0387808,tt0096928,tt0090887,tt0095690
nm0005892	Robert Surtees	1906	1985	cinematographer,camera_department,miscellaneous	tt0052618,tt0061722,tt0070735,tt0067328
nm0005893	Peter Suschitzky	1941	\N	cinematographer,camera_department,director	tt0765443,tt0094964,tt0102511,tt0399146
nm0005894	Ramón F. Suárez	1930	\N	cinematographer,camera_department,writer	tt0105045,tt0060722,tt0089024,tt0096213
nm0005895	Edmond Séchan	1919	2002	cinematographer,director,writer	tt0071943,tt0317631,tt0069947,tt0177297
nm0005896	Philip Tannura	1897	1973	cinematographer,actor,director	tt0043543,tt0016678,tt0016371,tt0029171
nm0005897	David Tattersall	1960	\N	cinematographer,camera_department,editor	tt0120689,tt0121766,tt0120157,tt0970416
nm0005898	Ted Tetzlaff	1903	1995	cinematographer,director	tt0038787,tt0028010,tt0035417,tt0039772
nm0005899	Sven Thermænius	1910	1971	cinematographer,camera_department,producer	tt7678374,tt0025832,tt0036116,tt6571388
nm0005900	Hans Theyer	1884	1955	cinematographer,camera_department,director	tt1189323,tt1679559,tt1598461,tt1598469
nm0005901	Armand Thirard	1899	1973	cinematographer,actor,camera_department	tt0046911,tt0046268,tt0034093,tt0024710
nm0005902	Erling Thurmann-Andersen	1945	2002	cinematographer,camera_department,director	tt0091171,tt0089771,tt0162985,tt0119375
nm0005903	Eduard Tisse	1897	1961	cinematographer,director,camera_department	tt0015648,tt0037824,tt0049001,tt0042671
nm0005904	Gregg Toland	1904	1948	cinematographer,camera_department,director	tt0033467,tt0032145,tt0036868,tt0032551
nm0005905	Aldo Tonti	1910	1988	cinematographer,actor,camera_department	tt0053244,tt0050783,tt0055774,tt0052280
nm0005906	Roland Totheroh	1890	1967	cinematographer,actor,camera_department	tt0015864,tt0021749,tt0027977,tt0032553
nm0005907	Luciano Tovoli	1936	\N	cinematographer,camera_department,editorial_department	tt0073580,tt0084040,tt0084777,tt0096160
nm0005908	Luciano Trasatti	\N	\N	cinematographer,camera_department,transportation_department	tt0060590,tt0148011,tt0166135,tt0065460
nm0005909	Brian Tufano	1939	2023	cinematographer,camera_department,director	tt0117951,tt0083658,tt0249462,tt0111149
nm0005910	Geoffrey Unsworth	1914	1978	cinematographer,camera_department,actor	tt0068327,tt0062622,tt0078346,tt0075784
nm0005911	Jost Vacano	1934	\N	cinematographer,camera_department,archive_footage	tt0082096,tt0120201,tt0093870,tt0100802
nm0005912	Charles Van Damme	1946	\N	cinematographer,camera_department,director	tt0110210,tt0091507,tt1332563,tt0252568
nm0005913	James Van Trees	1890	1973	cinematographer,camera_department,actor	tt0027628,tt0034804,tt0034232,tt0021918
nm0005914	Gérard Vandenberg	1932	1999	cinematographer,director,writer	tt0090806,tt0059153,tt0163052,tt0060158
nm0005915	René Verzier	1934	2024	cinematographer,camera_department	tt0090181,tt0269566,tt0092172,tt0165570
nm0005916	Sacha Vierny	1919	2001	cinematographer,assistant_director,camera_department	tt0097108,tt0114134,tt0054632,tt0061395
nm0005917	Joseph Vilsmaier	1939	2020	cinematographer,director,producer	tt0108211,tt0128133,tt0114354,tt0100457
nm0005918	Ted Voigtlander	1913	1988	cinematographer,camera_department	tt0071007,tt0080516,tt0054519,tt0058855
nm0005919	Mario Vulpiani	\N	\N	cinematographer,actor,archive_footage	tt0169353,tt0064959,tt0070130,tt0204098
nm0005920	Esa Vuorinen	1945	\N	cinematographer,actor,camera_department	tt0104588,tt0078186,tt0099673,tt0205027
nm0005921	Václav Vích	1898	1966	cinematographer,actor,camera_department	tt0039300,tt0029607,tt0019850,tt0044547
nm0005922	Fritz Arno Wagner	1894	1958	cinematographer,camera_department,actor	tt0022100,tt0013442,tt0023563,tt0011703
nm0005923	Ric Waite	1933	2012	cinematographer,camera_department,assistant_director	tt0083511,tt0087985,tt0090859,tt0102614
nm0009423	Rita Absmeier	\N	\N	make_up_department	tt0106209
nm0005924	Harry Waxman	1912	1984	cinematographer,camera_department,special_effects	tt0080745,tt0053242,tt0070917,tt0075066
nm0005925	Franz Weihmayr	1903	1969	cinematographer,director	tt0027653,tt0209960,tt0042036,tt0037689
nm0005926	Jan Weincke	1945	\N	cinematographer,camera_department,miscellaneous	tt0088445,tt0118683,tt0082633,tt0119683
nm0005927	Helge Weindler	1947	1996	cinematographer	tt0806910,tt0086470,tt0085660,tt0176090
nm0005928	Willy Winterstein	1895	1965	cinematographer,camera_department	tt0031763,tt0043484,tt0137865,tt0044342
nm0005929	Oliver Wood	1942	2023	cinematographer,camera_department,actor	tt0440963,tt1386588,tt0119094,tt5108870
nm0005930	Bruce Worrall	\N	\N	cinematographer,camera_department,director	tt0443501,tt0149357,tt0454082,tt3920814
nm0005931	Alvin Wyckoff	1877	1957	cinematographer,actor,camera_department	tt0004545,tt0025420,tt0026690,tt0016051
nm0005932	Reginald H. Wyer	1901	1970	cinematographer,camera_department,producer	tt0062037,tt0046351,tt0052170,tt0043650
nm0005933	Steve Yaconelli	1941	2003	cinematographer,camera_department,director	tt0086567,tt0102685,tt0080455,tt0103874
nm0005934	Robert D. Yeoman	1951	\N	cinematographer,camera_department,actor	tt2278388,tt14230388,tt1748122,tt0097240
nm0005935	Bernard Zitzermann	1942	2018	cinematographer,camera_department,writer	tt0077941,tt0080415,tt0085526,tt0083611
nm0005936	Vilmos Zsigmond	1930	2016	cinematographer,camera_department,actor	tt0075860,tt0387877,tt0070334,tt0077416
nm0005937	Sergio D'Offizi	1934	\N	cinematographer,camera_department	tt0078935,tt0082714,tt0069019,tt0088940
nm0005938	Klaus von Rautenfeld	1909	1982	cinematographer,camera_department	tt0052984,tt0033878,tt0060600,tt0052533
nm0005939	Elner Åkesson	1890	1962	cinematographer,camera_department	tt0031270,tt0032171,tt0029327,tt0027016
nm0005940	Heikki Aaltoila	1905	1992	composer,music_department,actor	tt0133144,tt0138657,tt0037852,tt0138805
nm0005941	Richard Addinsell	1904	1977	composer,music_department,soundtrack	tt1655420,tt0044008,tt0031385,tt0031359
nm0005942	Harry Akst	1894	1963	music_department,actor,writer	tt0319061,tt0491175,tt0120873,tt0211915
nm0005943	Augusto Algueró	1934	2011	composer,music_department,miscellaneous	tt6155172,tt7178640,tt4136774,tt0062401
nm0005944	William Alwyn	1905	1985	composer,music_department,soundtrack	tt18183896,tt0044517,tt0039677,tt0036798
nm0005945	Daniele Amfitheatrof	1901	1983	music_department,composer,soundtrack	tt0089173,tt0037756,tt0038969,tt0040744
nm0005946	Kai Normann Andersen	1900	1967	composer,music_department,soundtrack	tt0124813,tt0125941,tt0124270,tt0033327
nm0005947	George Antheil	1900	1959	music_department,composer,soundtrack	tt0042593,tt0050858,tt0042035,tt0038973
nm0005948	Jorge Arriagada	1943	2024	composer,music_department,actor	tt0105045,tt2207050,tt20259142,tt10873988
nm0005949	Eduard Artemyev	1937	2022	composer,writer,music_department	tt0069293,tt0488478,tt0079944,tt5202654
nm0005950	Miguel Asins Arbó	1916	1996	composer,music_department	tt0054765,tt0063556,tt0057643,tt0073550
nm0005951	Edwin Astley	1922	1998	composer,music_department,soundtrack	tt0120053,tt0063893,tt2293640,tt0058846
nm0005952	Georges Auric	1899	1983	composer,music_department,actor	tt0055018,tt0046268,tt0095174,tt0048021
nm0005953	Luis Bacalov	1933	2017	composer,music_department,writer	tt0110877,tt1853728,tt0266697,tt0060315
nm0005954	C. Bakaleinikoff	1896	1966	music_department,composer,actor	tt0038787,tt0039689,tt0026138,tt0034587
nm0005955	Mischa Bakaleinikoff	1890	1960	music_department,composer,soundtrack	tt0045555,tt0104714,tt0035488,tt0040243
nm0005956	George Bassman	1914	1997	music_department,composer,soundtrack	tt0032138,tt0452637,tt0048356,tt0093818
nm0005957	Walter Baumgartner	1904	1997	composer,actor,soundtrack	tt0064945,tt0167165,tt0083291,tt0074548
nm0005958	Les Baxter	1922	1996	music_department,composer,actor	tt0100935,tt1950186,tt2679042,tt1791528
nm0005959	Giuseppe Becce	1877	1973	composer,music_department,actor	tt0010323,tt0003330,tt0020570,tt1202196
nm0005960	Eric Bengtson	1897	1948	music_department,composer,actor	tt0030807,tt0031270,tt0025341,tt0028215
nm0005961	Richard Rodney Bennett	1936	2012	composer,music_department,soundtrack	tt0071877,tt0109831,tt0061648,tt0065720
nm0005962	Carmelo A. Bernaola	1929	2002	composer,music_department,actor	tt0061608,tt0095830,tt0072302,tt0059639
nm0005963	Nick Bicât	1949	\N	composer,music_department,actor	tt0114099,tt0383694,tt0124241,tt0364254
nm0005964	Georges Bizet	1838	1875	music_department,composer,writer	tt0416320,tt0348150,tt0331811,tt0160009
nm0005965	Stanley Black	1913	2002	music_department,composer,writer	tt1311071,tt0105488,tt0054790,tt0041511
nm0005966	Terence Blanchard	1962	\N	composer,music_department,actor	tt7349662,tt0307901,tt8093700,tt0454848
nm0005967	Robert Blum	1900	1994	composer,writer,music_department	tt0032801,tt0051835,tt0047629,tt0127638
nm0005968	Werner Bochmann	1900	1993	composer,music_department,soundtrack	tt0457400,tt0108052,tt0389557,tt0108211
nm0005969	Claude Bolling	1930	2020	composer,music_department,actor	tt0457939,tt7286456,tt0089726,tt0149514
nm0005970	Bernardo Bonezzi	1964	2012	composer,music_department,soundtrack	tt0095675,tt0101026,tt0113918,tt0100793
nm0005971	Hans-Otto Borgmann	1901	1977	composer,music_department,soundtrack	tt0024053,tt0023996,tt0025026,tt0384369
nm0005972	Simon Boswell	1956	\N	composer,music_department,producer	tt1640459,tt0104036,tt0113690,tt0087909
nm0005973	Scott Bradley	1891	1977	music_department,composer,casting_department	tt0114069,tt0335438,tt1231583,tt0093777
nm0005974	Johannes Brahms	1833	1897	music_department,composer,soundtrack	tt0119229,tt0297181,tt1772250,tt0429493
nm0005975	Goran Bregovic	1950	\N	composer,actor,music_department	tt1833116,tt0106307,tt0114787,tt0455782
nm0005976	Bruce Broughton	1945	\N	music_department,composer,actor	tt0120738,tt0112022,tt0090022,tt0093560
nm0005977	Leo Brouwer	1939	\N	composer,music_department,soundtrack	tt0114887,tt0078146,tt0080102,tt0103994
nm0005978	Nacio Herb Brown	1896	1964	music_department,composer,actor	tt0045152,tt0110413,tt0053125,tt0120685
nm0005979	Robert F. Brunner	1938	2009	composer,music_department,soundtrack	tt0067985,tt0065566,tt0058355,tt0070422
nm0005980	George Bruns	1914	1983	composer,music_department,actor	tt0053285,tt0054649,tt0070608,tt0057546
nm0005981	Lothar Brühne	1900	1958	composer,music_department,actor	tt0147863,tt0030938,tt0228352,tt0033770
nm0005982	Roy Budd	1947	1993	music_department,composer,actor	tt0208988,tt0067128,tt0073511,tt0960144
nm0005983	Rahul Dev Burman	1939	1994	music_department,composer,actor	tt0073707,tt0109010,tt0070935,tt0081491
nm0005984	Sachin Dev Burman	1906	1975	composer,music_department,soundtrack	tt0069671,tt0059246,tt0338013,tt0047561
nm0005985	Ralph Burns	1922	2001	music_department,composer,soundtrack	tt0068327,tt0078754,tt0077952,tt0083564
nm0005986	Artie Butler	1942	\N	composer,music_department,actor	tt0075686,tt0084021,tt0069495,tt0490084
nm0005987	David Buttolph	1902	1983	music_department,composer,soundtrack	tt0032028,tt0038279,tt0037089,tt0035432
nm0005988	R. Dale Butts	1910	1990	music_department,composer,soundtrack	tt0037702,tt0048069,tt0048150,tt0039284
nm0005989	Martin Böttcher	1927	2019	composer,music_department,actor	tt0070981,tt0131686,tt0058737,tt0058583
nm0005990	John Cacavas	1930	2014	composer,music_department,soundtrack	tt1877832,tt5968394,tt0337978,tt4139588
nm0005991	Sammy Cahn	1913	1993	music_department,producer,actor	tt0095016,tt0116908,tt4154796,tt0266987
nm0005992	Gérard Calvi	1922	2015	composer,music_department,actor	tt0058692,tt0238330,tt0058159,tt0072379
nm0005993	Gerard Carbonara	1886	1959	music_department,composer,soundtrack	tt0015864,tt0036065,tt0041179,tt0027611
nm0005994	Hoagy Carmichael	1899	1981	actor,music_department,composer	tt0037382,tt0036868,tt0038395,tt0039659
nm0005995	Fiorenzo Carpi	1918	1997	composer,music_department,soundtrack	tt0093651,tt0080700,tt0098120,tt0083725
nm0005996	Gustavo César Carrión	1916	1995	composer,music_department,soundtrack	tt0048929,tt0268441,tt0134695,tt0255847
nm0005997	Mario Castelnuovo-Tedesco	1895	1968	music_department,composer,soundtrack	tt0037515,tt5985672,tt0039903,tt0040552
nm0005998	K. Chakravarthy	\N	2002	composer,actor,music_department	tt0246313,tt0245980,tt0245731,tt0257362
nm0005999	Gary Chang	1953	\N	composer,music_department,sound_department	tt0105690,tt0116654,tt0119013,tt0107843
nm0006000	Saul Chaplin	1912	1997	music_department,producer,composer	tt0055614,tt0043278,tt0047472,tt0059742
nm0006001	Jay Chattaway	1946	\N	composer,music_department,soundtrack	tt0112178,tt0106145,tt0244365,tt0092455
nm0006002	Anand Chitragupth	\N	\N	composer,music_department,actor	tt0095936,tt8936646,tt0099080,tt0099429
nm0006003	Milind Chitragupth	\N	\N	composer,music_department,producer	tt0095936,tt8936646,tt0099080,tt0099429
nm0006004	Frédéric Chopin	1810	1849	music_department,composer,soundtrack	tt0118661,tt0119094,tt0338337,tt1706593
nm0006005	Salil Choudhury	1923	1995	music_artist,composer,music_department	tt0050665,tt0066763,tt0056367,tt0055276
nm0006006	David Chudnow	1902	2002	music_department,composer,producer	tt0041227,tt0041918,tt0040414,tt0178896
nm0006007	Alessandro Cicognini	1906	1995	composer,music_department,writer	tt0040522,tt0109830,tt0045274,tt2446980
nm0006008	Stelvio Cipriani	1937	2018	composer,music_department,actor	tt1334260,tt1028528,tt1638355,tt0462322
nm0006009	Chuck Cirino	\N	\N	composer,cinematographer,editor	tt11110938,tt0090837,tt0098193,tt0455583
nm0006010	Stanley Clarke	1951	\N	composer,music_department,actor	tt0101507,tt0165929,tt0293662,tt0105104
nm0006011	René Cloërec	1911	1995	composer,music_department,soundtrack	tt0054761,tt0035823,tt0038424,tt0155903
nm0006012	Elia Cmiral	\N	\N	composer,music_department,director	tt0122690,tt1031280,tt13357372,tt0318627
nm0006013	Bob Cobert	1924	2020	music_department,composer,actor	tt3385516,tt0389860,tt1077368,tt0059978
nm0006014	Michel Colombier	1939	2004	composer,music_department,soundtrack	tt0328107,tt0091129,tt0102526,tt0086859
nm0006015	Bill Conti	1942	\N	music_department,composer,actor	tt0082398,tt0075148,tt0086197,tt0091326
nm0006016	Michael Convertino	1952	\N	composer,music_department,soundtrack	tt0111070,tt0094812,tt0114660,tt0119432
nm0006017	Carlo Maria Cordio	1952	\N	composer,music_department,producer	tt0105643,tt0098321,tt0083565,tt0085183
nm0006018	Ernesto Cortázar	1897	1953	writer,composer,music_department	tt0146673,tt0234346,tt0242265,tt0042758
nm0006019	Vladimir Cosma	1940	\N	composer,music_department,actor	tt0082269,tt4736486,tt0085213,tt0124626
nm0006020	Bruno Coulais	1954	\N	composer,music_department,actor	tt0372824,tt0327597,tt0301727,tt5198068
nm0006021	Alexander Courage	1919	2008	music_department,composer,actor	tt0060028,tt0107290,tt0069113,tt0796366
nm0006022	Hoyt Curtin	1922	2000	music_department,composer,miscellaneous	tt0443706,tt0811080,tt2120120,tt0408345
nm0006023	John Dankworth	1927	2010	music_department,composer,actor	tt0061653,tt0054518,tt0060708,tt0060533
nm0006024	Ken Darby	1909	1992	composer,music_department,actor	tt0049408,tt0056085,tt0053182,tt0061439
nm0006025	Mason Daring	1949	\N	music_department,composer,actor	tt0120777,tt0116905,tt0198021,tt0337741
nm0006026	Guido De Angelis	1944	\N	composer,producer,writer	tt0084935,tt1028528,tt0069095,tt0462322
nm0006027	Maurizio De Angelis	1947	\N	composer,producer,music_department	tt0084935,tt1028528,tt0069095,tt0462322
nm0006028	Francesco De Masi	1930	2005	composer,music_department,soundtrack	tt7131622,tt5862312,tt0085862,tt0068274
nm0006029	Manuel De Sica	1949	2014	composer,music_department,writer	tt0097702,tt0112652,tt0106238,tt0109592
nm0006030	Frank De Vol	1911	1999	music_department,composer,actor	tt0061735,tt0068935,tt0056687,tt0061578
nm0006031	Barry De Vorzon	1934	\N	music_department,composer,producer	tt0080120,tt0119081,tt0257076,tt0465234
nm0006032	Dick DeBenedictis	1935	\N	music_department,composer,actor	tt0090481,tt0069620,tt0105986,tt0078595
nm0006033	Claude Debussy	1862	1918	music_department,composer,writer	tt1318514,tt1219827,tt11858890,tt1325004
nm0006034	Éric Demarsan	1938	\N	composer,music_department,soundtrack	tt0065531,tt0064040,tt0088591,tt0447619
nm0006035	Alexandre Desplat	1961	\N	composer,music_department,actor	tt1504320,tt1024648,tt0436697,tt2431286
nm0006036	Paul Dessau	1894	1979	composer,music_department,soundtrack	tt0040075,tt0039106,tt0030958,tt0235533
nm0006037	Adolph Deutsch	1897	1980	composer,music_department,actor	tt0047472,tt0053604,tt0048445,tt0033870
nm0006038	James Di Pasquale	1941	\N	composer,music_department,soundtrack	tt0084832,tt0089512,tt0098310,tt0102212
nm0006039	Franz Doelle	1883	1965	composer,music_department,writer	tt0215750,tt0020573,tt0455543,tt0027374
nm0006040	Robert Emmett Dolan	1908	1972	music_department,composer,producer	tt0047673,tt0034862,tt0056085,tt0037000
nm0006041	Klaus Doldinger	1936	\N	composer,music_department,actor	tt0082096,tt0088323,tt0496806,tt0071459
nm0006042	François Dompierre	1943	\N	composer,music_department,actor	tt0116554,tt0087683,tt0089567,tt0207363
nm0006043	Pino Donaggio	1941	\N	composer,music_department,soundtrack	tt0086984,tt0080661,tt0387575,tt0082085
nm0006044	Gaetano Donizetti	1797	1848	music_department,composer,writer	tt0119116,tt2015381,tt0023427,tt0416320
nm0006045	Steve Dorff	1949	\N	composer,music_department,soundtrack	tt0102266,tt0094514,tt0103855,tt0088527
nm0006046	Robert Drasnin	1927	2015	composer,music_department,soundtrack	tt0052520,tt4682804,tt0057765,tt0088634
nm0006047	John Du Prez	1946	\N	music_department,composer,actor	tt0103060,tt0100758,tt0095159,tt0108308
nm0006048	Al Dubin	1891	1945	music_department,actor,soundtrack	tt0138704,tt0025028,tt0026421,tt0107206
nm0006049	Joseph Dubin	1900	1961	music_department,composer,soundtrack	tt0046672,tt0042332,tt0043274,tt0037742
nm0006050	Anne Dudley	1956	\N	composer,music_department,actress	tt0104036,tt0119164,tt3716530,tt6823148
nm0006051	Antoine Duhamel	1925	2014	composer,music_department,actor	tt0081182,tt0964517,tt0269461,tt2347569
nm0006052	George Duning	1908	2000	music_department,composer,soundtrack	tt0045793,tt0088172,tt0060028,tt0081110
nm0006053	Antonín Dvorák	1841	1904	music_department,composer,soundtrack	tt0096633,tt0120667,tt4500922,tt0182789
nm0006054	Antonio Díaz Conde	1914	1976	composer,music_department,miscellaneous	tt0040715,tt0037981,tt0040560,tt0045260
nm0006055	Randy Edelman	1947	\N	music_department,composer,actor	tt0104691,tt0120828,tt0118615,tt0295701
nm0006056	Cliff Eidelman	1964	\N	composer,music_department,soundtrack	tt0102975,tt1001508,tt0120776,tt0403508
nm0006057	Werner Eisbrenner	1908	1981	composer,music_department,actor	tt0108052,tt0047173,tt0033297,tt0040016
nm0006058	Hanns Eisler	1898	1962	composer,music_department,actor	tt0035966,tt0037135,tt0140068,tt0025198
nm0006059	Stephen Endelman	1962	\N	composer,music_department,producer	tt0116324,tt4035574,tt0106489,tt0352277
nm0006060	Adrian Enescu	1948	2016	composer,music_department,sound_department	tt0085522,tt2497852,tt0085460,tt0164854
nm0006061	Brian Eno	1948	\N	composer,music_department,actor	tt0380510,tt0203009,tt0120201,tt2584384
nm0006062	Andrey Eshpay	1925	2015	composer,actor,writer	tt0131660,tt0217841,tt4976538,tt0050775
nm0006063	Alfonso Esparza Oteo	1894	1950	composer,music_department,actor	tt0094894,tt2379713,tt0329575,tt0242026
nm0006064	Manuel Esperón	1911	2011	composer,music_department,sound_department	tt0218075,tt12676326,tt0045662,tt0242266
nm0006065	Bent Fabricius-Bjerre	1924	2020	composer,music_department,producer	tt0236027,tt5062938,tt0083092,tt0095307
nm0006066	Sammy Fain	1902	1989	music_department,composer,actor	tt0045591,tt0053285,tt0077631,tt0076618
nm0006067	Robert Farnon	1917	2005	music_department,composer,miscellaneous	tt0074851,tt0078836,tt0045876,tt0058691
nm0006068	Louis Febre	\N	\N	music_department,composer	tt4669264,tt6902332,tt0239395,tt0115126
nm0006069	Johannes Fehring	1926	2004	music_department,composer,soundtrack	tt0053941,tt0055717,tt0055033,tt0057462
nm0006070	George Fenton	1949	\N	composer,music_department,actor	tt0107048,tt0120631,tt1038919,tt0770752
nm0006071	Allyn Ferguson	1924	2010	composer,music_department,producer	tt0087182,tt0160127,tt5033998,tt0305357
nm0006072	Rafael Ferrer-Fitó	\N	\N	composer,music_department,miscellaneous	tt0063074,tt0050278,tt0061363,tt0041774
nm0006073	Gianni Ferrio	1924	2013	composer,music_department,soundtrack	tt0361748,tt4176826,tt0065374,tt0062035
nm0006074	Cy Feuer	1911	2006	music_department,composer,miscellaneous	tt0068327,tt0030798,tt0033906,tt0031921
nm0006075	Brad Fiedel	1951	\N	music_department,composer,actor	tt0103064,tt0111503,tt0088247,tt1340138
nm0006076	Jerry Fielding	1922	1980	music_department,composer,soundtrack	tt0065214,tt0067800,tt0075029,tt0068638
nm0006077	Robert Folk	\N	\N	composer,music_department,producer	tt0112281,tt1316616,tt20782798,tt0100240
nm0006078	Louis Forbes	1902	1981	music_department,composer,soundtrack	tt0032976,tt0031381,tt0031491,tt0037557
nm0006079	Leo F. Forbstein	1892	1948	music_department,composer,actor	tt0029843,tt0038355,tt0037382,tt0040746
nm0006080	David Michael Frank	\N	\N	composer,music_department,soundtrack	tt0102614,tt0109830,tt0094602,tt0099739
nm0006081	Christopher Franke	1953	\N	composer,music_department,producer	tt0105698,tt9495224,tt0285335,tt1191111
nm0006082	Benjamin Frankel	1906	1973	composer,music_department,soundtrack	tt0058947,tt0044876,tt0046123,tt0042788
nm0006083	Serge Franklin	1942	\N	composer,soundtrack	tt0166902,tt0175392,tt0090932,tt0099283
nm0006084	Milt Franklyn	1897	1962	music_department,composer,soundtrack	tt1334512,tt5606664,tt0362165,tt0094939
nm0006085	Arthur Freed	1894	1973	producer,music_department,actor	tt0043278,tt0045152,tt0110413,tt0053125
nm0006086	Gerald Fried	1928	2023	composer,music_department,actor	tt1408101,tt0070723,tt0049406,tt1399103
nm0006087	Hugo Friedhofer	1901	1981	music_department,composer,soundtrack	tt0036868,tt0043338,tt0050105,tt0029843
nm0006088	Fabio Frizzi	1951	\N	composer,music_department,actor	tt0266697,tt0080057,tt0082307,tt5030296
nm0006089	Dominic Frontiere	1931	2017	music_department,composer,miscellaneous	tt0109456,tt0081568,tt0409459,tt0118884
nm0006090	Giovanni Fusco	1906	1968	composer,music_department,director	tt0053619,tt0042355,tt0052893,tt0058003
nm0006091	Szabolcs Fényes	1912	1986	composer,music_department,actor	tt0033829,tt0032562,tt0033734,tt0059777
nm0006092	Serge Gainsbourg	1928	1991	composer,actor,music_department	tt0086654,tt0073196,tt1028528,tt1259014
nm0006093	Douglas Gamley	1924	1998	music_department,composer,soundtrack	tt0084827,tt0071762,tt0064724,tt0063013
nm0006094	Antón García Abril	1933	2021	composer,music_department,soundtrack	tt0063359,tt0052802,tt0072050,tt0063859
nm0006095	Georges Garvarentz	1932	1993	composer,music_department,soundtrack	tt0059546,tt0120663,tt0065025,tt0061647
nm0006096	Heino Gaze	1908	1967	composer,music_department,actor	tt0045139,tt0049527,tt0045870,tt0047018
nm0009597	Mike Acciaiolli	\N	\N	actor	tt0105603
nm0006097	George Gershwin	1898	1937	music_department,composer,writer	tt0079522,tt0043278,tt7097896,tt0119488
nm0006098	Irving Gertz	1915	2008	music_department,composer,soundtrack	tt0039339,tt0046305,tt0040500,tt0054020
nm0006099	Richard Gibbs	1955	\N	music_department,composer,actor	tt0407362,tt0118998,tt0238546,tt0147800
nm0006100	Albert Glasser	1916	1998	composer,music_department,actor	tt0050118,tt0189604,tt0049343,tt0283048
nm0006101	Mort Glickman	1898	1953	music_department,composer,soundtrack	tt0038435,tt0036697,tt0039914,tt0036161
nm0006102	Goblin	\N	\N	composer,music_department,actor	tt0365748,tt0073582,tt0076786,tt0087909
nm0006103	George de Godzinsky	1914	1994	composer,music_department,actor	tt0133186,tt0125576,tt0037853,tt0040449
nm0006104	Ernest Gold	1921	1999	music_department,composer,soundtrack	tt0057193,tt0053804,tt0053137,tt10539608
nm0006105	Billy Goldenberg	1936	2020	composer,music_department,actor	tt0069097,tt0069599,tt0073596,tt8350360
nm0006106	Elliot Goldenthal	1954	\N	music_department,composer,director	tt0173840,tt0106697,tt0257076,tt0120679
nm0006107	Joel Goldsmith	1957	2012	composer,music_department,sound_department	tt0117731,tt0078087,tt0085894,tt0079945
nm0006108	Miles Goodman	1949	1996	composer,music_department,camera_department	tt0091419,tt0103241,tt0093378,tt0090142
nm0006109	Ron Goodwin	1925	2003	music_department,composer,soundtrack	tt0068611,tt0206634,tt5968394,tt0065207
nm0006110	Coriolano Gori	1927	1982	composer,music_department,soundtrack	tt0060590,tt0061074,tt0145020,tt0078447
nm0006111	Charles Gounod	1818	1893	music_department,composer,writer	tt1706593,tt1440728,tt0289043,tt0332136
nm0006112	Ron Grainer	1922	1981	music_department,composer,actor	tt0067525,tt0075592,tt0062376,tt0064045
nm0006113	Edvard Grieg	1843	1907	music_department,composer,writer	tt0081933,tt0022100,tt11116912,tt0993842
nm0006114	Franz Grothe	1908	1982	composer,music_department,actor	tt5563334,tt0030267,tt0034265,tt0025293
nm0006115	Dave Grusin	1934	\N	music_department,composer,actor	tt0097322,tt0106918,tt0061722,tt0084805
nm0006116	Christopher Gunning	1944	2023	composer,music_department,actor	tt0450188,tt0094525,tt0108858,tt0092428
nm0006117	Nathan Görling	1905	2002	composer,music_department,actor	tt0043199,tt0029893,tt0037314,tt0038564
nm0006118	Manos Hatzidakis	1925	1994	composer,music_department,actor	tt0054198,tt0408306,tt0115639,tt0120655
nm0006119	Richard Hageman	1882	1966	music_department,composer,actor	tt0031971,tt0034285,tt0034175,tt0039655
nm0006120	Earle Hagen	1919	2008	composer,music_department,actor	tt0058816,tt0045810,tt0098439,tt0053479
nm0006121	Marvin Hamlisch	1944	2012	composer,music_department,actor	tt0076752,tt0070903,tt1130080,tt0070735
nm0006122	Jan Hammer	1948	\N	composer,music_department,actor	tt0160127,tt0120888,tt0086759,tt1366344
nm0006123	W. Franke Harling	1887	1958	music_department,composer,soundtrack	tt0031971,tt0138304,tt0095953,tt0097815
nm0006124	Richard Harvey	\N	\N	composer,music_department,soundtrack	tt1754656,tt4244994,tt3062096,tt0816692
nm0006125	Lennie Hayton	1908	1971	composer,music_department,soundtrack	tt0045152,tt0064418,tt0041716,tt0039035
nm0006126	Neal Hefti	1922	2008	music_department,composer,actor	tt4116284,tt0063374,tt0457939,tt3104988
nm0006127	Ray Heindorf	1908	1980	music_department,composer,actor	tt0056262,tt0044079,tt0047573,tt0035575
nm0006128	Werner R. Heymann	1896	1961	music_department,composer,actor	tt0035446,tt0033045,tt0241303,tt1034415
nm0006129	Michael Hoenig	1952	\N	music_department,composer,writer	tt0094761,tt0089370,tt0091635,tt0100140
nm0006130	Friedrich Hollaender	1896	1976	composer,music_department,writer	tt0047437,tt6412452,tt0831887,tt0389557
nm0006131	Arthur Honegger	1892	1955	composer,music_department,writer	tt0027925,tt0137187,tt0030637,tt0047026
nm0006132	Kenyon Hopkins	1912	1983	music_department,composer,soundtrack	tt0050083,tt0054997,tt0056753,tt0065303
nm0006133	James Newton Howard	1951	\N	music_department,composer,soundtrack	tt0360717,tt0468569,tt0372784,tt0368447
nm0006134	Ole Høyer	1927	2002	composer,actor,music_department	tt0090296,tt0064929,tt0093546,tt0125749
nm0006135	Jacques Ibert	1890	1962	composer,music_department,soundtrack	tt0023956,tt0031876,tt0035912,tt0204285
nm0006136	Akira Ifukube	1914	2006	composer,music_department,sound_department	tt0047034,tt23289160,tt1677720,tt4262980
nm0006137	Ilaiyaraaja	1943	\N	music_artist,composer,music_department	tt0887769,tt0101649,tt0140448,tt3185772
nm0006138	Tapio Ilomäki	1904	1955	composer,editor,music_department	tt0137953,tt0036920,tt7330448,tt0126088
nm0006139	Jerrold Immel	1936	\N	music_department,composer,soundtrack	tt0077000,tt0077027,tt0078638,tt0094473
nm0006140	Carlo Innocenzi	1899	1962	composer,music_department,soundtrack	tt0122779,tt0056024,tt0054044,tt0055116
nm0006141	Björn Isfält	1942	1997	composer,music_department,sound_department	tt0108550,tt0065955,tt0089606,tt0088015
nm0006142	Mark Isham	1951	\N	composer,music_department,actor	tt0375679,tt2140479,tt8080122,tt0453562
nm0006143	Pierre Jansen	1930	2015	composer,actor,soundtrack	tt0078467,tt0053666,tt0064106,tt0059432
nm0006144	Maurice Jaubert	1900	1940	composer,music_department,actor	tt2347569,tt0030643,tt0024844,tt0027925
nm0006145	Laurie Johnson	1927	2024	music_department,composer,producer	tt0057012,tt0357413,tt0054518,tt0164295
nm0006146	Gus Kahn	1886	1941	music_department,composer,writer	tt0338337,tt1053424,tt0118880,tt0120347
nm0006147	Bronislau Kaper	1902	1983	music_department,composer,actor	tt0056264,tt0046000,tt0036855,tt0038991
nm0006148	Sol Kaplan	1919	1990	composer,music_department,soundtrack	tt0114857,tt0060028,tt0106598,tt1655389
nm0006149	Dana Kaproff	1954	\N	composer,music_department,director	tt6071534,tt2281267,tt0080130,tt0080437
nm0006150	Fred Karlin	1936	2004	composer,music_department,editor	tt0070909,tt0066016,tt11271038,tt0065441
nm0006151	Bernhard Kaun	1899	1980	music_department,composer,soundtrack	tt0036582,tt0038053,tt0419724,tt0056757
nm0006152	Samuel Kaylin	1892	1983	music_department,composer,soundtrack	tt0029902,tt0024189,tt0030778,tt0031719
nm0006153	Jerome Kern	1885	1945	music_department,composer,writer	tt0039035,tt0044030,tt0028333,tt6306064
nm0006154	Aram Khachaturyan	1903	1978	composer,music_department,soundtrack	tt0062622,tt0364569,tt0403358,tt0373074
nm0006156	Krzysztof Komeda	1931	1969	composer,music_department,actor	tt0063522,tt0061655,tt0056291,tt0056521
nm0006157	Erich Wolfgang Korngold	1897	1957	music_department,composer,writer	tt0029843,tt0033028,tt0118715,tt1032815
nm0006158	Joseph Kosma	1905	1969	composer,music_department,actor	tt0227445,tt0119668,tt0031885,tt0028950
nm0006159	Raoul Kraushaar	1908	2001	music_department,composer,actor	tt5580390,tt0068327,tt0178896,tt0045282
nm0006160	Peter Kreuder	1905	1981	composer,music_department,actor	tt0900387,tt0361748,tt0985699,tt0031763
nm0006161	Richard LaSalle	1918	2015	composer,music_department,actor	tt0071115,tt0069091,tt0057608,tt0054881
nm0006162	Francis Lai	1932	2018	music_department,composer,actor	tt0066011,tt0420223,tt0116778,tt0119738
nm0006163	William Lava	1911	1971	composer,music_department,soundtrack	tt1019452,tt0125664,tt0040607,tt0052520
nm0006164	Angelo Francesco Lavagnino	1909	1987	composer,music_department,actor	tt0046871,tt0049916,tt0048200,tt0059588
nm0006165	Raúl Lavista	1913	1980	composer,music_department,soundtrack	tt0043647,tt0223777,tt0051090,tt0132064
nm0006166	Michel Legrand	1932	2019	composer,music_department,actor	tt0063688,tt0058450,tt0086619,tt0067803
nm0006167	Franz Lehár	1870	1948	music_department,composer,actor	tt0102803,tt0141926,tt0108052,tt0475290
nm0006168	John Lennon	1940	1980	music_artist,composer,actor	tt0058182,tt0078239,tt0063823,tt0445922
nm0006169	Sylvester Levay	\N	\N	composer,music_department,writer	tt0091225,tt0090859,tt0106519,tt0118749
nm0006170	Michael J. Lewis	1939	\N	composer,music_department,soundtrack	tt0070791,tt0081809,tt0087777,tt0083113
nm0006171	Daniel Licht	1957	2017	composer,music_department,actor	tt0773262,tt0117894,tt0114857,tt0114508
nm0006172	Franz Liszt	1811	1886	music_department,composer,soundtrack	tt0120663,tt4226388,tt0367959,tt0268995
nm0006173	Joseph LoDuca	1958	\N	composer,music_department,sound_department	tt0237534,tt0112230,tt0106308,tt0844653
nm0006174	Louiguy	1916	1991	composer,music_department,actor	tt1517451,tt1270798,tt0047437,tt6292852
nm0006175	Egisto Macchi	1928	1992	composer,music_department,soundtrack	tt0349903,tt1629715,tt0054932,tt0055323
nm0006176	Theo Mackeben	1897	1953	composer,music_department,actor	tt0900387,tt0034380,tt0134023,tt0043484
nm0006177	Michel Magne	1930	1984	composer,music_department,actor	tt0056017,tt0084621,tt0057870,tt0058089
nm0006178	Gustav Mahler	1860	1911	music_department,composer,writer	tt0096633,tt0206634,tt1130884,tt0290673
nm0006179	Stefano Mainetti	1957	\N	music_department,composer,miscellaneous	tt16310080,tt0127919,tt0408410,tt0174430
nm0006180	Isidro B. Maiztegui	1905	1996	composer,music_department	tt0060102,tt0053294,tt0199735,tt0037567
nm0006181	Hans-Martin Majewski	1911	1997	composer,music_department,actor	tt0051982,tt0046539,tt0052654,tt0050796
nm0006182	Anu Malik	1960	\N	composer,music_department,actor	tt0347473,tt0106333,tt0374887,tt0151150
nm0006183	Mark Mancina	1957	\N	music_department,composer,soundtrack	tt0111257,tt0117998,tt0120855,tt0139654
nm0006184	Johnny Mandel	1925	2020	music_department,composer,soundtrack	tt0066026,tt0059674,tt0060099,tt0104348
nm0006185	Harry Manfredini	1943	\N	composer,music_department,actor	tt0080761,tt0097179,tt0091223,tt0203408
nm0006186	Hummie Mann	\N	\N	composer,music_department,sound_department	tt0107977,tt0112896,tt0105871,tt0205461
nm0006187	Franco Mannino	1924	2005	composer,music_department,soundtrack	tt0074686,tt0071585,tt0046414,tt0078445
nm0006188	John Massari	1957	\N	music_department,composer,sound_department	tt0095444,tt0796238,tt0088591,tt0046593
nm0006189	Brian May	1934	1997	composer,music_department,soundtrack	tt0079501,tt0082694,tt0080453,tt0082432
nm0006190	Brian May	1947	\N	music_department,actor,composer	tt0080745,tt1727824,tt0203009,tt0119229
nm0006191	Toshirô Mayuzumi	1929	1997	composer,actor,music_department	tt0050162,tt0372324,tt0057363,tt0050269
nm0006192	Jimmy McHugh	1893	1969	music_department,actor,composer	tt0053125,tt1950186,tt1967545,tt0088933
nm0006193	Joel McNeely	1959	\N	composer,music_department,soundtrack	tt0118661,tt0118571,tt0120157,tt0897361
nm0006194	Alois Melichar	1896	1976	composer,music_department,soundtrack	tt0250093,tt0044312,tt0024749,tt0027351
nm0006195	Gil Mellé	1931	2004	composer,music_department,soundtrack	tt0066769,tt0082642,tt0073835,tt0065327
nm0006196	Felix Mendelssohn	1809	1847	music_department,composer,soundtrack	tt0364970,tt0162222,tt0128445,tt0259446
nm0006197	Johnny Mercer	1909	1976	music_department,writer,composer	tt0057755,tt0054698,tt0056923,tt0094812
nm0006198	Freddie Mercury	1946	1991	music_artist,actor,music_department	tt0080745,tt0203009,tt0119229,tt2704998
nm0006199	Fons Merkies	1966	\N	composer,music_department,actor	tt0321513,tt9848668,tt1540761,tt1870949
nm0006200	Franco Micalizzi	1939	\N	composer,music_department,soundtrack	tt1028528,tt0462322,tt0067355,tt1853728
nm0006201	Paul Misraki	1908	1998	composer,music_department,writer	tt0058898,tt0258068,tt0401445,tt7740496
nm0006202	Vic Mizzy	1916	2009	composer,music_department,actor	tt0057729,tt0397535,tt2377322,tt0101272
nm0006203	Cyril J. Mockridge	1896	1979	composer,music_department,soundtrack	tt0048140,tt0038762,tt0056217,tt0036244
nm0006204	Fred Mollin	\N	\N	composer,music_department,actor	tt0097388,tt0101046,tt0095179,tt0101226
nm0006205	Mark Mothersbaugh	1950	\N	composer,music_department,actor	tt27210519,tt3566834,tt3501632,tt0362270
nm0006206	William Motzing	1937	2014	music_department,composer,soundtrack	tt0185183,tt0258068,tt0096486,tt0092946
nm0006207	Jean Musy	1947	2024	composer,music_department,sound_department	tt0082070,tt0098578,tt0077161,tt0167673
nm0006208	Fred Myrow	1939	1999	composer,music_department,actor	tt0070723,tt0079714,tt0116590,tt0070643
nm0006209	Mario Nascimbene	1913	2002	composer,music_department,actor	tt8847712,tt0325805,tt0052786,tt0052365
nm0006210	Naushad	1919	2006	composer,music_department,producer	tt0054910,tt0044392,tt0054098,tt0266765
nm0006211	O.P. Nayyar	1926	2007	composer,music_department,soundtrack	tt0050758,tt0461936,tt0049041,tt0052065
nm0006212	Emil Newman	1911	1984	music_department,composer,soundtrack	tt0037008,tt0036868,tt0037017,tt0034241
nm0006213	Lionel Newman	1916	1989	music_department,composer,soundtrack	tt0045810,tt0064418,tt0078748,tt0050105
nm0006214	Bruno Nicolai	1926	1991	music_department,composer,special_effects	tt0065143,tt0060315,tt0060196,tt0063518
nm0006215	Lennie Niehaus	1929	2020	music_department,composer,soundtrack	tt0186566,tt0112579,tt0105695,tt0091187
nm0006216	Stefan Nilsson	1955	2023	composer,music_department,writer	tt0382330,tt0113030,tt0088133,tt0093713
nm0006217	Jack Nitzsche	1937	2000	composer,music_department,actor	tt0084434,tt0070047,tt0073486,tt0203009
nm0006218	Alex North	1910	1991	music_department,composer,soundtrack	tt0054331,tt0093105,tt0044081,tt0061184
nm0006219	Michael Nyman	1944	\N	composer,music_department,director	tt0107822,tt0119177,tt0097108,tt0129332
nm0006220	Jacques Offenbach	1819	1880	music_department,composer,writer	tt0203009,tt0327162,tt1228705,tt0319061
nm0006221	Riz Ortolani	1926	2014	composer,music_department,actor	tt0061709,tt0266697,tt0089136,tt0780504
nm0006222	Keith Papworth	1919	1990	composer,music_department,soundtrack	tt0120484,tt2034031,tt0156729,tt0071059
nm0006223	Jean-Claude Petit	1943	\N	music_department,composer,actor	tt0099334,tt0091288,tt0144117,tt0175142
nm0006224	Barrington Pheloung	1954	2019	composer,music_department,actor	tt0150915,tt0092379,tt0338427,tt0111173
nm0006225	Stu Phillips	1929	\N	composer,music_department,actor	tt0083437,tt1024648,tt3385516,tt0077278
nm0006226	Astor Piazzolla	1921	1992	music_department,composer,actor	tt0114746,tt8847712,tt0091828,tt0095174
nm0006227	Piero Piccioni	1921	2004	composer,music_department,actor	tt0118715,tt1045658,tt0057345,tt0055399
nm0006228	Franco Piersanti	1950	\N	composer,music_department,actor	tt0429727,tt1641410,tt0104663,tt0110299
nm0006229	Nicholas Pike	\N	\N	music_department,composer,soundtrack	tt0122459,tt1477715,tt3595454,tt5165368
nm0006230	Terry Plumeri	1944	2016	composer,music_department,soundtrack	tt0102592,tt0105680,tt0117640,tt0114226
nm0006231	Basil Poledouris	1945	2006	music_department,composer,actor	tt0093870,tt0099810,tt0080453,tt0106965
nm0006232	Tibor Polgár	1907	1993	composer,music_department,actor	tt0033006,tt0040020,tt0032381,tt0031400
nm0006233	Michel Portal	1935	\N	composer,music_department,actor	tt0085312,tt0084589,tt0092739,tt0088844
nm0006234	Cole Porter	1891	1964	music_department,composer,writer	tt0072665,tt0027387,tt0352277,tt0067525
nm0006235	Rachel Portman	1960	\N	composer,music_department,soundtrack	tt1334260,tt0116191,tt0241303,tt0146984
nm0006236	Mike Post	1944	\N	composer,music_department,actor	tt0106079,tt0098844,tt0203259,tt0275140
nm0006237	Zbigniew Preisner	1955	\N	composer,music_department,actor	tt0108394,tt0101765,tt0111495,tt0108071
nm0006238	André Previn	1929	2019	music_department,composer,actor	tt0058385,tt0070239,tt0051658,tt0110413
nm0006239	Charles Previn	1888	1973	music_department,composer,actor	tt0036342,tt0028010,tt0035279,tt0034398
nm0006240	Anton Profes	1896	1976	composer,music_department,producer	tt0048624,tt0040569,tt0044005,tt0041422
nm0006241	Sergei Prokofiev	1891	1953	music_department,composer,writer	tt1856101,tt0073312,tt0206634,tt0095963
nm0006242	Giacomo Puccini	1858	1924	music_department,composer,writer	tt0399201,tt0120647,tt0830515,tt0328107
nm0006243	Manuel L. Quiroga	1899	1988	composer,music_department,soundtrack	tt0362270,tt0913425,tt8291806,tt0059228
nm0006244	Peer Raben	1940	2007	composer,actor,music_department	tt0212712,tt0084565,tt0181536,tt0081408
nm0006245	Sergei Rachmaninoff	1873	1943	music_department,composer,soundtrack	tt0426592,tt2283336,tt1219289,tt0122690
nm0006246	A.R. Rahman	1967	\N	music_artist,composer,music_department	tt1010048,tt0169102,tt3148502,tt1839596
nm0006247	Ralph Rainger	1901	1942	music_department,composer,actor	tt0029912,tt0071315,tt0109830,tt0227445
nm0006248	Erno Rapee	1891	1945	music_department,composer,soundtrack	tt0399201,tt0120689,tt0325805,tt1230414
nm0006249	Satyajit Ray	1921	1992	writer,composer,director	tt0048473,tt0060742,tt0048956,tt0055508
nm0006250	Joe Renzetti	\N	\N	composer,music_department,actor	tt4513678,tt8663516,tt0094862,tt0077280
nm0006251	Graeme Revell	1955	\N	composer,music_department,actor	tt0109506,tt0120053,tt0287978,tt0146316
nm0006252	Hugo Riesenfeld	1879	1939	music_department,composer,producer	tt0029193,tt0008959,tt0018578,tt0019110
nm0006253	Nikolai Rimsky-Korsakov	1844	1908	music_department,composer,writer	tt0081933,tt0112641,tt0119558,tt0388795
nm0006254	J. Peter Robinson	1945	\N	composer,music_department,actor	tt0094889,tt0105793,tt0114825,tt0412080
nm0006255	Milan Roder	1878	1956	music_department,composer,actor	tt0033028,tt0029593,tt0027847,tt0026013
nm0006256	Richard Rodgers	1902	1979	music_department,composer,writer	tt0134119,tt0059742,tt0038116,tt0119925
nm0006257	Heinz Roemheld	1901	1985	music_department,composer,soundtrack	tt0040525,tt0378947,tt0106489,tt0034236
nm0006258	Jeff Rona	\N	\N	composer,soundtrack,music_department	tt8651604,tt0265349,tt0181865,tt0265086
nm0006259	Milton Rosen	1906	1994	music_department,composer,soundtrack	tt0056142,tt0038134,tt0039836,tt0034684
nm0006260	Leonard Rosenman	1924	2008	composer,music_department,soundtrack	tt0092007,tt0072684,tt0100502,tt3783958
nm0006261	Gioachino Rossini	1792	1868	music_department,composer,writer	tt3315342,tt6710474,tt0034240,tt0114558
nm0006262	François de Roubaix	1939	1975	composer,music_department,actor	tt0062229,tt0176622,tt0113247,tt0073864
nm0006263	Bruce Rowland	1942	\N	music_department,composer,soundtrack	tt0084296,tt0086102,tt0095993,tt0105935
nm0006264	Michel Rubini	\N	\N	composer,music_department,actor	tt0091474,tt0329717,tt0085701,tt0083467
nm0006265	Arthur B. Rubinstein	1938	2018	composer,music_department,soundtrack	tt0094025,tt0086567,tt0113972,tt0283900
nm0006266	Pete Rugolo	1915	2011	composer,music_department,actor	tt0058844,tt0063873,tt0053546,tt0062788
nm0006267	Carlo Rustichelli	1916	2004	composer,music_department,sound_department	tt0051142,tt0060125,tt0053039,tt0158510
nm0006268	Craig Safan	1948	\N	composer,music_department,writer	tt0087597,tt0083399,tt0083190,tt1284575
nm0006269	Camille Saint-Saëns	1835	1921	music_department,composer,soundtrack	tt1355630,tt0112579,tt11003218,tt1748122
nm0006270	Hans J. Salter	1896	1994	music_department,composer,soundtrack	tt8155288,tt10682266,tt0165710,tt0036692
nm0006271	Philippe Sarde	1948	\N	composer,music_department,actor	tt0074184,tt0074811,tt0100054,tt0080009
nm0006272	Karl-Ernst Sasse	1923	2006	composer,music_department,actor	tt0015064,tt0012494,tt0019655,tt0059401
nm0006273	Erik Satie	1866	1925	music_department,composer,actor	tt0069762,tt2402157,tt0485947,tt0074851
nm0006274	Carlo Savina	1919	2002	music_department,composer,actor	tt0844286,tt0088128,tt0053779,tt0068646
nm0006275	Paul Sawtell	1906	1971	music_department,composer,soundtrack	tt0051622,tt0298845,tt1666186,tt0056142
nm0006276	Victor Schertzinger	1888	1941	director,music_department,composer	tt0338337,tt0088170,tt0071360,tt0101669
nm0006277	Lalo Schifrin	1932	2025	music_department,composer,actor	tt0120812,tt0060009,tt0117060,tt0120755
nm0006278	Willy Schmidt-Gentner	1894	1964	composer,music_department,director	tt0016101,tt0019901,tt0028235,tt0026876
nm0006279	Enjott Schneider	1950	\N	composer,music_department,actor	tt0100457,tt0108211,tt0102284,tt0103265
nm0006280	Franz Schubert	1797	1828	music_department,composer,soundtrack	tt0181689,tt0266308,tt0470752,tt0848228
nm0006281	Robert Schumann	1810	1856	music_department,composer,writer	tt0281364,tt0218922,tt0421715,tt0083922
nm0006282	Raymond Scott	1908	1994	music_department,composer,actor	tt1032755,tt0297181,tt0048750,tt3922818
nm0006283	Dov Seltzer	1932	\N	composer,music_department,actor	tt0071715,tt0097800,tt0078447,tt0086884
nm0006284	Anandji Veerji Shah	1933	\N	composer,music_department,miscellaneous	tt3405236,tt7838252,tt0461936,tt0077451
nm0006285	Kalyanji Veerji Shah	1928	2000	composer,music_department,miscellaneous	tt3405236,tt0461936,tt0077451,tt0246740
nm0006286	Bert Shefter	1904	1999	music_department,composer,soundtrack	tt0298845,tt1666186,tt0056142,tt0050610
nm0006287	Nathaniel Shilkret	1889	1982	composer,music_department,actor	tt6966692,tt0028511,tt2870756,tt0028333
nm0006288	David Shire	1937	\N	music_department,composer,writer	tt0443706,tt0091949,tt0072251,tt0076666
nm0006289	Alfred Schnittke	1934	1998	composer,music_department,soundtrack	tt3464902,tt1130884,tt0120889,tt0061876
nm0006290	Howard Shore	1946	\N	music_department,composer,actor	tt0120737,tt1480656,tt0903624,tt0338751
nm0006291	Dmitri Shostakovich	1906	1975	music_department,composer,writer	tt0206634,tt3464902,tt0015648,tt0120663
nm0006292	Jean Sibelius	1865	1957	composer,music_department,soundtrack	tt0099423,tt0362269,tt3544082,tt1687901
nm0006293	Alan Silvestri	1950	\N	composer,soundtrack,music_department	tt4154796,tt0088763,tt0109830,tt1677720
nm0006294	Claudio Simonetti	1952	\N	composer,music_department,actor	tt0089013,tt3067274,tt0814022,tt0084777
nm0006295	Bruce Smeaton	1938	\N	composer,music_department,soundtrack	tt0093886,tt0071282,tt0073540,tt0073074
nm0006296	Mark Snow	1946	2025	composer,music_department,actor	tt0106179,tt0120902,tt0134619,tt0443701
nm0006297	Mischa Spoliansky	1898	1985	composer,music_department,actor	tt0026966,tt2870756,tt0025681,tt0264761
nm0006298	Carl W. Stalling	1891	1972	composer,music_department,actor	tt1650062,tt0259324,tt0107362,tt7713068
nm0006299	Herman Stein	1915	2007	music_department,composer,soundtrack	tt0056142,tt0053482,tt0051839,tt0049904
nm0006300	Ronald Stein	1930	1988	composer,music_department,actor	tt0054017,tt0056127,tt0118951,tt0061946
nm0006301	Fred Steiner	1923	2011	music_department,composer,sound_department	tt0088939,tt3385516,tt0060028,tt0106598
nm0006302	Leith Stevens	1909	1970	music_department,composer,actor	tt0046534,tt0042393,tt0049388,tt0057360
nm0006303	George Stoll	1902	1985	music_department,composer,actor	tt0037059,tt0032138,tt0037514,tt4913966
nm0006304	Morris Stoloff	1898	1980	music_department,actor,soundtrack	tt0045793,tt0042593,tt0038559,tt0038661
nm0006305	Robert Stolz	1880	1975	composer,music_department,actor	tt2059171,tt0033095,tt0036962,tt0024597
nm0006306	Christopher L. Stone	1952	\N	composer,music_department,sound_department	tt0091083,tt0106168,tt0118665,tt0097910
nm0006307	Herbert Stothart	1885	1949	composer,music_department,writer	tt0032138,tt0346156,tt0026752,tt0309987
nm0006308	Oscar Straus	1870	1954	composer,writer,music_department	tt0020147,tt0022074,tt0046022,tt0023303
nm0006309	Richard Strauss	1864	1949	music_department,writer,composer	tt0062622,tt3464902,tt0457400,tt0086837
nm0006310	Johann Strauss	1825	1899	music_department,composer,writer	tt0062622,tt6398184,tt1440129,tt0046268
nm0006311	Igor Stravinsky	1882	1971	music_department,composer,writer	tt3464902,tt3640424,tt0163988,tt2870756
nm0006312	Jule Styne	1905	1994	music_department,composer,producer	tt0062994,tt0095016,tt0045810,tt0116908
nm0006313	Harry Sukman	1912	1984	composer,music_department,soundtrack	tt0054324,tt0061263,tt0054866,tt0060983
nm0006314	Jules Sylvain	1900	1968	composer,music_department,writer	tt0039446,tt0025832,tt0035006,tt0035310
nm0006315	Jean-Marie Sénia	1947	\N	composer,music_department,actor	tt0759652,tt0103860,tt0109721,tt0229694
nm0006316	Tôru Takemitsu	1930	1996	composer,music_department,sound_department	tt0089881,tt0107969,tt0056058,tt0061065
nm0006317	Tangerine Dream	1976	\N	actress,music_department,archive_footage	tt1629725,tt0412556,tt0468031,tt0293981
nm0006318	Pyotr Ilyich Tchaikovsky	1840	1893	music_department,composer,writer	tt0081933,tt0053285,tt0181689,tt7798634
nm0006319	Mikis Theodorakis	1925	2021	composer,music_department,actor	tt0065234,tt0070666,tt0120735,tt1259014
nm0006320	Maurice Thiriet	1906	1972	composer,music_department,soundtrack	tt0037674,tt0035521,tt0044857,tt0044602
nm0006321	Eugen Thomass	1927	2009	composer,music_department,soundtrack	tt0063558,tt0806910,tt0063463,tt0059990
nm0006322	Ken Thorne	1924	2014	music_department,composer,soundtrack	tt0081573,tt0086393,tt0060438,tt0141926
nm0006323	Dimitri Tiomkin	1894	1979	music_department,composer,producer	tt0044706,tt0054953,tt0046912,tt0049261
nm0006324	Ernst Toch	1887	1964	music_department,composer,soundtrack	tt0033802,tt0036581,tt0031143,tt0032412
nm0006325	Armando Trovajoli	1917	2013	composer,music_department,actor	tt0266697,tt0076085,tt0425061,tt0093004
nm0006326	Christopher Tyng	1968	\N	composer,music_department,soundtrack	tt0120201,tt0149460,tt0265208,tt0250797
nm0006327	Piero Umiliani	1926	2001	composer,music_department,soundtrack	tt1714206,tt0052216,tt1204342,tt0349903
nm0006328	Teo Usuelli	1920	2009	composer,music_department,soundtrack	tt0118715,tt0347808,tt0064959,tt0068206
nm0006329	Jimmy Van Heusen	1913	1990	music_department,composer,producer	tt0036872,tt0117731,tt0116253,tt2935510
nm0006330	Georges Van Parys	1902	1971	composer,music_department,actor	tt0046911,tt0203009,tt0120679,tt0046022
nm0006331	Vangelis	1943	2022	composer,music_department,actor	tt0083658,tt0082158,tt0346491,tt0103594
nm0006332	Didier Vasseur	1946	2004	composer,music_department,actor	tt0172014,tt0077241,tt0210504,tt9674972
nm0006333	Giuseppe Verdi	1813	1901	music_department,composer,writer	tt1392190,tt0118615,tt0266308,tt0416320
nm0006334	Antonio Vivaldi	1678	1741	music_department,composer,soundtrack	tt0089941,tt10872600,tt1502712,tt0100405
nm0006335	Roman Vlad	1919	2013	composer,music_department,soundtrack	tt0040137,tt0042235,tt0041303,tt0040284
nm0006336	W.G. Snuffy Walden	1950	\N	composer,music_department,actor	tt0200276
nm0006337	Oliver Wallace	1887	1963	composer,music_department,actor	tt0033563,tt0042332,tt0043274,tt0048280
nm0006338	William Walton	1902	1983	music_department,composer,actor	tt0107362,tt0064072,tt0040416,tt0036910
nm0006339	Stephen Warbeck	1953	\N	composer,music_department,actor	tt0138097,tt0377107,tt9056822,tt0249462
nm0006340	Rolf A. Wilhelm	1927	2013	composer,music_department,soundtrack	tt0052801,tt0057479,tt0076686,tt0056719
nm0006341	Debbie Wiseman	1963	\N	composer,music_department,actress	tt1020885,tt0790665,tt0119873,tt0373690
nm0006342	Jean Yatove	1903	1978	composer,producer,writer	tt0051568,tt0256906,tt0158803,tt0159609
nm0006343	Lee Zahler	1893	1947	music_department,composer,actor	tt0024663,tt0026751,tt0036754,tt0030664
nm0006344	Paul Zaza	1952	\N	composer,music_department,soundtrack	tt0082782,tt0079592,tt1622547,tt0090779
nm0006345	Eric Zeisl	1905	1959	composer,music_department	tt1584728,tt0240761
nm0006346	Todd Hagopian	\N	\N	producer,writer	tt0208050,tt2322421,tt3263906,tt0188490
nm0006347	June Chadwick	1951	\N	actress,archive_footage	tt0088258,tt0086822,tt0091306,tt0083959
nm0006348	Rajendra Kumar Tuli	1927	1999	actor,producer,miscellaneous	tt0926204,tt0058921,tt0058547,tt0234141
nm0006349	Lora Hays	1910	2009	editor,editorial_department,actress	tt0050072,tt0194158,tt0022611,tt0046612
nm0006350	Julia Leigh Miller	\N	\N	actress	tt0174917,tt0210957
nm0006351	Julie Caitlin Brown	1961	\N	actress,talent_agent,producer	tt0105946,tt1754744,tt0106145,tt0092455
nm0006352	Adam Druxman	\N	\N	assistant_director,producer,miscellaneous	tt2109248,tt0272338,tt0118771,tt5057140
nm0006353	Ronna Kress	\N	\N	casting_department,casting_director	tt0203009,tt1392190,tt2582846,tt1431045
nm0006354	Steve Lee	1965	\N	sound_department,actor,producer	tt0424095,tt0328880,tt0120458,tt0314353
nm0006355	Roy Billing	1947	\N	actor,archive_footage	tt0980970,tt1119176,tt0205873,tt0429591
nm0006356	Mark H. Weingartner	\N	\N	visual_effects,camera_department,miscellaneous	tt5013056,tt1375666,tt1951265,tt1046173
nm0006357	Daniel Schmid	1941	2006	director,writer,actor	tt0086928,tt0093302,tt0075169,tt0082510
nm0006358	Shobhna Samarth	1916	2000	actress,director	tt0233586,tt0233303,tt0156360,tt0331297
nm0006359	Jeremy Presner	\N	\N	editor,editorial_department,miscellaneous	tt0374455,tt0312510,tt10370750,tt0349889
nm0006360	Jessica Cunningham	1986	\N	miscellaneous,actress,producer	tt0113855,tt0139414,tt0329101,tt0120694
nm0006361	Peter E. Fleming	\N	\N	writer	tt0111731,tt0114958
nm0006362	Mike Costa	\N	\N	producer,miscellaneous,writer	tt30787792,tt0094540,tt2156488,tt0898921
nm0006363	Michel Klochendler	\N	\N	editor,sound_department,editorial_department	tt0119828,tt2253939,tt0216787,tt32284798
nm0006364	Edi Hubschmid	\N	\N	producer,production_manager,director	tt0084934,tt0089210,tt0256627,tt0104709
nm0006365	Bob Bowen	\N	\N	music_department,producer,executive	tt0120738,tt0120611,tt6141246,tt0209958
nm0006366	Sean Albertson	\N	\N	editor,producer,editorial_department	tt26658104,tt1291584,tt0462499,tt6905686
nm0006367	Jennie Muskett	\N	\N	composer,music_department,soundtrack	tt0160904,tt0337697,tt0256263,tt0256405
nm0006368	Dwayne McClintock	1964	\N	camera_department,visual_effects,special_effects	tt0382992,tt0113492,tt1082601,tt0259288
nm0006369	Ashok Kumar	1911	2001	actor,producer,music_department	tt0041619,tt0158331,tt0147855,tt0046164
nm0006370	Manoj Kumar	1937	2025	actor,writer,visual_effects	tt0072100,tt0146335,tt0234724,tt0233464
nm0006371	Mehboob Khan	1907	1964	director,producer,actor	tt0050188,tt0232674,tt0044318,tt0038302
nm0006372	Armando Crispino	1924	2003	writer,assistant_director,director	tt0073327,tt0068625,tt0071187,tt0062819
nm0006373	Eloise Crane Stammerjohn	\N	\N	production_designer,art_department,set_decorator	tt0272020,tt1073241,tt0208874,tt0120786
nm0006374	Donna Barnes	\N	\N	actress	tt0114306,tt0112895,tt0128886,tt0119456
nm0006375	William Munroe	1961	\N	sound_department,miscellaneous,camera_department	tt0166924,tt0287978,tt0971209,tt0266915
nm0006376	Knut Schmitz	1969	\N	cinematographer,editorial_department,camera_department	tt0233014,tt0443203,tt1067742,tt0275967
nm0006377	Andrea Borella	1959	\N	producer,production_manager,location_management	tt14071882,tt14781026,tt5096470,tt0116209
nm0006378	Edmond J. Coblentz Jr.	\N	\N	sound_department,music_department,producer	tt0119174,tt0112401,tt0112851,tt0233142
nm0006379	Axel Melzener	1975	\N	writer,composer,actor	tt11533852,tt0138956,tt5293310,tt0115088
nm0006380	David Bondelevitch	\N	\N	sound_department,music_department,producer	tt0117420,tt0265087,tt0301470,tt0116514
nm0006381	Frank Bak	\N	\N	producer,composer,miscellaneous	tt0370477,tt0341578,tt0114577,tt0495232
nm0006382	Lynel Moore	\N	\N	editorial_department,editor	tt0371257,tt0119558,tt0120324,tt0307987
nm0006383	George Every	\N	\N	assistant_director	tt14114802,tt10272386,tt0455590,tt4291600
nm0006384	Alex Phillips	1901	1977	cinematographer,visual_effects,camera_department	tt0132524,tt0042434,tt0038813,tt0051090
nm0006385	Silvio Francesco	1927	2000	actor,soundtrack,archive_footage	tt5580390,tt0051333,tt0049426,tt0052761
nm0006386	Caterina Valente	1931	2024	actress,music_department,soundtrack	tt2943252,tt1089013,tt0057744,tt0058797
nm0006387	Sylvain Arseneault	\N	\N	sound_department,miscellaneous,assistant_director	tt5834204,tt1638002,tt1396484,tt7349950
nm0006388	David O. Selznick	1902	1965	producer,miscellaneous,writer	tt0031381,tt0032976,tt0038787,tt0038109
nm0006389	Ashley Glynne	1941	\N	actor	tt0135559
nm0006390	Mike Joyce	1949	\N	production_designer,art_director,art_department	tt12749392,tt0194947,tt0068069,tt36107110
nm0006391	Luciano Gloor	1949	2020	producer,executive	tt0120640,tt0091839,tt0094709,tt0103105
nm0006392	Pierre-Alexis Hollenbeck	1979	\N	actor	tt0113828,tt0103442,tt0104192,tt0176359
nm0009598	Fulvio Accialini	1952	\N	director,writer	tt0167315
nm0006393	Asim Matin	\N	\N	editorial_department,editor,camera_department	tt2918436,tt3717490,tt0340163,tt1186370
nm0006394	Vince Tempera	1946	\N	composer,music_department,soundtrack	tt0266697,tt0078224,tt0075614,tt0172919
nm0006395	Michael Feifer	1968	\N	producer,director,writer	tt1470171,tt5210380,tt2024354,tt1533087
nm0006396	Ian Brown	\N	\N	writer,producer,actor	tt0257315,tt15392502,tt0927170,tt2314249
nm0006397	Beau J. Genot	\N	\N	producer,production_manager,editorial_department	tt11252248,tt13259610,tt7385812,tt4364194
nm0006398	Katherine Lee	\N	\N	actress,miscellaneous	tt0246253,tt3384180,tt1430508,tt0164754
nm0006399	Kimberlee Crawford	\N	\N	writer,miscellaneous	tt0115285,tt0118464
nm0006400	Scott Kennedy	\N	\N	producer,cinematographer,miscellaneous	tt6195094,tt1658837,tt3499096,tt0130229
nm0006401	John S. Beyers	\N	\N	camera_department	tt0102975,tt0112740,tt0268695,tt0113972
nm0006402	Yoav Kosh	\N	\N	cinematographer,camera_department	tt0103945,tt0108619,tt0162843,tt0382072
nm0006403	David R. Barkley	1957	\N	music_department,composer,director	tt0400497,tt13820262,tt0171028,tt0110805
nm0006404	Mary Torres	\N	\N	stunts,producer	tt0116225,tt0235737,tt0266465,tt0120094
nm0006405	Dmitriy Zaytsev	1940	\N	cinematographer,director,production_manager	tt0452879,tt5256424,tt0107015,tt0085723
nm0006406	Richard Halpern	1962	\N	actor,writer,director	tt18930384,tt3413080,tt2391089,tt2400736
nm0006407	Fred Nicolas	\N	\N	assistant_director,producer,director	tt3851746,tt0489010,tt1298831,tt0242644
nm0006408	John J. Campbell	1950	2019	cinematographer,camera_department	tt0102494,tt0486652,tt1544577,tt0106834
nm0006409	John Campbell	\N	\N	camera_department	tt0475276,tt0795368,tt0317198,tt0385752
nm0006410	Jason Allentoff	1981	\N	producer,miscellaneous,director	tt0330695,tt1797362,tt7239888,tt0253114
nm0006411	Ran Barker	1961	\N	miscellaneous,assistant_director,producer	tt0255189,tt0131327,tt0285957,tt0118284
nm0006412	Ashley Moore	1949	\N	actor,archive_footage	tt0156458,tt0092088,tt0084513,tt0190760
nm0006413	Pamela Lyn Weiss	1972	\N	miscellaneous,art_department,assistant_director	tt0120890,tt1904996,tt0119223,tt1135985
nm0006414	David Gauthier	\N	\N	special_effects,cinematographer	tt2193021,tt0443701,tt0318627,tt0253556
nm0006415	Lloyd Freidus	1943	2019	cinematographer,camera_department,sound_department	tt0076326,tt0076023,tt0069797,tt0158049
nm0006416	Peter Tothpal	1952	\N	make_up_department	tt0103064,tt6850820,tt0790628,tt5034838
nm0006417	Olcun Tan	1976	\N	visual_effects,producer,special_effects	tt0293429,tt5606664,tt3501632,tt1663202
nm0006418	Peter Alderliesten	1972	\N	editor,editorial_department	tt0314502,tt4610378,tt0468644,tt3765078
nm0006419	Claudette Mink	1971	\N	actress,archive_footage	tt0489664,tt0338337,tt0476995,tt1085251
nm0006420	Gabriel David Tick	\N	\N	writer,producer,miscellaneous	tt0270547,tt0248644,tt0118359,tt0247119
nm0006421	Robert Grayson	\N	2024	assistant_director,miscellaneous	tt1706620,tt0119116,tt0120738,tt0475276
nm0006422	Laird Stuart	\N	\N	actor,writer	tt0093870,tt0265208,tt0111453,tt0144151
nm0006423	Bernard Bats	1944	\N	sound_department,editor	tt0258463,tt0122690,tt0293564,tt0119038
nm0006425	Paul Beard	1977	\N	visual_effects,producer,miscellaneous	tt0490181,tt0425413,tt0780516,tt0289992
nm0006426	Bill Haley	1925	1981	actor,composer,soundtrack	tt6543652,tt0049682,tt0103141,tt0230572
nm0006427	Chris Bustard	\N	\N	casting_department,casting_director,miscellaneous	tt1517260,tt0453467,tt1790864,tt2103281
nm0006428	Arlene Dahl	1925	2021	actress,costume_department,costume_designer	tt0052948,tt0041796,tt0041847,tt0049629
nm0006429	Girija	1938	1995	actress	tt0254967,tt0279389,tt0263022,tt0330054
nm0006430	Girija Shettar	1969	\N	actress	tt0104561,tt0255668,tt0097437,tt26738153
nm0006431	Nicholas Worth	1937	2007	actor,archive_footage	tt0099365,tt0091187,tt0093640,tt0080645
nm0006432	Christopher Walling	\N	\N	camera_department,cinematographer	tt0109307,tt0275692,tt2609912,tt8667828
nm0006433	Karisma Kapoor	1974	\N	actress,music_department,archive_footage	tt0118983,tt0255713,tt0248012,tt0331639
nm0006434	Andrew Gohn	1977	\N	sound_department,miscellaneous	tt0414951,tt0278636,tt0385006,tt0337857
nm0006435	Stefan Eriksson	\N	\N	camera_department,cinematographer	tt21289540,tt0103523,tt2700302,tt0192913
nm0006436	Dean Gates	\N	\N	make_up_department,special_effects,actor	tt0090756,tt0088993,tt0096754,tt0091499
nm0006437	Justin Rice	\N	\N	miscellaneous,actor,composer	tt6663582,tt1411238,tt0981227,tt0332375
nm0006438	George Saunders	1959	\N	writer,actor,producer	tt7225006,tt0099810,tt27170247,tt0118069
nm0006439	Erin Daniels	\N	\N	actress,director,writer	tt0251736,tt0330251,tt1315981,tt2132285
nm0006440	Michael Doven	1959	\N	producer,miscellaneous,actor	tt0325710,tt0120755,tt0181689,tt4801232
nm0006441	Dick Warlock	1940	\N	stunts,actor,miscellaneous	tt0087262,tt0093260,tt0082340,tt0095925
nm0006442	Richard Robbins	1940	2012	composer,music_department,director	tt0091867,tt0107943,tt0104454,tt0093512
nm0006443	Glenn Brown	\N	\N	camera_department,cinematographer	tt0453467,tt0120768,tt0114558,tt0438488
nm0006444	Patrice Lucien Cochet	1968	\N	cinematographer,camera_department,producer	tt2505294,tt8110988,tt3853830,tt21106970
nm0006445	Éric Rohmer	1920	2010	director,writer,actor	tt0064612,tt0086087,tt0065772,tt0137439
nm0006446	Colleen Werthmann	1970	\N	writer,actress	tt0944835,tt1850457,tt0116121,tt2089826
nm0006447	Richard Turner	1958	\N	miscellaneous,producer,production_manager	tt1320296,tt0758771,tt0462359,tt0493424
nm0006448	Gaurav Seth	\N	\N	director,writer,cinematographer	tt4206228,tt0292172,tt0422960,tt8953768
nm0006449	Keith Solomon	1968	\N	camera_department,cinematographer,producer	tt0371746,tt0314353,tt1228705,tt0481369
nm0006450	Jason Sutton	1966	\N	writer	tt2427220,tt0787985,tt4224588,tt0485556
nm0006451	John A. Cohen	\N	\N	miscellaneous	tt0162661,tt0160797,tt0185014,tt0162650
nm0006452	Stanley Kramer	1913	2001	producer,director,miscellaneous	tt0055031,tt0061735,tt0053946,tt0051525
nm0006453	Robert A. Pandini	1961	\N	make_up_department,miscellaneous,actor	tt1663202,tt2543472,tt0296572,tt0417148
nm0006454	Melanie Cassidy	\N	\N	art_director,art_department,location_management	tt0343818,tt0409459,tt0376994,tt0290334
nm0006455	Alan Precourt	\N	\N	visual_effects,animation_department,camera_department	tt1318514,tt0319262,tt0119116,tt0848228
nm0006456	Joe Mulherin	1947	\N	music_department,miscellaneous,writer	tt0110167,tt0104006,tt0896031,tt0097457
nm0006457	Marc Guidetti	1965	\N	production_manager,location_management	tt2872732,tt0414852,tt2239822,tt0342258
nm0006458	Tom Bookout	\N	\N	camera_department	tt0117381,tt0101516,tt0096438,tt1623205
nm0006459	Scot Beidelman	1970	\N	miscellaneous,writer,animation_department	tt4160608,tt0408224,tt0320869,tt0092322
nm0006460	Karen S. Spiegel	\N	\N	producer,miscellaneous,camera_department	tt0118548,tt0101272,tt0101492,tt0121566
nm0006461	Allen E. Taylor	\N	\N	miscellaneous,producer,executive	tt1502397,tt2250912,tt2788732,tt2097298
nm0006462	Henry M. Lebo	\N	\N	camera_department,cinematographer	tt0118956,tt0090305,tt0088847,tt0089155
nm0006463	Jason Kravits	1967	\N	actor,soundtrack	tt0118437,tt0327162,tt1126618,tt0230838
nm0006464	James Phillips	\N	\N	art_director,art_department,production_designer	tt0284978,tt0262985,tt0190524,tt7374952
nm0006465	Marilyn Vance	\N	\N	producer,costume_designer,costume_department	tt0102803,tt0132347,tt0094226,tt0100405
nm0006466	Chris Holmes	\N	\N	camera_department	tt0213205,tt0404013,tt1764515,tt0329245
nm0006467	Vittorio Amandola	1952	2010	actor,miscellaneous	tt0086779,tt0110570,tt0384766,tt0865934
nm0006468	Kim Davis	\N	\N	location_management,producer,composer	tt0151804,tt1067774,tt0201289,tt0102984
nm0006469	Drew McKeen	\N	\N	visual_effects,location_management,special_effects	tt0271367,tt0120591,tt0146675,tt0120184
nm0006470	Stephen Treadway	\N	\N	cinematographer,camera_department,assistant_director	tt0119099,tt0133122,tt2987980,tt0115678
nm0006471	Elsa Lanchester	1902	1986	actress,soundtrack,archive_footage	tt0051201,tt0074937,tt0026138,tt0058331
nm0006472	George Masselli	\N	\N	actor	tt0101366
nm0006473	Daniella Evangelista	1982	\N	actress,casting_director,producer	tt0272379,tt2529866,tt0268579,tt3413236
nm0006474	Howlin' Wolf	1910	1976	music_department,soundtrack,archive_footage	tt0141842,tt6499752,tt1713476,tt1001508
nm0006475	Howling Wolf	\N	\N	actor,archive_footage	tt0027488
nm0006476	Paul McGuigan	1963	\N	director,producer,archive_footage	tt0425210,tt0324554,tt1976009,tt0122515
nm0006477	Paul McGuigan	1971	\N	actor,soundtrack,archive_footage	tt32351406,tt32351419,tt15091500
nm0006478	Jimmy Thompson	1925	2005	actor,archive_footage	tt0055831,tt0057919,tt0407402,tt4854572
nm0006479	Adrian Knight	\N	\N	location_management,actor,miscellaneous	tt28014327,tt13521006,tt19636984,tt8000674
nm0006480	Madison Clark	\N	\N	actress	tt0116367,tt0114436,tt0162945,tt0119302
nm0006481	Pat Kirkwood	\N	\N	camera_department,actor,art_director	tt0097576,tt0087469,tt0057181,tt0087231
nm0006482	Tod Griffin	1919	2002	actor,archive_footage	tt0052187,tt0044266,tt0050958,tt0595375
nm0006483	Eric J. Goldstein	\N	\N	cinematographer,camera_department,visual_effects	tt0114814,tt0116654,tt0094761,tt0099052
nm0006484	Gary Jackson	\N	\N	transportation_department,miscellaneous,producer	tt1637688,tt2490326,tt0331811,tt0372873
nm0006485	Jennifer Nelson	\N	\N	producer,editorial_department,production_manager	tt0139654,tt0141926,tt0283559,tt0165642
nm0006486	Jeff Sherman	1957	\N	producer,miscellaneous,writer	tt0185895,tt0105958,tt1015971,tt1928320
nm0006487	Jim Sheridan	1949	\N	producer,director,writer	tt0298845,tt0107207,tt0097937,tt0765010
nm0006488	Brian Palermo	1966	\N	actor,writer,miscellaneous	tt0208003,tt1308728,tt1285016,tt0384642
nm0006489	Nikolay Rybnikov	1930	1990	actor,soundtrack,archive_footage	tt0063794,tt0134614,tt0175106,tt0059884
nm0006490	Nikolay Rybnikov	1879	1956	actor	tt0250577,tt0240539,tt21844538,tt21844594
nm0006491	Boris Tokarev	1947	\N	actor,director,writer	tt0265542,tt0084391,tt0093644,tt0185357
nm0006492	Peter Madsen	1942	\N	actor	tt0279543
nm0006493	William Brookfield	\N	\N	writer,director,producer	tt0160534,tt2917388,tt0286594,tt6195756
nm0006494	Eric Karas	\N	\N	art_department,special_effects	tt0120461,tt0212720,tt0120689,tt0088390
nm0006495	Logan Breit	\N	\N	editorial_department,visual_effects,editor	tt0113855,tt1790864,tt11389872,tt12261776
nm0006496	Chrissy Offutt	\N	\N	miscellaneous,actress,assistant_director	tt0252501,tt0175526,tt0825339,tt0477029
nm0006497	Ellis Dungan	1908	2001	director,cinematographer,editor	tt0214940,tt0215150,tt0044778,tt0215179
nm0006498	Majid Majidi	1959	\N	writer,director,actor	tt0118849,tt0233841,tt11767722,tt0191043
nm0006499	Richard Liss	\N	\N	actor	tt0108330,tt0123816,tt0116405,tt0098779
nm0006500	Warren Cronin	1971	\N	location_management,assistant_director,actor	tt9362736,tt1998372,tt3581920,tt27497165
nm0006501	Rachel Holroyd	\N	\N	miscellaneous,manager	tt0125439,tt0243155,tt0118715,tt0113117
nm0006502	Scott Mislan	\N	\N	camera_department,cinematographer,producer	tt0105226,tt0109707,tt0102915,tt0395378
nm0006503	Peter Harper	\N	\N	sound_department	tt0118665,tt0125128,tt0116590,tt0120698
nm0006504	Peter W. Schmitt	1954	\N	composer	tt0087541,tt0116164,tt0093925,tt0104725
nm0006505	Jason Lampkin	\N	\N	miscellaneous,sound_department,camera_department	tt0454848,tt0162677,tt0124718,tt1046997
nm0006506	Steve Adcock	1961	\N	camera_department,cinematographer,actor	tt0115759,tt0103772,tt0099582,tt0114508
nm0006507	Bruce Marchfelder	\N	\N	producer,director,cinematographer	tt0385584,tt0239242,tt0991287,tt6754628
nm0006508	Tony Kenny	\N	\N	special_effects,actor,music_department	tt0120903,tt1921064,tt1190634,tt7949218
nm0006509	Rodrigo Prieto	1965	\N	cinematographer,actor,director	tt0388795,tt0993846,tt5537002,tt1517268
nm0006510	Alan Brewer	\N	\N	producer,composer,music_department	tt0096281,tt0892109,tt23857758,tt0457308
nm0006511	David LeReaney	\N	\N	actor,miscellaneous,archive_footage	tt0250687,tt26625693,tt4878326,tt2089664
nm0006512	Steven Katz	1959	\N	producer,writer	tt5618256
nm0006513	Kyle LeMire	1973	\N	assistant_director,miscellaneous,production_manager	tt0898367,tt1307068,tt5710514,tt1869716
nm0006514	Jeroen de Bruin	1971	\N	cinematographer,camera_department	tt2114358,tt8747308,tt0118588,tt3522734
nm0006515	Federico Bruno	\N	\N	director,producer,writer	tt0090737,tt0260496,tt0326379,tt0089457
nm0006516	Chris Terrio	1976	\N	writer,producer,director	tt2527338,tt1024648,tt2975590,tt12361974
nm0006517	Thalia Harithas	\N	\N	miscellaneous,editorial_department,actress	tt0808279,tt0100436,tt0343737,tt1024715
nm0006518	Darin Ferriola	\N	\N	writer,director,producer	tt0212867,tt7434754,tt0144255,tt0416051
nm0006519	Greg Mielcarz	\N	\N	miscellaneous,actor,producer	tt0815244,tt0163676,tt10304528,tt0220064
nm0006520	Jim Henry	\N	\N	stunts,actor,assistant_director	tt0477348,tt0163651,tt0948470,tt1844624
nm0006521	Corri Jones	\N	\N	script_department,actress,casting_director	tt0098156,tt0126973,tt0114955,tt0109637
nm0006522	Haydn Gwynne	1957	2023	actress	tt2771200,tt0098781,tt12299608,tt0384766
nm0006523	Joseph T. Terranova	\N	\N	camera_department,miscellaneous	tt1046173,tt0407304,tt0379786,tt0177971
nm0006524	Judi Townsend	\N	\N	script_department,miscellaneous,producer	tt3397884,tt1034032,tt0118883,tt0232500
nm0006525	Elliot Tyson	1952	\N	sound_department	tt0095647,tt0097441,tt0111161,tt0120689
nm0006526	Joseph Grossberg	\N	\N	visual_effects,special_effects,assistant_director	tt0465580,tt1046173,tt1843866,tt1234721
nm0006527	Maxann Crotts Harvey	1954	2023	casting_department,casting_director,producer	tt0187393,tt0482606,tt10022768,tt0120610
nm0006528	Gary Jackemuk	1968	\N	visual_effects,editorial_department,producer	tt0296572,tt0298814,tt0114558,tt0216216
nm0006529	Virginia McCarthy	\N	\N	script_department,director,producer	tt11161288,tt7097896,tt2334873,tt3715320
nm0006530	Danny Collins	\N	\N	producer,miscellaneous,executive	tt0082432,tt7312012,tt0084350,tt1186665
nm0006531	Alicia Rivera Frankl	1956	\N	miscellaneous,producer,production_manager	tt0120746,tt0098206,tt0097733,tt0116361
nm0006532	Stuart Weiss	\N	\N	actor	tt0118487,tt0109965,tt0067716,tt0112816
nm0006533	Ron Weaver	1937	2013	producer,miscellaneous,production_manager	tt0092325,tt0086790,tt0066651,tt0190169
nm0006534	Phil Hay	\N	\N	writer,producer,actor	tt7137380,tt2400463,tt11875316,tt0250224
nm0006535	Doug Hutchison	1960	\N	actor,writer,producer	tt0120689,tt0450314,tt0277027,tt0235737
nm0006536	Mary Torres	\N	\N	actress	tt0161485,tt0273855
nm0006537	Anatoli Chemodurov	1919	1986	actor,assistant_director,director	tt0043701,tt0066549,tt4680604,tt0080168
nm0006538	Adam Lima	\N	\N	visual_effects,animation_department,producer	tt0790736,tt3758814,tt1194173,tt2908446
nm0006539	Shawne Fielding Williams	1969	\N	actress,archive_footage	tt0205271,tt0116661,tt1754126,tt11289894
nm0006540	Michael D. Margulies	1936	\N	cinematographer,camera_department,set_decorator	tt0087928,tt0071424,tt0067433,tt0064652
nm0006541	Matt Hinkley	\N	\N	assistant_director,actor,cinematographer	tt0100054,tt0115683,tt0327375,tt0095363
nm0006542	Pons Maar	1951	\N	actor,miscellaneous,special_effects	tt0089908,tt0091129,tt0093507,tt0120841
nm0006543	Ian Dodd	\N	\N	camera_department,cinematographer	tt0119695,tt0092240,tt0844441,tt4094300
nm0006544	Ian Ellis	\N	\N	camera_department,cinematographer,art_department	tt0106677,tt0780622,tt2937696,tt0331933
nm0006545	J.J. Holiday	1958	\N	music_department,actor,composer	tt0376136,tt0120324,tt0200550,tt3045616
nm0006546	Alfie Kiernan	\N	\N	assistant_director,miscellaneous,editorial_department	tt0397138,tt0171804,tt0400018,tt0119985
nm0006547	Sean Milliken	\N	\N	casting_director,casting_department,actor	tt1465522,tt0270846,tt1479398,tt0328868
nm0006548	Ben Jensen	\N	\N	stunts,actor,assistant_director	tt1524930,tt0120903
nm0006549	Renato Falcão	\N	\N	cinematographer,producer,director	tt0260023,tt14664312,tt0848537,tt1436562
nm0006550	Paul Meier	1947	\N	miscellaneous,actor	tt0137363,tt0173328,tt0134154,tt1863408
nm0006551	Glen Tedham	\N	\N	miscellaneous,producer,production_manager	tt1194423,tt0242746,tt0228180,tt0329354
nm0006552	Perry Husman	\N	\N	producer,assistant_director,production_manager	tt0120841,tt0090887,tt0103524,tt0089173
nm0006553	Anita Cabada	\N	\N	costume_department,costume_designer	tt1464540,tt2109248,tt14513804,tt0200550
nm0006554	Rodrigo García	1959	\N	director,writer,producer	tt1602098,tt0420015,tt1121977,tt0835434
nm0006555	Rodrigo García	\N	\N	actor,archive_footage	tt0122335,tt0367193,tt0231040,tt0198093
nm0006556	Dietrich Siegl	1954	\N	actor,soundtrack,archive_footage	tt0091014,tt0461004,tt0896681,tt9712758
nm0006557	Gail Duncan	\N	\N	miscellaneous,producer	tt0106148,tt0101320,tt0115322,tt0110510
nm0006558	David Fuhrer	\N	\N	actor,producer,director	tt0910898,tt2996924,tt0097411,tt0292997
nm0006559	Norman Parker	\N	\N	actor,archive_footage	tt0082945,tt0099165,tt0083413,tt0087555
nm0006560	Sarah Levy	\N	\N	camera_department,cinematographer,miscellaneous	tt4154664,tt1695843,tt10244600,tt0386676
nm0006561	Velton Ray Bunch	1948	\N	composer,music_department,soundtrack	tt0096684,tt4767274,tt0244365,tt0481522
nm0006562	Asia Carrera	1973	\N	actress,director,writer	tt0160005,tt0234681,tt0190811,tt0190261
nm0006563	Iggy Pop	1947	\N	music_artist,actor,composer	tt0099329,tt0379217,tt0112817,tt0117951
nm0006564	Víctor Albarrán	\N	\N	production_manager,producer,assistant_director	tt0457430,tt0082198,tt0101025,tt0095053
nm0006565	Leo Corey Castellano	\N	\N	make_up_department,special_effects	tt5348176,tt5027774,tt2647544,tt9174558
nm0006566	Eberhard Wächter	1929	1992	actor,soundtrack,archive_footage	tt0260058,tt0260906,tt0252440,tt0441074
nm0006567	Fortunato Frattasio	1964	\N	visual_effects,actor	tt1392170,tt0120591,tt0145487,tt1385826
nm0006568	Maria Callas	1923	1977	actress,music_department,soundtrack	tt0066065,tt1219827,tt1167638,tt2395427
nm0006569	René de Haan	1974	\N	camera_department,miscellaneous	tt0205738,tt0234374,tt1223980,tt0114701
nm0006570	Russell Boyd	1944	\N	cinematographer,camera_department,director	tt0311113,tt0073540,tt0082432,tt0076299
nm0006571	Ian Dodd	\N	\N	cinematographer	tt0324123,tt0142212
nm0006572	Somtow Sucharitkul	1952	\N	writer,composer,actor	tt0097718,tt14209234,tt0200732,tt1540761
nm0006573	Philippe Leroy	1930	2024	actor,producer,archive_footage	tt0071910,tt0100263,tt0054407,tt0055432
nm0006574	Ed Vassallo	1968	2014	actor,producer,writer	tt0407304,tt0141842,tt3228070,tt2975776
nm0006575	Steven Schub	\N	\N	actor,writer,composer	tt0115847,tt0285331,tt1786751,tt1511476
nm0006576	Tony Ciccone	\N	\N	editorial_department,editor,actor	tt0120755,tt0775488,tt0421054,tt0107048
nm0006577	Rick Hall	\N	\N	actor	tt0127226,tt11732264,tt1337094
nm0006578	Bill Ryan	\N	\N	producer,miscellaneous,writer	tt0109190,tt0110527,tt0106701,tt0099785
nm0006579	Heather Lauren Olson	1982	\N	actress	tt0096684,tt0058796,tt0099850,tt0092455
nm0006580	Gilbert Carreras	\N	\N	editorial_department,miscellaneous	tt1524137,tt0120768,tt1214962,tt0118956
nm0006581	Donna Skipper	\N	\N	stunts	tt0129040,tt0197646
nm0006582	Alessandro Pesci	1960	\N	cinematographer,camera_department,actor	tt1456472,tt0929412,tt0103658,tt0118074
nm0006583	Inigo Gallo	1932	2000	actor,director,assistant_director	tt0174411,tt0056156,tt0073774,tt0078038
nm0006584	Kevin C. Murray	1971	\N	editor,director,special_effects	tt0756599,tt5186672,tt0234951,tt1948500
nm0006585	Erik Shapiro	\N	\N	miscellaneous,writer,director	tt0116928,tt1604228,tt0247144,tt0205195
nm0006586	Richard Vilas Montesanto	\N	\N	art_department	tt0944835,tt0959337,tt1951181,tt1084950
nm0006587	Kevin Collins	\N	\N	location_management,miscellaneous	tt0303017,tt0105156,tt0162065,tt0119732
nm0006588	Oliver Schündler	1966	\N	producer,actor,miscellaneous	tt1708135,tt5907748,tt0806910,tt0118503
nm0006589	Anthony Stabley	\N	\N	production_designer,art_director,producer	tt21807222,tt0439544,tt0893412,tt1121786
nm0006590	Georgi Djulgerov	1943	\N	director,producer,writer	tt0439668,tt0082728,tt0077190,tt4211022
nm0006591	Jill Gurr	1950	2022	script_department,writer,director	tt0102034,tt0107554,tt0092922,tt0093036
nm0006592	Trudi Callon	\N	\N	producer	tt0252684,tt0115531,tt0261652
nm0006593	Diane Cornell	\N	\N	producer,production_manager,miscellaneous	tt0297884,tt0443448,tt14911828,tt11250198
nm0006594	Bradford deCaussin	\N	\N	visual_effects,production_designer	tt1663662,tt0796366,tt0499549,tt1677720
nm0006595	Liz DiFiore	\N	\N	producer,production_manager,location_management	tt12510182,tt0366174,tt37593979,tt23845296
nm0006596	Shelley Malil	1964	\N	actor,miscellaneous,soundtrack	tt0405422,tt0372183,tt0233469,tt0311289
nm0006597	John Penotti	\N	\N	producer,location_management,assistant_director	tt3104988,tt2582782,tt2639336,tt0211933
nm0006598	Uli Kudicke	\N	\N	cinematographer,camera_department,editorial_department	tt0101606,tt0090194,tt0105073,tt0096942
nm0006599	Wonsuk Chin	1968	\N	producer,director,writer	tt3467712,tt5665342,tt1198396,tt0262021
nm0006600	Thomas A. Walsh	\N	\N	production_designer,producer,art_director	tt0119282,tt0120877,tt0268995,tt0410975
nm0006601	Bobby Muzingo	\N	\N	music_department,composer,sound_department	tt0104691,tt0114660,tt0107254,tt0111070
nm0006602	Jonathan Chiti	1969	\N	camera_department,assistant_director,cinematographer	tt0122609,tt0337733,tt0110639,tt0103334
nm0006603	Anthony Luke Lucero	1967	\N	actor,director,producer	tt3106730,tt1618431,tt0119581,tt0100436
nm0006604	Ruben Pla	\N	\N	actor,producer,director	tt1591095,tt9525214,tt4181404,tt3811906
nm0006605	David Alberico	1961	\N	assistant_director,miscellaneous	tt0111732,tt0104503,tt0143080
nm0006606	Timothy Mehlenbacher	\N	\N	sound_department,actor	tt0246894,tt0207631,tt0161942,tt0192669
nm0006607	Cort McCown	\N	\N	actor	tt0092718,tt0090142,tt0096918
nm0006608	Kathryn Loraine Hibbs	\N	\N	miscellaneous	tt0335121,tt0164184,tt0092675,tt0110997
nm0006609	Gianoula Ikonomou	\N	\N	miscellaneous,script_department	tt0167427,tt0144640,tt0250581,tt0226301
nm0006610	Donal Logue	1966	\N	actor,producer,director	tt0120611,tt0443706,tt0187393,tt0425123
nm0006611	Philipp Clarin	1975	\N	director,assistant_director,writer	tt0458404,tt0243225,tt0243119,tt2872306
nm0006612	Giancarlo Magalli	1947	\N	actor,writer,soundtrack	tt0198509,tt0160237,tt1056455,tt0471509
nm0006613	Don Murphy	1966	\N	producer,miscellaneous,actor	tt0110632,tt0120681,tt0118636,tt0418279
nm0006614	Dana Altman	\N	\N	producer,director,camera_department	tt1150947,tt0228188,tt0209253,tt0151239
nm0006615	Mauro Bolognini	1922	2001	director,writer,assistant_director	tt0061933,tt0093571,tt0055432,tt0053643
nm0006616	Stephen Clancy	\N	\N	camera_department,director,cinematographer	tt1075417,tt1228705,tt0454919,tt1591095
nm0006617	Soraya Sala	1972	\N	actress	tt0120883,tt0338476,tt0265188,tt0355029
nm0006618	Torben Liebrecht	1977	\N	actor,miscellaneous,assistant_director	tt2261227,tt5208252,tt4338336,tt5013980
nm0006619	Mark Dillen Stitham	\N	\N	actor	tt0094574,tt0411008,tt0103518,tt1600194
nm0006620	Jean-Pierre Mocky	1929	2019	director,actor,writer	tt0163716,tt0113997,tt0088462,tt0174224
nm0006621	Jean-Charles Tacchella	1925	2024	writer,director,actor	tt0072826,tt0079326,tt0094178,tt0198411
nm0006622	Ron Wechsler	\N	\N	production_manager,producer,miscellaneous	tt0115639,tt0119324,tt0119548,tt0416359
nm0006623	Steven Michaels	\N	\N	producer,miscellaneous,director	tt1567215,tt1408430,tt33030134,tt16452470
nm0006624	Bill Anderson	\N	\N	director,writer	tt0273021,tt0436992,tt2310212,tt0206691
nm0006625	Steve Barron	1956	\N	director,producer,writer	tt5014882,tt21259542,tt0282744,tt0100758
nm0006626	John H. Brister	1969	\N	production_manager,producer,miscellaneous	tt6966692,tt28256288,tt15203646,tt8244784
nm0006627	Lois Burwell	1957	\N	make_up_department,production_manager,executive	tt0119116,tt0120815,tt0112573,tt0325710
nm0006628	Nathalie Cheron	\N	\N	casting_director,casting_department	tt29768333,tt31597947,tt35699265,tt27054614
nm0006629	Christian Daugherty	1963	\N	camera_department,actor,miscellaneous	\N
nm0006630	Kelly Deco	\N	\N	art_department,actress,location_management	tt0089941,tt1649418,tt5308322,tt6772950
nm0006631	Anthony Foutz	\N	\N	writer,miscellaneous,producer	tt0091621,tt0099130,tt0104289,tt0086410
nm0006632	Marcee Healy	\N	\N	miscellaneous	tt0298814,tt0331811,tt0147612,tt0142342
nm0006633	Tom Houghton	1947	2023	cinematographer,camera_department	tt0335121,tt0243585,tt0948470,tt0212338
nm0006634	Hassan Ildari	\N	\N	director,producer,writer	tt12326448,tt0262763,tt0097323,tt0848954
nm0006635	Tom Irvin	1966	\N	make_up_department,special_effects,miscellaneous	tt0114508,tt0112817,tt0113690,tt1002561
nm0006636	Amy Jackson	\N	\N	miscellaneous,director,art_department	tt0319061,tt0097733,tt0210945,tt0105211
nm0006637	Noah Kadner	\N	\N	producer,writer,director	tt0382038,tt0120903,tt0311429,tt0262049
nm0006638	Laura Palmer	1969	\N	actress,stunts,miscellaneous	tt0192790,tt0124901,tt0208676,tt0139531
nm0006639	Jeff Lieberman	1947	\N	writer,director,producer	tt0380687,tt1110276,tt0093843,tt0075261
nm0006640	Derek Lister	1948	\N	director,writer,producer	tt3512080,tt4903938,tt7705432,tt3527150
nm0006641	Joubin Mortazavi	1973	\N	editor,producer,editorial_department	tt0239195,tt0116361,tt0224451,tt0243327
nm0006642	Nancy Paloian	1960	2016	producer,production_manager,miscellaneous	tt0168786,tt0364343,tt0242423,tt0119598
nm0006643	Gu Ramalho	\N	\N	camera_department,cinematographer	tt0118615,tt0206420,tt0113760,tt10863980
nm0006644	Scott D. Rosenbaum	\N	\N	producer,director,writer	tt5191938,tt1242548,tt10932348,tt8619390
nm0006645	Roger Scott Russell	1964	\N	assistant_director,location_management	tt0443701,tt0218817,tt0195714,tt0414982
nm0006646	Reto Salimbeni	1958	\N	producer,director,writer	tt0484382,tt0118059,tt2009461,tt4885044
nm0006647	Nicolina Servello	1971	\N	miscellaneous,producer,production_manager	tt0187995,tt0120779,tt0331464,tt0803091
nm0006648	Arielle Tepper Madover	1972	\N	producer,miscellaneous,executive	tt9357050,tt1703957,tt0175414,tt0174666
nm0006649	John H. Tobin	1955	\N	actor,miscellaneous	tt1399103,tt0813715,tt0400446,tt0062595
nm0006650	Jason Wood	\N	\N	producer,writer,director	tt0262419,tt0262767,tt0262847,tt3653132
nm0006651	Steve Morphew	\N	\N	miscellaneous,actor,assistant_director	tt0120738,tt2802144,tt0372784,tt9224104
nm0006652	Sonya 'Sonny' Tormoen	\N	\N	casting_department,location_management,miscellaneous	tt0813142,tt1650062,tt0246894,tt0157503
nm0006653	Jonathon Braun	\N	\N	editor,editorial_department,producer	tt0239195,tt0364782,tt1447839,tt0103835
nm0006654	Leighton Chapman	1962	\N	location_management,miscellaneous	tt0227538,tt0120769,tt0244000,tt0099399
nm0006655	Steve Boeddeker	\N	\N	sound_department,composer,music_department	tt1825683,tt2017038,tt6333060,tt0114369
nm0006656	Gary Gegan	\N	\N	sound_department,music_department,editorial_department	tt0271367,tt0114857,tt0115759,tt0387808
nm0006657	Pedro Chaskel	1932	2024	editor,director,writer	tt0262870,tt0322686,tt0225413,tt0386856
nm0006658	Charles Wilkinson	\N	\N	director,editor,producer	tt10772380,tt4507490,tt1310371,tt2757298
nm0006659	Khalid Mohamed	\N	\N	writer,director,actor	tt0248012,tt0438981,tt0348172,tt4308628
nm0006660	Khalid Mohammed	\N	\N	editorial_department,producer,production_manager	tt0195234,tt0212827,tt6267164,tt6142854
nm0006661	Richard Bellis	1946	\N	composer,actor,music_department	tt0099864,tt0088139,tt0106145,tt0101766
nm0006662	Jim Killeen	\N	\N	actor,producer,director	tt1176730,tt0185382,tt0115322,tt0159730
nm0006663	Enrique Murciano	1973	\N	actor,producer	tt0321021,tt0120179,tt0265086,tt0385307
nm0006664	Zdenek Sverák	1936	\N	writer,actor,music_department	tt0116790,tt0809951,tt0109071,tt0110348
nm0006665	George La Fountaine Jr.	\N	\N	camera_department	tt0090728,tt0088763,tt0095687,tt0093793
nm0006666	George La Fountaine Sr.	\N	\N	cinematographer,camera_department	tt0346222,tt0285358,tt0077097,tt0098904
nm0006667	Paul Hiscock	\N	\N	miscellaneous,casting_department,art_department	tt0116908,tt0120797,tt0120654,tt0211938
nm0006668	Cynthia Lejeune	\N	\N	miscellaneous,visual_effects,producer	tt3731562,tt1951266,tt1877832,tt0454876
nm0006669	William Sadler	1950	\N	actor,producer,director	tt0101452,tt0111161,tt0884328,tt0099423
nm0006670	Paul F. Tompkins	1968	\N	actor,writer,producer	tt3398228,tt0469494,tt0398286,tt0365830
nm0006671	Robert Isaac Lee	1956	2004	actor	tt0093148,tt0164974,tt0090209,tt0286486
nm0006672	Christopher C. Schiavo	\N	\N	producer,sound_department,editorial_department	tt0120591,tt0117500,tt0115759,tt0118880
nm0006673	David U. Hodges	1961	\N	actor	tt0109303,tt0112462,tt0106977,tt0134273
nm0006674	Amy Loftus	\N	\N	actress,music_department	tt1598828,tt0058796,tt0115396,tt0195997
nm0006675	Jocelyn M. Ajami	1950	\N	director,producer,writer	tt0373254,tt0872212,tt0167973,tt0874915
nm0006676	Aditya Chandora	1969	2002	director,producer,actor	tt0217554,tt0165899,tt0251193,tt0982934
nm0006677	Gerald Massimei	\N	\N	producer,director,miscellaneous	tt4601288,tt3761278,tt4504418,tt8845428
nm0006678	Amber Phillips	\N	\N	actress,writer	tt0163651,tt0207604,tt30972498,tt0190540
nm0006679	Allen Maris	\N	\N	visual_effects,actor,assistant_director	tt2935510,tt1446714,tt0955308,tt0831387
nm0006680	Wendy Braff	1967	\N	writer,miscellaneous,producer	tt13616400,tt0108790,tt7895704,tt0094455
nm0006681	Christophe Chauveau	\N	\N	location_management,production_manager,producer	tt0401711,tt1675434,tt0119038,tt0310203
nm0006682	Robert Davenport	\N	\N	writer,miscellaneous	tt0213149,tt0124257
nm0006683	Vince Jolivette	1971	\N	producer,actor,writer	tt5439812,tt3521126,tt2101441,tt2479800
nm0006684	Chip Joslin	\N	\N	actor,producer,writer	tt0247082,tt0452046,tt0368479,tt3569570
nm0006685	Gerry Lively	\N	\N	cinematographer,camera_department,director	tt0116514,tt0113118,tt8516596,tt0104409
nm0006686	Reg Tupper	1947	\N	actor,producer	tt0175142,tt1765510,tt0279600,tt0352113
nm0006687	Jim Ramos Vickers	\N	\N	director,assistant_director,stunts	tt4052886,tt12887536,tt3514324,tt0313043
nm0006688	Clinton Wayne	1974	\N	make_up_department,miscellaneous,executive	tt0796366,tt0149261,tt0993840,tt4154796
nm0006689	Preity G Zinta	1975	\N	actress,producer,writer	tt0420332,tt0254481,tt0323013,tt0347304
nm0006690	Giacomo Battiato	1943	\N	writer,director,archive_footage	tt7572868,tt0086074,tt0195587,tt0166126
nm0006691	Damon Collazo	1973	\N	casting_department,producer,casting_director	tt0120786,tt1400265,tt3344404,tt1865663
nm0006692	Rachael Crawford	\N	\N	actress,archive_footage	tt0114916,tt5918982,tt0114305,tt0115397
nm0006693	Malcolm Davies	\N	2019	sound_department,camera_department,miscellaneous	tt2317225,tt3622110,tt0491807,tt0084750
nm0006694	Christian Grosselfinger	\N	\N	camera_department,actor,cinematographer	tt11947418,tt10062292,tt4481322,tt5592146
nm0006695	Tom Hoffie	\N	\N	producer,production_manager,miscellaneous	tt1187064,tt2832756,tt10888878,tt0172669
nm0006696	David Silver	\N	\N	writer,actor,producer	tt0083752,tt0066665,tt0439384
nm0006697	Luiz Bonfá	1922	2001	composer,actor,music_department	tt0861689,tt6306064,tt1403981,tt1178663
nm0006698	David Mackay	\N	\N	camera_department,cinematographer,assistant_director	tt0097940,tt0117752,tt0117506,tt0115838
nm0006699	Joel Hynek	\N	\N	visual_effects,miscellaneous	tt0093773,tt0120889,tt0113492,tt0295701
nm0006700	Martha Smith	1953	\N	actress,producer,archive_footage	tt0077975,tt0092699,tt0085088,tt0098919
nm0006701	John Schwartzman	1960	\N	cinematographer,camera_department,actor	tt0329575,tt0213149,tt0120591,tt14856980
nm0006702	Ana Belén	1951	\N	actress,director,producer	tt0110785,tt0088954,tt0120960,tt0415421
nm0006703	Zeki Ökten	1941	2009	director,assistant_director,producer	tt0078355,tt0491999,tt0138412,tt0252591
nm0006704	Michael F. Hoover	\N	\N	visual_effects,actor,special_effects	tt0114194,tt0086837,tt0398913,tt0094761
nm0006705	Andrew Moreau	\N	\N	art_director,art_department,production_designer	tt3581920,tt0193560,tt0184907,tt4878326
nm0006706	Paul van den Boom	\N	\N	cinematographer,assistant_director,camera_department	tt0976197,tt0338751,tt0398657,tt11102880
nm0006707	Pivio	1958	\N	composer,producer,writer	tt7204006,tt1320297,tt3425772,tt0119248
nm0006708	Karen Morris	\N	\N	miscellaneous	tt0086058,tt0093277,tt0101881,tt0101622
nm0006709	Terence Michael	\N	\N	producer,writer,director	tt0214388,tt4802250,tt0250494,tt1572209
nm0006710	Vik Sahay	\N	\N	actor,soundtrack	tt0934814,tt0119217,tt1031969,tt4154664
nm0006711	Chris Trillo	\N	\N	camera_department,actor	tt0317919,tt1630029,tt0118688,tt0800039
nm0006712	Crispian Belfrage	1971	\N	actor,producer,stunts	tt3090110,tt4520364,tt0123215,tt1219024
nm0006713	Rachael Harris	\N	\N	actress,producer,soundtrack	tt1119646,tt1196141,tt4052886,tt1632701
nm0006714	Rachel Lee Harris	\N	\N	actress	tt0146214,tt0127198,tt0124723,tt0127773
nm0006715	Mukesh	1923	1976	music_artist,music_department,actor	tt1431045,tt0052560,tt0066763,tt0074730
nm0006716	Seth Walther	\N	\N	writer,script_department,actor	tt3717532,tt2236126,tt1704503,tt4962796
nm0006717	Jochen Kunstler	1968	\N	editor,editorial_department,assistant_director	tt3177316,tt1269734,tt1588334,tt1905007
nm0006718	David Fine	1955	\N	actor,miscellaneous,producer	tt4998222,tt0454921,tt0810788,tt5688932
nm0006719	Cat Stone	1972	\N	miscellaneous,actress,producer	tt4236770,tt14539740,tt6343314,tt13443470
nm0006720	Monique Edwards	\N	\N	actress,producer,script_department	tt4925292,tt1285016,tt0108778,tt0108724
nm0006721	Susan May Pratt	1974	\N	actress,soundtrack,archive_footage	tt0147800,tt0470055,tt0164114,tt4178092
nm0006722	William Tony Hooper	1964	\N	special_effects,make_up_department,miscellaneous	tt0089489,tt0114608,tt0092076,tt12695338
nm0006723	Daniel Boyd	1956	\N	producer,director,writer	tt0102632,tt0092750,tt0099853,tt1458406
nm0006724	Hazel Adair	1920	2015	writer,producer,actress	tt0071273,tt0069464,tt0057741,tt0069505
nm0006725	Anna Strasberg	1939	2024	actress,archive_footage	tt0059754,tt0060018,tt0062203,tt0059988
nm0006726	E. Duke Vincent	1932	2024	producer,writer,miscellaneous	tt0077093,tt0081856,tt0065274,tt0068138
nm0006727	Susie Farris	\N	\N	casting_director,casting_department	tt0417148,tt0270288,tt0181316,tt4158110
nm0006728	Marianna Widmalm	\N	\N	producer,miscellaneous,production_manager	tt11042298,tt10846890,tt1601140,tt0324875
nm0006729	Pip Karmel	1963	\N	writer,editor,director	tt0117631,tt0183503,tt9318588,tt0481141
nm0006730	Scott K. Wallace	1955	\N	editor,editorial_department	tt0090305,tt0088847,tt0088128,tt0118798
nm0006731	Tim Ketzer	\N	\N	visual_effects,art_department,animation_department	tt0409459,tt0360717,tt0332452,tt0120184
nm0006732	Nancy Deren	\N	\N	art_department,set_decorator,production_designer	tt4154796,tt10618286,tt15398776,tt0375517
nm0006733	Catalaine Knell	\N	\N	producer,miscellaneous,actress	tt0092099,tt0091209,tt0092644,tt3726258
nm0006734	Alain Corneau	1943	2010	writer,director,assistant_director	tt0103110,tt0098000,tt0318725,tt0075082
nm0006735	Robert Kravitz	\N	\N	producer	tt0423370,tt3444206,tt9587298,tt0244094
nm0006736	Charlie McNamara	\N	\N	camera_department,director,writer	tt0103759,tt0385887,tt3749900,tt0115678
nm0006737	Hark Bohm	1939	\N	actor,writer,director	tt5723272,tt0096476,tt0070837,tt0087232
nm0006738	Lea Bohm	\N	\N	actress,art_director	tt0096476,tt0116383,tt0091348,tt0387247
nm0006739	Marquard Bohm	1941	2006	actor,director,writer	tt0234421,tt0073152,tt0062025,tt0072976
nm0006740	Uwe Bohm	1962	2022	actor,transportation_department	tt0096476,tt0099767,tt2338846,tt0085660
nm0006741	Marie Déa	1912	1992	actress,archive_footage	tt0041719,tt0035521,tt0170002,tt0197203
nm0006742	Helen Vita	1928	2001	actress,writer,miscellaneous	tt0068327,tt0065718,tt0075165,tt0080196
nm0006743	Thomas A. Davila	\N	\N	miscellaneous,visual_effects	tt0103064,tt0116253,tt0111255,tt0120179
nm0006744	Ann E. Holbrook	\N	\N	editor,editorial_department	tt0264355,tt0115163,tt0108724,tt0198386
nm0006745	João Mário Grilo	1958	\N	director,writer,actor	tt0123974,tt0083904,tt10674504,tt0117235
nm0006746	Meredith Layne	\N	\N	casting_director,miscellaneous,casting_department	tt1877889,tt0414853,tt0119282,tt0892700
nm0006747	Akua Campanella	\N	\N	casting_director	tt0285681,tt0289616,tt0253335,tt0203078
nm0006748	Izabela Frank	\N	\N	producer,director,writer	tt0396651,tt1038043,tt0461900,tt0466528
nm0006749	Andreas Herzog	\N	\N	director,editor,actor	tt0806910,tt2359935,tt10598848,tt7845932
nm0006750	Larry Kaster	\N	\N	camera_department,producer,production_manager	tt1800230,tt3689810,tt0386792,tt0118276
nm0006751	Nuno Tudela	1966	\N	assistant_director,director,editor	tt12647628,tt12647796,tt7471650,tt1863316
nm0006752	Steve Allen	1921	2000	writer,actor,producer	tt0047873,tt0112641,tt0105151,tt0053727
nm0006753	Michael Zens	1953	\N	director,assistant_director,camera_department	tt7357114,tt0251523,tt0111183,tt0295620
nm0006754	John Follmer	\N	\N	visual_effects,miscellaneous,producer	tt1464540,tt0113855,tt0114857,tt0115759
nm0006755	Scott Chambliss	\N	\N	production_designer,art_department,art_director	tt3741700,tt3896198,tt0796366,tt1964418
nm0006756	Stephen Barker	\N	\N	production_manager,editorial_department,producer	tt0118661,tt0241303,tt0327437,tt0111149
nm0006757	Thomas Oláh	1966	\N	costume_designer,actor,costume_department	tt2101473,tt0800241,tt1772264,tt0120802
nm0006758	Derek Marcil	1962	\N	sound_department,music_department	tt0289879,tt0116922,tt0116367,tt0114608
nm0006759	James Scura	\N	\N	producer,production_manager,writer	tt6111130,tt3597790,tt1103987,tt2400391
nm0006760	Jeff Fazio	\N	\N	producer,writer,director	tt0118346,tt0144039
nm0006761	Paul J. Smith	1906	1980	animation_department,director,archive_footage	tt11429090,tt2243597,tt0140895,tt0151972
nm0006762	Saeed Jaffrey	1929	2015	actor,miscellaneous,archive_footage	tt0073341,tt0091578,tt0083987,tt0087892
nm0006763	Jackie Shroff	1957	\N	actor,producer,soundtrack	tt0238936,tt9531772,tt9095260,tt0116391
nm0006764	Sonali Kulkarni	1974	\N	actress,archive_footage	tt0292490,tt0361411,tt0476884,tt0248185
nm0006765	Vidhu Vinod Chopra	1952	\N	writer,producer,director	tt23849204,tt1187043,tt0374887,tt0456144
nm0006766	Deepak Verma	1969	\N	actor,director,writer	tt3430596,tt3794034,tt2249786,tt1808319
nm0006767	Narayana Rao C.H.	1913	1984	actor	tt0282412,tt0240631,tt0279943,tt0280786
nm0006768	Rao C.S.R.	1924	2004	director,actor,writer	tt0206877,tt0261989,tt0261819,tt0261940
nm0006769	Narasa Raju D.V.	1920	2006	writer,director	tt0266880,tt0352488,tt0333067,tt0207222
nm0006770	Narayana P.L.	\N	\N	actor	tt0491772,tt0248051,tt0245830,tt0250463
nm0006771	Gina Castellano	\N	\N	miscellaneous,costume_department,producer	tt1082601,tt0142342,tt0765447,tt0115380
nm0006772	Tom Stackpoole	\N	\N	camera_department,miscellaneous	tt0097081,tt0095288,tt0097119,tt0097885
nm0006773	David Westheimer	1917	2005	writer	tt0059885,tt0086662,tt0075532,tt0045449
nm0006774	Joshua Sinclair	1953	\N	writer,actor,producer	tt5725348,tt0816544,tt0074740,tt0079224
nm0006775	Carole Cowley	\N	\N	visual_effects,editorial_department,animation_department	tt0119177,tt0346156,tt0259711,tt0113855
nm0006776	Katharine Baird	\N	\N	visual_effects	tt1663662,tt0371746,tt2109248,tt0796366
nm0006777	John Axelrad	\N	\N	editor,editorial_department,miscellaneous	tt2935510,tt5093026,tt0439815,tt1212428
nm0006778	Curt Schulkey	\N	\N	sound_department,editorial_department,editor	tt0133152,tt4633694,tt0129167,tt3397884
nm0006779	Miss Bunny	1979	\N	actress,archive_footage	tt0253114,tt10004564,tt14686888,tt2040298
nm0006780	Denis Maloney	\N	\N	cinematographer,camera_department,producer	tt0129387,tt0179116,tt0208874,tt0165832
nm0006781	Harry Baer	1947	\N	actor,assistant_director,director	tt0072976,tt0068884,tt0330802,tt0079095
nm0006782	E.T.A. Hoffmann	1776	1822	writer,miscellaneous,soundtrack	tt5523010,tt3998516,tt1563152,tt11492986
nm0006783	Maeve Paterson	\N	\N	costume_designer,costume_department	tt3922798,tt0236784,tt0101605,tt0490499
nm0006784	David Bickford	1953	\N	actor,music_department	tt0844441,tt2788432,tt0231402,tt0091920
nm0006785	Kimberly Nelson LoCascio	\N	\N	visual_effects,producer,miscellaneous	tt0831387,tt0421715,tt0114898,tt0796366
nm0006786	James Quattrochi	\N	\N	actor,producer,transportation_department	tt0139669,tt1225698,tt0870154,tt0099685
nm0006787	Sam Irvin	1956	\N	director,producer,actor	tt0265171,tt0120684,tt0101983,tt0414731
nm0006788	Hart Getzen	\N	\N	producer,writer	tt0211593,tt0115967,tt0107202,tt0159689
nm0006789	Lauren Bailey	\N	\N	actress	tt0236342,tt0240509,tt0339176,tt0234951
nm0006790	Jonathan D. Krane	1952	2016	producer,executive,writer	tt0185183,tt0107438,tt0119094,tt0100050
nm0006791	Benjamin Herrmann	1971	\N	producer,director,writer	tt4005402,tt0250258,tt0119232,tt1124377
nm0006792	David de Vos	\N	\N	director,editor,producer	tt0201443,tt1753807,tt3513208,tt7472122
nm0006793	Ronnie Hadar	\N	\N	producer,production_manager,stunts	tt0106064,tt0110061,tt0092069,tt0096419
nm0006794	Johan de Ligt	1967	\N	sound_department,editorial_department	tt0115525,tt0261470,tt0844351,tt9589896
nm0006795	Salman Khan	1965	\N	producer,actor,music_department	tt4832640,tt3863552,tt2016894,tt2372222
nm0006796	Daryl Bennett	\N	\N	composer,editor,music_department	tt9690830,tt33395194,tt8311576,tt33292841
nm0006797	Bill Wilson	\N	\N	writer	tt0192455
nm0006798	Matthew Harrison	1960	\N	director,producer,writer	tt0110986,tt0108200,tt0119457,tt2246871
nm0006799	Christopher Duddy	1961	\N	camera_department,cinematographer,visual_effects	tt0795361,tt0096754,tt2402157,tt0103064
nm0006800	Sandy Dennis	1937	1992	actress,archive_footage	tt0061184,tt0062425,tt0066193,tt0063661
nm0006801	Antoine Monot	1975	\N	actor,producer,director	tt0250258,tt0081860,tt3042408,tt0806910
nm0006802	Toy Newkirk	1969	\N	producer,director,actress	tt0095742,tt0101069,tt1799151,tt32083059
nm0006803	Ken Sanders	\N	\N	producer,writer,miscellaneous	tt33087927,tt12311640,tt9149982,tt5252624
nm0006804	Denis Rouden	\N	\N	cinematographer,camera_department,producer	tt0390808,tt10127684,tt2249221,tt0808339
nm0006805	Scott P. Levy	\N	\N	assistant_director,production_manager,director	tt0110512,tt0117912,tt0112433,tt0106979
nm0006806	Alex Nicholas	\N	\N	animation_department,miscellaneous,writer	tt0821800,tt0101076,tt0821815,tt0108783
nm0006807	Michèle Morgan	1920	2016	actress,archive_footage,archive_sound	tt0034919,tt0030643,tt0039004,tt0038409
nm0006808	Richard Miller	\N	\N	camera_department,art_department	tt0095348,tt0086443,tt0093626,tt0249518
nm0006809	Stephen Tolkin	\N	\N	writer,producer,director	tt6467294,tt0758737,tt0844653
nm0006810	Judith Benezra	1976	\N	producer,actress,director	tt0327643,tt0454084,tt0413099,tt0244471
nm0006811	Michael Finn	\N	\N	assistant_director,producer,miscellaneous	tt0105104,tt1023111,tt2965466,tt0815244
nm0006812	Tina Fiorda	\N	\N	costume_designer,actress,costume_department	tt0306047,tt0270846,tt0242746,tt22246560
nm0006813	Darryl Fowler	1969	\N	director,writer,camera_department	tt0262199,tt0178300,tt0187180
nm0006814	John Gare	\N	\N	sound_department	tt0109303,tt0848557,tt0470883,tt0429422
nm0006815	Scott Kaufer	1953	\N	producer,writer	tt0106179,tt0268789,tt0775558,tt1409008
nm0006816	Suzanne Krull	1966	2013	actress,writer,producer	tt0139239,tt0170016,tt1075417,tt0411008
nm0006817	Craig Kvinsland	\N	\N	camera_department,actor,visual_effects	tt0175880,tt0311429,tt0187078,tt0289765
nm0006818	Hans Larson	\N	\N	actor	tt0403197,tt0258501,tt0163576
nm0006819	Annalouise Paul	\N	\N	actress,miscellaneous	tt1935065,tt0110097,tt0426741,tt0251370
nm0006820	Aleks Paunovic	1969	\N	actor,producer,stunts	tt1596350,tt4470266,tt3450958,tt4278760
nm0006821	Marc D. Rienzo	\N	\N	visual_effects,director,writer	tt4566758,tt3501632,tt6320628,tt10872600
nm0006822	Jose Rivera	1960	\N	costume_designer,costume_department	tt0267414,tt0305556,tt0259218,tt0324071
nm0006823	Steve Rosse	\N	\N	art_department,set_decorator	tt0097216,tt0107096,tt0095316,tt0096501
nm0006824	Parker Swanson	1966	\N	art_department,camera_department,actor	tt0325710,tt0120586,tt0117979,tt2101383
nm0006825	Jeffrey Townsend	1954	\N	production_designer,writer,director	tt0088680,tt0097322,tt0078754,tt0108160
nm0006826	Stacey Travis	\N	\N	actress,archive_footage	tt0162346,tt0138524,tt0132347,tt0219965
nm0006827	Brian Zinnikas	\N	\N	producer	tt0259333
nm0006828	Julian Chojnacki	1953	\N	camera_department,director,cinematographer	tt0465602,tt1385867,tt0242445,tt0329101
nm0006829	Susan Murray	\N	\N	miscellaneous,editorial_department,producer	tt0165929,tt0351977,tt0239948,tt0115351
nm0006830	John J. Kelly	1967	\N	producer,production_manager,miscellaneous	tt1840309,tt1431045,tt1291584,tt6450804
nm0006831	Alex L. Worman	\N	\N	miscellaneous,camera_department,producer	tt1950186,tt4276820,tt1535109,tt1210166
nm0006832	Martin Hobbs	\N	\N	visual_effects,miscellaneous,special_effects	tt0120053,tt1386703,tt0370263,tt2024469
nm0006833	Thomas J. Smith	\N	\N	visual_effects	tt0296572,tt1024648,tt1291580,tt0120789
nm0006834	Hanno di Rosa	1955	\N	composer,director,writer	tt0099970,tt0098269,tt0090910,tt0095637
nm0006835	John Francis Sullivan	\N	\N	writer,producer,actor	tt19245778,tt37969138,tt2450592,tt0114472
nm0006836	Gerry Humphreys	1931	2006	sound_department,miscellaneous	tt0083658,tt0075784,tt0083987,tt0064505
nm0006837	Bill Melendez	1916	2008	producer,animation_department,director	tt0064107,tt0059026,tt0063048,tt0060230
nm0006838	Frank Kruse	\N	\N	sound_department,music_department,miscellaneous	tt1016150,tt28082769,tt27503384,tt1979320
nm0006839	Hugh W. Griffith III	\N	\N	art_director,art_department,special_effects	tt0146984,tt0109795,tt0171690,tt0092655
nm0006840	Anthony Brockliss	\N	\N	art_director,production_designer,art_department	tt0093640,tt0098382,tt0088194,tt0103524
nm0006841	Udayan Prasad	1953	\N	director,producer,actor	tt0954990,tt0119743,tt0112586,tt2711738
nm0006842	Julio Alemán	1933	2012	actor,producer,soundtrack	tt0759222,tt0065630,tt0065798,tt0282127
nm0006843	Ron Smith	1974	\N	manager,producer,writer	tt0058796,tt7241654,tt7461372
nm0006844	Jennifer Law-Stump	\N	\N	visual_effects,art_department,special_effects	tt0238380,tt0346156,tt0120903,tt0120647
nm0006845	Sally Potter	1949	\N	director,writer,composer	tt0120275,tt0107756,tt5814592,tt2115295
nm0006846	Ric Roman Waugh	\N	\N	producer,director,writer	tt4633690,tt6189022,tt7737786,tt5761544
nm0006847	Adam Beckett	1950	1979	director,visual_effects,producer	tt0076759,tt0209958,tt0078087,tt0403104
nm0006848	Dean Hood	\N	\N	miscellaneous,producer,production_manager	tt1392190,tt12037194,tt0770752,tt0362270
nm0006849	Joanna Fuller	1977	\N	miscellaneous,actress	tt0253754,tt0112178,tt0244365,tt0882751
nm0006850	Shayna Lee	1975	\N	actress,archive_footage	tt0113094,tt0370194,tt0108763,tt0316394
nm0006851	Madeleine Blaustein	1960	2008	actor,writer,miscellaneous	tt0190641,tt0168366,tt0210234,tt0235679
nm0006852	David Whitaker	1931	2012	music_department,composer,writer	tt0216800,tt0139239,tt0084749,tt0064949
nm0006853	Tim Hunter	1947	\N	director,producer,writer	tt0337619,tt0091860,tt0108026,tt30947718
nm0006854	Roger Spottiswoode	1945	\N	director,producer,editorial_department	tt0083511,tt0216216,tt0096098,tt0472562
nm0006855	Aldo De Robertis	\N	\N	cinematographer,camera_department,special_effects	tt0198757,tt0166135,tt0056400,tt0210356
nm0006856	José Luis López-Linares	1955	\N	cinematographer,director,producer	tt0115575,tt1202202,tt31064117,tt5803868
nm0006857	Mariano Nuñez West	\N	\N	composer,music_department	tt0117069,tt0284935,tt1546005,tt0202130
nm0006858	Pat Tagliaferro	\N	\N	art_director,art_department,special_effects	tt0089941,tt0106387,tt0102492,tt0203019
nm0006859	Daniel Toland	\N	\N	producer,production_manager,assistant_director	tt11771270,tt17491088,tt9698442,tt1492179
nm0006860	Damian Lee	1950	\N	producer,writer,director	tt2854894,tt5198570,tt2083379,tt0904127
nm0006861	Carol Gable	1959	\N	miscellaneous,assistant_director,location_management	tt0247082,tt7555294,tt4085584,tt0295456
nm0006862	Eden Miller	1972	\N	costume_designer,costume_department	tt3967856,tt7125860,tt4572792,tt2396589
nm0006863	Roger Kupelian	\N	\N	visual_effects,director,producer	tt0167261,tt1060277,tt1483013,tt0296572
nm0006864	Alexander Gruzdev	\N	\N	sound_department,miscellaneous	tt0373469,tt0780571,tt0263488,tt0790686
nm0006865	Hanno Lentz	1965	\N	cinematographer,camera_department,actor	tt13846414,tt0267427,tt4176826,tt0327746
nm0006866	Robin L. D'Arcy	\N	\N	visual_effects,special_effects,camera_department	tt0137523,tt0346491,tt1285016,tt0421715
nm0006867	John Kent Harrison	\N	\N	director,writer,producer	tt0163913,tt0106241,tt1010278,tt0437088
nm0006868	Maria Estrada	\N	\N	miscellaneous,casting_director,casting_department	tt4475060,tt1710295,tt0965404,tt7010622
nm0006869	Leslie Ekker	1955	\N	visual_effects,art_department,special_effects	tt0112384,tt0087332,tt0111503,tt0093507
nm0006870	Janice Genn	\N	\N	assistant_director,visual_effects,talent_agent	tt0460780,tt0486576,tt0439815,tt0762114
nm0006871	Steve Carter	\N	\N	art_director,art_department,production_designer	tt0451279,tt2802144,tt1297919,tt0483607
nm0006872	Sergio Donati	1933	2024	writer,actor,assistant_director	tt0064116,tt0091828,tt0067140,tt0076504
nm0006873	Peter Samuelson	\N	\N	producer,production_manager,actor	tt0137363,tt0088000,tt0111454,tt0120514
nm0006874	Julie Davis	1969	\N	director,actress,writer	tt0280424,tt0130019,tt1185242,tt2187137
nm0006875	Arnon Manor	\N	\N	executive,producer,director	tt10105174,tt13322484,tt3766354,tt1232829
nm0006876	Halima K. Gilliam	1981	\N	editor,editorial_department,sound_department	tt11301886,tt9271850,tt6146586,tt1855199
nm0006877	Konrad Sabrautzky	1948	\N	director,writer,assistant_director	tt0411776,tt0115065,tt0806910,tt7422216
nm0006878	Michael B. Silver	\N	\N	actor,director,writer	tt4124758,tt1319735,tt0250494,tt0106079
nm0006879	Renée Gundelach	1943	\N	producer,miscellaneous,actress	tt0075675,tt0102536,tt0087008,tt0090266
nm0006880	Rob Vreugde	\N	\N	transportation_department	tt0343818,tt1318514,tt0822854,tt3967856
nm0006881	David Abbott	\N	\N	make_up_department,miscellaneous	tt0106598,tt0133152,tt0118928,tt0160127
nm0006882	Thomas Dadras	\N	\N	visual_effects,animation_department	tt0120201,tt0298814,tt0271367,tt0296572
nm0006883	Jason Magness	\N	\N	animation_department,art_department	tt0268516,tt0268583,tt0442656,tt0189667
nm0006884	Katherine Dover	1954	\N	costume_department,costume_designer,art_department	tt0089941,tt0297181,tt1974419,tt0106677
nm0006885	Bruno Sorel	\N	\N	art_department,set_decorator	tt0164184,tt0294357,tt0227445,tt0157262
nm0006886	Ido Gondelman	\N	\N	animation_department,director,writer	tt0271367,tt0119094,tt0199753,tt0120004
nm0006887	R. Emmett Fitzsimmons	\N	\N	actor,director,producer	tt1027718,tt0086759,tt3091396,tt3276922
nm0006888	Tom Noonan	1951	\N	actor,writer,director	tt0383028,tt0100502,tt1172994,tt0479537
nm0006889	Herbert Ross	1927	2001	miscellaneous,director,producer	tt0076843,tt0076095,tt0098384,tt0064382
nm0006890	Paul Scofield	1922	2008	actor,archive_footage	tt0060665,tt0110932,tt0115988,tt0059825
nm0006891	Michaëla Watteaux	1954	\N	director,writer,actress	tt0268721,tt3805856,tt0288022,tt0423713
nm0007019	Randell Dennis Widner	1947	2021	stunts,actor,producer	tt0097737,tt0093409,tt0107711,tt0089218
nm0006892	Roy B. Yokelson	1953	\N	sound_department,music_department,editor	tt0015324,tt0089853,tt0113819,tt0162346
nm0006893	John Vernon	1932	2005	actor,production_manager,soundtrack	tt0077975,tt0066999,tt0083530,tt0075029
nm0006894	Michael De Luca	1965	\N	producer,miscellaneous,writer	tt1535109,tt1285016,tt0765010,tt1210166
nm0006895	Manu Kurz	\N	\N	composer	tt4368698,tt0352365,tt0116486,tt0173171
nm0006896	Andrew Peterson	\N	\N	producer,location_management,writer	tt1049402,tt0808526,tt1730687,tt0166896
nm0006897	Paula Frankel	\N	\N	script_department,miscellaneous,sound_department	tt0113957,tt0120889,tt0425123,tt1195478
nm0006898	Paul Hunt	1943	2011	producer,director,actor	tt0134215,tt0071336,tt0104855,tt0338834
nm0006899	Vaughan V. Baker	1965	\N	art_department	tt3450958,tt3829266,tt0822854,tt1601913
nm0006900	J. Cindy Hill	1972	\N	miscellaneous,casting_department,casting_director	tt0210945,tt0219699,tt0111667,tt1412338
nm0006901	Ross Guidici	\N	\N	editor,writer,camera_department	tt0114814,tt0179116,tt1478853,tt6255642
nm0006902	Richard D'Ovidio	\N	\N	writer,producer,actor	tt1911644,tt2376218,tt0245674,tt5592230
nm0006903	Michael Catlin	1952	\N	actor,producer	tt1693888,tt0149428,tt0102535,tt3165438
nm0006904	Tony Gilroy	1956	\N	writer,producer,director	tt0465538,tt3748528,tt9253284,tt2872718
nm0006905	Christoph Müller	1964	\N	producer,writer,production_manager	tt0426578,tt4176826,tt2101473,tt28082769
nm0006906	Carlos Taibo	\N	\N	producer,production_manager,miscellaneous	tt1535108,tt0115571,tt0328107,tt0257756
nm0006907	Mariëtte van Sisseren	\N	\N	art_department	tt0205190
nm0006908	Matt Galla	\N	\N	visual_effects	tt0217869,tt0219854
nm0006909	Elizabeth Dixon	1976	\N	miscellaneous,actress,location_management	tt0335121,tt0364343,tt0310910,tt0255798
nm0006910	John Brian King	\N	\N	miscellaneous,director,writer	tt0272338,tt0337921,tt0236493,tt0119190
nm0006911	Steve Yedlin	1975	\N	cinematographer,camera_department,visual_effects	tt1276104,tt2126355,tt8946378,tt2527336
nm0006912	Fabio Liberatori	\N	\N	composer,soundtrack	tt0083680,tt1846985,tt0104798,tt0094901
nm0006913	Andrew Silver	\N	\N	music_department,editorial_department,sound_department	tt13833688,tt7125860,tt4900148,tt1119646
nm0006914	Dawn Bennett	\N	\N	actress,archive_footage	tt0145136,tt0173928,tt0138102,tt0216225
nm0006916	Michael Ritchie	1938	2001	director,producer,actor	tt0091129,tt0080934,tt0089155,tt0074174
nm0006917	Meg Liberman	\N	\N	casting_director,casting_department,producer	tt0259446,tt0098904,tt0120902,tt0103466
nm0006918	Christopher Gosch	\N	\N	cinematographer,camera_department,producer	tt23668248,tt35069149,tt6068554,tt1248967
nm0006919	Roger Christiansen	1952	2025	miscellaneous,director,assistant_director	tt6894476,tt0247102,tt0108778,tt7575792
nm0006920	Jim van Dijk	\N	\N	camera_department,actor,producer	tt4834206,tt7462410,tt1322269,tt0376994
nm0006921	Sean Cossey	\N	\N	casting_department,casting_director	tt6470478,tt5420376,tt1325004,tt0319343
nm0006922	Ken Eluto	\N	\N	editor,sound_department,editorial_department	tt7660850,tt0496424,tt2509850,tt0118421
nm0006923	Peter Freund	1952	\N	producer,writer	tt0300125,tt0220814,tt0386974,tt0270855
nm0006924	Federico Marsicano	1971	\N	assistant_director,casting_director,director	tt11349144,tt25387908,tt0818592,tt0322693
nm0006925	Veronika Horka	1976	\N	miscellaneous,producer,production_manager	tt0419706,tt0183790,tt0355295,tt0367959
nm0006926	Richard Milton	1940	\N	producer,director,actor	tt0078591,tt0077031,tt0073994,tt0078694
nm0006927	Dewey Cook	\N	\N	make_up_department	tt0155159,tt0214299,tt0238274,tt0154625
nm0006928	Ken Weiss	\N	\N	music_department,producer,actor	tt0338325,tt0120095,tt0314676,tt0138834
nm0006929	Thomas Morse	\N	\N	music_department,composer,sound_department	tt0115675,tt0407205,tt0285335,tt7869070
nm0006930	Richard Rosser	\N	\N	assistant_director,producer,director	tt0120533,tt0769534,tt1196946,tt0119802
nm0006931	J.R. Bookwalter	1966	\N	director,producer,editor	tt27487628,tt0244307,tt0107764,tt0094962
nm0006932	Andrew Susskind	\N	\N	miscellaneous,producer,director	tt0075549,tt0137330,tt0112206,tt0081080
nm0006933	Nadine Muse	\N	\N	sound_department,editorial_department,editor	tt0387898,tt1655442,tt1602620,tt0808279
nm0006934	Sébastien Saadoun	\N	\N	camera_department,cinematographer,producer	tt0290673,tt0364517,tt0281108,tt1032842
nm0006935	Devon Heffley Curry	1954	\N	sound_department	tt0346156,tt0183790,tt0100502,tt0085407
nm0006936	James Shavick	\N	\N	producer,miscellaneous,writer	tt10551118,tt0233840,tt0117308,tt0439410
nm0006937	Jim Charmatz	1966	\N	special_effects,make_up_department,visual_effects	tt0346156,tt1305797,tt1663662,tt0407304
nm0006938	Leonardo Fasoli	\N	\N	writer,producer,assistant_director	tt8332438,tt14084828,tt2049116,tt29457135
nm0006939	Richard Berry	1950	\N	actor,writer,director	tt1167638,tt0310203,tt3913206,tt0105131
nm0006940	Douglas F. O'Neons	1939	2022	camera_department,cinematographer,director	tt0118956,tt0112442,tt0087050,tt0119558
nm0006941	András Nagy	1972	\N	cinematographer,camera_department,director	tt9834506,tt6605812,tt0997035,tt0244990
nm0006942	András Nagy	1956	\N	writer,miscellaneous	tt0136743,tt0129345,tt0103229,tt13150216
nm0006943	Charles Lamont	1895	1993	director,writer,producer	tt0029994,tt0039836,tt0031576,tt0031590
nm0006944	Chaim Kantor	\N	\N	camera_department,executive	tt0137363,tt0116629,tt0098273,tt0090329
nm0006945	Helmut Berger	1949	\N	actor,director,writer	tt0100244,tt0090977,tt0220074,tt0806901
nm0006946	Sam Aaron	\N	\N	actor	tt0104040,tt0118648,tt0124879,tt0090391
nm0006947	Denise Pinckley	\N	\N	producer,production_manager,miscellaneous	tt1483013,tt0368008,tt1872181,tt1235522
nm0006948	David Abramson	\N	\N	sound_department	tt0082951,tt0080850,tt0115935,tt0244718
nm0006949	David Abramson	\N	\N	editor,editorial_department,director	tt11875316,tt7369974,tt5615700,tt4145054
nm0006950	Jennifer Conroy	\N	\N	producer,production_manager,miscellaneous	tt6443346,tt14539740,tt5034838,tt0816711
nm0006951	Robin Griffin	\N	\N	visual_effects	tt0319262,tt0480249,tt0118615,tt0114898
nm0006952	Alexia Landeau	\N	\N	actress,writer	tt1602472,tt0841044,tt0176783,tt0422720
nm0006953	Colin Thurston	\N	\N	art_department,art_director,production_designer	tt1098327,tt3397884,tt0120347,tt0443274
nm0006954	Pierre Schoendoerffer	1928	2012	writer,director,actor	tt0058863,tt0075885,tt0084089,tt0051615
nm0006955	Lewis Schoenbrun	\N	\N	editor,editorial_department,miscellaneous	tt0270388,tt0098546,tt0095690,tt1788453
nm0006956	Jesse Vint	1940	\N	actor,writer,director	tt0071315,tt0067756,tt0083959,tt0074228
nm0006957	Melanie Allen	\N	\N	production_designer,art_department,art_director	tt7608238,tt4853930,tt0224503,tt6538034
nm0006958	Jonathan Tucker	1982	\N	actor,soundtrack,archive_footage	tt0963794,tt0159097,tt0324216,tt0340163
nm0006959	Dan Ireland	1949	2016	producer,director,actor	tt0118163,tt0421229,tt0120878,tt0285879
nm0006960	John Madden	1949	\N	director,producer,writer	tt0138097,tt1412386,tt0377107,tt4540710
nm0006961	Helge Hesse	1963	\N	director,writer,actor	tt0270535,tt0146264,tt1308439
nm0006962	Eros Ramazzotti	1963	\N	composer,actor,writer	tt0110737,tt0105097,tt0102748,tt0122385
nm0006963	Hugo Heinen	1944	\N	writer,script_department,producer	tt4482938,tt0414200,tt0198266,tt7209004
nm0006964	Jean Sobieski	1937	\N	actor	tt0061230,tt0170938,tt0313928,tt0065148
nm0006965	Hervé Ruet	\N	\N	producer,assistant_director,production_manager	tt1675434,tt22813264,tt15768848,tt8655470
nm0006966	Oliver Zenglein	1970	\N	assistant_director,camera_department,transportation_department	tt0114019,tt0269356,tt0114947,tt0291943
nm0006967	Jeanne Moutard	\N	\N	editor,editorial_department,sound_department	tt0310203,tt0102930,tt0117394,tt1209371
nm0006968	Rachel Aberly	\N	\N	miscellaneous	tt0181875,tt0117509,tt1554091
nm0006969	Elizabeth Banks	1974	\N	actress,producer,director	tt1392170,tt1951265,tt0903657,tt1490017
nm0006970	Patricia Belcher	1954	\N	actress,producer,soundtrack	tt0263488,tt0099582,tt1022603,tt0785007
nm0006971	Irene Blecua	\N	\N	editor,editorial_department,assistant_director	tt1648216,tt6792282,tt0314412,tt0430576
nm0006972	Maike Both	\N	\N	art_department,set_decorator,miscellaneous	tt0120780,tt0120008,tt0110950,tt0112883
nm0006973	William Martin Brennan	1956	\N	actor,writer,producer	tt0093011,tt0118702,tt0202470,tt0267455
nm0006974	Etienne Braun	\N	\N	camera_department,actor	tt0280609,tt0379889,tt0780516,tt0131646
nm0006975	Zane Buzby	\N	\N	director,actress,writer	tt0078766,tt0088258,tt0078446,tt0103535
nm0006976	Marc Cass	\N	\N	stunts,actor,assistant_director	tt9814116,tt1298644,tt1830379,tt0241527
nm0006977	Chris Connolly	\N	\N	actor	tt0053510,tt0092066
nm0006978	Susan Damante	\N	\N	actress,writer,producer	tt0077587,tt11151558,tt1466074,tt0068334
nm0006979	Jordan Deitcher	\N	\N	director,actor,writer	tt0165933,tt0165877,tt0081269,tt0076222
nm0006980	Craig Denton	1971	\N	producer	tt0265944
nm0006981	David Elliott	1959	\N	actor,art_department,stunts	tt0077766,tt0118771,tt0114214,tt0913354
nm0006982	Adoor Bhasi	1929	1990	actor,music_department,director	tt0268954,tt0156920,tt0076277,tt0268570
nm0006983	Scott Farrell	1956	\N	actor	tt0187838,tt0386342,tt0243116,tt1545564
nm0006984	Benjamin Feitelson	1954	\N	actor,producer,writer	tt0078346,tt12177902,tt1308736,tt0365686
nm0006985	Lou Felder	1931	\N	actor	tt0095631,tt0089560,tt0315327,tt0110622
nm0006986	Mary Feuer	\N	\N	writer,producer,director	tt1403034,tt0247425,tt0414731,tt0257106
nm0006987	Jsu Garcia	1963	\N	actor,producer,director	tt0087800,tt0480239,tt0233469,tt0443650
nm0006988	T.J. Glenn	1955	\N	art_department,actor,stunts	tt2002907,tt0772175,tt0138640,tt1156102
nm0006989	Janet Gratz	\N	\N	editorial_department,sound_department,editor	tt0204993,tt0182587,tt0103671,tt0115270
nm0006990	Daniel A. Greenwald	1971	\N	sound_department,camera_department,miscellaneous	tt1568346,tt0897361,tt2109184,tt0844441
nm0006991	Jason Henderson	1971	\N	writer,actor	tt1640562,tt1219833,tt0252338,tt0313919
nm0006992	Samuel C. Jephcott	1944	\N	actor,production_manager,producer	tt2258261,tt2018069,tt1798233,tt0146298
nm0006993	Alex J. Johnson	1977	\N	miscellaneous,editor,producer	tt1568288,tt2359031,tt0271259,tt0397387
nm0006994	Pascal Judelewicz	1955	\N	producer,actor,assistant_director	tt0243135,tt2208216,tt0100177,tt0117023
nm0006995	Zameret Kleiman	\N	\N	casting_department,casting_director	tt0489099,tt2120120,tt1663662,tt0800080
nm0006996	Paul Lazarus	\N	\N	director,producer,writer	tt0177215,tt3242934,tt0098780,tt7315982
nm0006997	Peter M. Lenkov	1964	\N	producer,writer,miscellaneous	tt0790736,tt0106697,tt0285331,tt1399045
nm0006998	Todd Lewis	\N	\N	production_manager,producer,miscellaneous	tt0119925,tt1860357,tt0376994,tt1502712
nm0006999	Trygve Lode	1963	\N	actor,special_effects,director	tt1507364,tt0188575,tt3184212,tt0451208
nm0007000	Jason Logan	\N	\N	actor,stunts,miscellaneous	tt0389564,tt0103939,tt0094752,tt0867161
nm0007001	Lisa Meyers	\N	\N	make_up_department	tt0253754,tt0120844,tt1637688,tt2906216
nm0007002	Mark Jeffrey Miller	\N	\N	actor,writer,archive_footage	tt0187393,tt1951266,tt0159365,tt0095647
nm0007003	James Moss	\N	\N	camera_department,cinematographer	tt0485301,tt6038584,tt2321596,tt0090521
nm0007004	Tricia Mulgrew	\N	\N	visual_effects,producer,transportation_department	tt0409459,tt1477834,tt5834426,tt0120461
nm0007005	Aaron Muszalski	1970	\N	visual_effects,art_department,miscellaneous	tt0177971,tt0121765,tt0120915,tt0183523
nm0007006	Lance Peters	1934	2007	writer,actor,producer	tt0259807,tt0107046,tt0293708,tt0068114
nm0007007	Annika Peterson	1972	\N	actress,archive_footage	tt0756683,tt0309870,tt1151410,tt1141637
nm0007008	David Petrarca	\N	\N	director,producer	tt0944947,tt5743796,tt0421030,tt0844441
nm0007009	Ian Quiles	\N	\N	art_department,actor,miscellaneous	tt0265086,tt0212985,tt0104797,tt0112688
nm0007010	Judi Rosner	1943	2004	miscellaneous,editorial_department	tt0104691,tt0091209,tt0110725,tt0101410
nm0007011	Robert Salerno	\N	\N	director,writer,producer	tt0315733,tt1315981,tt4550098,tt29268110
nm0007012	Twinkle Khanna	1973	\N	actress,producer	tt7218518,tt0112459,tt0232079,tt0250452
nm0007013	André Szöts	1937	2006	producer,director,actor	tt0099334,tt0150992,tt0079449,tt0240805
nm0007014	Anne-Dominique Toussaint	1959	\N	producer,actress	tt1314237,tt8267604,tt0825236,tt0243135
nm0007015	Andrew Turman	\N	\N	camera_department,cinematographer,visual_effects	tt0181689,tt1951265,tt1951266,tt4881806
nm0007016	Rogers Turrentine	1939	\N	writer,director,editor	tt0071042,tt0140735,tt0086734,tt0080240
nm0007017	Marcus Wall	\N	\N	producer,actor,assistant_director	tt0244664,tt0244516,tt0244747
nm0007018	Karimah Westbrook	\N	\N	actress,producer,director	tt7414406,tt0491175,tt0376136,tt1152397
nm0007020	Russell Williams II	\N	\N	sound_department,producer,actor	tt0097351,tt0118528,tt0139654
nm0007021	Wendy Woodbury	\N	\N	director,writer	tt0233929
nm0007022	Barbara von Wrangell	\N	\N	production_manager,producer,miscellaneous	tt0286499,tt0093191,tt0101458,tt0105391
nm0007023	José Luis López Vázquez	1922	2009	actor,assistant_director,costume_designer	tt0055763,tt0067425,tt0062113,tt0064105
nm0007024	Steffen Schmölzer	1963	\N	production_manager,location_management,transportation_department	tt0110021,tt0806910,tt0278815,tt0119072
nm0007025	Yann Delpuech	\N	\N	sound_department,editorial_department,miscellaneous	tt0248667,tt12908110,tt0453562,tt0431197
nm0007026	Paul Maged	\N	\N	actor,director,writer	tt1808441,tt0194710
nm0007027	Murray Sestak	\N	\N	producer,assistant_director,actor	tt0176646,tt0313726,tt0116637,tt2199721
nm0007028	Jeffrey Gurian	\N	\N	writer,actor,producer	tt1981538,tt14452200,tt2559456,tt6241158
nm0007029	Trey Callaway	\N	\N	producer,writer,actor	tt0395843,tt2070791,tt0130018,tt4085584
nm0007030	Dean Thompson	\N	\N	camera_department	tt22687790,tt12789558,tt2382320,tt2049403
nm0007031	Jennifer Robinson	\N	\N	miscellaneous,editorial_department	tt0110849,tt0114041,tt0120118
nm0007032	Matthias Pees	\N	\N	writer,script_department,actor	tt10037452,tt0270327,tt0207080
nm0007033	Harvey Silver	1976	2012	actor,writer	tt0263386,tt0133046,tt0119500,tt0398577
nm0007034	Arlindo Vicente	\N	\N	art_department,actor,production_designer	tt0292506,tt0219653,tt0102511,tt0279493
nm0007035	Dafydd Hobson	1951	\N	cinematographer,camera_department	tt0115387,tt0366777,tt0284837,tt0213344
nm0007036	Michael Shugrue	\N	\N	art_department,camera_department,producer	tt0120844,tt0131369,tt0120789,tt0099253
nm0007037	John Bailey	1942	2023	cinematographer,camera_department,miscellaneous	tt0107206,tt0080365,tt0102864,tt0218817
nm0007038	Matthew A. Petrosky	\N	\N	camera_department,cinematographer,producer	tt9777666,tt10872600,tt9114286,tt20969586
nm0007039	Lori Grabowski	\N	\N	script_department,miscellaneous	tt1825683,tt7766378,tt4154756,tt3896198
nm0007040	Craig Williams	1959	\N	art_department,miscellaneous,actor	tt4139588,tt7315484,tt0848557,tt2234222
nm0007041	Tom Hocking	\N	\N	visual_effects,art_department,camera_department	tt1375666,tt6723592,tt1478964,tt0831387
nm0007042	Herbert Lom	1917	2012	actor,miscellaneous,soundtrack	tt0085407,tt0075066,tt0058586,tt0072081
nm0007043	Alban Berg	1885	1935	music_department,writer,composer	tt0110632,tt1019690,tt0098327,tt4952196
nm0007044	Nicole Lucas Haimes	\N	\N	director,producer,writer	tt4819510,tt10181606,tt13496830,tt32633891
nm0007045	Scott Wiper	1970	\N	writer,director,actor	tt9441638,tt1366365,tt0443473,tt0213149
nm0007046	Joe di Gennaro	1955	\N	cinematographer,camera_department,producer	tt1343387,tt0385988,tt4523222,tt1442372
nm0007047	Mary Margaret Robinson	\N	\N	actress,producer,director	tt0272196,tt0287123,tt0076644,tt0162854
nm0007048	Christopher Boone	\N	\N	director,producer,writer	tt12028614,tt1291556,tt4020272,tt1922651
nm0007049	Garth Inns	1943	2021	special_effects,actor,visual_effects	tt0133152,tt0089092,tt0458339,tt0311429
nm0007050	Sergei Davidoff	1972	\N	producer,director,writer	tt0271217,tt14063560,tt0272584,tt0270452
nm0007051	James Bulliard	1978	\N	actor	tt0320981,tt0207302,tt0123816,tt0207919
nm0007052	Nick Quinn	\N	\N	director,writer,actor	tt38594146,tt2375791,tt0270616,tt0102347
nm0007053	Sultan Pepper	1962	2009	writer,miscellaneous,producer	tt0103360,tt0112056,tt0284787,tt0247865
nm0007054	Gregg Smrz	\N	\N	stunts,assistant_director,director	tt2381249,tt1229238,tt1013743,tt8106534
nm0007055	Lawrence Taub	\N	\N	producer,miscellaneous	tt28352066,tt1334109,tt0085809,tt2936174
nm0007056	Peter L. Stein	\N	\N	producer,writer,director	tt15527914,tt0221428,tt0200898,tt0272413
nm0007057	Michael A. Jones	1939	\N	camera_department,producer,cinematographer	tt0115857,tt0106697,tt0115624,tt0112401
nm0007058	Russ Caldwell	\N	\N	camera_department,cinematographer,miscellaneous	tt0489099,tt0119731,tt0165854,tt0115783
nm0007059	Rob B. Campbell	\N	\N	producer,actor,writer	tt0262396,tt3480942
nm0007060	Penny Jewkes	\N	\N	producer,miscellaneous,actress	tt0141109,tt0163929,tt2191991,tt8884376
nm0007061	Leslie Stevens	\N	\N	actress	tt4002210,tt0844441,tt1879066,tt1306961
nm0007062	Paul Woodson	1972	\N	actor,miscellaneous	tt0177513,tt11373858,tt10078838,tt16742916
nm0007063	James Anthony Cotton	\N	\N	actor,composer,production_manager	tt0860837,tt0294870,tt0129290,tt0117333
nm0007064	Steven Zirnkilton	1958	\N	actor,archive_footage	tt0406429,tt0134067,tt4778486,tt15264192
nm0007065	David Blitstein	1949	\N	special_effects,writer,miscellaneous	tt0096256,tt0407304,tt0482571,tt0949731
nm0007066	Nanouk Leopold	1968	\N	director,writer,script_department	tt0428608,tt2167715,tt1529240,tt0824422
nm0007067	Louis G. Friedman	\N	\N	producer,production_manager,assistant_director	tt0120338,tt0458525,tt1091191,tt0086190
nm0007068	Jorge Simonet	1966	\N	camera_department,cinematographer,director	tt0272899,tt0244057,tt0455957,tt6080406
nm0007069	Pierre Richard	1934	\N	actor,writer,director	tt0082183,tt0117050,tt0072080,tt0068655
nm0007070	David Peters	1969	\N	producer,production_manager	tt1117385,tt0273982,tt0184457,tt0106216
nm0007071	Dennis Bots	1974	\N	director,assistant_director,writer	tt1800372,tt9407558,tt2371158,tt1581622
nm0007072	Katherine Haber	1944	\N	miscellaneous,producer,actress	tt0083658,tt0068638,tt0067800,tt0074695
nm0007073	Michael Barlow	\N	\N	miscellaneous,producer	tt0082934,tt0072990,tt0072742
nm0007074	Jonathan Bernstein	1946	2023	producer,production_manager,editorial_department	tt0068555,tt0140785,tt0099543,tt0094462
nm0007075	Jon Bernstein	\N	\N	writer,producer,miscellaneous	tt0396555,tt0210567,tt0165494,tt5097384
nm0007076	James Bolt	\N	\N	actor	tt0083929,tt0898895,tt0100705,tt0094701
nm0007077	Jamie Brown	1945	\N	producer,writer,production_manager	tt0089409,tt0101230,tt1461312,tt0187995
nm0007078	Julian Bucknall	\N	\N	camera_department,actor,miscellaneous	tt3371366,tt0458339,tt2094766,tt0311429
nm0007079	James Greer	1971	\N	writer,director,producer	tt7153766,tt14201728,tt26470786,tt15975334
nm0007080	Jamie Lauren	1983	2015	actress,producer	tt0118437,tt0115083,tt0251065,tt0200337
nm0007081	Jon Shapiro	\N	\N	producer,miscellaneous	tt1702427,tt0110989,tt0892375,tt0238015
nm0007082	John Stockwell	1961	\N	actor,director,writer	tt0092099,tt0085333,tt0300532,tt0378109
nm0007083	Mario Avila	1974	\N	director,producer,writer	tt0187608,tt0269654,tt0160472,tt0296720
nm0007084	Paul Beahm	1962	2018	stunts,actor	tt0113855,tt0104691,tt0118688,tt0118708
nm0007085	Lynn-Maree Danzey	\N	\N	script_department,director,miscellaneous	tt0157632,tt26047818,tt0110005,tt0107822
nm0007086	Mark Dawson	1960	\N	editorial_department,miscellaneous,actor	tt0102565,tt0298744,tt0385503,tt0104629
nm0007087	Mark Gingras	\N	\N	sound_department,producer,editorial_department	tt0120907,tt0896872,tt1582507,tt4680182
nm0007088	Philip J. Jaffe	\N	\N	camera_department,producer	tt0814314,tt0308152,tt0367882,tt1623205
nm0007089	Pei Zhu	\N	\N	visual_effects	tt0245803,tt0132245,tt0331632,tt0120794
nm0007090	Mark O'Connor	1963	\N	actor,composer	tt0221691,tt0120316,tt0116330
nm0007091	Gabe Sachs	\N	\N	writer,producer,director	tt2477230,tt1196141,tt0193676,tt0411004
nm0007092	Matthew G. Taylor	1973	\N	actor,stunts,archive_footage	tt7949218,tt0318627,tt0165710,tt0352248
nm0007093	Michael Wenning	1965	\N	director,producer,writer	tt2427220,tt0277666,tt1540108,tt6812092
nm0007094	Dharma Rao Tapi	1887	1973	writer	tt0207000,tt0154747,tt0259415,tt0279312
nm0007095	Tim Stevenson	\N	\N	art_director,assistant_director,location_management	tt0421082,tt3021686,tt0318390,tt0191996
nm0007096	Wendey Stanzler	\N	\N	director,editor,producer	tt0159206,tt11875316,tt6453190,tt0098213
nm0007097	Eric Abrahamson	\N	\N	producer,assistant_director,miscellaneous	tt0286716,tt0209475,tt0189810,tt0111517
nm0007098	Paul Hubschmid	1917	2001	actor,archive_footage	tt0041149,tt0045546,tt0052295,tt0051235
nm0007099	Robert Angst	\N	\N	camera_department,cinematographer,editorial_department	tt2161031,tt0261706,tt11600936,tt0104295
nm0007100	Bruno Bertoli	1962	\N	composer,music_department,soundtrack	tt1179034,tt0372532,tt1416801,tt3147312
nm0007101	Marsha Bozeman	\N	\N	costume_department	tt0120647,tt0113277,tt0114369,tt0101410
nm0007102	Tabu	1970	\N	actress,music_department,archive_footage	tt4430212,tt8108198,tt3390572,tt0454876
nm0007103	Mark Brandon	\N	\N	actor,producer,writer	tt5420376,tt3107288,tt0460681,tt1740299
nm0007104	Helen P. Butler	1954	\N	costume_department,costume_designer	tt0091203,tt0087843,tt0105937,tt0089003
nm0007105	Al Campbell	\N	\N	camera_department	tt0184858,tt0425430,tt0175142,tt0414982
nm0007106	Shakti Kapoor	1952	\N	actor,music_department,soundtrack	tt0109117,tt13751694,tt0497915,tt0110942
nm0007107	Urmila Matondkar	1974	\N	actress	tt0341266,tt0352314,tt0281102,tt0195231
nm0007108	Robin Dorian	\N	\N	actress,director,producer	tt0260924,tt0112112,tt0204698,tt0169376
nm0007109	Susie Figgis	1948	\N	casting_director,casting_department	tt1935859,tt1014759,tt0241527,tt0119164
nm0007110	Scott Fivelson	\N	\N	writer,producer,music_department	tt0140806,tt1907688,tt2511254
nm0007111	Ann Forry	\N	\N	director,casting_director,producer	tt26764999,tt20849512,tt2709446,tt33353878
nm0007112	Ariana Grace	\N	\N	actress	tt0331262,tt1666623
nm0007113	Nana Patekar	1951	\N	actor,music_department,director	tt0110280,tt0488798,tt0102701,tt0476884
nm0007114	Sonali Bendre	1975	\N	actress,archive_footage	tt0200087,tt20319332,tt0255212,tt0347304
nm0007115	Amy Hathaway	\N	\N	actress	tt0109446,tt0115956,tt0356910,tt0097670
nm0007116	Kelvin Humenny	1968	\N	art_director,art_department,production_designer	tt2103281,tt1964418,tt0364343,tt0218817
nm0007117	Lou Israel	1959	\N	actor	tt14278078,tt30760240,tt3951130,tt9269456
nm0007118	Dale Jones	\N	\N	editorial_department,actor,miscellaneous	tt2304933,tt2120120,tt0382992,tt1355644
nm0007119	Ryan Keating	1973	\N	miscellaneous,actor,stunts	tt0258470,tt0337563,tt0196857,tt0338077
nm0007120	Louis Lazzara	1959	\N	make_up_department,art_department,miscellaneous	tt0120768,tt0327850,tt0120611,tt0405336
nm0007121	Jenifer Lew	\N	\N	miscellaneous,art_department	tt0120685,tt0138304,tt0187393
nm0007122	Stephen Lord	1926	2012	writer,producer,director	tt0056777,tt0044259,tt0065317,tt0052478
nm0007123	Mammootty	1951	\N	actor,producer,music_department	tt0230597,tt0097851,tt1573478,tt0270321
nm0007124	Suhasini	1961	\N	actress,writer,producer	tt0307202,tt0235617,tt0121401,tt0250761
nm0007125	Igor Martinovic	\N	\N	cinematographer,director,camera_department	tt8550800,tt3111426,tt2401256,tt1856010
nm0007126	Garry McDonald	\N	\N	composer,music_department,soundtrack	tt0240278,tt0138875,tt0441881,tt0111964
nm0007127	Keith Moon	1946	1978	actor,music_department,writer	tt0073812,tt0070788,tt0462441,tt0079766
nm0007128	Louis Morneau	\N	\N	director,assistant_director,writer	tt0117468,tt0175877,tt1987028,tt1140941
nm0007129	Trevor Morris	1970	\N	composer,writer,director	tt1846589,tt2306299,tt0758790,tt1253864
nm0007130	Andy Newcomer	\N	\N	producer,miscellaneous,editorial_department	tt0246894,tt0187738,tt0171804,tt0363307
nm0007131	Subhash Ghai	1945	\N	writer,producer,actor	tt0119861,tt0102844,tt0107311,tt0152836
nm0007132	Blaine Pate	\N	\N	actor,producer,director	tt0213149,tt0463034,tt8078960,tt0111932
nm0007133	William Rice	1931	2006	actor,director,writer	tt0379217,tt0087129,tt0224573,tt0086560
nm0007134	Farah Khan	1965	\N	miscellaneous,actress,writer	tt1024943,tt0347473,tt2461132,tt0254481
nm0007135	Brad Slaight	1964	\N	actor,writer,director	tt1266020,tt0069658,tt15326950,tt0428172
nm0007136	Michael Sloane	\N	\N	actor,writer,director	tt0268995,tt2176609,tt0331018,tt0097516
nm0007137	Laurie Stone	\N	\N	composer,music_department,actor	tt0240278,tt0138875,tt0441881,tt0111964
nm0007138	Thomas T. Taylor	\N	\N	art_director,art_department,production_designer	tt2267998,tt14914430,tt1650062,tt0478970
nm0007139	Hark Tsui	1950	\N	producer,director,writer	tt1123373,tt13462900,tt0103285,tt3950078
nm0007140	Stanley Weiser	\N	\N	writer,miscellaneous,cinematographer	tt0094291,tt1175491,tt0213668,tt0146838
nm0007141	Walter Werzowa	1960	\N	music_department,composer,sound_department	tt0181689,tt0113855,tt0120749,tt0116213
nm0007142	William Wesley	\N	\N	director,actor,writer	tt0096046,tt0215135,tt1997642,tt0094512
nm0007143	Ganesh Hegde	\N	\N	camera_department,miscellaneous,actor	tt0254481,tt0169102,tt1562871,tt0347473
nm0007144	Santosh Sivan	1964	\N	cinematographer,director,producer	tt0249371,tt0293385,tt0169302,tt0295294
nm0007145	Lee Ranaldo	1956	\N	composer,actor,miscellaneous	tt1659337,tt1023111,tt0368794,tt0119900
nm0007146	Laura Harbin	\N	\N	producer,miscellaneous,writer	tt9111220,tt2374744,tt5023972,tt1091909
nm0007147	Dev Anand	1923	2011	actor,producer,director	tt0053980,tt0051806,tt0066241,tt0059246
nm0007148	Jochen Retter	1970	\N	editor,editorial_department,camera_department	tt0275421,tt0384369,tt2718442,tt1709122
nm0007149	Martin Müller	1947	\N	sound_department,assistant_director,actor	tt0301357,tt0215750,tt0252299,tt1023114
nm0007150	Charles Siebert	1938	2022	actor,director	tt0078718,tt0078704,tt0077355,tt0115320
nm0007151	John Paul Young	1956	\N	actor,writer,music_department	tt0079549,tt0157465,tt0277986,tt0117533
nm0007152	Gary Calamar	\N	\N	music_department,actor,composer	tt0844441,tt0773262,tt0412142,tt1045772
nm0007153	Vianney Aube	\N	\N	sound_department,composer	tt0112682,tt4475036,tt1309388,tt1697646
nm0007154	Stephen Marcus	1962	\N	actor,writer,director	tt0120735,tt1186367,tt0388980,tt0434124
nm0007155	Lynda Boyd	\N	\N	actress,soundtrack,writer	tt9077530,tt0463985,tt0454945,tt1297754
nm0007156	Ortwin Freyermuth	\N	\N	miscellaneous,producer,legal	tt0106519,tt0331811,tt0082096,tt1272878
nm0007157	Darin Spillman	\N	\N	producer,miscellaneous,actor	tt0120084,tt1393000,tt0133987,tt0120424
nm0007158	Niels Mueller	1961	\N	writer,producer,director	tt0364961,tt5157426,tt1326270,tt1592254
nm0007159	David S. Williger	\N	\N	producer,writer,miscellaneous	tt0083399,tt0090533,tt0096674,tt0170968
nm0007160	Kate Jones	\N	\N	miscellaneous,assistant_director	tt0120915,tt0162661,tt0280949,tt0206917
nm0007161	S.V. Krishna Reddy	\N	\N	director,writer,composer	tt1579734,tt0268003,tt2006721,tt0267790
nm0007162	Hélène Rémy	1932	\N	actress	tt0054423,tt0046310,tt0041137,tt0047418
nm0007163	Ilya Salkind	1947	\N	producer,writer,actor	tt0078346,tt0081573,tt0086393,tt0072281
nm0007164	Gaby Weismann	1963	\N	camera_department,transportation_department,miscellaneous	tt0203408,tt0214871,tt0367478,tt0099312
nm0007165	Claire Folger	1963	\N	camera_department,miscellaneous,actress	tt7959026,tt1024648,tt8946378,tt10999120
nm0007166	Oksana Timonishina	1959	\N	production_designer,actress,art_department	tt8372328,tt0179186,tt0307338,tt0104481
nm0007167	John Ashker	1964	\N	stunts,actor	tt0329691,tt0181689,tt0800080,tt1190080
nm0007168	José Carreras	1946	\N	actor,music_department,soundtrack	tt0200469,tt0094777,tt0089933,tt0110737
nm0007169	Scott Ramirez	\N	\N	actor,costume_department,make_up_department	tt0800369,tt0101797,tt0186221,tt0196849
nm0007170	Gayle Franklin	1953	2014	costume_department,miscellaneous	tt0113481,tt0119731,tt0211443,tt0144117
nm0007171	Dan Molina	\N	\N	editor,sound_department,actor	tt0371606,tt0090633,tt0110357,tt0396555
nm0007172	Deverin Karol	\N	\N	casting_department,miscellaneous,writer	tt0330333,tt2281067,tt0184457,tt0102592
nm0007173	Rabindranath Tagore	1861	1941	writer,music_department,composer	tt28650534,tt0252018,tt0057935,tt0259458
nm0007174	Jim Filippone	1957	\N	miscellaneous,camera_department,actor	tt0120667,tt0376994,tt0216216,tt0970416
nm0007175	Alain Dahan	1942	1992	producer,production_manager,assistant_director	tt0091497,tt0072263,tt0101318,tt0073198
nm0007176	Alain Dahan	\N	\N	actor,location_management,camera_department	tt1877832,tt0364045,tt11161474,tt0110027
nm0007177	Patsy Cline	1932	1963	music_artist,actress,music_department	tt2094766,tt0110632,tt4046784,tt0086979
nm0007178	Walter Lassally	1926	2017	cinematographer,camera_department,director	tt0057831,tt0084058,tt2209418,tt0086992
nm0007179	David Stern	\N	\N	director,producer,writer	tt0802932,tt0833877,tt1295066,tt1524997
nm0007180	Lutz Konermann	1958	\N	director,cinematographer,writer	tt0089976,tt0083593,tt3276852,tt1245772
nm0007181	Yash Chopra	1932	2012	producer,director,miscellaneous	tt0420332,tt0118983,tt0109555,tt2176013
nm0007182	Alex Cox	1954	\N	actor,director,writer	tt0087995,tt0091954,tt0488604,tt0943982
nm0007183	Ian Richardson	1934	2007	actor,soundtrack,archive_footage	tt0120681,tt0088846,tt0098825,tt0118929
nm0007184	Tony Barbieri	1963	\N	writer,producer,actor	tt0320037,tt0268077,tt7235270,tt5850440
nm0007185	Cory Rizos	\N	\N	sound_department,music_department,editor	tt22896760,tt5092380,tt0194627,tt5816564
nm0007186	Arthur Miller	1915	2005	writer,actor,miscellaneous	tt0115988,tt0081344,tt0187806,tt0055184
nm0007187	Subba Rao B.A.	1915	1987	director,producer,writer	tt0207000,tt0276824,tt0327109,tt0279729
nm0007188	Marco Sanchez	\N	\N	actor,producer,writer	tt1408101,tt1650062,tt0265662,tt0106126
nm0007189	Kenneth A. Carlson	\N	\N	producer,director,writer	tt6255478,tt0270971,tt0094415,tt0292816
nm0007190	Jonathan Bar-Giora	1962	\N	composer,music_department,actor	tt15027652,tt27604028,tt0268696,tt0374070
nm0007191	Robert J. Dugdale	1959	\N	art_department	tt1211837,tt3332064,tt1959563,tt0765443
nm0007192	Peter S. Elliot	1962	\N	editor,editorial_department,visual_effects	tt1190080,tt0319262,tt0113492,tt0120461
nm0007193	Richie Keen	\N	\N	director,producer,actor	tt0472954,tt11379026,tt14129388,tt3401882
nm0007194	Chris Johnston	\N	\N	actor	tt0112760,tt0109626,tt0094499,tt0115102
nm0007195	William Perkins	\N	\N	production_manager,producer,camera_department	tt6053438,tt7026270
nm0007196	Jason Taylor	1979	\N	producer,miscellaneous,executive	tt1877832,tt3385516,tt1270798,tt1351685
nm0007197	Fabiana Udenio	\N	\N	actress,miscellaneous,archive_footage	tt0118655,tt0094072,tt3566726,tt13064902
nm0007198	Kate Montgomery	\N	\N	producer,writer,director	tt0221074,tt0283337
nm0007199	Carolyn Greco	\N	\N	costume_department,costume_designer,art_department	tt0112950,tt0111686,tt0105585,tt0104743
nm0007200	Charlie Brewer	\N	\N	stunts,assistant_director,actor	tt0948470,tt0115759,tt0171580,tt0319262
nm0007201	Wouter Jansen	1972	\N	editor,editorial_department,sound_department	tt10504898,tt8974368,tt8221738,tt1438539
nm0007202	Michael C. Cuddy	\N	\N	producer,production_manager,miscellaneous	tt4532038,tt21096576,tt11951276,tt3859304
nm0007203	Frank Ellis	1942	2020	actor	tt0486655,tt0251135,tt0077055,tt0084987
nm0007204	David Devine	\N	\N	producer,director,writer	tt0205902,tt0176102,tt0379708,tt0214661
nm0007205	Keith Collea	\N	\N	camera_department,producer,miscellaneous	tt0438052,tt1890453,tt0271367,tt0120685
nm0007206	Stephen David Brooks	\N	\N	director,writer,editor	tt15573608,tt30133885,tt0113762,tt3333980
nm0007207	Hans Unterkircher	1895	1971	actor,director,production_manager	tt0015064,tt0032541,tt0041121,tt0923914
nm0007208	Lane Raichert	\N	\N	writer,miscellaneous,art_department	tt0094531,tt0115345,tt0108903,tt0098763
nm0007209	Stephen Stept	\N	\N	producer,writer,director	tt0364151,tt0094416,tt0247103,tt0101666
nm0007210	Saul Rubinek	1948	\N	actor,director,writer	tt0105695,tt0108399,tt6412452,tt7456722
nm0007211	Liza Del Mundo	1975	\N	actress,miscellaneous,archive_footage	tt0383718,tt0118531,tt1716777,tt5109280
nm0007212	Justin Caine Burnett	1973	\N	composer,music_department,miscellaneous	tt22050754,tt0455944,tt4126476,tt15574312
nm0007213	Bob Chefalas	\N	\N	sound_department	tt11280740,tt0368008,tt3532216,tt0806203
nm0007214	Frank Albertson	1909	1964	actor,soundtrack,archive_footage	tt0054215,tt0038650,tt0033879,tt0031067
nm0007215	King Baggot	1879	1948	actor,director,writer	tt0325656,tt0325166,tt0003022,tt0013288
nm0007216	Nancy Carroll	1903	1965	actress,soundtrack,archive_footage	tt0019798,tt0024222,tt0022433,tt0020823
nm0007217	Jack Carson	1910	1963	actor,soundtrack,archive_footage	tt0051459,tt0037913,tt0036613,tt0040745
nm0007218	Tom Conway	1904	1967	actor,soundtrack,archive_footage	tt0034587,tt0036027,tt0054415,tt0040669
nm0007219	Donald Cook	1901	1961	actor,soundtrack,archive_footage	tt0022286,tt0028249,tt0023775,tt0027028
nm0007220	Ricardo Cortez	1900	1977	actor,director,soundtrack	tt0022111,tt0017480,tt0026007,tt0023545
nm0007221	Maurice Costello	1877	1950	actor,director,writer	tt0005695,tt0460155,tt0483687,tt0006554
nm0007222	Paul Douglas	1907	1959	actor,soundtrack,archive_footage	tt0044502,tt0043560,tt0046963,tt0041587
nm0007223	James Dunn	1901	1967	actor,soundtrack,archive_footage	tt0038190,tt0021635,tt0022241,tt0024914
nm0007224	Eleanor Powell	1912	1982	actress,miscellaneous,soundtrack	tt0031442,tt0027387,tt0032284,tt0033803
nm0007225	Jane Powell	1929	2021	actress,soundtrack,archive_footage	tt0040556,tt0047472,tt0040271,tt0038606
nm0007226	Charles Deenen	1970	\N	sound_department,music_department,composer	tt4495098,tt0232500,tt0800080,tt0970416
nm0007227	Matthew Grimaldi	1966	\N	producer,actor,miscellaneous	tt0246500,tt0122308,tt6032328,tt0105431
nm0007228	Fardeen Khan	1972	\N	actor,soundtrack,archive_footage	tt0451833,tt0210920,tt27056012,tt0422236
nm0007229	Hertha Thiele	1908	1984	actress	tt0022183,tt0024226,tt0023981,tt0023104
nm0007230	Alan Hines	\N	\N	writer,producer	tt0094020,tt0772200,tt0282482,tt0140690
nm0007231	Fabio	1959	\N	actor,miscellaneous,archive_footage	tt0258470,tt1978428,tt0242423,tt0196229
nm0007232	Jack Gwillim	1909	2001	actor,archive_footage	tt0057197,tt0056172,tt0066206,tt0082186
nm0007233	Bryce Zabel	\N	\N	writer,producer,miscellaneous	tt0115151,tt0119707,tt0230011,tt0802821
nm0007234	Wolfgang Preiss	1910	2002	actor,soundtrack,archive_footage	tt0075784,tt0077269,tt0047790,tt0059825
nm0007235	Ilaria Borrelli	1968	\N	actress,director,writer	tt15482002,tt0118799,tt1930499,tt30825323
nm0007236	Claude Waringo	\N	\N	producer,director,writer	tt2370034,tt3208026,tt1172230,tt0367878
nm0007237	Leonor Varela	1972	\N	actress,producer,archive_footage	tt0187738,tt1767354,tt0236784,tt0473360
nm0007238	Leo Hurwitz	1909	1991	director,producer,writer	tt0469835,tt0134616,tt0035112,tt12363728
nm0007239	Henry Cronjager	1877	1967	cinematographer	tt0011632,tt0017227,tt0013590,tt0015335
nm0007243	Antonio 'El de Chipiona'	\N	\N	\N	tt0122520
nm0007244	Félix 'El Gato'	\N	\N	actor	tt0107799,tt4650122,tt4389732,tt0375481
nm0007245	'El Guisa'	\N	\N	actor,miscellaneous	tt0056555
nm0007246	Janny 'el Portugues'	\N	\N	actor	tt0245842
nm0007247	'El Viti'	\N	\N	actor	tt0056555
nm0007248	Tony 'La Chispa'	\N	\N	actor	tt0283975,tt0378723,tt0260511,tt0922520
nm0007249	'La Mueque'	\N	\N	actress	tt0056555
nm0007250	Moose Pagan	\N	\N	animation_department,miscellaneous,art_department	tt0262147,tt11452300,tt11452328,tt0169414
nm0007251	'Morita'	\N	\N	actor	tt0056555
nm0007252	'Pucherete'	\N	\N	actor,music_department	tt0056555,tt0457884
nm0007253	Pollino 'Romero'	\N	\N	actor	tt0050368
nm0007255	Maarten 't Hart	1944	\N	writer,actor,editor	tt0097687,tt0393354,tt0083300,tt22091796
nm0007256	Hilda 't Seyen	1895	1984	actress	tt0221405
nm0007257	Izzy 'The Religious Nut'	\N	\N	\N	tt0111522
nm0007259	Fred Zero Quatro	1965	\N	composer,actor,soundtrack	tt0118674,tt0333074,tt0333202,tt11062010
nm0007260	Sharon 10X	\N	\N	\N	tt0094416
nm0007261	Angel 11:11	\N	\N	actor,writer,composer	tt0196229,tt1712053,tt10915418,tt0268992
nm0007262	Shaggy 2 Dope	1974	\N	actor,writer,soundtrack	tt1261046,tt0193007,tt1380784,tt0113043
nm0007263	2 Live Crew	\N	\N	writer,actor,composer	tt0102526,tt1596350,tt0204946,tt0486822
nm0007264	La 25c Piste	\N	\N	composer	tt0112941
nm0007265	Benjamin 2X	1932	2005	\N	tt0108089,tt0094416
nm0007266	4. Stock	\N	\N	composer	tt0110024,tt0768210,tt1729181,tt0182304
nm0007267	Colt 45	1963	\N	actress,archive_footage	tt0270859,tt0297026,tt0229285,tt0465256
nm0007269	Mick 5	\N	\N	actor	tt0084511
nm0007270	James 52X	\N	\N	archive_footage	\N
nm0007271	Lucky 7	\N	\N	\N	tt0192069,tt0421356
nm0007273	Mrs. A'Costa	\N	\N	actress	tt0010465
nm0007274	Michele A'Court	1961	\N	actress,writer,miscellaneous	tt0098911,tt1386958,tt0169478,tt7094176
nm0007275	Susan A'Court	\N	\N	script_department,production_manager,writer	tt0083435,tt0202022,tt0088208,tt0094429
nm0007276	Legaren à Hiller	1880	1969	art_director,director,producer	tt0013250,tt0013068,tt0011947,tt0011956
nm0007277	Yussuf Abed A'Nur	\N	\N	actor	tt0087699
nm0007278	Hong Me A	\N	\N	animation_department	tt0263759
nm0007279	Isabelle A	1975	\N	music_department,archive_footage	tt0149534,tt1677200,tt14174540,tt0239196
nm0007281	Lady Antoinette	\N	\N	actress,archive_footage	tt0274145,tt0123551,tt0148885,tt0133444
nm0007283	Ah Nian	\N	\N	director,writer	tt0177624,tt38524878,tt0278489,tt8693492
nm0007284	A-Hito	\N	\N	actor	tt0125931
nm0007285	A-Ji	\N	\N	composer	tt0275902
nm0007286	A-Man	\N	\N	\N	tt0127499
nm0007287	Robert Nawej A-Muhong	\N	\N	miscellaneous	tt0117346
nm0007289	A-Trak	1982	\N	actor,composer,soundtrack	tt5164432,tt2072233,tt1636826,tt2294449
nm0007291	Chad A.	\N	\N	camera_department	tt0270041
nm0007292	Dominique A.	1968	\N	composer,actor,writer	tt0296698,tt12591668,tt0347474,tt0235214
nm0007293	James A.	\N	\N	producer,miscellaneous,director	tt0399491,tt0259404,tt0306793,tt0291812
nm0007294	Prasad A.	\N	\N	actor	tt0271710
nm0007295	Shankar Reddy A.	\N	\N	producer	tt0206877,tt0254213,tt0266325
nm0007296	A.G.	\N	\N	actor,soundtrack	tt0105885,tt0108560,tt0098830
nm0007297	Raja A.M.	\N	\N	music_department,composer,actor	tt0045467,tt0214251,tt0259724,tt0156666
nm0007298	A.P. Komala	1934	\N	music_department,soundtrack	tt0262281,tt0323987,tt1411912,tt0156666
nm0007299	Giri A.S.	\N	\N	actor	tt0267004
nm0007300	Subba Rao A.V. Jr.	\N	\N	actor	tt0256406,tt0290462
nm0007301	Subba Rao A.V.	\N	\N	actor,producer	tt0830653,tt1408950,tt5420896,tt28565136
nm0007302	Brynjar Aa	1960	\N	actor,writer	tt0155476,tt0491486
nm0007303	Annika Åberg	\N	\N	actress	tt0093402
nm0007304	Bjørn Aabech	1936	2013	cinematographer,camera_department	tt0124781,tt15368494,tt19400544,tt14967126
nm0007305	Andreas Aabel	1911	1948	actor	tt0029958,tt0040504,tt0143899,tt0024194
nm0007306	Hauk Aabel	1869	1961	actor	tt0022946,tt0024194,tt0007620,tt0018508
nm0007307	Hauk Aabel	\N	\N	actress	tt0062937,tt0112503,tt0129110
nm0007308	Per Aabel	1902	1999	actor,director,writer	tt0143810,tt0024194,tt0143899,tt0034848
nm0007310	Palle Aabentoft	\N	\N	actor	tt0156815
nm0007311	Christen Aaberg	\N	\N	actress	tt0193218
nm0007312	Dennis Aaberg	1947	\N	actor,director,writer	tt0077235,tt14995948,tt3256630,tt21910224
nm0007313	Linus Aaberg	\N	\N	actor	tt0012043
nm0007314	Linus Aaberg	1977	\N	actor	tt0113576,tt0103421
nm0007315	Linus Aaberg	\N	\N	art_director	\N
nm0007316	Linus Aaberg	\N	\N	special_effects	\N
nm0007317	Aage Aaberge	1955	\N	producer,production_manager,miscellaneous	tt1613750,tt3300980,tt9737876,tt5715066
nm0007318	Kristian Aaby	\N	\N	actor	tt0117817
nm0007319	Finn Aabye	1935	\N	producer,production_manager,location_management	tt0056546,tt0057548,tt0124903,tt0123282
nm0007320	Alex Aach	\N	\N	camera_department,cinematographer	tt0280609,tt4005402,tt0335119,tt1130988
nm0007321	Erik Aadahl	1976	\N	sound_department,actor,composer	tt3371366,tt6644200,tt0831387,tt8332922
nm0007322	Aadil	\N	\N	actor	tt0083987,tt0411815,tt1266545,tt1886663
nm0007323	Beverly Aadland	1942	2010	actress,soundtrack,archive_footage	tt0052225,tt0052717,tt0043224,tt0170980
nm0007324	Tørres Aadland	\N	\N	actor	tt0049808,tt0054139
nm0007325	Myriam Aadli	\N	\N	actress	tt0241595
nm0007326	Annemarie Aaes	1942	\N	script_department,miscellaneous,assistant_director	tt0107151,tt0119683,tt0064631,tt0092603
nm0007327	Erik Aaes	1899	1966	production_designer,art_director,set_decorator	tt0125941,tt0015801,tt0050364,tt0126635
nm0007328	Mang Aag	\N	\N	director	tt0122035
nm0007329	Karl Aagaard Østvig Jr.	1925	1944	actor	tt0036476
nm0007330	Bent Aagaard	\N	\N	stunts	tt0077554
nm0007331	Egon Aagaard	1941	1984	actor,composer,music_department	tt0120218,tt0124328,tt0081255,tt0077051
nm0007332	Lasse Aagaard	\N	\N	composer,actor	tt12623872,tt26657072,tt6542020,tt14253594
nm0007333	Laura Aagaard	\N	\N	editorial_department,actress,director	tt0247993,tt29661813,tt9130232,tt38607795
nm0007334	Sigfred Aagaard	1924	2020	director,writer,producer	tt0193218,tt0193238
nm0007335	Sven Aagaard	\N	\N	writer	tt0122568,tt14202782
nm0007336	Vibeke Aagaard	1946	\N	miscellaneous,actress,producer	tt0929638,tt0236027,tt0108906,tt0193763
nm0007337	Karl Aagard Østvig	\N	\N	actor	tt0037434
nm0007338	Per Aage Brandt	1944	2021	actor	tt0108287,tt0449944
nm0007339	Audun Aagre	\N	\N	composer	tt0143160,tt13859350
nm0007340	Jan Aagre	\N	\N	actor	tt0177533
nm0007341	Thomas Aagren	\N	\N	actor	tt0117407
nm0007342	Lee Aaker	1943	2021	actor,soundtrack,archive_footage	tt0045883,tt0045932,tt0046906,tt0044382
nm0007344	Kim Fupz Aakeson	1958	\N	writer,script_department,actor	tt21867388,tt5719748,tt1439572,tt2675914
nm0007345	Jeppe Aakjær	1866	1930	writer,music_department,soundtrack	tt0031326,tt0030381,tt0315232,tt3089978
nm0007346	Liv Aakvik	1948	\N	actress	tt0271315,tt0271312,tt0271289,tt32267706
nm0007347	Andrea Aal	\N	\N	actress	tt0088587,tt0086691,tt0073955,tt0103181
nm0007348	Kitty Aal	\N	\N	camera_department	tt0243418
nm0007349	Steve Aalam	1968	\N	actor,producer,writer	tt0847166,tt0482957,tt0120567,tt0929742
nm0007350	Leyla Aalam	\N	\N	actress	tt0120793,tt0493103
nm0007351	Roxanne Aalam	\N	\N	actress	tt0090021
nm0007352	Schahla Aalam	\N	\N	actress	tt0090982,tt0117076,tt0190122
nm0007353	Aalami	\N	\N	\N	tt0031874
nm0007354	Mohamad Reza Aalami	\N	\N	director,writer,editor	tt1925494,tt0821752,tt1087643,tt0821771
nm0007355	Saadia Aalami	\N	\N	miscellaneous	tt0454841,tt0804522,tt0472062,tt8332438
nm0007356	John Aalberg	1897	1984	sound_department,music_department	\N
nm0007357	Frank Aalbers	\N	\N	visual_effects,miscellaneous,animation_department	tt0120338,tt1217209,tt3606756,tt0120655
nm0007358	George Aalbregise	\N	\N	actor	tt0128318
nm0007359	Aileene Aalbu	1909	1966	actress	tt0021568
nm0007360	Fern Aalbu	1912	1984	actress	tt0021568
nm0007361	Harriet Aalbu	1913	1975	actress	tt0021568
nm0007362	Lorraine Aalbu	1905	1991	actress	tt0021568
nm0007363	Mariann Aalda	1948	\N	actress,writer,producer	tt1688612,tt15373718,tt20216904,tt0103978
nm0007364	Joan Aalestrup	\N	\N	make_up_department	\N
nm0007365	Preben Aalholt	1937	2004	actor	tt0109379,tt0280124
nm0007366	Jefri Aalmuhammed	\N	\N	director,writer,miscellaneous	tt0104797,tt0109339
nm0007367	Rostislav Aalto	1971	\N	editor,cinematographer,sound_department	tt0341313,tt2027267,tt1173528,tt2025598
nm0007368	Anu Aalto	\N	\N	art_department,set_decorator,actress	tt0110832,tt0328132,tt0300730,tt0280285
nm0007369	Elina Aalto	\N	\N	actress	tt0275868,tt0438732,tt0112035,tt16293960
nm0007370	Inkeri Aalto	1923	\N	actress	tt0042631,tt0133116,tt1629428
nm0007371	Janne Aalto	\N	\N	actress,music_department	tt7317310,tt9148618,tt0127636
nm0007372	Jussi Aalto	1945	\N	camera_department,actor,art_department	tt0093325,tt0078186,tt0134990,tt0085739
nm0007373	Kati Aalto	\N	\N	make_up_department	tt0195499,tt1163814,tt12285946,tt1437823
nm0007374	Keijo Aalto	\N	\N	actor	tt0116941
nm0007378	Aino Aaltonen	\N	\N	actress,art_department,editorial_department	tt0107231,tt1016746,tt1582455,tt1188992
nm0007379	Elin Aaltonen	\N	\N	actress	tt0056094,tt0056356,tt0132676
nm0007380	Erkki Aaltonen	1910	1990	actor,composer,music_department	tt0050787,tt1620494,tt1464243
nm0007381	Frans Aaltonen	\N	\N	cinematographer	tt0121839
nm0007382	Henna Aaltonen	\N	\N	camera_department,costume_department	tt0194027,tt0158717,tt0127591,tt1303758
nm0007383	Irma Aaltonen	1934	\N	costume_department,costume_designer,actress	tt0397803,tt0089427,tt0091755,tt0090245
nm0007384	Jatta Aaltonen	\N	\N	actress	tt0104419
nm0007385	Jouko Aaltonen	1956	\N	producer,director,writer	tt1673431,tt0782690,tt1703110,tt1697951
nm0007386	Jukka Aaltonen	\N	\N	actor	tt14956742,tt15264146,tt0159168,tt0099931
nm0007387	Kosti Aaltonen	1900	1957	actor,art_department,art_director	tt0037852,tt0030348,tt7330448,tt0044151
nm0007388	Leif Aaltonen	\N	\N	actor	tt0055300
nm0007389	Maarit Aaltonen	\N	\N	actress	tt0142633
nm0007390	Markus Aaltonen	\N	\N	actor	tt0099029
nm0007391	Mia Aaltonen	\N	\N	make_up_department,actress	tt0133202,tt0047166,tt0121752,tt0139677
nm0007392	Minna Aaltonen	1966	2021	actress,miscellaneous	tt1886726,tt0115243,tt0100390,tt0116752
nm0007393	Olavi Aaltonen	\N	\N	camera_department,cinematographer,miscellaneous	tt0051931,tt0134125,tt0133017,tt0055606
nm0007394	Ossi Aaltonen	\N	\N	actor,composer	tt0115212,tt31499080
nm0007395	Remu Aaltonen	1948	\N	actor,composer,writer	tt0189041,tt0246005,tt0116656,tt0142966
nm0007396	Risto Aaltonen	1939	2021	actor,director,archive_footage	tt1480709,tt0490335,tt1452594,tt1454155
nm0007397	Seppo Aaltonen	\N	\N	writer	tt0121853
nm0007398	Toini Aaltonen	1906	1983	writer	tt0038791,tt0133151,tt1431333,tt1449213
nm0007399	Veikko Aaltonen	1955	\N	director,writer,script_department	tt0107231,tt0105651,tt0459494,tt0170223
nm0007400	Vesa Aaltonen	1950	\N	music_department,actor,soundtrack	tt0087872,tt0100895,tt0111648,tt0103228
nm0007402	Yrjö Aaltonen	1916	1979	cinematographer,director,camera_department	tt1830825,tt0046315,tt0121543,tt0055242
nm0007403	Stacy Aam	\N	\N	actor	tt0183573
nm0007404	Aamani	1973	\N	actress	tt1601792,tt6980546,tt12637548,tt13914000
nm0007405	Hanane Aamely	\N	\N	make_up_department	tt0271547
nm0007406	Angela Aames	1956	1988	actress,archive_footage	tt0086250,tt0086927,tt0077534,tt0077053
nm0007407	Kevin Aames	\N	\N	director	tt7779306,tt0142361
nm0007408	Marlene Aames	\N	\N	actress	tt0036868,tt0040884
nm0007410	Kristian Aamodt	\N	\N	actor	tt0021033
nm0007411	Marjorie Aamodt	\N	\N	\N	tt0117228
nm0007412	Thor Michael Aamodt	1946	\N	actor	tt0119375,tt0177446,tt0462252,tt2535202
nm0007413	Mathaleen Aamold	1894	1977	actress	tt0433214,tt0004236,tt0429870,tt0347389
nm0007414	Peter Aanensen	1932	2024	actor	tt0094924,tt0108709,tt0166034,tt0074466
nm0007415	Adolf Aanesen	\N	\N	actor	tt0009769,tt0008740
nm0007416	Cosmo Aangst	\N	\N	casting_director	tt0202618
nm0007417	Edvin Heimovalta	1902	\N	composer,soundtrack	tt0026558,tt0025236
nm0007418	Aapeli	1915	1967	writer,actor	tt4680594,tt0412143,tt0075647,tt1452421
nm0007419	Jim Aar	\N	\N	actor	tt0078841
nm0007420	Abraxas Aaran	\N	\N	actor	tt0066206
nm0007421	Steve Aaran	\N	\N	actor	tt0088134,tt0087837
nm0007422	Satyanarayana Aarani	\N	\N	actor	tt0259392,tt0256719,tt0277983,tt0259535
nm0007423	Frank J. Aard	\N	\N	actor	tt4224754,tt1018817,tt2477218,tt3526462
nm0007424	Ed Aardal	1910	1988	animation_department,visual_effects	tt0048280,tt0032455,tt0057730,tt0070016
nm0007425	Holly Aardal	\N	\N	actress	tt0100291
nm0007426	John Aardal	\N	\N	camera_department,visual_effects,miscellaneous	tt0084827,tt0119282,tt0230011,tt0103639
nm0007427	Simon Aarden	\N	\N	camera_department,cinematographer,director	tt0218113,tt0096597,tt0781899,tt0118358
nm0007428	Vastert van Aardenne	1963	\N	actor,archive_footage	tt0179034,tt0094509,tt0477217,tt1101488
nm0007429	Louise Aarens	\N	\N	make_up_department,actress,special_effects	tt0097780,tt0103144,tt0099805,tt0104568
nm0007430	Debra Aarens-Cerchi	\N	\N	producer	tt0275229
nm0007431	Bruce Aarestad	\N	\N	actor	tt0202829
nm0007432	Andreas Aarflot	1954	\N	music_department,composer	tt0092307,tt7074776,tt0497874,tt0113919
nm0007433	H. Barclay Aaris	1972	\N	special_effects,art_department,producer	tt0453467,tt0418279,tt0382992,tt14856980
nm0007434	Jan Aaris	1944	2024	special_effects,actor	tt0453467,tt0120461,tt0253754,tt0099810
nm0007435	Jeffrey Aarles	\N	\N	writer,actor	tt0178161,tt0114648,tt0377134,tt0221554
nm0007436	Kimberleigh Aarn	\N	\N	actress	tt0096071,tt0100404,tt0099165,tt0162065
nm0007437	Annu Aarnela	\N	\N	actor	tt0133033
nm0007438	Jenni Aarniala	\N	\N	sound_department,assistant_director,editor	tt0188135,tt6041362,tt0346385,tt0162625
nm0007439	Doug Aarniokoski	\N	\N	producer,director,assistant_director	tt1756799,tt0118655,tt0411951,tt0227538
nm0007440	Hilde Aarø	\N	\N	actress,miscellaneous	tt0103087,tt0492026
nm0007441	Aash Aaron	\N	\N	actor,producer,writer	tt1475569,tt3302958,tt1489264,tt3282214
nm0007442	Andy Aaron	1953	\N	sound_department,writer,director	tt3581652,tt0101540,tt0104231,tt0402894
nm0007443	Bob Aaron	\N	\N	actor	tt0081398,tt0093741,tt0100680,tt0078607
nm0007444	Bob Aaron	\N	\N	writer,producer	tt0135078,tt0050068
nm0007445	Brian Aaron	\N	\N	actor	tt0087599
nm0007446	Chad Aaron	1983	\N	actor	tt0292459,tt0138946,tt0098844
nm0007447	Charles Aaron	1921	1987	actor	\N
nm0007448	Chuck Aaron	1948	\N	stunts,miscellaneous,actor	tt0822854,tt2379713,tt0117603,tt0106168
nm0007449	Claudia Aaron	\N	\N	animation_department	tt0101329,tt0108526,tt1014793,tt5542520
nm0007450	David Aaron	\N	\N	special_effects	tt0133985
nm0007451	David L. Aaron	\N	\N	miscellaneous,art_department	tt0099329,tt0099348,tt0100135,tt0102800
nm0007452	David S. Aaron	\N	\N	actor	tt0089415
nm0007453	Debbie Aaron	\N	\N	actress	tt0151397
nm0007454	Eddie Aaron	\N	\N	\N	tt0279745
nm0007455	Eric Aaron	\N	\N	sound_department,actor,editorial_department	tt0088915,tt3960750
nm0007456	Evan W. Aaron	\N	\N	miscellaneous	tt0102860,tt0106660
nm0007457	Fanée Aaron	\N	\N	art_department,art_director,production_designer	tt0120902,tt0137523,tt0209144,tt0181316
nm0007458	Hallie Aaron	\N	\N	script_department,director	tt0126000,tt0089411,tt0080646,tt0088027
nm0007459	Hank Aaron	1934	2021	actor,miscellaneous,archive_footage	tt0234829,tt0088559,tt0149460,tt0088576
nm0007460	Harriotte H. Aaron	1952	\N	script_department,miscellaneous	tt0099329,tt0092240,tt0095270,tt0087336
nm0007461	Jack Aaron	1933	2014	actor,miscellaneous	tt0411008,tt0096542,tt0070726,tt0157248
nm0007462	James Aaron	\N	\N	actor,soundtrack	tt0086423
nm0007463	Jane Aaron	1948	2015	animation_department,director,producer	tt0242248,tt0299132,tt9290306,tt0462113
nm0007464	Joe Aaron	\N	\N	writer,producer,actor	tt0292483,tt16652206,tt2298550,tt2123935
nm0007465	John Aaron	\N	\N	archive_footage	tt0381176,tt1082770,tt5959952,tt0103396
nm0007466	Jonathan Aaron	\N	\N	writer	tt0148477
nm0007468	Joy A. Aaron	\N	\N	actress	tt2354049,tt0176357,tt0086730
nm0007469	Levy Aaron	\N	\N	actor	tt0059246,tt0154565
nm0007470	Lindy Aaron	\N	\N	actress	\N
nm0007471	Monroe Beehler	1933	2018	producer,director,actor	tt0215648,tt0219713,tt0258191,tt0256340
nm0007472	Mary Aaron	\N	\N	make_up_department	tt1082601,tt1385867,tt0183649,tt1837709
nm0007473	Matthew Hoffman	\N	\N	actor,writer	tt0399877,tt0158187,tt0224503,tt0783338
nm0007474	Nancy-Rae Aaron	1964	\N	actress	\N
nm0007475	Pam Aaron	\N	\N	costume_department	tt0407304,tt0478970,tt13186604,tt3532216
nm0007477	Paul Aaron	1943	\N	director,producer,writer	tt0089569,tt0101452,tt0112205,tt0081259
nm0007478	R. Elizabeth Aaron	\N	\N	miscellaneous	tt0114885,tt0102537,tt0102484
nm0007479	Jonathan Aaron	\N	\N	actor	tt0149380,tt0202198
nm0007480	Richard Aaron	\N	\N	camera_department	tt0113855,tt0119707,tt0120604,tt0106309
nm0007482	Robert Aaron	\N	\N	actor	tt0078607,tt0099829,tt0448143
nm0007483	Sam Aaron	1962	\N	actor,composer,miscellaneous	tt1911034,tt14134070,tt0265972,tt1823051
nm0007484	Steve C. Aaron	\N	\N	sound_department	tt9140554,tt4560436,tt1673434,tt9071808
nm0007485	Victor Aaron	1956	1996	actor	tt0115783,tt0107004,tt0115238,tt0118375
nm0007486	Ben Aaronovitch	1964	\N	writer,assistant_director,producer	tt0056751,tt10260680,tt0251504,tt0096555
nm0007487	David Aaronovitch	1954	\N	producer,writer,actor	tt1605592,tt0277512,tt1030744,tt4202570
nm0007488	Owen Aaronovitch	1956	\N	actor,archive_footage	tt0053494,tt0758790,tt0098898,tt0108967
nm0007489	Aaron Aarons	\N	\N	actor	tt0119093
nm0007490	Allan Aarons	\N	\N	actor	tt0092513,tt0117593,tt0075212,tt0098093
nm0007491	Bonnie Aarons	\N	\N	actress,writer,producer	tt0897361,tt5814060,tt0166924,tt1045658
nm0007492	David Aarons	\N	\N	actor	tt0088199
nm0007493	Jordana Aarons	\N	\N	producer,production_manager,editorial_department	tt1352363,tt0288937,tt31090833,tt19866304
nm0007494	Leroy Aarons	1933	2004	actor,writer,producer	tt0074119,tt1073510
nm0007495	Mark Aarons	\N	\N	editor,producer,animation_department	tt0159379,tt2012638,tt0366860,tt2033239
nm0007496	Marlene Aarons	1940	2021	make_up_department	tt1053424,tt1855325,tt0467197,tt0443632
nm0007497	Michael Aarons	\N	\N	music_department,composer,soundtrack	tt8503618,tt2091473,tt2331880,tt12885272
nm0007498	Sira Aarons	\N	\N	actress	tt0066832
nm0007499	Siri Aarons	\N	\N	actress,assistant_director,camera_department	tt0091323,tt0087150
nm0007500	Alan Aaronson	1946	\N	actor	tt0050045,tt0051328,tt0051267
nm0007501	Blair Aaronson	\N	\N	actress	tt0074621
nm0007502	Robert Aaronson	\N	\N	producer,executive	tt3481000,tt8403680,tt0228979
nm0007503	Darby Aaronson	1887	1946	writer	tt0021449
nm0007504	Evan Aaronson	\N	\N	miscellaneous,director,writer	tt0169579,tt0205294,tt0382150,tt0346343
nm0007505	Irving Aaronson	1895	1963	music_department,miscellaneous,soundtrack	tt1343092,tt0110005,tt0109348,tt0055797
nm0007506	Maddy Aaronson	\N	\N	production_manager,miscellaneous	tt0092106,tt0138230,tt0090461,tt0093066
nm0007507	Reuben Aaronson	\N	\N	cinematographer,camera_department,director	tt5720140,tt0120863,tt3264232,tt0146386
nm0007508	Tapio Aarre-Ahtio	1948	\N	actor,writer,composer	tt1715299,tt1582555,tt2194998,tt0070403
nm0007509	Bob Aarrons	\N	\N	actor	tt0087685,tt0092357,tt0090097
nm0007510	Reidar Aarsand	\N	\N	actor,composer	tt0101900,tt11767040
nm0007511	Espen Aarskjold	\N	\N	music_department	tt0113919
nm0007512	Bjørn Eivind Aarskog	1966	\N	producer,director,cinematographer	tt0113101,tt0310622,tt0157183,tt27033271
nm0007514	Erik Aarsland	\N	\N	actor	tt0106002
nm0007515	Turid Aarstad	\N	\N	actor	tt0069487,tt0258173
nm0007516	Karl Johan Aarsæther	1920	1971	\N	tt0049808
nm0007517	Sjur Aarthun	\N	\N	cinematographer,editor,camera_department	tt19838566,tt2664880,tt26423715,tt0356176
nm0007518	Arlette Aarts	\N	\N	actress	tt0096597,tt0106167,tt0149499
nm0007519	Robbert Aarts	\N	\N	producer,executive	tt0157583,tt0276140,tt1886680,tt12753864
nm0007520	Else Aarup	\N	\N	make_up_department	tt0075962
nm0007521	Heikki Aarva	1936	2020	director,producer,actor	tt1462315,tt0138865,tt1464292,tt0391645
nm0007522	Sami Aarva	\N	\N	actor,composer	tt0140797,tt0391642,tt0444845
nm0007523	Michael Aarvold	\N	\N	music_department,sound_department	tt1650062,tt0401729,tt1229238,tt1306980
nm0007524	Ami Aaröe	1925	2024	actress,soundtrack	tt0039126,tt0039822,tt0040520,tt0043491
nm0007525	Sten Aaröe	1923	2011	cinematographer,camera_department	tt0047436,tt0048084,tt0417506,tt0049988
nm0007526	Anders Aas	\N	\N	editor,editorial_department,cinematographer	tt0279064,tt2661774,tt0309630,tt1756160
nm0007527	Arne Aas	1931	2000	actor,archive_footage	tt0254522,tt1363087,tt0066385,tt0163129
nm0007528	Gunnar Aas	\N	\N	actor	tt0275443,tt0216576
nm0007529	Magda Blom	1900	1933	actress	tt0019798,tt0009769
nm0007530	Svein Roar Aas	\N	\N	\N	tt0277500
nm0007531	Elina Aasa	\N	\N	actress	tt0106671
nm0007532	Geir Aase	\N	\N	actor	tt0123878
nm0007533	Karina Aase	1956	\N	make_up_department,director,miscellaneous	tt1087861,tt0074661,tt0073141,tt0071643
nm0007534	Per Aase	\N	\N	production_designer	tt0185112
nm0007535	Åsne B. Aase	\N	\N	actress	tt0123878
nm0007536	Tormod Aaseby	\N	\N	art_department,actor	tt1375669,tt0099959,tt0092388
nm0007539	John Aasen	1890	1938	actor,archive_footage	tt0014611,tt0135522,tt0778032,tt0233829
nm0007540	Larry Aasen	1964	\N	actor,producer,miscellaneous	tt0365744,tt0146407,tt0197851,tt0206220
nm0007541	Ann Karin Aasgaard	1969	\N	editorial_department,location_management	tt0119375,tt0453383,tt0113029,tt0279064
nm0007542	Ranveig Aasgaard	\N	\N	actress	tt0017216
nm0007543	Erik Aasheim	\N	\N	actor	tt0307835,tt0180661,tt21086658,tt0295126
nm0007544	Paal Tarjei Aasheim	\N	\N	actor,archive_footage	tt1118927,tt2315906,tt0279549,tt0276737
nm0007545	Aasia	\N	\N	actress,producer,soundtrack	tt34280775,tt11374832,tt11220112,tt11543240
nm0007546	G.S. Aasie	\N	\N	actor	tt0064539
nm0007547	Derek Aasland	\N	\N	miscellaneous,actor,camera_department	tt0186151,tt0352248,tt0318627,tt0192614
nm0007548	Jasmin Aasland	1975	\N	actress	tt0307728,tt0365399,tt0367432,tt0267231
nm0007549	David Aslin	\N	\N	camera_department	tt0068882,tt0310450
nm0007550	Inge Aasted	1918	1981	actress	tt0124280
nm0007551	Hélène Aastrup	1945	\N	writer,producer,director	tt14586058,tt0077323,tt28802946
nm0007552	Ulla Aastrøm	\N	\N	miscellaneous,camera_department,costume_department	tt0070696,tt0122640,tt0122456,tt0125469
nm0007553	Liv Aatland	\N	\N	costume_designer,script_department	tt0111664
nm0007554	AAV Creative Unit	\N	\N	writer	tt0399762,tt0298066,tt0094384,tt0365037
nm0007555	Tõnu Aav	1939	2019	actor	tt0275714,tt0447524,tt0447283,tt5300238
nm0007556	Kaarlo Aavajoki	1907	1971	actor	tt0044994,tt0037853,tt0126110,tt0042631
nm0007557	Erik Aavatsmark	1972	\N	camera_department,art_department,assistant_director	tt6304046,tt1029235,tt1614989,tt1613750
nm0007558	Evald Aavik	1941	2024	actor	tt0168819,tt0446449,tt0445467,tt0347089
nm0007559	Kerttu Aaving	1977	\N	actress	tt0123904
nm0007560	Major Aaxton	\N	\N	editor	\N
nm0007561	Mohamed Aazzi	\N	\N	actor	tt0086112
nm0007562	Imad Ab on Khaled	\N	\N	actor	tt0098544
nm0007563	Chantal Aba	\N	\N	actress	tt0216458,tt0070132,tt0167525,tt0077155
nm0007564	Dairene Aba	\N	\N	actress	tt0360299,tt0122484,tt0116071
nm0007565	Eusebio Aba	\N	\N	actor	tt0055873
nm0007566	Kazuko Aba	\N	\N	miscellaneous	tt0114134
nm0007567	Saleem Abaas	1950	\N	actor	tt0086932
nm0007568	Ababacar Samb-Makharam	1934	1987	actor,director,writer	tt0065946,tt0084175,tt4111364,tt37931786
nm0007569	Bouchra Ababsa	\N	\N	actress	tt0178130
nm0007570	Elena Ababy	\N	\N	\N	\N
nm0007571	Helene Ababy-Davidoff	\N	\N	actress	tt0202294,tt0271217
nm0007572	Ruben Abarca	\N	\N	art_department	tt9777666,tt0371746,tt1483013,tt1025100
nm0007573	Levan Abashidze	1963	1992	actor	tt0208186,tt0281063,tt0122630,tt0171597
nm0007574	Diego Abad de Santillán	1897	1983	\N	tt0295058,tt0189188,tt0029644
nm0007575	Antonio Abad Ojuel	1911	1989	writer,actor,production_manager	tt0043031,tt0054725,tt0047540,tt0039663
nm0007576	José Abad Zuleta	\N	\N	actor	tt0193038
nm0007577	Adela Abad	\N	\N	actress	tt0101792,tt1479117
nm0007579	Edu Abad	\N	\N	producer,director,writer	tt0280568,tt0293007,tt0977642,tt0217303
nm0007580	Eileen Abad	1973	\N	actress,archive_footage	tt0307831,tt0319980,tt5378720,tt0300723
nm0007581	Encarna Abad	\N	\N	actress	tt10735624,tt0054595,tt2352273,tt0054776
nm0007582	Esperanza Abad	\N	\N	actress	tt1223443,tt0474843,tt0257744
nm0007583	Fernando Abad	\N	\N	art_department	tt0114080
nm0007584	Francisco Abad	\N	\N	director,writer,assistant_director	tt10735624,tt0415421,tt0347867,tt0451590
nm0007585	Jose Gil Abad	\N	\N	actor	tt0063291
nm0007586	José Abad	\N	\N	actor	tt0189772,tt0189952
nm0007587	Kike Abad	\N	\N	actor	tt0121852
nm0007588	Manuel Abad	1953	\N	director,writer,editorial_department	tt1418795,tt1414557,tt0474608,tt21974304
nm0007589	Maria Teresa Abad	\N	\N	actress	tt0117069
nm0007590	María Luisa Abad	\N	\N	actress,editorial_department	tt0047185,tt0042222,tt0041844,tt0045701
nm0007591	Mercedes Abad	1961	\N	actress,writer	tt0108354,tt0474980,tt0468594,tt0438745
nm0007592	Mélodie Abad	\N	\N	actress	tt1050057,tt1722495,tt1697793,tt0117351
nm0007593	Nati Abad	\N	\N	actress	tt0027772
nm0007594	Pat Abad	\N	\N	editorial_department,camera_department,make_up_department	tt0091012,tt0093906,tt0091604,tt0091957
nm0007595	Ramiro Abad	\N	\N	actor	tt0113146
nm0007596	Regina Abad	\N	\N	actress	tt0245712,tt0222600,tt0212640,tt0389662
nm0007597	Rose Abad	\N	\N	actress	tt0093655
nm0007598	Rómulo Abad	\N	\N	art_department,art_director,production_designer	tt0201631,tt1220550,tt0308577
nm0007599	Sol Abad	\N	\N	actress,soundtrack	tt0297174,tt0124958,tt0115563,tt0270480
nm0007600	Teresa Abad	\N	\N	actress	tt0046092
nm0007601	Teresita Abad	\N	\N	actress,miscellaneous	tt0180900,tt0044451
nm0007602	Toni Abad	\N	\N	writer,director,editor	tt0255328,tt0826061,tt0826586,tt0421329
nm0007603	Vicky Abad	\N	\N	actress	tt0084573,tt4827256
nm0007604	Ángel Abad	\N	\N	\N	tt0216224
nm0007605	Lambert Abadagan	\N	\N	production_manager	tt0270522
nm0007606	Baltasar Abadal	1886	1937	director,writer,cinematographer	tt0010626,tt0014016,tt0011035,tt0011544
nm0007607	Ignasi Abadal	\N	2010	actor	tt0247586,tt0064904,tt2235501,tt0297174
nm0007609	Pere Abadal	\N	\N	editor,editorial_department	tt1208666,tt0807064,tt0216965,tt0309600
nm0007611	Hanane Abade	\N	\N	actress	tt0116874
nm0007612	César Abades	\N	\N	special_effects,visual_effects,stunts	tt0913425,tt1189073,tt2515034,tt0947810
nm0007613	Manuel Abades	\N	\N	special_effects	tt0103594,tt0093840,tt0095644,tt0105253
nm0007614	Reyes Abades	1949	2018	special_effects,actor,miscellaneous	tt0457430,tt0125659,tt1189073,tt4326444
nm0007615	Óscar Abades	\N	\N	special_effects,art_department,miscellaneous	tt0913425,tt1189073,tt4326444,tt0441909
nm0007616	Arnulfo Avadeza	\N	\N	special_effects,art_department,production_designer	tt5242754,tt7718286,tt0346948,tt0494645
nm0007617	Rene Abadeza	\N	\N	special_effects,actor,art_department	tt0412473,tt0093937,tt0445745,tt0408914
nm0007618	Abby Abadi	\N	\N	actress	tt0272105,tt0298885,tt1515794,tt1640401
nm0007619	Daniel Abadi	\N	\N	editor	tt0086940
nm0007620	Ebrahim Abadi	1934	2019	actor	tt0090364,tt0821801,tt13707098,tt0262774
nm0007622	Sou Abadi	1968	\N	editor,editorial_department,director	tt5636222,tt0491625,tt0497572,tt0186397
nm0007623	Oscar Abadia	\N	\N	actor	tt0096244,tt0105699
nm0007624	Régine Abadia	\N	\N	director,writer,assistant_director	tt0119674,tt15289678,tt0493101,tt0234382
nm0007625	A.C. Abadie	1878	1950	cinematographer,director,actor	tt0167051,tt0485015,tt0918623,tt0477387
nm0007626	Brian Abadie	\N	\N	actor	tt0078238,tt3569196
nm0007628	Jean-Jacques Abadie	\N	\N	actor	tt0220726
nm0007629	Eksander Abadii	\N	\N	actor	tt0095459
nm0007630	Aleli Abadilla	\N	\N	actor	tt0094844,tt0390303,tt18955378
nm0007631	Aicha Abadir	\N	\N	actress	tt7778778,tt14862872
nm0007632	Luis Abbadie	1899	1964	assistant_director,actor,editorial_department	tt0262865,tt0255888,tt0219132,tt0035365
nm0007633	Rumina Abadjiewa	\N	\N	miscellaneous,actress,stunts	tt0144640,tt2345567,tt1345488,tt6635810
nm0007634	Aleksandr Abadovsky	1952	\N	cinematographer	tt3553900,tt0140317,tt0311561,tt0135814
nm0007636	Carol Abady	\N	\N	editorial_department,miscellaneous	tt0112817
nm0007637	Temple Abady	1903	1970	composer,music_department,soundtrack	tt0041111,tt0040597,tt0044626,tt0040309
nm0007638	Jairan Abadzade	\N	\N	actress	tt0116779
nm0007639	Djordje Abadzijev	\N	\N	writer	tt0051934,tt0425507,tt1075018
nm0007640	Georgi Abadzijev	\N	\N	writer	tt0182387,tt1442168
nm0007641	Fernanda Abadía	\N	\N	art_department	tt0337692,tt0318462,tt0314197,tt0896923
nm0007642	Jorge María Abadía	\N	\N	actor	tt0263739
nm0007643	Julio Abadía	1905	\N	actor	tt0028204,tt0182471,tt0022157,tt0216742
nm0007644	Leticia Abadía	\N	\N	assistant_director	tt0080484
nm0007645	Margarita Abadía	\N	\N	actress	tt0183318
nm0007646	Frank Abagnale Jr.	1948	\N	actor,writer,miscellaneous	tt0264464,tt1148756,tt0170980,tt32433612
nm0007647	Sonny Abagnale	\N	\N	actor,stunts,miscellaneous	tt0087843,tt0087233,tt0082970,tt0090629
nm0007648	George Abagnalo	\N	\N	writer,actor	tt0075679,tt0129631,tt0960730
nm0007649	Youssef Abagourram	\N	\N	location_management,miscellaneous,art_department	tt14539740,tt0993842,tt8356942,tt0758774
nm0007650	Hervé Abah	\N	\N	actor	tt0094868
nm0007651	I. Abai	\N	\N	writer	tt0260203
nm0007652	Mohamed Abaid	\N	\N	actor	tt0206181,tt0233260
nm0007653	Gali Abaydulov	1953	\N	actor,miscellaneous	tt0086613,tt0270151,tt9412456,tt0312307
nm0007654	Assi Abaiov	\N	\N	actor	tt0086884
nm0007655	M. Abaishvili	\N	\N	actor	tt0087606
nm0007657	David Abajo	\N	\N	writer,producer,miscellaneous	tt2095924,tt0764965,tt0817233,tt6625452
nm0007658	Juan Julio de Abajo	\N	\N	writer,producer	tt0078457,tt0072159,tt0077752,tt0073951
nm0007659	Askhab Abakarov	1945	1985	director,actor,art_director	tt5575854,tt0300489,tt0068993,tt0079750
nm0007660	Suvit Abakaz	\N	\N	actor	tt0093105
nm0007661	Tamari Abakelya	1905	1953	costume_designer,production_designer	tt0169566,tt0236138,tt0034781
nm0007662	Miguel Abal	\N	\N	cinematographer,camera_department	tt0433913,tt0288838,tt5877964,tt0770459
nm0007663	Mohamed Abalnou	\N	\N	transportation_department	tt0099244
nm0007664	Byron Abalos	\N	\N	actor,writer,archive_footage	tt11671006,tt1190634,tt7908628,tt4919930
nm0007665	Coraje Ábalos	1972	\N	actor	tt0224867,tt0196234,tt0269750,tt0218948
nm0007666	David Brian Abalos	\N	\N	actor	tt0094027
nm0007667	Ezequiel Abalos	\N	\N	director,producer	tt0366852,tt0089794
nm0007668	Jing Abalos	\N	\N	actor	tt0061386,tt1190666,tt0335280,tt0218821
nm0007669	Jorge Washington Abalos	1915	1979	writer	tt0055446
nm0007670	Ralph M. Abalos	\N	\N	make_up_department,art_department,actor	tt1189340,tt4218572,tt10682266,tt0245686
nm0007671	Silvia Abalos	\N	\N	actress	tt0220950
nm0007672	Eduard Abalov	1927	1987	actor,director	tt0055468,tt0781088,tt0072141,tt13959584
nm0007673	Envard Abalyan	\N	\N	actress	tt0363738,tt0273990,tt0266687,tt0307060
nm0007674	Leopoldo Aban	\N	\N	actor	tt0092880
nm0007675	Michele Abandond	\N	\N	miscellaneous	tt0110353
nm0007676	Arnel Abaneilla	\N	\N	location_management	tt0096000,tt0094909,tt0094620
nm0007677	Tatyana Abanina	\N	\N	actress	tt0262476
nm0007678	Petronelle Abapataki	\N	\N	actress	tt0194714
nm0007679	Maya Abar-Baranovskaya	1928	2019	costume_designer,editor	tt0060107,tt0079764,tt0063175,tt0079619
nm0007680	Patric J. Abaravich	\N	\N	camera_department	tt0119094,tt0102975,tt0120844,tt0117381
nm0007681	Lorraine Abarbanal	\N	\N	actress	tt0029079
nm0007682	Gil Abarbanel	\N	\N	music_department	tt0117716,tt0225947
nm0007683	Judith Abarbanel	\N	\N	actress	tt0029079,tt0023636,tt0032201
nm0007684	Sam X. Abarbanel	1914	2006	producer,writer,miscellaneous	tt0063860,tt0042855,tt0040112,tt0069457
nm0007685	Lina Abarbanell	1879	1963	casting_department	tt0046828,tt4411310
nm0007686	Lydia Abarca	\N	\N	actress	tt0087089,tt0149439
nm0007687	Paulina Abarca-Cantin	\N	\N	producer,director,actress	tt16252802,tt1185437,tt0270291,tt21084590
nm0007688	Verónica Abarca	\N	\N	actress	tt0079984
nm0007689	Bianou Abarchi	\N	\N	miscellaneous	tt0099218
nm0007691	Aliza Abargil	\N	\N	actress	tt0149394
nm0007693	Rabadan Abarkoroff	\N	\N	\N	tt0239690,tt0193728
nm0007694	José María Abarno	\N	\N	actor	tt0055398
nm0007695	Alejandro Abaroa	1971	\N	music_department,composer,actor	tt0497152,tt0421401,tt23320014,tt0425679
nm0007696	Alfredo Abaroa	\N	\N	producer,editor,sound_department	tt0410631,tt0488602,tt0489820,tt0489821
nm0007697	I. Abarrategui	\N	\N	costume_department,costume_designer	tt0047610,tt0043613
nm0007698	Boleslaw Abart	1935	\N	actor	tt0067873,tt0067447,tt0080010,tt1437005
nm0007699	Christian Abart	\N	\N	actor	tt8381856,tt22301358,tt1745066,tt5511970
nm0007700	Pam Abbas	\N	\N	actress	tt0080472
nm0007701	Tina Marie Abas	\N	\N	actress	tt0111517
nm0007702	Pamela Abas-Ross	\N	\N	actress	tt0100065,tt0098878,tt0111193
nm0007703	Cecilio Abascal	\N	\N	actor	tt0216900
nm0007704	Consuelo Abascal	1921	\N	actress	tt0233975,tt0218471
nm0007705	José Abascal	\N	\N	art_department	tt0117865,tt0437746,tt0117531,tt1512277
nm0007706	Margot Abascal	1973	\N	actress,director,writer	tt0117499,tt0296105,tt10272090,tt0456725
nm0007707	Nati Abascal	1943	\N	actress,archive_footage	tt0066808,tt0383825,tt4271796,tt0381800
nm0007708	Paul Abascal	1958	\N	director,make_up_department,actor	tt0100403,tt0113492,tt0095016,tt0106697
nm0007709	Ramón Abascal	\N	\N	actor,assistant_director	tt0208115,tt0159848,tt0211849,tt1275297
nm0007710	Silvia Abascal	\N	\N	make_up_department,actress	tt0092007,tt0088170,tt0089346,tt0086312
nm0007711	Silvia Abascal	1979	\N	actress,writer,director	tt3828714,tt0467867,tt0201626,tt0385842
nm0007712	Jose Abascal-Olmos	\N	\N	art_department	tt0129114
nm0007713	Pyotr Abasheyev	1934	1997	actor	tt0136624,tt0089219
nm0007714	Devi Abashidze	1924	2005	director,assistant_director,writer	tt0282670,tt0274463,tt0325186,tt0279439
nm0007715	Dimitri Abashidze	1893	1975	assistant_director,special_effects	tt0260696,tt0268406,tt0262084
nm0007717	Dodo Abashidze	1924	1990	actor,director,archive_footage	tt0094681,tt0087606,tt0275862,tt0275874
nm0007718	Gocha Abashidze	1937	1961	actor	tt0170197,tt0269278,tt0234394,tt0050752
nm0007720	Leila Abashidze	1929	2018	actress,writer,director	tt0284552,tt0235087,tt0170197,tt0234050
nm0007722	Merab Abashidze	\N	\N	writer	tt0265418
nm0007723	Tamari Abashidze	\N	\N	actress	tt0050752,tt0047532
nm0007725	Taso Abashidze	1881	1958	actress	tt0260122
nm0007726	Vaso Abashidze	1854	1926	actor	tt0012484,tt0261935,tt0260122
nm0007727	Heiam Abasi	\N	\N	actor	tt0150836
nm0007728	Alain Abadie	\N	\N	actor,archive_footage	tt0072052
nm0007729	Sait Faik Abasiyanik	1906	1954	writer	tt0252084,tt0263042,tt0261751,tt6026640
nm0007730	Roland T. Abasolo	\N	\N	actor	tt0139668,tt0340147,tt0119019,tt0870118
nm0007731	Aladdin Abbasov	1922	2014	actor	tt1279422,tt0175259,tt0470859,tt1573869
nm0007732	R. Abbasov	\N	\N	actor	tt0092186
nm0007733	Gertraude Abasovicz	\N	\N	make_up_department	tt0131686,tt0806910,tt0846838,tt0383149
nm0007734	Ali Abassi	\N	\N	producer	tt0070773,tt0078299,tt0072254,tt0122188
nm0007735	Elizabeth Abassi	1918	2012	actress	tt0099871,tt0106489,tt0224947,tt0079931
nm0007736	Farah Abassi	\N	\N	actress	tt0097778,tt0187354
nm0007737	Logan Abassi	\N	\N	miscellaneous	tt0113063,tt29266069
nm0007738	Mehdi Abassi	\N	\N	actor	tt0090721
nm0007739	Isabelle Abastado	\N	\N	location_management,miscellaneous	tt0120230,tt0119578,tt0156859,tt0111271
nm0007740	Lise Abastado	\N	\N	assistant_director,producer,production_manager	tt0089409,tt0095752,tt0165570,tt0119211
nm0007741	Louise Abastado	\N	\N	assistant_director,producer	tt0105317,tt0100847,tt0074456,tt0078894
nm0007742	Teri Abastado	\N	\N	miscellaneous	tt0089880,tt0091295,tt0095741,tt0098674
nm0007743	Ryan Abastillas	\N	\N	actor	tt0097184
nm0007745	Giuseppe Abatangelo	\N	\N	transportation_department	tt0220827,tt0376181,tt0115447,tt0116444
nm0007746	Diego Abatantuono	1955	\N	actor,writer,miscellaneous	tt0102426,tt0254235,tt0119794,tt0091837
nm0007747	Saïdou Abatcha	\N	\N	actor,writer	tt1234542,tt0094868,tt31068939,tt0112607
nm0007748	Richard P. Abate Jr.	\N	\N	transportation_department	tt0360009,tt0119217,tt0308383,tt0332047
nm0007749	Alessandro Abate	\N	\N	cinematographer,camera_department,script_department	tt1020773,tt18272884,tt0112352,tt1673647
nm0007750	Elizabeth Abate	\N	\N	costume_department,miscellaneous	tt0119488,tt0119099,tt1564367,tt16419074
nm0007751	Enrico Abate	\N	\N	actor	tt0073290,tt0076777,tt0078290,tt0076735
nm0007752	Enrique Abate	\N	\N	camera_department	tt0267490
nm0007753	Ettore Abate	\N	\N	camera_department	tt0101489,tt0112352,tt0384766,tt5057130
nm0007754	Lisa Abate	\N	\N	actress	tt0168787
nm0007755	Loraine Abate	\N	\N	actress	\N
nm0007756	Marie Abate	\N	\N	\N	\N
nm0007757	Massimo Abate	\N	\N	actor	tt0178132,tt0115447,tt4580074
nm0007758	Richard Abate	\N	\N	producer,writer,manager	tt4172430,tt0360009,tt0144117,tt0308383
nm0007759	Franca Abategiovanni	\N	\N	actress	tt3758542,tt10042788,tt26757190,tt0984996
nm0007760	Dean Abatemarco	\N	\N	actor	tt0103259
nm0007761	Frank Abatemarco	\N	\N	producer,writer,miscellaneous	tt0092455,tt0094511,tt0115317,tt0092393
nm0007762	Tony Abatemarco	1952	\N	actor,director,miscellaneous	tt0102945,tt0277027,tt0157472,tt0093286
nm0007763	Joaquín Abati	1865	1936	writer	tt0268501,tt0268356,tt0018238,tt0035392
nm0007764	Alesia Abatie	\N	\N	producer,miscellaneous,art_department	tt0116629,tt8389306,tt6953810,tt0108949
nm0007765	G. Abatino	\N	\N	writer	tt0026023
nm0007766	Pepito Abatino	\N	\N	writer	tt0026891
nm0007767	Paul Vito Abato	\N	\N	actor	tt2488206,tt0426089,tt0238247,tt0451060
nm0007768	Ali Abatsis	\N	\N	actor	tt0095827
nm0007769	Serge Abattucci	\N	\N	actor	tt0110171,tt7982028,tt7643322,tt1534084
nm0007770	Anthony Shaw Abaté	\N	\N	actor	tt0100788,tt0113818,tt35285501,tt0259316
nm0007771	Bonnie Abaunza	\N	\N	producer,miscellaneous	tt0117331,tt0102005,tt0114048,tt0101882
nm0007772	Z. Abavin	\N	\N	writer	tt0262079
nm0007773	Korhan Abay	1954	\N	actor,producer	tt5547116,tt7917864,tt0466646,tt6240922
nm0007774	Michaela Abay	\N	\N	actress	tt0088519,tt0088644,tt0222566
nm0007775	Leo Abaya	1960	2021	miscellaneous,production_designer,art_department	tt2823664,tt0256213,tt0186257,tt0782053
nm0007776	Anjanette Abayari	\N	\N	actress	tt0155647,tt0377388,tt0425511,tt0336283
nm0007777	Aurelia Alaïs	\N	\N	actress	tt0097462
nm0007778	Ahmed Abaza	\N	\N	actor	tt0376612,tt36460357,tt37916810,tt36460261
nm0007779	Alexis Abaza	\N	\N	sound_department	tt0155839
nm0007780	Angi Abaza	\N	\N	actress	tt0119629,tt6626148
nm0007781	Rushdy Abaza	1926	1980	actor,writer,producer	tt0049833,tt0369913,tt0359648,tt0371291
nm0007783	Manana Abazadze	\N	\N	actress	tt0057695,tt0174909,tt1527604
nm0007784	Hamdi Abazi	\N	\N	assistant_director	tt0274007,tt0096004,tt0273628,tt0203246
nm0007785	Refet Abazi	1964	\N	actor,writer,producer	tt9273800,tt37538672,tt4240848,tt3340908
nm0007786	Farouk Abaziad	\N	\N	actor	tt0119514
nm0007787	Taalai Abazova	\N	\N	actress	tt1043565,tt0470524,tt4697114,tt1050089
nm0007788	Radovan Abazovic	\N	\N	make_up_department	tt0131686,tt0806910,tt0846838,tt0806901
nm0007789	Robin Abb	\N	\N	actress	tt0099935
nm0007790	Cele Abba	1906	1991	actress	tt0023874,tt0026853,tt0035516,tt0035716
nm0007791	Franco Abba	1963	\N	actor	tt0253525,tt5022622,tt0110864,tt5431506
nm0007792	Marta Abba	1900	1988	actress,miscellaneous	tt0023874,tt0025866
nm0007793	Tijani Abba	\N	\N	actor	tt0285332,tt0094514,tt0119838
nm0007794	Nikki Abbadessa	\N	\N	miscellaneous	tt0093042
nm0007795	Pete Abbadessa	\N	\N	actor	tt0138288
nm0007796	Axelle Abbadie	1951	\N	actress	tt0167644,tt0080565,tt0785076,tt0943425
nm0007798	Claudio Abbado	1933	2014	music_department,actor,soundtrack	tt0181689,tt1130884,tt3716530,tt2056771
nm0007799	Marcello Abbado	1926	2020	composer	tt0046705,tt0047274
nm0007801	Brahim Abbadzi	\N	\N	actor	tt0098796
nm0007802	Sergio Abbagnato	\N	\N	actor	tt0127675,tt0336314
nm0007803	Mauro Abbale	\N	\N	camera_department	tt0096177,tt1773065
nm0007804	Ekow Abban	\N	\N	actor,soundtrack	tt0090585
nm0007805	Sean Abbananto	\N	\N	actor,miscellaneous	tt0106079,tt0262462,tt0111321,tt0109637
nm0007806	Abbas	1975	\N	actor	tt3037162,tt21970082,tt1320185,tt3415346
nm0007807	Abbas	\N	\N	actor,assistant_director,miscellaneous	tt0054910,tt0140370,tt0232585,tt3621726
nm0007808	Abdullah Abbas	1906	1986	actor	tt0028628
nm0007809	Eduardo Abbas	1930	1992	actor,production_manager	tt0205640,tt0261108,tt0184659,tt0144777
nm0007810	Fida Abbas	\N	\N	producer	tt0108235
nm0007811	Gassan Abbas	\N	\N	actor	tt1735200,tt12246266,tt0334508,tt0135650
nm0007812	Ghulam Abbas	\N	\N	actor	tt0102178
nm0007813	Hector Abbas	1884	1942	actor,archive_footage	tt0193947,tt0034027,tt0011839,tt0026949
nm0007814	Hiam Abbass	1960	\N	actress,director,miscellaneous	tt1856101,tt0857191,tt1637660,tt0762121
nm0007815	Khwaja Ahmad Abbas	1914	1987	writer,director,producer	tt0152400,tt0044360,tt0050820,tt0064915
nm0007816	L. Masri Abbas	\N	\N	camera_department	tt0097942
nm0007817	Lotte Abbas	\N	\N	miscellaneous	tt0114623
nm0007818	Meriam Abbas	1970	\N	actress	tt10676126,tt30195482,tt0136423,tt6864088
nm0007819	Nael Abbas	\N	\N	assistant_director,miscellaneous	tt0110027,tt0115243,tt0485301,tt1376404
nm0007820	Rasan Abbas	\N	\N	actor	tt0143588,tt2983900,tt0107141
nm0007821	Shezad Abbas	\N	\N	actor	tt0178082
nm0007822	Yehyia Abbas	\N	\N	camera_department	tt0104797,tt0431905,tt6614534,tt0082237
nm0007823	Zainub Abbas	\N	\N	actress	tt0101402
nm0007824	Jonathan Abbas-Klahr	\N	\N	special_effects,visual_effects,make_up_department	tt0120915,tt0120616,tt0162661,tt0241527
nm0007825	Rizz Abbasi	\N	\N	actor,archive_footage	tt0421054,tt0116477,tt0115031,tt0113425
nm0007826	Shukhrat Abbasov	1931	2018	director,writer	tt0311480,tt5038070,tt5038252,tt5038158
nm0007827	Foad Abbass	\N	\N	actor	tt0119514
nm0007828	Rashid Abbasi	\N	\N	production_manager,miscellaneous,location_management	tt0086034,tt0347304,tt0248126,tt0172684
nm0007829	Nicole Marie Abbat	\N	\N	actress	tt0088683
nm0007830	Adrienne Abbate	\N	\N	actress	tt0096310
nm0007831	Allison Abbate	\N	\N	producer,actress,writer	tt0129167,tt1142977,tt0432283,tt0121164
nm0007832	Andrea Abbate	1956	\N	producer,writer,actress	tt0165057,tt0118495,tt2084712,tt1441096
nm0007833	Bruce Abbate	\N	\N	director,producer,camera_department	tt2167619,tt0151309
nm0007834	Carlos Abbate	\N	\N	sound_department,actor	tt0420509,tt0227277,tt0320042,tt0291988
nm0007835	Claudia Abbate	\N	\N	actress	tt0279768,tt0319237,tt0430746,tt4966844
nm0007836	Geraldine Abbate	\N	\N	actress	tt0096310,tt0117194,tt1627890
nm0007837	Gianni Abbate	\N	\N	actor	tt0883803,tt0082893,tt1342272,tt0477224
nm0007838	Maria Abbate	\N	\N	actress	tt0180989
nm0007839	Mario Abbate	1927	1981	actor,music_department,soundtrack	tt0045103,tt0046677,tt0045715,tt0420400
nm0007840	Marisa Abbate	1950	\N	actress	tt0093454
nm0007841	Teresa Abbate	\N	\N	actress	tt0133413
nm0007842	Joseph Abbatecola	\N	\N	camera_department	tt1815862,tt1232829,tt0359950,tt1959490
nm0007843	Ovonzo Abbatecola	\N	\N	art_department	tt0051725,tt0051741
nm0007844	Roberto Abbati	\N	\N	actor	tt0112980,tt0356941,tt0128446,tt0138920
nm0007845	Stefano Abbati	1955	\N	actor	tt0090166,tt0114385,tt0204098,tt0440739
nm0007846	Lisa Abbatiello	1970	\N	director,writer,script_department	tt0160425,tt0351234
nm0007847	Sal Abbatiello	1952	\N	actor,producer,director	tt0089444,tt3515836,tt4416640,tt5829054
nm0007848	Vincent Abbatino	\N	\N	actor	tt0083739
nm0007849	Tim Abbatoye	\N	\N	transportation_department,camera_department	tt0489099,tt0475394,tt0095956,tt0359013
nm0007850	Peter Abbay	1966	\N	actor	tt0057731,tt0930071,tt0082776,tt0816263
nm0007851	Mohamed Abbazi	1938	\N	production_manager,assistant_director,director	tt0073341,tt1930368,tt5270002,tt0310250
nm0007852	Brandon Abbe	\N	\N	actor	tt0198520
nm0007853	Charles S. Abbe	1860	1932	actor	tt0012028,tt0208734,tt0014138,tt0005814
nm0007854	Guillaume Abbe	\N	\N	actor,art_department	tt0444112,tt13185510
nm0007855	Yutaka Abe	1895	1977	director,actor,writer	tt0290430,tt0452421,tt1173750,tt34779967
nm0007856	James E. Abbe	1883	1973	cinematographer,director,actor	tt0012291,tt0011444,tt0014605,tt2207595
nm0007857	Pierre Abbeloos	\N	\N	cinematographer	tt0130232
nm0007858	Joseph C. Abbenda	1965	\N	camera_department,miscellaneous,visual_effects	tt0065323,tt0439096,tt0896893,tt2176257
nm0007859	John Abbene	\N	\N	camera_department	tt1426329,tt0084691,tt0081753,tt0090559
nm0007860	Mary Abbene	\N	\N	editorial_department,sound_department	tt0110214,tt0191085,tt0295539,tt0102604
nm0007861	Victor Abbene	\N	\N	camera_department,visual_effects	tt0409459,tt0298814,tt0338337,tt0371746
nm0007862	Lee Abberley	\N	\N	miscellaneous	tt0117631
nm0007863	Manuel Abberra	\N	\N	actor	tt2099797,tt0165840
nm0007864	Deb Abberton	\N	\N	actress	tt0211518
nm0007865	Mathias Abbes	\N	\N	actor	tt0103336
nm0007866	Lucien Abbet	\N	\N	actor,miscellaneous,stunts	tt0111495,tt0283160,tt0386858,tt0231782
nm0007867	Alex-Sandra Abbey	\N	\N	actress	tt0096824
nm0007868	Anna Abbey	\N	\N	costume_department,costume_designer	tt0137363,tt1424381,tt0227538,tt0419294
nm0007869	Chantal Abbey	\N	\N	actress	tt0202402,tt0069658
nm0007870	Claire Abbey	\N	2011	actress	tt0107972,tt0087837
nm0007871	Dawn Abbey	\N	\N	actress	tt0089110,tt0104905
nm0007872	Edward Abbey	1927	1989	writer,archive_footage	tt0482548,tt0056195,tt0082380,tt2179518
nm0007873	Eleanor Abbey	1890	1979	costume_designer,costume_department	tt0052170,tt0050287,tt0039479,tt0041819
nm0007874	Glenn Abbey	\N	\N	sound_department,actor	tt0156106,tt1054653,tt1339188,tt1051245
nm0007875	Heidi Abbey	\N	\N	actress	tt0109222
nm0007876	Ian Abeysekera	\N	\N	actor	tt0116631,tt0106685,tt0106084,tt0450945
nm0007877	John Abbey	1935	2010	actor	tt0064674,tt0062136,tt0061647,tt0073149
nm0007878	Josh Abbey	\N	\N	music_department,sound_department,soundtrack	tt0119282,tt3382518,tt7006358,tt0391397
nm0007879	Joshua Abbey	\N	\N	actor	tt0087781,tt0090410
nm0007880	Leo Abbey	1900	1990	actor	\N
nm0007881	Malcolm Abbey	\N	\N	editor,cinematographer,camera_department	tt1595014,tt0405419,tt0091108,tt2584572
nm0007882	May Abbey	1875	1952	actress	tt0002574,tt0003545,tt0444419,tt0002925
nm0007883	Rob Abbey	\N	\N	camera_department,miscellaneous	tt0120004,tt0325805,tt0113161,tt0844441
nm0007884	Sarah Abbey	\N	\N	location_management,art_department,editorial_department	tt1684562,tt4068576,tt2321549,tt11847842
nm0007885	Tatiana Abbey	\N	\N	assistant_director,actress,director	tt0265666,tt0466545,tt1090695,tt0476988
nm0007886	William Abbey	1911	1985	actor	tt0030217
nm0007887	Ernest Abbeyquaye	\N	\N	director,actor,producer	tt2086836,tt1365050,tt4113796,tt0058174
nm0007888	Franco Abbina	1934	\N	actor	tt0198043,tt0055356,tt0055879,tt0056883
nm0007889	Cesira Abbiati	\N	\N	actress	tt0071404
nm0007890	Marlaina Abbie	\N	\N	actress	tt0129598
nm0007891	Sheryl Abbie	\N	\N	actress	tt0081989
nm0007892	Don Abbinanti	\N	\N	make_up_department	tt0120873,tt0104427,tt0107985,tt0110989
nm0007893	Amanda Abbington	1974	\N	actress,archive_footage	tt1475582,tt1869347,tt2310212,tt1502420
nm0007894	Lydia Abbink	\N	\N	miscellaneous	tt0075924,tt0076713,tt0083179,tt0077907
nm0007895	Alex Abbiss	\N	\N	producer,actor,archive_footage	tt0349664,tt0193007,tt0431661,tt0827175
nm0007896	Dave Abbitt	\N	\N	miscellaneous,producer,production_manager	tt11737520,tt1885300,tt2149175,tt6410924
nm0007897	Justine Abbitt	\N	\N	actress	tt0248005
nm0007898	Abbittibbi	\N	\N	music_department,composer	tt0211227,tt0178576,tt0132080
nm0007899	Donald R. Abblett	\N	\N	art_department	tt0182789,tt0104257,tt0106912,tt0093437
nm0007900	Francis Abbo	\N	\N	actor	tt0085479
nm0007901	Mike Abbo	\N	\N	actor	tt0119163
nm0007902	Vito Abbonato	1956	\N	composer,music_department,actor	tt0121092,tt19512834,tt2141899,tt8554322
nm0007903	Francesco Abbondati	\N	\N	director,visual_effects	tt0262282,tt13031912
nm0007905	Barry Abbot	\N	\N	art_department	tt0765443,tt0430912,tt0246544,tt0254703
nm0007906	Bernie Abbot	\N	\N	actor	tt0115847
nm0007907	Billy Abbot	\N	\N	editorial_department	tt0091621
nm0007908	Cathy Abbott	\N	\N	miscellaneous	tt0125802,tt0271113,tt29794342
nm0007909	Charlie Abbot	\N	\N	camera_department	tt0116026,tt0107210,tt0114246,tt0117406
nm0007910	Dave Abbot	\N	\N	cinematographer,camera_department	tt21362640,tt15106856,tt15514538,tt0090355
nm0007911	Jerry Abbot	1942	2024	composer,actor,soundtrack	tt0086423,tt1284521,tt0159156
nm0007912	John Abbot	\N	\N	cinematographer	tt0129543,tt2315398
nm0007913	K. Scott Abbot	\N	\N	art_department	tt0095904
nm0007914	Lee Abbott	\N	\N	producer,director,writer	tt0479181,tt13786800,tt7690390,tt0423722
nm0007915	Mark Abbot	\N	\N	actor,miscellaneous	tt0114733,tt0106138
nm0007916	Nathan Abbot	\N	\N	visual_effects	tt6791350,tt9376612,tt1060277,tt0167190
nm0007917	Patricia D. Abbot	\N	\N	make_up_department	tt0069097
nm0007918	Paul Abbot	\N	\N	actor	tt0080391,tt2140387,tt2139711
nm0007919	Robin Abbot	\N	\N	actor	tt0109405
nm0007920	Russ Abbot	1947	\N	actor,soundtrack,archive_footage	tt0862620,tt1965057,tt0475047,tt0069602
nm0007921	Steve Abbott	\N	\N	actor,producer	tt0115237,tt0115320,tt0270349,tt0112086
nm0007922	Tommy Abbot	\N	\N	actor	tt0115847
nm0007923	Bud Abbott Jr.	1939	1997	actor,miscellaneous	tt0042116,tt0092322,tt0108849,tt0254061
nm0007924	Aaron Abbott	\N	\N	actor	tt0161485,tt0112528
nm0007925	Abdul Malik Abbott	\N	\N	editor,director,camera_department	tt4999316,tt8651032,tt6966246,tt1850397
nm0007926	Aimee Abbott	\N	\N	actress	tt0009019
nm0007927	Ezio Marano	1927	1991	actor	tt0067355,tt0069960,tt0074442,tt0166077
nm0007928	Alexander Abbott	\N	\N	actor,writer,producer	tt3377796,tt0189112,tt0189651
nm0007929	Allan Abbott	\N	\N	\N	tt0110724
nm0007930	Andrew Abbott	\N	\N	producer,director,miscellaneous	tt1385626,tt37807258,tt13345556,tt1772073
nm0007931	Annie Abbott	\N	\N	actress,miscellaneous	tt10323338,tt0090466,tt14168162,tt0056758
nm0007932	Antoinette Abbott	\N	\N	actress	tt0306091,tt0387693,tt0282528,tt0291671
nm0007934	Bill Abbott	\N	\N	actor	tt0079153
nm0007935	Bill Abbott	\N	\N	music_department,sound_department,miscellaneous	tt0848537,tt0367594,tt0146838,tt1014759
nm0007936	Billy Abbott	\N	\N	camera_department,actor	tt37319525
nm0007937	Blanche Abbott	\N	\N	actress	tt0010143
nm0007938	Brian Abbott	\N	\N	actor	tt2005216,tt0302739,tt0246134,tt0144728
nm0007939	Brian Abbot	1911	1936	actor	tt0122200,tt0335306
nm0007940	Bruce Abbott	1954	\N	actor,director,archive_footage	tt0089885,tt0093268,tt0084756,tt0099180
nm0007941	Bud Abbott	1895	1974	actor,writer,producer	tt0033723,tt0033436,tt0040068,tt0033754
nm0007942	Camille Abbott	\N	\N	art_department	tt0094012,tt0096134,tt0101545,tt0101088
nm0007943	Carol Abbott	\N	\N	editorial_department	tt0096548,tt14663580,tt0494608,tt0778562
nm0007944	Charles Abbott	\N	\N	director,editor	tt0132951,tt0031023,tt0028999
nm0007945	Charles Abbott	1943	\N	actor	tt0355563,tt0101145,tt0098725,tt0129713
nm0007946	Chris Abbott	\N	\N	actress	tt0076257,tt0075488
nm0007947	Chris Abbott	\N	\N	producer,writer,miscellaneous	tt0168344,tt0080240,tt0092325,tt0096684
nm0007948	Christie Abbott	1982	\N	actress,archive_footage	tt0241760,tt0118276,tt0112225,tt0205271
nm0007949	Christine Abbott	\N	\N	actress	tt0107920,tt0197442
nm0007950	Chrystal Abbott	\N	\N	actress	tt0276980
nm0007951	Dalton Abbott	1989	\N	actor	tt0103064
nm0007953	Abbott Alexander	\N	\N	actor,casting_director,archive_footage	tt0087538,tt0212537,tt0155425,tt0090881
nm0007955	David Abbott	\N	\N	art_department,camera_department	tt0332452,tt0120616,tt0448134,tt10548174
nm0007956	David Abbott	\N	\N	actor	tt0280462,tt0460681,tt0491522,tt0997278
nm0007957	David Abbott	1965	\N	actor,archive_footage	tt0185130,tt0222648,tt0251469,tt1505434
nm0007958	Diahnne Abbott	1945	\N	actress,soundtrack,archive_footage	tt0075314,tt0085794,tt0247196,tt0087644
nm0007959	Diane Abbott	\N	\N	cinematographer	tt0146605
nm0007960	Diane Abbott	\N	\N	actress	tt0348564
nm0007961	Dorothy Abbott	1920	1968	actress,miscellaneous	tt0052225,tt0043194,tt0129544,tt0041795
nm0007963	Eleanor Hallowell Abbott	1872	1958	writer	tt0007088,tt0006928,tt0011529
nm0007964	Elisabeth Abbott	\N	\N	actress,soundtrack	tt1212436,tt0238784,tt0371282,tt0216247
nm0007965	Elizabeth Abbott	\N	\N	actress,miscellaneous	tt0032321,tt33475397
nm0007966	Elliot Abbott	\N	\N	producer,music_department	tt0104694,tt0094737,tt0099077,tt0117372
nm0007967	Frank Abbott	1878	1957	actor	tt0179532,tt0016687,tt0202341
nm0007968	Fredric Abbott	1928	1996	actor,archive_footage	tt0061287,tt0088518,tt0054518,tt0075561
nm0007970	G.P. Abbott	\N	\N	\N	tt0259573
nm0007971	Gavin Abbott	1968	\N	actor	tt0184164,tt0410990,tt0160904,tt0053494
nm0007972	Georganne Abbott	\N	\N	actress	tt0097132
nm0007973	George Abbott	1887	1995	writer,director,miscellaneous	tt0050814,tt0051516,tt0020629,tt0021346
nm0007974	Greg Abbott	\N	\N	actor,writer,producer	tt7520760,tt27759717,tt0222837,tt3579068
nm0007975	Gregory Abbott	1900	1981	archive_footage,archive_sound	tt6424172,tt0038825
nm0007976	Gregory Steven Abbott	\N	\N	camera_department,cinematographer	tt0114590,tt0279695,tt0193576,tt0179102
nm0007977	Gypsy Abbott	1897	1952	actress	tt0004291,tt0006283,tt0003802,tt0004636
nm0007978	Hal Abbott	\N	\N	actor,soundtrack	tt0232963
nm0007979	Henry Abbott	\N	\N	actor,writer	tt0168199,tt1420570,tt0270116
nm0007980	Honey Abbott	\N	\N	actress,soundtrack	tt0232963
nm0007981	Imogene Abbott	\N	\N	make_up_department	\N
nm0007982	Jack Abbott	1886	1964	actor,writer,assistant_director	tt0005408,tt0188609,tt0150549,tt0328568
nm0007983	James Abbott	\N	\N	actor	tt0096707,tt0805332
nm0007984	Jamie Abbott	\N	\N	actor	tt0088763,tt0088527,tt0091778,tt0086429
nm0007985	Jane Abbott	\N	\N	actress	tt0076637,tt0108154,tt0096684,tt0112097
nm0007986	Janice Abbott	\N	\N	actress	tt0090069
nm0007987	Jeanne Abbott	\N	\N	miscellaneous	tt0091668,tt0088395,tt0089132
nm0007988	Jeff Abbott	\N	\N	actor	tt0088559,tt0081930,tt0086765,tt0077000
nm0007989	Jennifer Abbott	1965	\N	director,editor,writer	tt12397050,tt0379225,tt12575636,tt4070374
nm0007990	Jennifer M. Abbott	\N	\N	actress	tt0112641
nm0007991	Jess Abbott	\N	\N	writer	tt0053135
nm0007992	Jesse Abbott	\N	\N	actor	tt0264425
nm0007993	Jim Abbott	\N	\N	actor,miscellaneous	tt0168337,tt0056758,tt0295857,tt0483740
nm0007994	Joan Abbott	\N	1968	actress,soundtrack	tt0026527,tt1013603,tt4983554,tt2113671
nm0007995	John Abbott	1905	1996	actor,soundtrack,archive_footage	tt0061852,tt0051658,tt0039133,tt0034988
nm0007996	John Abbott	1945	\N	actor,art_department,assistant_director	tt0109831,tt0056751,tt1511543,tt0120640
nm0007997	John S. Abbott	1913	1971	cinematographer,miscellaneous,camera_department	tt0042393,tt32483794,tt0042524,tt11967300
nm0007998	John William Abbott	\N	\N	director,producer	tt2419808,tt0210497
nm0007999	Joseph Abbott	\N	\N	actor	tt0085494
nm0008000	Judy Abbott	1922	1984	casting_director	tt0080945,tt2391166,tt0079123,tt0076639
nm0008001	Karen Abbott	\N	\N	actress,archive_footage	tt0082467
nm0008002	Kathy Abbott	\N	\N	miscellaneous	tt0435679,tt0302640,tt0217979,tt2312890
nm0008003	Kevin Abbott	\N	\N	producer,writer,miscellaneous	tt31106862,tt0094540,tt3729144,tt0137330
nm0008004	L.B. Abbott	1908	1985	visual_effects,camera_department,special_effects	tt0069113,tt0074812,tt0066473,tt0057798
nm0008005	Larry Abbott	1936	\N	make_up_department,transportation_department,costume_department	tt0119807,tt0112384,tt0117887,tt0118966
nm0008007	Len Abbott	\N	\N	sound_department,music_department	tt0063893,tt0054518,tt0055701,tt0062551
nm0008008	Lenwood Abbott	\N	\N	cinematographer	tt0013981,tt0009068,tt0016298
nm0008009	Louise Abbott	\N	\N	director,writer,producer	tt37701545,tt10749946,tt10749794,tt10749658
nm0008010	Lu Abbott	\N	\N	script_department,miscellaneous,writer	tt0213327,tt0206476,tt0118315,tt0086687
nm0008011	Lucy Abbott	1975	\N	actress,composer,soundtrack	tt34379960,tt0463817,tt0135723
nm0008012	Luke Abbott	\N	\N	director,writer,actor	tt0244865,tt0265469,tt0228414,tt0303279
nm0008013	Maggie Abbott	\N	\N	producer	tt0079631,tt0803894,tt0082009,tt14295940
nm0008014	Marc Abbott	\N	\N	actor,miscellaneous,camera_department	tt4690744,tt4567086,tt0115907,tt8527868
nm0008015	Margaret Abbott	\N	\N	actress	tt0087644,tt0114122
nm0008016	Marilyn Abbott	\N	\N	actress	tt0140488
nm0008017	Marion Abbott	1867	1937	actress	tt0013855,tt0012763
nm0008018	Mark Abbott	\N	\N	actor,director,writer	tt21217648,tt1366395,tt0147643,tt0113223
nm0008019	Matthew Abbott	\N	\N	music_department,miscellaneous	tt0264761,tt0170452,tt0119778,tt0151582
nm0008020	Maureen Abbott	\N	\N	director,actress,writer	tt0073722,tt1659274,tt1590321
nm0008021	Mia Abbott	\N	\N	actress,writer	tt0069444,tt0072519
nm0008023	Michael Abbott	1955	1994	costume_department,costume_designer	tt0100436,tt0092585,tt0088559,tt0088571
nm0008024	Michael Abbott	\N	\N	miscellaneous	tt0082360
nm0008026	Michael Abbott	\N	\N	sound_department,miscellaneous,music_department	tt1839337,tt3565412,tt32940141,tt6069962
nm0008027	Mike Abbott	1953	\N	actor,archive_footage	tt0281587,tt1040019,tt0280671,tt0094357
nm0008028	Natalie Abbott	\N	\N	actress	tt0090474,tt0081831,tt0101123,tt0098833
nm0008029	Nike Abbott	\N	\N	casting_department	tt0115291,tt0176799,tt0149371,tt0185771
nm0008030	Norman Abbott	1922	2016	director,producer,actor	tt0060619,tt0058805,tt0055679,tt0042116
nm0008032	Norman Abbott	\N	\N	actor	tt0215925
nm0008033	Pamela Abbott	\N	\N	actress	tt0072081,tt0079592,tt0061956,tt0078593
nm0008034	Pat Abbott	\N	\N	make_up_department	tt0068421,tt0067419,tt0065797,tt0065795
nm0008035	Paul Abbott	\N	\N	actor	tt0094889,tt0096969,tt0110971,tt0282431
nm0008036	Paul Abbott	1960	\N	writer,producer,miscellaneous	tt1586680,tt0377260,tt0362192,tt3922704
nm0008037	Paul W. Abbott	\N	\N	miscellaneous	tt0110331
nm0008038	Percy Abbott	1886	1960	\N	tt0165917
nm0008039	Peter Abbott	\N	\N	actor	tt0097170
nm0008040	Peter Abbott	\N	\N	producer,miscellaneous,production_manager	tt0271118,tt0144401,tt0086218,tt1251819
nm0008041	Philip Abbott	1924	1998	actor,director,writer	tt0056541,tt0058801,tt0050546,tt0059796
nm0008042	Price Abbott	\N	\N	miscellaneous	tt0106519
nm0008043	Ray Abbott	1957	2025	stunts,actor,miscellaneous	tt0453467,tt0480249,tt0090190,tt0316732
nm0008044	Richard Abbott	1899	1986	actor	tt0041037,tt0041040,tt0025133,tt0065966
nm0008045	Robert Abbott	\N	\N	sound_department	tt0111937,tt0775413,tt0416185,tt0896923
nm0008046	Roger Abbott	1946	2011	actor,writer,producer	tt0143060,tt0287880,tt1442443,tt1442483
nm0008047	Ron Abbott	\N	\N	art_department	tt0113211
nm0008048	Ronald Abbott	\N	\N	sound_department	tt0049028,tt0055058,tt0051576,tt0047568
nm0008049	Ruth Abbott	\N	\N	actress	tt0025599
nm0008050	Ryan Abbott	\N	\N	production_manager,editorial_department,miscellaneous	tt1563069,tt1952704,tt5538814,tt4321038
nm0008051	Sandra Abbott	\N	\N	actress,archive_footage	tt0055254,tt0051261
nm0008052	Sarah Abbott	\N	\N	director,writer,editor	tt2386400,tt2380370,tt2380428,tt2348914
nm0008053	Scott Abbott	\N	\N	writer	tt0238546,tt0149380,tt3087752,tt0109332
nm0008054	Sean Abbott	\N	\N	music_department	tt0164173
nm0008055	Shepard Abbott	\N	\N	writer	tt0087015
nm0008056	Simon Abbott	\N	\N	producer,production_manager,writer	tt0443701,tt0499556,tt0357277,tt0450314
nm0008057	Simon Dare Abbott	\N	\N	director	tt0251472
nm0008058	Stephen Abbott	\N	\N	actor	\N
nm0008060	Steve Abbott	1956	\N	actor,writer,producer	tt0115886,tt0121931,tt0144130,tt0096486
nm0008061	Suzy Abbott	\N	\N	art_department,camera_department	tt0330793,tt0360009,tt0100140,tt0104452
nm0008062	Sylvia Abbott	\N	\N	actress	\N
nm0008063	Thomas Abbott	\N	\N	actor,cinematographer	tt0093266,tt3161594,tt0089945,tt0279573
nm0008064	Tom Abbott	\N	\N	actor	tt0105402,tt0116039,tt0112782,tt0106819
nm0008065	Tommy Abbott	1934	1987	miscellaneous,actor	tt0055614,tt0067093,tt0090152
nm0008066	Tony Abbott	\N	\N	production_designer,art_department	tt0058853,tt0078590,tt1945785,tt0307726
nm0008067	Tracey Abbott	\N	\N	actress	tt0183505,tt0118153,tt0200664
nm0008068	Vic Abbott	\N	\N	actor	tt0067372,tt0162114,tt3530818
nm0008069	Walter Abbott	1905	1973	writer	tt0039800,tt0044074
nm0008070	Wendu Abbott	\N	\N	\N	\N
nm0008071	Wendy Abbott	\N	\N	actress,casting_department,miscellaneous	tt2193021,tt2315896,tt1740299,tt0109532
nm0008072	Wendy Jane Abbott	\N	\N	actress	tt0118717
nm0008073	Zoe Abbott	\N	\N	casting_department	tt0260866
nm0008074	Susan Abbott-Weller	\N	\N	visual_effects	tt0134619,tt0162766
nm0008075	Vickie Abbott-Wheeler	\N	2021	\N	tt2039925,tt0092322,tt0254061
nm0008076	Bernard Abbou	\N	\N	actor	tt0053198
nm0008077	Jean-Marc Abbou	\N	\N	production_manager,actor,location_management	tt0258463,tt0122690,tt0104779,tt0113117
nm0008078	Jeanne Abbou	\N	\N	actress	tt3805856
nm0008079	Karim Abbou	1968	\N	writer,director,actor	tt10221838,tt0441621,tt0248254,tt7974188
nm0008080	Olivier Abbou	1973	\N	writer,director,producer	tt14485734,tt23898914,tt8246392,tt1683970
nm0008081	Patrice Abbou	1967	\N	actor,writer	tt0295721,tt16658328,tt0098226,tt0200091
nm0008082	Pierre Abbou	\N	\N	actor,location_management	tt1558741,tt1934205,tt3600588,tt3061594
nm0008083	Victor Abbou	\N	\N	actor,writer	tt14741188,tt2317622,tt0169462,tt29332083
nm0008084	Carol Abboud	\N	\N	actress,producer	tt3381858,tt7385556,tt3460884,tt0318116
nm0008085	Daniel Abboud	\N	\N	camera_department	tt4139588,tt2133196,tt10656794,tt1232190
nm0008086	Deen Abboud	\N	\N	actor	tt0223832,tt0243135,tt5589814,tt0413179
nm0008087	Hanane Abboud	\N	\N	actress	tt0222767
nm0008088	Mona Abboud	\N	\N	actress	tt0078481
nm0008090	Dino Abbrescia	1966	\N	actor,assistant_director,archive_footage	tt34750678,tt0417944,tt1056471,tt1521348
nm0008091	Giuseppe Abbrescia	\N	\N	actor,writer,assistant_director	tt0056174
nm0008092	Silvana Abbrescia-Rath	1947	\N	actress,director,writer	tt5326078,tt0111714,tt14708478,tt22865116
nm0008093	Maria Vittoria Abbrugiati	\N	\N	script_department,assistant_director,miscellaneous	tt0402894,tt0100686,tt0265930,tt0167203
nm0008094	Alexandra Abbruzzese	\N	\N	actress	tt0188620
nm0008095	Laurence Abby	\N	\N	writer	tt0096958
nm0008096	Michèle Abbé-Vannier	\N	\N	production_designer,art_department	tt0096994,tt0113731,tt0168333,tt0074103
nm0008097	Sheila Abcott	\N	\N	actress	tt0152876
nm0008098	Ihsan Abdel Quddous	1919	1990	writer	tt1056237,tt0356194,tt0251881,tt0355674
nm0008099	Rashida Abdel Salam	\N	\N	editor,cinematographer,editorial_department	tt6520654,tt0205241,tt0119629,tt0297398
nm0008100	Hmaoui Abd El Hamid	\N	\N	music_department,soundtrack	tt0211718,tt0083618
nm0008101	Abd-El-Kader	\N	\N	actor	tt0012890
nm0008102	Abd-El-Krim	1882	1963	archive_footage	\N
nm0008103	Abd-el-Uad	\N	\N	actor	tt0031017
nm0008104	Ramsy Abda-Tirko	\N	\N	camera_department	tt0114384
nm0008105	Mario Abdah	\N	\N	actor	\N
nm0008106	Alberto Abdala	\N	\N	director,writer	tt0178255,tt0312821,tt0176420
nm0008107	Catarina Abdalla	1959	\N	actress,soundtrack	tt1339218,tt0149528,tt0252239,tt0138274
nm0008108	Delphine Abdala	1871	1941	actress	tt0022494,tt0160683,tt0197666,tt0022108
nm0008109	José Abdala	\N	\N	actor	tt0097742,tt1322398,tt0415742,tt0219175
nm0008110	Anwar Abdullah	1919	2008	writer,music_department,soundtrack	tt0191771,tt29421659,tt8123502,tt2119575
nm0008111	Kamaran Abdulla	1959	1993	actor	tt0106650,tt0104243,tt0156349,tt0096597
nm0008112	Zeca Abdalla	\N	\N	cinematographer,camera_department	tt0139075,tt13773506
nm0008113	Farida Abdallah Hadj	\N	\N	actress	tt0261270
nm0008114	Amar Ben Abdallah	\N	\N	actor	tt0187200,tt0261654,tt0267163,tt0174376
nm0008118	Pavel Abdalov	1964	\N	actor,producer,miscellaneous	tt0110904,tt10810348,tt0180853,tt13266120
nm0008119	Victor Abdalov	\N	\N	cinematographer,camera_department	tt0249567,tt0087925,tt0084868
nm0008120	Farid Abdedou	\N	\N	actor	tt0107106
nm0008121	Mohamed Abdel Azim	\N	\N	cinematographer,actor	tt0281988,tt0284438,tt0021570,tt0360178
nm0008122	Ismail Abdel Aziz	\N	\N	miscellaneous	tt0104797
nm0008123	Lobna Abdel Aziz	1935	\N	actress,writer	tt0372771,tt0376646,tt0355193,tt0356194
nm0008124	Mahmoud Abdel Aziz	1946	2016	actor,music_department,soundtrack	tt0234477,tt0233848,tt0431545,tt3698674
nm0008125	Sabry Abdelaziz	\N	\N	actor	tt0331856,tt0358986,tt36496684,tt36541639
nm0008126	Sobhy Abdel Aziz	\N	\N	assistant_director	tt37027808,tt0342651,tt0342951,tt0205266
nm0008127	Ashraf Abdel Baky	1963	\N	actor,director,producer	tt15396818,tt0366581,tt15463398,tt15542142
nm0008128	Hana Abdulfattah	1944	2012	actor,director	tt0342396,tt1584021,tt1323019,tt0355220
nm0008129	Hassan Abdel Fattah	\N	\N	cinematographer,camera_department	tt0062519,tt10358624
nm0008130	Mohamed Abdel Fettouh	\N	\N	set_decorator	tt0189342
nm0008131	Mohamed Abdel Gawad	1911	2002	director,writer,assistant_director	tt0376843,tt0373470,tt0286750,tt0284283
nm0008132	Hassan Abdel Guelil	\N	\N	producer	tt0184511
nm0008133	Birlanti Abdulhamid	1935	2010	actress	tt0367023,tt0342583,tt0317307,tt0342661
nm0008134	Hassan Abdel Hamid	1932	2009	actor	tt0196355,tt2168382,tt0431545,tt2307257
nm0008136	Gihane Abdel Latif	\N	\N	costume_department,art_department	tt0104797,tt0098293,tt0107999,tt0262614
nm0008137	Mohamed Abdel Latif	\N	\N	camera_department	tt0191790
nm0008138	Moustapha Abdel Latif	\N	\N	production_manager	tt0057357
nm0008139	Rabab Abdel Latif	\N	\N	editor,editorial_department,sound_department	tt5303564,tt0762124,tt1589412,tt0119629
nm0008140	Maher Abdel Nour	\N	\N	art_director,production_designer	tt0205241,tt0207727,tt2233953,tt0309658
nm0008141	Nasry Abdel Nour	\N	\N	sound_department,music_department,set_decorator	tt0205241,tt0225044,tt0373080,tt0316221
nm0008142	Gamil Abdel Rahman	\N	\N	sound_department,camera_department	tt0202371,tt0315525,tt0315536
nm0008143	Mohamed Abdel Rahman	\N	\N	actor	tt0359320,tt0056894,tt0064703
nm0008144	Turky Abdel Rahman	\N	\N	sound_department	tt10475770,tt0207728,tt0207696
nm0008145	Ahmad Abdel Raouf	\N	\N	camera_department	tt0104797
nm0008146	Salah Abdel Razek	\N	\N	editor	tt10568468,tt37825789,tt36701642,tt0110155
nm0008147	Chadi Abdel Salam	1930	1986	art_director,costume_designer,writer	tt0064703,tt0342396,tt0316936,tt1649321
nm0008149	Amin Abdel Sayed	\N	\N	producer	tt0207696
nm0008150	Daoud Abdel Sayed	1946	\N	director,writer,assistant_director	tt0233234,tt1664814,tt0323303,tt0111074
nm0008151	Ahmed Abdel Wahab	1934	2003	writer,actor,script_department	tt33436762,tt36460357,tt2241021,tt0376856
nm0008152	Fatin Abdel Wahab	1913	1972	director,writer,actor	tt0225044,tt0342825,tt0376915,tt0342808
nm0008153	Mohamed Abdel Wahab	1901	1991	composer,music_department,actor	tt0301357,tt0281381,tt0281988,tt0100594
nm0008154	Saad Abdel Wahab	1926	2004	actor	tt0355180,tt0342042,tt0041151,tt0042800
nm0008155	Zaky Fateen Abdel Wahab	1961	2022	actor,assistant_director,location_management	tt0124097,tt0209163,tt12204810,tt0107999
nm0008156	DJ Abdel	\N	\N	composer,actor,soundtrack	tt0463872,tt0344854,tt0367324,tt0402043
nm0008157	Ali Abdel-Khalek	1944	2022	director,actor,writer	tt1058114,tt6229810,tt6549502,tt0092579
nm0008158	Shireen Abdel-Moneim	\N	\N	actress	tt0230822
nm0008159	Yasser Abdel Rahman	\N	\N	composer,music_department	tt0929769,tt0422708,tt0166486,tt1085799
nm0008160	Nasser Abdel-Rahmane	1970	\N	writer,actor	tt1825746,tt1085799,tt1173708,tt1982848
nm0008161	Seif Abdelrahman	1942	\N	actor,miscellaneous,producer	tt0104797,tt0074168,tt3559452,tt15542142
nm0008162	Abdelahk Lazali	\N	\N	actor	tt1826725,tt0118933,tt0284839,tt0903597
nm0008163	Nadereh Abdelahyeva	\N	\N	actress,archive_footage	tt0152438
nm0008164	Yakoub Abdelatif	\N	\N	actor	tt0211445
nm0008165	Nordin Abdelbakic	\N	\N	actor	tt0169272
nm0008166	Mohammed Ahmed Abdelgarder	\N	\N	miscellaneous	tt0125980
nm0008167	Barbara Abdelghani	\N	\N	production_designer	tt0104408
nm0008168	Bab Abdelghari	\N	\N	actor	tt0104408
nm0008169	Ami Abdelhafid	\N	\N	actress	tt0088032
nm0008170	Ouchene Abdelhafid	\N	\N	actor	tt0096143
nm0008171	Ameed Abdelhafiz	\N	\N	director,writer	tt0198602,tt0276465
nm0008172	Abdelaziz Abdelhak	\N	\N	actor	tt0109185
nm0008173	Ahmed Abdelhalim	1934	2013	actor,director	tt0074896,tt1527056,tt30144569,tt1807911
nm0008174	Abdellatif Abdelhamid	1954	2024	director,writer,actor	tt0282799,tt0107925,tt1204385,tt0344504
nm0008175	Naïma Abdelhamid	\N	\N	actress	tt0261270
nm0008176	Kamel Abdelli	\N	\N	actor	tt4680196,tt0166199,tt6190050,tt1600428
nm0008177	Abes Abdelkader	\N	\N	assistant_director	tt0100594
nm0008178	Mahieddine Abdelkader	\N	\N	actor	tt0233260
nm0008179	Chaddati Abdelkebir	\N	\N	composer	tt0125695
nm0008180	Bouzrina Abdelkrim	\N	\N	actor	tt0109185,tt33077039
nm0008181	H'Maia Abdelkrim	\N	\N	actor	tt0088032
nm0008182	Reza Abdelkrim	\N	\N	actress	tt0096143
nm0008183	Mohamed Abdellaoui	\N	\N	actor	tt0210377
nm0008184	Abdellfattah Abdellatif	\N	\N	actor	tt0224823
nm0008185	Abdullatif Hilal	1940	2022	actor	tt0089370,tt0179338,tt0294615,tt32874964
nm0008186	Achour Abdelmajid	\N	\N	camera_department	tt10278448,tt0090665,tt10644648,tt21199612
nm0008187	Baji Abdelmajid	\N	\N	actor	tt0089370
nm0008188	Zaouia Abdelmajid	\N	\N	actor	tt0089370
nm0008189	Latifa Abdelmoujoud	\N	\N	actress	tt0114577
nm0008190	Chakib Abdelmoula	\N	\N	art_department,miscellaneous	tt0104082,tt0098544
nm0008191	Koulder Abdelmoumeni	\N	\N	actor	tt0110260,tt0114227
nm0008192	Eduardo Abdelnor	\N	\N	actor	tt0259903,tt0260465,tt0143612
nm0008193	Nadia Abdelouafi	1978	\N	actress,miscellaneous	tt0217221,tt0473492,tt0149534,tt3973502
nm0008194	Khalid Abdelrasoul	\N	\N	actor	tt0138414
nm0008195	Adil Abdelwahab	1961	\N	assistant_director,location_management,actor	tt0320661,tt4669264,tt2283336,tt9252468
nm0008200	Antar Abderrahman Jr.	\N	\N	camera_department,cinematographer	tt0177971,tt0286716,tt0120891,tt0317740
nm0008201	Fahim Abderrahman	\N	\N	camera_department	tt0104082
nm0008202	Omar Abderrahman	\N	\N	art_department,production_manager,camera_department	tt0112641,tt10009796,tt6970184,tt1127884
nm0008203	Mahmoud Abderrazak	\N	\N	actor	tt0120337,tt9373894,tt0090665,tt0124858
nm0008204	Adisurya Abdy	\N	\N	director,writer,actor	tt8690670,tt30889920,tt1066501,tt14095402
nm0008205	Ahmed Abdi	\N	\N	actor	tt3915900,tt0123096
nm0008206	Akbar Abdi	1958	\N	actor,archive_footage	tt2670642,tt3127636,tt4498818,tt9037404
nm0008207	Nidam Abdi	\N	\N	actor,writer	tt0118659,tt0262335,tt1868747
nm0008208	Sophia Ali Abdi	\N	\N	costume_department	tt0094317,tt0100196,tt0093354
nm0008209	Yasmine Abdi	\N	\N	actress	tt0104658
nm0008210	Osmonkul Abdibaitov	\N	\N	sound_department	tt0087937,tt0264752,tt0307350,tt8801562
nm0008211	Belma Abdicevic	\N	\N	visual_effects,camera_department	tt0472033,tt10267798,tt11992510,tt3900614
nm0008212	M. Abdiyev	\N	\N	costume_designer	tt11527474,tt0087937,tt0174026,tt0189548
nm0008213	R. Captain Abdilla	\N	\N	miscellaneous	tt0151277
nm0008214	Ray Abdilla	1963	\N	actor	tt0094750,tt12515600,tt12523658,tt30328059
nm0008215	Farouk Abdillah	\N	\N	costume_designer	tt0101315
nm0008216	Jamal Abdillah	\N	\N	actor,writer	tt0123284,tt0275744,tt3449494,tt0312406
nm0008217	Shion Abdillah	1979	\N	actor	tt0111173,tt10616430
nm0008218	B. Abdilmanov	\N	\N	\N	\N
nm0008219	Alexis Abdinoor	\N	\N	actress	tt0272068
nm0008220	Kathryn Abdinoor	\N	\N	actress	tt0272068
nm0008221	Ozeboj Abdirachmanov	\N	\N	miscellaneous	tt0131102
nm0008222	Yevgeniya Abdirkina	1906	1996	editor,assistant_director	tt0036558,tt0035044,tt0054748,tt11311028
nm0008225	Asbot Abdjanov	\N	\N	casting_department	tt0131102
nm0008226	Eddie Abdo	1902	1961	actor	\N
nm0008227	Joe Abdo	1942	2018	actor,writer,producer	tt0103206,tt0098396,tt0244727,tt5638000
nm0008229	Laurie Abdo	1923	2011	miscellaneous	tt0099653,tt0083530,tt0073190,tt0068835
nm0008230	Nayla Abdo-Hanna	\N	\N	producer,miscellaneous	tt3318746,tt0121525
nm0008231	Rose Abdoo	\N	\N	actress,archive_footage	tt0433383,tt1284575,tt0119738,tt0238784
nm0008232	Ahamed Abdou	\N	\N	actor	tt0245062,tt0106042
nm0008233	Farid Abdou	\N	\N	producer	tt0198398
nm0008234	Hacen Abdou	\N	\N	actor	tt0122956
nm0008235	Hassan Abidou	\N	\N	actor	tt0109185
nm0008236	Karim Abdou	\N	\N	miscellaneous	tt0099218
nm0008237	Louche Abdou	\N	\N	actor	tt0084680
nm0008238	Ol Abdou	\N	\N	actor	\N
nm0008239	Abdoullaï	\N	\N	actor	tt0106820
nm0008240	Farhat Abdraimov	1966	2021	actor,producer	tt0322250,tt21301792,tt3750362,tt15881252
nm0008241	Abdrashid Abdrakhmanov	1946	2019	actor,archive_footage	tt3882394,tt0312404,tt0275741,tt3751520
nm0008243	Rustem Abdrashev	\N	\N	director,writer,production_designer	tt1305027,tt0470903,tt9011132,tt2086942
nm0008244	Vadim Abdrashitov	1945	2023	director,actor	tt0372400,tt0096121,tt0129563,tt0114207
nm0008245	Kanat Abdreimov	\N	\N	actor	tt0237493
nm0008246	Kuatbai Abdreimov	\N	\N	actor	tt0079749,tt0237275,tt0232655,tt0348483
nm0008247	Sokrat Abdukadyrov	1947	2023	actor	tt2301061,tt0171957,tt0086175,tt1394464
nm0008248	Abdul	\N	\N	miscellaneous,actor,make_up_department	tt0169102,tt0347332,tt0210609,tt0070253
nm0008250	Juliana Abdul Ajis	\N	\N	actress	tt0155713
nm0008251	Zaliha Binte Abdul Hamid	\N	\N	actress	tt0266407,tt36473712,tt12999422,tt18568580
nm0008252	Rahimi Rahman	\N	\N	camera_department	tt31514984
nm0008253	Abdul the Turk	\N	\N	actor	tt0018231,tt0008474,tt0008863,tt0229538
nm0008254	Hassan Abdul Wahid	\N	\N	camera_department,cinematographer,director	tt14309446,tt1247692,tt8134742,tt14283442
nm0008255	A.K. Abdul	\N	\N	producer	tt0251320,tt0135161
nm0008256	Lone Abdul	\N	\N	editorial_department	tt0107917
nm0008257	Sam Abdul	\N	\N	director,actor,producer	tt0228791,tt0290551,tt0284635,tt0243318
nm0008259	Ben Abdul-Haqq	\N	\N	actor	tt0123817
nm0008260	Aminah Bakeer	\N	\N	director,actress,producer	tt5060872,tt0194228,tt2071758,tt0233607
nm0008261	Nadijah Abdul-Khalia	\N	\N	actress	tt0109504,tt2941268,tt5250780
nm0008262	Malek Abdul-Mansour	\N	\N	actor,miscellaneous	tt0113097,tt0101969,tt0100828,tt0080928
nm0008263	Navruz Abdul-ogli	\N	\N	actor,art_department,set_decorator	tt0093754,tt0491413,tt0103023
nm0008264	Mujahid Abdul-Rashid	\N	\N	actor	tt0119498,tt1837492,tt0137234,tt0094510
nm0008265	Hakeem Abdul-Samad	1975	\N	actor,composer,soundtrack	tt0092974,tt0090395,tt0095655,tt0077003
nm0008266	Yasmine Abdul-Wahid	\N	\N	actress	tt0111256
nm0008267	Abdulla	\N	\N	camera_department	tt0082004,tt0178845,tt0189608,tt0189120
nm0008268	Nurullo Abdullayev	1948	\N	actor	tt0089403,tt1656192,tt0309382,tt0899178
nm0008269	Natella Abdulayeva	\N	\N	costume_designer	tt0170249,tt0092186,tt0217594
nm0008270	Greg Abdulian	\N	\N	miscellaneous	tt0119141
nm0008271	Bangin Abdulkadir	\N	\N	actor	tt0111851
nm0008272	Dzhamila Abdulkaim	\N	\N	actress	tt0275254
nm0008273	Sherali Abdulkajsov	1951	2021	actor	tt0309922,tt0170259,tt0899178,tt3997544
nm0008274	M. Abdulkhabirov	\N	\N	\N	\N
nm0008275	Tessa Abdull	\N	\N	miscellaneous,producer,actress	tt0154147,tt0111987,tt0108756,tt0374277
nm0008276	Abdulla	1899	1969	actor	tt0029034
nm0008277	Ali Abdulla	\N	\N	actor	\N
nm0008278	Nadvar Karim Abdulla	\N	\N	actor	tt0118332
nm0008279	Nassar Abdulla	\N	\N	actor,location_management,production_manager	tt0347473,tt1024943,tt0083987,tt1980970
nm0008280	Achmed Abdullah	1881	1945	writer	tt0026643,tt0012541,tt0016913,tt0012012
nm0008281	Akeem Abdullah	\N	\N	actor	tt0251129
nm0008282	Eve Abdullah	\N	\N	actress	\N
nm0008283	Fauzi Bin Abdullah	\N	\N	art_department	tt0137494
nm0008284	Francis Abdullah	\N	\N	transportation_department	tt0137494
nm0008285	Hussein Abdullah	\N	\N	actor	tt0269448
nm0008286	Joe Abdullah	1926	1999	actor	tt0052479,tt0042142,tt0041061,tt0082766
nm0008287	Kweku Abdullah	\N	\N	miscellaneous,art_department,director	tt0274558,tt0112688,tt0203536,tt0114550
nm0008288	Liza Abdullah	\N	\N	actress	tt2393502,tt15755028,tt32262238,tt0121063
nm0008289	Mohammed Abdullah	\N	\N	actor	tt0061334
nm0008290	Mohsin Abdullah	\N	\N	actor,writer,miscellaneous	tt0044360,tt0057332,tt0139237,tt0057699
nm0008291	Rafiq Abdullah	\N	\N	writer	tt0092691,tt0080447,tt30609266
nm0008292	Raheem Abdullah	\N	\N	actor	tt0251129
nm0008293	Sarah Abdullah	\N	\N	actress,manager,talent_agent	tt0061960,tt0060076
nm0008294	Shareefah Abdullah	\N	\N	actress	tt0147016
nm0008295	Siti Abdullah	\N	\N	actress	tt0112495
nm0008296	Sony Abdullah	\N	\N	actor	tt0280127,tt0280016,tt6567404,tt6573580
nm0008297	Yuhara Abdullah	\N	\N	actress	tt0044483
nm0008298	Zaki Abdullah	\N	\N	camera_department	tt0098544
nm0008299	Zauther Abdullah	\N	\N	\N	\N
nm0008300	Abdusalom Abdullayev	1951	\N	production_designer,art_department	tt0089403,tt0252110,tt0262386,tt0294526
nm0008301	Allovuddin Abdullaev	1965	2022	actor,production_manager,miscellaneous	tt14046172,tt1670620,tt0170259,tt0101508
nm0008302	Bairam Abdullayev	1935	2013	writer,director	tt0111785,tt0266492,tt0311580,tt5684230
nm0008303	Davron Abdullayev	1947	\N	cinematographer,director	tt0196125,tt0152509,tt3143318,tt0263580
nm0008304	Farkhad Abdullayev	1957	\N	actor	tt15823022,tt0263887,tt5341442,tt5116564
nm0008305	Farman Abdullayev	1954	2013	actor	tt1510821,tt4277050,tt0267078,tt1198148
nm0008306	Kyazim Abdullayev	\N	\N	actor	tt0306639,tt10035352,tt1330214,tt0175948
nm0008308	Teymur Abdullayev	\N	\N	sound_department,camera_department	tt0111789,tt8564900,tt2791034,tt0965357
nm0008309	Gulsara Abdullayeva	1948	\N	actress	tt2262101,tt0089403,tt0266070,tt2933432
nm0008310	Abdulmalek	\N	\N	\N	\N
nm0008311	Aleksandr Abdulov	1953	2008	actor,writer,director	tt0347690,tt0092879,tt1037022,tt0096329
nm0008312	Omar Abdulov	\N	\N	actor	tt0037914
nm0008313	Osip Abdulov	1900	1953	actor	tt0029356,tt2386486,tt0169216,tt0033119
nm0008314	Vsevolod Abdulov	1942	2002	actor,archive_footage	tt0078655,tt0173493,tt0353501,tt5038382
nm0008315	Arif Abdurakhmanov	\N	\N	production_designer	tt1402414,tt0230999,tt0286517,tt1852896
nm0008316	Daniar Abdurakhmanov	\N	\N	production_designer	tt9159784,tt0247023
nm0008317	Gulnara Abdurakhmanova	\N	\N	actress	tt0275716
nm0008318	Umbe Adan	\N	\N	sound_department	tt0929236,tt2271697,tt0175997,tt0157202
nm0008319	Iso Abdurashidov	1947	2018	actor	tt0089403,tt0300497,tt1394464,tt3997544
nm0008320	Khabibullo Abdurazakov	1937	2021	actor	tt1212096,tt5335202,tt5356016,tt0170778
nm0008321	Talkun Abdureheim	\N	\N	actress	tt0112365
nm0008322	Umar Abdurrahamn	\N	\N	actor	tt0104057
nm0008323	Bekari Abdurzak	\N	\N	actor	tt0085248
nm0008324	Shavkat Abdusalamov	1936	\N	production_designer,actor,art_director	tt0382129,tt2262101,tt2217919,tt0258330
nm0008325	I. Abdusalimov	\N	\N	\N	\N
nm0008326	Abduraim Abdurvakhabov	\N	\N	actor	tt0386703,tt29432686,tt29432664,tt6764310
nm0008327	Sapar Abduzhalilov	\N	\N	actor	tt0055848
nm0008328	Harry Abdy	1889	1959	actor	tt0347805,tt0122200,tt0351036,tt0032213
nm0008329	Iya Abdy	1897	1992	actress	tt0025313
nm0008330	Pamela Abdy	\N	\N	producer,miscellaneous,actress	tt0333766,tt8722346,tt0125664,tt1216491
nm0008331	Ernest Abdyjaparov	1961	\N	writer,director,producer	tt0470524,tt1050089,tt0122283,tt3395316
nm0008332	Aktan Arym Kubat	1957	\N	writer,director,producer	tt0166503,tt0301587,tt1646979,tt5612426
nm0008333	Mirlan Abdykalykov	1982	\N	actor,director,writer	tt28803508,tt3894478,tt10907844,tt0166503
nm0008334	Gulnara Abdykalykova	\N	\N	miscellaneous	tt0263262
nm0008335	Abe	\N	\N	\N	tt0114427
nm0008336	Atsushi Abe	1981	\N	actor,soundtrack	tt4618398,tt1900986,tt1941466,tt5944526
nm0008337	Carolyn H. Abe	\N	\N	editorial_department	tt0080934,tt0087096,tt0088571,tt0078757
nm0008338	Chigusa Abe	\N	\N	actress	tt0100540
nm0008339	Erika Abe	\N	\N	make_up_department,producer,executive	tt4799066,tt1971354,tt1186633,tt1236373
nm0008340	Frank Abe	1951	\N	actor,director,writer	tt0269107,tt0125534,tt0074518,tt0406729
nm0008342	Gyu Abe	\N	\N	actor	tt0128497
nm0008343	Hijiri Abe	\N	\N	actress	tt0287615,tt8473430,tt9093764,tt0229204
nm0008344	Hikari Abe	\N	\N	actress	tt0114134
nm0008345	Hirohide Abe	\N	\N	editor,sound_department	tt0266308,tt0114413,tt0133170,tt5493172
nm0008346	Hiroshi Abe	1964	\N	actor,archive_footage	tt1087578,tt0188640,tt5294966,tt4930614
nm0008347	Hisashi Abe	\N	\N	animation_department,art_director,art_department	tt0216651,tt0293416,tt1482965,tt0113799
nm0008348	Karen Abe	\N	\N	miscellaneous,writer,camera_department	tt13417220,tt15711284
nm0008349	Katsunori Abe	\N	\N	production_designer	tt0113159
nm0008350	Keiichi Abe	\N	\N	writer,animation_department,miscellaneous	tt0058652,tt0094153,tt0058178,tt8396880
nm0008352	Noriyuki Abe	1961	\N	director,art_department,assistant_director	tt0469008,tt0434725,tt1785394,tt0185133
nm0008353	Kunihiro Abe	1968	2018	animation_department,visual_effects,assistant_director	tt0923811,tt0348121,tt1726286,tt0243558
nm0008354	Kusuo Abe	1910	1965	actor,cinematographer	tt0044741,tt0055188,tt0198554,tt0198506
nm0008356	Kôbô Abe	1924	1993	writer,director,archive_footage	tt0061065,tt0058625,tt17594162,tt12268244
nm0008357	Mamoru Abe	\N	\N	art_director	tt0200768,tt8675536
nm0008358	Mariko Abe	\N	\N	actress	tt0074102
nm0008359	Mario Abe	\N	\N	actor	tt0092048
nm0008360	Masashi Abe	\N	\N	director,art_department,animation_department	tt0095327,tt5626028,tt1566528,tt0387724
nm0008361	Masato Abe	\N	\N	make_up_department	tt0083726,tt0080274,tt0083069
nm0008362	Matthew Abe	\N	\N	actor,producer,production_designer	tt2160391,tt2431882,tt0161485,tt1515420
nm0008364	Mike Abe	\N	\N	assistant_director	tt0073918,tt0083726,tt0074877,tt0077199
nm0008365	Mitsuo Abe	\N	\N	miscellaneous,stunts,visual_effects	tt0279112,tt0111822,tt0365499,tt0342767
nm0008366	Mitzi Abe	\N	\N	actress	tt0093429
nm0008367	Naoyuki Abe	\N	\N	actor,archive_footage	tt8228734,tt0164486,tt0061695
nm0008368	Nobito Abe	\N	\N	director,writer	tt0074999
nm0008369	Sadao Abe	1970	\N	actor	tt18815700,tt0907652,tt21944604,tt0805319
nm0008370	Sakuji Abe	\N	\N	script_department	tt0151178
nm0008371	Sandy Abe	\N	\N	producer,art_department	tt0243896,tt0252431,tt0416779,tt13339442
nm0008372	Satoru Abe	\N	\N	actor	tt0116767
nm0008374	Seiji Abe	1937	2012	producer,writer	tt0156214,tt0086683,tt0156678,tt0156675
nm0008375	Shûji Abe	\N	\N	producer,production_manager	tt23289160,tt1156395,tt2404217,tt3345472
nm0008376	Stan Abe	\N	\N	actor,producer	tt0058796,tt0202458,tt0204648,tt0115320
nm0008377	Susumu Abe	\N	\N	actor	tt1556263,tt0065588
nm0008378	Tadamichi Abe	\N	\N	producer	tt0293416,tt0117876,tt0229432,tt0168450
nm0008379	Tak W. Abe	\N	\N	producer	tt0117876,tt0109151
nm0008380	Takashi Abe	\N	\N	animation_department,art_department	tt0142250,tt0067286,tt0140703,tt0184881
nm0008381	Tatsurô Abe	1973	\N	actor	tt0142779,tt2114006,tt0167577
nm0008382	Teruaki Abe	\N	\N	art_director,production_designer,set_decorator	tt0056142,tt0050251,tt13364334,tt0056709
nm0008383	Bin Amatsu	1921	1979	actor	tt0199907,tt0165379,tt0301803,tt0073756
nm0008384	Tôru Abe	1917	1993	actor	tt0046438,tt0080274,tt0080159,tt0364404
nm0008385	Tsutomu Abe	\N	\N	director,actor,assistant_director	tt0259343,tt2100562,tt10525540
nm0008386	Tsutomu Abe	\N	\N	camera_department,assistant_director	tt1050160,tt1645048,tt0102488,tt1498995
nm0008387	Tsuyoshi Abe	\N	\N	stunts,actor,assistant_director	tt0490086,tt0266915,tt2820852,tt0449088
nm0008388	Y. Hero Abe	\N	\N	actor	tt0114436,tt0113341,tt0108724,tt0113500
nm0008389	Yoshi Abe	\N	\N	camera_department,miscellaneous	tt5533758,tt31557789,tt0120495,tt23062300
nm0008390	Yoshitoshi Abe	1971	\N	animation_department,writer,art_department	tt30761645,tt0380113,tt10662504,tt11296310
nm0008391	Yukio Abe	\N	\N	art_director,production_designer,art_department	tt0078187,tt0088983,tt2017720,tt1647467
nm0008393	Yuriko Abe	1933	\N	actress	tt0057697,tt0058279,tt0069260,tt0203605
nm0008395	Yûichi Abe	\N	\N	director,stunts,art_department	tt1682376,tt0493100,tt5678870,tt4717202
nm0008396	Meron Abebe	\N	\N	actress,miscellaneous	tt0092325,tt0166276,tt0139194,tt0114928
nm0008397	Alain Abecassis	\N	\N	actor	tt0180273
nm0008398	Catherine Abecassis	\N	\N	actress,director,writer	tt0104658,tt1572771,tt0233232,tt29740030
nm0008399	Eliette Abecassis	1969	\N	writer,director	tt0189630,tt1987018,tt3609090,tt0422858
nm0008400	Eryck Abecassis	1956	\N	composer	tt6037866,tt2385227,tt8629728,tt0440463
nm0008401	Maryline Abecassis	\N	\N	actress	tt0305243,tt0085513
nm0008402	Paule Abecassis	\N	\N	actress	tt0157016,tt0450843,tt7461432,tt4775410
nm0008403	Shlomo Abecassis	\N	\N	production_designer,actor	tt0180273,tt0387448
nm0008404	Yaël Abecassis	1967	\N	actress,producer,director	tt0313126,tt1676462,tt0189630,tt13027368
nm0008405	Elie-G. Abécéra	\N	\N	writer,actor,director	tt7927668,tt0168432,tt0196289,tt0806905
nm0008407	Akab Abed El-Hai	\N	\N	actor	tt0152371
nm0008408	Hisham Abed	\N	\N	cinematographer,director,producer	tt0489598,tt7259746,tt3733214,tt7759016
nm0008409	Ramzi Abed	1973	\N	actor,director,miscellaneous	tt29107222,tt0306158,tt0312003,tt1508689
nm0008410	Rodrigo Abed	1972	\N	actor,writer,director	tt1086365,tt0436175,tt0391908,tt1955044
nm0008411	Esther Abed-Alnour	\N	\N	actress	tt0110693
nm0008412	Youssef Abed-Alnour	\N	\N	actor	tt0110693,tt0107752,tt7830584,tt0096586
nm0008413	Youssef Abedalnour	\N	\N	casting_department	tt0102511
nm0008414	Barbara Abedi	\N	\N	actress	tt0113957
nm0008415	Massoud Abedi	\N	\N	producer,miscellaneous,production_manager	tt0244479,tt0170107,tt0157262,tt0815041
nm0008416	Hossein Abedini	\N	\N	actor,archive_footage	tt0233841,tt0416960,tt4730990,tt30517769
nm0008417	Kian Abedini	\N	\N	actor	tt0216250,tt1708394
nm0008418	Lauren Parissa Abedini	1989	\N	actress	tt0216250
nm0008419	Anuschka Abee	\N	\N	make_up_department	tt0111183,tt0096372,tt0249982,tt0098721
nm0008420	James Brih Abee	\N	\N	producer,director,assistant_director	tt0266563,tt0775364,tt1640199,tt0802425
nm0008421	Steve Abee	\N	\N	actor	tt0236471,tt6297830
nm0008422	Nick Abeel	1987	\N	actor,director,cinematographer	tt3907462,tt4374600,tt4049960,tt10314344
nm0008423	Tom Abeel	1947	\N	actor	tt0235953
nm0008424	Yves Abeel	\N	\N	camera_department	tt1256553,tt0499643,tt0313144,tt0169462
nm0008425	Henri Abehsera	\N	\N	actor	tt0257060
nm0008426	Ezequiel Abeijón	\N	\N	actor	tt0211347,tt0378867,tt0410316,tt0231015
nm0008427	Luis Abeijón	\N	\N	actor	tt0113941
nm0008428	Claude Abeille	1935	2023	producer,miscellaneous	tt0140888,tt0094777,tt0096968,tt0226097
nm0008429	Myriam Abeillon	\N	\N	actress,production_manager	tt0232293,tt1679579
nm0008430	Jean Abeillé	1938	\N	actor,director,writer	tt0088462,tt4731226,tt0091457,tt0163716
nm0008431	Alanah Abeis	\N	\N	sound_department	tt0116052
nm0008432	Abel Salcedo	\N	\N	actor,art_department	tt0265521,tt1741653
nm0008433	Alan Abel	1924	2018	actor,director,writer	tt0125263,tt0159434,tt0064855,tt14348202
nm0008434	Anne Abel	1976	\N	actress	tt0866425,tt0286482,tt0216522,tt0757201
nm0008435	Annemarie Abel	\N	\N	producer	tt0148403,tt1520869
nm0008436	Carlos Abel	\N	\N	actor	tt0093059,tt0161161,tt0233062
nm0008437	Cassi Abel	\N	\N	actress	tt0102492
nm0008438	Charles Abel	\N	\N	cinematographer,camera_department	tt0193731,tt0194389,tt0215228,tt0865313
nm0008439	Christa Abel	\N	\N	actress,archive_footage	tt0084250,tt0079469,tt0167948,tt0181630
nm0008440	Claudia Abel	\N	\N	actress	tt0097081
nm0008441	David Abel	1883	1973	cinematographer	tt0034862,tt0028333,tt0027125,tt0025164
nm0008442	Dominique Abel	1957	\N	actor,writer,director	tt2936884,tt1922645,tt0266031,tt21962898
nm0008443	Dominique Abel	\N	\N	director,actress,writer	tt0357033,tt8962546,tt8976900,tt0217237
nm0008444	Bodo Abel	\N	\N	actor	tt0102190,tt0098657
nm0008445	Ervin Abel	1929	1984	actor,archive_footage	tt0064542,tt0314947,tt0218653,tt0348332
nm0008446	Fernand Abel	\N	\N	actor	tt0064378,tt0253237,tt0253539,tt0258033
nm0008447	Gene Abel	\N	\N	art_director,production_designer,producer	tt0098375,tt0099458,tt0103102,tt0328376
nm0008448	Gregory Abel	\N	\N	miscellaneous	tt0190138,tt0117093
nm0008449	Gustav Abel	1902	1963	production_designer,art_director	tt0041680,tt0043528,tt0033177,tt0031782
nm0008451	Heinz Abel	\N	\N	production_manager,producer,assistant_director	tt0049876,tt0041330,tt0031763,tt0050148
nm0008452	Ilse Abel	1909	1959	actress	tt0027612,tt0028439,tt0032919,tt0249240
nm0008453	Inga Abel	1946	2000	actress	tt0108985,tt0088554,tt1784510,tt0112968
nm0008454	Ingo Abel	1966	\N	actor,miscellaneous	tt0108979,tt0092389,tt0880992,tt3609352
nm0008455	Irene Abel	1953	\N	editorial_department,editor	tt0149431,tt0108985,tt1711789,tt3110288
nm0008456	Jean-Luc Abel	\N	\N	actor	tt0105750,tt0104658,tt0487504,tt0344604
nm0008457	Jeanne Abel	\N	\N	director,writer,producer	tt0125263,tt0159434,tt0437780,tt0170980
nm0008458	Jim Abel	\N	\N	cinematographer,camera_department,writer	tt0318220,tt0160410,tt4074196,tt0773771
nm0008459	Joel Abel	\N	\N	actor	tt0106486,tt0109161,tt0102129
nm0008460	Jonathan Abel	\N	\N	actor,cinematographer	tt0094676,tt9162584,tt0107003
nm0008461	Joseph Patrick Abel	\N	\N	actor	tt0165859
nm0008462	José Abel	\N	\N	animation_department,director,visual_effects	tt0084516,tt0082509,tt0096787,tt0086964
nm0008463	Larry Abel	\N	\N	music_department,producer	tt0118617,tt0159876,tt0114047,tt0265987
nm0008464	Lloyd Abel	\N	\N	miscellaneous,camera_department,stunts	tt0092099,tt8107920,tt0441613
nm0008465	Lee Abell	\N	\N	actress	tt0187420,tt0053658,tt0056015,tt0186864
nm0008466	Lewis Abel	\N	\N	producer,production_manager,writer	tt0433309,tt0320000,tt3566726,tt0202513
nm0008467	Liane Abel Dietz	\N	\N	producer,casting_department,casting_director	tt0119282,tt2140373,tt0093873,tt0299172
nm0008468	Luisa Abel	\N	\N	make_up_department	tt0816692,tt15398776,tt1440345,tt1375666
nm0008469	Maria Abel	\N	\N	actress,casting_director	tt2342355,tt0257930,tt0321926
nm0008470	Marie-Jeanne Abel	\N	\N	make_up_department,actress	tt0110126,tt0234663,tt0349738,tt0303863
nm0008471	Marion Abel	\N	\N	miscellaneous	tt0184163,tt0185083,tt0163490,tt0861806
nm0008472	Mark Abel	\N	\N	camera_department	tt0102757
nm0008473	Mark Abel	\N	\N	actor	tt0075920
nm0008474	Mark Abel	\N	\N	editorial_department	tt0116727,tt0144574
nm0008475	Maurice Abel	\N	\N	camera_department,production_manager	tt0066721,tt0165592,tt0075512,tt0199230
nm0008476	Michael Abel	\N	\N	sound_department,actor,miscellaneous	tt0123034,tt0218080,tt0159797,tt0271708
nm0008477	Michelle Abel	\N	\N	actress,assistant_director,casting_department	tt0144715,tt0372370,tt2976160
nm0008478	Mike Abel	\N	\N	actor,sound_department,miscellaneous	tt0118051,tt0918538,tt1808544
nm0008479	Milton Abel	1928	2006	actor,music_department	tt0100200,tt36583450,tt10011138,tt10090392
nm0008480	Mohammed Abel	\N	\N	actor	tt0199850
nm0008481	Abel Monem	\N	\N	producer,miscellaneous,production_manager	tt2241075,tt2205579,tt4930012,tt0306734
nm0008482	Morten Abel	1962	\N	music_department,actor,composer	tt1333125,tt0338466,tt0417909,tt0107121
nm0008483	Nathan Abel	\N	\N	camera_department,editor,editorial_department	tt0117958,tt0120523,tt0468627,tt0156788
nm0008484	Rob Abel	\N	\N	\N	\N
nm0008485	Robert Abel	1937	2001	producer,director,writer	tt0084827,tt0068537,tt0054206,tt0477046
nm0008486	Robert Abel	1912	1987	writer	tt0052611,tt0044445,tt0046615,tt0041962
nm0008488	Rudolf Abel	\N	\N	actor	tt0089993,tt0090749
nm0008489	Rudolph E. Abel	1902	1974	producer,production_manager,director	tt0037742,tt0038112,tt0031320,tt0039065
nm0008490	Steffi Abel	\N	\N	miscellaneous	tt0116692
nm0008491	Tetyana Abel	\N	\N	\N	tt0261180
nm0008492	Thierry Abel	\N	\N	producer	tt0157134,tt0103646
nm0008493	Tommy Abel	\N	\N	actor	tt0080736
nm0008494	Ursula Abel	1915	1951	actress	tt0032227
nm0008495	Victor Abel	1892	\N	writer,director,producer	tt0461568,tt0451916,tt1215873,tt0461575
nm0008496	Walter Abel	1898	1987	actor,soundtrack,archive_footage	tt0038279,tt0033722,tt0037094,tt0034862
nm0008497	Willi Abel	\N	\N	actor	tt0067904
nm0008498	Gay Abel-Bey	\N	\N	producer,actress,casting_department	tt0191146,tt0115775,tt16533428,tt0086977
nm0008499	Alexander Abela	1965	\N	writer,director,cinematographer	tt0376205,tt0276313,tt2974818,tt2077908
nm0008500	Emanuel Abela	\N	\N	actor	tt0086476
nm0008501	Joe Abela	\N	\N	actor	tt0086476
nm0008502	Martina Abela	\N	\N	actress	tt0117815
nm0008503	Mr. Abela	\N	\N	actor	tt0170407
nm0008504	Pierre Abela	\N	\N	assistant_director,actor,production_designer	tt0098220,tt0126830,tt0155522,tt0093652
nm0008505	François Abelanet	\N	\N	production_designer	tt0365190,tt2027265,tt0234041,tt0168740
nm0008506	Lionel Abelanski	1964	\N	actor	tt0783233,tt2870756,tt0170705,tt2102355
nm0008507	Michael Abelar	1920	2004	actor	tt0086822,tt0112744,tt0078681,tt0056757
nm0008508	Sylvain Abelard	\N	\N	actor	tt30024814
nm0008509	Allan Abelardo	\N	\N	animation_department,art_department	tt0119273,tt2277728,tt33077022,tt0112197
nm0008510	Maria Saret	\N	\N	director,assistant_director,script_department	tt0409005,tt0891463,tt0069783,tt2287805
nm0008511	Richard Abelardo	\N	\N	director,special_effects,visual_effects	tt0360737,tt0778124,tt1762250,tt0764746
nm0008512	Gert Abelbeck	\N	\N	director,writer	tt0163769,tt1591048,tt1590952
nm0008513	Ed Abele	\N	\N	sound_department	tt0080661,tt0074901,tt0075729,tt0071130
nm0008514	Jim Abele	1960	\N	actor	tt0145734,tt0162065,tt1578873,tt0285331
nm0008515	Joe Abele	\N	\N	miscellaneous,visual_effects,art_department	tt0120241,tt0120684,tt1524905,tt1840388
nm0008516	María Abelenda	\N	\N	actress	tt0052833,tt0044587,tt0043656,tt0455283
nm0008517	Lito Abelera	\N	\N	actor	tt0209610,tt0205635,tt0209577
nm0008518	Edward Abeles	1869	1919	actor	tt0003698,tt0009205,tt0004866,tt0004514
nm0008519	Fredric Abeles	\N	\N	camera_department,cinematographer,director	tt0083336,tt0097366,tt0080837,tt1113794
nm0008520	Jordan Abeles	\N	\N	actor	tt0090053
nm0008521	Joshua Abeles	\N	\N	miscellaneous,executive	tt0098635,tt0094921
nm0008522	Mike Abeles	\N	\N	sound_department	tt0106768
nm0008523	Nicolás Abeles	\N	\N	actor	tt0124312,tt0227883,tt2449716,tt0222480
nm0008524	Scott Abeles	\N	\N	miscellaneous	tt0114639,tt0158274
nm0008526	Alan Abelew	1947	2019	actor,producer,miscellaneous	tt0116126,tt0118276,tt0071008,tt0082213
nm0008527	Sheryl Abelew	\N	\N	make_up_department,miscellaneous	tt0081421,tt0084749
nm0008528	Azinhal Abelho	1911	1979	director,writer	tt0128920,tt0129306,tt9204116,tt0161604
nm0008529	Maria João Abelho	\N	\N	miscellaneous	tt0101739,tt0112380,tt0099723,tt0099605
nm0008530	Raymond Ferris Abelin	\N	\N	editor	tt0108038
nm0008531	Dino Abelino	\N	\N	actor	tt0069214
nm0008532	Antonine Abelishvili	\N	\N	actress	tt0261935
nm0008533	Alistair Abell	\N	\N	actor,casting_department,miscellaneous	tt1700841,tt0368578,tt0214341,tt0492680
nm0008534	Anna-Marie Abell	\N	\N	actress	tt0210815
nm0008535	G. Roger Abell	\N	\N	art_department	tt0119488,tt0325980,tt0108238,tt0102059
nm0008536	Keith Abell	\N	\N	producer	tt0203230,tt0151582,tt0120680,tt0128977
nm0008537	Kevin Abell	\N	\N	actor	tt0068413
nm0008538	Kjeld Abell	1901	1961	writer	tt0126635,tt0136993,tt0123173,tt0125526
nm0008539	Kristian Abell	\N	\N	sound_department	tt0115243,tt0143874,tt0215392,tt0120860
nm0008541	Roslyn Abell	\N	\N	costume_department	tt0163154
nm0008542	Tammy Abell	\N	\N	costume_department,actress,miscellaneous	tt0270346,tt0415278,tt0267678,tt1527727
nm0008543	Tim Abell	\N	\N	actor,miscellaneous,producer	tt0277434,tt4172430,tt2334879,tt7737786
nm0008544	Jami Abell	\N	\N	miscellaneous,production_manager	tt0094964,tt0097815,tt0098188,tt0097276
nm0008545	Aljin Abella	1985	\N	actor	tt31184028,tt1121628,tt1530541,tt0108709
nm0008546	Daniel Abella	\N	\N	actor	tt0242750
nm0008547	Grazio Abella	\N	\N	production_manager,producer,miscellaneous	tt0103566,tt0429378,tt0113133,tt2238827
nm0008548	Helena Dalli	\N	\N	actress	tt0087258,tt14220360,tt4202558,tt15275848
nm0008549	Rafael Abella	1917	2008	miscellaneous	tt0497688,tt1151438,tt1824677,tt0418369
nm0008550	Rafael Jorge Abella	\N	\N	director	tt0277979
nm0008551	Raúl Abella	\N	\N	actor	tt0279501
nm0008552	Ricardo Abella	\N	\N	writer	tt0074892,tt0459725
nm0008553	Bernard Abellada	\N	\N	casting_director,miscellaneous,producer	tt0257568,tt0421729,tt1510929,tt0364616
nm0008554	Alejandro Abellan	1965	\N	actor,miscellaneous	tt0120657,tt0308208,tt0375785,tt0304669
nm0008555	Elsa Abellana	\N	\N	editorial_department,editor	tt0093137,tt2509374,tt0478690,tt0111327
nm0008556	Rey 'PJ' Abellana	\N	\N	actor,soundtrack,archive_footage	tt0346179,tt0345773,tt0273080,tt6061574
nm0008557	Dominique Abellard	\N	\N	actor	tt0184115
nm0008558	Connie Abellera	\N	\N	editorial_department	tt0088939,tt0085112
nm0008559	Kristina Abelli Elander	\N	\N	costume_department,costume_designer,special_effects	tt0093847,tt0104388,tt0889200,tt0404228
nm0008560	Bissa Abelli	1947	\N	actress	tt0080419,tt0090637,tt0077899
nm0008561	Bror Abelli	1880	1962	actor,director,writer	tt0014070,tt0014162,tt0015100,tt0036030
nm0008562	Ingri Abelli	1909	1984	actress	tt0014162
nm0008563	Caron Abellira	\N	\N	actress	tt0094637
nm0008564	Jacques Abellira	\N	\N	actor	tt0124854,tt0385147
nm0008565	Remi Abellira	1957	\N	actor	tt0080240,tt0124854,tt0075483,tt0062568
nm0008566	Amado Abello	\N	\N	actor	tt0060098
nm0008567	Ana Maria Abello	\N	\N	actress,archive_footage	tt0344744,tt21977358,tt0449551,tt0314533
nm0008568	Jarrett Abello	\N	\N	actor	tt0120510
nm0008569	Jorge Abello	\N	\N	editor,producer	tt0092761,tt27758915,tt16220416,tt0178266
nm0008570	Jorge Enrique Abello	1968	\N	actor,writer,producer	tt0233127,tt0932774,tt0224945,tt1543294
nm0008571	Luigi Abello	\N	\N	actor	tt0084838
nm0008572	Maribel Abello	\N	\N	actress	tt0797094,tt1841055,tt0398457,tt0356249
nm0008574	William Abello	1959	\N	production_designer,art_department,art_director	tt0096163,tt26776353,tt0110907,tt1885102
nm0008575	Yoel Abells	\N	\N	miscellaneous	tt0164110
nm0008576	Ketty Abelly	\N	\N	actress	tt0035302
nm0008577	Antonio Abellán	\N	\N	writer,director,script_department	tt0154351,tt0447779,tt0149027
nm0008578	Ismael Abellán	1948	2008	actor	tt0093758,tt0485571,tt0079518,tt0101287
nm0008579	Stephanie Abelman	\N	\N	script_department	tt0103003,tt0114321,tt0100122,tt0101198
nm0008580	Joe Abeln	\N	\N	camera_department,location_management,miscellaneous	tt0116778,tt0083767,tt0082622,tt0100827
nm0008581	Darryll Abels	\N	\N	actor	tt0109529
nm0008582	Gregory Abels	1941	\N	actor	tt0072559,tt0076567,tt0063967,tt0408366
nm0008583	Lauren Abels	\N	\N	actress,music_department	tt0107659,tt0114016,tt0114938,tt0109514
nm0008584	Michael Abelski	\N	\N	actor	tt0105826
nm0008585	Ben Abelsma	\N	\N	art_department,transportation_department	tt0097650,tt0098658,tt0104568
nm0008586	Arthur Abelson	1942	1997	actor,miscellaneous	tt0060034,tt0065314,tt0092222,tt0075836
nm0008587	Artie Abelson	\N	\N	casting_department	tt0104516,tt0106906,tt0116658
nm0008588	Ethel Abelson	\N	\N	music_department	tt0116242,tt0102175,tt0100168
nm0008589	Gabe Abelson	\N	\N	writer,producer,actor	tt0106053,tt0373577,tt0468999,tt1478984
nm0008591	Pepijn Aben	\N	\N	sound_department,miscellaneous,cinematographer	tt1100908,tt2171875,tt0120884,tt0945532
nm0008592	Lisa Abend	\N	\N	actress	tt0169376,tt0361897
nm0008593	Sheldon Abend	1929	2003	producer,actor	tt0218922,tt0081753,tt0166322,tt0096953
nm0008595	Al Abendano	\N	\N	art_department,miscellaneous,camera_department	tt0099474,tt0105213,tt0117497,tt0096114
nm0008596	Michael Abene	1942	\N	music_department,composer,soundtrack	tt0097322,tt0089217,tt0077141,tt1062911
nm0008597	Peter Abenheim	\N	\N	actor,writer	tt0183884,tt0046629
nm0008598	Ted Abenheim	\N	\N	producer,miscellaneous,director	tt5815624,tt0790464,tt0473188,tt0313285
nm0008599	Maurizio Abeni	\N	\N	music_department,composer,soundtrack	tt0387575,tt0338325,tt0095354,tt26597666
nm0008600	Charlotte Abenius	\N	\N	miscellaneous	tt0280223
nm0008601	Nathalie Abensour	\N	\N	cinematographer,camera_department	tt0109441,tt0282249,tt0094095,tt0252720
nm0008602	Brian Abent	\N	\N	actor	tt0091020
nm0008603	Angela Aber	\N	\N	actress	tt0076052
nm0008604	Billy Aber	\N	\N	actor	tt0016676,tt0235502
nm0008605	Christopher Aber	1959	\N	miscellaneous,actor,stunts	tt0942385,tt1204342,tt1661382,tt0120595
nm0008606	Chuck Aber	1945	\N	actor,soundtrack	tt0102926,tt0815236,tt0083767,tt0062588
nm0008607	Jean-Vincent Aber	\N	\N	composer	tt0249786
nm0008608	Jeannine Aber	\N	\N	actress	tt0069811,tt2117998
nm0008609	Johnny Aber	1916	1999	actor,archive_footage	tt0235076,tt0234751,tt0234861,tt0234787
nm0008610	Lynn A. Aber	1937	\N	script_department,actor,camera_department	tt0080736,tt0082213,tt0064231,tt0080437
nm0008611	Michael Stuart	1915	2004	actor	tt0022753,tt0022261,tt0019958,tt0024656
nm0008612	Fontxo Aberasturi	\N	\N	actor	tt0107116
nm0008613	Andrés Aberasturi	1948	\N	director,actor,writer	tt0243842,tt0163055,tt0098794,tt0454047
nm0008614	J. Abercomie	\N	\N	actor	tt0029944
nm0008615	Duke of Abercorn	1934	\N	\N	tt0211388
nm0008616	Brian Abercrombie	\N	\N	actor	tt0249378,tt0308887,tt0123206
nm0008617	Jabie Abercrombe	1937	2020	actress	tt0124565
nm0008618	Jo Abercrombie	\N	\N	actress	tt0107653,tt0297625,tt0400036,tt14617956
nm0008619	Kevin Abercrombie	\N	\N	stunts,actor,miscellaneous	tt0449088,tt7638348,tt0181689,tt0133152
nm0008620	Lucy Abercrombie	\N	\N	casting_director,casting_department	tt0094525,tt0097891,tt0084987
nm0008621	Tyla Abercrumbie	\N	\N	actress,archive_footage	tt6294706,tt8303474,tt7958782,tt4655480
nm0008622	Robert Aberdeen	1962	\N	actor,camera_department,stunts	tt1895332,tt2125453,tt7440726,tt12197698
nm0008623	Keith Aberdein	1943	\N	writer,script_department,producer	tt0285393,tt0138875,tt0110311,tt0086587
nm0008624	Chris Aberdien	\N	\N	stunts,miscellaneous	tt0246460,tt0119095
nm0008625	Flávia Aberg Cobo	\N	\N	actress	tt0117684,tt0096325
nm0008626	Myra Aberg	\N	\N	actress	tt0204850
nm0008627	Sally Aberg	\N	\N	sound_department	tt0094869
nm0008628	Siv Marta Aberg	\N	\N	actor	tt0059298
nm0008629	Sivi Aberg	1944	2025	actress	tt0059968,tt0061277,tt0058816,tt0072260
nm0008630	Ariel Aberg-Riger	\N	\N	actress	tt0089905
nm0008631	Avital Abergel	1977	\N	actress,archive_footage	tt0484339,tt0846758,tt0206517,tt0206456
nm0008632	Odile Abergel	\N	\N	assistant_director,writer,director	tt0437525,tt0181978,tt1045894,tt0120471
nm0008633	Laurence Aberhart	\N	\N	camera_department	tt0095709
nm0008634	William Aberhart	1878	1943	writer,archive_footage	tt1662642
nm0008635	Calvin Aberle	\N	\N	sound_department,editorial_department	tt0088454,tt0089217,tt0087837,tt0087134
nm0008636	Douglas Aberle	\N	\N	animation_department,actor,director	tt0166399,tt0233575,tt0089908,tt0356242
nm0008637	Elke Aberle	1950	\N	actress,archive_footage	tt0058284,tt0067971,tt1669580,tt0311508
nm0008638	Erich Aberle	1922	2002	actor	tt1611187,tt0075430,tt0064662,tt0277509
nm0008639	Matthias Aberle	\N	\N	director,editor,camera_department	tt4005652,tt7024764,tt1556202,tt3206482
nm0008640	Betty Aberlin	1942	\N	actress,writer,soundtrack	tt0062588,tt0300051,tt0120655,tt0873886
nm0008641	Viola Aberlé	1935	\N	actress	tt0083922,tt0165791
nm0008642	Hugo Aberman	\N	\N	actor	tt0097302,tt0098732,tt0106616,tt0202199
nm0008643	Larry Aberman	\N	\N	actor	tt0074379
nm0008644	Dave Abernatha	\N	\N	camera_department	tt0138353,tt0283901
nm0008645	Abby Abernathy	\N	\N	actress	tt0176579,tt0127034,tt0108181
nm0008646	Ann Abernathy	\N	\N	actress	tt0086827,tt0094572,tt0115225
nm0008647	Christine Abernathy	\N	\N	assistant_director	tt0110518
nm0008648	Craig Abernathy	\N	\N	actor	tt0076064
nm0008649	Dan Abernathy	\N	\N	music_department,sound_department	tt0114814,tt0475239,tt0125211,tt2961330
nm0008650	Don Abernathy	\N	\N	sound_department,actor,camera_department	tt2490326,tt4372768,tt3422998,tt0243441
nm0008651	Donzaleigh Abernathy	1957	\N	actress,location_management,casting_department	tt0161233,tt1928330,tt1520211,tt1632701
nm0008652	Dwayne Abernathy	\N	\N	miscellaneous	tt0118771,tt0116126,tt0160916,tt0199290
nm0008653	Judy Abernathy	\N	\N	actress	tt0128707
nm0008654	Karen Abernathy	\N	\N	actress	tt0102984,tt1898066
nm0008655	Kwame L. Abernathy	\N	\N	miscellaneous,art_department,location_management	tt0110006,tt0096402,tt0191133,tt1489660
nm0008656	Lewis Abernathy	\N	\N	actor,writer,special_effects	tt0120338,tt0097179,tt0322008,tt0110071
nm0008657	Louisa Abernathy	1949	\N	actress	tt0278435,tt10039344,tt0335245,tt2229838
nm0008658	Master Abernathy	\N	\N	actor	tt0004743
nm0008659	Ralph Abernathy	1926	1990	archive_footage	tt0231773,tt0254418,tt0257296,tt0092999
nm0008660	Ric Abernathy	\N	\N	actor,miscellaneous	tt0094021,tt0096302
nm0008661	Tom Abernathy	1968	\N	writer,actor,miscellaneous	tt2350892,tt0433547,tt3451374,tt4339748
nm0008662	Jane Abernethy	\N	\N	\N	\N
nm0008663	Kirsti Abernethy	\N	\N	camera_department,cinematographer	tt4190530,tt0460740,tt1858481,tt0906734
nm0008664	Lesley Abernethy	\N	\N	costume_designer,costume_department	tt0342258,tt0377752,tt0289635,tt11725900
nm0008665	Rosslyn Abernethy	1952	2020	production_manager,miscellaneous,actress	tt0106950,tt0111301,tt0881320,tt0093988
nm0008666	Tom Abernethy	1954	\N	actor	tt0080928,tt2104667
nm0008667	Seth C. Abero	\N	\N	actor	tt0250135
nm0008668	Tiruwork Aberra	\N	\N	editor	tt0104038
nm0008669	Hilton Aberrian	\N	\N	actor	tt0259450
nm0008670	Arline Abers	1910	1977	actress	tt0024356,tt0370419,tt0121360
nm0008671	Mimi Abers	\N	\N	visual_effects	tt0119116,tt0418279,tt0113855,tt0407304
nm0008672	Will-Dog Abers	1973	\N	actor,composer,music_department	tt0989757,tt0356910,tt0391304,tt0315733
nm0008673	Helen Aberson	1907	1999	writer	tt0033563,tt0046593,tt7698712
nm0008674	Michael Abert	\N	\N	camera_department,cinematographer	tt0104809,tt0117408,tt0094182,tt13711826
nm0008675	Richard Abert	\N	\N	actor	tt0030093
nm0008676	Allison Aberuathy	\N	\N	actress	tt0097364
nm0008677	Lawrence J. Aberwood	\N	\N	actor	tt0057480,tt0061408,tt0054604,tt0054035
nm0008678	Guram Abesadze	1940	\N	actor,editor	tt0143637,tt0089957
nm0008679	Kapiton Abesadze	1900	1987	actor	tt0261634,tt0274425,tt0269426,tt0265682
nm0008680	Mikhail Abesadze	\N	\N	actor,art_department,assistant_director	tt0268709,tt0262085,tt27737950,tt0249816
nm0008681	Otar Abesadze	1934	1980	director,writer	tt0275917,tt0274645,tt0281840,tt0275255
nm0008682	Erwin Abesamis	\N	\N	production_manager,assistant_director	tt0415728,tt10547934,tt0220354,tt0409808
nm0008683	Adam Abeshouse	1961	2024	music_department,sound_department,actor	tt0159876,tt0080716,tt13222952,tt5869362
nm0008684	Antonio Abete	\N	\N	actor	tt0446414,tt7705406,tt1814750,tt0363861
nm0008688	Dennis Abey	1932	\N	director,producer,miscellaneous	tt0063823,tt0290204,tt0073447,tt0098909
nm0008689	Trelicia Gunawardena	\N	\N	actress	tt0084190,tt0863119,tt0090574,tt0080409
nm0008690	Damitha Abeyratne	\N	\N	actress,music_department	tt0381630,tt3117642,tt11412130,tt7687332
nm0008691	Kurunaratne Abeysekera	\N	\N	writer,music_department	tt15807080,tt15807062,tt15807024,tt9632182
nm0008692	Tissa Abeysekera	1937	2009	writer,actor,director	tt2339742,tt1244170,tt0375189,tt2335388
nm0008693	Wasantha Obesekara	1937	2017	writer,director,actor	tt1244103,tt7906312,tt7799326,tt8002628
nm0008694	Sarath Abeysena	\N	\N	producer	tt0143222
nm0008695	Antonio Abeyta	\N	\N	actor	tt0083041
nm0008696	Bill Abeyta	\N	\N	camera_department	tt0081760
nm0008697	George M. Abeyta	\N	\N	art_department	tt0113729,tt0109226,tt0113158
nm0008698	John Christopher Abeyta	\N	\N	actor	tt0092559
nm0008699	Paul Abeyta	\N	\N	writer,producer,miscellaneous	tt0364843,tt0112097,tt1270481,tt2965454
nm0008700	Robert Abeyta	\N	\N	music_department	tt0112575,tt5102426,tt0149215,tt5153902
nm0008701	Belle Abeytia	\N	\N	actress	tt0066917
nm0008702	Denzil P. Abeywardena	\N	\N	casting_department,director,assistant_director	tt0274498,tt7867726,tt0110373,tt0107755
nm0008704	Joe Abeywickrama	1933	2011	actor,writer	tt0188164,tt1244170,tt0173229,tt15204398
nm0008705	Doris Abeßer	1935	2016	actress	tt1063745,tt0057647,tt0054019,tt0328707
nm0008706	Franziskus Abgottspon	1941	\N	actor	tt0094791,tt2659942,tt0079548,tt0174411
nm0008707	Guy Abgrall	\N	\N	actor	tt0420388,tt0120494,tt0098534,tt1059949
nm0008708	Marie-Annick Abgrall	\N	\N	actress	tt0084481
nm0008709	Ceuru Abgui	\N	\N	actor	tt0065489
nm0008710	Lütfäli Abdullayev	1914	1973	actor	tt0037520,tt4263976,tt4261760,tt4258424
nm0008711	Abhijeet	1958	\N	music_artist,music_department,writer	tt0347473,tt0109555,tt1024943,tt0120540
nm0008712	Abhijit	\N	\N	actor,writer,director	tt13801640,tt14149012,tt14728872,tt4966270
nm0008713	Abhimanyu Singh	1979	\N	actor,writer,archive_footage	tt1261047,tt9531772,tt0323013,tt7060460
nm0008714	Neelkanth Abhyankar	1926	2000	music_department,composer	tt0213499,tt0261965,tt0208892
nm0008715	Sanjeev Abhyankar	\N	\N	music_department,actor,soundtrack	tt0233808,tt0116950,tt0379370,tt0449189
nm0008716	Abi Ofarim	1937	2018	actor,director,soundtrack	tt0352994,tt1369679,tt0057039,tt1466941
nm0008717	Marga Abi Ramia	\N	\N	actress	tt0085216,tt0425008,tt0138222,tt0207917
nm0008718	Jacqueline Abi-Ad	\N	\N	actress	tt0120188
nm0008719	Joseph Abi-Ad	\N	\N	actor	tt0120188
nm0008720	Michelle Abi-Nader	\N	\N	producer	tt0775458,tt0775505,tt0181904
nm0008721	Alba Abia	\N	\N	actress	tt0217791
nm0008722	Félix Abia	\N	\N	miscellaneous	tt0217791
nm0008723	Philippe Abia	\N	\N	actor	tt0073417
nm0008724	Dawlat Abiad	1894	1978	actress,producer	tt0231126,tt0268754,tt0039639,tt0262251
nm0008725	Georges Abiad	\N	\N	actor	tt0262494
nm0008726	Michael Abiad	\N	\N	transportation_department	tt0144546
nm0008727	Mona Abiad	\N	\N	actress	tt0092862
nm0008728	Jorge Abian	\N	\N	actor	tt0051599,tt0053854,tt0086539,tt0088350
nm0008729	Nino Abiatti	\N	\N	actor	tt0144369
nm0008730	Shirley Abicair	1930	2025	actress,soundtrack,archive_footage	tt0047298,tt0049771,tt0163436,tt0278388
nm0008731	Nasar Abich Jr.	\N	\N	editor,cinematographer,director	tt2878892,tt1954938,tt3153524,tt28663437
nm0008732	Hans Abich	1918	2003	producer,actor,writer	tt0042439,tt0050444,tt0052340,tt0040537
nm0008733	Julie Abich	1852	1928	actress	tt0009884,tt0441282
nm0008734	Carin Abicht	1943	\N	actress	tt0080644,tt0806910,tt0078964,tt0230751
nm0008735	Hiriam Abid	\N	\N	actress	tt0170645,tt0164663
nm0008736	K. Abid	\N	\N	cinematographer	tt0119758
nm0008737	Soraya Abid	\N	\N	miscellaneous	tt0104082,tt0098544,tt0482589
nm0008738	Malik Abidin	\N	\N	actor	tt0157759,tt32857063
nm0008739	Zainal Abidin	\N	\N	actor,producer	tt32214698,tt0280773,tt0360047,tt0087118
nm0008740	Abidin Dino	1913	1993	director,art_director,set_decorator	tt0166023,tt0029545,tt0304119
nm0008741	T. Abidova	\N	\N	costume_department,costume_designer	tt0073442,tt0078098
nm0008742	Aly Abidy	\N	\N	director,writer,producer	tt0187448
nm0008743	Jonathan Aibel	\N	\N	producer,writer,miscellaneous	tt0441773,tt0118375,tt1302011,tt21692408
nm0008744	Rafael Abienzo	\N	\N	costume_designer	tt0061864,tt0059082,tt0060901,tt0071415
nm0008745	Abigail	1946	\N	actress,archive_footage	tt0068114,tt0081935,tt0106154,tt0080192
nm0008746	Thomas K. Abihai	\N	\N	actor	tt0079366
nm0008747	Libia Abihaid	\N	\N	actress	tt0163464,tt0210409
nm0008748	Pascal Abikanlou	1935	2009	director,writer,producer	tt0072193,tt11813584,tt26680299,tt8937076
nm0008749	Rika Abiko	\N	\N	actress	tt0101494,tt0130253,tt2808988
nm0008750	Bertel Abildgaard	1955	\N	actor	tt0112947,tt0099914,tt0122473,tt0324703
nm0008751	Ole Abildgaard	\N	\N	actor	tt0161292
nm0008752	Ulver Skuli Abildgaard	1955	\N	actor	tt0128007,tt0850644,tt0403360,tt0138314
nm0008753	Eystein Abildsnes	\N	\N	writer	tt0272774
nm0008754	Jytte Abildstrøm	1934	2025	actress,miscellaneous,director	tt0324925,tt0133888,tt0263348,tt0053832
nm0008755	Adir Abilkassimov	\N	\N	actor	tt0166503
nm0008756	Daniel Abineri	1958	\N	actor	tt0118778,tt0068134,tt0088212,tt0423723
nm0008757	John Abineri	1928	2000	actor,archive_footage,archive_sound	tt0066678,tt0086791,tt0099674,tt0403741
nm0008758	Sebastian Abineri	1954	\N	actor,soundtrack	tt0988045,tt0078596,tt0075784,tt0077010
nm0008759	William L. Abingdon	1859	1918	actor	tt0004303,tt0006899,tt0008406,tt0009060
nm0008760	Sylke Abinghoff	\N	\N	art_department,art_director	tt0159382,tt0161977,tt0383806,tt0277050
nm0008761	Yomi Abiodun	\N	\N	actor	tt0079727
nm0008762	David Abir	\N	\N	composer,music_department,sound_department	tt0438274,tt0333694,tt0099095,tt0221711
nm0008763	Lili Abir	\N	\N	art_department,art_director	tt0318761,tt0103000,tt0099095
nm0008764	Shachar Abiry	1976	\N	director,cinematographer	tt0101089
nm0008765	Nicole Abisinio	\N	\N	actress,producer,director	tt1922748,tt2119532,tt14795396,tt6338856
nm0008766	Jacintha Abisheganaden	\N	\N	actress,soundtrack	tt33348061,tt4539484,tt32177247,tt0101381
nm0008767	Yerkin Abishev	\N	\N	writer	tt0263195,tt0175307
nm0008768	V. Abisheva	\N	\N	actress	tt0174305
nm0008769	Soghra Obeisi	1951	\N	actress	tt0415607,tt0386843,tt0317794,tt1111938
nm0008770	Yaniv Abitan	\N	\N	actor	tt0124759
nm0008771	Adeline Abitbol	\N	\N	actress	tt0098078
nm0008772	Funny Abitbol	\N	\N	actress	tt0098078
nm0008773	Judith Abitbol	1958	\N	editorial_department,director,writer	tt5539422,tt2043770,tt0935035,tt26068144
nm0008774	Michèle Abitbol	\N	\N	miscellaneous,actress	tt0122690,tt0280665,tt0089927,tt1754656
nm0008775	Philippe Abitbol	\N	\N	music_department,actor,composer	tt0111543,tt0173536,tt0091798,tt4146682
nm0008776	Jesus Hermenegildo Abitia	1881	1960	producer,director,cinematographer	tt0011154,tt0218869,tt0406285,tt0388006
nm0008777	Gabrielle Abitol	\N	\N	actress	tt1121977,tt2295908,tt1153545,tt1753422
nm0008778	Phillippe Abitol	\N	\N	actor	tt0102368
nm0008779	Budiasi Abiyoga	\N	\N	producer	tt0101586,tt0111320,tt9546028
nm0008780	José María Abizanda	\N	\N	actor	tt0066611
nm0008781	Martín Abizanda	\N	\N	writer	tt0055448,tt0058244
nm0008782	Martín Abizanda	\N	\N	actor	tt0066611
nm0008783	Dragan Abjanic	\N	\N	director,writer,editor	tt0113910,tt3354688
nm0008784	Joseph Abjean	\N	\N	sound_department	tt0049902
nm0008785	Eric J. Abjornson	\N	\N	animation_department	tt0129167,tt0181739,tt0111333,tt0117705
nm0008786	Peter Abjua	\N	\N	miscellaneous	tt0114796
nm0008787	Simon Abkarian	1962	\N	actor,soundtrack,archive_footage	tt0381061,tt0426279,tt0804522,tt0808417
nm0008789	Daniela Abke	\N	\N	director,writer,editor	tt3614036,tt0254362,tt1454576,tt15444298
nm0008790	Emanuel Apkhaidze	1899	1970	actor	tt0170197,tt0259602,tt0175677,tt0261634
nm0008791	Giorgio Abkhasi	1892	1964	production_designer	tt0035130,tt0032200,tt0034090,tt0033489
nm0008792	Chris van Abkoude	1880	1960	writer	tt0057863,tt0205190,tt0261175,tt6413826
nm0008793	Smerelda Abl	\N	\N	actress	tt0171392
nm0008794	Fahriye Pinarci	\N	\N	actress	tt0253884,tt0094065,tt0487359
nm0008795	Bob Ablack	\N	\N	editorial_department,editor,sound_department	tt0835242,tt0133064,tt0267237,tt0288937
nm0008796	Patrice Ablack	\N	\N	actress	tt0100480
nm0008797	Alex Ablamov	\N	\N	actor	tt0087377
nm0008798	Armand Abplanalp	1930	2000	actor	tt0070849,tt0233096,tt0070133,tt0062285
nm0008799	Rafael Ablanque	1927	\N	art_department,art_director,set_decorator	tt0087182,tt0067329,tt0060467,tt0120946
nm0008800	Billy Joel Ablaza	\N	\N	actor	tt0107413
nm0008801	Lucio Ablaza	\N	\N	actress	tt6033908,tt0126809
nm0008802	Albert Able	1935	2007	actor,art_department,archive_footage	tt0093493,tt0097341,tt0092336,tt1330618
nm0008804	David Able	\N	\N	miscellaneous	tt0118928
nm0008805	Jean Able	\N	\N	script_department	\N
nm0008807	Lawrence Able	\N	\N	\N	\N
nm0008808	Marcus Able	\N	\N	actor	tt0086130,tt1349567
nm0008809	Sheri Able	\N	\N	actress	tt0105678,tt0097306
nm0008810	Will B. Able	1923	1981	actor	tt0445991,tt0433326,tt0446859,tt0063348
nm0008811	Paul Ableman	1927	2006	writer	tt0075592,tt0058853,tt0047728,tt0089513
nm0008812	Debbie Ables	\N	\N	actress	tt0114436,tt0123774
nm0008813	Andrew Ableson	\N	\N	actor,miscellaneous	tt1646971,tt0157246,tt4875050,tt1765622
nm0008814	Sean Abley	\N	\N	producer,writer,actor	tt0822856,tt28494027,tt0172052,tt0169247
nm0008815	Ablodévi François Eklu-Nattey	\N	\N	actor	tt0279659,tt21856400,tt2456052
nm0008816	Vyacheslav Ablotia	1942	\N	actor,director	tt0275713,tt0090820,tt0312452,tt4701708
nm0008817	N. Ablov	\N	\N	actor	tt0240539
nm0008818	A. Ablova	\N	\N	actress	tt0057637
nm0008819	Cynthia Abma	1969	\N	actress,miscellaneous,assistant_director	tt13502894,tt3547782,tt2707150,tt0247303
nm0008820	Marie Abma	\N	\N	costume_designer,costume_department	tt0180093,tt0115333,tt4474344,tt2071645
nm0008821	Parviz Abnar	1958	\N	sound_department	tt6217748,tt0193373,tt7897316,tt11968836
nm0008822	Carin Abnathy	\N	\N	actress	tt0146838
nm0008823	Allison Abner	\N	\N	producer,miscellaneous,writer	tt2707408,tt0321021,tt0364845,tt0200276
nm0008824	Devon Abner	1958	\N	actor,sound_department	tt0386676,tt0359608,tt4442130,tt1480684
nm0008825	Joe Abner	\N	\N	actor	tt0089181
nm0008826	Theo Caesar	1973	\N	talent_agent,casting_department,producer	tt1334525,tt0091777,tt2913562,tt19584798
nm0008827	Don Abney	1923	2000	actor	tt0077335,tt0047759
nm0008828	Jean Abney	\N	\N	actress	tt0242743
nm0008829	Kenny Abney	\N	\N	art_department,special_effects	tt0120746,tt2975578,tt0758758,tt4178092
nm0008830	Mark Abney	\N	\N	actor	tt0245686,tt0380420,tt0411765
nm0008831	Myles Abney	\N	\N	actor	tt0120203,tt1496438,tt0103491,tt0118422
nm0008832	William Abney	1921	1997	actor,writer,archive_footage	tt0230379,tt0062574,tt0989125,tt0066714
nm0008833	Rosemary Abo	\N	\N	miscellaneous	tt0119903
nm0008834	Brice Abo-Métinou	\N	\N	actor	tt0261654
nm0008835	Boshra Abo-Saif	\N	\N	director,production_designer	tt0075048
nm0008836	Charles Aboah	\N	\N	art_department	tt0109734
nm0008837	Susan Abod	\N	\N	director,writer,camera_department	tt3266058,tt0113134
nm0008838	Béla Abody	1931	1990	actor,writer	tt0061635,tt0056108,tt0055290,tt0063768
nm0008839	Benny V. Aboebakar	\N	\N	producer	tt0111320
nm0008840	Fred Abog	\N	\N	actor	tt13582504,tt0096040
nm0008841	Adriana Aboim	\N	\N	actress	tt0115466,tt1230417,tt7708148
nm0008842	Aurora Aboim	\N	\N	actress	tt0189055
nm0008843	Isabel Aboim Inglez	\N	\N	director,cinematographer,writer	tt18160716,tt2308631,tt1479360,tt1423924
nm0008844	João Abel Aboim	1950	\N	cinematographer,camera_department,director	tt0078972,tt0074556,tt0085179,tt0082151
nm0008845	Marisa Aboitiz	\N	\N	costume_department	tt0116922,tt0114614,tt0107076,tt0106770
nm0008846	Natalie Aboitiz	\N	\N	miscellaneous,actress	tt0133301,tt0084987
nm0008847	Paulino Aboitiz	\N	\N	art_department,art_director,camera_department	tt0099095,tt0176357
nm0008848	Oscar Abolafia	1935	2020	camera_department	tt0079013
nm0008849	Yossi Abolafia	1944	\N	animation_department,director,producer	tt0435560,tt0225808,tt0227213,tt0235878
nm0008850	Viktor Abolduyev	\N	\N	actor	tt0115235
nm0008851	Georges Abolin	\N	\N	animation_department,writer	tt0119282,tt0230011,tt0328880,tt0120855
nm0008852	Rosario Abollo	\N	\N	actress	tt0039274,tt0448307
nm0008853	Jeannie Abolt	\N	\N	actress	tt0081766
nm0008854	Kelly Abolt	\N	\N	\N	tt0236093
nm0008855	Christian Abomnes	\N	\N	camera_department,cinematographer,assistant_director	tt0364970,tt1149361,tt0450188,tt0463872
nm0008856	Nico Abondolo	\N	\N	composer,music_department	tt5013056,tt4265178
nm0008857	Antal Abonyi	1938	2018	cinematographer,camera_department,miscellaneous	tt0420072,tt0062538,tt0164891,tt0849411
nm0008858	Géza Abonyi	1894	1949	actor,archive_footage	tt0036320,tt0036411,tt0241712,tt0241441
nm0008859	Cheryl Abood	\N	\N	producer,animation_department	tt1430607,tt0220099,tt0430779,tt0837115
nm0008860	Noerena Abookire	\N	\N	actress,miscellaneous	tt0088242,tt0086387
nm0008861	Nastuh Abootalebi	\N	\N	visual_effects,animation_department	tt0130827,tt3042408,tt0215750,tt0253474
nm0008863	George Abos	\N	\N	miscellaneous	tt0108358
nm0008864	Kevin Abosch	\N	\N	director,writer,camera_department	tt0473360,tt0119868,tt0115935,tt11076052
nm0008865	Emile Abossolo M'bo	1958	\N	actor,script_department,archive_footage	tt0102536,tt0465494,tt1639901,tt0103442
nm0008866	Didier Abot	\N	\N	production_manager,actor,producer	tt2076220,tt7943036,tt0429031,tt1667100
nm0008867	Ezzat Abu Ouf	1948	2019	actor,composer	tt0342968,tt0184235,tt5303564,tt36500771
nm0008868	François Abou Salem	1951	2011	actor,production_designer,miscellaneous	tt1366409,tt0260003
nm0008869	Onsi Abou Seif	\N	\N	production_designer,art_director,set_decorator	tt0104797,tt10692936,tt10503934,tt0233234
nm0008870	Yussuf Abu-Warda	1953	\N	actor	tt2568204,tt0904106,tt0424365,tt10660366
nm0008871	M. Abou Youssef	\N	\N	assistant_director	tt0051390
nm0008872	Charles Abou	\N	\N	actor	tt0066335
nm0008873	Tony Abou-Ganim	\N	\N	actor	tt0120151,tt0361919,tt2678448,tt0426665
nm0008874	Rebekah Abou-Keer	\N	\N	actress	tt0115725
nm0008875	Rabih Abou-Khalil	\N	\N	composer,producer,soundtrack	tt0180320,tt0389474,tt0013428,tt0421529
nm0008876	Ezzat Abou-Oat	\N	\N	actor	tt13044128
nm0008877	Amir Abou-Rass	\N	\N	actor	tt0179735
nm0008878	Mohamed Abou-Seif	\N	\N	director,writer,assistant_director	tt0095704,tt8184800,tt0422798,tt0422574
nm0008879	Nabawa Abou-Seif	\N	\N	actor	tt0093932
nm0008880	Karen Abouab	\N	\N	costume_department,manager,talent_agent	tt0107870,tt0109534,tt0105632,tt0106743
nm0008881	Atibou Aboubacar	\N	\N	actor	tt0476240,tt0116618
nm0008882	Abou Bakar	\N	\N	actor	tt0088002,tt0107796
nm0008883	Stephanie Aboud	\N	\N	miscellaneous	tt0177472
nm0008884	Norbert Aboudahram	\N	\N	actor	tt0276412
nm0008885	Norbert Aboudarham	\N	\N	composer	tt0085283,tt0271971,tt0431031,tt0447159
nm0008886	Aboudja	\N	\N	miscellaneous,camera_department	tt0120603,tt0248747,tt0389515,tt0174325
nm0008887	Nourdine Aboudou	\N	\N	actor	tt0190066
nm0008888	Angelie Alaïs Adell	1975	\N	actress,casting_director,writer	tt0279000,tt2385025,tt2353217,tt2328693
nm0008889	Rachid Abouhilal	\N	\N	actor	tt0156245
nm0008890	André Elias	\N	\N	cinematographer,editor,director	tt6456690,tt6467144,tt0108195,tt0113616
nm0008891	Rebekah Aboukeer	\N	\N	script_department,miscellaneous	tt0240679,tt0182575
nm0008892	Romi Aboulafia	1984	\N	actress,writer,camera_department	tt1226753,tt0163262,tt1930371,tt0313126
nm0008893	Roni Aboulafia	\N	\N	director,writer,producer	tt13044284,tt0159355,tt2319944,tt5559990
nm0008894	Amir AboulEla	\N	\N	actor	tt3811906,tt9054904,tt0264235,tt1442464
nm0008895	Abel Aboualiten	\N	\N	actor	tt2872732,tt0112291,tt9293466,tt0091736
nm0008896	Fabrice Aboulker	\N	\N	composer,music_department,soundtrack	tt1611952,tt0759057,tt5085178,tt0283226
nm0008897	Marcel Aboulker	1905	1952	director,writer,assistant_director	tt0042375,tt2704794,tt0039166,tt0044610
nm0008898	Hamid Aboumalek	\N	\N	transportation_department	tt0244647
nm0008899	Jean Abounader	\N	\N	producer,writer,miscellaneous	tt3354866,tt0304151,tt0436855,tt0151301
nm0008900	Jimmy Abounouom	\N	\N	producer,art_director,production_manager	tt0449467,tt0944947,tt0119485,tt15113266
nm0008902	Abdelkrim Abouobayd	\N	\N	production_manager	tt0120616,tt0209163,tt0110568
nm0008903	Karim Abouobayd	\N	\N	producer,location_management,miscellaneous	tt0320661,tt7556122,tt6146586,tt0473075
nm0008904	Roksana Abouova	\N	\N	actress	tt0157124
nm0008905	Oulage Abour	\N	\N	actor,writer	tt0182357,tt0421974,tt0120537,tt0197516
nm0008906	Salah Abouseif	1915	1996	director,writer,editor	tt0342396,tt0318821,tt0040617,tt0053652
nm0008908	Edmond About	1828	1885	writer	tt1365568,tt0217857,tt0175657,tt0928059
nm0008909	François About	\N	\N	cinematographer,camera_department,actor	tt1325024,tt1227911,tt1242720,tt0258528
nm0008910	Isabel Aboy	1982	\N	actress,archive_footage	tt0115284,tt0124958,tt0372056,tt1823927
nm0008911	Tony Aboyantz	1928	1992	assistant_director,miscellaneous,production_manager	tt0083734,tt0070354,tt0069912,tt0161005
nm0008912	Ruth Abraha	\N	\N	actress	tt0105325
nm0008913	Abraham	\N	\N	actor	tt0163989
nm0008915	Abraham Abraham	\N	\N	actor	tt0180093
nm0008917	Adam Abraham	1971	\N	producer,director,writer	tt0138537,tt0222383,tt0455177,tt0929801
nm0008918	Alex Abraham	\N	\N	miscellaneous	tt0103827,tt0107664
nm0008919	Aminatta Joy Abraham	\N	\N	actress	tt0093227
nm0008921	Arthur Abraham	\N	\N	miscellaneous,soundtrack	tt0118607,tt0318220,tt0430331
nm0008922	Augustine Abraham	\N	\N	actress	tt0269072
nm0008923	Beate Abraham	1945	\N	actress	tt0118281,tt0378715,tt0312358,tt0325734
nm0008924	Bethany Abraham	\N	\N	miscellaneous	tt0118315
nm0008925	Beatriz Abraham	\N	\N	costume_department	tt0090627,tt0094046,tt0084512,tt0246429
nm0008926	Brad Abraham	\N	\N	writer,assistant_director,producer	tt0220008,tt17540088,tt0119370,tt2396495
nm0008927	Cesar Abraham	\N	\N	actor	tt0165929
nm0008928	Charles Abraham	\N	\N	actor	\N
nm0008929	Christopher Abraham	\N	\N	actor,miscellaneous,production_manager	tt0132939,tt0096560,tt0188688,tt0124006
nm0008930	Cyril Abraham	1915	1979	writer	tt0074035,tt0053494,tt0159194,tt0063886
nm0008932	David Abraham	1909	1981	actor,assistant_director	tt0158375,tt0046799,tt0268621,tt2100612
nm0008933	Dawn Abraham	1960	\N	actress	tt0092848,tt0086141,tt0087722,tt0086760
nm0008935	Dustin Lee Abraham	\N	\N	producer,miscellaneous,writer	tt0247082,tt0278488,tt9382344,tt0165454
nm0008936	Edward Abraham	1929	\N	writer,director,producer	tt2315390,tt0056469,tt0077450,tt0081178
nm0008937	Eric Abraham	\N	\N	producer	tt2718492,tt0116790,tt0188453,tt0110348
nm0008938	Falconer Abraham	\N	\N	actor	tt0113481,tt0108909,tt0112886,tt0117188
nm0008939	Gabriel Abraham	\N	\N	art_department,production_designer,miscellaneous	tt0189810,tt0177978,tt0106660,tt0191191
nm0008940	Jake Abraham	1967	2023	actor	tt0120735,tt0291341,tt0227984,tt1213648
nm0008941	Jeanine Tyree Abraham	\N	\N	actress	tt0123768
nm0008942	Joe Abraham	\N	\N	actor	tt0159837
nm0008943	John Abraham	1937	1987	director,writer,assistant_director	tt0077131,tt0090634,tt0078961,tt0078463
nm0008944	John Abraham	\N	\N	actor	tt0117802
nm0008945	John Abraham	\N	\N	actor	tt0005935
nm0008946	Jorge Abraham	\N	2023	actor	tt0117509,tt0376296,tt0089923,tt0258141
nm0008947	Josh Abraham	\N	\N	producer,composer,music_department	tt0337741,tt0277371,tt2788732,tt1131734
nm0008948	Karl Abraham	1877	1925	actor,writer,archive_footage	tt0016914
nm0008949	Ken Abraham	\N	\N	actor,editor,producer	tt0364829,tt0363307,tt1191056,tt1563069
nm0008951	Larry Abraham	1950	\N	actor	tt0088595
nm0008952	Lincoln Abraham	\N	\N	camera_department,cinematographer,miscellaneous	tt34227632,tt0163488,tt31070431,tt0386245
nm0008953	Marc Abraham	\N	\N	producer,writer,director	tt0206634,tt1320244,tt1234721,tt1637688
nm0008954	Maurice Abraham	\N	\N	director,producer	tt0080200,tt15174452,tt0086744,tt0333458
nm0008955	Melissa Abraham	\N	\N	actress,miscellaneous	tt0210405,tt1692187
nm0008956	Morris Abraham	\N	\N	director,producer,writer	tt0103445,tt0158459,tt0112056,tt0137313
nm0008957	Nancy Abraham	\N	\N	producer,miscellaneous,executive	tt1759682,tt16377356,tt3382636,tt5737938
nm0008958	Nicolas Abraham	\N	\N	actor	tt0411272,tt6938828,tt1741542,tt3112654
nm0008959	Nik Abraham	\N	\N	actor	tt0080745,tt0887236
nm0008960	Nikki Abraham	\N	\N	actress	tt0182295
nm0008961	P.K. Abraham	\N	\N	actor,writer	tt0271459,tt0332265,tt0230732,tt0318314
nm0008962	Paloma Abraham	\N	\N	actress	tt0102104,tt0115807,tt0089472
nm0008963	Patrick Abraham	\N	\N	camera_department	tt0216105
nm0008964	Paul Abraham	1892	1960	composer,music_department,writer	tt0045567,tt0219557,tt0021378,tt0022695
nm0008965	Paul Abraham	\N	\N	miscellaneous	tt1440129,tt1276104,tt1270797,tt1133985
nm0008966	Peggy Jo Abraham	\N	\N	actress,miscellaneous	tt0091706,tt0319991
nm0008967	Pete Abraham	\N	\N	editor	tt0185049
nm0008968	Peter Abraham	1936	2015	writer	tt0495641,tt0091908,tt1191976,tt1158592
nm0008969	Peter Abraham	\N	\N	actor	tt0377043,tt0115285,tt0202695,tt0153031
nm0008970	Peter S. Abraham	\N	\N	camera_department	tt0187614,tt0110306,tt0115847,tt0117194
nm0008971	Phil Abraham	\N	\N	director,cinematographer,camera_department	tt10580064,tt5071412,tt3322312,tt0804503
nm0008972	Pierre Abraham	\N	\N	camera_department	tt0237534,tt0106226,tt0099334,tt0075946
nm0008973	Richard Abraham	\N	\N	actor,camera_department,editor	tt0475290,tt0116119,tt3511220,tt0120741
nm0008974	Samuel Abraham	\N	\N	actor	tt0086213
nm0008975	Sean Abraham	\N	\N	actor	tt0107822
nm0008976	Seely Abraham	\N	\N	actress	tt0098354,tt0090938,tt0095447
nm0008977	Shirley Abraham	\N	\N	production_manager,producer,miscellaneous	tt0098073,tt0305130,tt0292776,tt29134962
nm0008978	Stacy Abraham	\N	\N	actress	tt0241470
nm0008979	Tom Abraham	\N	\N	miscellaneous,script_department,writer	tt0134269,tt0086770,tt0115111,tt1395530
nm0008981	Valerie Abraham	1933	2006	writer,miscellaneous	tt0056469,tt0077450,tt0081178,tt0089639
nm0008982	Walter Abraham	\N	\N	actor	tt0133122
nm0008983	Wiebke Abraham	\N	\N	editor	tt0454599,tt2797954,tt0206111,tt0286987
nm0008984	Yasmine Abraham	\N	\N	costume_department,costume_designer,casting_department	tt0997152,tt0395584,tt0460084,tt1179794
nm0008985	Bruno Abraham-Kremer	\N	\N	actor	tt1035736,tt1067774,tt0259440,tt0420555
nm0008986	Jacqueline Abraham-Vernier	\N	\N	actress	tt0096332
nm0008987	Izzy Abrahami	\N	\N	director,actor	tt1058002,tt0064095
nm0008988	Ludwig Abrahami	\N	\N	actor,archive_footage	tt0080793,tt0077348,tt0166909,tt0214335
nm0008989	Gary Abrahamian	\N	\N	visual_effects,animation_department	tt0298814,tt0409459,tt1046173,tt0770828
nm0008990	Zion Avrahamian	\N	\N	editor,cinematographer,writer	tt0111140,tt0143941,tt0177045,tt5524664
nm0008991	Alan Abrahams	\N	\N	actor,sound_department,soundtrack	tt0487078,tt2087743,tt0438380,tt0106923
nm0008992	Andrew Abrahams	\N	\N	editor,editorial_department	tt3064000,tt3096498,tt5358488
nm0008993	Brett Abrahams	\N	\N	stunts	tt0211273
nm0008994	Brian Abrahams	\N	\N	actor	tt0095646
nm0008995	Carole Abrahams	\N	\N	location_management	tt0111711
nm0008996	Caz Abrahams	\N	\N	actor	tt0127357,tt0115086,tt0481106,tt0120617
nm0008997	Charlie Abrahams	1992	\N	actor	tt0107144,tt0118526
nm0008998	Chris Abrahams	\N	\N	composer,actor,soundtrack	tt0452692,tt1308052,tt0914846,tt0981025
nm0008999	Derwin Abrahams	1903	1974	director,assistant_director	tt0039841,tt0038410,tt0038616,tt0047742
nm0009000	Dale Abrahams	\N	\N	actor	tt0127357,tt0398830,tt0408378,tt0463302
nm0009002	Doug Abrahams	\N	\N	actor,miscellaneous,casting_director	tt0134619,tt1535108,tt0457572,tt0770828
nm0009003	M. Duke Abrahams	1905	1971	art_department	tt0052639,tt0052738
nm0009004	Georgina Abrahams	\N	\N	producer	tt26235126,tt0143277,tt0396981,tt0104392
nm0009005	Harry Abrahams	\N	\N	actor	\N
nm0009006	Herbert Abrahams	\N	\N	\N	tt0092591
nm0009007	Irving Abrahams	\N	1998	actor	tt0067116
nm0009008	Jacqueline Abrahams	\N	\N	production_designer,art_department,set_decorator	tt3464902,tt8508734,tt4291600,tt1894476
nm0009010	Jamie Abrahams	\N	\N	writer,actress	tt0102059,tt0107144,tt0320037,tt27590028
nm0009011	Jerry Abraham	\N	\N	costume_department	tt0122972
nm0009012	Jody Abrahams	1974	\N	actor,director,writer	tt1599348,tt0473416,tt9248932,tt10127554
nm0009013	Joe Abrahams	\N	\N	producer	tt0132099
nm0009016	Jon Abrahams	1977	\N	actor,director,producer	tt0175142,tt0212338,tt0397065,tt5073756
nm0009017	Jonathan Abrahams	\N	\N	producer,writer,actor	tt0804503,tt1714204,tt2402061,tt1519931
nm0009018	Joseph Abrahams	\N	\N	actor	tt0102059,tt0100911
nm0009019	Joseph 'Bambi' Abrahams	\N	\N	actor	tt0107144
nm0009021	Karen Abrahams	\N	\N	actress	tt0111013
nm0009022	Mark Abrahams	\N	\N	camera_department,special_effects	tt0106950,tt0188453,tt0112431,tt0102782
nm0009023	Maurice Abrahams	1883	1931	music_department,soundtrack	tt0017886,tt0038945,tt0021176,tt0023124
nm0009024	Michelle Abrahams	\N	\N	actress	tt0053494,tt0358884,tt0312209,tt0212695
nm0009025	Mort Abrahams	1916	2009	producer,miscellaneous,production_manager	tt0065462,tt0063442,tt0042156,tt0057765
nm0009026	Nancy Abrahams	\N	\N	actress	tt0102059,tt0107144,tt0088286,tt0100911
nm0009027	Ola Abrahams	\N	\N	\N	tt0109538
nm0009028	Paul Abrahams	\N	\N	\N	tt0083043
nm0009029	Peter Abrahams	1947	\N	writer,art_department	tt0116277,tt0811124,tt19396760,tt0212208
nm0009030	Roger Abrahams	\N	\N	miscellaneous	tt0119852,tt7961150
nm0009031	Tony Abrahams	\N	\N	art_department	tt0140312,tt0126762,tt0108726,tt0111913
nm0009032	Taylor Abrahamse	1991	\N	actor,music_department,composer	tt0283724,tt0161185,tt0818640,tt10612648
nm0009033	Arne Abrahamsen	1936	\N	camera_department,cinematographer,assistant_director	tt0063119,tt0058049,tt0062882,tt0125978
nm0009034	Caroline Abrahamsen	1965	\N	miscellaneous,art_department,costume_department	tt0351078,tt0097687,tt0216851,tt0120329
nm0009035	Christer Abrahamsen	1942	\N	producer,production_manager,assistant_director	tt0115073,tt0074439,tt0351078,tt0432044
nm0009036	Fredrik Abrahamsen	1967	\N	editor,editorial_department,sound_department	tt0203166,tt1014765,tt0473609,tt0110109
nm0009037	Hanne Nyborg Abrahamsen	1984	\N	actress	tt0273704
nm0009038	Jørn Abrahamsen	\N	\N	camera_department,miscellaneous	tt0050561,tt0052179,tt0050464,tt0125560
nm0009039	Peter Abrahamsen	1941	2024	actor	tt0124328,tt0124079
nm0009040	Rita Abrahamsen	\N	\N	actress	tt0075128,tt6337914
nm0009041	Sven Abrahamsen	\N	\N	sound_department	tt0329837,tt8399352,tt0217648,tt0137870
nm0009042	Synnøve Abrahamsen	\N	\N	actress	tt0069832,tt0193592
nm0009043	Trond Abrahamsen	\N	\N	actor	tt0214770
nm0009044	Allen Abrahamson	\N	\N	music_department	tt0249677,tt0240684,tt0257778,tt0143808
nm0009045	Danny Abrahamson	\N	\N	sound_department	tt0255630
nm0009046	Deb Abrahamson	\N	\N	miscellaneous,script_department	tt0117223,tt0119570,tt0151379
nm0009047	Douglas Abrahamson	\N	\N	art_department,art_director,costume_department	tt0119094,tt0120461,tt0095363,tt0145734
nm0009048	Eric Abrahamson	\N	\N	actor,camera_department	tt0125060,tt0109933
nm0009049	Eric Abrahamson	\N	\N	miscellaneous	tt0110153
nm0009050	Jerry Abrahamson	\N	\N	writer	tt0111653
nm0009051	Martin Abramson	\N	\N	writer	tt0045409,tt0073819
nm0009053	Neil Abramson	\N	\N	director,writer,cinematographer	tt1037004,tt14803336,tt0114961,tt0471390
nm0009054	Peter Abrahamson	1966	\N	special_effects,miscellaneous,actor	tt0421715,tt0343818,tt0167190,tt0120912
nm0009055	Phil Abramson	1933	1987	set_decorator,visual_effects,art_department	tt0075860,tt0091225,tt0062765,tt0089886
nm0009056	Richard Abramson	\N	\N	costume_department,costume_designer	tt0094327,tt0087739,tt0091411
nm0009058	Scot Abrahamson	\N	\N	miscellaneous,producer,executive	tt0143064,tt0108894,tt0304480
nm0009059	Terry Abrahamson	\N	\N	writer,director,soundtrack	tt1227153,tt0246332,tt0254252,tt0098932
nm0009060	Bo Abrahamsson	1920	1986	sound_department	tt0039480,tt0057119,tt0059295,tt0039347
nm0009061	Eric Abrahamsson	1890	1942	actor	tt0033859,tt0024020,tt0027016,tt0026586
nm0009062	Gunilla Abrahamsson	1945	\N	actress,soundtrack	tt6708668,tt0448192,tt21996776,tt1846197
nm0009063	Harriet Abrahamsson	\N	\N	actress	tt0119351,tt0122614,tt1625348,tt0271865
nm0009064	Jakob Abrahamsson	\N	\N	producer,executive,miscellaneous	tt11320192,tt13583090,tt5137556,tt4937156
nm0009065	Johan Abrahamsson	\N	\N	actor	tt0108275
nm0009066	Klas Abrahamsson	1969	\N	writer,miscellaneous	tt0997282,tt0431417,tt0310412,tt0386620
nm0009067	L.O. Abrahamsson	\N	\N	actor	tt0088015
nm0009068	Lotta Abrahamsson	\N	\N	\N	tt0113201
nm0009069	Magnus Abrahamsson	\N	\N	actor,producer,writer	tt0115360,tt0185112,tt0409584,tt13017934
nm0009070	Michael Abrahamsson	\N	\N	miscellaneous	tt0103523,tt0131186,tt0098427,tt0098015
nm0009071	Monica Abrahamsson	\N	\N	miscellaneous	tt0105742
nm0009072	Måns Abrahamsson	1959	\N	sound_department,music_department,actor	tt0090478,tt0184153,tt0247126,tt2924684
nm0009073	Peter L. Abrahamsson	1966	\N	actor	tt0115426,tt0269604,tt0114497,tt0112258
nm0009074	Rosemarie Abrahamsson	\N	\N	actress	\N
nm0009075	Vivian Abrahamsson	1948	\N	art_department,actress	tt0066037,tt6739702,tt0098785,tt0167292
nm0009076	Aimée Abrahmova	\N	\N	actress	tt0263799
nm0009077	Olga Abrahmowitz	\N	\N	assistant_director	tt0220354
nm0009078	Alan Abrams	\N	\N	editor,sound_department,producer	tt0090756,tt0112281,tt0111013,tt0164953
nm0009079	Amy Abrahms	\N	\N	camera_department	tt0114754
nm0009080	Donna Abrahms	\N	\N	actress	tt0114749
nm0009082	Roberto Abrahmson	\N	\N	composer	tt0188157
nm0009083	Guilherme Abrahão	\N	\N	actor	tt0131398
nm0009084	Dan Abram	\N	\N	camera_department	tt0162710,tt0252445
nm0009085	Deren Abram	1966	\N	production_designer,producer,director	tt0465178,tt0065323,tt0364805,tt2712970
nm0009087	John Abram	1959	\N	sound_department,composer,music_department	tt27520428,tt27142792,tt31839457,tt21934610
nm0009088	Kelly Abram	\N	\N	miscellaneous,art_department	tt0256400,tt0225828,tt0258862,tt0216746
nm0009089	Mara Abram	\N	\N	actress	tt0104061
nm0009090	Martin Maria Abram	1948	\N	actor	tt0149422,tt0806910,tt0094684,tt1708135
nm0009091	Michael Abrams	\N	\N	actor	tt0106486
nm0009092	Norm Abram	1949	\N	art_department,actor,soundtrack	tt0078701,tt0184144,tt0111970,tt8074380
nm0009093	Paul Abram	\N	\N	camera_department	tt0080516,tt0081291,tt0225784
nm0009094	R.S. Abram	\N	\N	miscellaneous,location_management	tt0046267,tt0048611,tt0044658,tt0045659
nm0009095	Carmen Abramian	\N	\N	editorial_department,miscellaneous	tt0137363,tt0137338,tt0119305,tt0119910
nm0009096	Ary Abramides	1955	\N	production_manager,actor,location_management	tt0241455,tt0241567,tt0241196,tt0278985
nm0009097	Georg Abramides	\N	\N	animation_department	tt0118195
nm0009098	Arsen Abramishvili	1933	\N	actor	tt0266107,tt0174452
nm0009099	Soso Abramashvili	1944	\N	actor	tt0170197,tt0169935,tt0382060,tt0269686
nm0009100	Spiridon Abramishvili	\N	\N	actor	tt0279897,tt0285456
nm0009101	Richard W. Abramites	\N	\N	producer	tt0100254
nm0009102	Richard W. Abramitis	\N	\N	production_manager,assistant_director,director	tt0099528,tt0088587,tt0106179,tt0115320
nm0009103	Luigi Abramo	\N	\N	director	tt0206687,tt0203844
nm0009104	Luís Abramo	\N	\N	cinematographer,camera_department,director	tt3603568,tt13928990,tt5554042,tt0926216
nm0009105	Lélia Abramo	1911	2004	actress	tt0139927,tt0209836,tt0209760,tt0227960
nm0009106	Jack Abramoff	1958	\N	producer,writer,archive_footage	tt0098180,tt0110954,tt4848290,tt2218646
nm0009107	Robert Abramoff	\N	\N	miscellaneous,producer,legal	tt7638348,tt3276924,tt1235522,tt4463816
nm0009109	Anatoli Abramov	1915	1983	actor	tt0171886,tt0169069,tt0049489,tt1612569
nm0009110	Anton Abramov	\N	\N	actor	tt0086032,tt0370785
nm0009111	Avraham Abramov	\N	\N	cinematographer,camera_department	tt0089403,tt0162909,tt0115909,tt0135566
nm0009112	G. Abramov	\N	\N	miscellaneous	tt0083004,tt0091797,tt3084568
nm0009113	N. Abramov	\N	\N	actor	tt0056615
nm0009114	N. Abramov	\N	\N	special_effects	tt0039716,tt0048359,tt0175679,tt0306181
nm0009115	Ofra Abramov	\N	\N	editor,writer	tt5594410,tt0152799
nm0009116	Oleg Abramov	1939	\N	actor,composer	tt2153792,tt0110604,tt5396456,tt0300497
nm0009117	Sergei Abramov	1944	\N	writer	tt0085465,tt0090001,tt6253322,tt0367210
nm0009118	Vasili Abramov	\N	\N	actor	tt0033637
nm0009119	Vitali Abramov	1936	\N	cinematographer,camera_department	tt0070233,tt0084716,tt0089733,tt0072141
nm0009120	Vitali Abramov	\N	\N	writer	tt0111816
nm0009121	Vladimir Abramov	\N	\N	actor	tt0166367
nm0009122	Alla Abramova	\N	\N	editor,producer	tt0175209,tt3961682,tt0081544,tt0168139
nm0009123	Anna Abramova	1902	\N	writer	tt0042765,tt0046694,tt0055046,tt0045089
nm0009124	Eduard Topol	1938	\N	writer,producer,director	tt1967563,tt11276696,tt0183446,tt0900960
nm0009125	Natalya Abramova	\N	\N	actress,archive_footage	tt0079944
nm0009126	Dragana Abramovic	\N	\N	writer	tt0181111,tt0289650,tt0204101,tt0302198
nm0009127	Marina Abramovic	1946	\N	director,writer,producer	tt0492962,tt11329258,tt32807469,tt11329314
nm0009128	Velimir Abramovic	\N	\N	director,writer,producer	tt7286446,tt2856762,tt26750248,tt0214180
nm0009129	A. Abramovich	\N	\N	\N	\N
nm0009130	Paula Abramovich	1980	\N	cinematographer,camera_department,director	tt0797009,tt0269084,tt0484984,tt0927649
nm0009131	Stephanie Abramovich	\N	\N	editor,director,writer	tt1362076,tt4634652,tt0259115,tt0832219
nm0009132	Virginia Abramovich	\N	\N	director,assistant_director,producer	tt10663608,tt2779116,tt23111926,tt1840926
nm0009133	Yuri Abramovich	\N	\N	producer	tt0108697
nm0009134	Barron Abramovitch	\N	\N	music_department,composer	tt0106064,tt0120389,tt0214341,tt0114495
nm0009135	Hairy Abramovitch	\N	\N	music_department	tt0101547
nm0009136	S. Abramovitch-Bleck	\N	\N	\N	\N
nm0009137	Caitlin Abramovitz	\N	\N	producer	tt0138501
nm0009138	Jill Abramovitz	\N	\N	actress,composer,soundtrack	tt4655480,tt5788792,tt0203259,tt5363912
nm0009139	Rafael Abramovitz	1941	\N	actor,archive_footage	tt0098119,tt0399967,tt0094536,tt0096605
nm0009140	Jerry Abramowicz	\N	\N	location_management	tt0114680
nm0009141	Leszec Abramowicz	\N	\N	actor	tt0096689
nm0009142	Michel Abramowicz	1950	\N	cinematographer,camera_department,producer	tt0936501,tt1179034,tt0905372,tt0402158
nm0009143	Myriam Abramowicz	1946	\N	director,writer,cinematographer	tt1367372,tt0182737
nm0009144	Bina Abramowitz	\N	\N	actress	tt0023714,tt0016684
nm0009145	David Abramowitz	\N	\N	miscellaneous,producer,writer	tt0103442,tt0086822,tt0083395,tt0088559
nm0009146	Elkan Abramowitz	\N	\N	actor,archive_footage	tt0088947,tt0093175,tt0481456
nm0009147	Halina Abramowicz	\N	\N	actress	tt0095093,tt0148097,tt0088119,tt0101145
nm0009148	Jane Pia Abramowitz	\N	\N	editor,editorial_department	tt0120176,tt0142342,tt1536437,tt2786956
nm0009149	Jay Abramowitz	\N	\N	miscellaneous,writer,producer	tt0118862,tt0101041,tt0090550,tt0088576
nm0009150	Richard Abramowitz	\N	\N	producer,executive	tt0484840,tt2404171,tt0114937,tt7600742
nm0009151	Veinna R. Abramowitz	\N	\N	sound_department	tt0104987
nm0009152	Klaus Abramowsky	1933	1998	actor,soundtrack	tt0099776,tt1189035,tt0083593,tt0070999
nm0009153	Abiola Abrams	1976	\N	actress,producer,director	tt0273300,tt0403208,tt0403385,tt0403542
nm0009156	Alan Abrams	\N	\N	legal,manager,executive	tt0340855,tt6722400,tt3846642,tt21391242
nm0009157	Amy H. Abrams	\N	\N	camera_department,art_department,miscellaneous	tt0120891,tt0110308,tt0117247,tt0113627
nm0009159	Anthony Abrams	1974	\N	director,writer	tt0265591,tt6342110,tt0118301
nm0009160	Aron Abrams	1960	2010	producer,writer,miscellaneous	tt0460637,tt0255734,tt0118375,tt0115082
nm0009161	Barry Abrams	1944	2009	cinematographer,actor,camera_department	tt0080761,tt0080527,tt0084735,tt0077668
nm0009162	Bennet Abrams	1931	2004	miscellaneous	tt0071629
nm0009163	Bob Abrams	1931	2023	animation_department,miscellaneous,visual_effects	tt0097655,tt0082083,tt0082656,tt0091268
nm0009164	Bruce Abrams	\N	\N	editor,editorial_department,sound_department	tt0390738,tt0241126,tt0381740,tt1376572
nm0009165	Carol Abrams	1942	2012	producer,writer	tt0106826,tt0248415,tt0278785
nm0009166	Cynthia Abrams	\N	\N	script_department	tt0124718,tt0164953,tt0111013,tt0119858
nm0009167	Daniel Lawrence Abrams	1973	\N	producer,director,writer	tt4714896,tt2962932,tt0795129,tt3059532
nm0009168	Daniel Abrams	\N	\N	manager,talent_agent,producer	tt19798250,tt4357332
nm0009169	Delia Abrams	\N	\N	actress	tt0065836
nm0009170	Dennis Abrams	\N	\N	actor	tt0096054
nm0009171	Dolly Abrams	\N	\N	actress	tt0143378,tt0197403
nm0009172	Doty Abrams	\N	\N	writer	tt0108778,tt0484082,tt0460671,tt0375355
nm0009175	Edward Finch Abrams	\N	\N	producer,actor	tt0060074,tt0056961,tt0056499
nm0009176	Edward R. Abrams	1887	1970	actor	tt0133825,tt0166362
nm0009177	Eric Abrams	\N	\N	writer,producer	tt0231402,tt0235904,tt0155426,tt0118501
nm0009178	Gayle Abrams	\N	\N	manager,talent_agent	\N
nm0009179	Geoffrey Abrams	\N	\N	miscellaneous	tt0094608
nm0009180	George Abrams	\N	\N	actor	tt0114334
nm0009181	Gerald W. Abrams	1939	\N	producer,actor,miscellaneous	tt0796366,tt1408101,tt2488496,tt0208629
nm0009182	Hiram Abrams	1878	1926	miscellaneous	tt0164048
nm0009183	Ian Abrams	\N	\N	writer,producer,actor	tt0115163,tt0108442,tt0114292,tt1615945
nm0009184	Iono Abrams	\N	\N	miscellaneous	tt0093748,tt0096094
nm0009185	Irving Abrams	\N	\N	producer	tt0254642
nm0009186	Jacob Abrams	1854	\N	actor	tt0012226,tt0009626,tt0161299,tt0010035
nm0009187	James Abrams	\N	\N	actor	tt0164036
nm0009188	Jane Abrams	\N	\N	producer,miscellaneous	tt0118055,tt11102870
nm0009189	Jared Abrams	\N	\N	camera_department,cinematographer,director	tt0133152,tt0186151,tt0251736,tt2302859
nm0009190	J.J. Abrams	1966	\N	producer,writer,music_department	tt0411008,tt0796366,tt2488496,tt2527338
nm0009191	Jerry Abrams	1940	2010	director,cinematographer,actor	tt0182925,tt0122934,tt19119740,tt0145266
nm0009192	Jessica Abrams	\N	\N	miscellaneous	tt0110737,tt0088993,tt0100258,tt0331952
nm0009193	Jessie Abrams	\N	\N	actor	tt0080527
nm0009194	Joanne Abrams	\N	\N	miscellaneous,editorial_department	tt0119229,tt0141098
nm0009195	Joie Abrams	\N	\N	actress	tt0045668
nm0009196	Jonathan Abrams	\N	\N	miscellaneous	tt0102138
nm0009197	Jono Abrams	\N	\N	producer	tt0115927
nm0009198	Katharine Abrams	\N	\N	actress	\N
nm0009199	Kathie Abrams	\N	\N	miscellaneous	tt0114268
nm0009200	Kevin Abrams	\N	\N	writer,editor,producer	tt0482535,tt4291722,tt0805322,tt1738366
nm0009201	Larry Abrams	\N	\N	producer	tt0087015,tt0101524
nm0009202	Laurence Abrams	\N	\N	sound_department,composer,producer	tt0406375,tt0290002,tt0087268,tt0083001
nm0009203	Laura Abrams	\N	\N	actress	tt0220576
nm0009204	Lauren Abrams	\N	\N	art_department,visual_effects,special_effects	tt1535108,tt1270797,tt1013753,tt0112715
nm0009205	Leon Abrams	1895	1977	writer,director	tt0829178,tt0018624,tt0037098,tt0016973
nm0009206	Lester Abrams	\N	\N	animation_department,production_designer	tt0084237,tt0099733,tt0077687,tt0079802
nm0009207	Marc Abrams	\N	\N	producer,writer,actor	tt0285341,tt6146586,tt0387199,tt1630574
nm0009208	Margaret Abrams	\N	\N	writer	tt0059843
nm0009209	Marilyn Abrams	\N	\N	actress,writer	tt0089758,tt7493056,tt0081316,tt16443406
nm0009210	Mark Abrams	\N	\N	assistant_director,sound_department,miscellaneous	tt0100604,tt0098625,tt0097116,tt1961199
nm0009211	Marty Abrams	\N	\N	producer	tt0115159,tt0185793,tt0361195,tt0203269
nm0009212	Matthew Abrams	\N	\N	miscellaneous,actor,cinematographer	tt0171367,tt0163274,tt0119039,tt1666679
nm0009213	Michael Abrams	\N	\N	actor	tt0079965,tt0098749
nm0009214	Michael G. Abrams	\N	\N	casting_department	tt0101891
nm0009215	Michele Abrams	1966	\N	actress	tt0103893,tt0104009,tt0110216,tt0105643
nm0009216	Mike Abrams	\N	\N	actor	tt0091669
nm0009217	Morris R. Abrams	1911	1989	assistant_director,production_manager,actor	tt0069599,tt0075913,tt0074703,tt0070706
nm0009219	Natalie Abrams	\N	\N	writer,producer,miscellaneous	tt16418896,tt8712204,tt4016454,tt7414406
nm0009220	Noah Abrams	1978	\N	actor,camera_department	tt0114296,tt0384683,tt1229747,tt0297626
nm0009221	Patsy Grady Abrams	1933	2023	actress	tt0111127,tt0120660,tt0365125,tt1759761
nm0009222	Peter Abrams	\N	\N	producer	tt2058673,tt0102685,tt0240890,tt0283111
nm0009223	Phil Abrams	\N	\N	actor,producer,writer	tt8526872,tt7210448,tt1416765,tt1742044
nm0009224	Ray Abrams	1906	1981	animation_department,writer,visual_effects	tt11427366,tt0142379,tt0057763,tt0063950
nm0009225	Reginald 'Motsi Ski' Abrams	\N	\N	actor	tt0102357
nm0009226	Rhett Abrams	\N	\N	camera_department	tt0106868,tt29932509,tt0311629
nm0009227	Richard Abrams	\N	\N	actor	tt0064652
nm0009228	Rita Abrams	\N	\N	actress	tt0013399
nm0009229	Rita Abrams	\N	\N	miscellaneous,actress	tt0072665,tt0074964
nm0009230	Robert Abrams	\N	\N	producer	tt0198175
nm0009231	Robert Vitelli	\N	\N	actor,producer,director	tt0166176,tt0308499,tt0308461,tt0129687
nm0009232	Robert L. Abrams	\N	\N	actor,producer	tt0072600
nm0009234	Ron Abrams	\N	\N	make_up_department	tt0099939,tt0089003,tt0100201,tt0104783
nm0009235	Ronald Abrams	\N	\N	location_management,miscellaneous,writer	tt0470705,tt0082620,tt0082213,tt0093347
nm0009237	Ronald Abrams	\N	\N	composer	tt0141913
nm0009238	Ruth Abrams	\N	\N	miscellaneous	tt0100592
nm0009239	Shirley Abrams	\N	\N	casting_director,casting_department,miscellaneous	tt0113419,tt0119123,tt0102978,tt0117177
nm0009240	Sol Abrams	\N	\N	actor	tt0106308,tt0092991
nm0009242	Solomon Abrams	\N	\N	actor	tt0114214,tt0120324,tt0118478
nm0009243	Stacey Abrams	\N	\N	location_management	tt0119062
nm0009244	Stacy Abrams	\N	\N	manager,casting_director,producer	tt2597098,tt0097593
nm0009245	Stephen B. Abrams	\N	\N	camera_department,assistant_director	tt0120885,tt0110847,tt0107668,tt0108234
nm0009246	Steve Abrams	\N	\N	miscellaneous	tt0147800,tt0102559
nm0009247	Susan Abrams	\N	\N	production_manager,miscellaneous,assistant_director	tt0108399,tt0301976,tt0102095,tt0100239
nm0009248	Tom Abrams	1958	\N	writer,director,script_department	tt0242773,tt0093960,tt0434086,tt0094512
nm0009249	Tracy Rosen	\N	\N	writer,producer,miscellaneous	tt0134247,tt0222568,tt0117283,tt4622202
nm0009250	Vernon Abrams	\N	\N	actor	tt0106486
nm0009251	Denis Abramsen	\N	\N	cinematographer,editor,director	tt1602548,tt3086198,tt0115737,tt1554566
nm0009252	Roy Abramsohn	1961	\N	actor,sound_department,archive_footage	tt2187884,tt7668870,tt18076786,tt14802516
nm0009253	Carin Abramson	\N	\N	camera_department,actress	tt0076726,tt0083186,tt0079813
nm0009254	Evy Abramson	\N	\N	costume_designer,costume_department	tt0077022,tt0077085,tt0217938,tt3694984
nm0009255	Hans Abramson	1930	2012	director,producer,writer	tt0062217,tt0061427,tt0065129,tt0066460
nm0009256	Herb Abramson	1916	1999	producer	tt0125308,tt0321315
nm0009257	Ivan Abramson	1869	1934	writer,director,producer	tt0005348,tt0321663,tt0005129,tt0158939
nm0009258	Jeanne Abramson	\N	\N	miscellaneous	tt0095850,tt0093404
nm0009259	Jill Abramson	1954	\N	writer,miscellaneous	tt0192634,tt0133302,tt2481202,tt0123338
nm0009260	Jody Abramson	\N	\N	producer,miscellaneous	tt0090497,tt0466976,tt0115418,tt0104732
nm0009261	Joe Abramson	\N	\N	miscellaneous	tt0116324,tt0106080,tt0119644
nm0009262	Joshua Abramson	1962	\N	actor	tt0098904,tt0112173,tt0107287
nm0009263	Laine Abramson	\N	\N	art_department,production_designer,set_decorator	tt0463985,tt1013752,tt0360486,tt0426883
nm0009264	Lawrence Abramson	\N	\N	producer,miscellaneous,manager	tt2497788,tt0144640,tt0195280,tt1232199
nm0009265	Leopold Abramson	1893	1998	\N	\N
nm0009266	Max Abramson	1884	1956	writer	tt0016059,tt0135474,tt0013713,tt0013255
nm0009267	Michael Abramson	1948	2011	producer,miscellaneous	tt0458241,tt0487977,tt35252872,tt0487979
nm0009268	Mitchell Abramson	\N	\N	art_department	tt0101998,tt0109227
nm0009269	Nancy Abramson	\N	\N	actress	tt0095169,tt0088611,tt0088594,tt0090875
nm0009272	Richard Gilbert Abramson	\N	\N	producer,director	tt0089791,tt0090500,tt0094744,tt0072681
nm0009273	Rick Abramson	\N	\N	actor	tt0118979,tt0441718
nm0009274	Robb Abramson	\N	\N	art_department	tt0204946,tt0242733,tt0221728,tt0247111
nm0009275	Stephen Abramson	\N	\N	miscellaneous	tt0087800,tt0083542
nm0009276	Stephen J. Abramson	\N	\N	director,producer,writer	tt0092322,tt1244657,tt36891979,tt7605398
nm0009277	Stuart Abramson	\N	\N	camera_department,actor	tt0314353,tt0109303,tt0110216,tt0120008
nm0009278	Susan Abramson	\N	\N	casting_department,miscellaneous,producer	tt0265591,tt0092342,tt1467934,tt1369805
nm0009279	William Abramson	\N	\N	assistant_director,cinematographer	tt0157609,tt0012867,tt0007892,tt0158939
nm0009280	Zivit Abramson	\N	\N	actress	tt0068890,tt0083604,tt0086645
nm0009281	Zuma Abramson	\N	\N	editorial_department	tt0165494
nm0009282	Genri Abramyan	1937	1997	cinematographer	tt0066175,tt0231565,tt0083273,tt0086187
nm0009283	Khoren Abrahamyan	1930	2004	actor,director,producer	tt0418342,tt1587315,tt0146505,tt0051175
nm0009284	Levon Abramyan	\N	\N	actor	tt0275262
nm0009285	Jean-François Abran	\N	\N	camera_department	tt1877832,tt0945513,tt0366627,tt0452608
nm0009286	Adelina Abranches	1866	1945	actress	tt0021125,tt0021076,tt0030697
nm0009287	Aluizio Abranches	1961	\N	director,assistant_director,producer	tt1440741,tt0192713,tt0327201,tt4006906
nm0009288	Ana Paula Abranches	\N	\N	actress	tt0138275
nm0009289	Aura Abranches	1896	1962	actress	tt0046252,tt0021076,tt0050324,tt0053191
nm0009290	Carolina Abranches	\N	\N	actress	tt0366046,tt0144724,tt0167656
nm0009291	Filipe Abranches	\N	\N	director,writer,editorial_department	tt5573972,tt1961467,tt28513387,tt9413938
nm0009292	Suzana Abranches	\N	\N	actress,writer,miscellaneous	tt0149528,tt0138247,tt1560788,tt0480667
nm0009293	Rouben Abranian	\N	\N	art_department	tt0120646
nm0009294	Déborah Abranson	\N	\N	actress	tt0226238,tt5014750
nm0009295	Jessica Abrante	\N	\N	assistant_director	tt0168960
nm0009296	Avelino Abrantes	\N	\N	producer	tt0081222
nm0009297	Cínthia Abrantes	\N	\N	actress	tt0138269
nm0009298	Frank E. Abrantes	\N	\N	actor	tt0086533
nm0009299	Mara Abrantes	1934	2021	actress,composer	tt0180816,tt0193813,tt0197244,tt0191103
nm0009300	Stanislaw Abrantowicz	\N	\N	production_manager,miscellaneous	tt0172090,tt0346171,tt1029326,tt0177027
nm0009301	Fred Abranz	1909	1992	animation_department	tt0068612,tt0070165,tt0144194,tt0181941
nm0009302	Hadi Abrar	\N	\N	director,assistant_director,producer	tt13687332,tt6046994,tt0114234,tt1279105
nm0009303	Alexandre Abrard	\N	\N	sound_department,cinematographer,camera_department	tt0235606,tt0096143,tt0443844,tt0290594
nm0009304	Henri Abrard	\N	\N	actor	tt0167565
nm0009305	Michael Abrash	\N	\N	miscellaneous	tt0239023,tt0152116,tt0286598,tt0360519
nm0009306	Shoshana Abrass	\N	\N	visual_effects	tt0112384
nm0009307	Giò Abrate	\N	\N	actor	tt0075692
nm0009308	Ed Abratowski	\N	\N	actor,transportation_department	tt0212974
nm0009309	Gilles Abravanel	\N	\N	sound_department,composer	tt0947101,tt6352878,tt0126644,tt0414708
nm0009310	Alberto Abraão	\N	\N	actor	tt0182502
nm0009311	Glorimar Abreau	\N	\N	\N	tt0148618,tt0471332
nm0009312	Cris Abrego	\N	\N	producer,writer,executive	tt1911872,tt0965393,tt1586310,tt1361721
nm0009313	Claudia Abrego	\N	\N	actress,stunts,transportation_department	tt11083552,tt1950186,tt7131622,tt14208870
nm0009314	David E. Abrego	\N	\N	art_department	tt0103919,tt0100904,tt0100811,tt0097429
nm0009315	Fidel Abrego	\N	\N	actor,stunts	tt0328107,tt3721964,tt0378455,tt0091400
nm0009316	Horácio Abrego	\N	\N	actor	tt0219692
nm0009317	Jesús Abrego	\N	\N	actor	tt0036561
nm0009318	Olga Abrego	\N	\N	actress	tt0113247,tt1666158,tt0364120,tt3746814
nm0009319	Brad Abrell	1965	\N	actor,miscellaneous,special_effects	tt0119654,tt0120912,tt1409024,tt10676052
nm0009320	Sarah Abrell	\N	\N	actress	tt0090685,tt3083016,tt0087635,tt0083260
nm0009321	Darla Abrem	\N	\N	actress	tt0126084
nm0009322	Claude Abremont	\N	\N	composer,sound_department	tt0293673,tt0170971,tt17078688,tt1382604
nm0009323	Diana Abrena	\N	\N	animation_department	tt0101135,tt0402935,tt0142193,tt0127464
nm0009324	Paolo Abrera	\N	\N	actor,production_manager	tt0219993,tt0378690,tt0476514,tt18955378
nm0009325	Abreu Abreu	\N	\N	\N	tt0087696
nm0009326	Alejandra Abreu	1953	\N	actress	tt0169277,tt0228962,tt0278214,tt0220230
nm0009327	Ana Mara Abreu	\N	\N	production_designer,art_director,art_department	tt28582081,tt0314009,tt1134860,tt0264117
nm0009328	António Abreu	\N	\N	camera_department,location_management,miscellaneous	tt15290226,tt4406178,tt0436971,tt1316621
nm0009329	António Abreu	\N	\N	actor	tt0254738
nm0009330	Caio Fernando Abreu	1948	1996	writer,actor,archive_footage	tt0088731,tt1111931,tt0261245,tt1357348
nm0009331	Carlos Alberto Abreu	\N	\N	director	tt0190316
nm0009332	Cecile Abreu	\N	\N	actress	tt0037079,tt0221155,tt0409939
nm0009333	Chico Abreu	1984	\N	actor	tt0154062,tt0312163
nm0009334	Cláudia Abreu	1970	\N	actress,writer,producer	tt2372755,tt0385387,tt0488259,tt0456122
nm0009339	Evaristo Abreu	\N	\N	actor,writer	tt1802504,tt29869342,tt10739668,tt0272081
nm0009340	Gerson Abreu	1964	2002	actor,writer	tt13117706,tt0257293,tt0231243,tt0210420
nm0009341	Gilda de Abreu	1904	1979	writer,director,actress	tt0178296,tt0176688,tt0178833,tt0186892
nm0009342	Gustavo Abreu	\N	\N	actor	tt0069168
nm0009343	Helder Abreu	\N	\N	actor	tt0110095
nm0009344	Jorge Luis Abreu	\N	\N	actor	tt0496806,tt0108778,tt0108757,tt0119887
nm0009345	José Abreu	\N	2007	director,producer,actor	tt0115941,tt0154067,tt1833121,tt0833395
nm0009346	José Eduardo Abreu	\N	\N	director	tt0497858,tt0233109,tt1521185,tt1139653
nm0009347	Juan Manuel Abreu	\N	\N	actor	tt0092901
nm0009348	Luis Alberto de Abreu	1952	\N	writer	tt0355809,tt0447589,tt0145026,tt10925780
nm0009349	Luis Gerónimo Abreu	1972	\N	actor,assistant_director,archive_footage	tt2856378,tt9327242,tt27836518,tt7180378
nm0009350	Luiz Abreu	\N	\N	make_up_department,actor	tt0200884,tt0191108,tt0261225,tt0196746
nm0009351	Maria Clara Abreu	\N	\N	director,assistant_director,actress	tt8035266,tt0870090,tt27505298,tt0158789
nm0009352	Maria João Abreu	1964	2021	actress,miscellaneous,writer	tt5756188,tt0817233,tt10133388,tt9326772
nm0009353	María del Carmen Abreu	\N	\N	actress	tt0057855
nm0009354	Merche Abreu	\N	\N	actress	tt0079927,tt0065792
nm0009355	Ovídio Abreu	\N	\N	actor,assistant_director	tt0145685,tt0143837,tt0207917,tt0241211
nm0009356	Patrícia Abreu	\N	\N	actress	tt0110802,tt0413569,tt0162862,tt0112710
nm0009357	Paulo Abreu	1964	\N	cinematographer,director,editor	tt9277030,tt3243154,tt3242842,tt27141031
nm0009358	Pedro Abreu	\N	\N	camera_department	tt1567257,tt1479041,tt1346860,tt0167557
nm0009359	Rogerio Abreu	\N	\N	director	tt0121134
nm0009360	Ronaldo Abreu	\N	\N	make_up_department	tt0082933,tt0186256,tt0074443,tt0074184
nm0009361	Rubens Abreu	\N	\N	actor,make_up_department	tt0064616,tt0199424,tt0159480,tt0199401
nm0009362	Sean Abreu	\N	\N	composer	tt0161841,tt2102288,tt0361537
nm0009363	Sérgio Abreu	1975	\N	actor	tt0985073,tt0481254,tt1532940,tt0144724
nm0009364	Vicente Abreu	\N	\N	writer	tt0279615
nm0009365	Philippe Abrezol	\N	\N	sound_department	tt0101152,tt0093965,tt0473595,tt0169456
nm0009366	Abrhaim	\N	\N	actor	tt0239936
nm0009368	Josef Abrhám	1939	2022	actor,soundtrack,archive_footage	tt0066516,tt1464251,tt0449303,tt0108027
nm0009369	Patrick Abrial	1946	\N	composer,actor,sound_department	tt2085869,tt0189028,tt0109927,tt1352645
nm0009370	Jean Abribat	\N	\N	production_designer	tt0250966,tt0251493
nm0009371	Scott Abriel	\N	\N	art_department	tt0105685
nm0009372	Andrei Abrikosov	1906	1973	actor	tt0029850,tt0049358,tt0037824,tt0174174
nm0009373	Grigori Abrikosov	1932	1993	actor	tt0173725,tt0049536,tt0062323,tt0078042
nm0009375	Lucía Abril García	\N	\N	miscellaneous	tt0091981,tt0179563,tt0090668,tt0402703
nm0009376	Albert Abril	1947	\N	director,writer,actor	tt0084860,tt0097519,tt0326054,tt10374118
nm0009377	Carmen Abril	\N	\N	actress	tt0015667
nm0009378	Cristina Abril	\N	\N	miscellaneous,producer	tt0082917,tt0083297,tt0085583,tt1637670
nm0009379	Dolores Abril	1939	2020	actress,soundtrack,archive_footage	tt0059228,tt0063405,tt0060285,tt0052775
nm0009380	Dorothy Abril	1897	1977	actress	tt0008119,tt0006327,tt0006947,tt0008673
nm0009381	Jean-Philippe Abril	\N	\N	costume_designer,costume_department	tt0107617,tt0167565,tt3782710,tt0214335
nm0009382	José Luis Abril	\N	\N	miscellaneous	tt0115663
nm0009383	Manuel Abril	\N	\N	writer	tt0031568,tt0036615
nm0009384	Sabrina Abril	\N	\N	miscellaneous	tt0081961
nm0009385	Valerie Abril	\N	\N	actress	tt0101416,tt0109137,tt0109794
nm0009386	Juan J. Abrines	\N	\N	\N	\N
nm0009387	Martín Abriqueta	\N	\N	actor	tt0196470,tt0497153,tt0467950
nm0009388	Khosrow Abrishami	\N	\N	actor	tt0112641
nm0009389	Manuel Abro del Val	\N	\N	actor	tt0039363
nm0009390	Alison Anne Abrohams	\N	\N	miscellaneous,producer,actress	tt0107144,tt0137523,tt0258000,tt2780586
nm0009391	Nana Abrokwa	1968	\N	actor,composer,soundtrack	tt0105325,tt0248010,tt0081860,tt4718990
nm0009392	Yolanda Abrola	\N	\N	actress	tt0115807
nm0009393	Werner Abrolat	1924	1997	actor,miscellaneous,archive_footage	tt0252769,tt0273442,tt0040537,tt0117143
nm0009394	Jessica Abroms	\N	\N	visual_effects,miscellaneous,producer	tt0120755,tt0236493,tt0317705,tt0317219
nm0009395	Lynn Abroms	\N	\N	editorial_department	tt0111301,tt0111686,tt0092746,tt0285333
nm0009396	Rachel Abroms	\N	\N	casting_director,casting_department	tt0120611,tt0176269,tt0108330,tt0103776
nm0009398	Tamara Abrosimova	1939	\N	actress	tt5847168,tt0072015,tt0075190,tt0191375
nm0009399	Marystell Molina	1943	2020	actress	tt0229914,tt0224859,tt0207077,tt0287856
nm0009400	Lawrence Abrott	1888	1961	actor	tt0434234,tt0002609,tt0434435
nm0009401	Stephen Abrums	\N	\N	make_up_department,actor,miscellaneous	tt0093260,tt0120611,tt0120004,tt0090859
nm0009402	Pedro Abrunhosa	1960	\N	composer,actor,writer	tt4649174,tt0112304,tt9700984,tt0951898
nm0009403	Nada Abrus	1951	\N	actress	tt0169716,tt0099554,tt0875807,tt1250394
nm0009404	Christine Abrusci	\N	\N	\N	\N
nm0009406	Alberto Abruzzese	1942	\N	actor,writer,director	tt4715060,tt0252883,tt0083102,tt0169788
nm0009407	William Abruzzi	\N	\N	actor	tt0066822
nm0009408	Ben L. Abruzzo	\N	\N	actor	tt0066917
nm0009409	Michele Abruzzo	1905	1996	actor	tt0039256,tt0086779,tt0030338,tt0379867
nm0009410	Ray Abruzzo	\N	\N	actor,writer,producer	tt0141842,tt3502262,tt0118437,tt0081856
nm0009411	Tony Abruzzo	\N	\N	actor	tt0159371,tt0097911
nm0009412	Ed Abry	\N	\N	actor	tt0076841
nm0009413	Jonas Abry	1975	\N	actor,archive_footage	tt0096018,tt0098347
nm0009414	Moussa Sene Absa	1958	\N	director,writer,actor	tt0309577,tt21388904,tt0138122,tt1085510
nm0009415	Ariel Absalón	1923	2006	actor	tt0186465,tt0201889,tt0202054,tt0195424
nm0009416	Dee Absel	\N	\N	composer	tt0131778
nm0009417	Jerry Absel	\N	\N	composer	tt0131778
nm0009418	Gabriele Abshagen	\N	\N	miscellaneous	tt0117729
nm0009419	Shannon Absher	\N	\N	actress	tt0121566,tt0099366,tt0096950
nm0009420	Daniel Absil	1937	\N	director	tt0176997,tt1068866,tt0341901
nm0009424	Joe Absolom	1978	\N	actor,soundtrack,archive_footage	tt2537176,tt0408381,tt0088512,tt0283160
nm0009425	Lee Absolom	\N	\N	actor,miscellaneous	tt0253083,tt0149695,tt3464950
nm0009426	Susanne Absolon	\N	\N	actress	tt0087393
nm0009427	Monika Abspacher	\N	\N	editor,sound_department,editorial_department	tt1094591,tt0308365,tt0806910,tt0907688
nm0009428	Ab Abspoel	1925	2000	actor	tt0111887,tt0958009,tt1362528,tt0144705
nm0009429	Bert Abspoel	\N	\N	actor	tt0176051
nm0009430	Dean Abston	1950	\N	actor,stunts	tt0093692,tt0103239,tt0086822,tt0092641
nm0009431	Kenny Abston	\N	\N	actor	tt0071287
nm0009432	Alona Abt	\N	\N	producer	tt0119660,tt0135764,tt0143871,tt2604104
nm0009433	Christine Abt	\N	\N	actress	tt0075870,tt0074198,tt0082057,tt0079121
nm0009434	Dieter-Philippe Abt	\N	\N	writer,producer,executive	tt4254336,tt0085174
nm0009435	Emily Abt	\N	\N	writer,director,cinematographer	tt1209364,tt3117718,tt26217712,tt0171804
nm0009436	Katharina Abt	1967	\N	actress	tt4176826,tt0107330,tt0392970,tt0099283
nm0009437	Marion Abt	\N	\N	actress	tt0067465
nm0009438	Anina Abt-Stein	1988	\N	actress	tt6341086,tt0118646,tt4919066,tt0907694
nm0009440	Ghirmai Abtenas	\N	\N	actor	tt0214252
nm0009441	Hans-Peter Abts	\N	\N	production_manager,miscellaneous,assistant_director	tt0246677,tt1139328,tt0396171,tt2107814
nm0009442	Muhamad Abu Ajaj	\N	\N	composer	tt0145678,tt3423000
nm0009443	Kahled Abu Ali	\N	\N	\N	tt0106347
nm0009444	Shawki Abu Ali	\N	\N	miscellaneous	tt0082432
nm0009445	Fatimah Abu Bakar	\N	\N	actress,casting_department,miscellaneous	tt33202418,tt27796029,tt21205440,tt6505826
nm0009446	Wael Abu Bakr	\N	\N	\N	tt0149314
nm0009447	Abu El Fatouh	\N	\N	actor	tt0070894,tt0398601
nm0009448	Abdulrahman Abu Al-Qasem	\N	\N	actor	tt13523312,tt32636616,tt3110446,tt3109744
nm0009449	Azman Abu Hassan	\N	\N	sound_department,composer,actor	tt0296030,tt0270745,tt1163210,tt0470768
nm0009450	Ghassan Abu Libda	\N	\N	actor	tt0111354
nm0009451	Bashir Abu Rabi'a	\N	\N	special_effects,art_department,art_director	tt0445620,tt0107101,tt9800124,tt1424327
nm0009453	Mona Abu Rayyan	\N	\N	assistant_director	tt0111354
nm0009454	Ahmad Abu Sal'oum	\N	\N	actor	tt0111354,tt0135650,tt1410360,tt1320282
nm0009455	Mohamed Abu Youssef	1921	\N	writer	tt0355774,tt0205241,tt0126341,tt35935359
nm0009456	A.T. Abu	\N	\N	director,writer	tt0352185,tt0334206,tt0279043,tt0353412
nm0009457	Abou Djamel	\N	\N	actor	tt0360397,tt7255020,tt0061751,tt0072782
nm0009458	Kamaruddin Abu	\N	\N	editor	tt0244659,tt1143095,tt1003293,tt0244763
nm0009460	Shmuel Abu	\N	\N	actor	tt0148612
nm0009462	Yehuda Abu	\N	\N	camera_department	tt0093993,tt0093891
nm0009463	Hany Abu-Assad	1961	\N	director,writer,producer	tt2852406,tt0445620,tt0305229,tt4686692
nm0009464	Souheila Abu-Assad	\N	\N	actress	tt0109996
nm0009465	Mahmoud Abu-Bahar	\N	\N	producer	tt0143736
nm0009466	Akhmed Abu-Bakar	1931	1991	writer	tt0082928,tt0149586,tt5494778,tt0068993
nm0009468	Diana Abu-Jaber	\N	\N	\N	tt0242361
nm0009469	Dolly Abu-Jawdah	\N	\N	production_designer	tt0221181
nm0009470	Mahmoud Abu Jazi	\N	\N	actor,director,writer	tt33510711,tt1692202,tt35837576,tt4565380
nm0009471	Ibrahim Abu-Jummah	\N	\N	actor	tt0117263,tt0115895
nm0009472	Bilal Abu-Satilah	\N	\N	actor	tt0117263
nm0009473	John Abu-Ulba	\N	\N	location_management,miscellaneous	tt0283641,tt0274546
nm0009475	Tarek Abu-Zayyad	\N	\N	producer	tt0116714
nm0009476	Ziad Abu-Zayyad	\N	\N	\N	tt0104131
nm0009477	Claudia Abuali	\N	\N	art_department,art_director,camera_department	tt0193560,tt1450320,tt0417408,tt0220847
nm0009478	Dj. Abuashvili	\N	\N	art_department	tt0275836,tt0275855,tt0151035,tt0075963
nm0009479	Avi Abuav	\N	\N	actor	tt0087699
nm0009480	Earnest Abuba	\N	\N	actor	tt0239004
nm0009481	Ernest Abuba	1947	\N	actor,producer	tt0114746,tt0099939,tt0101371,tt0108876
nm0009482	Ahmed Abubaia	\N	\N	actor	tt0097645,tt34706096
nm0009483	Shukri Abubakar	\N	\N	actor	tt0118332
nm0009484	Liliana Abud	1948	\N	writer,actress	tt0233092,tt1743281,tt0212642,tt1159993
nm0009485	Mahmud Abudaber	1953	\N	cinematographer,casting_director,producer	tt0163256,tt0094077,tt0101446
nm0009486	Tommy Abuel	\N	\N	actor,archive_footage	tt0073363,tt5890698,tt1063633,tt0186265
nm0009487	Adam Abugov	\N	\N	actor	tt0165874
nm0009488	Jeff Abugov	1959	\N	producer,writer,miscellaneous	tt0094540,tt1799834,tt0165874,tt0369179
nm0009489	Tyler Abugov	1989	\N	actor	tt0165874
nm0009490	Yousef Abuhamdeh	\N	\N	actor	tt0083624
nm0009491	Bassem Abuhanna	\N	\N	miscellaneous	tt0233656,tt0208037
nm0009492	Jose Romero Abuin	\N	\N	camera_department,miscellaneous	tt0113492,tt0127536,tt0120765
nm0009493	David Abuiso	\N	\N	music_department	tt1148165,tt0119746
nm0009494	André Abujamra	1965	\N	composer,actor,music_department	tt1753722,tt0263124,tt0877323,tt0174481
nm0009495	Antonio Abujamra	1932	2015	director,actor,producer	tt0156531,tt0209811,tt0209525,tt0287255
nm0009496	Clarisse Abujamra	1947	\N	actress,writer,miscellaneous	tt5631456,tt0977642,tt2550692,tt32588149
nm0009497	Irene Abujatúm	\N	\N	art_department	tt0206694
nm0009498	Ramunas Abukevicius	1959	\N	actor,director,producer	tt29293988,tt0820010,tt28911648,tt0259127
nm0009499	Petras Abukiavicus	1928	1997	director,writer,cinematographer	tt0100380,tt26739354,tt0471745,tt34537410
nm0009500	Lejli Abukova	1951	\N	actress	tt0068009,tt5352982
nm0009501	Nawal Abou El Fotouh	1940	2007	actress	tt0225044,tt33086975,tt0371218,tt21288268
nm0009502	Ketevan Abuladze	\N	\N	actress	tt0093754,tt0325602,tt5791536,tt0283910
nm0009503	Nino Abuladze	\N	\N	actress	tt0325602
nm0009504	Adam Abulafia	\N	\N	actor	tt0112428,tt0889157
nm0009505	Salvador Abularach	\N	\N	writer,producer,composer	tt0252345,tt0268209
nm0009506	Pete Abulencia	\N	\N	miscellaneous,producer	tt0067100,tt0106951,tt0088137,tt0474863
nm0009507	Baruch Abuloff	\N	\N	producer,assistant_director,location_management	tt0091278,tt0090274,tt0151588,tt0089217
nm0009508	Gustavo Cerff Arbulú	\N	\N	production_manager,assistant_director	tt0068182,tt0083946,tt4668194
nm0009595	Alessandra Acciai	1965	\N	actress,producer,writer	tt0109135,tt3463244,tt0204098,tt0210074
nm0009509	Sylvia Abumuhor	\N	\N	miscellaneous,actress,costume_department	tt3149538,tt0120112,tt0220346,tt0244248
nm0009510	Abundavita	\N	\N	\N	tt0060712,tt0057047
nm0009511	Daniel Abundis	\N	\N	actor,miscellaneous	tt0215409,tt0107745,tt0211866
nm0009512	Ioana Abur	1969	\N	actress,miscellaneous,archive_footage	tt12004038,tt0790686,tt0337636,tt1515208
nm0009513	Birzhan Abdurakhmanov	\N	\N	actor	tt0170593
nm0009514	Heidi Aburas	\N	\N	make_up_department	tt1204979,tt0247085,tt1260677,tt0251506
nm0009515	Robert Aburbe	\N	\N	actor	tt0167644,tt2403634
nm0009516	Deana Molle'	1970	\N	actress,producer,director	tt0125664,tt0202470,tt12060256
nm0009517	Jordi Abusada	1966	2017	cinematographer,camera_department,director	tt6036002,tt5456104,tt0319769,tt0146468
nm0009518	Juan Abusaid	\N	\N	producer	tt0181033
nm0009519	Bob Abuse	\N	\N	actor	tt0124102
nm0009520	Kalia Abusite	\N	\N	actress	tt0106282
nm0009521	Muhamed Abusite	\N	\N	actor	tt0106282
nm0009522	Rami Abusite	\N	\N	actor	tt0106282
nm0009523	Federico Abussi	\N	\N	assistant_director,camera_department,miscellaneous	tt0180396,tt0060073,tt0075168
nm0009524	Franco Abussi	1947	\N	writer,cinematographer,director	tt0272290,tt0125833,tt2152034,tt0180396
nm0009525	Mario Abussi	\N	\N	miscellaneous,production_manager,actor	tt0057171,tt0058335,tt0047313,tt0073131
nm0009527	Elsa Abutal	\N	\N	editor	tt0225968,tt0091476
nm0009528	Zauresh Abutaliyeva	\N	\N	actress	tt0272195
nm0009529	Angie Abutbol	\N	\N	actress	tt0103813
nm0009530	Alon Aboutboul	1965	2025	actor,director,writer	tt1345836,tt0758774,tt3300542,tt0095956
nm0009531	Leah Abutbul	\N	\N	costume_department	tt0093993,tt0093891,tt0095182
nm0009532	Huda Abuzeid	1971	\N	producer,miscellaneous	tt1331123,tt0365885,tt0241102,tt0216501
nm0009533	Lyle Abvajee	\N	\N	actor	tt0110256
nm0009534	Abwärts	\N	\N	composer,music_department,soundtrack	tt0347048,tt3397082,tt1571992,tt0206851
nm0009535	K. Abylov	\N	\N	actor	tt0309767,tt0189548
nm0009536	Melis Abzalov	1938	2016	actor,assistant_director,director	tt2514328,tt2807620,tt0301965,tt7808300
nm0009537	Eteri Abzianidze	\N	\N	actress	tt0275855,tt7783926,tt0068993,tt0830628
nm0009538	Bella Abzug	1920	1998	actress,archive_footage	tt0079522,tt0103629,tt0476104,tt0070937
nm0009539	João Abóbora	\N	\N	sound_department,miscellaneous	tt0058503,tt0057913,tt0054217,tt0057403
nm0009540	AC/DC	\N	\N	music_artist,actor,music_department	tt0371746,tt10121392,tt1440129,tt0848228
nm0009541	Nicole Acacio	\N	\N	producer,miscellaneous,actress	tt1356864,tt8343642
nm0009543	Wania Acaiaba	\N	\N	actress	tt0421453,tt0138269
nm0009544	João Acaiabe	1944	2021	actor	tt0140477,tt0294196,tt1646196,tt0105744
nm0009545	Aileen Acain	\N	\N	actress,writer,assistant_director	tt0109254,tt10708942,tt0096542,tt0084015
nm0009546	Al Acain	\N	\N	actor	tt0092381,tt0098065
nm0009547	Acajou	\N	\N	actor	tt0078050
nm0009548	Martin Acala	\N	\N	miscellaneous	tt0109537
nm0009549	Linda Acaldo	\N	\N	location_management,miscellaneous	tt0072401,tt0069303
nm0009550	Bruno Alexander	\N	\N	actor,miscellaneous	tt0490086,tt0095963,tt0086200,tt0370986
nm0009551	Oscar Acalittro	\N	\N	miscellaneous	tt0108358
nm0009552	Franco Acampora	1944	\N	actor,archive_footage	tt0068240,tt0065618,tt0084646,tt0066511
nm0009554	Michael Acampora	\N	\N	actor	tt0090350
nm0009555	Ernie Acanfora	\N	\N	miscellaneous	tt0119685,tt2016285
nm0009556	Acanthus	\N	\N	composer,soundtrack	tt0065744,tt16477424
nm0009557	Bernardo Acar	\N	\N	actor	tt0228454
nm0009558	Ismail Acar	\N	\N	make_up_department,visual_effects,director	tt0418279,tt0409182,tt0285531,tt0383574
nm0009559	Juan Acar	\N	\N	producer	tt0274633
nm0009560	Sertan Acar	1948	\N	actor	tt0293223,tt0151266,tt1184952,tt0279080
nm0009561	Yunus Acar	\N	\N	sound_department	tt0151137,tt0116231,tt0107471,tt0111019
nm0009562	Louis Acariès	\N	\N	miscellaneous	tt0101547,tt9867260,tt3730312,tt21480862
nm0009564	Acarregui	\N	\N	\N	tt0138015
nm0009565	Iñaki Akarregui	\N	\N	assistant_director,production_manager	tt0085374,tt0071328,tt0077327,tt0088966
nm0009566	Fernando Acaso	1963	\N	actor,miscellaneous,archive_footage	tt1100898,tt0455115,tt0198093,tt0101637
nm0009567	Félix Acaso	1919	2007	miscellaneous,actor,writer	tt0062628,tt0052215,tt0139713,tt0050713
nm0009568	Lionel Acat	\N	\N	assistant_director,art_department,art_director	tt0108394,tt2404461,tt0111507,tt0253839
nm0009570	Zar Acayan	1967	\N	actor	tt0094514,tt0116517,tt0250126
nm0009571	Jonathan Acbard	\N	\N	sound_department	tt3716530,tt0401711,tt1480656,tt8359848
nm0009572	Pino Accame	\N	\N	writer	tt0035367,tt0034612
nm0009573	Henriette Accard	\N	\N	actress	tt0119619
nm0009574	Ivan Accardi	\N	\N	actor	tt13277364,tt0111603
nm0009575	Nello Accardi	\N	\N	actor	tt0087537
nm0009576	Nico Accardi	\N	\N	art_department,casting_department	tt0111689,tt0108554
nm0009577	Vincent Accardi	1973	\N	editor,editorial_department	tt1107855,tt0268299
nm0009578	Alicia Accardo	\N	\N	script_department,writer,producer	tt2109248,tt0368891,tt20969586,tt3410834
nm0009579	Joey Accardo	\N	\N	actor	tt0277017
nm0009580	Michael Accardo	\N	\N	actor	tt1833285,tt8303474,tt2805096,tt0149178
nm0009581	Salvatore Accardo	1941	\N	music_department,composer,soundtrack	tt0098052,tt0077907,tt0098391,tt0116240
nm0009582	Joe Accaria	\N	\N	music_department	tt0865297,tt0243082
nm0009584	Danielle Carin	1977	\N	actress	tt0118298,tt0191911,tt0098844,tt0125438
nm0009585	Arlette Accart	1926	1957	actress	tt0202083,tt0156431,tt0041750
nm0009586	Yves Accary	\N	\N	writer	tt0113829
nm0009587	Franco Accatino	\N	\N	actor	\N
nm0009588	Giuseppe Accattino	1914	1979	director,writer,producer	tt0041214
nm0009589	Acce Acce	\N	\N	\N	\N
nm0009590	Joe Accerelli	\N	\N	actor	tt2908018,tt3381610,tt0188518,tt20862284
nm0009591	Brian Accetta	\N	\N	transportation_department,miscellaneous	tt0103855,tt0122768
nm0009592	Cesare Accetta	\N	\N	cinematographer,camera_department,actor	tt0170508,tt0274426,tt0374916,tt5713904
nm0009593	Stephanie Accetta	\N	\N	production_manager,producer,miscellaneous	tt0988595,tt1748227,tt1028532,tt6128254
nm0009594	Giorgio Accettura	\N	\N	make_up_department	tt0241657
nm0009599	Angel Acciaresi	1908	\N	assistant_director,director,writer	tt0177289,tt0176580,tt0319437,tt0177423
nm0009600	Carlos Acciari	\N	\N	composer	tt0096871
nm0009601	Paul Acciari	\N	\N	production_designer	tt0087788
nm0009602	Alberto Acciarito	\N	\N	assistant_director,producer,miscellaneous	tt1815636,tt0090788,tt0082893,tt0086989
nm0009603	Frank Acciarito	1981	\N	actor	tt0103759,tt0101252,tt0097714
nm0009604	Michael Acciarito	1971	\N	actor	tt0096156
nm0009606	Rob Acciavatti	\N	\N	\N	tt0213223
nm0009607	Michele Accidenti	\N	\N	actor	tt0061628
nm0009608	Luis Accinelli	1934	2019	actor	tt0408839,tt0089841,tt0138511,tt0437171
nm0009609	Regina Accioli	\N	\N	actress	tt0261283,tt0184624
nm0009610	Renard Accioli	\N	\N	actor	tt0261283
nm0009611	Carlos Accioly	\N	\N	actor	tt0145612,tt0444889
nm0009612	Catarina Accioly	\N	\N	actress,director,writer	tt1051271,tt32160063,tt32186821,tt5939596
nm0009613	Nilsen Accioli	\N	\N	assistant_director,actor,miscellaneous	tt0089087,tt5127750,tt9221962,tt8933992
nm0009614	Mike Accion	\N	\N	cinematographer,camera_department,actor	tt0354579,tt0358271,tt0354487,tt1087664
nm0009616	Hans Accola	\N	\N	art_department	tt0104201,tt0104030
nm0009617	John Accola	\N	\N	actor	tt0091473
nm0009618	Raymond Accolas	\N	\N	actor	tt0117011,tt0159860,tt0429422,tt1495708
nm0009619	Alessio Accolla	\N	\N	make_up_department	tt0201314
nm0009620	Tonino Accolla	1949	2013	miscellaneous,actor,sound_department	tt0091635,tt0198781,tt0085316,tt0094820
nm0009621	Antonino Accomando	\N	\N	actor	tt0144646
nm0009622	Beth Accomando	\N	\N	editor,producer,miscellaneous	tt33808567,tt7089524,tt21959996,tt13404742
nm0009623	Daniel Hsu Accomando	\N	\N	miscellaneous,producer	tt0120685,tt0116629,tt0139809,tt0119592
nm0009624	Maddalena Acconci	\N	\N	talent_agent,miscellaneous	tt0112605,tt0112898,tt0102165
nm0009625	Vito Acconci	1940	2017	director,actor,writer	tt16891340,tt33078901,tt33049964,tt33060825
nm0009626	Fabrizio Accordino	\N	\N	actor	tt0116662,tt0110489
nm0009627	Salvo Accorinti	\N	\N	production_manager,producer,miscellaneous	tt0124649,tt5529032,tt0134780,tt1851959
nm0009628	Roberto Accornero	1957	\N	actor	tt0204098,tt4214470,tt8916320,tt0086779
nm0009629	Stefano Accorsi	1971	\N	actor,writer,director	tt0274497,tt31328588,tt4300480,tt3270896
nm0009630	Claudio Accosta	\N	\N	actor	tt0112674
nm0009631	Suzanne Accosta	\N	\N	actress,producer	tt0083099,tt34771505,tt5032364,tt0243091
nm0009632	Claude Accursi	1920	1988	writer,director,producer	tt0375683,tt0827746,tt0047567,tt0052105
nm0009633	Cosima Accursi	\N	\N	production_manager,editorial_department,miscellaneous	tt0809370,tt3793732,tt1868747,tt0371708
nm0009634	Ana Maria Accurso	\N	\N	actress	tt0188168
nm0009635	Efrem Accurso	\N	\N	actor	tt0100413
nm0009636	Thomas Acda	1967	\N	actor,writer,director	tt23666832,tt13000122,tt9128874,tt5544138
nm0009637	Ace	\N	\N	\N	tt0196634
nm0009638	Diana Ace	\N	\N	visual_effects	tt0103064
nm0009639	Dinah Ace	1932	\N	actress	tt0044259
nm0009640	Goodman Ace	1899	1982	writer,actor,producer	tt0040048,tt0051757,tt0859222,tt0040041
nm0009642	Jane Ace	1900	1974	actress,writer	tt27260698,tt1139312,tt37762361,tt23985432
nm0009643	Johnny Ace	\N	\N	actor	tt0139317,tt0160373,tt0182141,tt0147245
nm0009644	Juliet Ace	1938	2025	writer,actress	tt0088512,tt0131334,tt0135088,tt0133301
nm0009645	Martin Ace	1945	\N	actor,soundtrack	tt0358349,tt0120394,tt0239161,tt5463742
nm0009646	Mellow Man Ace	1967	\N	actor,composer,music_department	tt0100114,tt0100480,tt0250224,tt0415345
nm0009647	Rosemarie Ace	1930	1996	actress	tt0050034,tt0042111,tt0044230,tt0042116
nm0009648	Spader Ace	\N	\N	actor	tt0139523
nm0009649	Steve Ace	\N	\N	\N	tt0138902
nm0009650	Mario Acea	\N	\N	actor	tt0075363
nm0009651	Alfonso Acebal	\N	\N	writer,director,assistant_director	tt0122455,tt0040165,tt0040231,tt0040323
nm0009652	Antonio Acebal	\N	\N	actor	tt0415421,tt0247872,tt0120946,tt0076165
nm0009653	Óscar Acebal	\N	\N	actor	tt0048476
nm0009654	José Antonio Acebes	\N	\N	\N	tt0254409
nm0009655	Carlos Acedo	\N	\N	actor	tt0204196
nm0009656	Davis Acedo	\N	\N	actor	tt0107116
nm0009657	Joey Acedo	\N	\N	actor	tt0097718
nm0009658	William Acedo	\N	\N	art_department	tt0161081,tt0113161,tt0162222,tt0160484
nm0009659	Ceasar Aceituno	\N	\N	miscellaneous	tt0113092
nm0009660	Giovanni Acelti	\N	\N	actor	tt0211393,tt0127675
nm0009661	Sandra Acenas	\N	\N	miscellaneous	tt0114683
nm0009662	Julio César Acera	\N	2018	actor,archive_footage	tt0475464,tt0231040,tt0104781,tt0094251
nm0009663	Santiago Acera	\N	\N	actor,archive_footage	tt0090694,tt0111964,tt0093436,tt0373644
nm0009664	Alessandro Acerbi	\N	\N	actor	tt0131499
nm0009665	Angelo Acerbi	\N	\N	producer,miscellaneous,archive_footage	tt0327153,tt1785397
nm0009666	Riccardo Acerbi	\N	\N	actor	tt0092516,tt0090737,tt0090338,tt0178132
nm0009667	Michel Acerbo	\N	\N	assistant_director,director,actor	tt2059237,tt0089821,tt0099607,tt0107994
nm0009668	Julio C. Acerete	\N	\N	actor	tt0182878
nm0009669	Claire Acerno	\N	\N	actress,director,writer	tt26771971,tt0093964,tt31414881
nm0009670	Gerry Acerno	1961	\N	art_department,animation_department	tt0218791,tt0103584,tt0108783,tt0219458
nm0009671	Paul Acerno	\N	\N	actor	tt0099832
nm0009672	Gerard Acero	\N	\N	actor	tt0423757,tt0093508,tt0101543
nm0009673	Johnny Acero	1972	\N	actor,producer,director	tt5971890,tt6038110,tt0460677,tt6038088
nm0009674	Ricardo Acero	1918	1986	actor	tt0034574,tt0044664,tt0037583,tt0041140
nm0009675	Susan Aceron	1972	2016	actress	tt0314786,tt0114327,tt0213790,tt0279620
nm0009676	Heather Acerro	\N	\N	costume_department	tt0156199
nm0009677	Joan S. Aceste	\N	\N	miscellaneous,production_manager	tt0098193,tt0097905,tt0100003,tt1410948
nm0009678	Katie Aceto	\N	\N	make_up_department	tt0160447
nm0009679	Art Acevebo	\N	\N	actor	tt0149964
nm0009681	Javier Acevedo B.	\N	\N	production_manager	tt0228954
nm0009682	Gonzalo Acevedo Bernal	\N	\N	director,writer,cinematographer	tt0225356,tt0243247,tt0243257,tt0179665
nm0009683	Álvaro Acevedo Bernal	\N	\N	director,writer,cinematographer	tt0225356,tt0243247,tt0236142,tt2980346
nm0009684	Antonio Acevedo Hernández	\N	\N	writer,director	tt0225055,tt0252212,tt0240253,tt33246776
nm0009685	Arturo Acevedo Vallarino	\N	\N	director,writer,editor	tt0179665,tt0178072
nm0009686	Del Acevedo	\N	\N	make_up_department	tt0069113,tt0087262,tt0067927,tt0070707
nm0009687	Agustín Acevedo	\N	\N	actor	tt0112391
nm0009688	Beto Acevedo	\N	\N	editorial_department,special_effects,camera_department	tt0247586,tt3011894,tt0420509,tt2520046
nm0009689	Ana María Acevedo	\N	\N	actress	tt0206694,tt0228395,tt33082041
nm0009690	Angel L. Acevedo	\N	\N	special_effects,visual_effects,make_up_department	tt0115775,tt20869378,tt7353232,tt0183717
nm0009691	Antonio Acevedo	\N	\N	cinematographer,director,assistant_director	tt0222537,tt0214381,tt0211785,tt0243054
nm0009692	Benny Acevedo	\N	\N	actor	tt0105395
nm0009693	Bertina Acevedo	\N	\N	actress	tt0061415,tt0055716,tt0054978,tt0309967
nm0009695	Carlos Acevedo	\N	\N	actor	tt0048170,tt0045843,tt0049705,tt0047252
nm0009696	Carlos Acevedo	\N	\N	actor	tt0265172
nm0009697	Carolina Acevedo	1979	\N	actress	tt1233451,tt0459709,tt0247276,tt6311902
nm0009698	Damián Acevedo	\N	\N	cinematographer,camera_department,editorial_department	tt1622547,tt1503007,tt0469764,tt12348910
nm0009699	Danny Acevedo	\N	\N	actor	tt0144882,tt0099042
nm0009701	Diana Acevedo	1981	\N	sound_department	tt0218804
nm0009702	Erica Mireles Folsey	1967	\N	editorial_department,editor,producer	tt0331953,tt0247745,tt0120654,tt0303816
nm0009703	Fabio Acevedo	\N	\N	actor	tt0209271,tt0225396,tt0032197,tt0391389
nm0009704	Francisco Acevedo	\N	\N	art_department	tt0118001
nm0009705	Gilberto Acevedo	\N	\N	actor	tt0155420
nm0009706	Ginette Acevedo	1942	\N	actress	tt0062333,tt0198372,tt15762986,tt16164638
nm0009707	Gino Acevedo	1964	\N	visual_effects,special_effects,make_up_department	tt0360717,tt0167261,tt0167260,tt0903624
nm0009708	Gustavo Acevedo	\N	\N	art_director,actor	tt6450794,tt4419864,tt0074110,tt11778176
nm0009709	Horacio Acevedo	\N	\N	camera_department	tt0314197,tt0265436,tt0104160,tt0290032
nm0009710	Ingrid B. de Acevedo	\N	\N	producer	tt0127684
nm0009711	Jesús Acevedo	\N	\N	art_department	tt0127935
nm0009712	John Acevedo	\N	\N	miscellaneous,assistant_director,art_department	tt0095963,tt0110508,tt0105402,tt0118124
nm0009713	Jon Acevedo	\N	\N	actor	tt0081748
nm0009714	Jose Acevedo	\N	\N	miscellaneous	tt0117275
nm0009715	Juanita Acevedo	\N	\N	\N	tt0044574
nm0009716	Kirk Acevedo	1971	\N	actor,archive_footage,archive_sound	tt2103281,tt0120863,tt0185906,tt0118421
nm0009717	Lisa Acevedo	\N	\N	actress	tt0113540
nm0009718	Luis Acevedo	\N	\N	actor	tt1937278,tt0118104
nm0009719	Manuel Acevedo	\N	\N	writer	tt0039278
nm0009720	Marcelo Acevedo	\N	\N	producer	tt0094547
nm0009721	Mari Ángeles Acevedo	1930	2009	actress,archive_footage	tt0201721,tt0231040,tt0078268,tt0198093
nm0009722	Miriam Acevedo	1928	2013	actress	tt0071950,tt0068909,tt0191713,tt0051297
nm0009723	Peter Acevedo	\N	\N	actor	tt0078266
nm0009724	Rafael Acevedo	\N	\N	actor	tt0194818,tt0037979,tt0470113,tt0140666
nm0009725	Raymond Acevedo	1971	\N	actor	tt0226318,tt19799468
nm0009726	Ronnie Acevedo	\N	\N	actor	tt0109987,tt0106644,tt0310334
nm0009727	Ruben Acevedo	\N	\N	transportation_department,camera_department,miscellaneous	tt8111130,tt8205854,tt0159291,tt5449390
nm0009728	Santos B. Acevedo	\N	\N	production_manager	tt0033333,tt0032654
nm0009729	Steve Acevedo	\N	\N	director,cinematographer,camera_department	tt1064899,tt14088994,tt12392896,tt11394170
nm0009730	Toneey Acevedo	\N	\N	actor,art_department	tt1488606,tt1409090,tt0320751,tt1493064
nm0009731	William Acevedo	\N	\N	camera_department	tt0221637
nm0009732	Yamandú Acevedo	1963	2020	actor	tt0261488,tt0224941,tt0222616,tt0222592
nm0009733	Óscar Acevedo	\N	\N	composer,music_department	tt0213824,tt32141337,tt1320413
nm0009734	Alejandro Acevedo-Gutiérrez	\N	\N	\N	tt0263278,tt0425231
nm0009735	Luis Aceves Castañeda	1913	1973	actor,archive_footage	tt0232618,tt0050718,tt0044084,tt0050717
nm0009736	Miguel Aceves Mejía	1915	2006	actor,music_department,soundtrack	tt0272458,tt0206529,tt0278321,tt0275995
nm0009737	Gabriella Aceves	\N	\N	actress	tt0109569
nm0009738	Gustavo Aceves	\N	\N	miscellaneous	tt0074110
nm0009739	Harold Aceves	\N	\N	actor	tt0079576
nm0009740	Heriberto Aceves	1930	2010	composer,actor	tt0079984,tt0322580,tt0257543,tt0321348
nm0009741	José de Jesús Aceves	1916	1962	writer,miscellaneous	tt0042804,tt0234522
nm0009742	Sharo Aceves	\N	\N	actress	tt0430806,tt0288850,tt0314505,tt0238504
nm0009743	Jon Acevski	\N	\N	director,writer,producer	tt0104298
nm0009744	Stevce Acevski	\N	\N	production_manager	tt0110882
nm0009745	Harold Acey	\N	\N	actor	tt0077335
nm0009746	Robert Acey	\N	\N	actor	tt0086896,tt0072173,tt0080412
nm0009747	Wendy Acey	1950	2004	assistant_director,miscellaneous,director	tt0312084,tt0296503,tt0266220,tt0115367
nm0009749	Mari Tere Aceña	\N	\N	actress	tt0018759
nm0009750	María Luisa Aceña	\N	\N	actress	tt0016161,tt0018759
nm0009751	Milan Achac	\N	\N	visual_effects,art_department	tt0120145,tt0163597
nm0009752	Fanny Achache	\N	\N	sound_department	tt0100836,tt0139684,tt0172009,tt0196288
nm0009753	Jean Achache	\N	\N	assistant_director,director,producer	tt1258168,tt2185433,tt15227108,tt0081182
nm0009754	Anna Graham	\N	\N	actress,music_department,soundtrack	tt4609676,tt0202835,tt1790432
nm0009755	Ding Achacoso	\N	\N	miscellaneous,composer,cinematographer	tt0260731,tt0138811,tt0216563,tt0091012
nm0009756	Said Achaibou	\N	\N	actor	tt0253387
nm0009757	Doudja Achachi	1921	\N	actress	tt0309307,tt18317316,tt19895434,tt32965697
nm0009759	Heikki Arala	\N	\N	editor,editorial_department	tt0140793,tt0088437,tt0141552,tt0141607
nm0009760	Achankunju	\N	\N	actor	tt0268954,tt0215023,tt0247916,tt0291894
nm0009761	Eduardo Achar	\N	\N	actor	tt0088908
nm0009762	Mauricio Achar	\N	\N	actor	tt0220885,tt0212640,tt0386179,tt7672132
nm0009763	Ravi Achar	\N	\N	actor	tt0114323
nm0009764	Basile Achara	\N	\N	actor	tt0091763
nm0009765	Laurent Achard	1964	2024	director,writer,cinematographer	tt0498103,tt0186453,tt0422948,tt0276908
nm0009766	Marcel Achard	1899	1974	writer,director,actor	tt0058586,tt0054331,tt0042013,tt0026485
nm0009767	Marie-Claire Achard	\N	\N	actress	tt0434183,tt0169468,tt4122692,tt0086235
nm0009768	Maurice Achard	\N	\N	writer	tt0110878,tt0346329,tt13465208,tt0196277
nm0009769	Olivier Achard	\N	\N	actor	tt0133385,tt0327578,tt0167644,tt0314063
nm0009770	Paul Achard	1897	1962	writer,actor	tt0195213,tt0200794,tt0199040,tt0031460
nm0009771	Achari	\N	\N	actor	tt0255924,tt0255925,tt32856857
nm0009772	Myriam Acharki	\N	\N	actress,editor	tt0401729,tt0163978,tt0352113,tt20258920
nm0009773	Smita Acharyya	\N	\N	producer,director,writer	tt1982151,tt1479831,tt1475159,tt13256456
nm0009774	Acharya	\N	\N	camera_department	tt0391547
nm0009775	B. Vittalacharya	1920	1999	director,producer,writer	tt0320340,tt0333067,tt1510668,tt1510746
nm0009776	Gunwantrai Acharya	\N	\N	writer	tt0420096,tt0177495,tt0213685,tt0213428
nm0009777	Indira Acharya	1926	\N	actress	tt0139392,tt0134301,tt1411831,tt2977832
nm0009778	N.R. Acharya	1909	1993	director,production_manager,producer	tt0149751,tt0151727,tt0149784,tt0153398
nm0009779	Rajeev Acharya	\N	\N	miscellaneous,actor,producer	tt0838221,tt1280558,tt3771536,tt1321869
nm0009780	S.V.R. Acharya	\N	\N	writer,composer	tt0246277
nm0009782	Jörg Achatz	\N	\N	art_department,editor,visual_effects	tt1532545,tt3006246,tt0110204,tt2884496
nm0009783	Maximilian Achatz	\N	\N	actor	tt1195607,tt0806910,tt0871862,tt34915267
nm0009784	Allison Achauer	\N	\N	costume_department,costume_designer	tt0186719,tt0160376
nm0009785	Isabel Achaval	1976	\N	actress,director,writer	tt22072888,tt2215347,tt0341625,tt0816636
nm0009786	Carl Ludwig Achaz-Duisberg	1889	1958	actor,director,writer	tt0020444,tt0477769,tt0477921
nm0009787	Francine Achbar	\N	\N	producer	tt3058028,tt0287013,tt0977693,tt0095392
nm0009788	Mark Achbar	\N	\N	producer,director,cinematographer	tt0379225,tt0230908,tt0104810,tt0225421
nm0009789	Dalal Achcar	1937	\N	producer	tt0188520
nm0009790	Mariana Achcar	\N	\N	script_department,writer,production_manager	tt0387770,tt0210422,tt0430839,tt24229602
nm0009791	Anna Condo	1966	\N	actress,writer,director	tt1301181,tt0309264,tt0337690,tt1221149
nm0009792	Patrick Achdjian	\N	\N	\N	tt0154352
nm0009793	Frédéric Achdou	\N	\N	cinematographer	tt0102049
nm0009794	Claude Ache	\N	\N	director,cinematographer,writer	tt0155111,tt0154515,tt0267317,tt0316281
nm0009796	Achee	\N	\N	actor	tt0201840
nm0009797	Lorraine Achee	\N	\N	actress,miscellaneous	tt2237790,tt0092727,tt1866302
nm0009798	Kate Atcheson	\N	\N	actress	tt0185855,tt0235117
nm0009799	Don Achen	\N	\N	actor	tt0104465,tt0110954
nm0009800	Karen Achenbach	\N	\N	editorial_department,director,writer	tt29780696,tt0085267,tt0106906,tt0100369
nm0009801	Amomen Achenguadi	\N	\N	actor	tt0088032
nm0009802	Gabriela Acher	1944	\N	actress,writer,director	tt1820940,tt0117684,tt0097302,tt0196459
nm0009803	Stuart Acher	\N	\N	director,writer,editor	tt2075318,tt3843168,tt0174511
nm0009804	Caitlin Acheson	\N	\N	make_up_department,actress	tt0159365,tt2515034,tt0246460,tt1937149
nm0009805	Dean Acheson	1893	1971	archive_footage	tt11090082,tt4972496,tt11091614,tt1004539
nm0009806	James Acheson	\N	\N	actor,producer,miscellaneous	tt0116756,tt0114558,tt8080122,tt0092585
nm0009807	James Acheson	1946	\N	costume_designer,production_designer,costume_department	tt0093389,tt0094947,tt0120744,tt0145487
nm0009810	John Acheson	\N	1998	actor	tt0056751,tt0063893,tt0066593,tt0066701
nm0009811	Mark Acheson	1957	\N	actor,soundtrack,archive_footage	tt0319343,tt0296572,tt0369226,tt0184858
nm0009812	Gerd Achgelis	1908	1991	miscellaneous	tt0028687
nm0009813	Kamaunani Achi	\N	\N	actress	tt0025985
nm0009815	Sante Achilli	\N	\N	camera_department,cinematographer,actor	tt0063137,tt0061570,tt0061933,tt0124621
nm0009816	Elsa Marta Achille	\N	\N	actress	tt0086017
nm0009817	Eric Achille	\N	\N	actor,composer	tt0282458,tt0190570
nm0009818	Louisa Achille	\N	\N	miscellaneous,director,producer	tt0404266,tt2737014,tt0117167,tt0286214
nm0009819	Andrea Achilles	\N	\N	actress	tt0096310,tt21414620
nm0009820	Damian Achilles	\N	\N	stunts,actor,miscellaneous	tt1458175,tt0120611,tt1951181,tt0838247
nm0009822	Jacques Achilles	\N	\N	actor	tt0096071
nm0009823	Monica Achilles	\N	\N	actress	tt0097520
nm0009824	Uwe Achilles	\N	\N	actor	tt0263103,tt14126752
nm0009825	Carlo Achilli	\N	\N	cinematographer	tt0124621
nm0009826	Fausto Achilli	\N	\N	sound_department	tt0059588,tt0166572,tt0062078,tt0086343
nm0009827	Pierfrancesco Achilli	\N	\N	editorial_department	tt0102426,tt0094901,tt0101493,tt0094049
nm0009828	Riccardo Achilli	\N	\N	actor	tt0193428,tt0794312,tt0943355,tt0927147
nm0009830	Toti Achilli	\N	\N	actor	tt0069929
nm0009832	Katrin Achinger	\N	\N	composer,director,actress	tt10619550,tt0110205,tt13111964
nm0009833	Francisco Achiu	\N	\N	actor	tt0231085
nm0009834	Satomi Achiwa	\N	\N	actress	tt0188640,tt0184142,tt0127310,tt37037459
nm0009835	David Achkar	1960	1998	writer,director,assistant_director	tt0209907,tt0361626,tt0208672,tt5214202
nm0009836	Elias Achkar	1965	\N	actor,transportation_department,camera_department	tt5151570,tt4993964,tt15713012,tt8844204
nm0009837	Marof Achkar	\N	\N	\N	tt5622440
nm0009838	Samih Achkouti	\N	\N	actor	tt0095596
nm0009839	Yordan Achkov	\N	\N	set_decorator,production_designer	tt0170783,tt0289754,tt0252614,tt0344952
nm0009840	Nikos Ahladis	\N	\N	sound_department	tt0102043,tt0086978,tt0128725,tt1175053
nm0009841	Carl Achleitner	1963	\N	actor	tt3018354,tt4576572,tt0776201,tt0880566
nm0009842	Steffi Achleitner	\N	\N	editorial_department,editor	tt0140329,tt0254160,tt0191853
nm0009844	Werner Achmann	1929	2001	production_designer,art_director,art_department	tt0089092,tt0071935,tt0077272,tt0076686
nm0009845	Mohammed Achmed	\N	\N	camera_department	tt0095241,tt0098048
nm0009846	Zehra Achmed	\N	\N	actress	tt0025642,tt0026464,tt0129232,tt0016088
nm0009847	Nan Triveni Achnas	1963	\N	director,writer,producer	tt1067224,tt0292171,tt0274621,tt0331192
nm0009848	Hubert d'Achon	\N	\N	producer,production_manager	tt0143247,tt0202083,tt0041750,tt0156472
nm0009849	Rodrigo Achondo	1969	2016	actor	tt1589059,tt0313026,tt0246790,tt0848615
nm0009850	Armando Achong	\N	\N	camera_department	tt0070185,tt0140682,tt0079919,tt0111858
nm0009851	Lorelei Achor	\N	\N	production_manager,miscellaneous,camera_department	tt0099379,tt0105432,tt0106774,tt0107941
nm0009852	Richard Achor	\N	\N	sound_department,miscellaneous	tt1588863,tt0094559,tt0107117,tt1245678
nm0009853	Brett Achorn	\N	\N	visual_effects,miscellaneous,animation_department	tt2245084,tt0129167,tt0230011,tt0780521
nm0009854	John Achorn	1946	\N	actor,miscellaneous	tt0087799,tt0086960,tt0090142,tt0118264
nm0009855	Abdou Achouba	1950	\N	producer	tt0253914,tt12276534
nm0009856	Ahmed Achouba	\N	\N	miscellaneous	tt0318649,tt0468548,tt0284717,tt0244647
nm0009857	Abdelwahab Achouri	\N	\N	actor	tt0271811
nm0009858	Habiba Achrafi	\N	\N	actress	tt0185306,tt0217302
nm0009859	M.R. Achrekar	1907	1979	art_director,production_designer,miscellaneous	tt0053965,tt0052954,tt0050820,tt0044318
nm0009860	Robert Achs	1950	2005	camera_department,cinematographer,editorial_department	tt0810498,tt0091931,tt0162419,tt9351932
nm0009861	Samuel Achs	\N	\N	miscellaneous	tt0119305
nm0009863	Johannes Achtelik	1949	\N	actor	tt0202338,tt4314126,tt0071530,tt0264249
nm0009864	Norbert Achtelik	\N	\N	sound_department	tt0127263
nm0009865	Brian Achten	\N	\N	camera_department	tt0212991
nm0009866	Dirk Achten	1972	\N	assistant_director,production_manager,writer	tt0459587,tt1202515,tt0808174,tt1947866
nm0009867	Irma Achten	1956	\N	writer,director,miscellaneous	tt0156772,tt0270845,tt0106382,tt2268138
nm0009868	Ben Achtenberg	\N	\N	editor,producer,director	tt4903024,tt0087067,tt2555294,tt1053224
nm0009869	Roberta Achtenberg	\N	\N	archive_footage	\N
nm0009870	Daniela Achter	\N	\N	production_manager,art_department	tt0806910,tt0085062,tt0416436,tt10155786
nm0009871	Franz Achter	\N	\N	production_manager,location_management,miscellaneous	tt0071459,tt0076686,tt0226199,tt0082661
nm0009872	Fritz Achterberg	1880	1971	actor	tt0012249,tt1878914,tt0357264,tt0830925
nm0009873	Jan Rutger Achterberg	\N	\N	miscellaneous,writer,producer	tt0101125,tt0094494,tt1071917,tt1068211
nm0009874	Monica Achterberg	\N	\N	actress	tt0068864
nm0009875	Shelly Achterberg	\N	\N	actress	tt0247948
nm0009876	Helen Achtermann	\N	\N	costume_designer,costume_department,make_up_department	tt0177858,tt0162426,tt0425624,tt0162345
nm0009877	Andreas Achternbusch	1964	\N	actor,miscellaneous	tt0084439,tt0081221,tt0067304,tt1312056
nm0009878	Gerda Achternbusch	\N	\N	actress,cinematographer	tt0076689,tt0075750,tt0077782,tt0067304
nm0009880	Judit Achternbusch	1968	\N	actress,make_up_department	tt0088375,tt0084439,tt0096458,tt0071140
nm0009882	Rita Achternbusch	\N	\N	actress	tt0084439,tt0081221
nm0009883	Rut Achternbusch	1963	\N	actress,miscellaneous	tt0085585,tt0081221,tt0083814,tt0084439
nm0009884	Arnie Achtman	\N	\N	actor	tt0077679,tt0146042,tt0118379,tt0120536
nm0009885	Michael Achtman	\N	\N	writer,director,editor	tt1549149,tt25135192,tt4502196,tt11152408
nm0009887	Walter Achuga	\N	\N	\N	\N
nm0009888	Walter Achugar	\N	\N	producer	tt0062212,tt0326357,tt0109949,tt0057977
nm0009889	Patricio Achurra	1943	\N	actor	tt0376408,tt2059255,tt4913672,tt0374360
nm0009890	Rajaram Achuthanarayanan	\N	\N	miscellaneous	tt0206610
nm0009891	Dahlia Achvette	\N	\N	make_up_department	tt0112611
nm0009892	Achyuth	\N	\N	actor	tt0366840,tt0240084,tt1583218,tt0319336
nm0009893	Perla Achával	\N	\N	actress	tt0178774,tt0181525,tt0199767,tt0190123
nm0009894	Cristina Aché	1957	\N	actress,producer,archive_footage	tt0147099,tt0254312,tt0252239,tt0260231
nm0009895	Geneviève Acien	\N	\N	casting_department,assistant_director	tt5013056,tt4244994,tt1692486,tt11703710
nm0009896	Tony Acierto	\N	\N	actor	tt0083395,tt0091706,tt0086734,tt0086662
nm0009897	Nilüfer Açikalin	1967	\N	actress,writer,soundtrack	tt0494966,tt3255826,tt0468272,tt29626178
nm0009898	Server Acim	\N	\N	composer	tt0348590,tt4038968,tt0155914,tt0491848
nm0009899	Danica Acimac	1928	2009	actress,archive_footage	tt0184363,tt0188326,tt0184873,tt0181185
nm0009900	Dejan Acimovic	1963	\N	actor,director,producer	tt0250445,tt0871006,tt2061729,tt0119874
nm0009901	Dimitrije Acimovic	\N	\N	writer	tt0053785
nm0009902	Karpo Acimovic-Godina	1943	\N	cinematographer,director,editor	tt0241817,tt0084575,tt0081549,tt0202245
nm0009903	Andrej Acin	\N	\N	director,composer,writer	tt5666440,tt2334964,tt1745788,tt0425695
nm0009904	Jovan Acin	1941	1991	director,writer,assistant_director	tt0091200,tt0180927,tt0193597,tt0485022
nm0009905	Sava Acin	1944	2024	production_designer,art_department	tt0180802,tt0199274,tt0091200,tt0096994
nm0009906	Ángel Acinas	\N	\N	actor	tt0091531,tt0447779,tt0088246,tt0459725
nm0009907	Luis Acinella	\N	\N	actor	tt0089199
nm0009908	Roberto Acinelli	\N	\N	actor	tt0087121
nm0009909	Hilton Acioly	\N	\N	music_department,actor,composer	tt0064863
nm0009910	Jose Antonio Acioly	\N	\N	costume_designer	tt0091193
nm0009911	Karen Acioly	1962	\N	actress,assistant_director,casting_department	tt0209819,tt0091193,tt9533506,tt0095192
nm0009912	Thomas Acito	\N	\N	editor,editorial_department	tt0204250,tt0259727,tt0262044,tt0082909
nm0009913	Gabino Acitores	\N	\N	camera_department	tt0093969,tt0086987,tt0177824
nm0009914	Marius Acke	\N	\N	sound_department	tt0267238,tt23050538,tt12466382
nm0009915	Lena Ackebo	\N	\N	writer	tt0147787,tt0224522,tt8919686
nm0009916	Catarina Ackell	1976	\N	actress	tt0119763
nm0009917	Saskia Ackema	1955	\N	animation_department	tt0071448,tt0135636
nm0009918	Amy Acker	1976	\N	actress,producer,director	tt0162065,tt1259521,tt1839578,tt0285333
nm0009919	Antony Acker	1944	2024	actor	tt0257106,tt0870111,tt0119700,tt0426371
nm0009920	Barbara Acker	\N	\N	actress	tt0142228
nm0009921	Ben Acker	\N	\N	writer,producer,miscellaneous	tt22874994,tt0460681,tt4026560,tt4548442
nm0009922	Berko Acker	1945	1978	actor	tt0075908,tt1872035,tt0078866,tt0062019
nm0009923	Beth Acker	\N	\N	miscellaneous	tt0118668
nm0009924	Deb Acker	\N	\N	miscellaneous	tt0090583
nm0009925	Denis Acker	\N	\N	art_department,production_designer	tt0156245
nm0009926	Edward Acker	\N	\N	writer,camera_department	tt0363671,tt0377732,tt0377941,tt0383535
nm0009927	Erin Acker	1978	\N	miscellaneous,casting_department	tt0276437,tt0279889,tt0195778,tt0428038
nm0009928	Eugene Acker	\N	\N	art_department	tt0059309,tt0077531,tt0063612,tt0051649
nm0009929	Eugene Acker	1889	1971	actor	tt0013876,tt0012038,tt0012440,tt0166832
nm0009930	Iris Acker	1930	2018	actress,writer,producer	tt0091059,tt0094890,tt0221285,tt0121647
nm0009931	Jean Acker	1893	1978	actress,archive_footage	tt0010002,tt0010376,tt0011998,tt0010505
nm0009932	Jean-François Acker	\N	\N	director,composer	tt0246844,tt1868747
nm0009933	Kathy Acker	1944	1997	actress,writer,soundtrack	tt0099677,tt4346530,tt0090251,tt1322362
nm0009934	Martha Acker	\N	\N	actress	\N
nm0009935	Martha Acker	1898	1981	make_up_department	tt0132001,tt0043081,tt0045435,tt0044248
nm0009936	Natacha Acker	\N	\N	actress	tt0102524
nm0009937	Nathaniel Acker	\N	\N	miscellaneous	tt0096324
nm0009938	Norman Acker	\N	\N	actor	tt0008050,tt0885101
nm0009939	Randy Acker	\N	\N	producer,music_department,editorial_department	tt0306685,tt0878695,tt1206881,tt0164953
nm0009940	Lawrence Acker	\N	\N	miscellaneous	tt0042728
nm0009941	Ryan Acker	\N	\N	camera_department	tt0121974,tt2083379,tt0117716,tt0199650
nm0009942	Shane Acker	\N	\N	producer,director,visual_effects	tt0472033,tt0443424,tt1386703,tt1397514
nm0009943	Sharon Acker	1935	2023	actress,soundtrack,archive_footage	tt0082498,tt0062138,tt0060028,tt0068077
nm0009944	Steve Acker	\N	\N	actor	tt0095447
nm0009945	Yulia Akerholt	\N	\N	sound_department	tt12037194,tt1392190,tt1448755,tt9198364
nm0009946	Marcel Ackerknecht	\N	\N	composer	tt0111717
nm0009947	Gregory Ackerland	\N	\N	editorial_department	tt0226016
nm0009948	J.R. Ackerley	1896	1967	writer	tt0096427,tt0843358,tt0200358
nm0009950	A.E.D. Ackerly	\N	\N	writer	tt0005178
nm0009951	A.D. Ackerman	\N	\N	actor,producer,sound_department	tt0079514,tt0311343
nm0009952	Andrew A. Ackerman	1952	2008	producer,assistant_director,production_manager	tt0098801,tt0082242,tt0082083,tt0892535
nm0009953	Andy Ackerman	\N	\N	director,producer,editor	tt0098904,tt0083399,tt0077097,tt1595856
nm0009954	Barbara Ackerman	\N	\N	miscellaneous	tt0090774
nm0009955	Beth Ackerman	\N	\N	editor	tt0090497,tt0374469,tt0133302,tt0104732
nm0009956	Bettye Ackerman	1924	2006	actress,archive_footage	tt0054519,tt0068124,tt0068149,tt0052793
nm0009957	Bill Ackerman	\N	\N	animation_department,art_department,writer	tt1289479,tt3384870,tt0181941,tt0202179
nm0009958	Boyd Ackerman	\N	\N	actor	\N
nm0009959	Bradley Ackerman	\N	\N	actor	tt0074739
nm0009960	C. Fred Ackerman	\N	\N	director	tt0230090,tt0230494,tt0231786,tt0230691
nm0009961	Dan Ackerman	\N	\N	editor,camera_department,miscellaneous	tt0136687,tt3703500,tt0437005,tt0251497
nm0009962	Dave Ackerman	\N	\N	producer	tt0066285,tt0128531,tt0259653
nm0009963	David Willis Ackerman	\N	\N	art_department,camera_department	tt5707408,tt0118648,tt0177349,tt0155011
nm0009964	Don Ackerman	1968	\N	actor,director,writer	tt0364343,tt0374455,tt13734694,tt0352113
nm0009966	Don Ackerman	1919	1991	actor	tt0029697
nm0009967	Ed Ackerman	\N	\N	cinematographer,director,actor	tt0095901,tt2175601,tt0223900,tt0209169
nm0009968	Elizabeth Ackerman	\N	\N	music_department,editor,editorial_department	tt0088513,tt0086814,tt2417028,tt0221740
nm0009969	Forrest J. Ackerman	1916	2008	actor,writer,miscellaneous	tt0103873,tt0081766,tt0102564,tt0118063
nm0009970	Paul Vernon	\N	\N	miscellaneous	tt0160663
nm0009971	Georgina Ackerman	\N	\N	actress	tt0101315,tt0215108,tt0096555,tt0106102
nm0009972	Hal Ackerman	\N	\N	writer	tt0145459,tt0075529,tt4036906,tt5139360
nm0009973	Ronni Ackerman	\N	\N	producer,assistant_director,miscellaneous	tt0084342,tt0104834,tt0126417,tt0075345
nm0009974	Harry Ackerman	1912	1991	producer,writer,miscellaneous	tt0061252,tt0060003,tt0985040,tt0047731
nm0009975	Hildegard Ackerman	\N	\N	actress	tt0130060
nm0009976	Homer Ackerman	1891	1968	sound_department	tt0024663,tt0024768,tt0021233,tt0022926
nm0009977	Howard Ackerman	\N	\N	actor,miscellaneous	tt0088929,tt0081109
nm0009978	Jack Ackerman	1931	1991	actor,music_department,soundtrack	tt0053270,tt0062952,tt0059788,tt0074749
nm0009979	Jack E. Ackerman	1914	2007	art_department,miscellaneous,soundtrack	tt0087332,tt0096061,tt0086200,tt0095705
nm0009980	James Ackerman	\N	\N	producer,production_manager,camera_department	tt1530991,tt0098957,tt2368090,tt2542962
nm0009981	Jan Ackerman	\N	\N	actor	tt0086589,tt0092933,tt0350002
nm0009982	Jean Ackerman	1903	1960	actress	tt0021908,tt3678978
nm0009983	Jeff Ackerman	\N	\N	art_department,assistant_director	tt0099088,tt0110622,tt0108551,tt0092104
nm0009985	John Ackerman	\N	\N	actor	tt0104412,tt0101621,tt2223264
nm0009986	Josh Ackerman	1977	\N	producer,director,actor	tt0213149,tt0251075,tt1963853,tt14485112
nm0009988	Justin Ackerman	\N	\N	producer,actor,director	tt0111201,tt3739090,tt0105616,tt0102322
nm0009989	Karl Ackerman	\N	\N	miscellaneous,actor,writer	tt0371246,tt0369441,tt0904208,tt1655564
nm0009990	Katie Ackerman	\N	\N	actress	tt0217837
nm0009991	Kevin Ackerman	\N	\N	director,writer,producer	tt1294670,tt0151379,tt0240898
nm0009992	Kevin Ackerman	\N	\N	sound_department	tt0106594
nm0009993	Kevin Ian Ackerman	\N	\N	costume_designer,costume_department	tt0936501,tt0422401,tt0100826,tt0404177
nm0009995	Leonard Ackerman	1916	1998	producer	tt0054570,tt1727779,tt0068553,tt0052543
nm0009996	Leslie Ackerman	\N	\N	actress,manager,writer	tt0074533,tt0077778,tt0205521,tt0106145
nm0009997	Loni Ackerman	1949	\N	actress,soundtrack	tt0083564,tt0071042,tt9185066,tt21284442
nm0009998	Luca Ackerman	\N	\N	actor	tt0096903
nm0009999	Malvina Ackerman	\N	\N	actress	tt0085937
nm0010000	Michael Ackerman	\N	\N	cinematographer,camera_department,miscellaneous	tt2403991,tt0233315,tt2155442,tt7183838
nm0010001	Mitch Ackerman	\N	\N	production_manager,producer	tt0077000,tt0101120,tt0075500,tt0088505
nm0010002	Naomi Ackerman	\N	\N	actress	tt0113826
nm0010003	Noah Ackerman	1973	\N	miscellaneous,producer,actor	tt0112697,tt0120382,tt0116313,tt0114319
nm0010004	Peter Ackerman	\N	\N	producer,writer,actor	tt0268380,tt2149175,tt17491088,tt0438097
nm0010005	Phillip Ackerman	\N	\N	make_up_department	tt4333210,tt0117769,tt0103749,tt0125604
nm0010006	Randy Ackerman	1977	\N	actor	tt0172949
nm0010007	Raymond Ackerman	\N	\N	cinematographer,director	tt0341363,tt0246629,tt0254716,tt0291199
nm0010008	Regina Ackerman	\N	\N	miscellaneous	tt0101072,tt0103569
nm0010009	Rickey Ackerman	\N	\N	miscellaneous	tt1707374,tt2231848,tt5375204,tt1353011
nm0010010	Robert Ackerman	1938	2019	actor,archive_footage	tt0111282,tt0077000,tt0083500,tt0077031
nm0010011	Robert Ackerman	\N	\N	art_department	tt0114047
nm0010012	Robert Allan Ackerman	1944	2022	director,producer,writer	tt0250581,tt0323332,tt0806165,tt0222776
nm0010013	Ron Ackerman	1929	1995	actor	tt0074383,tt0091442
nm0010015	Stanley Ackerman	1915	2009	assistant_director,actor	tt0066808,tt0165996,tt0054971,tt0081554
nm0010016	Steve Ackerman	\N	\N	cinematographer,camera_department,producer	tt0142698,tt0418612,tt1377771,tt1361334
nm0010017	Walter Ackerman	1881	1938	actor	tt0000966,tt0017655,tt0017591,tt1690452
nm0010018	Will Ackerman	\N	\N	music_artist,composer,producer	tt0109444,tt0118437,tt0204007,tt0079940
nm0010019	William Ackerman	\N	\N	actor,casting_director	tt0097768
nm0010020	Woolsey Ackerman	\N	\N	miscellaneous,producer,actor	tt3561068,tt1541116,tt0159876,tt4786294
nm0010021	Louis Ackerman-Oerton	\N	\N	actor	tt0215108
nm0010022	Anna Maria Ackermann	1932	2025	actress	tt1178183,tt0335635,tt0353046,tt0082893
nm0010023	Anton Ackermann	1905	1973	miscellaneous	tt0066067,tt0061802
nm0010024	Elisabeth Ackermann	1938	\N	actress	tt0168313,tt0806910,tt0062771,tt0121935
nm0010025	Gabriela Ackermann	\N	\N	sound_department,editorial_department,assistant_director	tt0279659,tt0101152,tt0167644,tt0345233
nm0010026	Gertrude Ackermann	\N	\N	actress	tt0111819
nm0010027	Heide Ackermann	1943	\N	actress	tt0086828,tt0239450,tt0806910,tt0099511
nm0010028	James Ackermann	\N	\N	transportation_department,miscellaneous	tt0118827,tt16252180
nm0010029	Kathrin Ackermann	1939	\N	actress,producer,soundtrack	tt0061762,tt0806910,tt1437836,tt0342641
nm0010030	Klaas Akkermann	1934	2017	actor	tt0319258
nm0010031	Kurt Ackermann	1932	2017	actor,archive_footage	tt0806910,tt0377081,tt0089575,tt0329874
nm0010033	Martin Ackermann	\N	\N	actor	tt0278499
nm0010034	Maud Ackermann	1965	\N	actress,miscellaneous	tt0199777,tt1613717,tt1245530,tt0101056
nm0010035	Nina Ackermann	\N	\N	actress,cinematographer	tt0111652,tt0095205,tt0806901,tt2215121
nm0010036	Peter Ackermann	1956	\N	art_department,art_director,production_designer	tt2088003,tt9203694,tt0100240,tt6506264
nm0010037	Rainer Ackermann	1946	\N	producer,director,writer	tt0354259,tt1138067,tt0412863,tt0757928
nm0010038	Ralf Ackermann	\N	\N	actor	tt0096137,tt0465852
nm0010039	Stéphane Ackermann	\N	\N	soundtrack	tt0194314
nm0010040	Thilo Ackermann	\N	\N	actor	tt0278162
nm0010041	Tom Ackermann	\N	\N	writer	tt0091415,tt0099230
nm0010042	Trude Ackermann	1924	2018	actress	tt0806910,tt0271029,tt0058897,tt0128133
nm0010043	Willi Ackermann	1896	1973	actor	tt0358915,tt12084042,tt0032105,tt0139888
nm0010044	H. Ackermans	\N	\N	composer,soundtrack	tt0270576,tt0896551,tt1062344
nm0010045	Jan Ackermans	\N	\N	actor	tt2716554,tt0105498
nm0010047	Timothy D. Ackers	\N	\N	art_department	tt0133152,tt1843866,tt2250912,tt0443706
nm0010049	George Ackerson	\N	\N	assistant_director,miscellaneous	tt0045309,tt0127562,tt0041600,tt0044212
nm0010050	David Ackert	\N	\N	actor,producer,writer	tt0383760,tt0112022,tt0446241,tt1269688
nm0010051	Ramin Ackert	\N	\N	actor	tt0118153
nm0010052	Julie Ackerton	\N	\N	sound_department	tt0110455
nm0010053	Karin Acket	\N	\N	production_manager,miscellaneous,producer	tt0380442,tt0100873,tt0107331,tt0104568
nm0010054	Steve Ackhurst	\N	\N	producer,writer,production_manager	tt0116160,tt0388411,tt0274837,tt1500246
nm0010055	Jeffrey P. Ackil	1953	2014	camera_department,cinematographer	tt0103184,tt1510273,tt1198596,tt1686315
nm0010056	Claire Ackilli	\N	\N	actress	tt0075371
nm0010057	Christopher Ackland	1951	\N	sound_department,editorial_department	tt0137494,tt0120053,tt0163978,tt0145681
nm0010058	Jennifer Ackland	\N	\N	actress	tt0134154,tt2047744
nm0010059	Melanie Ackland	1952	\N	actress	tt0072107,tt0066714,tt0181260
nm0010060	Noreen Ackland	1921	2013	editor,editorial_department,sound_department	tt0054167,tt0061287,tt1493195,tt0058397
nm0010061	Ray Ackland	\N	\N	actor	\N
nm0010062	Richard Ackland	\N	\N	camera_department,miscellaneous	tt0151568,tt0280770,tt0293929,tt0300214
nm0010063	Rodney Ackland	1908	1991	writer,director,actor	tt0033627,tt0035441,tt0031924,tt0041776
nm0010065	Victor L. Ackland	1882	1967	cinematographer	tt0011891,tt0010840,tt0011766
nm0010066	Amanda Ackland-Snow	1963	2007	art_department,art_director,set_decorator	tt0093512,tt0091934,tt0096454,tt0115288
nm0010067	Andrew Ackland-Snow	\N	\N	art_director,art_department	tt1201607,tt0417741,tt3402236,tt1568911
nm0010068	Brian Ackland-Snow	1940	2013	production_designer,art_director,art_department	tt0091867,tt0086393,tt0074695,tt0083791
nm0010069	Dominic Ackland-Snow	\N	\N	art_department,writer,producer	tt2873282,tt0293508,tt0266987,tt6806448
nm0010070	Terry Ackland-Snow	1943	\N	art_department,production_designer,art_director	tt0090605,tt0093428,tt0086393,tt0081573
nm0010071	Vivien Ackland-Snow	\N	\N	miscellaneous,assistant_director	tt11713150,tt0306273,tt0813853,tt4793190
nm0010072	Joseph Ackler	1980	2014	actor	tt1190689,tt0118539,tt0190106,tt0313090
nm0010073	Alan Ackles	1948	\N	actor	tt0406706,tt0460681,tt0455275,tt0102978
nm0010074	David Ackles	1937	1999	actor,writer,composer	tt0806686,tt0083340,tt0299112,tt0060174
nm0010075	Jensen Ackles	1978	\N	actor,producer,director	tt0460681,tt1179891,tt0829297,tt0204993
nm0010076	Jill Ackles	\N	\N	director	tt0065272,tt0062595,tt0056758,tt0058796
nm0010077	Ken Ackles	1916	1986	actor,archive_footage	tt0041191,tt0266207
nm0010078	Alana Caudillo	\N	\N	costume_department,miscellaneous,editorial_department	tt0120746,tt0146675,tt0112851,tt0093378
nm0010079	Alyson Ackley	\N	\N	actress	tt0245836
nm0010080	Brian Ackley	\N	\N	producer,writer,director	tt1458902,tt3735332,tt1419989,tt5244322
nm0010081	Casey Donahue Ackley	\N	\N	writer,producer,production_manager	tt0330930,tt0177822,tt0426533
nm0010082	James Ackley	\N	\N	sound_department,music_department,composer	tt0094948,tt0496608,tt0488536,tt0378759
nm0010083	Jonathan Ackley	\N	\N	miscellaneous,director,writer	tt0102057,tt0134599,tt2409480,tt0189538
nm0010084	Claudia Acklin	\N	\N	writer,director,producer	tt0137078,tt1132448,tt0208188,tt1022932
nm0010085	Andrew Ackman	\N	\N	actor	tt0108925,tt0140829
nm0010086	Cole Ackman	\N	\N	actor	tt0103095
nm0010088	Géraldine Ackmann	\N	\N	actress	tt0159571
nm0010089	Bill Ackridge	1926	1998	actor	tt0090264,tt0074483,tt0331703,tt0081063
nm0010090	David Ackridge	\N	\N	actor	tt0075228,tt0081291,tt0085622
nm0010091	Lloyd Akridge	1910	1972	music_department,composer	tt0043086,tt0240587,tt0240911,tt0290881
nm0010092	David Ackrill	\N	\N	art_department	tt2368619,tt0119081,tt1606378,tt1289403
nm0010093	James Ackrin	\N	\N	actor	tt0276177
nm0010094	Tom Ackron	\N	\N	miscellaneous	tt0135382
nm0010095	Anthony Ackroyd	\N	\N	actor,writer	tt0312162,tt0107930,tt0095423,tt0104785
nm0010096	Barry Ackroyd	1954	\N	cinematographer,camera_department,director	tt0887912,tt1535109,tt0475276,tt0460989
nm0010097	David Ackroyd	1940	\N	actor,miscellaneous,archive_footage	tt0077399,tt0088559,tt0133209,tt0099817
nm0010098	Gayle Ackroyd	\N	\N	actress,soundtrack	tt0113069
nm0010099	Heather Ackroyd	\N	\N	actress	tt0106189
nm0010100	Jack Ackroyd	1889	1962	actor	tt0016643,tt0248461,tt0020032,tt0021779
nm0010101	Jack Ackroyd	\N	\N	actor	tt0098625,tt0089385,tt0309221,tt0104613
nm0010103	Juliet Aykroyd	\N	\N	actress	tt0069655,tt0071398,tt0419349,tt0272381
nm0010104	Timothy Ackroyd	1958	\N	actor,writer	tt0121516,tt0099322,tt0110386,tt4460560
nm0010105	Tilo Acksel	1970	\N	actor	tt0806910,tt1034388,tt0109713,tt0806901
nm0010106	Evgeniy Aksyonov	\N	\N	director,actor	tt0271242,tt1229930,tt0192936,tt5233286
nm0010107	E.N. Ackter	\N	\N	actor	tt0114649
nm0010108	Lance Acktiv	\N	\N	actor	tt0090314
nm0010109	Gerhard Acktun	1955	\N	actor,writer,miscellaneous	tt0220212,tt0168366,tt1825873,tt0070618
nm0010110	Wakefield Ackuaku	\N	\N	actor	tt4038670,tt2699924,tt0297626,tt27991867
nm0010111	Wolf Ackva	1911	2000	actor,miscellaneous,composer	tt0220212,tt0299886,tt0057783,tt0926045
nm0010112	A.W. Acland	\N	\N	director	tt0227633,tt0227181
nm0010113	Lleslle Aclaro	\N	\N	production_manager,visual_effects,art_department	tt0121765,tt0395252,tt0139156,tt0177822
nm0010114	Lily Aclemar	1920	\N	actress	tt0039458,tt0042309,tt0230630,tt0140286
nm0010116	Fadh Acloque	\N	\N	actor	tt0202999
nm0010117	Duane Acoba	\N	\N	visual_effects	tt0195714
nm0010118	Kelly Acoca	\N	\N	actress	tt0244071
nm0010119	Kauwela Acocella	1978	\N	actor	tt0107502
nm0010120	Bimbo Acock	\N	\N	actor,music_department	tt0087100,tt0297626
nm0010121	Kerry Acock	\N	\N	actor	tt0087806
nm0010122	George Acogny	\N	\N	music_department,composer,producer	tt0114857,tt0113492,tt0120053,tt3499096
nm0010123	Jaylin Maureen Acol	\N	\N	actress	tt0081747
nm0010124	Reed Derwin Acol	\N	\N	actor	tt0081747
nm0010125	Giovanni Acolati	\N	\N	actor	tt0047026
nm0010126	Sims Acolatse	\N	\N	actor	tt0228992
nm0010127	Greg Agalsoff	\N	\N	sound_department	tt0090305,tt0091129,tt0095631,tt0098554
nm0010128	David Acomba	1944	\N	director,producer,writer	tt0072181,tt0149458,tt26894561,tt0097972
nm0010129	Jordan Acomba	\N	\N	editorial_department,visual_effects,camera_department	tt6156584,tt0454876,tt0242998,tt0381707
nm0010130	Daniel Acon	1958	\N	special_effects,actor,art_department	tt0362270,tt0489099,tt0119013,tt0317919
nm0010131	Tony Acone	1943	\N	actor	tt0061714
nm0010132	Francesco Aconito Deribatti	\N	\N	actor	tt0133413
nm0010133	Aron Acord	\N	\N	actor	tt0798790,tt0197626
nm0010134	Art Acord	1890	1931	actor,stunts,location_management	tt0017367,tt0018378,tt0012852,tt0012840
nm0010135	Calvin Joe Acord	\N	\N	special_effects,miscellaneous	tt0088930,tt0082085,tt0097733,tt0085407
nm0010137	Charles H. Acord	\N	\N	art_department	tt0080928
nm0010138	Joe Acord	\N	\N	art_department,actor	tt0079261,tt0083190,tt0082085,tt0083943
nm0010139	Lance Acord	1964	\N	cinematographer,director,producer	tt0335266,tt0422720,tt0386117,tt1990314
nm0010140	Jonathon Acorn	\N	\N	actor,miscellaneous	tt0097858,tt0220906,tt0112230,tt0111999
nm0010141	Rua Acorn	\N	\N	actor	tt0106709
nm0010142	Sassy Acorn	\N	\N	actress	tt0099040,tt0210842,tt0098911
nm0010143	Marcos Eduardo Acosta Aldrete	1972	\N	miscellaneous	tt0120771
nm0010144	Damián Acosta Esparza	1944	\N	director,assistant_director,script_department	tt0291227,tt0290618,tt0290866,tt0319857
nm0010145	Ricardo Acosta Fernández	\N	\N	editor,script_department	tt0204370,tt15398680
nm0010146	Luis Acosta García	\N	\N	actor	tt0113919
nm0010148	Tony Acosta Jr.	\N	\N	costume_department,make_up_department,special_effects	tt0120201,tt0119094,tt0770828,tt0120461
nm0010149	Francisco Acosta López	\N	\N	production_manager	tt0116071
nm0010150	Luis Acosta Moro	\N	\N	actor	tt0060147
nm0010151	José Acosta Nava	\N	\N	director,cinematographer	tt0426816,tt0222558,tt1365144,tt0211824
nm0010152	Adelfo Acosta	\N	\N	camera_department	tt0099654
nm0010153	Adriana Acosta	\N	\N	actress,camera_department	tt0208611,tt1058596,tt0211822,tt0397227
nm0010154	Albert Acosta	\N	\N	animation_department,art_department,assistant_director	tt0118375,tt0096697,tt0397306,tt0197148
nm0010155	Alberto Acosta	\N	\N	actor,sound_department,miscellaneous	tt0102442,tt1914331,tt2422290,tt0410631
nm0010156	Alfredo Acosta	\N	\N	miscellaneous,art_department	tt0220306,tt0382900,tt0271785
nm0010157	Alpha Acosta	1973	\N	actress,assistant_director	tt0212677,tt0208115,tt0273060,tt0985678
nm0010158	Alvaro Acosta	\N	\N	assistant_director,producer	tt0225192,tt0159879,tt4189570,tt0265154
nm0010159	Ana Acosta	\N	\N	actress,archive_footage	tt0283211,tt0301398,tt0106525,tt0307832
nm0010160	Andrés Acosta	\N	\N	actor,cinematographer	tt0222197,tt0298828
nm0010161	Angel Acosta	\N	\N	art_department,art_director,production_designer	tt0114814,tt0450340,tt7131622,tt0124819
nm0010162	Armando Acosta	1925	1976	actor	tt0263475,tt0208334,tt0324259,tt0280410
nm0010163	Armondo Linus Acosta	1938	\N	miscellaneous,art_department,director	tt0100512,tt0057706,tt0057128,tt28764354
nm0010164	Arnulfo Acosta	\N	\N	assistant_director	tt0178437
nm0010165	Arregio Antonio Acosta	\N	\N	music_department	tt0284164
nm0010166	Balbino Lacosta	1961	\N	actor	tt0455957,tt6693154,tt0231040,tt1381020
nm0010167	Ben Acosta	\N	\N	miscellaneous	tt0106469
nm0010168	Bob Acosta	\N	\N	miscellaneous	tt0129702
nm0010169	Carlos Acosta	1973	\N	actor,producer,writer	tt0808399,tt7666250,tt1995390,tt1890538
nm0010170	Carlos Acosta	1937	2010	art_department	tt0090329,tt0091815,tt0084293,tt0083395
nm0010171	Carlos Acosta	\N	\N	actor	tt0061643
nm0010172	Carlos Acosta-Milian	1965	\N	actor,producer,writer	tt32300326,tt11243606,tt6964528,tt4433296
nm0010173	Carmen Acosta Iraola	\N	\N	costume_department,costume_designer,actress	tt0260772,tt0305205,tt0496822,tt0459700
nm0010174	Casimiro Acosta	\N	\N	transportation_department,camera_department	tt0094768,tt0107582,tt0286469,tt0258351
nm0010175	Cayetano Acosta	\N	\N	actor	tt0106307
nm0010176	Cesar Acosta	\N	\N	actor	tt0125931
nm0010177	Charles Acosta	\N	\N	producer	tt0259497,tt27558199,tt0397401,tt1904867
nm0010178	Christina Acosta	\N	\N	\N	\N
nm0010179	Danny Acosta	\N	\N	director,writer,editor	tt0136998
nm0010180	David Acosta	\N	\N	actor	tt0119832,tt2387618,tt0089199
nm0010181	Dennis Acosta	\N	\N	actor	tt0209441
nm0010182	Eleuterio Acosta	\N	\N	actor	tt0145293
\.


--
-- Name: name_basics name_basics_pkey; Type: CONSTRAINT; Schema: public; Owner: montadhar
--

ALTER TABLE ONLY public.name_basics
    ADD CONSTRAINT name_basics_pkey PRIMARY KEY (nconst);


--
-- PostgreSQL database dump complete
--

\unrestrict iKZ1HX9EiPD9AOuZBKL3xi8HGeL9mA62xI0yerOJxZt8JwkJ5Lex7el5dJ1UtIN

