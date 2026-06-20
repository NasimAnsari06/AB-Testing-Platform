SELECT
`group`,
COUNT(*) AS total_users,
SUM(converted) AS converted_users,
ROUND(AVG(converted)*100,2) AS conversion_rate
FROM ab_data
GROUP BY `group`;