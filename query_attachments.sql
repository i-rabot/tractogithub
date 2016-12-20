-- All trac attachments to link to 
SELECT 
  id, 
  filename, 
  time / 1000000 as PosixTime,
  author 
from attachment
where type = 'ticket'
order by time asc
