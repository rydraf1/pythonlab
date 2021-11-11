#!/usr/bin/env bash
sudo apt update
sudo apt-get install -y mysql-server
sudo rm /etc/mysql/mysql.conf.d/mysqld.cnf
sudo cp /vagrant/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
sudo ufw enable
sudo ufw allow 3306/tcp
sudo systemctl restart mysql
sudo mysql -u root
CREATE USER 'admin'@'192.168.8.200' IDENTIFIED BY 'Test@1234';
FLUSH PRIVILEGES;
CREATE DATABASE DEVOPS;
GRANT ALL PRIVILEGES ON DEVOPS.* TO 'admin'@'192.168.8.200';
