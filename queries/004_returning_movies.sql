-- Alice returned her rental of "Pride & Prejudice" on time.
UPDATE rentals SET return_date = '2024-06-22' WHERE id = 1;

-- Bob returned his rental of "The Lord of the Rings: The Return of the King" on time.
UPDATE rentals SET return_date = '2024-06-22' WHERE id = 2;

-- Chris returned his rental of "The Godfather" one day late.
UPDATE rentals SET return_date = DATE(due_date, '+1 day') WHERE id = 3;

-- Get rentals made by Emma
SELECT * FROM rentals WHERE customer_name = 'Emma';

-- Emma returned her rental back on the same day she rented it because she changed her mind.
DELETE FROM rentals WHERE id = 5;

-- Rentals made after 2024-06-22
SELECT * FROM rentals WHERE rental_date > '2024-06-22';

-- Rentals due on today
SELECT * FROM rentals WHERE DATE(due_date) >= DATE('now');

-- Rentals due on today and not returned yet
SELECT * FROM rentals WHERE DATE(due_date) >= DATE('now') AND return_date IS NULL;

-- Extend the due date for the rental of "The Godfather" by one day
UPDATE rentals SET due_date = DATE(due_date, '+1 day') WHERE movie_id = 2;


-- Joining movies and rentals to get the movie title and the customer name
SELECT movies.title, rentals.customer_name FROM movies JOIN rentals ON movies.id = rentals.movie_id;

-- Movies already rented by Alice
SELECT movies.title FROM movies JOIN rentals ON movies.id = rentals.movie_id WHERE rentals.customer_name = 'Alice';

-- Top drama movies recommended for Alice
SELECT movies.title FROM movies WHERE genres = 'Drama' AND id NOT IN (SELECT movie_id FROM rentals WHERE customer_name = 'Alice') ORDER BY rating DESC LIMIT 3;
