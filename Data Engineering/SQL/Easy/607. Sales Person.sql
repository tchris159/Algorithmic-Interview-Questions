/*
Return all salespersons who did not have any order related to the company with the name RED

Interesting solution...to explain for others...
The first inner join creates a view for just 'RED' orders
The right join ensures all salespersons are included (even those who do not have RED orders)
The WHERE IS NULL gives salespersons who did not have any RED orders due to the right join

*/

SELECT 
    salesperson.name
FROM
    orders 
JOIN 
    company ON (orders.com_id = company.com_id AND company.name = 'RED') 
    #Inner join view for just red
RIGHT JOIN
    salesperson ON salesperson.sales_id = orders.sales_id  #all sales person included
WHERE
    orders.sales_id IS NULL
