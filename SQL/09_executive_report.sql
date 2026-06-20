SELECT
COUNT(DISTINCT user_id) AS total_users,
SUM(converted) AS total_conversions,
ROUND(AVG(converted)*100,2) AS overall_conversion_rate
FROM ab_data;