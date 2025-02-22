
-- selecionar funcionarios que tenham o nome começando com K
SELECT * FROM emp WHERE ename LIKE 'K%';


-- selecionar funcionarios que tenham qualquer dois caracteres antes do L
SELECT * FROM emp WHERE ename LIKE '__L%';

-- selecionar qualquer registro que tenha a palavra Clerk
SELECT * FROM jobs WHERE job_title LIKE '%Clerk%';
