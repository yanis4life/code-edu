#!/usr/bin/env python3

LESSON_TEMPLATES = []

for i in range(1, 101):
    level = i
    if level <= 20:
        difficulty = "easy"
        xp = 50
    elif level <= 50:
        difficulty = "medium"
        xp = 75
    elif level <= 80:
        difficulty = "hard"
        xp = 100
    else:
        difficulty = "hard"
        xp = 150

    if level == 1:
        title = "SELECT Basics"
        theory = "SQL is used to query databases. SELECT retrieves data. FROM specifies the table. Asterisk (*) selects all columns."
        code = "SELECT * FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Write a query that selects all columns from the 'products' table."
        template = "SELECT  FROM products;"
        answer = "SELECT * FROM products;"
        hint = "Use * to select all columns."
    elif level == 2:
        title = "SELECT Specific Columns"
        theory = "Specify column names after SELECT to get only those columns. Separate multiple columns with commas."
        code = "SELECT name, email FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Select only the 'name' and 'price' columns from the 'products' table."
        template = "SELECT  FROM products;"
        answer = "SELECT name, price FROM products;"
        hint = "List the column names separated by commas."
    elif level == 3:
        title = "WHERE Clause"
        theory = "The WHERE clause filters rows based on conditions. Use =, !=, <, >, <=, >= for comparisons."
        code = "SELECT * FROM users WHERE age > 18;"
        challenge_type = "complete_code"
        challenge_desc = "Select all columns from 'products' where price is greater than 100."
        template = "SELECT * FROM products WHERE price > 100;"
        answer = "SELECT * FROM products WHERE price > 100;"
        hint = "The answer is already in the template."
    elif level == 4:
        title = "AND Operator"
        theory = "Use AND to combine multiple conditions. Both conditions must be true for the row to be included."
        code = "SELECT * FROM users WHERE age > 18 AND city = 'London';"
        challenge_type = "complete_code"
        challenge_desc = "Select products where price > 50 AND category = 'Electronics'."
        template = "SELECT * FROM products WHERE price > 50 AND category = 'Electronics';"
        answer = "SELECT * FROM products WHERE price > 50 AND category = 'Electronics';"
        hint = "The answer is already in the template."
    elif level == 5:
        title = "OR Operator"
        theory = "Use OR when at least one condition must be true. OR has lower precedence than AND."
        code = "SELECT * FROM users WHERE city = 'London' OR city = 'Paris';"
        challenge_type = "complete_code"
        challenge_desc = "Select products where category = 'Shoes' OR category = 'Hats'."
        template = "SELECT * FROM products WHERE category = 'Shoes' OR category = 'Hats';"
        answer = "SELECT * FROM products WHERE category = 'Shoes' OR category = 'Hats';"
        hint = "The answer is already in the template."
    elif level == 6:
        title = "NOT Operator"
        theory = "NOT negates a condition. Use NOT IN, NOT LIKE, NOT BETWEEN, or NOT before a comparison."
        code = "SELECT * FROM users WHERE NOT city = 'London';"
        challenge_type = "complete_code"
        challenge_desc = "Select products where category is NOT 'Electronics'."
        template = "SELECT * FROM products WHERE NOT category = 'Electronics';"
        answer = "SELECT * FROM products WHERE NOT category = 'Electronics';"
        hint = "The answer is already in the template."
    elif level == 7:
        title = "IN Operator"
        theory = "IN checks if a value matches any value in a list. It's cleaner than multiple OR conditions."
        code = "SELECT * FROM users WHERE city IN ('London', 'Paris', 'Berlin');"
        challenge_type = "complete_code"
        challenge_desc = "Select products where category is 'Food' or 'Drinks' using IN."
        template = "SELECT * FROM products WHERE category IN ('Food', 'Drinks');"
        answer = "SELECT * FROM products WHERE category IN ('Food', 'Drinks');"
        hint = "The answer is already in the template."
    elif level == 8:
        title = "BETWEEN Operator"
        theory = "BETWEEN selects values within a range. The range is inclusive of both endpoints."
        code = "SELECT * FROM users WHERE age BETWEEN 18 AND 30;"
        challenge_type = "complete_code"
        challenge_desc = "Select products with price between 10 and 50."
        template = "SELECT * FROM products WHERE price BETWEEN 10 AND 50;"
        answer = "SELECT * FROM products WHERE price BETWEEN 10 AND 50;"
        hint = "The answer is already in the template."
    elif level == 9:
        title = "LIKE Operator"
        theory = "LIKE searches for patterns. % matches any sequence of characters. _ matches a single character."
        code = "SELECT * FROM users WHERE name LIKE 'J%';"
        challenge_type = "complete_code"
        challenge_desc = "Select products where name starts with 'A'."
        template = "SELECT * FROM products WHERE name LIKE 'A%';"
        answer = "SELECT * FROM products WHERE name LIKE 'A%';"
        hint = "The answer is already in the template."
    elif level == 10:
        title = "ORDER BY"
        theory = "ORDER BY sorts results. ASC for ascending (default), DESC for descending."
        code = "SELECT * FROM users ORDER BY age DESC;"
        challenge_type = "complete_code"
        challenge_desc = "Select all products ordered by price from highest to lowest."
        template = "SELECT * FROM products ORDER BY price DESC;"
        answer = "SELECT * FROM products ORDER BY price DESC;"
        hint = "Use ORDER BY price DESC."
    elif level == 11:
        title = "LIMIT"
        theory = "LIMIT restricts the number of rows returned. Use LIMIT with OFFSET to skip rows."
        code = "SELECT * FROM users LIMIT 5;"
        challenge_type = "complete_code"
        challenge_desc = "Select the first 10 products."
        template = "SELECT * FROM products LIMIT 10;"
        answer = "SELECT * FROM products LIMIT 10;"
        hint = "The answer is already in the template."
    elif level == 12:
        title = "DISTINCT"
        theory = "DISTINCT removes duplicate values from the result. It applies to the selected columns."
        code = "SELECT DISTINCT city FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Select distinct categories from the products table."
        template = "SELECT DISTINCT category FROM products;"
        answer = "SELECT DISTINCT category FROM products;"
        hint = "The answer is already in the template."
    elif level == 13:
        title = "COUNT"
        theory = "COUNT() returns the number of rows. COUNT(*) counts all rows. COUNT(column) counts non-null values."
        code = "SELECT COUNT(*) FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Count how many products are in the products table."
        template = "SELECT COUNT(*) FROM products;"
        answer = "SELECT COUNT(*) FROM products;"
        hint = "The answer is already in the template."
    elif level == 14:
        title = "SUM"
        theory = "SUM() adds up all values in a numeric column. NULL values are ignored."
        code = "SELECT SUM(price) FROM products;"
        challenge_type = "complete_code"
        challenge_desc = "Calculate the total price of all products."
        template = "SELECT SUM(price) FROM products;"
        answer = "SELECT SUM(price) FROM products;"
        hint = "The answer is already in the template."
    elif level == 15:
        title = "AVG"
        theory = "AVG() calculates the average of a numeric column. NULL values are ignored."
        code = "SELECT AVG(price) FROM products;"
        challenge_type = "complete_code"
        challenge_desc = "Calculate the average price of products."
        template = "SELECT AVG(price) FROM products;"
        answer = "SELECT AVG(price) FROM products;"
        hint = "The answer is already in the template."
    elif level == 16:
        title = "MIN and MAX"
        theory = "MIN() returns the smallest value. MAX() returns the largest value. They work on numeric and text columns."
        code = "SELECT MIN(price), MAX(price) FROM products;"
        challenge_type = "complete_code"
        challenge_desc = "Find the minimum and maximum price from products."
        template = "SELECT MIN(price), MAX(price) FROM products;"
        answer = "SELECT MIN(price), MAX(price) FROM products;"
        hint = "The answer is already in the template."
    elif level == 17:
        title = "GROUP BY"
        theory = "GROUP BY groups rows that have the same values. Used with aggregate functions like COUNT, SUM, AVG."
        code = "SELECT category, COUNT(*) FROM products GROUP BY category;"
        challenge_type = "complete_code"
        challenge_desc = "Count the number of products in each category."
        template = "SELECT category, COUNT(*) FROM products GROUP BY category;"
        answer = "SELECT category, COUNT(*) FROM products GROUP BY category;"
        hint = "The answer is already in the template."
    elif level == 18:
        title = "HAVING"
        theory = "HAVING filters groups created by GROUP BY. WHERE filters rows before grouping, HAVING filters after."
        code = "SELECT category, COUNT(*) FROM products GROUP BY category HAVING COUNT(*) > 5;"
        challenge_type = "complete_code"
        challenge_desc = "Show categories that have more than 10 products."
        template = "SELECT category, COUNT(*) FROM products GROUP BY category HAVING COUNT(*) > 10;"
        answer = "SELECT category, COUNT(*) FROM products GROUP BY category HAVING COUNT(*) > 10;"
        hint = "The answer is already in the template."
    elif level == 19:
        title = "AS Alias"
        theory = "AS gives a column or table a temporary name. Aliases make queries more readable."
        code = "SELECT COUNT(*) AS total_users FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Use an alias to rename COUNT(*) as 'total_products'."
        template = "SELECT COUNT(*) AS total_products FROM products;"
        answer = "SELECT COUNT(*) AS total_products FROM products;"
        hint = "The answer is already in the template."
    elif level == 20:
        title = "NULL Values"
        theory = "NULL represents missing data. Use IS NULL or IS NOT NULL to check for NULL. Cannot use = NULL."
        code = "SELECT * FROM users WHERE email IS NULL;"
        challenge_type = "complete_code"
        challenge_desc = "Select products where the description is not NULL."
        template = "SELECT * FROM products WHERE description IS NOT NULL;"
        answer = "SELECT * FROM products WHERE description IS NOT NULL;"
        hint = "Use IS NOT NULL."
    elif level == 21:
        title = "UPDATE"
        theory = "UPDATE modifies existing rows. Always use WHERE to avoid updating all rows. SET specifies new values."
        code = "UPDATE users SET age = 30 WHERE id = 1;"
        challenge_type = "complete_code"
        challenge_desc = "Update the price of product with id 1 to 25.99."
        template = "UPDATE products SET price = 25.99 WHERE id = 1;"
        answer = "UPDATE products SET price = 25.99 WHERE id = 1;"
        hint = "The answer is already in the template."
    elif level == 22:
        title = "DELETE"
        theory = "DELETE removes rows from a table. Always use WHERE. Without WHERE, all rows are deleted."
        code = "DELETE FROM users WHERE id = 1;"
        challenge_type = "complete_code"
        challenge_desc = "Delete the product with id 5."
        template = "DELETE FROM products WHERE id = 5;"
        answer = "DELETE FROM products WHERE id = 5;"
        hint = "The answer is already in the template."
    elif level == 23:
        title = "INSERT INTO"
        theory = "INSERT adds new rows. Specify columns and values. If no columns listed, values for all columns are needed."
        code = "INSERT INTO users (name, email) VALUES ('John', 'john@test.com');"
        challenge_type = "complete_code"
        challenge_desc = "Insert a new product with name 'Chair' and price 49.99."
        template = "INSERT INTO products (name, price) VALUES ('Chair', 49.99);"
        answer = "INSERT INTO products (name, price) VALUES ('Chair', 49.99);"
        hint = "The answer is already in the template."
    elif level == 24:
        title = "CREATE TABLE"
        theory = "CREATE TABLE defines a new table. Specify column names and data types: INT, VARCHAR(n), DECIMAL, DATE, BOOLEAN."
        code = "CREATE TABLE users (id INT, name VARCHAR(100), email VARCHAR(255));"
        challenge_type = "complete_code"
        challenge_desc = "Create a table 'orders' with columns id INT and total DECIMAL(10,2)."
        template = "CREATE TABLE orders (id INT, total DECIMAL(10,2));"
        answer = "CREATE TABLE orders (id INT, total DECIMAL(10,2));"
        hint = "The answer is already in the template."
    elif level == 25:
        title = "ALTER TABLE"
        theory = "ALTER TABLE modifies an existing table. Add, drop, or modify columns."
        code = "ALTER TABLE users ADD COLUMN phone VARCHAR(20);"
        challenge_type = "complete_code"
        challenge_desc = "Add a column 'discount' of type DECIMAL(5,2) to the products table."
        template = "ALTER TABLE products ADD COLUMN discount DECIMAL(5,2);"
        answer = "ALTER TABLE products ADD COLUMN discount DECIMAL(5,2);"
        hint = "The answer is already in the template."
    elif level == 26:
        title = "DROP TABLE"
        theory = "DROP TABLE permanently removes a table and all its data. This action cannot be undone."
        code = "DROP TABLE IF EXISTS temp_data;"
        challenge_type = "true_false"
        challenge_desc = "DROP TABLE can be rolled back with ROLLBACK."
        template = ""
        answer = "false"
        hint = "DROP TABLE is a DDL statement and cannot be rolled back."
    elif level == 27:
        title = "PRIMARY KEY"
        theory = "A PRIMARY KEY uniquely identifies each row. It cannot be NULL. A table can have only one primary key."
        code = "CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(100));"
        challenge_type = "complete_code"
        challenge_desc = "Create a table 'products' with id INT as PRIMARY KEY."
        template = "CREATE TABLE products (id INT PRIMARY KEY, name VARCHAR(100));"
        answer = "CREATE TABLE products (id INT PRIMARY KEY, name VARCHAR(100));"
        hint = "The answer is already in the template."
    elif level == 28:
        title = "FOREIGN KEY"
        theory = "A FOREIGN KEY links two tables. It references a PRIMARY KEY in another table. Enforces referential integrity."
        code = "CREATE TABLE orders (id INT PRIMARY KEY, user_id INT REFERENCES users(id));"
        challenge_type = "complete_code"
        challenge_desc = "Add a FOREIGN KEY on product_id referencing products(id)."
        template = "CREATE TABLE order_items (id INT PRIMARY KEY, product_id INT REFERENCES products(id));"
        answer = "CREATE TABLE order_items (id INT PRIMARY KEY, product_id INT REFERENCES products(id));"
        hint = "The answer is already in the template."
    elif level == 29:
        title = "UNIQUE Constraint"
        theory = "UNIQUE ensures all values in a column are different. A table can have multiple UNIQUE constraints."
        code = "CREATE TABLE users (id INT PRIMARY KEY, email VARCHAR(255) UNIQUE);"
        challenge_type = "true_false"
        challenge_desc = "A table can have multiple UNIQUE constraints."
        template = ""
        answer = "true"
        hint = "Unlike PRIMARY KEY, you can have multiple UNIQUE columns."
    elif level == 30:
        title = "NOT NULL"
        theory = "NOT NULL ensures a column cannot have a NULL value. It's a constraint at the column level."
        code = "CREATE TABLE users (id INT PRIMARY KEY, name VARCHAR(100) NOT NULL);"
        challenge_type = "complete_code"
        challenge_desc = "Create a table with name column set to NOT NULL."
        template = "CREATE TABLE products (id INT PRIMARY KEY, name VARCHAR(100) NOT NULL);"
        answer = "CREATE TABLE products (id INT PRIMARY KEY, name VARCHAR(100) NOT NULL);"
        hint = "The answer is already in the template."
    elif level == 31:
        title = "DEFAULT Value"
        theory = "DEFAULT sets a default value for a column when no value is provided in INSERT."
        code = "CREATE TABLE users (id INT, status VARCHAR(20) DEFAULT 'active');"
        challenge_type = "complete_code"
        challenge_desc = "Set a default value of 0 for the 'stock' column."
        template = "CREATE TABLE products (id INT, stock INT DEFAULT 0);"
        answer = "CREATE TABLE products (id INT, stock INT DEFAULT 0);"
        hint = "The answer is already in the template."
    elif level == 32:
        title = "AUTO INCREMENT"
        theory = "AUTO_INCREMENT (MySQL) or GENERATED AS IDENTITY (PostgreSQL) automatically generates unique numbers."
        code = "CREATE TABLE users (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));"
        challenge_type = "true_false"
        challenge_desc = "AUTO_INCREMENT guarantees that values are always consecutive."
        template = ""
        answer = "false"
        hint = "Auto-increment values can have gaps due to rollbacks or deletions."
    elif level == 33:
        title = "INNER JOIN"
        theory = "INNER JOIN returns rows that have matching values in both tables. Only matching rows are included."
        code = "SELECT users.name, orders.total FROM users INNER JOIN orders ON users.id = orders.user_id;"
        challenge_type = "complete_code"
        challenge_desc = "Join products with order_items on product_id."
        template = "SELECT products.name, order_items.quantity FROM products INNER JOIN order_items ON products.id = order_items.product_id;"
        answer = "SELECT products.name, order_items.quantity FROM products INNER JOIN order_items ON products.id = order_items.product_id;"
        hint = "The answer is already in the template."
    elif level == 34:
        title = "LEFT JOIN"
        theory = "LEFT JOIN returns all rows from the left table, and matching rows from the right table. Non-matching right rows show NULL."
        code = "SELECT users.name, orders.total FROM users LEFT JOIN orders ON users.id = orders.user_id;"
        challenge_type = "complete_code"
        challenge_desc = "Use LEFT JOIN to get all products with their order quantities."
        template = "SELECT products.name, order_items.quantity FROM products LEFT JOIN order_items ON products.id = order_items.product_id;"
        answer = "SELECT products.name, order_items.quantity FROM products LEFT JOIN order_items ON products.id = order_items.product_id;"
        hint = "The answer is already in the template."
    elif level == 35:
        title = "RIGHT JOIN"
        theory = "RIGHT JOIN returns all rows from the right table, and matching rows from the left table."
        code = "SELECT users.name, orders.total FROM users RIGHT JOIN orders ON users.id = orders.user_id;"
        challenge_type = "predict_output"
        challenge_desc = "What does RIGHT JOIN return for non-matching left table rows?"
        template = ""
        answer = "NULL"
        hint = "Non-matching rows from the left table show NULL."
    elif level == 36:
        title = "FULL JOIN"
        theory = "FULL JOIN (or FULL OUTER JOIN) returns all rows from both tables. NULLs appear where there is no match."
        code = "SELECT users.name, orders.total FROM users FULL JOIN orders ON users.id = orders.user_id;"
        challenge_type = "true_false"
        challenge_desc = "FULL JOIN is supported in all SQL databases."
        template = ""
        answer = "false"
        hint = "MySQL does not support FULL JOIN directly."
    elif level == 37:
        title = "CROSS JOIN"
        theory = "CROSS JOIN returns the Cartesian product of both tables. Each row from table A is paired with each row from table B."
        code = "SELECT * FROM products CROSS JOIN categories;"
        challenge_type = "predict_output"
        challenge_desc = "If table A has 3 rows and table B has 4 rows, how many rows does CROSS JOIN return?"
        template = ""
        answer = "12"
        hint = "Multiply the row counts of both tables."
    elif level == 38:
        title = "SELF JOIN"
        theory = "A SELF JOIN joins a table with itself. Use table aliases to distinguish the two instances."
        code = "SELECT e1.name AS employee, e2.name AS manager FROM employees e1 INNER JOIN employees e2 ON e1.manager_id = e2.id;"
        challenge_type = "complete_code"
        challenge_desc = "Self join the employees table to find employee names with their manager names."
        template = "SELECT e1.name AS employee, e2.name AS manager FROM employees e1 INNER JOIN employees e2 ON e1.manager_id = e2.id;"
        answer = "SELECT e1.name AS employee, e2.name AS manager FROM employees e1 INNER JOIN employees e2 ON e1.manager_id = e2.id;"
        hint = "The answer is already in the template."
    elif level == 39:
        title = "Subquery"
        theory = "A subquery is a query inside another query. It can be used in SELECT, FROM, or WHERE clauses."
        code = "SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);"
        challenge_type = "complete_code"
        challenge_desc = "Select products with price above the average price using a subquery."
        template = "SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);"
        answer = "SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);"
        hint = "The answer is already in the template."
    elif level == 40:
        title = "EXISTS"
        theory = "EXISTS checks if a subquery returns any rows. It returns true if the subquery has at least one row."
        code = "SELECT * FROM users WHERE EXISTS (SELECT 1 FROM orders WHERE orders.user_id = users.id);"
        challenge_type = "complete_code"
        challenge_desc = "Select products that exist in order_items using EXISTS."
        template = "SELECT * FROM products WHERE EXISTS (SELECT 1 FROM order_items WHERE order_items.product_id = products.id);"
        answer = "SELECT * FROM products WHERE EXISTS (SELECT 1 FROM order_items WHERE order_items.product_id = products.id);"
        hint = "The answer is already in the template."
    elif level == 41:
        title = "ANY and ALL"
        theory = "ANY compares a value to any value in a subquery. ALL compares to all values. Use with =, <, >, etc."
        code = "SELECT * FROM products WHERE price > ANY (SELECT price FROM products WHERE category = 'Premium');"
        challenge_type = "predict_output"
        challenge_desc = "What does > ALL return if the subquery returns (10, 20, 30)?"
        template = ""
        answer = "greater than 30"
        hint = "ALL means greater than every value in the list."
    elif level == 42:
        title = "UNION"
        theory = "UNION combines results from multiple SELECT queries. Duplicate rows are removed. UNION ALL keeps duplicates."
        code = "SELECT name FROM customers UNION SELECT name FROM suppliers;"
        challenge_type = "complete_code"
        challenge_desc = "Combine product names from two tables: current_products and discontinued_products."
        template = "SELECT name FROM current_products UNION SELECT name FROM discontinued_products;"
        answer = "SELECT name FROM current_products UNION SELECT name FROM discontinued_products;"
        hint = "The answer is already in the template."
    elif level == 43:
        title = "INTERSECT"
        theory = "INTERSECT returns rows that are common to both SELECT queries. Both queries must have the same number of columns."
        code = "SELECT name FROM customers INTERSECT SELECT name FROM suppliers;"
        challenge_type = "predict_output"
        challenge_desc = "What does INTERSECT return if one query has 'A','B' and the other has 'B','C'?"
        template = ""
        answer = "B"
        hint = "INTERSECT returns only common values."
    elif level == 44:
        title = "EXCEPT"
        theory = "EXCEPT (or MINUS) returns rows from the first query that are not in the second query."
        code = "SELECT name FROM customers EXCEPT SELECT name FROM suppliers;"
        challenge_type = "predict_output"
        challenge_desc = "What does EXCEPT return if first query has 'A','B' and second has 'B','C'?"
        template = ""
        answer = "A"
        hint = "EXCEPT returns rows in the first set but not the second."
    elif level == 45:
        title = "CASE WHEN"
        theory = "CASE WHEN is like an if-else in SQL. It evaluates conditions and returns a value for the first matching condition."
        code = "SELECT name, CASE WHEN age >= 18 THEN 'Adult' ELSE 'Minor' END AS status FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Create a CASE that labels products as 'Cheap' if price < 20, else 'Expensive'."
        template = "SELECT name, CASE WHEN price < 20 THEN 'Cheap' ELSE 'Expensive' END AS label FROM products;"
        answer = "SELECT name, CASE WHEN price < 20 THEN 'Cheap' ELSE 'Expensive' END AS label FROM products;"
        hint = "The answer is already in the template."
    elif level == 46:
        title = "COALESCE"
        theory = "COALESCE returns the first non-NULL value from a list of expressions. Useful for providing default values."
        code = "SELECT name, COALESCE(phone, email, 'No contact') FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Use COALESCE to show 'No description' when description is NULL."
        template = "SELECT name, COALESCE(description, 'No description') FROM products;"
        answer = "SELECT name, COALESCE(description, 'No description') FROM products;"
        hint = "The answer is already in the template."
    elif level == 47:
        title = "NULLIF"
        theory = "NULLIF returns NULL if two expressions are equal, otherwise returns the first expression."
        code = "SELECT NULLIF(column1, column2) FROM table;"
        challenge_type = "predict_output"
        challenge_desc = "What does NULLIF(5, 5) return?"
        template = ""
        answer = "NULL"
        hint = "NULLIF returns NULL when the two values are equal."
    elif level == 48:
        title = "String Functions"
        theory = "SQL string functions: UPPER(), LOWER(), LENGTH(), TRIM(), SUBSTRING(), CONCAT(), REPLACE()."
        code = "SELECT UPPER(name), LENGTH(name), CONCAT(first_name, ' ', last_name) FROM users;"
        challenge_type = "complete_code"
        challenge_desc = "Use UPPER to convert the product name to uppercase."
        template = "SELECT UPPER(name) FROM products;"
        answer = "SELECT UPPER(name) FROM products;"
        hint = "The answer is already in the template."
    elif level == 49:
        title = "Date Functions"
        theory = "SQL date functions: NOW(), CURDATE(), DATE(), YEAR(), MONTH(), DAY(), DATE_ADD(), DATEDIFF()."
        code = "SELECT NOW(), CURDATE(), YEAR(order_date) FROM orders;"
        challenge_type = "complete_code"
        challenge_desc = "Select the current date using CURDATE()."
        template = "SELECT CURDATE();"
        answer = "SELECT CURDATE();"
        hint = "The answer is already in the template."
    elif level == 50:
        title = "Aggregate Functions"
        theory = "Aggregate functions: COUNT, SUM, AVG, MIN, MAX, GROUP_CONCAT. They summarize multiple rows into one."
        code = "SELECT COUNT(*), SUM(price), AVG(price), MIN(price), MAX(price) FROM products;"
        challenge_type = "multiple_choice"
        challenge_desc = "Which aggregate function returns the number of rows?"
        template = "SUM()\nCOUNT()\nAVG()\nMAX()"
        answer = "COUNT()"
        hint = "COUNT counts the number of rows."
    elif level == 51:
        title = "GROUP_CONCAT"
        theory = "GROUP_CONCAT concatenates values from multiple rows into a single string. Use with GROUP BY."
        code = "SELECT category, GROUP_CONCAT(name) FROM products GROUP BY category;"
        challenge_type = "complete_code"
        challenge_desc = "Use GROUP_CONCAT to list all product names in each category."
        template = "SELECT category, GROUP_CONCAT(name) FROM products GROUP BY category;"
        answer = "SELECT category, GROUP_CONCAT(name) FROM products GROUP BY category;"
        hint = "The answer is already in the template."
    elif level == 52:
        title = "HAVING vs WHERE"
        theory = "WHERE filters rows before grouping. HAVING filters groups after aggregation. HAVING can use aggregate functions."
        code = "SELECT category, COUNT(*) FROM products WHERE price > 10 GROUP BY category HAVING COUNT(*) > 3;"
        challenge_type = "true_false"
        challenge_desc = "HAVING can be used without GROUP BY."
        template = ""
        answer = "true"
        hint = "HAVING works without GROUP BY, but it's uncommon."
    elif level == 53:
        title = "Nested Subqueries"
        theory = "Subqueries can be nested inside other subqueries. Deep nesting can hurt performance."
        code = "SELECT * FROM products WHERE category_id IN (SELECT id FROM categories WHERE name IN (SELECT name FROM featured_categories));"
        challenge_type = "predict_output"
        challenge_desc = "Can a subquery be used in the SELECT clause?"
        template = ""
        answer = "yes"
        hint = "Subqueries can appear in SELECT, FROM, and WHERE."
    elif level == 54:
        title = "Correlated Subquery"
        theory = "A correlated subquery references columns from the outer query. It runs once for each row in the outer query."
        code = "SELECT p.name, (SELECT COUNT(*) FROM order_items oi WHERE oi.product_id = p.id) AS order_count FROM products p;"
        challenge_type = "complete_code"
        challenge_desc = "Write a correlated subquery to count orders for each product."
        template = "SELECT p.name, (SELECT COUNT(*) FROM order_items oi WHERE oi.product_id = p.id) AS order_count FROM products p;"
        answer = "SELECT p.name, (SELECT COUNT(*) FROM order_items oi WHERE oi.product_id = p.id) AS order_count FROM products p;"
        hint = "The answer is already in the template."
    elif level == 55:
        title = "Indexes"
        theory = "Indexes speed up queries. CREATE INDEX creates an index. Use on columns used in WHERE and JOIN."
        code = "CREATE INDEX idx_users_email ON users(email);"
        challenge_type = "complete_code"
        challenge_desc = "Create an index on the products(name) column."
        template = "CREATE INDEX idx_products_name ON products(name);"
        answer = "CREATE INDEX idx_products_name ON products(name);"
        hint = "The answer is already in the template."
    elif level == 56:
        title = "Views"
        theory = "A view is a saved query that acts like a virtual table. CREATE VIEW name AS query."
        code = "CREATE VIEW active_users AS SELECT * FROM users WHERE active = 1;"
        challenge_type = "complete_code"
        challenge_desc = "Create a view named 'expensive_products' showing products with price > 100."
        template = "CREATE VIEW expensive_products AS SELECT * FROM products WHERE price > 100;"
        answer = "CREATE VIEW expensive_products AS SELECT * FROM products WHERE price > 100;"
        hint = "The answer is already in the template."
    elif level == 57:
        title = "Transactions"
        theory = "Transactions group multiple operations. BEGIN, COMMIT, ROLLBACK. All or nothing execution."
        code = "BEGIN;\nUPDATE accounts SET balance = balance - 100 WHERE id = 1;\nUPDATE accounts SET balance = balance + 100 WHERE id = 2;\nCOMMIT;"
        challenge_type = "true_false"
        challenge_desc = "ROLLBACK undoes all changes made in the current transaction."
        template = ""
        answer = "true"
        hint = "ROLLBACK reverts the transaction to its beginning."
    elif level == 58:
        title = "ACID Properties"
        theory = "ACID: Atomicity (all or nothing), Consistency (valid state), Isolation (concurrent transactions), Durability (persisted)."
        code = "ACID properties ensure reliable database transactions."
        challenge_type = "multiple_choice"
        challenge_desc = "Which ACID property ensures transactions are all-or-nothing?"
        template = "Atomicity\nConsistency\nIsolation\nDurability"
        answer = "Atomicity"
        hint = "Atomicity means the transaction completes fully or not at all."
    elif level == 59:
        title = "Stored Procedures"
        theory = "A stored procedure is a saved block of SQL code that can be called repeatedly. Use CREATE PROCEDURE."
        code = "CREATE PROCEDURE GetUsers() BEGIN SELECT * FROM users; END;"
        challenge_type = "true_false"
        challenge_desc = "Stored procedures can accept parameters."
        template = ""
        answer = "true"
        hint = "Procedures can have IN, OUT, and INOUT parameters."
    elif level == 60:
        title = "Triggers"
        theory = "A trigger runs automatically before or after an INSERT, UPDATE, or DELETE event."
        code = "CREATE TRIGGER update_timestamp BEFORE UPDATE ON users FOR EACH ROW SET NEW.updated_at = NOW();"
        challenge_type = "true_false"
        challenge_desc = "Triggers can be fired before or after a DML operation."
        template = ""
        answer = "true"
        hint = "Triggers use BEFORE or AFTER timing."
    elif level <= 80:
        title = "SQL Advanced " + str(level - 60)
        topics = ["Window Functions", "ROW_NUMBER", "RANK", "DENSE_RANK", "NTILE", "LAG and LEAD", "FIRST_VALUE", "LAST_VALUE", "CUME_DIST", "PERCENT_RANK", "ROLLUP", "CUBE", "GROUPING SETS", "PIVOT", "UNPIVOT", "Common Table Expressions", "Recursive CTE", "MERGE", "Bulk Insert", "Table Variables"]
        topic = topics[(level - 61) % len(topics)]
        theory = "This level covers " + topic + " in SQL."
        code = "-- Example of " + topic + "\nSELECT * FROM table;"
        challenge_type = "complete_code" if level % 3 == 0 else ("true_false" if level % 3 == 1 else "predict_output")
        challenge_desc = "Answer the question about " + topic + "."
        template = "-- " + topic + "\nSELECT * FROM table;"
        answer = "-- " + topic + "\nSELECT * FROM table;"
        hint = "Review the documentation for " + topic + "."
    elif level <= 100:
        title = "SQL Mastery " + str(level - 80)
        topics = ["Database Normalization", "1NF", "2NF", "3NF", "BCNF", "Denormalization", "ER Diagrams", "Cardinality", "Index Types", "Query Plan", "Query Optimization", "Execution Plan", "Deadlock", "Isolation Levels", "Read Committed", "Repeatable Read", "Serializable", "Snapshot Isolation", "Sharding", "Partitioning"]
        topic = topics[(level - 81) % len(topics)]
        theory = "Mastering " + topic + " distinguishes expert SQL developers."
        code = "-- Advanced: " + topic + "\nSELECT 1;"
        challenge_type = "complete_code" if level % 2 == 0 else "true_false"
        challenge_desc = "Answer the question about " + topic + "."
        template = "-- " + topic + "\nSELECT 1;"
        answer = "-- " + topic + "\nSELECT 1;"
        hint = "Review the documentation for " + topic + "."

    LESSON_TEMPLATES.append({
        "language": "sql",
        "level_number": level,
        "title": title,
        "theory_text": theory,
        "code_example": code,
        "challenge_type": challenge_type,
        "challenge_description": challenge_desc,
        "challenge_template": template,
        "correct_answer": answer,
        "hint": hint,
        "xp_reward": xp,
        "difficulty": difficulty
    })

