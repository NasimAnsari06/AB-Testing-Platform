-- Winning Page
SELECT
landing_page,
ROUND(AVG(converted)*100,2) AS conversion_rate
FROM ab_data
GROUP BY landing_page
ORDER BY conversion_rate DESC;

-- Best Performing Group
SELECT
`group`,
ROUND(AVG(converted)*100,2) AS conversion_rate
FROM ab_data
GROUP BY `group`
ORDER BY conversion_rate DESC;