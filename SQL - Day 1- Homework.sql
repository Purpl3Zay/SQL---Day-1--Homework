-- Real Quick I think my data is messed up? It wasnt getting the same thing as Mr. Brandon :(


-- How many actors are there with the last name ‘Wahlberg’?
-- 2
select last_name
from actor 
where last_name = 'Wahlberg';

-- How many payments were made between $3.99 and $5.99?
-- 1
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 and amount <= 5.99;

-- What film does the store have the most of? (search in inventory)
-- multiple with 8 in stock
select film_id, COUNT(inventory_id)
from inventory
group by film_id
order by COUNT(inventory_id) desc;

-- How many customers have the last name ‘William’?
-- 0
select last_name
from customer
where last_name like 'William';

-- What store employee (get the id) sold the most rentals?
-- id 1
select staff_id, COUNT(rental_id)
from rental
group by staff_id
order by COUNT(rental_id) desc

-- How many different district names are there?
-- 603
select COUNT(district)
from address

-- What film has the most actors in it? (use film_actor table and get film_id)
select COUNT(distinct district)
from address;

-- From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- 13
select store_id, first_name, last_name
from customer
where store_id = 1 and last_name like '%es';

-- How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
-- 3
select amount
from payment
where customer_id between 380 and 430
group by amount
having count(payment_id) > 250
order by amount desc;

-- Within the film table, how many rating categories are there? And what rating has the most movies total?
-- 5 categories. pg-13 has 223
select rating, count(rating)
from film
group by rating
order by count(rating) desc;


