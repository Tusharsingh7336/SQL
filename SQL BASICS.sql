SELECT * FROM moviesdb.movies;
#1. Print all movie titles and release year for all Marvel Studios movies.
SELECT title, release_year,studio from movies where studio = 'Marvel Studios';
# Print all movies that have Avenger in their name.
select * from movies where title like '%Avenger%';
#Print the year when the movie "The Godfather" was released.
select title,release_year from movies where title = 'The Godfather';
# Print all distinct movie studios in the Bollywood industry.
select distinct studio from movies;
#Print all movies in the order of their release year (latest first)
SELECT * FROM movies 
ORDER BY release_year desc;
#All movies released in the year 2022
SELECT * FROM movies
WHERE release_year = 2022;
#Now all the movies released after 2020
SELECT * FROM movies
WHERE release_year >2020;
# All movies after the year 2020 that have more than 8 rating
select * FROM movies
WHERE release_year>2020 AND imdb_rating>8;
#Select all movies that are by Marvel studios and Hombale Films
SELECT * FROM movies
WHERE studio IN ("Marvel Studios","Hombale Films");
# Select all THOR movies by their release year
select	* from movies
where title like 'THOR%'
order by release_year desc;
#Select all movies that are not from Marvel Studios
select * from movies where studio!= 'Marvel Studios';
#How many movies were released between 2015 and 2022
select count(*) from movies 
where release_year between '2015' and '2022';
#Print the max and min movie release year
select max(release_year),
min(release_year) from movies;
#Print a year and how many movies were released in that year starting with the latest year
select release_year,count(release_year) cnt from movies
group by release_year
order by release_year desc;
#Print profit % for all the movies
select *,(revenue-budget)*100/budget as profit_pct from financials;

