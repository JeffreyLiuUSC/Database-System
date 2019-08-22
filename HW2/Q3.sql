REM   Script: OracleLiveQ3
REM   cs585 hw2 q3

create table PROJECT( --Oracle Live
ProjectID varchar2(20) not null, 
Step number, 
Status varchar2(20), 
primary key(ProjectID, Step) 
);

insert into PROJECT(ProjectID,Step,Status) 
VALUES  ('P100', '0', 'C');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P100', '1', 'W');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P100', '2', 'W');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P201', '0', 'C');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P201', '1', 'C');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P333', '0', 'W');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P333', '1', 'W');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P333', '2', 'W');

insert into PROJECT(ProjectID,Step,Status) 
VALUES ('P333', '3', 'W');

select ProjectID 
from PROJECT  p1 
where Step = 0  
and Status = 'C' 
and 'W' = all( select Status 
               from PROJECT  p2 
               where Step <> 0 
               and p1.ProjectID = p2.ProjectID);

