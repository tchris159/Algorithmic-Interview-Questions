# Find Followers Count user_id column and follower_id column under Followers table.
# COUNT(*) also works

SELECT 
    user_id, COUNT(follower_id) AS followers_count
FROM 
    followers
GROUP BY 
    user_id
ORDER BY 
    user_id ASC
