# Dynamic Web Application with Flask on Amazon EC2

Create a dynamic web application using the Flask web framework running on an Amazon EC2 instance. This project introduces server-side scripting and handling dynamic content.

## Objective

Deploy a Flask web application on an Amazon EC2 instance.

## Steps

### 1. Install Flask

Connect to your Amazon EC2 instance and install Python and pip:

```bash
sudo yum install -y python3 python3-pip

mkdir flask_app
cd flask_app

### Create a file named app.py and write a simple Flask app:

``` python

from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return 'Hello, Flask on EC2!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

### 3. Run Flask App

Execute your Flask app:

``` bash

python3 app.py

Visit your EC2 instance's public IP or DNS with port 5000 (e.g., http://your-ec2-instance-public-ip:5000) to see your Flask app in action.

### 4. Set Up Apache as a Reverse Proxy

Install Apache on your EC2 instance (if not already installed):

``` bash

sudo yum install httpd

Configure Apache to act as a reverse proxy for your Flask app. Edit the Apache configuration file (/etc/httpd/conf/httpd.conf or create a new configuration file):

``` apache

<VirtualHost *:80>
    ServerName yourdomain.com

    ProxyPass / http://127.0.0.1:5000/
    ProxyPassReverse / http://127.0.0.1:5000/
</VirtualHost>

Restart Apache:

``` bash

sudo service httpd restart

### 5. Access Your Flask App

Visit your domain (or EC2 instance IP) without specifying a port (e.g., http://yourdomain.com) to see your Flask app served through Apache.
6. Clean Up Resources

Remember to terminate your EC2 instance to avoid unnecessary charges. Additionally, consider deleting the key pair and any other associated resources.
### 7. Configure Domain (Optional)

If you have a domain, you can configure it to point to your EC2 instance's IP address. Update your domain's DNS settings to include an A record pointing to the EC2 instance's IP.
### 8. Secure Your Application (Optional)

Consider implementing SSL for secure communication. You can use Let's Encrypt for free SSL certificates. Refer to the Certbot documentation for instructions.
Notes

    Ensure that your EC2 security group allows inbound traffic on ports 80 and 22 only from trusted sources.
    Always be mindful of security practices and only expose necessary ports.
    Make sure to terminate instances after use to avoid unexpected charges.
    Refer to the AWS Free Tier to make sure your usage falls within the free tier limits.

This project provides hands-on experience with Amazon EC2, web server setup, and deploying a web application with Flask.
License

This project is licensed under the MIT License.

csharp


Copy and paste this Markdown content into a file named `README.md` in your project's root directory.

