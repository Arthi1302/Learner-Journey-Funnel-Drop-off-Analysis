# Metrics Definition

This document defines all key metrics used in this project and explains
how each metric is calculated and interpreted.

These definitions ensure consistency across SQL analysis, Python processing,
and Power BI dashboards.

---

## 1. Total Learners

**Definition:**  
Number of unique learners in the dataset.

**Calculation:**  
`COUNT(DISTINCT user_id)`

**Usage:**  
Represents overall learner volume.

---

## 2. Completed Learners

**Definition:**  
Learners who successfully completed the course.

**Calculation:**  
Count of distinct `user_id` where `completion_status = 'Yes'`

**Usage:**  
Used as the numerator for completion-related metrics.

---

## 3. Completion Rate (%)

**Definition:**  
Percentage of learners who completed the course.

**Calculation:**  
`Completed Learners / Total Learners`

**Calculated At:**  
Learner level

**Usage:**  
High-level indicator of course effectiveness.

---

## 4. Funnel Stage

**Definition:**  
Stage representing learner progress through the course.

**Derived From:**  
`video_progress_pct`

**Funnel Stages Logic:**
- **Enrolled:** Learner has an enrollment record
- **Started:** `video_progress_pct > 0`
- **25% Progress:** `video_progress_pct >= 25`
- **50% Progress:** `video_progress_pct >= 50`
- **75% Progress:** `video_progress_pct >= 75`
- **Completed:** `completion_status = 'Yes'` or `video_progress_pct = 100`

**Usage:**  
Identifies where learners drop off in the journey.

---

## 5. Average Assessment Score

**Definition:**  
Average score achieved by learners in assessments.

**Calculation:**  
Mean of `assessment_score`

**Aggregation Rule:**  
Average (NOT sum)

**Usage:**  
Measures learning performance and outcome quality.

---

## 6. Average Assessment Attempts

**Definition:**  
Average number of attempts taken per learner to complete assessments.

**Calculation:**  
Mean of `assessment_attempts`

**Usage:**  
Used to understand assessment difficulty and learner struggle.

---

## 7. Time Spent (Minutes)

**Definition:**  
Total time spent by a learner engaging with course content.

**Source Column:**  
`time_spent_minutes`

**Usage:**  
Represents learner engagement depth.

---

## 8. Learner Type

**Definition:**  
Segmentation based on engagement behavior.

**Categories:**
- **Casual Learner:** Lower engagement frequency
- **Power Learner:** Higher engagement frequency

**Usage:**  
Used in segmentation analysis to compare completion behavior.

---

## 9. Learning Pace

**Definition:**  
Segmentation based on learning speed and session patterns.

**Categories:**
- **Slow Learner:** Longer gaps between sessions
- **Binge Learner:** Short, high-intensity learning sessions

**Usage:**  
Helps understand pacing patterns and drop-off risk.

---

## 10. Completion Status

**Definition:**  
Indicator of whether a learner completed the course.

**Values:**
- `Yes` → Completed
- `No` → Not Completed

**Usage:**  
Primary segmentation dimension across dashboards.

---

## Visualization Standards

- All averages are calculated at **learner level**.
- Scatter plots represent **individual learner behavior**.
- Color conventions:
  - **Dark Blue:** Completed learners
  - **Light Grey:** Not completed learners

---

This document serves as the single source of truth for all metrics used in the project.
