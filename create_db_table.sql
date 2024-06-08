-- Create Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Address NVARCHAR(255),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(15)
);

-- Create Product table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Description NVARCHAR(255),
    Price DECIMAL(10, 2),
    Category NVARCHAR(50)
);

-- Create Order table
CREATE TABLE [Order] (
    OrderID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
    ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
    Quantity INT,
    OrderDate DATETIME,
    TotalAmount DECIMAL(10, 2)
);

-- Create Inventory table
CREATE TABLE Inventory (
    ProductID INT PRIMARY KEY FOREIGN KEY REFERENCES Product(ProductID),
    Quantity INT,
    Location NVARCHAR(100)
);
