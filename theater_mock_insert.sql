INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) VALUES(
	1,
	'Joe',
	'Egan',
	'5551 N Daniel dr. Newburg, OR 97123',
	'4242-4242-4242-4242 142 05/24'
);

INSERT INTO brand(
	seller_id,
	brand_name,
	contact_number,
	address
) VALUES (
	1,
	'Coding Temple LLC',
	'773-555-4490',
	'222 W Ontario St Chicago,IL'
);

insert into movies(
	movie_id,
	genre
) values (
	1,
	'Action-comedy'
);

insert into tickets (
	ticket_id,
	seats,
	amount,
	movie_id
) values (
	1,
	2,
	4.00,
	1
);






