DROP DATABASE IF EXISTS bamazon2_db;

CREATE DATABASE bamazon2_db;

USE bamazon2_db;

CREATE TABLE Products (
    ItemID MEDIUMINT AUTO_INCREMENT NOT NULL,
    Product VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT(10) NOT NULL,
    primary key(ItemID)
);

INSERT INTO Products (Product, Department, Price, Stock)
VALUES 
("God of War 4", "Entertainment", 50.00, 200),
("iPods Touch", "Electronics", 179.00 , 500),
("Hatsune Miku", "Vocaloids", 160.00, 500), 
("Lamp", "Home", 45.00, 90),
("Health Bar", "Health", 10.00 , 700),
("Watermelon" ,"Grocery", 8.50, 50),
("Quinoa", "Vegan", 25.00, 90),
("Diapers", "Baby", 45.50, 250),
("Jackets", "Clothings", 75.00, 300),
("Basketball", "Sports", 25.50, 60);

CREATE TABLE Departments (
    DepartmentID MEDIUMINT AUTO_INCREMENT NOT NULL,
    Department VARCHAR(50) NOT NULL,
    OverHeadCosts DECIMAL(10,2) NOT NULL,
    TotalSales DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(DepartmentID)
);

INSERT INTO Departments (Department, OverHeadCosts, TotalSales)
VALUES 
('Entertainment', 50000.00, 15000.00),
('Electronics', 20000.00, 12000.00),
('Vocaloids', 70000.00, 12000.00),
('Home', 30000.00, 15000.00),
('Health', 3000.00, 12000.00),
('Grocery', 1200.00, 15000.00),
('Vegan', 12000.00, 12000.00),
('Baby', 40000.00, 12000.00),
('Clothings', 35000.00, 15000.00),
('Sports', 12000.00, 12000.00);

SELECT * FROM bamazon2_db.Products;

SELECT * FROM bamazon2_db.Departments;