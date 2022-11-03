ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_mdp';
CREATE DATABASE IF NOT EXISTS wpData;
CREATE USER IF NOT EXISTS 'inception'@'%' IDENTIFIED BY 'inception_mdp';
CREATE USER IF NOT EXISTS 'kejebane'@'%' IDENTIFIED BY 'kejebane_mdp';
GRANT ALL PRIVILEGES ON wpData.* TO 'kejebane'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'inception'@'%';
FLUSH PRIVILEGES;
