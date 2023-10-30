from flask_sqlalchemy import SQLAlchemy
import datetime


db = SQLAlchemy()

class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    username = db.Column(db.String(128), unique=True, nullable=False)
    password = db.Column(db.String(128), nullable=False)
    child = db.relationship('Child', backref='user', cascade="all,delete")
    
    def __init__(self, username: str, password: str):
        self.username = username
        self.password = password
        
    def serialize(self):
        return {
            'id': self.id,
            'username': self.username
        }
