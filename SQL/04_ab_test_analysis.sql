-- Conversion Rate by Group
SELECT
`group`,
COUNT(*) AS users,
SUM(converted) AS conversions,
ROUND(AVG(converted)*100,2) AS conversion_rate
FROM ab_data
GROUP BY `group`;

-- Landing Page Conversion
SELECT
landing_page,
COUNT(*) AS users,
SUM(converted) AS conversions,
ROUND(AVG(converted)*100,2) AS conversion_rate
FROM ab_data
GROUP BY landing_page;

-- Conversion Lift
WITH grp AS
(
SELECT
`group`,
AVG(converted) AS conv_rate
FROM ab_data
GROUP BY `group`
)

SELECT
(
MAX(conv_rate)-MIN(conv_rate)
)*100 AS conversion_lift_percent
FROM grp;