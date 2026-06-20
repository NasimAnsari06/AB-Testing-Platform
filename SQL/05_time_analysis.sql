-- Daily Users
SELECT
DATE(timestamp) AS day,
COUNT(DISTINCT user_id) users
FROM ab_data
GROUP BY DATE(timestamp);

-- Daily Conversions
SELECT
DATE(timestamp) AS day,
SUM(converted) conversions
FROM ab_data
GROUP BY DATE(timestamp);

-- Hourly Conversion Rate
SELECT
HOUR(timestamp) AS hour_of_day,
ROUND(AVG(converted)*100,2) conversion_rate
FROM ab_data
GROUP BY HOUR(timestamp)
ORDER BY hour_of_day;