-- ASSIGNMENT 2 --

use assignment

create table employee2
(
EID int,
Ename varchar(15),
Edepartment varchar(10),
Esalary money,
Ebonus int,
Eexperience int,
Ecity varchar(10))

insert into employee2 values
(101, 'ramesh', 'cloud', 35000, 5000, 5, 'pune'),
(102, 'suresh', 'IT', 65000, 10000, 10, 'vadodara'),
(103, 'naresh', 'HR', 55000, 8000, 7, 'indore'),
(104, 'ankit', 'finance', 45000, 2000, 8, 'jaipur'),
(105, 'rajat', 'AI', 75000, 7000, 12, 'haryana'),
(106, 'ramesh', 'IT', 55000, 8000, 7, 'mumbai'),
(107, 'ramesh', 'cloud', 55000, 9000, 9, 'delhi')

--1. Write a query to display all employees whose salary is greater than 50,000.
select * from employee2
where Esalary>50000

--2. Retrieve employees who work in the IT department and have more than 5 years of experience.
select * from employee2
where Edepartment = 'IT'
and Eexperience>5

--3. Write a query to display employees whose salary is between 45,000 and 60,000.
select * from employee2
where Esalary between 45000 and 60000

--4. Display employees whose city is either Mumbai or Delhi.
select * from employee2
where Ecity = 'mumbai' 
or Ecity = 'delhi'

--5. Write a query to display employee name along with their annual income
select Ename, (Esalary * 12) + Ebonus AS AnnualIncome from employee2;

--6. Find employees whose name starts with the letter 'A'.
select * from employee2
where Ename like 'a%'

--7. Find the highest salary among all employees.
select max(Esalary) as HighestSalary
from employee2

--8. Find the total bonus paid to employees in the IT department.
select sum(Ebonus) as TotalBonus
from employee2
where Edepartment = 'IT'

--9. Display the minimum and maximum experience of employees.
select min(Eexperience) as LowestExperience,
max(Eexperience) as HigestExperience
from employee2

--10.Count the number of employees in each department.
select Edepartment,count(*) as TotalEmployees
from employee2
group by Edepartment

--11. Find the total bonus paid to employees in the IT department.
select sum(Ebonus) as TotalBonus
from employee2
where Edepartment = 'IT'

--12. Write an SQL statement to add a new column named Email of type VARCHAR(100) to the Employees table.
alter table employee2
add Email varchar(100);

--13. Write an SQL statement to modify the Salary column so that it becomes DECIMAL(10,2).
alter table employee2
alter column Esalary decimal(10,2)

--14. Write an SQL statement to drop the Bonus column from the Employees table.
alter table employee2
drop column Ebonus 
select * from employee2
