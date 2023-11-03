-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    location VARCHAR(255)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create Products table with a foreign key to Categories
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10, 2),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);


-- Create Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert sample data into Customers table
INSERT INTO Customers (customer_id, name, email, location)
VALUES
    (1, 'John Doe', 'johndoe@example.com', 'New York'),
    (2, 'Jane Smith', 'janesmith@example.com', 'Los Angeles'),
    (3, 'Bob Johnson', 'bjohnson@example.com', 'Chicago');

-- Insert sample data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2023-10-15', 100.50),
    (2, 2, '2023-10-16', 75.25),
    (3, 3, '2023-10-17', 120.00);

-- Insert sample data into Categories table
INSERT INTO Categories (category_id, name)
VALUES
    (1, 'Widgets'),
    (2, 'Gadgets'),
    (3, 'Tools');

-- Insert sample data into Products table
INSERT INTO Products (product_id, name, description, price, category_id)
VALUES
    (1, 'Widget A', 'High-quality widget', 15.99, 1),
    (2, 'Gadget B', 'Versatile gadget', 29.99, 2),
    (3, 'Tool C', 'Useful tool', 12.49, 3);

-- Insert sample data into Order_Items table
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
    (1, 1, 1, 5, 15.99),
    (2, 1, 2, 2, 29.99),
    (3, 2, 3, 3, 12.49);
