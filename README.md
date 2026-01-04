Learner Journey Funnel & Engagement Drop-off Analysis

End-to-end analysis of learner engagement data to understand where learners drop off, how behavior differs across segments, and what factors influence course completion.

Tools: SQL · Python (Pandas) · Power BI · GitHub

📌 1. Project Overview

This project analyzes learner activity data from an online learning platform to identify patterns of engagement and disengagement across the course lifecycle.

The analysis focuses on diagnosing why engagement breaks, rather than only measuring surface-level metrics like views or enrollments. The project follows a realistic analytics workflow, starting from messy raw data and ending with insight-driven dashboards and business recommendations.

🎯 2. Business Objectives

The analysis was guided by the following objectives:

Identify stages in the learner journey where drop-offs are most frequent

Understand whether different learner behaviors lead to different outcomes

Analyze the relationship between assessments and course completion

Evaluate whether higher time investment always leads to better performance

Segment learners to identify high-risk and high-performing groups

🔍 3. Analysis Approach

The project was executed in structured stages:

3.1 Data Quality & Validation (SQL)

Checked for missing values, duplicates, and invalid records

Validated fields required for funnel and segmentation logic

Defined consistent rules for completion and progress stages

3.2 Data Cleaning & Transformation (Python)

Standardized date formats, categorical values, and progress metrics

Handled null values and unrealistic outliers

Created cleaned and curated datasets for analysis and visualization

3.3 Exploratory Analysis & Segmentation

Defined learner funnel stages based on progress thresholds

Segmented learners by engagement intensity and learning pace

Compared completers vs non-completers across key metrics

3.4 Visualization & Storytelling (Power BI)

Designed dashboards with one clear business question per page

Used minimal colors and consistent formatting for clarity

Focused on interpretability rather than visual complexity

🧪 4. Data & Assumptions

The dataset simulates LMS activity data and intentionally includes:

Missing values

Inconsistent formats

Outliers and edge cases

Raw data is treated as immutable and never modified after ingestion

Completion is defined using the completion_status field

Time spent represents engagement effort, not guaranteed learning success

Detailed assumptions and metric definitions are documented in the docs/ folder.

📊 5. Dashboard Walkthrough & Observations
5.1 Page 1 – Learner Engagement Overview

Purpose: Identify where learners drop off in the course journey.

Key Observations:

A large portion of learners disengage shortly after enrollment

Drop-offs occur gradually across mid-course stages

Only a smaller subset of learners reach full completion

5.2 Page 2 – Learner Segmentation

Purpose: Understand how learner behavior affects completion.

Key Observations:

Casual learners form the largest group and contribute most to non-completions

Power learners show more consistent completion behavior

Learners with concentrated learning sessions tend to complete more often

5.3 Page 3 – Assessment Impact

Purpose: Evaluate whether assessments influence learner drop-off.

Key Observations:

Completed learners generally score slightly higher on assessments

Non-completers often attempt assessments more times

Assessment difficulty appears to affect persistence but is not the sole cause of drop-off

5.4 Page 4 – Time Investment

Purpose: Analyze the relationship between engagement depth and outcomes.

Key Observations:

Completers generally spend more time engaging with content

Increased time spent does not always translate to higher performance

Some learners invest significant time but still fail to complete

📌 6. Key Insights

Early-stage disengagement is a major driver of overall drop-offs

Learner behavior varies significantly and should not be analyzed in aggregate

High effort does not always guarantee successful completion

Assessment structure and feedback play a role in learner persistence

Behavioral segmentation enables more targeted intervention strategies

🛠️ 7. Tools Used

SQL: Data quality checks, funnel logic, cohort analysis

Python (Pandas): Data cleaning, transformation, EDA

Power BI: Dashboarding and visual storytelling

Git & GitHub: Version control and documentation

📁 8. Project Structure

learner-journey-funnel-analysis/
├── data/          # raw, cleaned, curated datasets
├── sql/           # data quality, funnel, cohort queries
├── notebooks/     # cleaning, EDA, validation
├── powerbi/       # Power BI dashboard (.pbix)
├── screenshots/   # dashboard images
├── docs/          # assumptions, metrics, insights, recommendations
└── README.md
