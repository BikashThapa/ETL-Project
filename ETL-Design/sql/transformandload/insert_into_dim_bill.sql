INSERT INTO dim_bill (
  bill_no, bill_date, location_id, customer_id, created_by, updated_by, created_date, updated_date
)
SELECT 
  CAST(bill_no AS INT),
  CASE 
    WHEN SPLIT_PART(bill_date, ' ', 1) = '2017-02-30'
      THEN '2017-02-28'
    ELSE
      CAST(SPLIT_PART(bill_date, ' ', 1) AS DATE)
  END,
  location_id,
  CAST (customer_id AS INT),
  INITCAP(created_by),
  CASE 
    WHEN updated_by IS NULL
      THEN created_by
    ELSE 
	  INITCAP(updated_by)
  END,
  CASE 
    WHEN SPLIT_PART(created_date, ' ', 1) = '2017-02-30'
      THEN '2017-02-28'
    ELSE
      CAST(SPLIT_PART(created_date, ' ', 1) AS DATE)
    END,
  CASE WHEN SPLIT_PART(created_date, ' ', 1) = '2017-02-30'
    THEN '2017-02-28'
  ELSE
    CAST(SPLIT_PART(created_date, ' ', 1) AS DATE)
  END
FROM sales_raw sr
JOIN dim_bill_location dbl
ON dbl.name = sr.bill_location;