SELECT COUNT(*) FROM ab_data;

SELECT COUNT(*) AS total_rows
FROM ab_data;

SELECT COUNT(DISTINCT user_id) AS unique_users
FROM ab_data;

SELECT DISTINCT `group`
FROM ab_data;

SELECT DISTINCT landing_page
FROM ab_data;

SELECT
SUM(user_id IS NULL) AS user_nulls,
SUM(timestamp IS NULL) AS timestamp_nulls,
SUM(converted IS NULL) AS converted_nulls
FROM ab_data;