# Approach using LIMIT and Group BY
# Use limit in the Order By Clause 
# Group by the customer number
# then just order these groups by their counts, in descending order 

SELECT 
    customer_number
FROM 
    orders
GROUP BY 
    customer_number
ORDER BY 
    COUNT(*) DESC
LIMIT 
    1
