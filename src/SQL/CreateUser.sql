CREATE USER 'demo'@'localhost' IDENTIFIED BY 'demopass';


GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD ON *.* TO 'demo'@'localhost';