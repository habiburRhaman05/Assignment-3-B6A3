-- Query 1: JOIN
-- Requirement: Retrieve booking information along with Customer name and Vehicle name

SELECT 
  b.booking_id,
  u.name AS customer_name,
  v.name AS vehicle_name,
  b.start_date,
  b.end_date,
  b.status
FROM bookings b
INNER JOIN users u ON u.user_id = b.user_id
INNER JOIN vehicles v ON v.vehicle_id = b.vehicle_id;


-- Query 2: EXISTS
-- Requirement: Find all vehicles that have never been booked

SELECT *
FROM vehicles v
WHERE NOT EXISTS (
  SELECT 1
  FROM bookings b
  WHERE b.vehicle_id = v.vehicle_id
);


-- Query 3: WHERE
-- Requirement: Retrieve all available vehicles of a specific type (e.g. cars)

SELECT *
FROM vehicles
WHERE type = 'car'
  AND status = 'available';


-- Query 4: GROUP BY and HAVING
-- Requirement: Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings

SELECT 
  v.name AS vehicle_name,
  COUNT(b.booking_id) AS total_bookings
FROM bookings b
INNER JOIN vehicles v ON v.vehicle_id = b.vehicle_id
GROUP BY vehicle_name
HAVING COUNT(b.booking_id) > 2;
