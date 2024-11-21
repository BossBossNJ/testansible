-- Initialize the consumer table with 10 rows
CREATE TABLE consumer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(150)
);

-- Insert sample data into consumer table
INSERT INTO consumer (name, email, phone, address) VALUES
    ('Alice Smith', 'alice@example.com', '123-456-7890', '123 Main St, Springfield'),
    ('Bob Johnson', 'bob@example.com', '234-567-8901', '456 Elm St, Springfield'),
    ('Carol Williams', 'carol@example.com', '345-678-9012', '789 Maple Ave, Springfield'),
    ('David Brown', 'david@example.com', '456-789-0123', '101 Oak St, Springfield'),
    ('Eve Davis', 'eve@example.com', '567-890-1234', '202 Pine St, Springfield'),
    ('Frank Thomas', 'frank@example.com', '678-901-2345', '303 Birch St, Springfield'),
    ('Grace Lee', 'grace@example.com', '789-012-3456', '404 Cedar St, Springfield'),
    ('Henry Wilson', 'henry@example.com', '890-123-4567', '505 Walnut St, Springfield'),
    ('Isabella Miller', 'isabella@example.com', '901-234-5678', '606 Ash St, Springfield'),
    ('Jack Moore', 'jack@example.com', '012-345-6789', '707 Cherry St, Springfield');


-- Create orders table with 10 rows
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    consumer_id INTEGER REFERENCES consumer(id),
    order_date DATE,
    total_amount NUMERIC(10, 2)
);

-- Insert sample data into orders table
INSERT INTO orders (consumer_id, order_date, total_amount) VALUES
    (1, '2024-01-10', 150.75),
    (2, '2024-02-15', 250.00),
    (3, '2024-03-20', 175.50),
    (4, '2024-04-25', 80.00),
    (5, '2024-05-30', 300.25),
    (6, '2024-06-10', 450.00),
    (7, '2024-07-15', 220.35),
    (8, '2024-08-20', 190.50),
    (9, '2024-09-25', 340.00),
    (10, '2024-10-30', 510.75);


-- Create product table with 10 rows
CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    price NUMERIC(10, 2)
);

-- Insert sample data into product table
INSERT INTO product (name, price) VALUES
    ('Laptop', 999.99),
    ('Smartphone', 699.99),
    ('Tablet', 299.99),
    ('Headphones', 199.99),
    ('Smartwatch', 149.99),
    ('Monitor', 249.99),
    ('Keyboard', 79.99),
    ('Mouse', 49.99),
    ('Printer', 129.99),
    ('External Hard Drive', 89.99);
