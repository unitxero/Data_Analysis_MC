-------------------------------------------------------------------
-- WARM UPS: Type the following commands to build muscle memory. --
-------------------------------------------------------------------

-- 1. [Using max/min]: SELECT max(price) FROM products;

-- 2. [Using count]: SELECT count(*) FROM users;

-- 3. [Using sum]: SELECT sum(price) FROM purchase_items;

-- 4. [Using avg]: SELECT avg(price) FROM purchase_items;

--------------------------------------------------------
-- EXERCISES: Answer using the techniques from above. --
--------------------------------------------------------

-- 1. Find the total number of purchases.
SELECT COUNT(purchase_id)
FROM purchases;
-- 1002 purchases

-- 2. Find the average price of the items in the products table.
SELECT AVG(price)
FROM products;
-- $109.02 is the average price of items

-- 3. Find the maximum price from the products that are NOT a
--    computer.
SELECT MAX(price)
FROM products
WHERE lower(title) not like '%computer';
-- $529.00

-- 4. Find the number of users with Gmail email addresses.

SELECT COUNT(email)
FROM users
WHERE email like '%gmail%' OR email like '%Gmail';
-- 21 

-- 5. Using the purchase_items table, find the total dollar value of
--    all items with state "Returned".
SELECT SUM(price * quantity)
FROM purchase_items
WHERE status = 'Returned';
-- $ 18071.68

-- 6. Find the average price of all products containing the word
--    "Book" in their title.

SELECT AVG(price)
FROM products
WHERE lower(title) like '%book';
-- $ 14.84

----------------------------------------
-- EXTRA CREDIT: If you finish early. --
----------------------------------------

-- 1. You use multiple aggregation functions in one SELECT. Using
--    only one query,
--    find the min(), max() and avg() of the prices in the product
--    table.
SELECT MIN(price), MAX(price), AVG(price)
FROM products;
-- min 5.99, max 899.99, avg 109.02

-- 2. In one query, find the difference between the price of the most
--    expensive and least expensive product.

select MAX(price) - MIN(price)
from products;
-- difference is $894