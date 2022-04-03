/* 
Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Left Join then count nulls
*/


SELECT 
    customer_id, COUNT(*) as count_no_trans
FROM 
    visits
LEFT JOIN
    transactions on visits.visit_id = transactions.visit_id
WHERE 
    transaction_id IS NULL
GROUP BY 
    customer_id
