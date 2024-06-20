CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL UNIQUE,
    director TEXT NOT NULL,
    genres TEXT NOT NULL,
    rating REAL NOT NULL,
    year INTEGER NOT NULL
);

INSERT INTO movies (title, director, genres, rating, year)
VALUES ('The Shawshank Redemption', 'Frank Darabont', 'Drama', 9.3, 1994),
       ('The Godfather', 'Francis Ford Coppola', 'Crime, Drama', 9.2, 1972),
       ('The Dark Knight', 'Christopher Nolan', 'Action, Crime, Drama', 9.0, 2008),
       ('The Lord of the Rings: The Return of the King', 'Peter Jackson', 'Adventure, Drama, Fantasy', 8.9, 2003),
       ('Pulp Fiction', 'Quentin Tarantino', 'Crime, Drama', 8.9, 1994),
       ('Forrest Gump', 'Robert Zemeckis', 'Drama, Romance', 8.8, 1994),
       ('Inception', 'Christopher Nolan', 'Action, Adventure, Sci-Fi', 8.8, 2010),
       ('The Lord of the Rings: The Fellowship of the Ring', 'Peter Jackson', 'Adventure, Drama, Fantasy', 8.8, 2001),
       ('The Lord of the Rings: The Two Towers', 'Peter Jackson', 'Adventure, Drama, Fantasy', 8.7, 2002),
       ('The Matrix', 'Lana Wachowski, Lilly Wachowski', 'Action, Sci-Fi', 8.7, 1999),
       ('Goodfellas', 'Martin Scorsese', 'Biography, Crime, Drama', 8.7, 1990),
       ('The Godfather: Part II', 'Francis Ford Coppola', 'Crime, Drama', 9.0, 1974),
       ('Titanic', 'James Cameron', 'Romance', 8.0, 1997);
