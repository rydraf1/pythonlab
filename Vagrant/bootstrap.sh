#!/usr/bin/env bash

apt-get update
sudo apt install -y apache2
apt-get install php libapache2-mod-php php-mysql -y
apt-get install mysql-client -y
sudo service apache2 restart
sudo ufw allow mysql
sudo rm /var/www/html/index.html
sudo cp /vagrant/index.php /var/www/html/index.php