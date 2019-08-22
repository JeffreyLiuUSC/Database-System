REM   Script: OracleLiveQ5V3
REM   cs585 hw2 q5v3

create table MENU( --create table  Oracle Live
 Chef varchar2(50) not null, 
 Dish varchar2(50) not null, 
 primary key (Chef, Dish) 
);

insert into MENU(Chef, Dish)--insert data 
values('A', 'Mint chocolate brownie');

insert into MENU(Chef, Dish) 
values('B', 'Upside down pineapple cake');

insert into MENU(Chef, Dish) 
values('B', 'Creme brulee');

insert into MENU(Chef, Dish) 
values('B', 'Mint chocolate brownie');

insert into MENU(Chef, Dish) 
values('C', 'Upside down pineapple cake');

insert into MENU(Chef, Dish) 
values('C', 'Creme brulee');

insert into MENU(Chef, Dish) 
values('D', 'Apple pie');

insert into MENU(Chef, Dish) 
values('D', 'Upside down pineapple cake');

insert into MENU(Chef, Dish) 
values('D', 'Creme brulee');

insert into MENU(Chef, Dish) 
values('E', 'Apple pie');

insert into MENU(Chef, Dish) 
values('E', 'Upside down pineapple cake');

insert into MENU(Chef, Dish) 
values('E', 'Creme brulee');

insert into MENU(Chef, Dish) 
values('E', 'Bananas Foster');

select Chef --find those who satisfy the requirement 
from MENU 
where dish = 'Apple pie' 
intersect(select Chef --the requirements consist of 3 parts, each dish represents a part, find the intersection of it 
from MENU 
where dish = 'Upside down pineapple cake' 
intersect(select Chef 
from MENU 
where dish = 'Creme brulee') 
);

