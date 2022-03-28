# return id's of customers as names that are not referred by id =2 
# where

SELECT 
    name 
FROM 
    customer
WHERE 
    referee_id != 2 
        OR 
    referee_id IS NULL
