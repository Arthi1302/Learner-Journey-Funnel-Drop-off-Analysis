-- Learner Cohort & Behavioral Analysis

WITH learner_behavior AS (
    SELECT
        user_id,
        course_id,
        learning_pace,
        device_type,
        completion_status,
        time_spent_minutes
    FROM learner_activity
),

cohort_summary AS (
    SELECT
        learning_pace,
        completion_status,
        COUNT(DISTINCT user_id) AS learners,
        AVG(time_spent_minutes) AS avg_time_spent
    FROM learner_behavior
    GROUP BY learning_pace, completion_status
)

SELECT *
FROM cohort_summary
ORDER BY learning_pace, completion_status;
