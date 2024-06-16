CREATE TABLE IF NOT EXISTS rentals_v2 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name TEXT NOT NULL,
    customer_phone_number TEXT NOT NULL,
    movie_id INTEGER NOT NULL REFERENCES movies_v3(id),
    rental_date TEXT NOT NULL,
    due_date TEXT NOT NULL,
    return_date TEXT,
    price INTEGER NOT NULL,
    UNIQUE(customer_name, movie_id, rental_date)
);


INSERT INTO rentals_v2 (customer_name, customer_phone_number, movie_id, rental_date, due_date, return_date, price) VALUES
('Alice', '123-456-7890', 10, '2024-06-21', '2024-06-22', NULL, 1000),
('Bob', '345-456-7890', 4, '2024-06-21', '2024-06-22', NULL, 1000),
('Chris', '456-456-7890', 2, '2024-06-22', '2024-06-23', NULL, 1000),
('David', '567-456-7890', 1, '2024-06-23', '2024-06-24', NULL, 1000),
('Emma', '789-456-7890', 8, '2024-06-25', '2024-06-26', NULL, 1000);
