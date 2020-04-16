from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/user/<name>/<p>')
def user_get(name: str, p: str):
    return 'Hello, %s / %s!' % (name, p)

