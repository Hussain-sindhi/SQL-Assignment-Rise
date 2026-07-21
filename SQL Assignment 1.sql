-- create and use of database
create database assignment
use assignment

--create table
create table Employee(EID int,Ename varchar(20),Eage int, Esalary money, Edepartment varchar(20))


insert into Employee values
(101,'rakesh',25,20000,'HR'),
(102,'suresh',23,22000,'HR'),
(103,'naresh',24,24000,'cloud')

-- Literal SELECT Statement Practice Problems

--1.Execute a literal select statement that returns your name
select Ename from Employee
where Eage = 25
--2.write the literal select statement thats evaluates the product of 7 and 4
select 7*4 as product

--3.Write the literal select statement that takes the difference of 7 and 4 then multiplies that difference by 8.
select (7-4)*8

--4.Write a literal select statement that returns the phrase “Brewster’s SQL Training Class”. (Hint: note the single apostrophe in the string).
select 'Brewster''s SQL Training Class'

--5.Execute a literal SELECT statement that returns the phrase “Day 1 of Training” in one column and the result of 5*3 in another column
select 'Day 1 of Training',
5*3 

-- Insert/Update/Delete

--1. Insert a new employee record with all details provided directly
insert into Employee values
(104,'Ankit',21,25000,'finance')
--2. Add multiple new team members to the HR department at once.
insert into Employee values
(105,'rajat',22,25000,'cloud'),
(106,'meet',20,23000,'AI'),
(107,'preet',22,19000,'finance')

--3. Register an employee who hasn't been assigned a salary yet
insert into Employee(EID, Ename, Eage) values 
(107,'somya',21)

--4. Update the salary to 85,000 for everyone working in the 'Cloud' department
update Employee
set Esalary = 85000
where Edepartment = 'cloud'

--5. Change both the department and salary for a specific employee by name.
update Employee
set Edepartment = 'cloud', Esalary = 85000
where Ename = 'rakesh'

--6. Give a flat 10% appraisal boost to employee working in AI department.
update Employee
set Esalary = Esalary*1.10
where Edepartment = 'AI'

--7. Assign an initial entry-level salary of 30,000 to anyone whose salary column is completely blank (NULL).
update Employee
set Esalary = 30000
where Esalary is NULL

--8. Remove a specific employee from the system using their unique ID.
delete from Employee
where EID = 107

--9. Remove all records belonging to a department that has been completely shut down.
delete from Employee
where Edepartment = 'finance'

--10.Drop records of any employee earning less than 20,000 in the Finance division
delete from Employee
where Esalary<20000 
and Edepartment = 'finance';
select * from Employee