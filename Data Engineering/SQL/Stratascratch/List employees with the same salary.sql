-- We see that we have 1 table with all of the information we need
-- We just need to compare this table to itself

/*

1. SELECT ALL because we don't know what we need yet
2. Not much different from worker to title table comparison in the other problem. 
3. We check where the salaries of the workers equal each other using a JOIN from worker 1  and worker 2 
4. Obviously every worker has the same salary as itself, so thats the problem. 
5. So we need to add a where conditiion where it does not equal the id

*/

SELECT w1.first_name, w2.first_name, w1.salary 
FROM sql_interviews.worker AS w1
JOIN sql_interviews.worker AS w2  
  ON w1.salary = w2.salary AND
  w1.worker_id != w2.worker_id
