Learner Journey Funnel & Engagement Drop-off Analysis

End-to-end analysis of learner engagement patterns to understand drop-offs, behavioral differences, and completion drivers in online courses.

SQL · Python (Pandas) · Power BI · GitHub

📋 Table of Contents

Overview

Business Objective

Analysis Approach

Data & Assumptions

Dashboard Walkthrough

Key Insights

Tools Used

Project Structure

Screenshots

Notes & Limitations

🎯 Overview

This project analyzes learner activity data from an online learning platform to understand where learners disengage, how different learning behaviors affect completion, and whether effort and performance translate into successful outcomes.

Instead of focusing only on engagement metrics, the analysis was designed to diagnose why engagement breaks and identify patterns that can inform content design, assessment strategy, and learner support.

The project follows a realistic analytics workflow, starting from messy raw data and ending with business-ready insights and visual storytelling.

🧠 Business Objective

The primary objective of this analysis was to answer the following questions:

At which stages in the learning journey do learners drop off most frequently?

Do all learners behave similarly, or are there clear behavioral segments?

How do assessment performance and retry behavior relate to course completion?

Does higher time investment consistently lead to better outcomes?

Which learner segments are most at risk of disengagement?

These questions guided the SQL logic, Python analysis, and Power BI dashboard design.

🔍 Analysis Approach

The project was executed in four logical stages:

Data Quality & Validation (SQL)

Checked for missing values, inconsistent formats, and outliers

Validated core fields required for funnel and segmentation analysis

Data Cleaning & Transformation (Python)

Standardized dates, categories, and progress metrics

Handled nulls and unrealistic values

Created cleaned and curated datasets for analysis

Exploratory Analysis & Segmentation

Defined funnel stages based on learner progress

Segmented learners by engagement intensity and learning pace

Compared completers vs non-completers across key dimensions

Visualization & Storytelling (Power BI)

Designed dashboards with one business question per page

Focused on clarity, minimal color usage, and interpretability

🧪 Data & Assumptions

The dataset simulates LMS activity data and intentionally includes real-world issues such as:

Missing values

Inconsistent formats

Outliers and edge cases

Raw data is treated as immutable and is never modified after ingestion.

Completion is defined using the completion_status field.

Time spent reflects engagement effort, not necessarily effectiveness.

Detailed assumptions and metric definitions are documented in the docs/ folder.

📊 Dashboard Walkthrough
🔹 Page 1: Learner Engagement Overview

Purpose: Identify where learners drop off across the course journey.

Observations:

A significant portion of learners disengage shortly after enrollment.

Drop-offs continue gradually across mid-course stages rather than at a single sharp point.

Only a smaller subset of learners reach full completion.

This page establishes where engagement breaks before exploring underlying reasons.

🔹 Page 2: Learner Segmentation

Purpose: Understand how different learner behaviors affect completion.

Observations:

Casual learners form the largest group and contribute to the highest number of non-completions.

Power learners, though fewer, show more consistent completion behavior.

Learners who progress in concentrated sessions tend to complete more often than those with long gaps.

Segmentation revealed that aggregate metrics hide important behavioral differences.

🔹 Page 3: Assessment Impact

Purpose: Evaluate whether assessments influence learner drop-off.

Observations:

Completed learners generally achieve slightly higher assessment scores.

Non-completers often make more assessment attempts, suggesting difficulty rather than lack of effort.

Assessment performance influences persistence but does not fully explain disengagement.

This analysis helped identify assessments as a potential friction point rather than a single root cause.

🔹 Page 4: Time Investment

Purpose: Analyze the relationship between engagement depth and outcomes.


Observations:

Learners who complete courses typically spend more time engaging with content.
Beyond a certain threshold, increased time spent does not consistently lead to higher performance.
Some learners invest significant time but still do not complete, indicating issues unrelated to effort alone.
This highlighted that quality of engagement matters more than quantity.


📌 Key Insights

Early-stage disengagement is a major contributor to overall drop-offs.
Learner behavior varies significantly and should not be analyzed as a single group.
High effort does not always guarantee successful outcomes.
Assessment structure and feedback mechanisms influence learner persistence.
Targeted, behavior-based interventions are likely more effective than generic engagement strategies.


🛠️ Tools Used

SQL: Data quality checks, funnel logic, cohort analysis
Python (Pandas): Data cleaning, transformation, EDA
Power BI: Dashboarding and visual storytelling
Git & GitHub: Version control and documentation


learner-journey-funnel-analysis/
├── data/
│   ├── raw/
│   ├── cleaned/
│   └── curated/
├── sql/
├── notebooks/
├── powerbi/
├── screenshots/
├── docs/
└── README.md


📸 Screenshots

Dashboard screenshots for all four pages are available in the screenshots/ folder.


📝 Notes & Limitations

The dataset is simulated and does not represent a specific organization.
Correlation observed in the analysis does not imply causation.
Learner intent and external factors are not captured in the data.


🎯 Project Intent

This project was designed to reflect a real-world analytics workflow, focusing on:

Data quality and validation
Clear metric definitions
Behavioral analysis
Insight-driven storytelling

The emphasis is on understanding learner behavior, not just reporting metrics.