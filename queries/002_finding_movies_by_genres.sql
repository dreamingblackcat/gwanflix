-- What movies are there in your store that are of genre "Romance"?
SELECT * FROM movies_v2  WHERE genres = "Romance";

-- Are there any romatic movies directed by "Christopher Nolan" in your store?
SELECT * FROM movies_v2  WHERE genres = "Thriller" AND director = "Christopher Nolan";

-- Are there any Sci-Fi movies directed by "Christopher Nolan" in your store?
SELECT * FROM movies_v2  WHERE genres = "Sci-Fi" AND director = "Christopher Nolan";
