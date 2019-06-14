SELECT COUNT(CASE WHEN docks_available = 0 THEN 'full' END) full_count, t.name
FROM status s
JOIN stations t
ON s.station_id = t.station_id
GROUP BY t.name
