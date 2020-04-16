#!/usr/bin/env bash

set -uex
cd $(dirname "$0")

source .venv/bin/activate
export FLASK_APP=app/flask_app.py
# export FLASK_APP=app/flask-app-complicated.py
export FLASK_ENV=development
exec flask run --host 0.0.0.0
