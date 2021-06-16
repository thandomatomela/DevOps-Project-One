#! /bin/bash

sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo chown ubuntu:ubuntu /var/www/html/ -R
#sudo rm -f /var/www/html/index.nginx-debian.html