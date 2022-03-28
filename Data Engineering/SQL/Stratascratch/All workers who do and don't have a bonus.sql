SELECT * 
FROM sql_interviews.worker AS w
LEFT JOIN sql_interviews.bonus b
  ON w.worker_id = b.worker_ref_id
  
/*

For all of the rows in the LEFT Table, return all of the rows, including all of the ones that have a null

*/
