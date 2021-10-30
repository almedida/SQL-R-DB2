--employees records that correspond to jobs in the jobs table

SELECT * FROM EMPLOYEES
WHERE JOB_ID IN
(SELECT JOB_IDENT FROM JOBS);

--the list of employees whose JOB_TITLE is Jr. Designer.
SELECT * FROM EMPLOYEES
WHERE JOB_ID IN
(SELECT JOB_IDENT FROM JOBS 
WHERE UPPER(JOB_TITLE) LIKE UPPER('%Jr. Designer%'));


--JOB information and list of employees who earn more than $70,000

SELECT * FROM JOBS
WHERE JOB_IDENT IN
(SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);

--JOB information and list of employees whose birth year is after 1976
SELECT * FROM JOBS
WHERE JOB_IDENT IN
(SELECT JOB_ID FROM EMPLOYEES
WHERE YEAR(B_DATE) > 1976);

--JOB information and list of female employees whose 
--birth year is after 1976
SELECT * FROM JOBS
WHERE JOB_IDENT IN
(SELECT JOB_ID FROM EMPLOYEES 
WHERE UPPER(SEX) LIKE UPPER('%F%') AND (YEAR(B_DATE) > 1976));

--an implicit cartesian/cross join between EMPLOYEES and JOBS tables
--SELECT * FROM EMPLOYEES AS E, JOBS AS J;

--only the EMPLOYEES records that correspond to jobs in the JOBS table
SELECT * FROM EMPLOYEES AS E, JOBS AS J
WHERE E.JOB_ID = J.JOB_IDENT;

--only the Employee ID, Employee Name and Job Title
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE FROM EMPLOYEES AS E, JOBS AS J
WHERE E.JOB_ID = J.JOB_IDENT;

