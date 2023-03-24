-- Users
INSERT INTO users (username, playlists, followers, following)
VALUES ('gregNoethlich', '6', '3', '27'),
VALUES ('Brandon Hallberg', '12', '16', '27'),
VALUES ('widerberg', '12', '3131', '1'),
VALUES ('Naeleck', '24', '5979', '2'),
VALUES ('Progressive AR', '6', '550', '51'),
VALUES ('ALF', '23', '228', '12'),
VALUES ('deadmau5', '8', '5,637', '29');

-- Artists
INSERT INTO artists (name, followers, user_id, wiki_page)
VALUES ('TOOL', '3056736','', 'https://en.wikipedia.org/wiki/Tool_(band)')
-- Songs
INSERT INTO songs (title, length_mins, plays, album_id)

-- Albums
INSERT INTO albums (length_mins, title, song_count, release_date, artwork_url)

-- Playlists
INSERT INTO playlists (name, length, song_count)

-- Podcasts
INSERT INTO podcasts (name, bio, followers)

-- Episodes
INSERT INTO episodes (title, description, length, release_date)