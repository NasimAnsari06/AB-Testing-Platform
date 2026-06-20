-- Converted Users
SELECT COUNT(DISTINCT user_id)
FROM ab_data
WHERE converted = 1;

-- Non Converted Users
SELECT COUNT(DISTINCT user_id)
FROM ab_data
WHERE converted = 0;

-- Conversion Share
SELECT
converted,
COUNT(*) users
FROM ab_data
GROUP BY converted;