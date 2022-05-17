create database SQLCODEBASED


--2)---Write a query to display your age in days----

SELECT DATEDIFF(dd,'1999/10/15','2022/05/17') AS DateDiff;


3)-- question answer

create table EMP8
(
EMPid int primary key,
ENAME varchar(20)not null,
Salary int,
Depno int)

select * from EMP8
insert into EMP8 values (101,'KRANTHI',6000,10),
(102,'PAVANI',10000,20),
(103 ,'BLESSY',40000,'30' )


--1)

select Depno
from EMP8
where EMPid in(101,102,103)


--2)

select Salary
from EMP8
where Salary between 5000 and 50000



