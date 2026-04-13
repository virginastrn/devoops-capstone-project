"""
Package: service
Package for the application models and service routes
"""
import logging
from flask import Flask
from flask_talisman import Talisman
from flask_cors import CORS

app = Flask(__name__)

talisman = Talisman(app, force_https=False)

CORS(app)

app.config.from_object("config")

logging.basicConfig(level=logging.INFO)

from service import routes, models  # noqa: E402, F401
from service.common import error_handlers  # noqa: F401
