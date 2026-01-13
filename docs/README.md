# 🗄️ Product Analytics Data Warehouse

## Overview
A mini **SQL-based data warehouse** simulating product analytics for a SaaS company.  
Tracks **user journeys** (signup → login → purchase → upgrade), retention, and funnel metrics using mock data.

---

## Schema
- **fact_user_events** – User actions  
- **dim_users** – User attributes  
- **dim_products** – Product tiers  
- **dim_time** – Calendar breakdown  

ERD: ![ERD](../schema/erd.png)

---

## Key Questions
- Signup → upgrade **conversion rate**  
- **7-day & 30-day retention**  
- Average **time to purchase**  
- Impact of **device type on churn**

---

## Tech & Tools
- **SQL:** PostgreSQL / SQLite, CTEs, window functions  
- **BI:** Power BI dashboards for visualization  
