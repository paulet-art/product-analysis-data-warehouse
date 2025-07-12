-- How many users are moving through the conversion funnel?
WITH user_journey AS (
    user_id,
    MIN(CASE WHEN event_type = 'signup' THEN event_timestamp END) AS signup_time,
    MIN(CASE WHEN event_type = 'login' THEN event_timestamp END) AS login_time,
    MIN(CASE WHEN event_type = 'purchase' THEN event_timestamp END) AS purchase_time
    MIN(CASE WHEN event_type = 'upgrade' THEN event_timestamp END) AS upgrade_time,
    MIN(CASE WHEN event_type = 'downgrade' THEN event_timestamp END) AS downgrade_time,
    MIN(CASE WHEN event_type = 'cancel' THEN event_timestamp END) AS cancel_time
FROM fact_user_events
GROUP BY user_id
)
SELECT 
    COUNT(user_id) AS total_users,
    COUNT(signup_time) AS users_signed_up,
    COUNT(login_time) AS users_logged_in,
    COUNT(purchase_time) AS users_purchased,
    COUNT(upgrade_time) AS users_upgraded,
    COUNT(downgrade_time) AS users_downgraded,
    COUNT(cancel_time) AS users_cancelled
FROM user_journey
WHERE signup_time IS NOT NULL
AND login_time IS NOT NULL
AND purchase_time IS NOT NULL
AND upgrade_time IS NOT NULL  
AND downgrade_time IS NOT NULL
AND cancel_time IS NOT NULL;
-- This query calculates the number of users at each stage of the conversion funnel
-- It counts the total users, users who signed up, logged in, purchased, upgraded,
-- downgraded, and cancelled their accounts based on the event timestamps
-- The results can be used to analyze the conversion rates at each stage of the funnel
-- and identify potential drop-off points in the user journey
