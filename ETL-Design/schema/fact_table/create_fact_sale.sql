CREATE TABLE fact_sales(
  id SERIAL,
  bill_id INTEGER NOT NULL,
  product_id INTEGER NOT NULL,
  qty SMALLINT NOT NULL,
  gross_price FLOAT,
  tax_amt FLOAT,
  discount_amt FLOAT,
  net_bill_amt FLOAT,
  CONSTRAINT pk_fact_sales_id PRIMARY KEY(id),
  CONSTRAINT fk_bill_id FOREIGN KEY(bill_id) REFERENCES dim_bill(id),
  CONSTRAINT fk_product_id FOREIGN KEY(product_id) REFERENCES dim_product(product_id)
)