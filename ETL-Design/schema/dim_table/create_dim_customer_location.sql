CREATE TABLE dim_customer_location(
  location_id SMALLSERIAL,
  country VARCHAR(100) NOT NULL,
  town VARCHAR(100) NOY NULL,
  CONSTRAINT pk_cust_location_id PRIMARY KEY(location_id)
)