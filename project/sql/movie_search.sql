select mm.title from movie as mm join movie_deatils as dd ON mm.id=dd.movie_id where dd.movie_category =5;
select mm.title from movie as mm join movie_deatils as dd ON mm.id=dd.movie_id where dd.movie_category =1;
select mm.title from movie as mm join movie_deatils as dd ON mm.id=dd.movie_id where dd.movie_category =2;


select md.movie_category, mv.title,mv.user_id FROM movie_deatils as md JOIN movie as mv ON md.movie_id = mv.id where mv.user_id = 1;

select md.movie_category, mv.title,mv.user_id FROM movie_deatils as md JOIN movie as mv ON md.movie_id = mv.id where mv.user_id = 2;

