INSERT INTO dim_customer(user_name,first_name,last_name,location_id,active)
SELECT 
  user_name,
  first_name,
  last_name,
  location_id,
  active
FROM customer_raw c
JOIN dim_customer_location d
ON c.country = d.country 
  AND c.town = d.town;

