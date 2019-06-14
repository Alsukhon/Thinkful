SELECT end_station, AVG(duration) AS trip_duration
FROM trips
GROUP BY end_station;