
SELECT 
    product.product_id, product.product_name
FROM 
    Product
JOIN 
    Sales ON product.product_id = sales.product_id
GROUP BY 
    product.product_id
HAVING
    MIN(sale_date) >= '2019-01-01' AND MAX(sale_date) <='2019-03-31'
