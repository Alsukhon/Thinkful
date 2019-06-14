WITH rainy
AS
(
SELECT DATE(date) AS rain_date
FROM weather
WHERE events = 'Rain'
GROUP BY 1
)

SELECT t.trip_id, t.duration, DATE(t.start_date)
FROM rainy r
JOIN trips t
ON r.rain_date = DATE(t.start_date)
ORDER BY duration DESC
LIMIT 3