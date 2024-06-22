-- Top 3 highly rated Sci-Fi movies in your store.
SELECT movies_v2.title
FROM movies_v2, genres
  JOIN movies_genres
    ON movies_v2.id = movies_genres.movie_id
    AND genres.id = movies_genres.genre_id
WHERE genres.name = 'Sci-Fi'
ORDER BY rating DESC LIMIT 3;

-- Christopher Nolan's movies in your store.
SELECT movies_v2.title
FROM movies_v2
  JOIN directors
  ON movies_v2.director_id = directors.id
WHERE directors.name = 'Christopher Nolan';
