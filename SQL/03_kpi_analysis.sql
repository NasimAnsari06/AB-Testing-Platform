-- Total Users
SELECT COUNT(DISTINCT user_id) AS total_users
FROM ab_data;

-- Total Conversions
SELECT SUM(converted) AS total_conversions
FROM ab_data;

-- Overall Conversion Rate
SELECT
ROUND(AVG(converted)*100,2) AS conversion_rate
FROM ab_data;

-- Total Records by Group
SELECT
`group`,
COUNT(*) AS users
FROM ab_data
GROUP BY `group`;