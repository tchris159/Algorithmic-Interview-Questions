# Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Note that you are supposed to write a DELETE statement and not a SELECT one. 

# The Approach is to treat it like a SELECT to first find which records to delete

# Use WHERE to find where the emails match
# then find only the bigger values, also in the condition 

# Delete all records from P1, where the email matches, and there's a greater id 

DELETE
    p1.*
FROM 
    person p1,
    person p2
WHERE p1.email = p2.email AND p1.id > p2.id
