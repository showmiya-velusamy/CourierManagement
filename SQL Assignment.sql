CREATE TABLE userTable (
			UserID INT PRIMARY KEY, 
			Name VARCHAR(255), 
			Email VARCHAR(255) UNIQUE, 
			Password VARCHAR(255), 
			ContactNumber VARCHAR(20), 
			Address TEXT 
); 

INSERT INTO userTable (UserID, Name, Email, Password, ContactNumber, Address)
VALUES
    (1, 'Matthew Anderson', 'matthew@example.com', 'password1', '1234567890', '123 Main St, City'),
    (2, 'J Mary Elizabeth', 'marry@example.com', 'password2', '0987654321', '456 Elm St, Town'),
    (3, 'Riley Addison', 'riley@example.com', 'password3', '5551234567', '123 Main St, City'),
    (4, 'Daniel Garcia', 'dany@example.com', 'password4', '9876543210', '456 Elm St, Town'),
    (5, 'Sophia Bennett', 'sophia@example.com', 'password5', '7778889999', '654 Birch St, Suburb'),
    (6, 'Samantha Thompson', 'sam@example.com', 'password6', '1112223333', '987 Cedar St, Countryside'),
    (7, 'Jim Brown', 'jim@example.com', 'password7', '4445556666', '753 Maple St, Rural'),
    (8, 'Lauren Turner', 'lauren@example.com', 'password8', '6667778888', '159 Walnut St, Coastal'),
    (9, 'Jennifer White', 'jenny@example.com', 'password9', '2223334444', '246 Pineapple St, Island'),
    (10, 'Alexander Lee', 'alex@example.com', 'password10', '8889990000', '369 Peach St, Peninsula');



CREATE TABLE Courier (
CourierID INT PRIMARY KEY, 
UserID INT,
SenderName VARCHAR(255), 
SenderAddress TEXT, 
ReceiverName VARCHAR(255), 
ReceiverAddress TEXT, 
Weight DECIMAL(5, 2), 
Status VARCHAR(50), 
TrackingNumber VARCHAR(20) UNIQUE, 
DeliveryDate DATE,
FOREIGN KEY (UserID) REFERENCES UserTable(UserID)
);

INSERT INTO Courier (CourierID,UserId, SenderName, SenderAddress, ReceiverName, ReceiverAddress, Weight, Status, TrackingNumber, DeliveryDate)
VALUES
    (1,1, 'Matthew Anderson', '123 Main St, City', 'Jennifer White', '789 Oak St, Village', 2.5, 'In Transit', '1234567890', '2024-04-25'),
    (2, 2, 'Mary Elizabeth', '456 Elm St, Town', 'Alexander Lee', '321 Pine St, Hamlet', 1.8, 'Delivered', '2345678901', '2024-04-24'),
    (3,3, 'Riley Addison', '123 Main St, City', 'Jim Brown', '654 Birch St, Suburb', 3.1, 'Pending', '3456789012', '2024-04-23'),
    (4,4, 'Daniel Garcia', '456 Elm St, Town', 'Lauren Turner', '987 Cedar St, Countryside', 1.5, 'In Transit', '4567890123', '2024-04-22'),
    (5,5, 'Sophia Bennett', '654 Birch St, Suburb', 'Riley Addison', '753 Maple St, Rural', 2.2, 'Delivered', '5678901234', '2024-04-23'),
    (6,6, 'Samantha Thompson', '987 Cedar St, Countryside', 'Mary Elizabeth', '159 Walnut St, Coastal', 4.0, 'Pending', '6789012345', '2024-04-27'),
    (7,7, 'Mary Elizabeth', '753 Maple St, Rural', 'Sophia Bennett', '246 Pineapple St, Island', 1.9, 'In Transit', '7890123456', '2024-04-20'),
    (8,8, 'Lauren Turner', '159 Walnut St, Coastal', 'Matthew Anderson', '369 Peach St, Peninsula', 2.8, 'Pending', '8901234567', '2024-04-21'),
    (9,9, 'Jennifer White', '246 Pineapple St, Island', 'Daniel Garcia', '123 Main St, City', 3.3, 'In Transit', '9012345678', '2024-04-25'),
    (10,10, 'Alexander Lee', '369 Peach St, Peninsula', 'Samantha Thompson', '456 Elm St, Town', 2.0, 'Delivered', '0123456789', '2024-04-22');


