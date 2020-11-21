--- FIND OUT THE FIRST NAME AND DEPARTMENT NAME 
--- USE EMPLOYEES TABLE AND DEPARTMENT TABLE 

SELECT FIRST_NAME , DEPARTMENT_NAME
FROM EMPLOYEES INNER JOIN DEPARTMENTS 
ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID ; 

-- ABOVE QUERY JUST WORK BUT ADDING TABLE NAME IN FRONT OF COLUYMN NAME ALL THE TIME IS NOT EFFICIENT 
-- WE CAN USE TABLE ALIASE TO MAKE THIS SIMPLER 

SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e                -- THIS IS HOW YOU PUT ALIASE FOR TABLE 
INNER JOIN DEPARTMENTS d ON e.Department_Id = d.DEPARTMENT_ID ; 

--- GET THE FIRST_NAME AND JOB_TITLE 
--- USE EMPLOYEES AND JOBS TABLE 
--- THE RELATIONSHIP JOB_ID 

SELECT e.FIRST_NAME , j.JOB_TITLE 
FROM EMPLOYEES e 
INNER JOIN JOBS j on e.JOB_ID = j.JOB_ID ; 

-- GET FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME 

SELECT e.FIRST_NAME ,     -- coming from EMPLOYEES table
			 d.DEPARTMENT_NAME ,-- coming from DEPARTMENTS table
			 l.CITY ,           -- coming from LOCATIONS table
			 c.COUNTRY_NAME ,   -- coming from COUNTRIES table
			 r.REGION_NAME      -- coming from REGIONS table
FROM EMPLOYEES e 
	INNER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
	INNER JOIN LOCATIONS l   on l.LOCATION_ID   = d.LOCATION_ID
	INNER JOIN COUNTRIES c   on l.COUNTRY_ID    = c.COUNTRY_ID
	INNER JOIN REGIONS r     on c.REGION_ID     = r.REGION_ID ;


--- FIND OUT THE FIRST NAME AND DEPARTMENT NAME 
--- USE EMPLOYEES TABLE AND DEPARTMENT TABLE 

SELECT FIRST_NAME , DEPARTMENT_NAME
FROM EMPLOYEES INNER JOIN DEPARTMENTS 
ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID ; 

-- ABOVE QUERY JUST WORK BUT ADDING TABLE NAME IN FRONT OF COLUYMN NAME ALL THE TIME IS NOT EFFICIENT 
-- WE CAN USE TABLE ALIASE TO MAKE THIS SIMPLER 

SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e                -- THIS IS HOW YOU PUT ALIASE FOR TABLE 
INNER JOIN DEPARTMENTS d ON e.Department_Id = d.DEPARTMENT_ID ; 

--- GET THE FIRST_NAME AND JOB_TITLE 
--- USE EMPLOYEES AND JOBS TABLE 
--- THE RELATIONSHIP JOB_ID 

SELECT e.FIRST_NAME , j.JOB_TITLE 
FROM EMPLOYEES e 
INNER JOIN JOBS j on e.JOB_ID = j.JOB_ID ; 

-- GET FIRST_NAME , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME 

SELECT e.FIRST_NAME ,     -- coming from EMPLOYEES table
			 d.DEPARTMENT_NAME ,-- coming from DEPARTMENTS table
			 l.CITY ,           -- coming from LOCATIONS table
			 c.COUNTRY_NAME ,   -- coming from COUNTRIES table
			 r.REGION_NAME      -- coming from REGIONS table
FROM EMPLOYEES e 
	INNER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
	INNER JOIN LOCATIONS l   on l.LOCATION_ID   = d.LOCATION_ID
	INNER JOIN COUNTRIES c   on l.COUNTRY_ID    = c.COUNTRY_ID
	INNER JOIN REGIONS r     on c.REGION_ID     = r.REGION_ID ;

-- INNER JOIN 
/*
INNER JOIN WILL ONLY
RETURN THE DATA MATCH IN
BOTH TABLES,
ANYTHING DOES NOT MATCH
WILL NOT BE PART OF THE
RESULT
*/

SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e                -- THIS IS HOW YOU PUT ALIASE FOR TABLE 
INNER JOIN DEPARTMENTS d ON e.Department_Id = d.DEPARTMENT_ID ; 

-- the result of above query is 106 RATHER than 107 
-- because one employee does not have department 
SELECT * FROM EMPLOYEES 
WHERE DEPARTMENT_ID IS NULL ; 

--- LEFT OUTER JOIN 

--- WHICHEVER TABLE COMES FIRST , IT'S REFERRED AS LEFT TABLE 
--- WHICHEVER TABLE COMES AFTER , IT'S REFERRED AS RIGHT TABLE 

-- TASK GET ALL FIRST NAME AND DEPARTMENT 
-- INCLUDING THE EMPLOYEES WITHOUT DEPARTMENT 
SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e                -- THIS IS HOW YOU PUT ALIASE FOR TABLE 
LEFT OUTER JOIN DEPARTMENTS d ON e.Department_Id = d.DEPARTMENT_ID ; 

-- TASK GET ALL FIRST NAME AND DEPARTMENT 
-- INCLUDING THE DEPARTMENT WITHOUT ANY EMPLOYEE
SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e                -- THIS IS HOW YOU PUT ALIASE FOR TABLE 
RIGHT OUTER JOIN DEPARTMENTS d ON e.Department_Id = d.DEPARTMENT_ID ; 

-- TASK GET ALL FIRST NAME AND DEPARTMENT 
-- INCLUDING THE DEPARTMENT WITHOUT ANY EMPLOYEE
-- INCLUDING THE EMPLOYEE WITHOUT ANY DEPARTMENT 
SELECT e.FIRST_NAME , d.DEPARTMENT_NAME 
FROM EMPLOYEES e                -- THIS IS HOW YOU PUT ALIASE FOR TABLE 
FULL OUTER JOIN DEPARTMENTS d ON e.Department_Id = d.DEPARTMENT_ID ;
   






