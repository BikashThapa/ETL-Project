CREATE OR REPLACE VIEW vw_sales_by_category AS
SELECT 
	c.name,
	SUM(net_bill_amt) as total_sales,
	AVG(net_bill_amt) as avg_price,
	SUM(qty) as total_quantity
FROM 
fact_sales s
JOIN dim_product p
	ON s.product_id = p.product_id
JOIN dim_category c
	ON p.category_id = c.category_id
GROUP BY c.name;