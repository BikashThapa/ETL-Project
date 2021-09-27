CREATE TABLE dim_category(
  category_id SMALLSERIAL,
  name VARCHAR(50) NOT NULL,
  CONSTRAINT pk_category_id PRIMARY KEY(category_id)
);