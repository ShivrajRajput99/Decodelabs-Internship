-- 1. Display All Records
SELECT * FROM order2;

-- 2. Display Specific Columns
SELECT OrderID, Product, Quantity, TotalPrice
FROM order2;

-- 3. Find Delivered Orders
SELECT *
FROM order2
WHERE OrderStatus = 'Delivered';

-- 4. Find Orders with Quantity Greater Than 3
SELECT *
FROM order2
WHERE Quantity > 3;

-- 5. Sort Orders by Total Price (Highest First)
SELECT *
FROM order2
ORDER BY TotalPrice DESC;

-- 6. Count Total Orders
SELECT COUNT(*) AS TotalOrders
FROM order2;

-- 7. Calculate Total Revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM order2;

-- 8. Calculate Average Order Value
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM order2;

-- 9. Count Orders by Status
SELECT OrderStatus,
COUNT(*) AS TotalOrders
FROM order2
GROUP BY OrderStatus;

-- 10. Count Orders by Product
SELECT Product,
COUNT(*) AS ProductCount
FROM order2
GROUP BY Product;

-- 11. Revenue by Product
SELECT Product,
SUM(TotalPrice) AS Revenue
FROM order2
GROUP BY Product
ORDER BY Revenue DESC;

-- 12. Analyze Payment Methods
SELECT PaymentMethod,
COUNT(*) AS TotalOrders
FROM order2
GROUP BY PaymentMethod;

-- 13. Analyze Referral Sources
SELECT ReferralSource,
COUNT(*) AS Customers
FROM order2
GROUP BY ReferralSource;

-- 14. Find Top 5 Most Expensive Orders
SELECT *
FROM order2
ORDER BY TotalPrice DESC
LIMIT 5;

-- 15. Find Average Quantity per Product
SELECT Product,
AVG(Quantity) AS AvgQuantity
FROM order2
GROUP BY Product;
