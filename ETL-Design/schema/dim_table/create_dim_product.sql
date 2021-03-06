CREATE TABLE dim_product(
  product_id SERIAL,
  product_name VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  mrp FLOAT NOT NULL,
  pieces_per_case FLOAT NOT NULL,
  uom VARCHAR(255) NOT NULL,
  brand_id INTEGER NOT NULL,
  category_id INTEGER NOT NULL,
  tax_pc FLOAT NOT NULL,
  discount_pc FLOAT NOT NULL,
  active CHAR(1) NOT NULL,
  created_by VARCHAR(255) NOT NULL,
  created_date TIMESTAMP NOT NULL,
  updated_by VARCHAR(255),
  updated_date TIMESTAMP,
  CONSTRAINT pk_product_id PRIMARY KEY(product_id),
  CONSTRAINT fk_brand_id FOREIGN KEY(brand_id) REFERENCES dim_brand(brand_id),
  CONSTRAINT fk_category_id FOREIGN KEY(category_id) REFERENCES dim_category(category_id)
);