SELECT
    MONTH(date) AS month,
    SUM(estimated_attendance) AS total_attendance,
    SUM(vehicles_parked) AS total_vehicles,
    SUM(parking_revenue) AS total_revenue
FROM parking_data
GROUP BY MONTH(date)
ORDER BY month;

SELECT
    AVG(occupancy_rate) AS avg_daily_occupancy,
    MIN(occupancy_rate) AS min_occupancy,
    MAX(occupancy_rate) AS max_occupancy
FROM parking_data;

SELECT
    COUNT(*) AS full_lot_days,
    AVG(shuttles_deployed) AS avg_shuttles_when_full
FROM parking_data
WHERE lot_full = TRUE;

SELECT
    day_of_week,
    COUNT(*) AS days,
    AVG(occupancy_rate) AS avg_occupancy,
    AVG(vehicles_parked) AS avg_vehicles
FROM parking_data
GROUP BY day_of_week
ORDER BY FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

SELECT
    SUM(shuttle_cost) AS total_shuttle_cost,
    SUM(parking_revenue) AS total_revenue,
    ROUND(SUM(parking_revenue) - SUM(shuttle_cost), 2) AS net_profit
FROM parking_data;

SELECT date, estimated_attendance, vehicles_parked, occupancy_rate
FROM parking_data
ORDER BY estimated_attendance DESC
LIMIT 5;

SELECT 
    (MONTH(date) % 12) + 1 AS next_month,
    ROUND(AVG(vehicles_parked) * 30) AS forecast_vehicles,
    ROUND(AVG(shuttles_deployed) * 30) AS forecast_shuttles
FROM parking_data
GROUP BY (MONTH(date) % 12) + 1
ORDER BY next_month;





