import streamtologger
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'
streamtologger.redirect(target="/var/log/app.log", append=False, header_format="[{timestamp:%Y-%m-%d %H:%M:%S} - {level:5}] ")
