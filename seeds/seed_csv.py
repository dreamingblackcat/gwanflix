import csv
import random
from faker import Faker

# Create a Faker object
fake = Faker()

# Open the CSV file and create a new CSV file for the transformed data
with open('movies.csv', 'r', encoding='utf-8') as file:
    reader = csv.DictReader(file)
    with open('movies_transformed.csv', 'w', newline='', encoding='utf-8') as outfile:
        fieldnames = ['id', 'title', 'director', 'genres', 'rating', 'year']
        writer = csv.DictWriter(outfile, fieldnames=fieldnames)

        writer.writeheader()  # Write the header row

        # We will have 13 records in db already. So, we will start with 14th record
        base_id = 14
        # Iterate over the rows in the CSV file
        for i, row in enumerate(reader):
            title = row['title']
            year = title[-5:-1]  # Extract the year from the title

            # Generate random director and stars
            director = fake.name()
            #stars = ', '.join(fake.name() for _ in range(3))

            # Generate a random rating between 1 and 10
            rating = random.randint(1, 10)

            # Write the transformed row to the new CSV file
            writer.writerow({'id': i + base_id, 'title': title, 'director': director,
                             'genres': row['genres'], 'rating': rating, 'year': year})
