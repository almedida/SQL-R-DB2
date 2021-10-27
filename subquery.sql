--compare all employee salaries with average salary
SELECT EMP_ID, F_NAME, L_NAME, SALARY, (
  SELECT AVG(SALARY) AS "AVG_SALARY"
  FROM EMPLOYEES)
  FROM EMPLOYEES;
  
--all employees records whose salary is lower than the average salary and compare
SELECT EMP_ID, F_NAME, L_NAME, SALARY, (
  SELECT AVG(SALARY) AS "AVG_SALARY"
  FROM EMPLOYEES)
  FROM EMPLOYEES
  WHERE SALARY <(
  SELECT AVG(SALARY)
  FROM EMPLOYEES);
 

--all employees records with EMP_ID, SALARY and 
--maximum salary as MAX_SALARY
SELECT EMP_ID, SALARY, (
  SELECT MAX(SALARY) AS "MAX_SALARY"
  FROM EMPLOYEES)
  FROM EMPLOYEES;
