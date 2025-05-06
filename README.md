# Sales Data Analysis – Bangladesh Market (Power BI + PostgreSQL + Python)

This project demonstrates an end-to-end data pipeline: starting from raw Excel sales data to data warehouse modeling in PostgreSQL, cleaning in Python, and final visual reporting in Power BI. The dataset reflects fictional product sales across regions in Bangladesh.

---

## Project Overview

**Goal**: Analyze and visualize sales performance across regions, customer behavior, products, and payment methods.

### Workflow

1. **Raw Data Source**  
   - Downloaded from [Kaggle](https://www.kaggle.com/)
   - Cleaned and preprocessed to improve readability (Excel & Python)

2. **Data Cleaning in Python** (`Final1_Aiman.py` / `.ipynb`)
   - Removed null values and duplicates
   - Loaded clean data to PostgreSQL using `SQLAlchemy`

3. **Database Schema Design**  
   - Designed an initial `Sales_raw` table
   - Modeled a **star schema** in [dbdiagram.io](https://dbdiagram.io/)  
     (1 Fact Table + 4 Dimension Tables: Payments, Customers, Items, Stores)

4. **SQL-Based ETL in DBeaver** (`update.txt`)
   - Populated dimension tables using `INSERT ... SELECT DISTINCT`
   - Created relationships by adding foreign keys to `Sales_raw`
   - Loaded final data into `Sales` fact table

5. **Power BI Reporting**  
   - Connected Power BI to PostgreSQL database
   - Built dynamic dashboards using fact and dimension tables  
   - Created visuals for:
     - Total Sales by Region & Time
     - Product Category Performance
     - Payment Types
     - Customer Distribution
     - Unit Price & Quantity Trends

---

## Files Included

| File | Description |
|------|-------------|
| `Final1_Aiman.py` / `.ipynb` | Data cleaning, loading to PostgreSQL |
| `Final_Project_Aiman_ABD.sql` | Star schema SQL script |
| `Final_project_1.sql` | Raw table creation |
| `update.txt` | SQL joins and transformation scripts |
| `fact_table.xlsx` | Raw Excel file used for ingestion |
| `The analysis of products sold in Bangladesh, eng.pbix` | Power BI dashboard in English |
| `The analysis of products sold in Bangladesh, rus.pbix` | Power BI dashboard in Russian |

---

## Power BI Dashboard Highlights

- Dynamic filters for division, district, supplier, etc.
- Visual KPIs: Total Sales, Quantity, Unit Price
- Drill-downs into product categories
- Regional heatmaps and trend analysis
- Designed for English and Russian audiences

---
## Dashboard Preview
In English:
![eng](https://github.com/user-attachments/assets/e645e8d4-e8bc-471c-927a-fc3b23d317fd)

In Russian:
![rus](https://github.com/user-attachments/assets/bf01afd2-b295-47b1-8d8d-758788657eae)

---
## Tech Stack

- **Python (Pandas, SQLAlchemy)** – Data cleaning & loading
- **PostgreSQL** – Data warehouse modeling
- **DBeaver** – SQL scripting and DB management
- **Power BI Desktop** – Interactive visualizations
- **dbdiagram.io** – Schema design

---

## Learnings

- Building data pipelines from scratch
- Star schema modeling for analytics
- Cleaning and uploading big Excel data to PostgreSQL via Python
- Combining SQL + BI tools in real-world analytics

---

##  About the Author

**Aiman Omarova**  
[https://www.linkedin.com/in/aiman-omarova-902417a8/] 


---

##  How to Run

1. Open the Power BI `.pbix` file
2. Set your PostgreSQL credentials in Power BI to connect
3. Explore the report with filters and visuals
