CREATE USER 'admin'@'192.168.8.200' IDENTIFIED BY 'Test@1234';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'192.168.8.200' WITH GRANT OPTION; 
CREATE DATABASE DEVOPS;
FLUSH privileges;