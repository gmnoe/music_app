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

    def serialize(self):
        return {
            'id': self.id,
            'username': self.username,
            'playlists': self.playlists,
            'followers': self.followers,
            'following': self.following
        }
    
class Artist(db.Model):
    __tablename__ = 'artists'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(128), unique=True, nullable=False)
    website = db.Column(db.String(128), unique=True, nullable=True)
    followers = db.Column(db.Integer)
    user_id = db.relationship('User', backref='artist')

    def __inti__(self, name: str, website: str, followers: int, user_id: int)
        self.name = name
        self. website = website
        self.followers = followers
        self.user_id = user_id

    def serialize(self):
        return {
            'id': self.id,
            'name': self.name,
            'website': self.website,
            'followers': self.followers,
            'user_id': self.user_id
        }