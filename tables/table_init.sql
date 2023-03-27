-- Users Artists
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

-- Users podcasts
INSERT INTO users (username, playlists, followers, following)
VALUES ('the_jre', '1', '102321', '93'),
('TED_TD', '3', '315421', '43'),
('HuberMAN', '7', '9847575', '5'),
('thedeckInvestigates8', '2', '456789', '87'),
('TP_weekends', '5', '938726', '43'),
('daxShepherd', '4', '876234', '32'),
('blue_mustang_girl', '2', '3241', '9'),
('case_file', '5', '876123', '101'),
('Thedaily', '2', '432', '654'),
('lexFridmand_podcast', '2', '9876543', '21');

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
VALUES ('Bodysnatchers', '4', '45091715', '3'),
('Go Flex', '3', '881795742', '7'),
('The Patient', '7', '19922961', '11'),
('G.O.A.T.', '3', '53380499', '8'),
('Descending', '13', '32442391', '1'),
('When the Levee Breaks', '7', '110775995', '4'),
('Rain', '4', '825432', '9'),
('Cygnus...Vismund Cygnus', '13', '3648317', '5'),
('Doomsday', '4', '3580868', '10'),
('Strobe', '11', '41931656', '6'),
('Avaritia', '7', '12662969', '12'),
('One Thing Left to Try', '4', '11682777', '2');

-- Albums
INSERT INTO albums (length_mins, title, song_count, release_date)
VALUES ('86', 'Fear Inoculum', '10', '2019-08-30'),
('44','Little Dark Age', '10', '2018-02-09'),
('42','In Rainbows', '10', '2007-12-28'),
('43', 'Led Zeppelin IV', '8', '1971-11-08'),
('76', 'Frances the Mute', '12', '2005-02-10'),
('65', 'For Lack of a Better Name', '10', '2009-09-22'),
('68', 'Stoney', '18', '2016-12-09'),
('37', 'New Levels New Devils', '10', '2018-10-12'),
('52', '1996', '12', '1996-06-04'),
('73', 'Welcome Reality +', '17', '2011-01-01'),
('76', 'Lateralus', '13', '2001-05-15'),
('270', 'while(1<2)', '27', '2014-01-01');

-- Playlists
INSERT INTO playlists (name, length_mins, song_count, user_id)
VALUES ('Omaha Tool', '113', '13', '1'),
('UP THE VIBES', '216', '46', '2'),
('MELODIC TECHNO 2023', '414', '80', '3'),
('Hard Electro & Dark EDM', '244', '58', '4');

-- Podcasts
INSERT INTO podcasts (name, user_id)
VALUES ('TED Talks Daily', '18'),
('The Deck Investigates', '20'),
('Armchair Expert with Dax Shepherd', '22'),
('Lex Fridman Podcast', '26'),
('The Joe Rogan Experience', '17'),
('Casefile True Crime', '24'),
('The Daily', '25'),
('This Past Weekend', '21'),
('Huberman Lab', '19'),
('The Girl in the Blue Mustang', '23');

-- Episodes
INSERT INTO episodes (title, length_mins, release_date)
VALUES ('#1960 - Andrew Schulz', '171', '2023-03-24'),
('Why all dogs are good dogs', '32', '2023-03-24'),
('AMA #5: Intrusive Thoughts, CGMs, Behavioral Change, Naps & NSDR', '23', '2023-03-24'),
('10 of 15: Look at the Deeds', '25', '2023-03-09'),
('E416 Mike Rowe', '119', '2022-11-12'),
('Neil Patrick Harris', '104', '2022-08-23'),
('3 - Like a Voice from the Grave', '37', '2023-03-21'),
('Case 228: The Harrison Family', '56', '2022-10-21'),
('Sarma Melngailis: Bad Vegan', '254', '2022-05-12');

-- artists_albums
INSERT INTO artists_albums (artist_id, album_id)
VALUES ('1', '1'),
('2', '3'),
('3', '5'),
('4', '6'),
('4', '12'),
('1', '11'),
('5', '4'),
('6', '7'),
('7', '2'),
('8', '8'),
('9', '9'),
('10', '10');

INSERT INTO playlists_songs (playlist_id, song_id)
VALUES ('1', '5');

INSERT INTO songs_artists (song_id, artist_id)
VALUES ('1', '2'),
('2', '6'),
('3', '1'),
('4', '8'),
('5', '1'),
('6', '5'),
('7', '9'),
('8', '3'),
('9', '10'),
('10', '4'),
('11', '4'),
('12', '7');