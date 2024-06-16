CREATE TABLE IF NOT EXISTS movies_v3 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL UNIQUE,
    director TEXT NOT NULL,
    actors_and_actresses TEXT NOT NULL,
    genres TEXT NOT NULL,
    rating INTEGER NOT NULL DEFAULT 5
);

INSERT INTO movies_v3 (title, director, actors_and_actresses, genres, rating) VALUES
('The Shawshank Redemption', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', 'Drama', 9),
('The Godfather', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'Crime', 9),
('The Dark Knight', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'Action', 9),
('The Dark Knight Rises', 'Christopher Nolan', 'Christian Bale, Tom Hardy, Anne Hathaway', 'Action', 8),
('Inception', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 'Thriller', 8),
('Interstellar', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 'Sci-Fi', 8),
('Dunkirk', 'Christopher Nolan', 'Fionn Whitehead, Barry Keoghan, Mark Rylance', 'War', 7),
('The Lord of the Rings: The Return of the King', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen', 'Fantasy', 9),
('Pulp Fiction', 'Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson', 'Crime', 8),
('Forrest Gump', 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise', 'Drama', 8),
('The Matrix', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 'Action', 8),
('Titanic', 'James Cameron', 'Leonardo DiCaprio, Kate Winslet, Billy Zane', 'Romance', 7),
('The Notebook', 'Nick Cassavetes', 'Ryan Gosling, Rachel McAdams, James Garner', 'Romance', 7),
('Pride & Prejudice', 'Joe Wright', 'Keira Knightley, Matthew Macfadyen, Brenda Blethyn', 'Romance', 7),
('La La Land', 'Damien Chazelle', 'Ryan Gosling, Emma Stone, Rosemarie DeWitt', 'Romance', 8),
('The Fault in Our Stars', 'Josh Boone', 'Shailene Woodley, Ansel Elgort, Nat Wolff', 'Romance', 7),
('A Walk to Remember', 'Adam Shankman', 'Mandy Moore, Shane West, Peter Coyote', 'Romance', 7),
('The Vow', 'Michael Sucsy', 'Rachel McAdams, Channing Tatum, Sam Neill', 'Romance', 7);
