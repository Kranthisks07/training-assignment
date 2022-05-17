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


-------- 1) Retive a list of MANGERS  ---------

select * from EMP
where JOB = 'MANAGER'


------- 2) find out the salary of both MILLER and SMITH ----------------

select  SAL
from EMP
where ENAME in('MILLER','SMITH')


-- 3)Find out the names and salaries of all employees earning more than 1000 per month--

select ENAME,SAL
from EMP
where SAL >=1000


-- 4) Display the names and salaries of all employees except JAMES.

select ENAME,SAL
from EMP
where ENAME != 'JAMES'

-- 5) Find out the details of employees whose names begin with ‘S’.

select ENAME
from EMP
where ENAME like 'S%'


--6) Find out the names of all employees that have ‘A’ anywhere in their name.

select ENAME
from EMP
where ENAME like '%A%'

-- 7) Find out the names of all employees that have ‘L’ as their third character in their name.

select ENAME
from EMP
where ENAME like '__L%'




----- 8) Find out the names of the employees whose name begin with ‘A’ or ‘M’.

select ENAME
from EMP
where ENAME like 'A%' or  ENAME like 'M%'

---- 9) Compute yearly salary of SMITH.

select SAL*12 as "YEARLY SALARY OF SMITH"
from EMP
where ENAME ='SMITH'


--- 10)  Compute daily salary of JONES. 

select SAL/30 as "DAILY SALARY OF JONES"
from EMP
where ENAME ='JONES'


--- 11) Calculate the total monthly salary of all employees. 

select SUM(SAL) as "TOTAL MONTHLY SALARY OF ALL EMPLOYESS"
from EMP

--- 12) Print the average annual salary.

select AVG(SAL*12) as "AVG ANNUAL SAL"
from EMP


--- 13)  Select the name, job, salary, department number of all employees except SALESMAN from department number 30. 

select ENAME,JOB,SAL,DEPTNO
from EMP
where JOB != 'SALESMAN' and DEPTNO = 30


--- 14) List unique departments of the EMP table.

select DEPTNO
from EMP
group by DEPTNO


--- 15) List the name and salary of employees who earn more than 1500 and are in department 10 or 30. Label the columns Employee and Monthly Salary respectively.

select ENAME as Employee,SAL as Salary
from EMP
where SAL > 1500 and DEPTNO in(10,30)
