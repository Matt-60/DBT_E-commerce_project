# 📊 DBT E-commerce Analytics Project

This project builds a complete analytics pipeline for an e-commerce dataset using dbt and Snowflake, transforming raw transactional data into a structured **star schema optimized for BI tools** such as Power BI, Tableau, and Looker.

---

# 🧭 Project Overview

The project follows a layered dbt architecture:

- **Staging layer** → raw data cleaning and standardization  
- **Intermediate layer** → reusable business logic and data enrichment  
- **Marts layer** → BI-ready star schema (facts and dimensions)

---

# 🏗️ Data Architecture

staging → intermediate → marts

---

# 🟡 Staging Layer (stg_)

Light transformations applied directly to source data:

- renaming columns  
- type casting  
- basic data cleaning  

### Models:
- stg_customers
- stg_orders
- stg_products
- stg_payments

Materialization: view

---

# 🔵 Intermediate Layer (int_)

Reusable business logic layer used across multiple marts:

- order enrichment
- customer metrics
- product performance calculations
- payment aggregation

### Models:
- int_orders_enriched
- int_customer_orders
- int_customer_payments
- int_product_sales

Materialization: view

---

# 🟣 Marts Layer (dim_ / fct_)

Final analytics-ready layer structured as a **star schema**.

## Dimensions
- dim_customers
- dim_products

## Facts
- fct_orders
- fct_customer_payments
- fct_product_sales

Materialization: table

---

# ⭐ Star Schema

      dim_customers        dim_products
             \                 /
              \               /
               \             /
                fct_orders

KPI marts: fct_customer_payments, fct_product_sales

---

# 📊 Key Business Metrics

- Customer Lifetime Value (LTV)
- Total Orders per Customer
- Product Revenue
- Units Sold
- Payment Success Rate
- Refund Tracking

---

# ⚙️ Tech Stack

- dbt
- Snowflake
- SQL
- BI tools (Power BI / Tableau / Looker)

---

# 🧠 Design Principles

- Modular dbt architecture
- Clear separation of layers (staging / intermediate / marts)
- Reusable intermediate models
- Star schema design for analytics performance
- Single source of truth for KPI definitions
- Optimized marts for BI consumption

---

# 📁 Project Structure

models/
├── staging/
│---├── stg_customers
│---├── stg_orders
│   ├── stg_products
│   └── stg_payments
│
├── intermediate/
│   ├── int_orders_enriched
│   ├── int_customer_orders
│   ├── int_customer_payments
│   └── int_product_sales
│
└── marts/
    ├── dim_customers
    ├── dim_products
    ├── fct_orders
    ├── fct_customer_payments
    └── fct_product_sales

---

# 🚀 Future Improvements

- Add incremental models for large fact tables
- Add dbt tests (unique, not_null, relationships)
- Add SCD2 snapshots for customers
- Add data freshness monitoring
- Add dbt docs and lineage visualization
- Introduce semantic layer for metrics definitions

---

# 📌 Summary

This project demonstrates a production-style dbt pipeline implementing a layered architecture and a star schema design, enabling scalable, maintainable, and BI-ready analytics for e-commerce data.
