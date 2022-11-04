
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_pass';
CREATE DATABASE IF NOT EXISTS wpData;
CREATE USER IF NOT EXISTS 'kejebane'@'%' IDENTIFIED BY 'kejebane_pass';
CREATE USER IF NOT EXISTS 'brian'@'%' IDENTIFIED BY 'brian_pass';
GRANT ALL PRIVILEGES ON wpData.* TO 'brian'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'kejebane'@'%';
FLUSH PRIVILEGES;
