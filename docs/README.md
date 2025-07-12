# Product_Based_Analysis: SQL-Based Product Analytics Warehouse

## Project Summary
This mini data warehouse simulates real-world product analytics for a SaaS company. Using mock data and SQL, it tracks user journeys (signup → login → purchase → upgrade), analyze retention, and extract funnel insights.

## Schema Overview
- `fact_user_events`: logs all user actions
- `dim_users`: user attributes (location, device)
- `dim_products`: product tiers
- `dim_time`: calendar breakdown (optional)

ERD: ![ERD](../schema/erd.png)

## Key Business Questions
- What’s our signup → upgrade conversion rate?
- What’s our 7-day and 30-day retention?
- What’s the average time to purchase?
- How do device types affect user churn?

## Sample SQL Queries
- Funnel analysis
- Retention logic (via lag)
- Daily active users

## Dashboard
- Power BI report for exploration

## Tech Used
- PostgreSQL / SQLite
- SQL (CTEs, window functions)
- Power BI 

