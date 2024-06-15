CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL UNIQUE,
    director TEXT NOT NULL,
    actors_and_actresses TEXT NOT NULL
);

INSERT INTO movies (title, director, actors_and_actresses) VALUES
('The Shawshank Redemption', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton'),
('The Godfather', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan'),
('The Dark Knight', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Aaron Eckhart'),
('The Lord of the Rings: The Return of the King', 'Peter Jackson', 'Elijah Wood, Viggo Mortensen, Ian McKellen'),
('Pulp Fiction', 'Quentin Tarantino', 'John Travolta, Uma Thurman, Samuel L. Jackson'),
('Forrest Gump', 'Robert Zemeckis', 'Tom Hanks, Robin Wright, Gary Sinise'),
('The Matrix', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss'),
('Titanic', 'James Cameron', 'Leonardo DiCaprio, Kate Winslet, Billy Zane'),
('The Notebook', 'Nick Cassavetes', 'Ryan Gosling, Rachel McAdams, James Garner'),
('Pride & Prejudice', 'Joe Wright', 'Keira Knightley, Matthew Macfadyen, Brenda Blethyn'),
('La La Land', 'Damien Chazelle', 'Ryan Gosling, Emma Stone, Rosemarie DeWitt'),
('The Fault in Our Stars', 'Josh Boone', 'Shailene Woodley, Ansel Elgort, Nat Wolff'),
('A Walk to Remember', 'Adam Shankman', 'Mandy Moore, Shane West, Peter Coyote'),
('The Vow', 'Michael Sucsy', 'Rachel McAdams, Channing Tatum, Sam Neill');
