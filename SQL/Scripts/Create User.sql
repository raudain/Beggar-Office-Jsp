CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';

GRANT SELECT, INSERT, UPDATE ON dbo.* TO 'user'@'localhost';

SELECT * FROM mysql.user;