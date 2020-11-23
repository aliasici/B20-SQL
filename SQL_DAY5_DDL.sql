
-- DDL -- Data Definition Language 
-- is for creating/updating/deleting Database objects like Tables ... 

--- SUPERHEROS
-- HERO_ID as number 
-- Name    as (varchar2) STRING 
-- Power   as (varchar2) string 
-- CostumeColor as  as (varchar2) string 
-- Company as (varchar2) string 


SELECT * FROM SUPER_HEROS ; 
-- This is the query for inserting data into our SUPER_HEROS table
INSERT INTO super_heros (hero_id,name,power,costum_color,company)
                 VALUES (103,   'Hulk','Anger','Green', 'Marvel') ;

INSERT INTO super_heros (hero_id,name,power,costum_color,company)
                 VALUES (104,   'Batman','Intelligence','Black', 'DC') ;
INSERT INTO super_heros (hero_id,name,power,costum_color,company)
                 VALUES (105,   'Capitan Marvel','Fly','Golden', 'Marvel') ;

-- update hulk power to --> super size 
UPDATE SUPER_HEROS
SET
    POWER = 'SUPER SIZE'
WHERE
    name = 'Hulk' ;

