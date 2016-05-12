CREATE TABLE evento (
    eventocodigo integer NOT NULL,
    descricao character varying(50),
    dataabertura date,
    valorinscricao double precision
);


--
-- TOC entry 172 (class 1259 OID 614967)
-- Name: evento_eventocodigo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE evento_eventocodigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1986 (class 0 OID 0)
-- Dependencies: 172
-- Name: evento_eventocodigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE evento_eventocodigo_seq OWNED BY evento.eventocodigo;


--
-- TOC entry 178 (class 1259 OID 615001)
-- Name: frequencia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE frequencia (
    palestracodigo integer NOT NULL,
    inscricaonumero integer NOT NULL,
    data date,
    horasaida integer
);


--
-- TOC entry 177 (class 1259 OID 614985)
-- Name: inscricao; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE inscricao (
    inscricaonumero integer NOT NULL,
    partcodigo integer,
    eventocodigo integer,
    data date
);


--
-- TOC entry 176 (class 1259 OID 614983)
-- Name: inscricao_inscricaonumero_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE inscricao_inscricaonumero_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1987 (class 0 OID 0)
-- Dependencies: 176
-- Name: inscricao_inscricaonumero_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE inscricao_inscricaonumero_seq OWNED BY inscricao.inscricaonumero;


--
-- TOC entry 175 (class 1259 OID 614977)
-- Name: palestras; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE palestras (
    palestracodigo integer NOT NULL,
    titulo character varying(50),
    data date,
    horainicio integer,
    horatermino integer
);


--
-- TOC entry 174 (class 1259 OID 614975)
-- Name: palestras_palestracodigo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE palestras_palestracodigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1988 (class 0 OID 0)
-- Dependencies: 174
-- Name: palestras_palestracodigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE palestras_palestracodigo_seq OWNED BY palestras.palestracodigo;


--
-- TOC entry 171 (class 1259 OID 614961)
-- Name: participante; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE participante (
    partcodigo integer NOT NULL,
    nome character varying(30),
    endereco character varying(30),
    telefone character varying(11)
);


--
-- TOC entry 170 (class 1259 OID 614959)
-- Name: participante_partcodigo_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE participante_partcodigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 1989 (class 0 OID 0)
-- Dependencies: 170
-- Name: participante_partcodigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE participante_partcodigo_seq OWNED BY participante.partcodigo;


--
-- TOC entry 1846 (class 2604 OID 614972)
-- Name: eventocodigo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY evento ALTER COLUMN eventocodigo SET DEFAULT nextval('evento_eventocodigo_seq'::regclass);


--
-- TOC entry 1848 (class 2604 OID 614988)
-- Name: inscricaonumero; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY inscricao ALTER COLUMN inscricaonumero SET DEFAULT nextval('inscricao_inscricaonumero_seq'::regclass);


--
-- TOC entry 1847 (class 2604 OID 614980)
-- Name: palestracodigo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY palestras ALTER COLUMN palestracodigo SET DEFAULT nextval('palestras_palestracodigo_seq'::regclass);


--
-- TOC entry 1845 (class 2604 OID 614964)
-- Name: partcodigo; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY participante ALTER COLUMN partcodigo SET DEFAULT nextval('participante_partcodigo_seq'::regclass);


--
-- TOC entry 1973 (class 0 OID 614969)
-- Dependencies: 173
-- Data for Name: evento; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO evento (eventocodigo, descricao, dataabertura, valorinscricao) VALUES (1, 'Escola Regional de Informática - Regional Sul', '2016-05-25', 98);
INSERT INTO evento (eventocodigo, descricao, dataabertura, valorinscricao) VALUES (2, 'Ciclo de Palestras de Novas Tecnologias', '2016-09-08', 20);
INSERT INTO evento (eventocodigo, descricao, dataabertura, valorinscricao) VALUES (3, 'Ciclo de Palestras sobre Informática na Educação', '2016-10-04', 20);
INSERT INTO evento (eventocodigo, descricao, dataabertura, valorinscricao) VALUES (4, 'Ciclo de Palestras sobre Inteligência Artificial', '2016-11-06', 20);
INSERT INTO evento (eventocodigo, descricao, dataabertura, valorinscricao) VALUES (5, 'Ciclo de Palestras sobre Persistência de Objetos', '2016-11-30', 20);


--
-- TOC entry 1990 (class 0 OID 0)
-- Dependencies: 172
-- Name: evento_eventocodigo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('evento_eventocodigo_seq', 10, true);


--
-- TOC entry 1978 (class 0 OID 615001)
-- Dependencies: 178
-- Data for Name: frequencia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO frequencia (palestracodigo, inscricaonumero, data, horasaida) VALUES (1, 1, '2016-05-01', 245);
INSERT INTO frequencia (palestracodigo, inscricaonumero, data, horasaida) VALUES (1, 2, '2016-05-01', 245);
INSERT INTO frequencia (palestracodigo, inscricaonumero, data, horasaida) VALUES (2, 1, '2016-05-01', 410);


--
-- TOC entry 1977 (class 0 OID 614985)
-- Dependencies: 177
-- Data for Name: inscricao; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (1, 1, 1, '2016-05-01');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (2, 1, 2, '2016-05-02');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (3, 1, 3, '2016-05-02');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (4, 5, 1, '2016-05-01');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (5, 5, 2, '2016-05-02');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (6, 5, 3, '2016-05-02');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (7, 3, 1, '2016-05-01');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (8, 3, 2, '2016-05-02');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (9, 2, 1, '2016-05-02');
INSERT INTO inscricao (inscricaonumero, partcodigo, eventocodigo, data) VALUES (10, 3, 1, '2016-05-02');


