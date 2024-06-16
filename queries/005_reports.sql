-- How many rentals we have in total?
SELECT COUNT(*) AS total FROM rentals;

-- How many rentals we have in total for the movie 10?
SELECT COUNT(*) AS total FROM rentals WHERE movie_id = 10;

-- How many rentals we have in total for each movie rented?
SELECT movie_id, COUNT(*) AS total FROM rentals GROUP BY movie_id;

-- How many rentals we have in total for each movie rented after 2024-06-21?
SELECT movie_id, COUNT(*) AS total, rental_date FROM rentals WHERE rental_date > '2024-06-21' GROUP BY movie_id ORDER BY rental_date;

-- What is the total number of rentals made by each customer?
SELECT customer_name, COUNT(*) AS total FROM rentals GROUP BY customer_name  ORDER BY total DESC, customer_name DESC;

-- What is the earliest rental date for each customer?
SELECT customer_name, MIN(rental_date) AS earliest_rental_date FROM rentals GROUP BY customer_name ORDER BY earliest_rental_date;

-- What is the latest rental date for each customer?
SELECT customer_name, MAX(rental_date) AS latest_rental_date FROM rentals GROUP BY customer_name ORDER BY latest_rental_date;

-- How long has it been since the customer's last rental?
SELECT customer_name, MAX(rental_date) AS latest_rental_date, DATE('now') AS today, DATE(DATE('now')) - DATE(MAX(rental_date)) AS days_since_last_rental FROM rentals GROUP BY customer_name ORDER BY days_since_last_rental DESC;

-- What is average rental price for each customer?
SELECT customer_name, AVG(price) AS average_rental_price FROM rentals GROUP BY customer_name ORDER BY average_rental_price DESC;
