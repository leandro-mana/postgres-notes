-- Initialize the postgres_notes database with sample data
-- This script runs automatically when the Docker container starts for the first time

-- ============================================================================
-- Authors table
-- ============================================================================
CREATE TABLE IF NOT EXISTS authors (
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP
);

-- ============================================================================
-- Books table
-- ============================================================================
CREATE TABLE IF NOT EXISTS books (
    book_id SERIAL PRIMARY KEY,
    book_title VARCHAR(200) NOT NULL,
    author_id INT REFERENCES authors(author_id),
    publication_year INT,
    rating NUMERIC(3, 2),
    price NUMERIC(10, 2),
    pages INT
);

-- ============================================================================
-- Categories table
-- ============================================================================
CREATE TABLE IF NOT EXISTS categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

-- ============================================================================
-- Book-Category junction table (many-to-many)
-- ============================================================================
CREATE TABLE IF NOT EXISTS book_categories (
    book_id INT REFERENCES books(book_id),
    category_id INT REFERENCES categories(category_id),
    PRIMARY KEY (book_id, category_id)
);

-- ============================================================================
-- Orders table (for transactional examples)
-- ============================================================================
CREATE TABLE IF NOT EXISTS orders (
    order_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    book_id INT REFERENCES books(book_id),
    quantity INT DEFAULT 1,
    order_date DATE,
    status VARCHAR(20) DEFAULT 'pending'
        CHECK (status IN ('pending', 'shipped', 'delivered', 'cancelled')),
    total_amount NUMERIC(10, 2)
);

-- ============================================================================
-- Employees table (for window function and hierarchy examples)
-- ============================================================================
CREATE TABLE IF NOT EXISTS employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary NUMERIC(10, 2),
    hire_date DATE,
    manager_id INT REFERENCES employees(employee_id)
);

-- ============================================================================
-- Server logs table (for ETL and analytics examples)
-- ============================================================================
CREATE TABLE IF NOT EXISTS server_logs (
    log_id SERIAL PRIMARY KEY,
    event_type VARCHAR(50),
    event_timestamp TIMESTAMPTZ,
    user_id INT,
    endpoint VARCHAR(200),
    response_code INT,
    response_time_ms INT,
    metadata JSONB
);

-- ============================================================================
-- Seed data: Authors
-- ============================================================================
INSERT INTO authors (author_name, country) VALUES
('Stephanie Mitchell', 'USA'),
('Paul Turner', 'UK'),
('Julia Martinez', 'Spain'),
('Rui Machado', 'Portugal'),
('Thomas Brown', 'USA'),
('Ana Garcia', 'Mexico'),
('John Doe', NULL);

-- ============================================================================
-- Seed data: Books
-- ============================================================================
INSERT INTO books (book_title, author_id, publication_year, rating, price, pages) VALUES
('Python Crash Course', 1, 2012, 4.50, 39.99, 544),
('Learning React', 2, 2014, 3.70, 44.99, 350),
('Hands-On Machine Learning', 3, 2017, 4.90, 59.99, 856),
('JavaScript: The Good Parts', 4, 2015, 2.80, 29.99, 176),
('Data Science for Business', 5, 2019, 4.20, 49.99, 414),
('Advanced Python Patterns', 1, 2020, 4.70, 54.99, 620),
('SQL Performance Explained', 6, 2021, 4.80, 34.99, 204),
('Clean Code', 2, 2008, 4.60, 39.99, 464),
('Designing Data-Intensive Apps', 3, 2022, 4.95, 54.99, 616),
('The Pragmatic Programmer', 5, 2023, 4.30, 49.99, 352);

-- ============================================================================
-- Seed data: Categories
-- ============================================================================
INSERT INTO categories (category_name) VALUES
('Programming'),
('Machine Learning'),
('Data Science'),
('Software Engineering'),
('Algorithms'),
('Computer Science'),
('Databases'),
('Web Development');

-- ============================================================================
-- Seed data: Book-Categories
-- ============================================================================
INSERT INTO book_categories (book_id, category_id) VALUES
(1, 1), (1, 6),
(2, 1), (2, 8),
(3, 2), (3, 3),
(4, 1), (4, 8),
(5, 3), (5, 6),
(6, 1), (6, 4),
(7, 7), (7, 4),
(8, 4),
(9, 7), (9, 3), (9, 6),
(10, 4), (10, 1);

