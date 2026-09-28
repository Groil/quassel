DELETE FROM backlog
WHERE bufferid = :bufferid
AND messageid < (SELECT messageid FROM backlog WHERE bufferid = :bufferid ORDER BY messageid DESC LIMIT 1 OFFSET :offset)
