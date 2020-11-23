Lets first generate the data that we saw in above document 

1. Open new SQL Worksheet 
2. Copy paste below SQL (Do not ask why ?)

```sql
CREATE TABLE FIRST_TABLE AS (
    SELECT FIRST_NAME , SALARY FROM EMPLOYEES 
    WHERE SALARY BETWEEN 10500 AND 13000
    
) ORDER BY 2 ;  

CREATE TABLE SECOND_TABLE AS (
    SELECT FIRST_NAME , SALARY FROM EMPLOYEES 
    WHERE SALARY BETWEEN 12000 AND 24000
    
) ORDER BY 2 ;  

COMMIT ;
