#!/bin/bash

# Install python & flask
sudo yum install -y python3 python3-pip
pip3 install flask

# Create flask app directory
mkdir flask_app

# Create simple Flask app
echo "from flask import Flask


cd flask_app

echo "in flask_app directory"
