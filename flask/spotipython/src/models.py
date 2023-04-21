from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(128), unique=True, nullable=False)
    playlists = db.Column(db.Integer)
    followers = db.Column(db.Integer)
    following = db.Column(db.Integer)

    def __init__(self, username: str, playlists: int, followers: int, following: int):
        self.username = username
        self.playlists = playlists
        self.followers = followers
        self.following = following
    
class Artist(db.Model):
    __tablename__ = 'artists'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(128), unique=True, nullable=False)
    website = db.Column(db.String(128), unique=True)
    followers = db.Column(db.Integer, nullable=True)
    user_id = db.relationship('User', backref='artist')

    def __init__(self, name: str, website: str, followers: int, user_id: int):
        self.name = name
        self. website = website
        self.followers = followers
        self.user_id = user_id


class Song(db.Model):
    __tablename__= 'songs'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    title = db.Column(db.String(128), nullable=False)
    length_mins = db.Column(db.Integer, nullable=False)
    plays = db.Column(db.Integer, nullable=False)

    def __init__(self, title: str, length_mins: int, plays: int):
        self.title = title
        self.length_mins = length_mins
        self.plays = plays