-- FAZ DROPS SE EXISTIR
DROP TABLE comissao;

DROP TABLE colaborador;

DROP TABLE departamento;



-- CRIANDO TABELA DEPARTAMENTO
CREATE TABLE departamento(   
  id_departamento     number(3),   
  nome_departamento   varchar2(15), 
  pais  varchar2(15),
  cidade         varchar2(15),   
  CONSTRAINT pk_departamento PRIMARY KEY (id_departamento)   
);


-- CRIANDO TABELA COLABORADOR
CREATE TABLE colaborador(   
  id_colaborador    number(4),   
  nome              varchar2(10),
  sobrenome         varchar2(20),   
  funcao            varchar2(20),  
  data_de_contratacao date,   
  salario           number(7,2),
  id_departamento   number(3),   
  CONSTRAINT pk_colaborador PRIMARY KEY (id_colaborador),   
  CONSTRAINT fk_departamento FOREIGN KEY (id_departamento) REFERENCES departamento (id_departamento)   
);


-- CRIANDO TABELA COMISSAO
CREATE TABLE comissao (
    id_pagamento      number(4),
    id_colaborador    number(4), 
    id_departamento   number(4),
    valor_vendas      number(7,2),
    comissao          number(2),
    data_pagamento_comissao date,
    CONSTRAINT pk_comissao PRIMARY KEY (id_pagamento),   
    CONSTRAINT fk_departamento_comissao FOREIGN KEY (id_departamento) REFERENCES departamento (id_departamento), 
    CONSTRAINT fk_colaborador_comissao FOREIGN KEY (id_colaborador) REFERENCES colaborador (id_colaborador)     
);



-- INSERÇÕES DEPARTAMENTO
INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (111, 'DEV OPS', 'BRASIL', 'RIO DE JANEIRO');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (222, 'ENGENHARIA', 'BRASIL', 'SÃO PAULO');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (333, 'FRONT-END', 'INDIA', 'BANGALORE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (444, 'BANCO DE DADOS', 'USA', 'ASHEVILLE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (555, 'VENDAS', 'BRASIL', 'BELO HORIZONTE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (666, 'COMPRAS', 'BRASIL', 'BELO HORIZONTE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (777, 'GERENCIA', 'RÚSSIA', 'KIEVSKAYA');

---------------------------------------------------------------------------------------------------------------------

-- INSERÇOES COLABORADOR
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4156, 'KAIO', 'MONARK', 'DEV OPS', TO_DATE('11-12-2018', 'dd-mm-yyyy'), 3585.38, 111);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3548, 'ANA JULIA', 'GABANE', 'ENGENHEIRO SENIOR', TO_DATE('13-05-2015', 'dd-mm-yyyy'), 15670.59, 222);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1258, 'ISLANY', 'CARVALHO', 'FRONT END JUNIOR', TO_DATE('27-01-2019', 'dd-mm-yyyy'), 4586.69, 333);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1987, 'BRENNO', 'DIAS SÁ', 'DBRE', TO_DATE('22-07-2023', 'dd-mm-yyyy'), 7850.87, 444);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1345, 'GILSON', 'VIEIRA', 'VENDEDOR', TO_DATE('01-12-2021', 'dd-mm-yyyy'), 5267.36, 555);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3125, 'PAULO', 'NASCIMENTO', 'COMPRADOR', TO_DATE('03-03-2015', 'dd-mm-yyyy'), 3587.79, 666);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (9876, 'BRUNO', 'PADOVEZE', 'GERENTE', TO_DATE('13-12-2007', 'dd-mm-yyyy'), 23587.36, 777);

---------------------------------------------------------------------------------------------------------------------

-- INSERCOES COMISSAO
INSERT INTO comissao(id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1784, 1345, 555, 2000.00, 7, TO_DATE('25-02-2024', 'dd-mm-yyyy'));




-- NOVAS INSERÇÕES GERADAS AUTOMATICAMENTE CHATGPT

