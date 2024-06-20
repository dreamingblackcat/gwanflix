-- What movies are there in your store that are of genre 'Romance'?
SELECT title, genres FROM movies WHERE genres LIKE '%Romance%';

-- Are there any romatic movies directed by 'Christopher Nolan' in your store?
SELECT title, genres FROM movies WHERE genres LIKE '%Thriller%' AND director = 'Christopher Nolan';

-- Are there any Sci-Fi movies directed by 'Christopher Nolan' in your store?
SELECT title, genres FROM movies WHERE genres LIKE '%Sci-Fi%' AND director = 'Christopher Nolan';

-- What movies have rating greater than 8.5 in your store?
SELECT title, rating FROM movies WHERE rating > 8.5;

-- What movies are there in your store that have 'Sci-Fi' or 'Romance' genres?
SELECT title, genres FROM movies WHERE genres LIKE '%Sci-Fi%' OR genres LIKE '%Romance%';
