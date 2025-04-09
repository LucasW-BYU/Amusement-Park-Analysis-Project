
# Amusement Park Parking Analytics Project (2025 Simulation)

This project analyzes a full year of **simulated parking data** for a large amusement park. It demonstrates forecasting, shuttle deployment logic, cost auditing, and operational planning using SQL and Python.

---

## 📁 Project Files Overview

### 🔹 Dataset
- `Amusement_Park_Parking_Cleaned_Dataset.csv`  
  → Simulated data for 365 days including attendance, occupancy, shuttle use, and revenue.

### 🔹 Python Script
- `import_parking_data.py`  
  → Secure Python script that reads the CSV file and imports it into MySQL using credentials from a `.env` file.

### 🔹 SQL Queries
- `Amusement_Park_Script.sql`  
  → Collection of SQL queries for analysis: monthly trends, occupancy stats, shuttle planning, and revenue forecasting.

### 🔹 PDF Report
- `Simulated_Amusement_Park_Parking_Report_2025.pdf`  
  → Final report summarizing key insights, with embedded graphs and business-oriented conclusions.

### 🔹 Chart Data (Exports from SQL)
Stored in the `charts_data/` folder:

- `top_5_busiest_days.csv` → Peak attendance days with overflow impact  
- `shuttle_cost_vs_profit.csv` → Shuttle cost vs revenue and net profit  
- `weekday_occupancy_averages.csv` → Occupancy and volume patterns by day of week  
- `days_with_full_lots.csv` → Count and average shuttles on days when the lot was full  
- `monthly_attendance_and_revenue.csv` → Monthly total vehicles, attendance, and revenue

---

## 🚀 Getting Started

1. Create a `.env` file:
```
MYSQL_USER=your_username
MYSQL_PASSWORD=your_password
```

2. Create a schema `amusement_parking` in MySQL, then import the dataset using:
```bash
python import_parking_data.py
```

3. Open and run the queries in `Amusement_Park_Script.sql` to generate summaries and reports.

---

## 📬 Contact

Built by **Honghan (Lucas) Wang**  
Gmail: lucaswang718@gmail.com

All data is simulated for educational and portfolio purposes.
