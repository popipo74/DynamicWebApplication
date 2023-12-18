#!/bin/bash

# Install python & flask
sudo yum install -y python3 python3-pip
pip3 install flask

# Create flask app directory
mkdir flask_app

# Create simple Flask app
echo "from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, Flask on EC2!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')" > flask_app/app.py

# Execute Flask App
python3 app.py

sudo yum install httpd

echo " <VirtualHost *:80>
    ServerName yourdomain.com

    ProxyPass / http://127.0.0.1:5000/
    ProxyPassReverse / http://127.0.0.1:5000/
</VirtualHost> " > /etc/httpd/conf/httpd.conf

sudo service httpd restart

echo "Completed"
