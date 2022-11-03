-- SELECT

-- select all staff order by first_name

SELECT * FROM staff ORDER BY first_name

-- select all payment order by amount desc

SELECT * FROM payment ORDER BY amount DESC

-- select all addresses order by postal_code asc

SELECT * FROM address ORDER BY postal_code ASC




-- JOIN

-- Select all customers ad join their addresses.

SELECT 
	customer_id,
	customer.address_id, 
	first_name, 
	last_name, 
	address, 
	address2, 
	district, 
	city_id, 
	postal_code 
FROM 
	customer
INNER JOIN address
	ON address.address_id = customer.address_id
	

-- Select all stores and join their addresses.

SELECT 
	store_id,
	store.address_id,
	address, 
	address2, 
	district, 
	city_id, 
	postal_code 
FROM
	store
INNER JOIN address
	ON address.address_id = store.address_id

-- Select all stores and join staff using manager_staff_id

SELECT
	store.store_id,
	manager_staff_id,
	first_name,
	last_name
FROM
 	store
INNER JOIN staff
	ON staff.staff_id = store.manager_staff_Id

-- Select all addresses join cities

SELECT
	address_id,
	address.city_id,
	address,
	address2,
	postal_code,
	city,
	country_id
FROM
	address
INNER JOIN city
	ON city.city_id = address.city_id
	
	

-- GROUP BY

-- find total payment by date

SELECT
	DATE(payment_date) AS date_of_payments,
	SUM(amount) AS sum_of_payments
FROM 
	payment
GROUP BY
	date_of_payments
ORDER BY date_of_payments DESC


-- find average payment

SELECT 
	AVG(amount)
FROM
	payment

-- sum all payments

SELECT
	SUM(amount)
FROM
	payment