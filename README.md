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
├── DDL.sql                 # Data Definition Language (Table Creation)
├── DataInsertion.sql       # Mock Data Insertion
├── DQL.sql                 # Data Query Language (Queries & Reports)
├── ER_Diagram.pdf          # Entity-Relationship Diagram
├── Relational_Schema.pdf   # Relational Database Schema
└── README.md               # Project Documentation
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
