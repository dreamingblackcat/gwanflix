-- has one <-> belongs to
--------------------------------
-- A customer has a phone number.
-- A phone number belongs to a customer.

-- has many <-> belongs to
--------------------------------
-- A director has many movies he directed.
-- A movie belongs to a director that directed it.


-- has and belongs to many
--------------------------------
-- A movie has many actors and actresses.
-- An actor or actress has many movies he or she performed in.
-- A movie has many genres.
-- A genre has many movies.

DROP TABLE IF EXISTS movies_v2;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movies_actors;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS movies_genres;


CREATE TABLE IF NOT EXISTS movies_v2 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    director_id INTEGER NOT NULL REFERENCES directors(id),
    rating REAL NOT NULL
);

CREATE TABLE IF NOT EXISTS directors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- JOIN TABLE for movies and actors
CREATE TABLE IF NOT EXISTS movies_actors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER NOT NULL REFERENCES movies_v2(id),
    actor_id INTEGER NOT NULL REFERENCES actors(id),
    role TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS genres (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- JOIN TABLE for movies and genres
CREATE TABLE IF NOT EXISTS movies_genres (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movie_id INTEGER NOT NULL REFERENCES movies_v2(id),
    genre_id INTEGER NOT NULL REFERENCES genres(id)
);


INSERT INTO directors (name) VALUES
('Frank Darabont'),
('Francis Ford Coppola'),
('Christopher Nolan'),
('Peter Jackson'),
('Quentin Tarantino'),
('Robert Zemeckis'),
('Lana Wachowski'),
('Lilly Wachowski'),
('James Cameron'),
('Nick Cassavetes'),
('Joe Wright'),
('Damien Chazelle'),
('Josh Boone'),
('Adam Shankman'),
('Michael Sucsy');

INSERT INTO movies_v2 (title, director_id, rating) VALUES
('The Shawshank Redemption', 1, 9),
('The Godfather', 2, 9),
('The Dark Knight', 3, 9),
('The Dark Knight Rises', 3, 8),
('Inception', 3, 8),
('Interstellar', 3, 8),
('Dunkirk', 3, 7),
('The Lord of the Rings: The Return of the King', 4, 9),
('Pulp Fiction', 5, 8),
('Forrest Gump', 6, 8),
('The Matrix', 7, 8),
('Titanic', 8, 7),
('The Notebook', 9, 7),
('Pride & Prejudice', 10, 7),
('La La Land', 11, 8),
('The Fault in Our Stars', 12, 7),
('A Walk to Remember', 13, 7),
('The Vow', 14, 7);

INSERT INTO actors (name) VALUES
('Tim Robbins'),
('Morgan Freeman'),
('Bob Gunton'),
('Marlon Brando'),
('Al Pacino'),
('James Caan'),
('Christian Bale'),
('Heath Ledger'),
('Aaron Eckhart'),
('Leonardo DiCaprio'),
('Joseph Gordon-Levitt'),
('Ellen Page'),
('Matthew McConaughey'),
('Anne Hathaway'),
('Jessica Chastain'),
('Fionn Whitehead'),
('Barry Keoghan'),
('Mark Rylance'),
('Elijah Wood'),
('Viggo Mortensen'),
('Ian McKellen'),
('John Travolta'),
('Uma Thurman'),
('Samuel L. Jackson'),
('Tom Hanks'),
('Robin Wright'),
('Gary Sinise'),
('Keanu Reeves'),
('Laurence Fishburne'),
('Carrie-Anne Moss'),
('Kate Winslet'),
('Billy Zane'),
('Rachel McAdams'),
('Channing Tatum'),
('Sam Neill'),
('Shailene Woodley'),
('Ansel Elgort'),
('Nat Wolff'),
('Mandy Moore'),
('Shane West'),
('Peter Coyote'),
('Ryan Gosling'),
('Emma Stone'),
('Rosemarie DeWitt'),
('Keira Knightley'),
('Matthew Macfadyen'),
('Brenda Blethyn');

INSERT INTO movies_actors (movie_id, actor_id, role) VALUES
(1, 1, 'Andy Dufresne'),
(1, 2, 'Ellis Boyd "Red" Redding'),
(1, 3, 'Warden Norton'),
(2, 4, 'Vito Corleone'),
(2, 5, 'Michael Corleone'),
(2, 6, 'Sonny Corleone'),
(3, 7, 'Bruce Wayne / Batman'),
(3, 8, 'Joker'),
(3, 9, 'Harvey Dent / Two-Face'),
(4, 7, 'Bruce Wayne / Batman'),
(4, 10, 'Bane'),
(4, 11, 'Selina Kyle / Catwoman'),
(5, 10, 'Dom Cobb'),
(5, 11, 'Arthur'),
(5, 12, 'Ariadne'),
(6, 13, 'Cooper'),
(6, 14, 'Brand'),
(6, 15, 'Murph'),
(7, 16, 'Tommy'),
(7, 17, 'George'),
(7, 18, 'Mr. Dawson'),
(8, 19, 'Frodo Baggins'),
(8, 20, 'Aragorn'),
(8, 21, 'Gandalf'),
(9, 22, 'Vincent Vega'),
(9, 23, 'Mia Wallace'),
(9, 24, 'Jules Winnfield'),
(10, 25, 'Forrest Gump'),
(10, 26, 'Jenny Curran'),
(10, 27, 'Lieutenant Dan Taylor'),
(11, 28, 'Neo'),
(11, 29, 'Morpheus'),
(11, 30, 'Trinity'),
(12, 31, 'Jack Dawson'),
(12, 32, 'Rose DeWitt Bukater'),
(12, 33, 'Caledon "Cal" Hockley'),
(13, 34, 'Noah Calhoun'),
(13, 35, 'Allie Hamilton'),
(13, 36, 'Reverend Hegbert'),
(14, 37, 'Elizabeth Bennet'),
(14, 38, 'Mr. Darcy'),
(14, 39, 'Mrs. Bennet'),
(15, 40, 'Sebastian Wilder'),
(15, 41, 'Mia Dolan'),
(15, 42, 'Laura Wilder'),
(16, 43, 'Hazel Grace Lancaster'),
(16, 44, 'Augustus Waters'),
(16, 45, 'Isaac'),
(17, 46, 'Jamie Sullivan'),
(17, 47, 'Landon Carter'),
(17, 48, 'Reverend Sullivan'),
(18, 49, 'Paige Collins'),
(18, 50, 'Leo Collins'),
(18, 51, 'Bill Thornton');

INSERT INTO genres (name) VALUES
('Drama'),
('Crime'),
('Action'),
('Thriller'),
('Sci-Fi'),
('War'),
('Fantasy'),
('Romance');

INSERT INTO movies_genres (movie_id, genre_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 4),
(6, 5),
(7, 5),
(8, 6),
(9, 2),
(10, 1),
(11, 3),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7);
