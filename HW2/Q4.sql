REM   Script: OracleLiveQ4
REM   cs585 hw2 q4

create table MAIL( --Oracle Live
Name varchar2(20) not null, 
Address varchar2(20) not null, 
ID number, 
SameFam varchar2(20), 
primary key (ID) 
);

insert into MAIL (Name, Address, ID, SameFam) 
values('Alice', 'A', 10, 'NULL');

insert into MAIL (Name, Address, ID, SameFam) 
values('Bob', 'B', 15, 'NULL');

insert into MAIL (Name, Address, ID, SameFam) 
values('Carmen', 'C', 22, 'NULL');

insert into MAIL (Name, Address, ID, SameFam) 
values('Diego', 'A', 9, '10');

insert into MAIL (Name, Address, ID, SameFam) 
values('Ella', 'B', 3, '15');

insert into MAIL (Name, Address, ID, SameFam) 
values('Farkhad', 'd', 11, 'NULL');

delete  
from MAIL m1 
where m1.SameFam = 'NULL' 
AND m1.ID = (select SameFam 
             from MAIL m2 
             where m2.SameFam = m1.ID 
             and m2.SameFam <> 'NULL');

select * 
from MAIL;