-- INSERÇÕES NA TABELA COLABORADOR
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5064, 'BEATRIZ', 'ALMEIDA', 'VENDEDOR', TO_DATE('01-07-2015', 'dd-mm-yyyy'), 8932.42, 333);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5376, 'ANA', 'ALMEIDA', 'DBA', TO_DATE('19-12-2016', 'dd-mm-yyyy'), 11532.04, 666);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7423, 'FERNANDA', 'RODRIGUES', 'GERENTE', TO_DATE('19-01-2025', 'dd-mm-yyyy'), 8295.3, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2682, 'CARLOS', 'SANTOS', 'DESENVOLVEDOR', TO_DATE('27-11-2016', 'dd-mm-yyyy'), 3122.88, 111);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6559, 'BEATRIZ', 'LIMA', 'COMPRADOR', TO_DATE('20-11-2019', 'dd-mm-yyyy'), 7551.79, 111);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7957, 'RAFAEL', 'ALMEIDA', 'GERENTE', TO_DATE('30-07-2015', 'dd-mm-yyyy'), 10215.12, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3422, 'FERNANDA', 'PEREIRA', 'COMPRADOR', TO_DATE('31-05-2015', 'dd-mm-yyyy'), 7104.22, 555);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1587, 'JULIA', 'SANTOS', 'ANALISTA', TO_DATE('29-07-2021', 'dd-mm-yyyy'), 8789.56, 333);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (8436, 'BEATRIZ', 'OLIVEIRA', 'DESENVOLVEDOR', TO_DATE('21-03-2024', 'dd-mm-yyyy'), 8183.93, 555);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4965, 'JULIA', 'COSTA', 'COMPRADOR', TO_DATE('18-04-2021', 'dd-mm-yyyy'), 6253.08, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6120, 'FERNANDA', 'SILVA', 'DESENVOLVEDOR', TO_DATE('19-02-2023', 'dd-mm-yyyy'), 6035.75, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5413, 'MARIA', 'SANTOS', 'VENDEDOR', TO_DATE('09-01-2020', 'dd-mm-yyyy'), 12882.39, 555);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1036, 'JULIA', 'SANTOS', 'DESENVOLVEDOR', TO_DATE('01-07-2014', 'dd-mm-yyyy'), 14710.9, 666);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2204, 'PEDRO', 'COSTA', 'GERENTE', TO_DATE('07-09-2014', 'dd-mm-yyyy'), 11621.73, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2329, 'JOÃO', 'SILVA', 'DESENVOLVEDOR', TO_DATE('24-06-2016', 'dd-mm-yyyy'), 6523.92, 333);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7187, 'JULIA', 'SILVA', 'DBA', TO_DATE('22-01-2018', 'dd-mm-yyyy'), 11552.45, 333);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4643, 'MARIA', 'LIMA', 'COMPRADOR', TO_DATE('12-09-2020', 'dd-mm-yyyy'), 8975.08, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1926, 'RAFAEL', 'LIMA', 'ANALISTA', TO_DATE('28-12-2014', 'dd-mm-yyyy'), 7321.65, 111);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5890, 'MARIA', 'SILVA', 'DESENVOLVEDOR', TO_DATE('30-06-2021', 'dd-mm-yyyy'), 7079.43, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4960, 'MARIA', 'COSTA', 'DBA', TO_DATE('13-10-2014', 'dd-mm-yyyy'), 14050.65, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2639, 'BEATRIZ', 'COSTA', 'GERENTE', TO_DATE('08-06-2021', 'dd-mm-yyyy'), 6625.21, 111);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3092, 'ANA', 'SANTOS', 'COMPRADOR', TO_DATE('06-08-2022', 'dd-mm-yyyy'), 8200.94, 666);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2257, 'CARLOS', 'RODRIGUES', 'ANALISTA', TO_DATE('12-07-2020', 'dd-mm-yyyy'), 7954.49, 555);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6902, 'LUCAS', 'PEREIRA', 'GERENTE', TO_DATE('23-10-2018', 'dd-mm-yyyy'), 10315.17, 666);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7841, 'ANA', 'PEREIRA', 'COMPRADOR', TO_DATE('25-12-2015', 'dd-mm-yyyy'), 7692.03, 666);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4039, 'ANA', 'SILVA', 'DBA', TO_DATE('04-02-2021', 'dd-mm-yyyy'), 3669.21, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2133, 'JULIA', 'ALMEIDA', 'GERENTE', TO_DATE('25-04-2016', 'dd-mm-yyyy'), 7078.7, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (8550, 'BEATRIZ', 'ALMEIDA', 'VENDEDOR', TO_DATE('29-09-2017', 'dd-mm-yyyy'), 13698.49, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1333, 'BEATRIZ', 'ALMEIDA', 'DESENVOLVEDOR', TO_DATE('27-02-2019', 'dd-mm-yyyy'), 12827.84, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3596, 'LUCAS', 'COSTA', 'VENDEDOR', TO_DATE('04-02-2018', 'dd-mm-yyyy'), 13143.87, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4303, 'LUCAS', 'COSTA', 'DESENVOLVEDOR', TO_DATE('19-02-2017', 'dd-mm-yyyy'), 9973.74, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1764, 'RAFAEL', 'RODRIGUES', 'COMPRADOR', TO_DATE('05-07-2024', 'dd-mm-yyyy'), 13593.03, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2062, 'JULIA', 'SILVA', 'DESENVOLVEDOR', TO_DATE('15-10-2019', 'dd-mm-yyyy'), 9180.86, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4470, 'FERNANDA', 'SANTOS', 'VENDEDOR', TO_DATE('15-02-2025', 'dd-mm-yyyy'), 13001.15, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (9606, 'BEATRIZ', 'SANTOS', 'DESENVOLVEDOR', TO_DATE('01-03-2015', 'dd-mm-yyyy'), 5921.02, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5140, 'CARLOS', 'RODRIGUES', 'COMPRADOR', TO_DATE('30-12-2018', 'dd-mm-yyyy'), 10618.96, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3398, 'JOÃO', 'SILVA', 'GERENTE', TO_DATE('20-08-2015', 'dd-mm-yyyy'), 5598.48, 333);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5114, 'MARIA', 'SANTOS', 'DESENVOLVEDOR', TO_DATE('11-08-2024', 'dd-mm-yyyy'), 10162.1, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2551, 'PEDRO', 'ALMEIDA', 'DBA', TO_DATE('25-09-2018', 'dd-mm-yyyy'), 6437.74, 333);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2019, 'CARLOS', 'SANTOS', 'GERENTE', TO_DATE('10-12-2021', 'dd-mm-yyyy'), 8546.71, 333);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6336, 'FERNANDA', 'OLIVEIRA', 'ANALISTA', TO_DATE('26-04-2017', 'dd-mm-yyyy'), 6579.25, 555);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (8999, 'BEATRIZ', 'COSTA', 'ANALISTA', TO_DATE('26-07-2023', 'dd-mm-yyyy'), 4538.52, 666);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6501, 'LUCAS', 'SANTOS', 'DESENVOLVEDOR', TO_DATE('10-03-2023', 'dd-mm-yyyy'), 7675.08, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7129, 'RAFAEL', 'PEREIRA', 'DBA', TO_DATE('22-03-2018', 'dd-mm-yyyy'), 12966.45, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3649, 'ANA', 'OLIVEIRA', 'GERENTE', TO_DATE('01-07-2023', 'dd-mm-yyyy'), 10675.34, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (9852, 'FERNANDA', 'ALMEIDA', 'ANALISTA', TO_DATE('13-07-2021', 'dd-mm-yyyy'), 8686.14, 666);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (8978, 'LUCAS', 'RODRIGUES', 'VENDEDOR', TO_DATE('30-01-2016', 'dd-mm-yyyy'), 7980.53, 222);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6824, 'PEDRO', 'PEREIRA', 'ANALISTA', TO_DATE('18-02-2018', 'dd-mm-yyyy'), 14410.09, 777);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4924, 'CARLOS', 'COSTA', 'DESENVOLVEDOR', TO_DATE('17-02-2023', 'dd-mm-yyyy'), 12590.2, 444);
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1747, 'BEATRIZ', 'COSTA', 'VENDEDOR', TO_DATE('12-06-2015', 'dd-mm-yyyy'), 7018.87, 444);


