from flask import Flask
from flask_restful import Api
from flask_jwt import JWT

from db import db


app = Flask(__name__)
api = Api(app)

if __name__ == '__main__':
    db.init_app(app)
    app.run(port=5000, debug=True)