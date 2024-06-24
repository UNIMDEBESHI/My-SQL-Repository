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


INSERT INTO Customers (customer_id, customer_name, customer_address)
VALUES
(1, 'Ahmed', 'Tunisia'),
(2, 'Coulibaly', 'Senegal'),
(3, 'Hasan', 'Egypt');

INSERT INTO Products (product_id, product_name, product_price)
VALUES 
(1, 'Cookies', '10'),
(2, 'Candy', '5.2');

INSERT INTO Orders (order_id, customer_id, product_id, quantity, order_date)
VALUES
(1, '1','2','3', '2023-01-22'),
(2, '2', '1', '10', '2023-04-14');

UPDATE Orders
SET quantity = '6'
WHERE order_id = 2;

SELECT * FROM Orders

DELETE FROM Customers
WHERE customer_name = 'Hasan';

DELETE FROM Orders;

DROP TABLE Orders;



