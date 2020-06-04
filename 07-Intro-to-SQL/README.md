# Intro to SQL

### LGs:
- [ ] Explain persistence, the need for using SQL, and difference between SQLite3 and SQL
    * Explore provided data through SQLite Browser
- [ ] Perform CRUD actions on a single table
- [ ] Explore how to use sqlite3 with ruby file
- [ ] Perform CRUD actions across related tables

---
* **Explain persistence and the need for using SQL**
    * Persistence
        * Data is there no matter if we closed the program
    * Define SQL
        * SQL stands for Structured Query Language and is a language that allows us to do:
            * Store / persist information
            * Manipulate that information
        * What is sql is for?
            * Information persistence
            * Want stuff to stick around after the program ends
        * What kind of operations can we do in SQL?
            * CRUD
    * Explain the difference between SQLite and SQL**
        * SQL is a query language. Sqlite is embeddable relational database management system.
 
    * Explore provided data through SQLite Browser**
        * Open ‘chinook.db’ in SQLite Browser
        * How to see the data?
        * How to open sqlite3 in terminal
        * Database schema
    
* **Perform CRUD actions on a single table**
1. Write the SQL to return all of the rows in the artists table?

```SQL
    SELECT * FROM artists
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
    SELECT * FROM artists WHERE name="Black Sabbath"
    SELECT * FROM artists WHERE name LIKE "black sabbath"
    SELECT * FROM artists WHERE name LIKE "black %"
```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
    CREATE TABLE fans(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
    ALTER TABLE fans ADD COLUMN artist_id INTEGER
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql
    INSERT INTO fans (name,artist_id) VALUES ("James",169)
```

6. How would you update your name in the fans table to be your new name? Use Ruby file.

```sql
    UPDATE fans SET name = "Vidhi S" WHERE id = 1
    db.execute('UPDATE fans SET name = ? WHERE id = ?',name, id )
```

* **Perform CRUD actions across related tables**
7. Write the SQL to display an artists name next to their album title

```sql
    SELECT artists.name, albums.title 
    FROM artists JOIN albums
    WHERE artists.id = albums.artist_id
```

8. Write the SQL to display artist name, album name and number of tracks on that album

```sql
    SELECT artists.name, albums.title, COUNT(tracks.name) AS numbers
    FROM artists JOIN albums
    ON artists.id = albums.artist_id
    JOIN tracks
    ON albums.id = tracks.album_id
    GROUP BY albums.id
```

---
### Tasks:

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Write the SQL to return fans that are not fans of the black eyed peas. ArtistId **169**

```sql
    SELECT * FROM original_fans WHERE artist_id != 169
    SELECT * FROM original_fans WHERE NOT artist_id = 169
```
3. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql
    SELECT DISTINCT artists.name FROM artists
    JOIN albums
    ON artists.id = albums.artist_id
    JOIN tracks
    ON albums.id = tracks.album_id
    JOIN genres
    ON tracks.genre_id = genres.id
    WHERE genres.name = 'Pop';
```