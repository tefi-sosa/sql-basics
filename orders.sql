-- #1 --
CREATE TABLE orders ( 
    order_id SERIAL PRIMARY KEY, 
    person_id INTEGER, 
    product_name VARCHAR(200), 
    product_price NUMERIC, 
    quantity INTEGER );

-- #2 --
INSERT INTO orders ( person_id, product_name, product_price, quantity ) 
VALUES ( 0, 'Milanesa gratinada', 12.50, 1 ), 
( 1, 'Cheese Ravioli', 11, 2 ),
( 0, 'Fries', 5.00, 2 ),
( 2, 'Margarita Pizza', 10, 3 ),
( 3, 'Lomito', 12.80, 1 );

-- #3 --
SELECT *
FROM orders;

-- #4 --
SELECT SUM(quantity) 
FROM orders;

-- #6 --
SELECT SUM(product_price * quantity)
FROM orders
GROUP BY person_id;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0;
