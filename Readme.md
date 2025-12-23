# Vehicle Rental System – SQL Queries and ERD Design and Viva Partices

## Project Overview
এই project টি একটি **Vehicle Rental System** যা database design, ERD relationship এবং SQL query practice করার জন্য তৈরি করা হয়েছে।

The main objectives of this project are:
- Understand relational database design
- Practice Primary Key (PK) and Foreign Key (FK)
- Design ERD with correct relationships
- Write SQL queries using JOIN, WHERE, EXISTS, GROUP BY, and HAVING

The system manages:
- Users
- Vehicles
- Bookings

---

## Database Tables Design

### Users Table
| Column Name | Description |
|------------|-------------|
| user_id (PK) | Unique user identifier |
| name | User full name |
| email | Email address |
| phone | Phone number |
| role | Customer / Admin |

---

### Vehicles Table
| Column Name | Description |
|------------|-------------|
| vehicle_id (PK) | Unique vehicle identifier |
| name | Vehicle name |
| type | car / bike / truck |
| model | Model year |
| registration_number | Registration number |
| rental_price | Rental price per day |
| status | available / rented / maintenance |

---

### Bookings Table
| Column Name | Description |
|------------|-------------|
| booking_id (PK) | Unique booking identifier |
| user_id (FK) | References Users.user_id |
| vehicle_id (FK) | References Vehicles.vehicle_id |
| start_date | Booking start date |
| end_date | Booking end date |
| status | Booking status |
| total_cost | Total booking cost |

---

## Table Relationships
- Users (1) → (Many) Bookings
- Vehicles (1) → (Many) Bookings

Each booking is linked to:
- One user
- One vehicle

This design ensures proper **One-to-Many relationships** using foreign keys.

---

## SQL Concepts Used
- INNER JOIN
- WHERE
- EXISTS / NOT EXISTS
- GROUP BY
- HAVING
- Primary Key and Foreign Key

---

## SQL Queries
All required SQL queries with solutions are provided in the `queries.sql` file.

---

## ERD Diagram
ERD Public Link:  
https://drawsql.app/teams/google-121/diagrams/vehicle-erd

## Viva Link
i already submit assignment with viva video link ;

if you are  face any problem to access viva video then plz message me on email:devhabib2005@gmail.com or phone : 01605746821


## Author
Written by: **Habibur Rahman**
