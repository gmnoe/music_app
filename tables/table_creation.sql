CREATE TABLE artists (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    bio TEXT,
    followers BIGINT
);

CREATE TABLE songs (
    id INT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    release_date DATE,
    length INT NOT NULL,
    plays BIGINT NOT NULL
);

 CREATE TABLE albums (
    length INT,
    title VARCHAR(50) NOT NULL,
    song_count TINYINT,
    release_date DATE,
    artwork_url VARCHAR(50),
    release_date DATE
 );