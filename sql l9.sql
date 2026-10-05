show databases;
use world;

show tables;
select * from city; -- world , city table 

select * from world.city;
 
select name,id, id*100 from city;

-- case insensitive
select * from CITY;

SELECT * 
      from 
           city;
           
-- filter krne k lea = where clause 
select * from city where name = 'haag';           

select * from city where id>4;            
-- between 

select * from city where id between 4 and 10;       

select * from city where id in (4 ,10);  

-- logical opretiors 

select * from city where id=5 or id=2;       

select * from city where id<5 and  id>2;  

select * from city where id=5 and id=2;       
     
 select * from city where id<7  or id=10 and id>4;       
    
 select * from city where (id<7  or id=10) and id>4;       
 
 


     



