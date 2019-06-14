
SELECT s.name, s.dockcount, COUNT(*) AS num_trips
FROM stations s
JOIN trips t
ON s.name = t.start_station
GROUP BY s.name, s.dockcount
ORDER BY s.dockcount 