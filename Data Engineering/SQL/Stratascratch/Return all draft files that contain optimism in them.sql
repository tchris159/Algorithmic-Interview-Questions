SELECT * 
FROM sql_interviews.google_file_store
WHERE
  filename ILIKE 'draft%' AND
  contents ILIKE '%%optimism%' 
  
/* 
ILIKE is when lowercase doesn't matter. LIKE matters
 */