-- ============================================================================
-- Seed data: Orders
-- ============================================================================
INSERT INTO orders (customer_name, book_id, quantity, order_date, status, total_amount) VALUES
('Alice Johnson', 1, 2, '2024-01-15', 'delivered', 79.98),
('Bob Smith', 3, 1, '2024-01-20', 'delivered', 59.99),
('Charlie Davis', 5, 1, '2024-02-01', 'shipped', 49.99),
('Alice Johnson', 7, 1, '2024-02-10', 'shipped', 34.99),
('Diana Wilson', 2, 3, '2024-02-15', 'pending', 134.97),
('Bob Smith', 9, 1, '2024-03-01', 'pending', 54.99),
('Eve Martinez', 1, 1, '2024-03-05', 'delivered', 39.99),
('Frank Lee', 8, 2, '2024-03-10', 'cancelled', 79.98),
('Alice Johnson', 10, 1, '2024-03-15', 'delivered', 49.99),
('Charlie Davis', 6, 1, '2024-03-20', 'shipped', 54.99),
('Bob Smith', 4, 1, '2024-04-01', 'delivered', 29.99),
('Diana Wilson', 3, 1, '2024-04-10', 'pending', 59.99),
('George Wang', 9, 2, '2024-04-15', 'shipped', 109.98),
('Eve Martinez', 5, 1, '2024-04-20', 'delivered', 49.99),
('Alice Johnson', 2, 1, '2024-05-01', 'pending', 44.99);

-- ============================================================================
-- Seed data: Employees
-- ============================================================================
INSERT INTO employees (first_name, last_name, department, salary, hire_date, manager_id) VALUES
('Sarah', 'Connor', 'Engineering', 150000.00, '2018-03-15', NULL),
('James', 'Kirk', 'Engineering', 130000.00, '2019-06-01', 1),
('Nyota', 'Uhura', 'Engineering', 125000.00, '2020-01-10', 1),
('Leonard', 'McCoy', 'Data', 140000.00, '2018-08-20', NULL),
('Pavel', 'Chekov', 'Data', 110000.00, '2021-03-01', 4),
('Hikaru', 'Sulu', 'Data', 120000.00, '2019-11-15', 4),
('Montgomery', 'Scott', 'Engineering', 135000.00, '2019-01-20', 1),
('Christine', 'Chapel', 'Marketing', 95000.00, '2022-05-01', NULL),
('Janice', 'Rand', 'Marketing', 85000.00, '2023-02-15', 8),
('Spock', 'Vulcan', 'Data', 145000.00, '2018-06-01', 4);

-- ============================================================================
-- Seed data: Server Logs
-- ============================================================================
INSERT INTO server_logs (event_type, event_timestamp, user_id, endpoint, response_code, response_time_ms, metadata) VALUES
('page_view', '2024-01-15 10:30:00+00', 1, '/api/books', 200, 45, '{"browser": "Chrome", "os": "macOS"}'),
('page_view', '2024-01-15 10:31:00+00', 1, '/api/books/1', 200, 32, '{"browser": "Chrome", "os": "macOS"}'),
('api_call', '2024-01-15 10:32:00+00', 2, '/api/orders', 201, 120, '{"method": "POST", "items": 2}'),
('error', '2024-01-15 10:33:00+00', 3, '/api/checkout', 500, 5000, '{"error": "timeout", "retry": true}'),
('page_view', '2024-01-15 11:00:00+00', 2, '/api/categories', 200, 28, '{"browser": "Firefox", "os": "Linux"}'),
('api_call', '2024-01-15 11:05:00+00', 1, '/api/orders', 201, 95, '{"method": "POST", "items": 1}'),
('page_view', '2024-01-16 09:00:00+00', 4, '/api/books', 200, 50, '{"browser": "Safari", "os": "iOS"}'),
('error', '2024-01-16 09:01:00+00', 4, '/api/books/999', 404, 15, '{"error": "not_found"}'),
('api_call', '2024-01-16 14:30:00+00', 5, '/api/orders', 201, 88, '{"method": "POST", "items": 3}'),
('page_view', '2024-01-17 08:00:00+00', 1, '/api/books', 200, 42, '{"browser": "Chrome", "os": "macOS"}');
