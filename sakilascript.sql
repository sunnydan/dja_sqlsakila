use sakila;

select customer.first_name, customer.last_name, customer.email, address.address from customer join address where address.city_id = 312;

select film.title, film.film_id, film.description, film.release_year, film.rating, film.special_features, category.name from film 
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where category.name = "comedy";

select actor.actor_id, actor.first_name, actor.last_name, film.title, film.film_id, film.description, film.release_year from film 
join film_actor on film.film_id = film_actor.film_id
join actor on actor.actor_id = film_actor.actor_id
where actor.actor_id = 5;

select customer.first_name, customer.last_name, address.address, city.city_id, store.store_id from customer
join address on address.address_id = customer.address_id
join store on store.store_id = customer.store_id
join city on city.city_id = address.city_id
where store.store_id = 1 and city.city_id in (1, 42, 459);

select film.title, film.description, film.release_year, film.rating, film.special_features from film 
where film.rating = "G" and special_features like "%behind the scenes%";

select film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name from film
join film_actor on film.film_id = film_actor.film_id
join actor on actor.actor_id = film_actor.actor_id
where film.film_id = 369;

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where category.name = "drama" and film.rental_rate = 2.99;

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name, actor.first_name, actor.last_name from film
join film_actor on film.film_id = film_actor.film_id
join actor on actor.actor_id = film_actor.actor_id
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
where actor.first_name = "Sandra" and
actor.last_name = "Kilmer" and
category.name = "action";
