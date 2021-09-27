CREATE TABLE dim_brand(
  brand_id SMALLSERIAL,
  name VARCHAR(50) NOT NULL,
  ONSTRAINT pk_brand_id PRIMARY KEY(brand_id)
);