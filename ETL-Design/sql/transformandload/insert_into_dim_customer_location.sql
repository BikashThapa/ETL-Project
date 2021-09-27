INSERT INTO dim_customer_location(country,town)
SELECT  
    DISTINCT country,town 
  FROM customer_raw;