INSERT INTO dim_product (
  product_name, description, price, mrp, pieces_per_case, uom, brand_id, category_id, tax_pc, discount_pc, active, created_by, created_date, updated_by, updated_date
)

SELECT 
  product_name,
  description,
  CAST (pr.price AS FLOAT),
  CAST (mrp AS FLOAT),
  CAST (pieces_per_case AS FLOAT),
  pr.uom,
  db.brand_id,
  category_id,
  CAST (tax_percent AS FLOAT),
  CAST(discount_pc AS FLOAT),
  active,
  pr.created_by,
  DATE(pr.created_date),
  pr.updated_by,
DATE(pr.updated_date)
FROM product_raw pr
JOIN dim_brand db
ON db.name = pr.brand
JOIN dim_category dc
ON dc.name = pr.category
JOIN sales_raw sr
ON sr.product_id = pr.product_id;