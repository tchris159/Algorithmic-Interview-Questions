/*

Write an SQL query to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.

Return the result table in any order.

*/

SELECT 
    name, SUM(AMOUNT) AS balance
FROM 
    users 
JOIN
    transactions ON users.account = transactions.account
GROUP BY 
    name
HAVING SUM(AMOUNT) > 10000
    
