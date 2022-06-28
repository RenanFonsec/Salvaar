use sakila;
select * from country;
select * from film;
select * from language;

# 1. Quais os países cadastrados?
select country as PAIS from country;

# 2. Quantos paises estão cadastrados?
select count(*) as PAIS from country; 

# 3. Quantos paises que terminam com a letra "A" estão cadastrados?
select country as PaisescomoFinalA from country where country like "%A" order by country;

# 4. Listar, sem repetição, os anos que houveram lançamento de filme.
select distinct release_year from film order by release_year;

# 5. Alterar o ano de lançamento igual 2007 para filmes que iniciem com a Letra "B".
update film  set release_year = 2007 where title like 'B%';

# 6. Listar os filmes que possuem duração do filme maior que 100 e classificação igual a "G".
select title, length as Duracao, rating as Classificacao from film where length >100 and rating  like 'G' order by title;

# 7. Alterar o ano de lançamento igual 2008 para filmes que possuem duração da locação menor que 4 e 
# classificação igual a "PG". 
update film set release_year = 2008 where rental_rate < 4 and rating = 'PG';

# 8. Listar a quantidade de filmes que estejam classificados como "PG-13" e preço da locação maior que 2.40
select count(*) as Filmes from film where rating like 'PG-13' and rental_rate > 2.40;

# 9.  Quais os idiomas que possuem filmes cadastrados? 
#########

# 10. Alterar o idioma para "GERMAN" dos filmes que possuem preço da locação maior que 4
update film set language_id = '6' where rental_rate > 4;

# 11. Alterar o idioma para "JAPANESE" dos filmes que possuem preço da locação igual 0.99.
update film set language_id = '3' where rental_rate = 0.99;

# 12. Listar a quantidade de filmes por classificação
select rating, count(*) as Filmes from film group by rating;

# 13. Listar, sem repetição, os preços de locação dos filmes cadastrados.
select distinct rental_rate as 'Preço da locação' from  film order by rental_rate;

# 14. Listar a quantidade de filmes por preço da locação.
select rental_rate as 'Preço da Locação', count(*) as Filmes from film group by rental_rate order by rental_rate;

# 15.  Listar os precos da locação que possuam mais de 340 filmes.
select rental_rate as 'Preço da Locação', count(*) as Quantidade from film group by rental_rate having count(*) > 340 order by rental_rate;