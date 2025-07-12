WITH first_signup AS(
    SELECT
        user_id,
        MIN(event_timestamp) AS first_signup_time
    FROM fact_user_events
    WHERE event_type = 'signup' 
    GROUP BY user_id
),
logins AS(
    SELECT
        s.user_id,
        s.first_signup_time,
        e.event_timestamp AS login_time,
        DATE_PART('day', e.event_timestamp - s.first_signup_time) AS days_since_signup
    FROM first_signup s
    JOIN fact_user_events e ON s.user_id = e.user_id
    WHERE e.event_type = 'login' AND e.event_timestamp >= s.first_signup_time
)
SELECT
    days_since_signup,
    COUNT(DISTINCT user_id) AS users_logged_in
FROM logins
WHERE DATE_PART('day', login_time - first_signup_time) <= 30
GROUP BY days_since_signup
ORDER BY days_since_signup;
-- This query calculates the number of users who logged in within 30 days of their first signup