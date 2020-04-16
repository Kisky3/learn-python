from flask import Flask

import some_local_file
import some_local_module

app = Flask(__name__)

@app.route('/')
def hello_world():
    print(some_local_file, some_local_file.a)
    print(some_local_module, some_local_module.b)
    return 'Hello, World!'

@app.route('/user/<name>/<p>')
def user_get(name: str, p: str):
    return 'Hello, %s / %s!' % (name, p)

