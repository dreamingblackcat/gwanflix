-- Give me highly rated romantic movies in your store.
SELECT * FROM movies  WHERE genres = 'Romance' ORDER BY rating DESC;

-- Give me top 3 highly rated Sci-Fi movies in your store.
SELECT * FROM movies  WHERE genres = 'Romance' ORDER BY rating DESC LIMIT 3;

-- I want to show all movies in a catalog one page at a time with 5 movies per page.

-- Give me the first page of movies in your store.
SELECT * FROM movies LIMIT 5;

-- Give me the second page of movies in your store.
SELECT * FROM movies LIMIT 5 OFFSET 5;

-- Give me the third page of movies in your store.
SELECT * FROM movies LIMIT 5 OFFSET 10;
