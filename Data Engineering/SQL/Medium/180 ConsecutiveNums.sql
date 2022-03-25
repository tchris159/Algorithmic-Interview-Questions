# Here we select distinct otherwise, it will duplicate a number that's repeated more than 3 times


SELECT DISTINCT
    l1.num as consecutiveNums
FROM
    logs l1
INNER JOIN logs l2 on l2.id = l1.id + 1 AND l2.num = l1.num
INNER JOIN logs l3 on l3.id = l1.id + 2 AND l3.num = l1.num

# Create 3 table aliases, L1, L2, and L3
# Inner join where the id matches the id 1 above, and 2 above it using l2, and l3
# AND also check if the value that id holds matches the one in l1's current value. 
# So creates a result set of a table filtered on id's/records that have 3 consecutive id's and nums's
