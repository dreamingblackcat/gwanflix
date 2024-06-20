# Welcome to Gwanflix Repo

This is a repository to follow along when participating in the workshop titled: "Working with databases and SQL" by Chan. The workshop examples will be conducted using [SQLite3 database](https://www.sqlite.org/download.html).

# Getting started

`gwanflix.db` file contains the sqlite3 database file for all example tables. You can use it as a reference table to check when things went wrong.

You're encouraged to create your own database and run the SQL queries yourself. To avoid overwriting the reference `gwanflix.db`, create your own db instance by running the following command in your terminal (windows terminal):
```
touch mygwanflix.db
```
This will create an empty file which you can import to [SQLiteStudio software](https://sqlitestudio.pl/) or VSCode's [SQLite extension](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite) or [Sqlite3 command line client program](https://www.sqlite.org/download.html) or [sqlime.org](https://sqlime.org/).

# Organization

There are 2 directories:
- data_definition (This directory contains sql files which contains schema definition and seed data for each stage of the workshop)
- queries (This directory contains sql files which contains sample queries for each stage of the workshop)

Each SQL file is prefixed with version in 0-padded 3-digit version number. Eg. data_definition/001_movies_v1.sql contains sample queries that you can copy-paste into your own db to create the example state for stage 1. Then you can use `queries/001_finding_movies.sql` to copy paste sample queries that can be run against the table you just created.

# References

https://github.com/awesomedata/awesome-public-datasets?tab=readme-ov-file

SQlite3 cli usage basic - Tutorial

https://www.youtube.com/watch?v=dFzJ4UPNL1w

SQLite3 in production - Talk

https://www.youtube.com/watch?v=yTicYJDT1zE

**GopherCon 2021: Ben Johnson - Building production Applications Using Go & SQLite**

https://www.youtube.com/watch?v=XcAYkriuQ1o

SQLite GUI in a browser

https://sqlime.org/

SQL playground in a browser

https://sql-playground.wizardzines.com/

Interactive SQL tutorial

https://sqlbolt.com/

Animated SQL joins

https://dataschool.com/how-to-teach-people-sql/ (Awesome series)

Interactive visualization for SQL statements (Awesome way to demonstrate)

https://animatesql.com/

SQLite date func

https://www.sqlite.org/lang_datefunc.html

Dates in SQLITE

https://www.youtube.com/watch?v=nJRvz5Rhrx0

Database Normalization

https://youtu.be/GFQaEYEc8_8?si=2m-6hNHSd4TpmUtW

Fireship - MySQL Basics

https://youtu.be/Cz3WcZLRaWc?si=-RZlLegh3SY8qiOu

code bro - MySQL full course

https://youtu.be/5OdVJbNCSso?si=Y8BAlUlKUrWHrm9N
