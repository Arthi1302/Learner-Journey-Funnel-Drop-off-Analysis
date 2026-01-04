-- Learner Engagement Funnel Logic

WITH base_activity AS (
    SELECT
        user_id,
        course_id,
        video_progress_pct,
        completion_status
    FROM learner_activity
),

funnel_stage_mapping AS (
    SELECT
        user_id,
        course_id,
        CASE
            WHEN completion_status = 'Yes' THEN 'Completed'
            WHEN video_progress_pct >= 75 THEN '75%'
            WHEN video_progress_pct >= 50 THEN '50%'
            WHEN video_progress_pct >= 25 THEN '25%'
            WHEN video_progress_pct > 0 THEN 'Started'
            ELSE 'Enrolled'
        END AS funnel_stage
    FROM base_activity
)

SELECT
    funnel_stage,
    COUNT(DISTINCT user_id) AS learners
FROM funnel_stage_mapping
GROUP BY funnel_stage
ORDER BY
    CASE funnel_stage
        WHEN 'Enrolled' THEN 1
        WHEN 'Started' THEN 2
        WHEN '25%' THEN 3
        WHEN '50%' THEN 4
        WHEN '75%' THEN 5
        WHEN 'Completed' THEN 6
    END;
