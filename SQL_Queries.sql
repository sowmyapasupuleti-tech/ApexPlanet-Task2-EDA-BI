

-- =====================================================
-- Q1: Which products generate the highest total sales?
-- =====================================================

SELECT
    Product,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Product
ORDER BY Total_Sales DESC;


-- =====================================================
-- Q2: Which categories generate the highest total sales?
-- =====================================================

SELECT
    Category,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- =====================================================
-- Q3: Which cities generate the highest total sales?
-- =====================================================

SELECT
    City,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY City
ORDER BY Total_Sales DESC;


-- =====================================================
-- Q4: What is the average order value by category?
-- =====================================================

SELECT
    Category,
    AVG(Total_Sales) AS Average_Order_Value
FROM sales
GROUP BY Category
ORDER BY Average_Order_Value DESC;


-- =====================================================
-- Q5: Which products have the highest average quantity sold?
-- =====================================================

SELECT
    Product,
    AVG(Quantity) AS Average_Quantity
FROM sales
GROUP BY Product
ORDER BY Average_Quantity DESC;


-- =====================================================
-- Q6: What are the total sales by gender?
-- =====================================================

SELECT
    Gender,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Gender
ORDER BY Total_Sales DESC;


-- =====================================================
-- Q7: How do sales change month by month?
-- =====================================================

SELECT
    strftime('%Y-%m', Order_Date) AS Month,
    SUM(Total_Sales) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Month;

