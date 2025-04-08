-- 1. Buscar colaboradores cujo nome começa com 'A'
SELECT * FROM colaborador
WHERE nome LIKE 'A%';

-- 2. Buscar colaboradores cujo sobrenome termina com 'SILVA'
SELECT * FROM colaborador
WHERE sobrenome LIKE '%SILVA';

-- 3. Buscar colaboradores cuja função contém a palavra 'GERENTE'
SELECT * FROM colaborador
WHERE funcao LIKE '%GERENTE%';

-- 4. Buscar colaboradores contratados com mês de contratação iniciando com '05'
SELECT * FROM colaborador
WHERE TO_CHAR(data_de_contratacao, 'mm') LIKE '05';

-- 5. Buscar departamentos cujo nome contém a palavra 'DADOS'
SELECT * FROM departamento
WHERE nome_departamento LIKE '%DADOS%';

-- 6. Buscar colaboradores cujo nome tenha a segunda letra 'A' (ex: 'MARIO', 'CARLA')
SELECT * FROM colaborador
WHERE nome LIKE '_A%';

-- 7. Buscar departamentos cuja cidade termina com 'PAULO'
SELECT * FROM departamento
WHERE cidade LIKE '%PAULO';
