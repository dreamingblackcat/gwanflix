import csv
import random
from faker import Faker

# Create a Faker object
fake = Faker()

# Open the CSV file and create a new CSV file for the transformed data
with open('movies.csv', 'r') as file:
    reader = csv.DictReader(file)
    with open('movies_transformed.csv', 'w', newline='') as outfile:
        fieldnames = ['title', 'director', 'stars', 'genres', 'rating', 'year']
        writer = csv.DictWriter(outfile, fieldnames=fieldnames)

        writer.writeheader()  # Write the header row

        for row in reader:
            title = row['title']
            year = title[-5:-1]  # Extract the year from the title

            # Generate random director and stars
            director = fake.name()
            stars = ', '.join(fake.name() for _ in range(3))

            # Generate a random rating between 1 and 10
            rating = random.randint(1, 10)

            # Write the transformed row to the new CSV file
            writer.writerow({'title': title, 'director': director, 'stars': stars,
                             'genres': row['genres'], 'rating': rating, 'year': year})