-- INSERÇÕES NA TABELA COMISSAO
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (3792, 4156, 666, 8955.44, 7, TO_DATE('16-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (8037, 6902, 444, 8166.04, 15, TO_DATE('21-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6623, 2204, 333, 6375.24, 8, TO_DATE('08-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (7738, 3398, 111, 1252.36, 15, TO_DATE('11-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (9940, 1764, 333, 1566.75, 10, TO_DATE('19-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6542, 3398, 333, 2108.1, 5, TO_DATE('13-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (3149, 2204, 777, 7118.16, 9, TO_DATE('11-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (3879, 3596, 777, 4309.24, 12, TO_DATE('06-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5520, 6120, 666, 3533.2, 9, TO_DATE('19-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (4222, 2133, 555, 5194.28, 14, TO_DATE('05-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5925, 1587, 666, 8064.48, 12, TO_DATE('11-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (4761, 1036, 777, 9843.31, 10, TO_DATE('15-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (2895, 5064, 333, 6534.56, 5, TO_DATE('03-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (8548, 4303, 777, 8242.85, 13, TO_DATE('27-01-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (8389, 3125, 555, 5917.96, 12, TO_DATE('22-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5044, 2204, 666, 7275.7, 14, TO_DATE('01-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (4658, 4643, 444, 1030.24, 7, TO_DATE('06-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6967, 6902, 666, 1251.49, 8, TO_DATE('14-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5483, 1987, 222, 8798.38, 12, TO_DATE('03-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5972, 2133, 777, 7376.52, 8, TO_DATE('09-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5041, 1764, 111, 9326.92, 9, TO_DATE('23-01-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (3658, 1333, 222, 9494.85, 9, TO_DATE('20-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (3177, 7187, 777, 9287.21, 14, TO_DATE('19-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (4899, 1036, 555, 7188.54, 7, TO_DATE('11-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6700, 4643, 777, 4811.53, 14, TO_DATE('07-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (8962, 3092, 333, 1946.06, 13, TO_DATE('21-01-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (4145, 5413, 333, 8378.8, 11, TO_DATE('29-01-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (2083, 4303, 333, 2850.44, 15, TO_DATE('05-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (2941, 4303, 222, 5993.23, 11, TO_DATE('17-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5019, 4924, 444, 6254.31, 6, TO_DATE('27-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6498, 6902, 555, 8852.62, 15, TO_DATE('18-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (7832, 9852, 777, 5066.16, 14, TO_DATE('10-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (9778, 5114, 111, 4992.99, 5, TO_DATE('16-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6494, 8550, 666, 9360.76, 11, TO_DATE('11-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6893, 4303, 777, 9003.38, 8, TO_DATE('19-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (9740, 4965, 555, 3214.22, 15, TO_DATE('06-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (2161, 3596, 222, 7630.31, 6, TO_DATE('16-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (8420, 2019, 777, 2343.85, 11, TO_DATE('14-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6111, 1036, 111, 5653.92, 7, TO_DATE('20-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (9452, 1987, 777, 7461.52, 5, TO_DATE('23-01-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (7627, 7841, 555, 5378.23, 5, TO_DATE('07-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (2336, 4643, 333, 8630.35, 10, TO_DATE('17-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (2457, 7841, 777, 8011.38, 13, TO_DATE('08-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (8346, 1345, 444, 7179.67, 13, TO_DATE('03-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (2598, 8436, 333, 3635.27, 11, TO_DATE('01-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5500, 2019, 444, 1197.05, 10, TO_DATE('27-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (3612, 5114, 222, 7928.09, 13, TO_DATE('18-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (5592, 4924, 555, 2402.73, 8, TO_DATE('17-03-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (7443, 1987, 777, 4542.15, 14, TO_DATE('01-02-2025', 'dd-mm-yyyy'));
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (6873, 5114, 444, 4136.5, 6, TO_DATE('06-02-2025', 'dd-mm-yyyy'));