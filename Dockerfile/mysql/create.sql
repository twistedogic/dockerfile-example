CREATE DATABASE api;
CREATE USER 'api'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON api.* TO 'api'@'%';
FLUSH PRIVILEGES;