-- //////////////////////////////////////////
/*
1. 
Select all brands: Modify Header: Brand
*/
/*
SELECT
    brand_name AS Brand
FROM
    production.brands
*/

-- //////////////////////////////////////////

/*
2. 
Customers from Bronx and Brooklyn
Modify headers:
Cust ID, Last name, First name, Email, Street Address, City, State
Order by City and Last name
*/
/*
SELECT
    customer_id AS #,
    last_name AS [Last Name],
    first_name AS [First Name],
    email AS [Mail Address],
    street AS [Street Address],
    city AS [City],
    state AS [State]
FROM
    sales.customers
WHERE 
    city IN ('bronx', 'Brooklyn')
ORDER BY
    city, last_name
*/

-- //////////////////////////////////////////

/*
3. 
All Products, brand should be readable not id. 
Modify headers:
Product name, Brand, Model, Price
Order by Product name, descending order
*/
/*
SELECT
    product_name as [Product Name],
    pb.brand_name as [Brand],
    model_year as [Model],
    list_price as [Price]
FROM
    production.products as pp
INNER JOIN
    production.brands as pb
ON
    pp.brand_id = pb.brand_id
ORDER BY
    product_name DESC
*/

-- //////////////////////////////////////////

/*
4.
Use SQL COUNT() function to get number of customers who are from state NY.
Modify header:
NY Customers
*/
/*
SELECT
    COUNT(*) AS [NY Customers]
FROM
    sales.customers
WHERE
    State IN ('NY')
*/

-- //////////////////////////////////////////

/*
5.
All products that Pamala Henry from Bronx NY has ordered.
Brand should be readable not id
Modify headers:
Product name, Brand, Price
*/
/*
SELECT 
    p.product_name AS [Product Name],
    b.brand_name AS [Brand],
    p.list_price AS [Price]
FROM
    sales.customers AS c
INNER JOIN
    sales.orders AS o
ON
    c.customer_id = o.customer_id
INNER JOIN
    sales.order_items AS oi
ON
    o.order_id = oi.order_id
INNER JOIN
    production.products AS p
ON
    oi.product_id = p.product_id
INNER JOIN
    production.brands AS b
ON
    p.brand_id = b.brand_id
WHERE
    c.first_name = 'Pamala' AND
    c.last_name = 'Henry' AND
    c.city = 'Bronx' AND
    c.state = 'NY';
*/

-- //////////////////////////////////////////


