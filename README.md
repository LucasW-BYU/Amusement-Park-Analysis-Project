# Amusement Park Parking Analytics Projects(2025 Simulation)

This project analyzes a full year of **simulated parking data** for a large amusement park. It demonstrates forecasting, shuttle deployment logic, cost auditing, and operational planning using SQL and Python.


---

## 📊 Key Metrics Analyzed

- Total and monthly vehicle volume
- Revenue vs shuttle operating costs
- Daily occupancy patterns
- Overflow events and shuttle triggers
- Attendance trends by day of week
- Next-month forecasting using historical averages

---

## 🚀 How to Run

### 1. Prepare MySQL
- Create a schema called `amusement_parking`
- Run the `Amusement_Park_Script.sql` to create the `parking_data` table

### 2. Set up `.env`
Create a file named `.env` in the project root:MYSQL_USER=your_username MYSQL_PASSWORD=your_password

### 3. Load the Data
Make sure `Amusement_Park_Parking_Cleaned_Dataset.csv` is in the same folder, then run:

```bash
python import_parking_data.py



