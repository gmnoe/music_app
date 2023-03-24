-- Table creation

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    bio TEXT,
    followers INT
);

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    length_mins INT NOT NULL,
    plays INT NOT NULL
);

 CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    length_mins INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    song_count INT NOT NULL,
    release_date DATE,
    artwork_url VARCHAR(100)
 );

 CREATE TABLE playlists (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    length INT NOT NULL,
    song_count INT NOT NULL
 );

 CREATE TABLE podcasts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    bio TEXT,
    followers INT
 );

 CREATE TABLE episodes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    length INT NOT NULL,
    release_date DATE
 );

-- Creating reference tables and altering tables for relationships
-- One to one

ALTER TABLE artists
ADD user_id INT NOT NULL UNIQUE;

ALTER TABLE podcasts
ADD user_id INT NOT NULL UNIQUE;

-- Many to many

CREATE TABLE songs_artists (
   song_id INT NOT NULL,
   artist_id INT NOT NULL,
   PRIMARY KEY (song_id, artist_id)
);

CREATE TABLE playlists_songs (
   playlist_id INT NOT NULL,
   song_id INT NOT NULL
);

CREATE TABLE playlists_episodes (
   playlist_id INT NOT NULL,
   episode_id INT NOT NULL
);

CREATE TABLE artists_albums (
   artist_id INT NOT NULL,
   album_id INT NOT NULL
);


-- One to many
ALTER TABLE songs
ADD CONSTRAINT fk_songs_albums
FOREIGN KEY (album_id)
REFERENCES albums;

ALTER TABLE episodes
ADD CONSTRAINT fk_episodes_podcasts
FOREIGN KEY (podcast_id)
REFERENCES podcasts;