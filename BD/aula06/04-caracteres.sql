
-- 1. Mostrar o nome completo (nome + sobrenome) dos colaboradores
SELECT nome || ' ' || sobrenome AS nome_completo
FROM colaborador;

-- 2. Retornar os 3 primeiros caracteres do nome dos colaboradores
SELECT SUBSTR(nome, 1, 3) AS iniciais_nome
FROM colaborador;

-- 3. Mostrar o nome dos colaboradores todo em letras maiúsculas
SELECT UPPER(nome) AS nome_maiusculo
FROM colaborador;

-- 4. Mostrar o sobrenome dos colaboradores todo em letras minúsculas
SELECT LOWER(sobrenome) AS sobrenome_minusculo
FROM colaborador;

-- 5. Concatenar cidade e país dos departamentos
SELECT cidade || ' - ' || pais AS localizacao
FROM departamento;

-- 6. Mostrar a função do colaborador com o nome todo em maiúsculo
SELECT UPPER(nome || ' - ' || funcao) AS descricao_funcional
FROM colaborador;

-- 7. Exibir os últimos 4 caracteres do sobrenome
SELECT SUBSTR(sobrenome, -4) AS fim_sobrenome
FROM colaborador;

-- 8. Concatenar nome, sobrenome e salário com texto explicativo
SELECT nome || ' ' || sobrenome || ' recebe R$' || salario AS info_salario
FROM colaborador;

-- 9. Mostrar nome do departamento em minúsculas concatenado com a cidade em maiúsculas
SELECT LOWER(nome_departamento) || ' / ' || UPPER(cidade) AS info_departamento
FROM departamento;

-- 10. Mostrar apenas a primeira letra do nome e sobrenome dos colaboradores (iniciais)
SELECT SUBSTR(nome, 1, 1) || '.' || SUBSTR(sobrenome, 1, 1) || '.' AS iniciais
FROM colaborador;
