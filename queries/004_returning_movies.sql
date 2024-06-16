-- Alice returned her rental of "Pride & Prejudice" on time.
UPDATE rentals SET return_date = '2024-06-22' WHERE id = 1;

-- Bob returned his rental of "The Lord of the Rings: The Return of the King" on time.
UPDATE rentals SET return_date = '2024-06-22' WHERE id = 2;

-- Chris returned his rental of "The Godfather" one day late.
UPDATE rentals SET return_date = '2024-06-24' WHERE id = 3;

-- Get rentals made by Emma
SELECT * FROM rentals WHERE customer_name = 'Emma';

-- Emma returned her rental back on the same day she rented it because she changed her mind.
DELETE FROM rentals WHERE id = 5;

-- Renatls made after 2024-06-22
SELECT * FROM rentals WHERE rental_date > '2024-06-22';

-- Renatls made after 2024-06-22 with DATE function
SELECT * FROM rentals WHERE DATE(rental_date) > DATE('2024-06-22');


-- Joining movies and rentals to get the movie title and the customer name
SELECT movies_v4.title, rentals.customer_name FROM movies_v4 JOIN rentals ON movies_v4.id = rentals.movie_id;

-- Movies already rented by Alice
SELECT movies_v4.title FROM movies_v4 JOIN rentals ON movies_v4.id = rentals.movie_id WHERE rentals.customer_name = 'Alice';

-- Top drama movies recommended for Alice
SELECT movies_v4.title FROM movies_v4 WHERE genres = 'Drama' AND id NOT IN (SELECT movie_id FROM rentals WHERE customer_name = 'Alice') ORDER BY rating DESC LIMIT 3;
