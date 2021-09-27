CREATE TABLE dim_bill_location(
  location_id SMALLSERIAL ,
  name VARCHAR(50) NOT NULL,
  CONSTRAINT pk_location_id PRIMARY KEY(location_id)
);