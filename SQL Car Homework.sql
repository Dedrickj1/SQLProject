-- Create the CarDealership database
CREATE DATABASE CarDealership;
USE CarDealership;

-- Create the Salesperson table
CREATE TABLE Salesperson (
    SalespersonID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Create the Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Create the Car table
CREATE TABLE Car (
    VIN VARCHAR(17) PRIMARY KEY,
    Model VARCHAR(50),
    Make VARCHAR(50),
    Year INT
);

-- Create the ServiceTicket table
CREATE TABLE ServiceTicket (
    TicketID INT PRIMARY KEY,
    CustomerID INT,
    CarVIN VARCHAR(17),
    ServiceDate DATE,
    Description TEXT,
    MechanicID INT
);

-- Create the ServiceRecord table
CREATE TABLE ServiceRecord (
    RecordID INT PRIMARY KEY,
    TicketID INT,
    CarVIN VARCHAR(17),
    ServiceDate DATE,
    Description TEXT,
    MechanicID INT
);

-- Create the Mechanic table
CREATE TABLE Mechanic (
    MechanicID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Create the Invoice table
CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    SalespersonID INT,
    CustomerID INT,
    SaleDate DATE
);

-- Create the Part table
CREATE TABLE Part (
    PartID INT PRIMARY KEY,
    Name VARCHAR(50)
);

- Add some sample data
INSERT INTO Salesperson (FirstName, LastName) VALUES ('John', 'Doe');
INSERT INTO Customer (FirstName, LastName) VALUES ('Jane', 'Smith');
INSERT INTO Car (VIN, Model, Make, Year) VALUES ('ABC123', 'Camry', 'Toyota', 2022);
INSERT INTO Mechanic (FirstName, LastName) VALUES ('Mike', 'Johnson');
INSERT INTO Invoice (SalespersonID, CustomerID, SaleDate) VALUES (1, 1, '2023-01-15');
INSERT INTO Part (Name) VALUES ('Oil Filter');
