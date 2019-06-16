SELECT
	EXTRACT(MONTH FROM sfo_calendar.calender_date) AS  the_month,
	AVG(CAST(REPLACE(SUBSTR(sfo_calendar.price, 2), ',' ,'') AS FLOAT)) AS price
FROM sfo_calendar
WHERE price != 'null'
GROUP BY 1
ORDER BY 2