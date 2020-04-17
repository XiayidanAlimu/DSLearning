-- Query 1: Retrieve all employees whose address is in Elgin,IL
-- [Hint: Use the LIKE operator to find similar strings]
select * from EMPLOYEES where ADDRESS like '%Elgin,IL%';

-- Query 2: Retrieve all employees who were born during the 1970's.
-- [Hint: Use the LIKE operator to find similar strings]
select * from EMPLOYEES where B_DATE like '197%';

-- Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000 .
-- [Hint: Use the keyword BETWEEN for this query ]
select * from EMPLOYEES where DEP_ID = 5 and SALARY between 60000 and 70000;

-- Query 4A: Retrieve a list of employees ordered by department ID.
-- [Hint: Use the ORDER BY clause for this query]
select * from EMPLOYEES ORDER BY DEP_ID;

-- Query 4B: Retrieve a list of employees ordered in descending order by department ID 
-- and within each department ordered alphabetically in descending order by last name.
select * from EMPLOYEES ORDER BY DEP_ID DESC, L_NAME DESC;

-- Query 5A: For each department ID retrieve the number of employees in the department.
-- [Hint: Use COUNT(*) to retrieve the total count of a column, and then GROUP BY]
select  DEP_ID, count(*) from EMPLOYEES group by DEP_ID;

-- Query 5B: For each department retrieve the number of employees in the department, 
-- and the average employees salary in the department.
-- [Hint: Use COUNT(*) to retrieve the total count of a column, and AVG() function 
-- to compute average salaries, and then group]
select  DEP_ID, count(*) as count, avg(SALARY) as Average_Salary from EMPLOYEES group by DEP_ID;

-- Query 5C: Label the computed columns in the result set of Query 5B 
-- as “NUM_EMPLOYEES” and “AVG_SALARY”.
-- [Hint: Use AS “LABEL_NAME” after the column name]
select  DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY from EMPLOYEES group by DEP_ID;

-- Query 5D: In Query 5C order the result set by Average Salary.
-- [Hint: Use ORDER BY after the GROUP BY]
select  DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY from EMPLOYEES group by DEP_ID
ORDER BY AVG_SALARY;

-- Query 5E: In Query 5D limit the result to departments with fewer than 4 employees.
-- [Hint: Use HAVING after the GROUP BY, and use the count() function in the HAVING clause instead of the column label.
-- Note: WHERE clause is used for filtering the entire result set whereas the HAVING clause is used for filtering the result of the grouping]
select  DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY from EMPLOYEES group by DEP_ID
HAVING count(*) < 4 ORDER BY AVG_SALARY;