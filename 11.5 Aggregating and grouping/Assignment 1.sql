SELECT zip, MAX(maxtemperaturef) AS hottest_day
FROM weather
GROUP BY zip ;