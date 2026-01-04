# Assumptions

This project is based on simulated LMS (Learning Management System) data.
The following assumptions were made to ensure consistent analysis and realistic interpretation of learner behavior.

---

## Data Assumptions

1. **Unique Learner Identification**
   - `user_id` uniquely identifies a learner across courses and sessions.

2. **Completion Definition**
   - A learner is considered **Completed** if `completion_status = 'Yes'`.

3. **Progress-Based Stages**
   - Funnel stages are derived from `video_progress_pct`:
     - Enrolled: enrollment exists
     - Started: progress > 0
     - 25%, 50%, 75% stages based on progress thresholds
     - Completed: progress = 100 or completion_status = Yes

4. **Time Spent Interpretation**
   - `time_spent_minutes` represents active engagement time.
   - Zero or extremely high values are treated as potential noise during analysis.

5. **Assessment Behavior**
   - Multiple assessment attempts are allowed.
   - Higher attempts may indicate difficulty, not necessarily disengagement.

6. **Learner Segmentation**
   - Learners are categorized into:
     - Casual vs Power Learners (based on engagement frequency)
     - Slow vs Binge Learners (based on time gaps and session behavior)

---

## Analytical Assumptions

7. **Correlation ≠ Causation**
   - Relationships between time spent, scores, and completion are directional insights, not causal proof.

8. **Missing Data Handling**
   - Missing values are either imputed, excluded, or flagged depending on the metric’s importance.

9. **Course Uniformity**
   - Courses are assumed to have comparable difficulty levels for high-level analysis.

---

These assumptions ensure transparency and allow stakeholders to correctly interpret the insights derived from this analysis.
