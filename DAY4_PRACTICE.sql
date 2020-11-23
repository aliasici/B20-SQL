-- FINAL HOUR PRACTICE

-- COMBINE WHAT WE LEARNED 

-- GET THE EMPLOYEE COUNT OF EACH DEPARTMENT 
-- THE RESULT SHOULD INCLUDE 2 COLUMNS : 
-- DEPARTMENT_NAME , EMPLOYEE_COUNT 

SELECT d.DEPARTMENT_NAME , COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES e
INNER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME
ORDER BY 2  -- ORDER BY MUST BE THE LAST LINE OF THE QUERY!!!!!!!!!!
;

-- ON TOP OF ABOVE QUERY 
-- ONLY LIST THOSE DEPARTMENT NAMES STARTED WITH A OR ended with ng
SELECT d.DEPARTMENT_NAME , COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES e
INNER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY d.DEPARTMENT_NAME
HAVING d.DEPARTMENT_NAME LIKE 'A%' OR d.DEPARTMENT_NAME LIKE '%ng'; 
--- IF YOU ARE USING COUNT(*) FOR CONDITION YOU CAN ONLY USE IT WITH HAVING 
-- IF YOUR CONDITION DOES NOT INVOLVE AGGREGATE YOU CAN FILTER DIRECTLY WITH WHERE 

-- SINCE WE ARE NOT USING COUNT(*) FOR CONDITION PART 
-- WE CAN DIRECTLY FILTER OUT THE RESULT FIRST 
-- THEN DO THE GROUPING 

SELECT d.DEPARTMENT_NAME , COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES e
INNER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE d.DEPARTMENT_NAME LIKE 'A%' OR d.DEPARTMENT_NAME LIKE '%ng'
GROUP BY d.DEPARTMENT_NAME  ; 

--- BY EXTENDING ABOVE QUERY , RETURN THE DEPARTMENT NAME WITH MORE THAN 5 EMPLOYEES 
SELECT d.DEPARTMENT_NAME , COUNT(*) AS EMPLOYEE_COUNT
FROM EMPLOYEES e
INNER JOIN DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE d.DEPARTMENT_NAME LIKE 'A%' OR d.DEPARTMENT_NAME LIKE '%ng'
GROUP BY d.DEPARTMENT_NAME  
HAVING COUNT(*) > 5 
; 

-- FIND OUT HOW MANY DEPARTMENT IN EACH COUNTRY
--- COUNTRIES -<COUNTRY_ID>--LOCATION --<LOCATION_ID>--  DEPARTMENT  
SELECT c.country_name , COUNT(d.department_name)
FROM DEPARTMENTS d 
INNER JOIN LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
INNER JOIN COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID

GROUP BY c.COUNTRY_NAME

; 

-- FIND OUT HOW MANY DEPARTMENT IN EACH COUNTRY
--- COUNTRIES -<COUNTRY_ID>--LOCATION --<LOCATION_ID>--  DEPARTMENT  
SELECT c.country_name , COUNT(d.department_name)
FROM DEPARTMENTS d 
RIGHT JOIN LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
RIGHT JOIN COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID
GROUP BY c.COUNTRY_NAME
ORDER BY 2 DESC
;