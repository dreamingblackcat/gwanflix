import sqlite3
from faker import Faker

fake = Faker()

# Connect to the database
conn = sqlite3.connect('movies.db')
c = conn.cursor()

drop_table_query = "DROP TABLE IF EXISTS movies"
c.execute(drop_table_query)

# Create the table
movies_table_ddl_query = """
CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL UNIQUE,
    director TEXT NOT NULL,
    actors_and_actresses TEXT NOT NULL
);
"""
# Insert data into the table
c.execute(movies_table_ddl_query)

directors = ['Steven Spielberg', 'Martin Scorsese', 'Quentin Tarantino', 'Christopher Nolan', 'David Fincher', 'Wes Anderson', 'Spike Lee', 'Alfred Hitchcock', 'Stanley Kubrick', 'Francis Ford Coppola', 'Clint Eastwood', 'Ridley Scott', 'Woody Allen', 'Tim Burton', 'James Cameron', 'Coen Brothers', 'Paul Thomas Anderson', 'Darren Aronofsky', 'Michael Bay', 'Peter Jackson', 'Robert Zemeckis', 'David Lynch', 'Sofia Coppola', 'M. Night Shyamalan', 'Oliver Stone', 'Terrence Malick', 'Richard Linklater', 'David Cronenberg', 'Danny Boyle', 'Roman Polanski', 'Pedro Almodóvar', 'John Carpenter', 'Sam Raimi', 'John Waters', 'John Hughes', 'John Sayles', 'John Singleton', 'John Landis', 'John Frankenheimer', 'John Cassavetes', 'John Ford', 'John Huston', 'John Sturges', 'John Schlesinger', 'John Boorman', 'John Milius', 'John McTiernan', 'John Woo', 'John Woo', 'John Lasseter', 'John Carpenter', 'John Waters', 'John Hughes', 'John Sayles', 'John Singleton', 'John Landis', 'John Frankenheimer', 'John Cassavetes', 'John Ford', 'John Huston', 'John Sturges', 'John Schlesinger', 'John Boorman', 'John Milius', 'John McTiernan', 'John Woo', 'John Woo', 'John Lasseter', 'John Carpenter', 'John Waters', 'John Hughes', 'John Sayles', 'John Singleton', 'John Landis', 'John Frankenheimer', 'John Cassavetes', 'John Ford', 'John Huston', 'John Sturges', 'John Schlesinger', 'John Boorman', 'John Milius', 'John McTiernan', 'John Woo', 'John Woo', 'John Lasseter', 'John Carpenter', 'John Waters', 'John Hughes', 'John Sayles', 'John Singleton', 'John Landis', 'John Frankenheimer', 'John Cassavetes', 'John Ford', 'John Huston', 'John Sturges']

for _ in range(1000):
    title = fake.unique.catch_phrase()
    director = fake.random.choice(directors)
    actors_and_actresses = ', '.join(fake.name() for _ in range(3))

    c.execute("INSERT INTO movies (title, director, actors_and_actresses) VALUES (?, ?, ?)",
              (title, director, actors_and_actresses))

# Commit the changes and close the connection
conn.commit()



drop_table_query = "DROP TABLE IF EXISTS rentals"
c.execute(drop_table_query)

# Create the table
rentals_table_ddl_query = """
CREATE TABLE IF NOT EXISTS rentals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_name TEXT NOT NULL,
    customer_phone_number TEXT NOT NULL,
    movie_id INTEGER NOT NULL REFERENCES movies_v3(id),
    rental_date TEXT NOT NULL,
    due_date TEXT NOT NULL,
    return_date TEXT,
    price INTEGER NOT NULL,
    UNIQUE(customer_name, movie_id, rental_date)
);
"""
# Insert data into the table
c.execute(rentals_table_ddl_query)

customers = ['Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank', 'Grace', 'Heidi', 'Ivan', 'Judy', 'Kevin', 'Linda', 'Michael', 'Nancy', 'Oscar', 'Pam', 'Quincy', 'Rachel', 'Steve', 'Tina', 'Ursula', 'Victor', 'Wendy', 'Xavier', 'Yvonne', 'Zach']

movies = c.execute("SELECT id FROM movies").fetchall()

for _ in range(1000):
    customer_name = fake.random.choice(customers)
    customer_phone_number = fake.phone_number()
    movie_id = fake.random.choice(movies)[0]
    rental_date = fake.date_this_decade()
    due_date = fake.date_this_decade()
    return_date = fake.date_this_decade()
    price = fake.random_int(min=1, max=100)

    c.execute("INSERT INTO rentals (customer_name, customer_phone_number, movie_id, rental_date, due_date, return_date, price) VALUES (?, ?, ?, ?, ?, ?, ?)",
              (customer_name, customer_phone_number, movie_id, rental_date, due_date, return_date, price))
conn.commit()
conn.close()
