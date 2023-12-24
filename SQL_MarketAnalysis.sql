CREATE DATABASE MarketAnalysis;
GO
create table Sales (
CustomerID int,
ProductID char(1),
PurchaseDate DATE,
Quantity int,
Revenue DECIMAL(10,2)
);

Insert into Sales(CustomerID, ProductID, PurchaseDate, Quantity, Revenue)
Values
(1, 'A', '2023-01-01', 5, 100),
(2, 'B', '2023-01-02', 3, 50),
(3, 'A', '2023-01-03', 2, 30),
(4, 'C', '2023-01-03', 1, 20),
(1, 'B', '2023-01-04', 4, 80);

--Calculating total revenue:
Select SUM(Revenue) AS TotalRevenue FROM Sales;

--Calculating total sales by product:
Select ProductID, SUM(Quantity) as TotalQuantity, SUM(Revenue) as TotalRevenue
FROM Sales
GROUP BY ProductID;

--Finding top customers by revenue:
SELECT CustomerID, Sum(Revenue) AS TotalRevenue
FROM Sales
GROUP BY CustomerID
ORDER BY TotalRevenue DESC;
