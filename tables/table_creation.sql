CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(20) NOT NULL UNIQUE,
    password TEXT NOT NULL
);

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    bio TEXT,
    followers BIGINT
);

CREATE TABLE songs (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    release_date DATE,
    length INT NOT NULL,
    plays BIGINT NOT NULL
);

 CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    length INT,
    title VARCHAR(50) NOT NULL,
    song_count TINYINT,
    release_date DATE,
    artwork_url VARCHAR(50),
    release_date DATE NOT NULL
 );

 CREATE TABLE playlists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    length INT NOT NULL
 );

 CREATE TABLE podcasts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    host VARCHAR(50) NOT NULL,
    about VARCHAR(500),
    category VARCHAR(50)
 );

 CREATE TABLE podcast_episodes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    length INT NOT NULL,
    release_date DATE NOT NULL
 );