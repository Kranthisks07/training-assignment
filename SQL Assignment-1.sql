create database SQLAssignment
use SQLAssignment

create table DEPT
(
DEPTNO int primary key,
DNAME varchar(20)not null,
LOC varchar(15)
)
select * from DEPT
insert into DEPT values (10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30 ,'SALES','CHICAGO' ),
(40,'OPERATIONS','BOSTON')

create table EMP
(
EMPNO int primary key,
ENAME varchar(30) not null,
JOB varchar(15),
MGR int,
HIREDATE DATE,
SAL float,
COMM float,
DEPTNO int foreign key references DEPT(DEPTNO) -- relatating fk with pk
)
select * from EMP

insert into EMP values
(7369, 'SMITH','CLERK',7902,'17-DEC-80',800,NULL,20),
(7499,'ALLEN' ,'SALESMAN',7698,'20-FEB-81',1600 ,300,30),
(7521,'WARD','SALESMAN',7698,'22-FEB-81',1250,500,30),
(7566,'JONES','MANAGER',7839,'02-APR-81',2975,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'28-SEP-81',1250,1400,30),
(7698,'BLAKE','MANAGER',7839,'01-MAY-81',2850,NULL,30),
(7782,'CLARK' ,'MANAGER',7839,'09-JUN-81',2450,NULL,10),
(7788,'SCOTT','ANALYST',7566,'19-APR-87',3000,NULL,20),
(7839,'KING' ,'PRESIDENT',NULL ,'17-NOV-81' ,5000,NULL,10),
(7844,'TURNER','SALESMAN',7698,'08-SEP-81',1500,0,30),
(7876,'ADAMS','CLERK',7788,'23-MAY-87',1100,NULL,20),
(7900,'JAMES','CLERK',7698,'03-DEC-81',950,NULL,30),
(7902,'FORD','ANALYST',7566,'03-DEC-81',3000,NULL,20),
(7934,'MILLER','CLERK',7782 ,'23-JAN-82',1300,NULL,10)

--1. List all employees whose name begins with 'A'.

select * from EMP
where ENAME like 'A%'

--2. Select all those employees who don't have a manager.

select *
from EMP
where MGR is null

--3. List employee name, number and salary for those employees who earn in the range 1200 to 1400.

Select ENAME,EMPNO,SAL
from EMP
where SAL BETWEEN 1201 AND 1399

--4.Give all the employees in the RESEARCH department a 10% pay rise. Verify that this has been done by listing all their details before and after the rise.

select SAL+SAL*10/100 as "10% PAYRISE"
from EMP
Where DEPTNO in (select DEPTNO
from DEPT
where DNAME='RESEARCH')

--5. Find the number of CLERKS employed. Give it a descriptive heading.

select count(*) as " NUMBER OF CLERKS"
from EMP
where JOB='CLERK'

--6. Find the average salary for each job type and the number of people employed in each job.

select avg(SAL) as "AVG SAL",count(*) as "Number Of People Employed In Each Job"
from EMP
group by JOB

--7. List the employees with the lowest and highest salary.

select Max(SAL) as "MAX SAL" ,MIN(SAL) as "MIN SAL"
FROM EMP

--8. List full details of departments that don't have any employees.

select * from DEPT
where DEPTNO
not in (select DEPTNO from EMP)
 
--9. Get the names and salaries of all the analysts earning more than 1200 who are based in department 20. Sort the answer by ascending order of name.

select ENAME,SAL
from EMP
where JOB ='ANALYST' AND DEPTNO=20
order by ENAME asc

--10. For each department, list its name and number together with the total salary paid to employees in that department.

select JOB ,DEPTNO, SUM(SAL) as "TOTAL SAL"
from EMP
group by JOB,DEPTNO

--11. Find out salary of both MILLER and SMITH.

select SAL
from EMP
where ENAME IN('MILLER','SMITH')

--12. Find out the names of the employees whose name begin with �A� or �M�.

select ENAME
from EMP
where ENAME LIKE 'A%' OR ENAME LIKE 'M%'

--13. Compute yearly salary of SMITH.

select SAL*12 as "YEAR SAL"
from EMP
where ENAME='SMITH'

--14. List the name and salary for all employees whose salary is not in the range of 1500 and 2850.

select ENAME ,SAL
from EMP
where SAL between 1500 and 2850



