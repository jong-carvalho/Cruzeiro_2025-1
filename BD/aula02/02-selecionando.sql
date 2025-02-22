-- selecionando
SELECT ename, dname, job, empno, hiredate, loc   
FROM emp, dept   
WHERE emp.deptno = dept.deptno   
ORDER BY ename

SELECT dname, count(*) count_of_employees 
FROM dept, emp 
WHERE dept.deptno = emp.deptno 
GROUP BY DNAME 
ORDER BY 2 DESC

-- ------------------------------------------------------------------------------------

-- Mostrar o código do departamento, nome e salário do empregados do departamento de número 20
SELECT DEPTNO, ENAME, SAL FROM EMP WHERE DEPTNO = 20;

--------------------------------------------------------------------------------------------

-- Mostrar o código do empregado, nome, cargo e salário do funcionário de código 7788.
SELECT EMPNO, ENAME, JOB, SAL FROM EMP
WHERE EMPNO = 7788;

--------------------------------------------------------------------------------------------

-- Exibir os dados do funcionário James.
SELECT EMPNO, ENAME, HIREDATE FROM EMP
WHERE ENAME = 'JAMES';

--------------------------------------------------------------------------------------------

-- Selecionar o nome, cargo e salário dos empregados, com exceção dos que tenham ‘JOB’ igual a ‘MANAGER’.
SELECT ename, job, sal FROM emp
WHERE job = 'MANAGER';

--------------------------------------------------------------------------------------------

-- Listar todos os empregados com salários entre 1000 e 2000.
SELECT * frFROMom emp
WHERE sal BETWEEN 1000 AND 2000;

--------------------------------------------------------------------------------------------

-- Listar o nome, salario e departamento dos empregados com os cargos de ‘PRESIDENT’ e ‘ANALYST’.
SELECT ENAME, JOB, SAL, DEPTNO FROM EMP
WHERE JOB IN ('PRESIDENT','ANALYST');

--------------------------------------------------------------------------------------------

-- Listar o nome, salario e departamento dos empregados com os cargos diferentes de ‘PRESIDENT’ e ‘ANALYST’.
SELECT ENAME, JOB, SAL, DEPTNO FROM EMP
WHERE JOB NOT IN ('PRESIDENT','ANALYST')

--------------------------------------------------------------------------------------------