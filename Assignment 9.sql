Use Assignment

create table Product
(PID int Primary Key,
Pname Varchar(20),
City Varchar(20) not null,
Quantity int not null,
SalesUnit int not null )


INSERT INTO Product VALUES
(1,'Laptop','Ahmedabad',25,15),
(2,'Smartphone','Vadodara',40,12),
(3,'Tablet','Surat',18,8),
(4,'Monitor','Mumbai',35,14),
(5,'Keyboard','Vadodara',10,6),
(6,'Mouse','Pune',5,4),
(7,'Printer','Ahmedabad',30,11),
(8,'Speaker','Surat',28,9),
(9,'Camera','Mumbai',15,7),
(10,'Laptop','Delhi',45,18),
(11,'Hard Disk','Vadodara',22,10),
(12,'SSD','Pune',50,20),
(13,'Power Bank','Surat',0,5),
(14,'Headphones','Mumbai',12,8),
(15,'Charger','Ahmedabad',8,3),
(16,'Smartwatch','Vadodara',27,13),
(17,'Projector','Delhi',55,16),
(18,'Router','Pune',20,9),
(19,'Webcam','Surat',14,6),
(20,'Microphone','Mumbai',33,12)

select * from Product

-- 1. Find all products that have a Quantity greater than the average quantity of all products. 
select PID, Pname, Quantity from Product
where Quantity >
(select avg(Quantity) from Product)

-- 2. Display the ProductName of products sold in the same city as 'Laptop'. 
select Pname from product
where City = 
(select PID, Pname from Product
where Pname = 'Laptop')

--3. Find the details of the products with the maximum Quantity. 
select * from Product
where Quantity =
(select max(Quantity) from Product)

-- 4. List products whose salesUnit is higher than the salesUnit of ProductID 5. 
select * from Product
where SalesUnit > 
(select SalesUnit from Product
where PID = 5)

-- 5. Find products that have a lower Quantity than the minimum Quantity found in 'Vadodara'. 
select  * from Product
where Quantity <
(select min(Quantity) from Product
where city = 'Vadodara')

-- 6. Display products whose salesUnit is greater than the average salesUnit of products in 'Mumbai'. 
select * from Product
where salesunit >
(select avg(salesunit) from Product
where city = 'Mumbai')

-- 7. Find the product name with the lowest salesUnit. 
select PID, Pname from Product
where SalesUnit = (select min(SalesUnit) from Product)


-- 8. List all products sold in cities that have more than 50 total Quantity across all their products.
Select * from Product
where City in 
(select City from Product
group by City
having sum(Quantity) > 50)

-- 9. Show products whose Quantity is exactly equal to the salesUnit of 'Smartphone'. 
select * from Product
where Quantity =
(select SalesUnit from Product
where Pname = 'Smartphone')

-- 10. Find the city which has the product with the highest salesUnit. 
Select city from product
where =
(Select Max(SalesUnit) from product)

(IN, ALL, ANY & Correlated) 
-- 11. Find all products sold in cities where at least one product has a Quantity of zero. 
select * from Product
where city in
(select city from Product
where Quantity = 0)

-- 12. List products whose salesUnit is greater than the salesUnit of all products in 'Surat'.where Quantity > 50
Select * from Product
Where SalesUnit > ALL
(Select SalesUNit from Product where City = 'Surat')

-- 13. Find products that belong to cities where the average salesUnit is greater than 10. 
Select * from product
Where City IN
(Select city from product
group by city
havning Avg(SalesUnit) > 10)

-- 14. Display products that have a Quantity greater than any product's Quantity in 'Pune'. 
select * from Product
where Quantity > ALL
(select Quantity from Product
where City = 'Pune')

-- 15. Find all products whose ProductName is the same as any product sold in 'Ahmedabad'. 
select * from Product
where Pname = ANY
(select Pname from Product
where City = 'Ahmebabad')

-- 16. Select products where the Quantity is greater than the average Quantity of their own city. 
select * from Product
where Quantity >
(select avg(Quantity) from Product)

-- 17. Find cities where the total salesUnit is higher than the total salesUnit of 'Vadodara'.
select * from Product
group by City
having sum(salesunit) >
(select sum(SalesUnit) from Product
where City = 'Vadodara')

-- 18. List products that are sold in the city that has the maximum variety (count) of products. 
select * from Product
where city =
(select top 1 City from Product
group by city 
order by count(Pname) desc )

-- 19. Find the second highest Quantity from the Product table using a subquery. 
select * from Product
where Quantity =
(select max(Quantity) from Product
where Quantity = 
(select max(Quantity) from Product))

-- 20. Display the ProductName and a calculated column showing the difference between its Quantity and the global average Quantity
select Pname, Quantity -
(select avg(quantity) as difference from Product)