CREATE TABLE CourierServices (
ServiceID INT PRIMARY KEY, 
ServiceName VARCHAR(100), 
Cost DECIMAL(8, 2)
);

INSERT INTO CourierServices (ServiceID, ServiceName, Cost)
VALUES
    (1, 'Standard', 20.00),
    (2, 'Express', 30.00),
    (3, 'Overnight', 200.00),
    (4, 'International', 500.00),
    (5, 'Same Day', 100.00),
    (6, 'Next Day', 150.00),
    (7, 'Two-Day', 25.00),
    (8, 'Ground', 12.00),
    (9, 'Priority', 35.00),
    (10, 'Economy', 8.00);


CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY IDENTITY(1,1), 
Name VARCHAR(255), 
Email VARCHAR(255) UNIQUE, 
ContactNumber VARCHAR(20), 
Role VARCHAR(50), 
Salary DECIMAL(10, 2)
);

INSERT INTO Employee (Name, Email, ContactNumber, Role, Salary)
VALUES
    ( 'Clara Wilson', 'clara@example.com', '1234567890', 'Manager', 50000.00),
    ('Robert Brown', 'robert@example.com', '0987654321', 'Clerk', 30000.00),
    ('John Smith', 'alice@example.com', '5551234567', 'Driver', 40000.00),
    ('Jade William', 'jade@example.com', '9876543210', 'Supervisor', 45000.00),
    ( 'Emilia Harrison', 'emilia@example.com', '7778889999', 'Receptionist', 28000.00),
    ('Mike Jordan', 'mike@example.com', '1112223333', 'Courier', 35000.00),
    ( 'Santner Hood', 'santner@example.com', '4445556666', 'Analyst', 55000.00),
    ('Shane Watson', 'shane@example.com', '6667778888', 'Supervisor', 60000.00),
    ( 'Oliver Right', 'oliver@example.com', '2223334444', 'Courier', 52000.00),
    ( 'Peter Knight', 'peter@example.com', '8889990000', 'Sales', 48000.00),
    ( 'Xavier Peterson', 'xavier@example.com', '1122334445', 'Manager', 50000.00);


CREATE TABLE Location(
LocationID INT PRIMARY KEY, 
LocationName VARCHAR(100), 
Address TEXT
); 

INSERT INTO Location (LocationID, LocationName, Address)
VALUES
    (1, 'Main Office', '123 Office St, City'),
    (2, 'Branch Office', '456 Branch St, Town'),
    (3, 'Warehouse', '789 Warehouse St, Suburb'),
    (4, 'Distribution Center', '321 Distribution St, Rural'),
    (5, 'Headquarters', '654 HQ St, Metropolitan'),
    (6, 'Storefront', '987 Store St, Downtown'),
    (7, 'Factory', '753 Factory St, Industrial'),
    (8, 'Outlet', '159 Outlet St, Commercial'),
    (9, 'Depot', '246 Depot St, Port'),
    (10, 'Station', '369 Station St, Terminal');


