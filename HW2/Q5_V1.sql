REM   Script: Q5.V1
REM   csci585 hw2 q5 v1

create table MENU( --create a stable for storing data by Chef and Dish as PK 
 Chef varchar2(50) not null,  --Oracle Live
 Dish varchar2(50) not null, 
 primary key (Chef, Dish) 
);

insert into MENU(Chef, Dish) --insertion of data 
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

select distinct m1.Chef --general idea is to narrow down the candidates step by step 
from MENU m1 
where m1.Dish in 'Creme brulee'--1.find chefs who can make Creme brulee 
and exists (select m1.Chef 
            from MENU m2 
            where m2.Dish in 'Apple pie' 
            and m1.Chef = m2.Chef --Within the range of requirement 1, find chefs satisfis requirement 2 
            and exists (select m2.Chef 
                        from MENU m3 
                        where m3.Dish in 'Upside down pineapple cake' --For those who fulfill previous requirements, see if his can cook the third dish 
                        and m2.Chef = m3.Chef));

