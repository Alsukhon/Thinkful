SELECT
    trip_id,
    duration
FROM
    trips
WHERE 
    duration > 500
ORDER BY duration DESC;