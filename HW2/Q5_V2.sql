REM   Script: OracleLiveQ5_V2
REM   csci585 hw2 q5 v2

create table MENU( --Create table with Chef as PK and all dishes stored in seperate attributes 
 Chef varchar2(50) not null,  --Oracle Live
 Dish1 varchar2(50) not null,  
 Dish2 varchar2(50) not null,  
 Dish3 varchar2(50) not null,  
 Dish4 varchar2(50) not null,  
 primary key (Chef)  
);

insert into MENU(Chef, Dish1,Dish2,Dish3,Dish4) --insert data 
values('A', 'Mint chocolate brownie','NULL','NULL','NULL');

insert into MENU(Chef, Dish1,Dish2,Dish3,Dish4)  
values('B', 'Upside down pineapple cake','Creme brulee','Mint chocolate brownie','NULL');

insert into MENU(Chef, Dish1,Dish2,Dish3,Dish4)  
values('C', 'Upside down pineapple cake','Creme brulee','NULL','NULL');

insert into MENU(Chef, Dish1,Dish2,Dish3,Dish4)  
values('D', 'Apple pie','Upside down pineapple cake','Creme brulee','NULL');

insert into MENU(Chef, Dish1,Dish2,Dish3,Dish4)  
values('E', 'Apple pie','Upside down pineapple cake','Creme brulee','Bananas Foster');

select Chef --Find Chefs who are able to make 3 different dishes by 3 inequality statements and ensure those 3 different dishes within the required sorts of dishessorts of dishes 
from MENU  
where Dish1 = any('Apple pie','Upside down pineapple cake','Creme brulee') --fullfill the requirements 
and Dish2 = any('Apple pie','Upside down pineapple cake','Creme brulee')  
and Dish3 = any('Apple pie','Upside down pineapple cake','Creme brulee') 
and Dish1 <> Dish2 --ensure the inequality 
and Dish2 <> Dish3 
and Dish1 <> Dish3;

