SELECT
    event_timestamp,
    COUNT(DISTINCT user_id) AS daily_active_users
FROM fact_user_events
GROUP BY event_timestamp
ORDER BY event_timestamp;
-- This query calculates the number of daily active users based on their event timestamps