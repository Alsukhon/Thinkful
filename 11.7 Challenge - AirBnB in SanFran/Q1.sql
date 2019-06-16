WITH expensive
AS (
	SELECT *
FROM sfo_listings
ORDER BY price DESC
LIMIT 1
	)
	
SELECT sr.comments
FROM sfo_reviews sr
JOIN expensive e
ON sr.listing_id = e.id


-- People who rented this AirBnB agree that it is a beautiful and spacious home.