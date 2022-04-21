-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy.
-- - Movie data includes the movie title, year released, MPAA rating,
--   and studio.
-- - There are many studios, and each studio produces many movies, but
--   a movie belongs to a single studio.
-- - An actor can be in multiple movies.
-- - Everything you need to do in this assignment is marked with TODO!

-- User stories
--
-- - As a guest, I want to see a list of movies with the title, year released,
--   MPAA rating, and studio information.
-- - As a guest, I want to see the movies which a single studio has produced.
-- - As a guest, I want to see each movie's cast including each actor's
--   name and the name of the character they portray.
-- - As a guest, I want to see the movies which a single actor has acted in.
-- * Note: The "guest" user role represents the experience prior to logging-in
--   to an app and typically does not have a corresponding database table.


-- Deliverables
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
-- - Insertion of "Batman" sample data into tables.
-- - Selection of data, so that something similar to the sample "report"
--   below can be achieved.

-- Rubric
--
-- 1. Domain model - 6 points
-- - Think about how the domain model needs to reflect the
--   "real world" entities and the relationships with each other. 
--   Hint: It's not just a single table that contains everything in the 
--   expected output. There are multiple real world entities and
--   relationships including at least one many-to-many relationship.
-- 2. Execution of the domain model (CREATE TABLE) - 4 points
-- - Follow best practices for table and column names
-- - Use correct data column types (i.e. TEXT/INTEGER)
-- - Use of the `model_id` naming convention for foreign key columns
-- 3. Insertion of data (INSERT statements) - 4 points
-- - Insert data into all the tables you've created
-- - It actually works, i.e. proper INSERT syntax
-- 4. "The report" (SELECT statements) - 6 points
-- - Write 2 `SELECT` statements to produce something similar to the
--   sample output below - 1 for movies and 1 for cast. You will need
--   to read data from multiple tables in each `SELECT` statement.
--   Formatting does not matter.

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Warner Bros.
-- The Dark Knight        2008           PG-13  Warner Bros.
-- The Dark Knight Rises  2012           PG-13  Warner Bros.

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off
.width 21 20 20

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!


DROP TABLE IF EXISTS characters;
Drop TABLE IF EXISTS movies;
Drop Table IF EXISTS actors;
Drop Table IF EXISTS roles;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year_released TEXT,
  rating TEXT,
  studio TEXT
);

CREATE TABLE actors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_id INTEGER,
  actor_id INTEGER,
  character_id INTEGER
);

Insert Into movies (
  title,
  year_released,
  rating,
  studio
)
Values (
    "Batman Begins",
    "2005",
    "PG-13",
    "Warner Bros."
);

Insert Into movies (
  title,
  year_released,
  rating,
  studio
)
Values (
    "The Dark Knight",
    "2008",
    "PG-13",
    "Warner Bros."
);

Insert Into movies (
  title,
  year_released,
  rating,
  studio
)
Values (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    "Warner Bros."
);

Insert Into actors (
  name
)
Values (
    "Christian Bale"
);

Insert Into actors (
  name
)
Values (
    "Michael Caine"
);

Insert Into actors (
  name
)
Values (
    "Liam Neeson"
);

Insert Into actors (
  name
)
Values (
    "Katie Holmes"
);

Insert Into actors (
  name
)
Values (
    "Gary Oldman"
);

Insert Into actors (
  name
)
Values (
    "Heath Ledger"
);

Insert Into actors (
  name
)
Values (
    "Aaron Eckhart"
);

Insert Into actors (
  name
)
Values (
    "Maggie Gyllenhaal"
);

Insert Into actors (
  name
)
Values (
    "Tom Hardy"
);

Insert Into actors (
  name
)
Values (
    "Joseph Gordon-Levitt"
);

Insert Into actors (
  name
)
Values (
    "Anne Hathaway"
);

Insert Into characters (
  name
)
Values (
    "Bruce Wayne"
);

Insert Into characters (
  name
)
Values (
    "Alfred"
);

Insert Into characters (
  name
)
Values (
    "Ra's Al Ghul"
);

Insert Into characters (
  name
)
Values (
    "Rachel Dawes"
);

Insert Into characters (
  name
)
Values (
    "Commissioner Gordon"
);

Insert Into characters (
  name
)
Values (
    "Joker"
);

Insert Into characters (
  name
)
Values (
    "Harvey Dent"
);

Insert Into characters (
  name
)
Values (
    "Bane"
);

Insert Into characters (
  name
)
Values (
    "John Blake"

);

Insert Into characters (
  name
)
Values (
    "Selina Kyle"
);

Insert Into roles (
  movie_id
)
Values (
    "1"
);

Insert Into roles (
  movie_id
)
Values (
    "2"
);

Insert Into roles (
  movie_id
)
Values (
    "3"
);

Insert Into roles (
  actor_id
)
Values (
    "1"
);

Insert Into roles (
  actor_id
)
Values (
    "2"
);

Insert Into roles (
  actor_id
)
Values (
    "3"
);

Insert Into roles (
  actor_id
)
Values (
    "4"
);

Insert Into roles (
  actor_id
)
Values (
    "5"
);

Insert Into roles (
  actor_id
)
Values (
    "6"
);

Insert Into roles (
  actor_id
)
Values (
    "7"
);

Insert Into roles (
  actor_id
)
Values (
    "8"
);

Insert Into roles (
  actor_id
)
Values (
    "9"
);

Insert Into roles (
  actor_id
)
Values (
    "10"
);

Insert Into roles (
  actor_id
)
Values (
    "11"
);

Insert Into roles (
  character_id
)
Values (
    "1"
);

Insert Into roles (
  character_id
)
Values (
    "2"
);

Insert Into roles (
  character_id
)
Values (
    "3"
);

Insert Into roles (
  character_id
)
Values (
    "4"
);

Insert Into roles (
  character_id
)
Values (
    "5"
);

Insert Into roles (
  character_id
)
Values (
    "6"
);

Insert Into roles (
  character_id
)
Values (
    "7"
);

Insert Into roles (
  character_id
)
Values (
    "8"
);

Insert Into roles (
  character_id
)
Values (
    "9"
);

Insert Into roles (
  character_id
)
Values (
    "10"
);

Select movies.title, actors.name, characters.name 
From movies 
Inner Join roles 
On roles.movie_id = movies.id 
Inner Join actors
On actors.id = roles.actor_id
Inner Join characters
On characters.id = roles.character_id
Order by movies.title;

