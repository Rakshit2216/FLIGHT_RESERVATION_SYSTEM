# ✈️ Flight Reservation System

The **Flight Reservation System** is designed to simulate real-world airline booking operations. This project demonstrates relational database design, normalization concepts, transaction management, and airline reservation workflows using **SQL** and **MySQL**.

---

## ✨ Key Features

* **Complete Airline Reservation Database:** 11 interconnected tables with primary keys, foreign keys, and referential integrity.
* **Real-World Booking Workflow:** Supports flight search, booking, passenger management, ticket generation, baggage handling, payments, cancellations, and refunds.
* **Normalized Database Design:** Structured according to database normalization principles to reduce redundancy and maintain consistency.
* **Airline & Airport Management:** Maintains airline details, airport information, flight schedules, seat availability, and fare management.
* **Payment & Refund Tracking:** Records transactions, cancellations, and refund processing for complete booking lifecycle management.

---

## 📁 Project Structure

```text
Flight-Reservation-System/
├── DDL.sql                 
├── DataInsertion.sql      
├── DQL.sql                
├── ER_Diagram.jpg         
├── Relational_Diagram.pdf   
└── README.md               
```
## 🗄️ Database Modules

---

### 👤 User Management
* **User Registration:** Secure onboarding for new users.
* **Passenger Information Storage:** Detailed profiles including demographics and preferences.
* **Contact Details Management:** Storage of emails, phone numbers, and emergency contacts.

---

### 🛫 Flight Management
* **Flight Scheduling:** Managing departure/arrival times, routes, and frequencies.
* **Airline Management:** Tracking airline fleets, codes, and operational data.
* **Airport Management:** Handling airport codes (IATA/ICAO), locations, and time zones.
* **Seat Availability Tracking:** Real-time updates on available, blocked, and reserved seats.

---

### 🎫 Booking & Ticketing
* **Flight Booking:** Core workflow for reserving seats on selected flights.
* **PNR Generation:** Unique Passenger Name Record creation for itinerary tracking.
* **Ticket Generation:** Issuing digital tickets with unique ticket numbers.
* **Class Allocation:** Distinguishing between Economy, Premium Economy, Business, and First Class.
* **Seat Assignment:** Interactive or automated assignment of specific seat numbers.

---

### 🧳 Baggage Management
* **Baggage Information:** Checking in bags and linking them to specific passengers.
* **Weight Tracking:** Monitoring weight limits to ensure aircraft safety compliance.
* **Additional Charges Calculation:** Automatically calculating fees for oversized or excess baggage.

---

### 💳 Payment System
* **Payment Processing:** Integrating payment gateways for secure checkout.
* **Transaction Tracking:** Generating unique transaction IDs and tracking statuses (Success/Failed/Pending).
* **Payment History:** Maintaining a ledger of all past customer financial transactions.

---

### ❌ Cancellation & Refund
* **Booking Cancellation:** Workflow for canceling active tickets and releasing seats back to inventory.
* **Refund Calculation:** Determining refund eligibility and amounts based on airline cancellation policies.
* **Refund Transaction Tracking:** Monitoring the status of credited amounts back to the original payment method.

## 🛠️ Requirements

To run this project locally, you will need the following installed on your machine:

- **Database Engine:** MySQL Server 8.0+
- **SQL Client:** MySQL Workbench (Highly Recommended)
- **Version Control:** Git (Optional)
   
### Software Stack

## 🚀 Setup Instructions

1. Clone the repository.  

```bash
git clone https://github.com/Rakshit2216/Flight_Reservation_System.git
cd Flight_Reservation_System
Open MySQL Workbench and create a database:
CREATE DATABASE Flight_Reservation_System;
USE Flight_Reservation_System;
Run the SQL files in the following order:
DDL.sql → Creates all tables and relationships.
DataInsertion.sql → Inserts sample data.
DQL.sql → Executes sample queries and reports.

- MySQL Server
- MySQL Workbench
- SQL

No additional libraries or frameworks are required. The entire project is implemented using SQL scripts and can be executed directly through MySQL Workbench.
```
## 📊 Diagrams

To better understand the database structure and relationships, refer to the included diagrams:

- **ERD_diagram.jpg** – High-level Entity Relationship Diagram (ERD) showing entities and their relationships.
- **Relational_Diagram.pdf** – Detailed relational schema including tables, attributes, primary keys, foreign keys, and data types.
