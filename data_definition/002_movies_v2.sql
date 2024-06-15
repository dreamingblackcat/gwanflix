CREATE TABLE IF NOT EXISTS movies_v2 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    director TEXT NOT NULL,
    actors_and_actresses TEXT NOT NULL,
    genres TEXT NOT NULL
);

INSERT INTO movies_v2 (title, director, actors_and_actresses, genres) VALUES
('The Shawshank Redemption', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', 'Drama'),
('The Godfather', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'Crime'),
('The Dark Knight', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'Action'),
('The Dark Knight Rises', 'Christopher Nolan', 'Christian Bale, Tom Hardy, Anne Hathaway', 'Action'),
('Inception', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 'Thriller'),
('Interstellar', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway, Jessica Chastain', 'Sci-Fi'),
('Dunkirk', 'Christopher Nolan', 'Fionn Whitehead, Barry Keoghan, Mark Rylance', 'War'),
('The Lord of the Rings: The Return of the King', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen', 'Fantasy'),
('Pulp Fiction', 'Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson', 'Crime'),
('Forrest Gump', 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise', 'Drama'),
('The Matrix', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 'Action'),
('Titanic', 'James Cameron', 'Leonardo DiCaprio, Kate Winslet, Billy Zane', 'Romance'),
('The Notebook', 'Nick Cassavetes', 'Ryan Gosling, Rachel McAdams, James Garner', 'Romance'),
('Pride & Prejudice', 'Joe Wright', 'Keira Knightley, Matthew Macfadyen, Brenda Blethyn', 'Romance'),
('La La Land', 'Damien Chazelle', 'Ryan Gosling, Emma Stone, Rosemarie DeWitt', 'Romance'),
('The Fault in Our Stars', 'Josh Boone', 'Shailene Woodley, Ansel Elgort, Nat Wolff', 'Romance'),
('A Walk to Remember', 'Adam Shankman', 'Mandy Moore, Shane West, Peter Coyote', 'Romance'),
('The Vow', 'Michael Sucsy', 'Rachel McAdams, Channing Tatum, Sam Neill', 'Romance');
