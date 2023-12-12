CREATE TABLE customer (
  customer_id SERIAL primary key,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(150),
  billing_info VARCHAR(150)
);

CREATE TABLE order_c (
  order_id SERIAL primary key,
  order_date DATE default current_date,
  sub_total NUMERIC(8,2),
  order_total NUMERIC(10,2),
  cart_id INTEGER not null,
  ticket_id INTEGER not null,
  foreign key (cart_id) references till(cart_id),
  foreign key (ticket_id) references tickets(ticket_id)
);

CREATE TABLE brand (
  brand_id SERIAL primary key,
  brand_name VARCHAR(100),
  contact_number VARCHAR(15),
  address VARCHAR(100)
);

CREATE TABLE product (
  product_id SERIAL primary key,
  amount NUMERIC(5,2),
  prooduct_name VARCHAR(100),
  upc INTEGER not null,
  brand_id INTEGER not null,
  foreign key (upc) references inventory(upc),
  foreign key (brand_id) references brand(brand_id)
);

CREATE TABLE inventory (
  upc SERIAL primary key,
  product_amount INTEGER,
  order_id INTEGER not null,
  ticket_id INTEGER not null,
  foreign key (order_id) references order_c(order_id)
);

CREATE TABLE till (
  cart_id SERIAL primary key,
  customer_id INTEGER not null,
  foreign key (customer_id) references customer(customer_id)
);

CREATE TABLE tickets (
  ticket_id SERIAL primary key,
  seats INTEGER,
  amount NUMERIC(3,2),
  movie_id INTEGER not null,
  foreign key (movie_id) references movies(movie_id)
);

CREATE TABLE movies (
  movie_id SERIAL primary key,
  genre VARCHAR(20)
);

