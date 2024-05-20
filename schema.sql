CREATE TABLE userTable (
			UserID INT PRIMARY KEY, 
			Name VARCHAR(255), 
			Email VARCHAR(255) UNIQUE, 
			Password VARCHAR(255), 
			ContactNumber VARCHAR(20), 
			Address TEXT 
);

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

CREATE TABLE CourierServices (
ServiceID INT PRIMARY KEY, 
ServiceName VARCHAR(100), 
Cost DECIMAL(8, 2)
);

CREATE TABLE Employee (
EmployeeID INT PRIMARY KEY IDENTITY(1,1), 
Name VARCHAR(255), 
Email VARCHAR(255) UNIQUE, 
ContactNumber VARCHAR(20), 
Role VARCHAR(50), 
Salary DECIMAL(10, 2)
);

CREATE TABLE Location(
LocationID INT PRIMARY KEY, 
LocationName VARCHAR(100), 
Address TEXT
); 

CREATE TABLE Payment(
PaymentID INT PRIMARY KEY, 
CourierID INT, 
LocationId INT, 
Amount DECIMAL(10, 2), 
PaymentDate DATE, 
FOREIGN KEY (CourierID) REFERENCES Courier(CourierID), 
FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

CREATE TABLE EmployeeCourier (
        EmployeeID INT,
        CourierID INT,
        FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
        FOREIGN KEY (CourierID) REFERENCES Courier(CourierID)
);