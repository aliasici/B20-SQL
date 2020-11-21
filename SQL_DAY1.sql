this is first time
More chenging here
I have to work every day
EC2 Instance That you created from `Cybertek_latest_no_auth` AMI 

You created EC2 instance using this AMI under your account. 

It contains : 

- Windows Operating System
- Jenkins  running on port `8081`
- Oracle Database 11g Express on port `1521`
- Spartan App for practice  , running on port `8000`
- HR ORDS for practicing API  running on port `1000`

You DO NOT HAVE TO go inside this machine at all , we will be just using it remotely. 

You will need the public IP address of this machine all the time. 

Whenever you stop and restart your instance or recreate it from scratch , you will get new IP address and you will need to use that latest IP everywhere.

# Database

Its a system to store and organize your the data with lots of admin feature 

What do we have inside Database 

Data is stored in Tables in the database (very similar to the excel sheet)

It has rows and columns 

Tables can have rules on who can access and what kind of data can be inserted and so on 

Tables can have relationship with other tables 

We connected to the HR Database that running on your EC2 instance 

It has 7 tables with many sample data that we can work with. 

Here is the HR schema to see the tables and their relationship clearly

![https://docs.oracle.com/cd/E25054_01/server.1111/e25789/img/cncpt292.gif](https://docs.oracle.com/cd/E25054_01/server.1111/e25789/img/cncpt292.gif)

# SQL = Structured Query Language

 Used to manage the database , retrieve data , add data , update and many more ... 

What is the syntax of sql look like 


SELECT  SOME_COLUMN 
FROM SOME TABLE 
WHERE SOME_OTHER_COLUM = 'SOME VALUE'


### Oracle SQL Developer

--A free graphical user interface, Oracle SQL Developer allows database users and administrators to do their database tasks in fewer clicks and keystrokes. A productivity tool, SQL Developer's main objective is to help the end user save time and maximize the return on investment in the Oracle Database technology stack.

### Making Connection

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d4364563-c453-4fd5-ba27-786678b53ff9/SQL_Developer_ConnectingToDatabase.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/d4364563-c453-4fd5-ba27-786678b53ff9/SQL_Developer_ConnectingToDatabase.png)

### Opening New SQL Worksheet

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5232f65c-bd77-4ba5-a454-e198595f775d/How_To_Open_New_SQL_WorkSheet.gif](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/5232f65c-bd77-4ba5-a454-e198595f775d/How_To_Open_New_SQL_WorkSheet.gif)

### How to make the font bigger

Mac — Top left corner Oracle SQL Developer → `Preference`  

Windows — `Tools` →  `Preference`

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f2b9d3ed-d123-4803-88b5-251a030524ee/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f2b9d3ed-d123-4803-88b5-251a030524ee/Untitled.png)

### How to see line number

Go to `Preference` → `Code Editor` → `Line Gutter`  check the first checkbox an click `Ok`

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c37aa0fc-5d3d-40dd-bf79-3376bd89a4af/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/c37aa0fc-5d3d-40dd-bf79-3376bd89a4af/Untitled.png)

## SQL Query examples:


-- this is how you comment 
-- double hypen is comment in SQL 
/*
This is how to do multiline commment 
Just like Java !!!
*/
-- SQL most of the time is case insensitive 

-- * is wildcard , means all the columns 
SELECT * FROM EMPLOYEES ; 
-- YOU CAN ONLY USE THE TABLE THAT EXISTS 
-- OR IT WILL GIVE YOU ERROR 
SELECT * FROM COUNTRIES ; 

-- TASK 1 : 
-- USING ABOVE EXAMPLE , SEE ALL DATA FROM ALL OTHER TABLES 
SELECT * FROM DEPARTMENTS ; 
SELECT * FROM JOBS ; 
SELECT * FROM LOCATIONS ; 
SELECT * FROM JOB_HISTORY ; 
SELECT * FROM REGIONS ; 

-- SELECTING SPECIFIC COLUMN RATHER THAN ALL OF THEM FROM A TABLE 
-- YOU CAN USE COLUMN NAME SEPERATED BY COMMA TO GET ONLY COLUMNS YOU CARE ABOUT 

SELECT FIRST_NAME , SALARY 
FROM EMPLOYEES ; 

-- TASK 2 :  SHOW THE RESULT OF ALL LAST_NAME , HIRE_DATE , DEPARTMENT_ID
SELECT LAST_NAME , HIRE_DATE , DEPARTMENT_ID
FROM EMPLOYEES ;

-- TASK 3 : 
/*
THIS IS HOW YOU DO MULTI LINE COMMENT 
NOW SELECT THESE COLUMNS FROM LOCATIONS TABLE 
    STREET_ADDRESS
    CITY
    STATE_PROVINCE
*/
SELECT STREET_ADDRESS, CITY, STATE_PROVINCE
FROM LOCATIONS ;


-- RESTRICTING THE ROW WITH CONDITION 
-- WHERE CLAUSE CAN BE USED AFTER THE FROM TABLENAME 
-- TO THE RESTRICT THE RESULT ACCORDING TO CERTAIN CONDITION 

-- GET ALL THE EMPLOYEE INFORMATION IF THEIR SALARY IS MORE THAN 10000 
SELECT * FROM EMPLOYEES 
WHERE SALARY > 10000 ;

-- WHAT ABOUT STRING 
-- FIND OUT FIRST NAME AND LAST NAME OF EMPLOYEES 
--- WITH FIRST_NAME ALEXANDER 

-- Single quote is used for String values
SELECT FIRST_NAME ,LAST_NAME 
FROM EMPLOYEES
WHERE FIRST_NAME = 'Alexander'  ; 
-- command is not case sensitive but THE DATA IS CASE SENSITIVE 

-- TASK 4 : SELECT ALL DEPARTMENTS INFO FROM DEPARTMENTS TABLE 
            -- NOT INCLUDING THE LOCATION ID OF 1700
-- > ,  >=  , < , <=  ARE ALSO AVAILABLE 

-- LOCAGICAL OPERATOR  AND  OR 

-- FIND OUT ALL EMPLOYEES WITH SALARY BETWEEN 8000, 12000

SELECT * 
FROM EMPLOYEES 
WHERE SALARY >= 8000 AND SALARY<=12000 ; 

-- FIND OUT EMPLOYEE_ID, FIRST_NAME , SALARY WITH SALARY  OVER 12000, AND LESS THAN 6000

SELECT EMPLOYEE_ID, FIRST_NAME , SALARY
FROM EMPLOYEES 
WHERE SALARY >= 12000 OR SALARY<= 6000 ; 

-- DIFFERENT APPROACH 
-- FIND OUT ALL EMPLOYEES WITH SALARY BETWEEN 8000, 12000
SELECT * FROM EMPLOYEES 
WHERE SALARY BETWEEN 8000 AND 12000 ;
