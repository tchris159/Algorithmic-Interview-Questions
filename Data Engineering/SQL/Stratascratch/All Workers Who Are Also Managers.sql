-- Print all workers who are also managers

/*

Thought process,

Worker table, and Job Title table

Worker table has all the information about the worker but not job title

but for job title but only a reference to a worker

1. SELECT All columns from the first table, because we don't know what we need.
2. Then combine the the title table
3. Explain join clause - join clause works by joining the tables, and filtering the new table using an ON clause like a WHERE clause for joins
4. JOIN the tables, you first name them, using AS w and AS t
5. Can test using ON True
6. The issue is we only want the rows where the worker_id = worker_ref_id
7. Then we need to filter on managers
8. Use a where clause
9. Lastly choose the columns you want, so for example, w.first_name, and w.worker_title
*/

SELECT w.first_name, t.worker_title
FROM sql_interview.worker AS w
JOIN sql_interview.title as t
  ON w.worker_id = t.worker_ref_id
WHERE t.worker_title = 'Manager
