INSERT INTO dim_bill_location(name)
SELECT  
  DISTINCT bill_location
FROM sales_raw;