-- Users
INSERT INTO users (username, playlists, followers, following)
VALUES ('gregNoethlich', '6', '3', '27'),
('Brandon Hallberg', '12', '16', '27'),
('widerberg', '12', '3131', '1'),
('Naeleck', '24', '5979', '2'),
('Progressive AR', '6', '550', '51'),
('ALF', '23', '228', '12'),
('deadmau5', '8', '5637', '29'),
('TOOL', '12', '1234567', '33'),
('Polyphia', '18', '543786', '21'),
('MGMT', '3', '983456', '43'),
('Radiohead', '11', '2341543', '31'),
('TMV', '8', '653421', '18'),
('led_zeppelin', '12', '26549897', '24'),
('Post_Malone', '5', '3652712', '35')
('sakamoto_ryuichi', '3', '376554', '8'),
('nero', '6', '432165', '19');

-- Artists
INSERT INTO artists (name, followers, user_id, website)
VALUES ('TOOL', '3056736','8', 'https://toolband.com/'),
('Radiohead', '7984477','11', 'https://www.radiohead.com/'),
('The Mars Volta', '603381','12', 'https://www.themarsvoltaofficial.com/'),
('Deadmau5', '2788732','7', 'https://deadmau5.com/'),
('Led Zeppelin', '17727943','13', 'https://merch.ledzeppelin.com/'),
('Post Malone', '51948432', '14', 'https://www.postmalone.com/'),
('MGMT', '2741254','10', 'https://whoismgmt.com/'),
('Polyphia', '863823','9', 'https://www.polyphia.com/');
-- Artists with no website
INSERT INTO artists (name, followers, user_id)
VALUES ('Ryuichi Sakamoto', '656627', '15'),
('NERO', '821893', '16');


-- Songs
INSERT INTO songs (title, length_mins, plays, album_id)

-- Albums
INSERT INTO albums (length_mins, title, song_count, release_date)
VALUES ('86', 'Fear Inoculum', '10', '2019-08-30'),
('44','Little Dark Age', '10', '2018-02-09'),
('42','In Rainbows', '10', '2007-12-28'),
('43', 'Led Zeppelin IV', '8', '1971-11-08'),
('76', 'Frances the Mute', '12', '2005-02-10'),
('65', 'For Lack of a Better Name', '10', '2009-09-22'),
('Stoney'),
('New Levels New Devils'),
('1996'),
('Welcome Reality'),

-- Playlists
INSERT INTO playlists (name, length, song_count)

-- Podcasts
INSERT INTO podcasts (name, bio, followers)

-- Episodes
INSERT INTO episodes (title, description, length, release_date)