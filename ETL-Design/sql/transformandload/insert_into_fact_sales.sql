INSERT INTO fact_sales (
    bill_id, product_id, qty, gross_price, tax_amt, discount_amt, net_bill_amt
)
SELECT 
  db.id,
  dp.product_id,
  CAST(qty as SMALLINT),
  CAST(gross_price AS FLOAT),
  CAST(tax_amount AS FLOAT),
  CAST(discount_amt AS FLOAT),
  CAST(net_bill_amt AS FLOAT)
FROM sales_raw sr
JOIN dim_bill db
  ON db.id =CAST(sr.bill_no AS INT)
JOIN dim_product dp
  ON dp.product_id = CAST(sr.product_id AS INT);
  