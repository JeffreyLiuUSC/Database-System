REM   Script: OracleLiveQ2
REM   cs585 hw2 q2

create table ENROLLMENT(  --Oracle Live
StudentID number,  
ClassName varchar2(20) not null,  
Grade varchar2(20) not null,  
constraint pk_enrollment primary key (StudentID,ClassName)  
);

insert into ENROLLMENT(StudentID, ClassName,Grade) 
values('123', 'ART123','A');

insert into ENROLLMENT(StudentID, ClassName,Grade) 
values('123', 'BUS456','B');

insert into ENROLLMENT(StudentID, ClassName,Grade) 
values('666', 'REL100','D');

insert into ENROLLMENT(StudentID, ClassName,Grade) 
values('666', 'ECO966','A');

insert into ENROLLMENT(StudentID, ClassName,Grade) 
values('666', 'BUS456','B');

insert into ENROLLMENT(StudentID, ClassName,Grade) 
values('345', 'BUS456','A');

insert into ENROLLMENT(StudentID, ClassName,Grade) 
values('345', 'ECO966','F');

select ClassName, count(ClassName) as Total 
from enrollment 
group by ClassName 
order by Total 
;

