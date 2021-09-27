CREATE  OR REPLACE VIEW vw_sales_product AS
SELECT 
	p.product_id,
	p.product_name,
	p.description,
	SUM(net_bill_amt) as total_sales,
	AVG(net_bill_amt) as avg_price,
	SUM(qty) as total_quantity
FROM 
fact_sales s
JOIN dim_product p
	ON s.product_id = p.product_id
GROUP BY p.product_id,p.product_name;