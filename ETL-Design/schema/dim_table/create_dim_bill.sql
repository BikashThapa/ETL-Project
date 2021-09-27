CREATE TABLE dim_bill(
  id SERIAL,
  bill_no INTEGER NOT NULL,
  bill_date TIMESTAMP NOT NULL,
  location_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  created_by VARCHAR(255) NOT NULL,
  updated_by VARCHAR(255) ,
  created_date TIMESTAMP NOT NULL,
  updated_date TIMESTAMP,
  CONSTRAINT pk_id PRIMARY KEY(id),
  CONSTRAINT fk_location_id1 FOREIGN KEY(location_id) REFERENCES dim_bill_location(location_id),
  CONSTRAINT fk_customer_id FOREIGN KEY(customer_id) REFERENCES dim_customer(customer_id)
);