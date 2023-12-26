#!/bin/bash

# Install python & flask
sudo yum install httpd -y
sudo yum install -y python3 python3-pip
pip3 install flask

# Create flask app directory
mkdir flask_app

cd flask_app

# Create simple Flask app
echo " from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, Flask on EC2!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0') " > app.py 

    
