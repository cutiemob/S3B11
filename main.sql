CREATE TABLE Product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    quantity INT NOT NULL, 
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Product (name, category, quantity, price)
VALUES
    ('Smart Watch', 'Electronics', 50, 199.99),
    ('Chocolate', 'Confectionery', 100, 2.50),
    ('Laptop', 'Electronics', 20, 999.99),
    ('Candy', 'Confectionery', 200, 0.99),
    ('Smartphone', 'Electronics', 35, 499.99),
    ('Cake', 'Confectionery', 80, 24.99);

SELECT * FROM Product;
SELECT * FROM Product WHERE price = (SELECT MIN(price) FROM Product);
SELECT * FROM Product WHERE category = 'Confectionery';
UPDATE Product SET price = 10.99 WHERE id = 1;