--
-- TOC entry 1991 (class 0 OID 0)
-- Dependencies: 176
-- Name: inscricao_inscricaonumero_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('inscricao_inscricaonumero_seq', 28, true);


--
-- TOC entry 1975 (class 0 OID 614977)
-- Dependencies: 175
-- Data for Name: palestras; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO palestras (palestracodigo, titulo, data, horainicio, horatermino) VALUES (1, 'Logicas não convencionais aplicadas à IA', '2016-05-25', 130, 245);
INSERT INTO palestras (palestracodigo, titulo, data, horainicio, horatermino) VALUES (2, 'Frameworks de Persistência', '2016-11-30', 300, 400);


--
-- TOC entry 1992 (class 0 OID 0)
-- Dependencies: 174
-- Name: palestras_palestracodigo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('palestras_palestracodigo_seq', 2, true);


--
-- TOC entry 1971 (class 0 OID 614961)
-- Dependencies: 171
-- Data for Name: participante; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO participante (partcodigo, nome, endereco, telefone) VALUES (1, 'João da Silva', 'Rua Tal de Tal, 20', '3498-9878');
INSERT INTO participante (partcodigo, nome, endereco, telefone) VALUES (2, 'Marcelo Moreira', 'Av. Brasil, 4520', '3226-7890');
INSERT INTO participante (partcodigo, nome, endereco, telefone) VALUES (3, 'Beatriz Antunes', 'Rua Parana, 567', '3036-9090');
INSERT INTO participante (partcodigo, nome, endereco, telefone) VALUES (4, 'Carlos Menezes', 'Rua Santa Catarina, 352', NULL);
INSERT INTO participante (partcodigo, nome, endereco, telefone) VALUES (5, 'Maria de Lourdes Fonseca', 'Rua Espirito Santo, 115', '3038-4196');


--
-- TOC entry 1993 (class 0 OID 0)
-- Dependencies: 170
-- Name: participante_partcodigo_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('participante_partcodigo_seq', 6, true);


-- Completed on 2016-05-05 10:39:40

--
-- PostgreSQL database dump complete
--

-- Exercício 1
SELECT PAR.nome FROM Frequencia AS FRE INNER JOIN Inscricao AS INS ON (INS.inscricaoNumero = FRE. inscricaoNumero)
				       INNER JOIN Participante AS PAR ON (PAR.partCodigo = INS.partCodigo)
WHERE FRE.palestraCodigo = 1 AND INS.eventoCodigo = 5;
-- Exercício 2
SELECT PAR.nome, EVE.descricao FROM Inscricao AS INS INNER JOIN Participante AS PAR ON (PAR.partCodigo = INS.partCodigo)
			       INNER JOIN Evento AS EVE ON (EVE.eventoCodigo = INS.eventoCodigo) ORDER BY PAR.nome
-- Exercício 3
SELECT PART.NOME
FROM FREQUENCIA AS FRE INNER JOIN INSCRICAO AS INS ON 
		       (INS.INSCRICAONUMERO = FRE.INSCRICAONUMERO)
		       INNER JOIN PARTICIPANTE AS PAR ON
		       (PAR.PARTCODIGO = INS.PARTCODIGO)
		       INNER JOIN PALESTRAS PAL ON
		       (PAL.PALESTRACODIGO = FRE.PALESTRACODIGO)
WHERE INS.EVENTOCODIGO = 2 AND FRE.HORASAIDA < PAL.HORATERMINO
-- Exercício 4
-- Escreva um comando SQL que liste o número de inscrições do evento cujo código é 5. 
SELECT COUNT(*) 
FROM INSCRICAO AS INS WHERE INS.EVENTOCODIGO = 5
 --ou
 SELECT EVE.DESCRICAO, COUNT(INS.INSCRICAONUMERO)
 FROM INSCRICAO AS INS INNER JOIN EVENTO AS EVE ON (EVE.EVENTOCODIGO = INS.EVENTOCODIGO)
 WHERE INS.EVENTOCODIGO = 5
 GROUP BY EVE.DESCRICAO
 -- Exercício 5
 -- Escreva um comando SQL que liste a descrição do evento e o respectivo valor total arrecadado com as inscrições (de cada evento). 
SELECT EVE.DESCRICAO, SUM(EVE.VALORINSCRICAO), EVE.VALORINSCRICAO, COUNT(INS.INSCRICAONUMERO)
FROM INSCRICAO AS INS INNER JOIN EVENTO AS EVE ON (EVE.EVENTOCODIGO = INS.EVENTOCODIGO)
GROUP BY EVE.DESCRICAO, EVE.VALORINSCRICAO
-- Exercício 6
-- Escreva um comando SQL que liste a descrição da palestra cujo número total de participantes foi superior a 200
SELECT PAL.TITULO, COUNT(FRE.PALESTRACODIGO)
FROM PALESTRAS AS PAL INNER JOIN FREQUENCIA AS FRE ON (FRE.PALESTRACODIGO = PAL.PALESTRACODIGO)
GROUP BY PAL.TITULO
HAVING COUNT(FRE.PALESTRACODIGO) > 1















