
/*

Write an SQL query to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.

Return the result table in any order.

*/


SELECT 
    activity_date AS day, COUNT(DISTINCT(user_id)) AS active_users

FROM 
    activity

WHERE activity_date between subdate('2019-07-27', 29) AND '2019-07-27'

GROUP BY 
    activity_date
