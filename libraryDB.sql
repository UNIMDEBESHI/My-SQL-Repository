-- Create a database called CustomerDB;
CREATE DATABASE CustomerDB
GO

-- Switch to newly created database
USE CustomerDB
GO

CREATE TABLE Customers (
    customer_id INT NOT NULL PRIMARY KEY,
    customer_name VARCHAR(50),
	customer_address VARCHAR (70),
);
GO

CREATE TABLE Products (
    product_id INT NOT NULL PRIMARY KEY,
	product_name VARCHAR (50),
	product_price DEC CHECK (product_price>0),
);
GO

CREATE TABLE Orders (
    order_id INT NOT NULL PRIMARY KEY,
	customer_id INT FOREIGN KEY REFERENCES Customers (customer_id),
	product_id INT FOREIGN KEY REFERENCES Products (product_id),
    quantity INT,
	order_date DATE,
);
GO


