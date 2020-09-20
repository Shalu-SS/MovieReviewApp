CREATE TABLE movie(id int NOT NULL AUTO_INCREMENT, title varchar(255) NOT NULL, user_id int, review int, PRIMARY KEY(id), FOREIGN KEY (user_id) REFERENCES user(id), FOREIGN KEY (review) REFERENCES review(id));

INSERT INTO movie(title,user_id,review,review) VALUES('Avatar','1','5');
INSERT INTO movie(title,user_id,review) VALUES('Titanic','1','4');
INSERT INTO movie(title,user_id,review) VALUES('The Terminator','1','5');
INSERT INTO movie(title,user_id,review) VALUES('Pirates of the Caribbean','2','4');
INSERT INTO movie(title,user_id,review) VALUES('The Ring','2','3');
INSERT INTO movie(title,user_id,review) VALUES('The Avengers','3','5');
INSERT INTO movie(title,user_id,review) VALUES('Avengers: Age of Ultron','3','4');
INSERT INTO movie(title,user_id,review) VALUES('The Transporter','4','5');
INSERT INTO movie(title,user_id,review) VALUES('Unleashed','4','3');
INSERT INTO movie(title,user_id,review) VALUES('The Legend','5','1');
INSERT INTO movie(title,user_id,review) VALUES('Hero','5','2');
INSERT INTO movie(title,user_id,review) VALUES('Venom','6','4');
INSERT INTO movie(title,user_id,review) VALUES('Bad Trip','6','3');
INSERT INTO movie(title,user_id,review) VALUES('Hulk','7','2');
INSERT INTO movie(title,user_id,review) VALUES('Gemini Man','7','1');
INSERT INTO movie(title,user_id,review) VALUES('Zodiac','8','2');
INSERT INTO movie(title,user_id,review) VALUES('Seven','8','5');
INSERT INTO movie(title,user_id,review) VALUES('Anima','9','3');
INSERT INTO movie(title,user_id,review) VALUES('Magnolia','9','4');
INSERT INTO movie(title,user_id,review) VALUES('Harry Potter and the Goblet of Fire','10','5');
INSERT INTO movie(title,user_id,review) VALUES('Enchanted April','10','4');

