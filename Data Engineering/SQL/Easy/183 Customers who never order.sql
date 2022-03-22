# Select the customers names column from Customers table, 
# Where it doesn't exist when you do an inner join with orders table

SELECT A.Name as Customers from Customers A
WHERE NOT EXISTS (SELECT 1 FROM Orders B Where A.Id = B.CustomerId)

#Select customer name and do a left join with orders table
# Filter where there is a null on orders table


SELECT A.Name from Customers A
LEFT JOIN Orders B on  a.Id = B.CustomerId
WHERE b.CustomerId is NULL

#Subquery selects the name, and filters where the ID is not in a subquery querying all id's from orders

SELECT A.Name from Customers A
WHERE A.Id NOT IN (SELECT B.CustomerId from Orders B)
