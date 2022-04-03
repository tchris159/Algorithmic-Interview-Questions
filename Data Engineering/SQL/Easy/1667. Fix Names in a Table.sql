/*
This table contains the ID and the name of the user. The name consists of only lowercase and uppercase characters.
 

Write an SQL query to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by user_id.

*/

# The LEFT() / RIGHT function extracts a number of characters from a string (starting from left).

SELECT 
    user_id, 
    CONCAT( UPPER(LEFT(name, 1)), LOWER(RIGHT(name, LENGTH(name)-1)) ) AS name
FROM 
    users
ORDER BY 
    user_id
