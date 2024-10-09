#!/bin/bash
# Install Apache if not already installed
sudo apt-get update
sudo apt-get install -y apache2

# Enable and start Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Move the application files to the web directory
sudo mv /var/www/html/index.html /var/www/html/index.html.bak
sudo cp /var/www/html/index.html .
