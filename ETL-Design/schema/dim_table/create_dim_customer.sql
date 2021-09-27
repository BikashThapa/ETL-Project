CREATE TABLE dim_customer(
  customer_id SERIAL,
  user_name VARCHAR(100) NOT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  location_id INTEGER NOT NULL,
  active CHAR(1) NOT NULL,
  CONSTRAINT pk_customer_id PRIMARY KEY(customer_id),
  CONSTRAINT fk_location_id FOREIGN KEY(location_id) REFERENCES dim_customer_location(location_id)
);