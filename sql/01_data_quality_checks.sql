-- ========================================
-- DATA QUALITY CHECKS: Learner Activity
-- ========================================

-- 1. Total rows in raw data
SELECT COUNT(*) AS total_rows
FROM learner_activity;

-- 2. Distinct users and courses
SELECT
    COUNT(DISTINCT user_id) AS distinct_users,
    COUNT(DISTINCT course_id) AS distinct_courses
FROM learner_activity;

-- 3. Check for invalid video progress values
SELECT COUNT(*) AS invalid_video_progress
FROM learner_activity
WHERE video_progress_pct > 100
   OR video_progress_pct < 0;

-- 4. Missing video progress
SELECT COUNT(*) AS missing_video_progress
FROM learner_activity
WHERE video_progress_pct IS NULL;

-- 5. Zero time spent but progress exists
SELECT COUNT(*) AS zero_time_with_progress
FROM learner_activity
WHERE time_spent_minutes = 0
  AND video_progress_pct > 0;

-- 6. Missing assessment attempts
SELECT COUNT(*) AS missing_assessment_attempts
FROM learner_activity
WHERE assessment_attempts IS NULL;

-- 7. Missing assessment scores
SELECT COUNT(*) AS missing_assessment_scores
FROM learner_activity
WHERE assessment_score IS NULL;

-- 8. Completion status inconsistency
SELECT DISTINCT completion_status
FROM learner_activity;

-- 9. Device type inconsistency
SELECT DISTINCT device_type
FROM learner_activity;

-- 10. Enrollment date format issues
SELECT COUNT(*) AS invalid_enrollment_dates
FROM learner_activity
WHERE TRY_CAST(enrollment_date AS DATE) IS NULL;
