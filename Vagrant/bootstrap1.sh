sudo apt-get update
sudo apt-get install -y mysql-server
echo y | sudo ufw enable
sudo ufw allow mysql
sudo ufw allow 3306/tcp
mysql < /vagrant/ryd.sql
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo systemctl restart mysql