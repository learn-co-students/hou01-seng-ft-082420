### What is SQL? 
Structured Query Language
the way we interact with databases
manages data or database
Tables related to each other?? 
a database?

Persistance-> data lives on. 

## Sqlite3 is >> gem for ruby to interface with SQL databases using sqlite syntax
DLC for SQL 
dialect for SQL

MySQL PostgreSQL MSSQL 

### What can we do with SQL? 
Create - writing new data
Read - getting data back
Update - grab and changing data
Delete - erasing data


## SQL Statements

1) search artists table to get Black Sabbath
<!-- SELECT name FROM artist where name = 'Black Sabbath' -->

2)Write the SQL to create a table named ‘fans’ with an autoincrementing ID that’s a primary key and a name field of type text
<!-- CREATE TABLE fans( id INTEGER PRIMARY KEY, name TEXT ); -->

3)Write the SQL to alter the fans table to have a artist_id column type integer?
<!-- ALTER TABLE fans 
ADD artist_id INTEGER; -->

4)Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId 169
<!-- create -->
<!-- adding a record into fan table -->
fan table has id column, name column, and artist id column 
<!-- INSERT INTO fans(artist_id, name) 
VALUES ("Marcus",169); -->

5b) how do we delete our Marcuses from our fans table?? 
<!-- DELETE FROM fans 
WHERE artist_id = "Marcus"; -->

5) Write the SQL to return fans that are not fans of the black eyed peas.
<!-- SELECT name FROM fans 
WHERE artist_id != 169 -->

6) Write the SQL to display an artists name next to their album title

7) Write the SQL to display artist name, album name and number of tracks on that album







<!-- Alter 
Update
Count
Order things in descending/ascending 
Group By
Delete
Average 
Data Aggregation
Add data to it  -->
