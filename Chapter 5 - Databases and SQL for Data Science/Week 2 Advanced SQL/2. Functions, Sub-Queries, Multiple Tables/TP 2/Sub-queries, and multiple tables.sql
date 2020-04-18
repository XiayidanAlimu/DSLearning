/* 
  Now lets practice sub-queries and and working with multiple tables. 
  Use the EMPLOYEES and DEPARTMENTS tables created prevously and execute the queries in the last two lessons. 
*/


-- Sub-queries in FROM clause

select * from 
	(select EMP_ID, F_NAME, L_NAME, DEP_ID from EMPLOYEES) as EMP4All;
	
--	Accessing multiple tables with sub-queries

-- To retrieve only the employee records that correspond to departments in the DEPARTMENTS table:

select * from  EMPLOYEES where DEP_ID in 
	(select DEPT_ID_DEP from DEPARTMENTS);
	
-- To retrieve only the list of employees from a specific location:
select * from EMPLOYEES where  DEP_ID in 
	(select DEPT_ID_DEP from DEPARTMENTS where LOC_ID = 'L0002');
	
-- To retrieve the department ID and name for employees who earn more than $70,000

select DEPT_ID_DEP, DEP_NAME from DEPARTMENTS where DEPT_ID_DEP in 
	(select DEP_ID from EMPLOYEES where SALARY > 70000);
	
-- Accessing multiple tables with Implicit join

select * from EMPLOYEES, DEPARTMENTS;

select * from EMPLOYEES, DEPARTMENTS where EMPLOYEES.DEP_ID = DEPARTMENTS.DEPT_ID_DEP;

select * from EMPLOYEES E, DEPARTMENTS D where E.DEP_ID = D.DEPT_ID_DEP;

select E.EMP_ID, D.DEP_NAME from EMPLOYEES E, DEPARTMENTS D where E.DEP_ID = D.DEPT_ID_DEP;

