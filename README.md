# Learner Journey Funnel & Engagement Drop-off Analysis

## Project Overview
This project analyzes learner behavior across online courses to understand **where engagement drops**, **why learners fail to complete courses**, and **which behavioral patterns influence successful completion**.

The analysis follows a complete analytics lifecycle — starting from **data quality checks and funnel logic using SQL**, moving through **data cleaning and exploratory analysis in Python**, and concluding with **visual storytelling using a multi-page Power BI dashboard**.

The objective is not only to report metrics, but to **explain learner behavior in a way that supports product, content, and learning design decisions**.

---

## Business Questions Addressed
- At which stage of the learner journey do the highest drop-offs occur?
- Do all learners behave similarly, or are there distinct behavioral segments?
- Does higher time investment or more assessment attempts guarantee course completion?
- How do assessment performance and learning pace influence completion outcomes?

---

## Analytical Approach

### 1. Data Quality & Preparation
- Performed **null checks, duplicate detection, and data consistency validation** using SQL.
- Cleaned and transformed raw learner activity data using **Python (Pandas)**.
- Created **analysis-ready curated datasets** for reliable reporting and visualization.

---

### 2. Funnel & Cohort Logic (SQL)
- Defined learner journey stages:
  - Enrolled  
  - Started  
  - 25% Progress  
  - 50% Progress  
  - 75% Progress  
  - Completed
- Built funnel logic to measure **drop-offs at each stage**.
- Designed cohort-style queries to compare learner behavior across progress stages.
- Ensured metric definitions remained consistent across SQL, Python, and Power BI.

---

### 3. Behavioral Segmentation
- Segmented learners based on engagement patterns:
  - **Learner Type:** Casual vs Power learners
  - **Learning Pace:** Slow vs Binge learners
- Compared completion outcomes across segments to avoid misleading aggregate analysis.

---

### 4. Assessment & Engagement Analysis
- Analyzed **average assessment scores** by completion status.
- Studied **assessment attempts** to evaluate assessment difficulty and learner struggle.
- Evaluated whether **higher effort translates to successful completion**.
- Analyzed the relationship between **time spent, performance, and completion**.

---

## Dashboard & Visual Storytelling (Power BI)

The Power BI dashboard is designed as a guided narrative, with **one business question per page**.

### Page 1: Learner Engagement Overview
- Total number of learners
- Overall completion rate
- Funnel visualization highlighting early-stage disengagement

### Page 2: Learner Segmentation
- Completion comparison by learner type
- Completion comparison by learning pace

### Page 3: Assessment Impact
- Average assessment scores by completion status
- Average assessment attempts by completion status
- Highlights cases where high effort does not guarantee completion

### Page 4: Time Investment
- Scatter analysis of time spent vs assessment performance
- Comparison of engagement patterns between completers and non-completers

---

## Key Insights
- Early-stage disengagement is the primary driver of overall learner drop-offs.
- Learner behavior varies significantly and should not be analyzed only at an aggregate level.
- High effort (time spent or multiple attempts) does not always result in course completion.
- Assessment structure and feedback influence learner persistence.
- Behavioral segmentation enables more targeted and actionable intervention strategies.

---

## Tools & Technologies
- **SQL:** Data quality checks, funnel logic, cohort analysis
- **Python (Pandas):** Data cleaning, transformation, exploratory analysis
- **Power BI:** Dashboarding and visual storytelling
- **Git & GitHub:** Version control and project documentation

---

## Project Structure
learner-journey-funnel-analysis/
│
├── data/
│ ├── raw/ # Original datasets
│ ├── cleaned/ # Cleaned datasets
│ └── curated/ # Analysis-ready datasets
│
├── sql/ # Data quality, funnel, and cohort queries
├── notebooks/ # Data cleaning, EDA, and validation notebooks
├── powerbi/ # Power BI dashboard (.pbix)
├── screenshots/ # Dashboard screenshots
├── docs/ # Assumptions, metrics, insights, recommendations
└── README.md

---

## Outcome
This project demonstrates the ability to:
- Translate raw behavioral data into **clear, business-relevant insights**
- Design **consistent and explainable metrics**
- Build **structured dashboards that tell a coherent story**
- Think beyond surface-level metrics to explain **why users behave the way they do**

---

## Ideal Use Cases
- Learning & Development analytics
- Product analytics for education platforms
- Engagement and funnel analysis for digital products
- Portfolio demonstration for Data Analyst / Business Analyst roles
