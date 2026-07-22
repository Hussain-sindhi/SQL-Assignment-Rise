-- ASSIGNMENT 3 --

use assignment

create table emp1
(
EID int primary key,
Ename varchar(20),
Department varchar(20),
Salary money)

insert into emp1 values
(101,'Ramesh','IT',50000),
(102,'Suresh','IT',70000),
(103,'Naresh','HR',45000),
(104,'Ankit','Finance',55000),
(105,'Rajat','Cloud',80000),
(106,'Mahesh','Cloud',65000),
(107,'Jayesh','Cloud',60000),
(108,'Deepak','HR',50000),
(109,'Amit','AI',90000),
(110,'Karan','Finance',60000),
(111,'Rohit','IT',65000),
(112,'Vikas','Marketing',40000)

select * from emp1

--1. Write a query to display each Department and the total number of employees working in that department from the Employee table.
select Department,count(*) as TotalEmployee
from emp1
group by department 


--2. Write a query to find the Department, the highest salary (MAX), and the average salary (AVG) for each department.
select department, max(salary) as highest,
avg(salary) as average
from emp1
group by Department

--4.Write a query to find the minimum salary in each Department

select department, min(salary)as minSalary
from emp1
group by Department

--5.Write a query to show departments that have more than 2 employees
select department, count(*) as totaldepartment
from emp1
group by Department
having count(*)>2

--6. Write a query to show departments where the total salary payout is greater than 100,000
select department, sum(salary) 
from emp1
group by Department
having sum(Salary)>100000

--7. Write a query to find departments where the average salary is above 60,000
select department, avg(salary)
from emp1
group by Department
having avg(Salary)>60000

--8. Write a query to show departments that have exactly 1 employee
select department, count(*)
from emp1
group by Department
having count(*)=1

--9. Write a query to list all employees sorted by Salary from highest to lowest
select * from emp1
order by salary desc 

--10.Write a query to list all employees sorted by Ename in alphabetical orde
select * from emp1
order by Ename 

--11.Write a query to list all employees sorted by Department alphabetically, and then by Ename alphabetically
select * from emp1
order by Department, Ename