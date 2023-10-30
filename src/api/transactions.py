from flask import Blueprint, jsonify, abort, request
from ..models import User, db

bp = Blueprint('tweets', __name__, url_prefix='/tweets')