CREATE TABLE Payment(
PaymentID INT PRIMARY KEY, 
CourierID INT, 
LocationId INT, 
Amount DECIMAL(10, 2), 
PaymentDate DATE, 
FOREIGN KEY (CourierID) REFERENCES Courier(CourierID), 
FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

INSERT INTO Payment (PaymentID, CourierID, LocationId, Amount, PaymentDate)
VALUES
    (1, 1, 1, 50.00, '2024-04-25'),
    (2, 2, 2, 350.00, '2024-04-24'),
    (3, 3, 1, 70.00, '2024-04-23'),
    (4, 4, 4, 95.00,  '2024-04-22'),
    (5, 5, 5, 330.00, '2024-04-23'),
    (6, 6, 6, 2500.00, '2024-04-26'),
    (7, 7, 7, 40.00, '2024-04-20'),
    (8, 8, 8, 120.00, '2024-04-21'),
    (9, 9, 9, 60.00, '2024-04-25'),
    (10, 10, 10, 250.00, '2024-04-22');


CREATE TABLE EmployeeCourier (
        EmployeeID INT,
        CourierID INT,
        FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
        FOREIGN KEY (CourierID) REFERENCES Courier(CourierID)
);

INSERT INTO EmployeeCourier(EmployeeID,CourierID)
VALUES (1,4),
	   (2,5),
	   (3,8),
	   (4,9),
	   (6,10),
	   (5,6),
	   (6,3),
	   (4,2),
	   (7,1),
	   (3,7);
 
CREATE TABLE CourierServiceMapping (
        CourierID INT,
        ServiceID INT,
        FOREIGN KEY (CourierID) REFERENCES Courier(CourierID),
        FOREIGN KEY (ServiceID) REFERENCES CourierServices(ServiceID)
);
select courierid from Courier where TrackingNumber =9012345678
INSERT INTO CourierServiceMapping(CourierID,ServiceID)
VALUES(1,10),
	  (2,9),
	  (3,8),
	  (4,7),
	  (5,9),
	  (6,4),
	  (7,10),
	  (8,2),
	  (9,1),
	  (10,9);   

--1. List all customers: 

SELECT * FROM userTable;

--2. List all orders for a specific customer: 

SELECT * FROM courier
WHERE SenderName='Samantha Thompson';

--3. List all couriers: 

SELECT * FROM courier;

--4. List all packages for a specific order: 

SELECT * FROM courier
WHERE courierId=3;

--5. List all deliveries for a specific courier: 

SELECT * FROM courier
WHERE CourierID=6;

--6. List all undelivered packages: 

SELECT * FROM courier 
WHERE status NOT LIKE 'Delivered';

--7. List all packages that are scheduled for delivery today: 

SELECT * FROM courier 
WHERE DeliveryDate=getDATE();

--8. List all packages with a specific status: 

SELECT * FROM courier 
WHERE Status LIKE 'Pending';

--9. Calculate the total number of packages for each courier:

SELECT courierId, count(courierId) as No_of_packages FROM Courier
GROUP BY CourierID;

--10. Find the average delivery time for each courier:

SELECT AVG(DATEDIFF(day,getdate(),deliverydate)) AS [Average delivery time] FROM Courier
GROUP BY CourierID;

--11. List all packages with a specific weight range: 

SELECT * FROM Courier 
WHERE Weight BETWEEN 3 AND 4 ; 

--12. Retrieve employees whose names contain 'John' :

SELECT * FROM employee
WHERE name LIKE '%John%' ;

--13. Retrieve all courier records with payments greater than $50:

SELECT * FROM courier  
WHERE CourierID IN (SELECT Courierid FROM payment
                    WHERE Amount>50);


-- Task 3: GroupBy, Aggregate Functions, Having, Order By, WHERE 

--14. Find the total number of couriers handled by each employee. 

SELECT EmployeeId,COUNT(CourierID) AS [No.of couriers] FROM EmployeeCourier
GROUP BY EmployeeID

--15. Calculate the total revenue generated by each location 

SELECT LocationId, SUM(amount) AS revenue FROM Payment 
GROUP BY LocationId;

--16. Find the total number of couriers delivered to each location. 

-- total number of courier at each location
SELECT LocationId, count(courierId) AS [No_of_couriers] FROM payment
GROUP BY LocationId;


-- total number of courier delivered (status=delivered) at each location
SELECT LocationId, count(courierId) AS [No_of_couriers] FROM payment
where CourierID IN (select CourierID from Courier
		where Status='Delivered')
group by locationid;

--17. Find the courier with the highest average delivery time: 

SELECT CourierID,AVG(datediff(day,'2024-04-15',deliverydate)) as [avg_delivery_time] FROM courier
GROUP BY CourierID
ORDER BY [avg_delivery_time] DESC
OFFSET 0 ROWS
FETCH NEXT 1 ROW ONLY;

--18. Find Locations with Total Payments Less Than a Certain Amount 

SELECT LocationID,LocationName,Address FROM location 
WHERE LocationID IN(SELECT locationid FROM payment
                    GROUP BY locationId
                    HAVING SUM(amount)<150);

--19. Calculate Total Payments per Location 

SELECT locationid,sum(amount) as total_payment FROM payment
GROUP BY locationid;

--20. Retrieve couriers who have received payments totaling more than $1000 in a specific location 
--(LocationID = X): 

SELECT * FROM courier 
WHERE courierid IN (SELECT courierid FROM payment WHERE LocationId=3 
		GROUP BY CourierID
		HAVING sum(amount)>1000);

--21. Retrieve couriers who have received payments totaling more than $1000 after a certain date 
--(PaymentDate > 'YYYY-MM-DD'): 

SELECT * FROM courier 
WHERE courierid IN (SELECT courierid FROM payment WHERE PaymentDate='2024-04-26' 
		GROUP BY CourierID
		HAVING sum(amount)>1000);

--22. Retrieve locations where the total amount received is more than $5000 before a certain date 
--(PaymentDate > 'YYYY-MM-DD') 

SELECT * FROM location 
WHERE locationid IN (SELECT locationid FROM payment
		WHERE PaymentDate < '2024-04-25'
		GROUP BY LocationId
		HAVING sum(amount)>5000);


-- Task 4: Inner Join,Full Outer Join, Cross Join, Left Outer Join,Right Outer Join

--23. Retrieve Payments with Courier Information 

SELECT * FROM Payment p
INNER JOIN Courier c ON p.CourierID=c.CourierID;

--24. Retrieve Payments with Location Information 

SELECT * FROM Payment p
INNER JOIN Location l ON p.LocationId=l.LocationID;

--25. Retrieve Payments with Courier and Location Information 

SELECT * FROM payment p
INNER JOIN location l ON p.LocationId=l.LocationID
INNER JOIN Courier c ON p.CourierID=c.CourierID;

--26. List all payments with courier details 

SELECT * FROM payment p 
INNER JOIN courier c ON p.CourierID=c.CourierID;

--27. Total payments received for each courier 

SELECT courierid,SUM(Amount) as total FROM payment
GROUP BY CourierID;

--28. List payments made on a specific date

SELECT * FROM Payment 
WHERE PaymentDate='2024-04-22';

--29. Get Courier Information for Each Payment

SELECT * FROM Payment p
INNER JOIN courier c ON p.CourierID=c.CourierID;
 
--30. Get Payment Details with Location 

SELECT * FROM payment p
INNER JOIN Location l ON p.LocationId=l.LocationID;

--31. Calculating Total Payments for Each Courier 

SELECT courierId, SUM(amount) as Total FROM payment
GROUP BY CourierID;

--32. List Payments Within a Date Range 

SELECT * FROM Payment
WHERE PaymentDate BETWEEN '2024-04-22' AND '2024-04-25';

--33. Retrieve a list of all users and their corresponding courier records, including cases where there are no matches on either side 

SELECT * FROM userTable u
FULL OUTER JOIN courier c ON u.UserID=c.UserID;

--34. Retrieve a list of all couriers and their corresponding services, including cases where there are no matches on either side 

SELECT c.courierid,s.serviceid,cs.servicename FROM Courier c
FULL OUTER JOIN CourierServicemapping s ON c.courierid=s.courierid
FULL OUTER JOIN courierservices cs ON s.serviceid=cs.serviceid;

--35. Retrieve a list of all employees and their corresponding payments, including cases where there are no matches on either side 

SELECT e.employeeid,e.Name,p.paymentid,p.amount,p.paymentdate FROM Employee e
FULL OUTER JOIN EmployeeCourier ec ON e.EmployeeID=ec.EmployeeID
FULL OUTER JOIN Payment p ON ec.CourierID=p.CourierID;

--36. List all users and all courier services, showing all possible combinations. 

SELECT * FROM userTable
CROSS JOIN CourierServices;

--37. List all employees and all locations, showing all possible combinations: 

SELECT * FROM Employee
CROSS JOIN Location;

--38. Retrieve a list of couriers and their corresponding sender information (if available) 

SELECT courierid,u.userid,u.name,u.email,u.password,u.contactnumber,u.address FROM courier c
JOIN userTable u ON c.userId=u.UserID;

--39. Retrieve a list of couriers and their corresponding receiver information (if available): 

SELECT courierid, receivername,ReceiverAddress FROM Courier;

--40. Retrieve a list of couriers along with the courier service details (if available):

SELECT * FROM courier o
INNER JOIN (SELECT courierid,s.serviceid,servicename,cost FROM CourierServices s 
	JOIN CourierServiceMapping cs ON cs.ServiceID=s.ServiceID) i ON o.CourierID=i.CourierID;
 
--41. Retrieve a list of employees and the number of couriers assigned to each employee:

SELECT e.employeeid,name,count(courierid) AS [no.of couriers] FROM Employee e
INNER JOIN EmployeeCourier ec on e.EmployeeID=ec.EmployeeID
GROUP BY e.EmployeeID,name;
 
--42. Retrieve a list of locations and the total payment amount received at each location: 

SELECT LocationId,SUM(Amount) AS TOTAL FROM payment
GROUP BY LocationID;

--43. Retrieve all couriers sent by the same sender (based on SenderName). 

SELECT * FROM Courier
WHERE SenderName IN ( SELECT SenderName FROM Courier
		GROUP BY SenderName
		HAVING COUNT(SenderName)>1);

--44. List all employees who share the same role. 

SELECT * FROM Employee 
WHERE role IN (SELECT role FROM Employee 
		GROUP BY Role
		HAVING COUNT(Role) > 1);

--45. Retrieve all payments made for couriers sent from the same location. 

SELECT * FROM payment
WHERE LocationId IN (SELECT LocationId FROM payment
		GROUP BY LocationID
		HAVING COUNT(LocationID)>1);

--46. Retrieve all couriers sent from the same location (based on SenderAddress). 

SELECT * FROM Courier
WHERE cast(SenderAddress as varchar) IN (SELECT cast(SenderAddress as varchar)FROM Courier
					GROUP BY cast(SenderAddress as varchar)
					HAVING COUNT(*) > 1);

--47. List employees and the number of couriers they have delivered: 

select e.EmployeeID,e.name,count(courierid) as [no.of couriers] from Employee e
inner join EmployeeCourier ec on  e.EmployeeID=ec.EmployeeID
group by e.EmployeeID,e.name;

--48. Find couriers that were paid an amount greater than the cost of their respective courier services

select p.courierid from payment p
inner join CourierServiceMapping cs on p.CourierID=cs.CourierID
inner join CourierServices c on cs.ServiceID=c.ServiceID
where Amount>cost;


-- Scope: Inner Queries, Non Equi Joins, Equi joins,Exist,Any,All 

--49. Find couriers that have a weight greater than the average weight of all couriers

SELECT * FROM Courier
WHERE Weight>(SELECT AVG(Weight) FROM Courier);

--50. Find the names of all employees who have a salary greater than the average salary: 

SELECT * FROM Employee
WHERE Salary>(SELECT AVG(Salary) FROM Employee);

--51. Find the total cost of all courier services where the cost is less than the maximum cost

SELECT SUM(cost) AS Toatl FROM CourierServices
WHERE Cost<(SELECT MAX(Cost) FROM CourierServices);
 
--52. Find all couriers that have been paid for 

SELECT CourierId, Amount FROM Payment
WHERE Amount IS NOT NULL;

--53. Find the locations where the maximum payment amount was made 

SELECT * FROM Location
WHERE LocationID=(SELECT locationID FROM Payment
                 WHERE Amount=(SELECT MAX(Amount) FROM Payment));

--54. Find all couriers whose weight is greater than the weight of all couriers sent by a specific sender 
--(e.g., 'SenderName'):

SELECT * FROM Courier
WHERE Weight>ALL(SELECT Weight FROM Courier
		WHERE SenderName='Alexander Lee');


