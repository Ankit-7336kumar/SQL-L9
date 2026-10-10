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
 
 -- like opreator 
 
 select * from city where name like 'ka%'; -- ka se suru ho name 
 
  select * from city where name like '%ka'; -- ka pr khtm ho word 
  
   select * from city where name like '%ka%';  -- ka khi bhi aata ho word me 
   
 select * from city where name like 'durg__%';  
 
select * from city where name like '___A%';  -- 4th ch a h 

select * from city where name like '_t%';  -- 2nd ch t ho 

select * from city where name like '%g_';  -- 2nd last ch g h 

select * from city where name like '____%'; -- minium 4 ch ho 

select * from city where name like '%a_a%';  -- 2 a ch ho seprate with a ch 

select * from city where name like '%s%s%';  -- 2 s ch ho 

-- character

select name, upper(name) from city; 

SELECT name, concat(name,' ', 'city') from city;  -- concat 2 string ko add krna 

select * from city where district like concat('%', 'holland', '%');  

use world; 

select name , substr(name,3 ) from city;  

select name , substr(name,3 ), substr(name,1,3) from city;  

select name, lpad(name,7, '#') from city;

select 6.98, round(6.46);

select round(6.69,1), round(6.74,1);  --  1 decimal placle 7 tk 

select round(6.73, 2);

select round(26.78, -1);   -- -1 place tk me 6 ko change krege 

select round(143.78, -2), round(167.23,-2);  --  -2 place tk me 43 or 67 ko change krege  

select round(143.78, -3), round(767.23,-3);  --  -3 place tk me 143 or 767 ko change krege  

select round(143.78, -3), truncate(767.23,1);  

select now();

select adddate( now(), -3); 

select now (), adddate( now(), interval 1 week); 

select now(), extract( year from now() );

select datediff( current_date(), '2026-10-09'); -- 2 date le kr difference nikalna 

select now(), date_format(now(), '%y %m' );  

-- multi row functions 

use world; 

select max(population) from city;

select min(population) from city;

select sum(population) from city;

select count(population) from city;

select avg(population) , sum(population)/count(population) from city; 

select count(name) from city;  -- 4079

select count(distinct name ) from city;  -- 3998 

select count(name)from city where district='noord-holland';  

-- group by ( ) function = similar values ko ek sath ek group bnata h 

select  district from city group by district; 

select  district,  count(name) from city group by district;  

select continent from country;

select count(distinct continent) from country;

select continent, count(name) from country group by continent;

select name , count(name) from country group by name ;  

select continent, count(name) from country group by continent; 

select continent, count(name) from country group by continent
having count(name); 

-- practice in sql zoo chapter 5 . 







                                                                                                                                                








 














 
 
 
  
   


 
 


     



