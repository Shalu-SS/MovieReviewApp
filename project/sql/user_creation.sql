CREATE TABLE user(id int NOT NULL AUTO_INCREMENT, name varchar(255) NOT NULL, PRIMARY KEY(id));


INSERT INTO user(name) VALUES('James Cameron');
INSERT INTO user(name) VALUES('Gore Verbinski');
INSERT INTO user(name) VALUES('Joss Whedon');
INSERT INTO user(name) VALUES('Louis Leterrier');
INSERT INTO user(name) VALUES('Corey Yuen');
INSERT INTO user(name) VALUES('Ruben Fleischer');
INSERT INTO user(name) VALUES('Ang Lee');
INSERT INTO user(name) VALUES('David Fincher');
INSERT INTO user(name) VALUES('Paul Thomas Anderson');
INSERT INTO user(name) VALUES('Mike Newell');

--CREATE TABLE movie(id int NOT NULL AUTO_INCREMENT, title varchar(255) NOT NULL, user_id int, PRIMARY KEY(id), FOREIGN KEY (user_id) REFERENCES user(id));
