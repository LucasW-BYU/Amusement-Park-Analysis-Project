
import pandas as pd
import mysql.connector
from dotenv import load_dotenv
import os

# Load environment variables from .env
load_dotenv()

# Load CSV
df = pd.read_csv("Amusement_Park_Parking_Cleaned_Dataset.csv")

# Connect to MySQL using environment variables
conn = mysql.connector.connect(
    host="localhost",
    user=os.getenv("MYSQL_USER"),
    password=os.getenv("MYSQL_PASSWORD"),
    database="amusement_parking"
)
cursor = conn.cursor()

# Clear old data
cursor.execute("TRUNCATE TABLE parking_data")

# Insert new data
for _, row in df.iterrows():
    sql = """
        INSERT INTO parking_data (
            date, day_of_week, estimated_attendance, vehicles_parked,
            lot_capacity, occupancy_rate, lot_full, shuttles_deployed,
            shuttle_cost, parking_revenue
        )
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    cursor.execute(sql, tuple(row))

conn.commit()
cursor.close()
conn.close()

print("✅ Parking data imported successfully.")
