CREATE TABLE movie_deatils(id int NOT NULL AUTO_INCREMENT, movie_id int NOT NULL,movie_category int NOT NULL, PRIMARY KEY(id),FOREIGN KEY (movie_id) REFERENCES movie(id),FOREIGN KEY (movie_category) REFERENCES category(id));

INSERT INTO movie_deatils(movie_id,movie_category) VALUES('1','1');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('1','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('1','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('1','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('1','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('1','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('2','1');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('2','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('2','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('3','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('3','1');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('3','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('4','1');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('4','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('4','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('4','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('4','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('5','1');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('5','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('5','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('5','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('5','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('5','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('6','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('6','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('6','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('6','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('6','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('7','1');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('7','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('7','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('7','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('7','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('8','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('8','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('8','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('8','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('8','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('9','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('9','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('9','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('9','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('9','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('10','2');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('10','3');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('10','4');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('10','5');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('10','6');
INSERT INTO movie_deatils(movie_id,movie_category) VALUES('10','1');






1('action');
2('comedies');
3('romantic');
4('fantasy');
5('Science Fiction');
6('Crime');
