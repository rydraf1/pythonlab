#!/usr/bin/env bash

apt-get update
sudo apt install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
sudo ufw app list
apt-get install php libapache2-mod-php php-mysql -y
apt-get install mysql-shell
rm /var/www/html/index.html
cp /vagrant/index.php /var/www/html/index.php