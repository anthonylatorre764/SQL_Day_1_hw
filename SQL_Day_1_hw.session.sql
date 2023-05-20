-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer: 2


-- 2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: None


-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) as film_count
FROM inventory
GROUP BY film_id
ORDER BY film_count DESC;
-- Answer: mutliple film_id's occur 8 times in inventory


-- 4. How many customers have the last name ‘William’?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
-- Answer: 0


-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id;
-- Answer: staff_id of 1


-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- Answer: 378


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id) as actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC;
-- Answer: film_id of 508


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(last_name) AS es_last_names
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
GROUP BY store_id;
-- Answer: 13


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 
-- 250 for customers with ids between 380 and 430? (use group by and having > 250)
SELECT amount, COUNT(rental_id), customer_id
FROM payment
GROUP BY amount, customer_id
HAVING COUNT(rental_id) > 250 AND customer_id BETWEEN 380 AND 430;
-- Answer: None


-- 10. Within the film table, how many rating categories are there? And what 
--     rating has the most movies total?
SELECT rating, COUNT(rating) as movie_count
FROM film
GROUP BY rating;
-- Answer: 5, PG-13

