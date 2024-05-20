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