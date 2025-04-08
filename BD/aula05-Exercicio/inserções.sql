
-- INSERÇÕES TIMES

INSERT INTO TIME (ID_Time, Nome_Time, Cidade, Estado, Ano_Fundacao) VALUES
(1, 'Los Angeles Lakers', 'Los Angeles', 'Califórnia', 1947),
(2, 'Boston Celtics', 'Boston', 'Massachusetts', 1946),
(3, 'Golden State Warriors', 'São Francisco', 'Califórnia', 1946),
(4, 'Milwaukee Bucks', 'Milwaukee', 'Wisconsin', 1968),
(5, 'Dallas Mavericks', 'Dallas', 'Texas', 1980);


-- INSERÇÕES JOGADORES

INSERT INTO JOGADOR (ID_Jogador, Nome, Idade, Posição, Altura, Peso, ID_Time) VALUES
(1, 'LeBron James', 40, 'Ala', 2.06, 113.4, 1), -- Los Angeles Lakers
(2, 'Anthony Davis', 32, 'Pivô', 2.08, 115.7, 1), -- Los Angeles Lakers
(3, 'Jayson Tatum', 27, 'Ala', 2.03, 95.3, 2), -- Boston Celtics
(4, 'Jaylen Brown', 28, 'Ala', 1.98, 101.6, 2), -- Boston Celtics
(5, 'Stephen Curry', 37, 'Armador', 1.88, 83.9, 3), -- Golden State Warriors
(6, 'Draymond Green', 35, 'Ala-Pivô', 1.98, 104.3, 3), -- Golden State Warriors
(7, 'Giannis Antetokounmpo', 30, 'Ala-Pivô', 2.11, 110.7, 4), -- Milwaukee Bucks
(8, 'Khris Middleton', 33, 'Ala', 2.01, 98.4, 4), -- Milwaukee Bucks
(9, 'Luka Dončić', 26, 'Armador', 2.01, 104.3, 5), -- Dallas Mavericks
(10, 'Kyrie Irving', 32, 'Armador', 1.88, 88.5, 5); -- Dallas Mavericks


-- INSERÇÕES ESTATISTICAS

INSERT INTO ESTATISTICAS (ID_Estatistica, ID_Jogador, Pontos, Assistencias, Rebotes, Roubos_Bola, Tocos, Data_Jogo) VALUES
(1, 1, 28, 7, 9, 2, 1, TO_DATE('2024-03-10', 'YYYY-MM-DD')), -- LeBron James
(2, 2, 24, 3, 12, 1, 3, TO_DATE('2024-03-10', 'YYYY-MM-DD')), -- Anthony Davis
(3, 3, 32, 5, 8, 1, 0, TO_DATE('2024-03-11', 'YYYY-MM-DD')), -- Jayson Tatum
(4, 4, 25, 4, 6, 3, 1, TO_DATE('2024-03-11', 'YYYY-MM-DD')), -- Jaylen Brown
(5, 5, 40, 9, 4, 2, 0, TO_DATE('2024-03-12', 'YYYY-MM-DD')), -- Stephen Curry
(6, 6, 15, 6, 10, 2, 2, TO_DATE('2024-03-12', 'YYYY-MM-DD')), -- Draymond Green
(7, 7, 35, 7, 14, 3, 2, TO_DATE('2024-03-13', 'YYYY-MM-DD')), -- Giannis Antetokounmpo
(8, 8, 22, 4, 5, 1, 0, TO_DATE('2024-03-13', 'YYYY-MM-DD')), -- Khris Middleton
(9, 9, 38, 11, 7, 2, 0, TO_DATE('2024-03-14', 'YYYY-MM-DD')), -- Luka Dončić
(10, 10, 30, 8, 3, 4, 0, TO_DATE('2024-03-14', 'YYYY-MM-DD')); -- Kyrie Irving