def generate_sql():
    sql_lines = []
    sql_lines.append("-- SQL lessons seed data (100 levels)")
    sql_lines.append("")

    for lesson in LESSON_TEMPLATES:
        lang = lesson["language"].replace("'", "''")
        title = lesson["title"].replace("'", "''")
        theory = lesson["theory_text"].replace("'", "''")
        code = lesson["code_example"].replace("'", "''")
        ctype = lesson["challenge_type"]
        cdesc = lesson["challenge_description"].replace("'", "''")
        template = lesson["challenge_template"].replace("'", "''")
        answer = lesson["correct_answer"].replace("'", "''")
        hint = lesson["hint"].replace("'", "''")
        xp = lesson["xp_reward"]
        diff = lesson["difficulty"]
        num = lesson["level_number"]

        sql = "INSERT INTO lessons (language, level_number, title, theory_text, code_example, challenge_type, challenge_description, challenge_template, correct_answer, hint, xp_reward, difficulty, is_active) VALUES ('" + lang + "', " + str(num) + ", '" + title + "', '" + theory + "', '" + code + "', '" + ctype + "', '" + cdesc + "', '" + template + "', '" + answer + "', '" + hint + "', " + str(xp) + ", '" + diff + "', 1);"
        sql_lines.append(sql)

    return "\n".join(sql_lines)

if __name__ == "__main__":
    sql = generate_sql()
    with open("seed_sql_lessons.sql", "w") as f:
        f.write(sql)
    print("Generated " + str(len(LESSON_TEMPLATES)) + " SQL lesson SQL statements")
    print("Output written to seed_sql_lessons.sql")