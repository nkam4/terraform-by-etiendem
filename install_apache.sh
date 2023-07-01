#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2 
sudo bash -c 'echo  This is My very first webserver accomplished through terraform hurray Roger KEEP UP!! > /var/www/html/index.html'