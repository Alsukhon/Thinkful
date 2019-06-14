SELECT start_station, COUNT(*) AS trips
FROM trips
GROUP BY start_station;