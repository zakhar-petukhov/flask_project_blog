from config import Configuration
from flask import Flask
from posts.blueprint import posts

app = Flask(__name__)
app.config.from_object(Configuration)

app.register_blueprint(posts, url_prefix='/blog')
