CREATE TABLE TIME (
    ID_Time NUMBER PRIMARY KEY,
    Nome_Time VARCHAR2(100) NOT NULL,
    Cidade VARCHAR2(100) NOT NULL,
    Estado VARCHAR2(50) NOT NULL,
    Ano_Fundacao NUMBER CHECK (Ano_Fundacao >= 1800)
);

CREATE TABLE JOGADOR (
    ID_Jogador NUMBER PRIMARY KEY,
    Nome VARCHAR2(100) NOT NULL,
    Idade NUMBER CHECK (Idade BETWEEN 15 AND 50),
    Posição VARCHAR2(50) NOT NULL,
    Altura FLOAT CHECK (Altura > 0),
    Peso FLOAT CHECK (Peso > 0),
    ID_Time NUMBER,
    CONSTRAINT FK_Jogador_Time FOREIGN KEY (ID_Time) REFERENCES TIME(ID_Time)
);

CREATE TABLE ESTATISTICAS (
    ID_Estatistica NUMBER PRIMARY KEY,
    ID_Jogador NUMBER NOT NULL,
    Pontos NUMBER DEFAULT 0 CHECK (Pontos >= 0),
    Assistencias NUMBER DEFAULT 0 CHECK (Assistencias >= 0),
    Rebotes NUMBER DEFAULT 0 CHECK (Rebotes >= 0),
    Roubos_Bola NUMBER DEFAULT 0 CHECK (Roubos_Bola >= 0),
    Tocos NUMBER DEFAULT 0 CHECK (Tocos >= 0),
    Data_Jogo DATE NOT NULL,
    CONSTRAINT FK_Estatisticas_Jogador FOREIGN KEY (ID_Jogador) REFERENCES JOGADOR(ID_Jogador)
);
