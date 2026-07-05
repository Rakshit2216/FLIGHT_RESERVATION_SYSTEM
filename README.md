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


<h2>🗄️ Database Modules</h2>

<hr>

<h3>👤 User Management</h3>

<ul>
  <li><strong>User Registration:</strong> Secure onboarding for new users.</li>
  <li><strong>Passenger Information Storage:</strong> Detailed profiles including demographics and preferences.</li>
  <li><strong>Contact Details Management:</strong> Storage of emails, phone numbers, and emergency contacts.</li>
</ul>

<hr>

<h3>🛫 Flight Management</h3>

<ul>
  <li><strong>Flight Scheduling:</strong> Managing departure/arrival times, routes, and frequencies.</li>
  <li><strong>Airline Management:</strong> Tracking airline fleets, codes, and operational data.</li>
  <li><strong>Airport Management:</strong> Handling airport codes (IATA/ICAO), locations, and time zones.</li>
  <li><strong>Seat Availability Tracking:</strong> Real-time updates on available, blocked, and reserved seats.</li>
</ul>

<hr>

<h3>🎫 Booking & Ticketing</h3>

<ul>
  <li><strong>Flight Booking:</strong> Core workflow for reserving seats on selected flights.</li>
  <li><strong>PNR Generation:</strong> Unique Passenger Name Record creation for itinerary tracking.</li>
  <li><strong>Ticket Generation:</strong> Issuing digital tickets with unique ticket numbers.</li>
  <li><strong>Class Allocation:</strong> Distinguishing between Economy, Premium Economy, Business, and First Class.</li>
  <li><strong>Seat Assignment:</strong> Interactive or automated assignment of specific seat numbers.</li>
</ul>

<hr>

<h3>🧳 Baggage Management</h3>

<ul>
  <li><strong>Baggage Information:</strong> Checking in bags and linking them to specific passengers.</li>
  <li><strong>Weight Tracking:</strong> Monitoring weight limits to ensure aircraft safety compliance.</li>
  <li><strong>Additional Charges Calculation:</strong> Automatically calculating fees for oversized or excess baggage.</li>
</ul>

<hr>

<h3>💳 Payment System</h3>

<ul>
  <li><strong>Payment Processing:</strong> Integrating payment gateways for secure checkout.</li>
  <li><strong>Transaction Tracking:</strong> Generating unique transaction IDs and tracking statuses (Success/Failed/Pending).</li>
  <li><strong>Payment History:</strong> Maintaining a ledger of all past customer financial transactions.</li>
</ul>

<hr>

<h3>❌ Cancellation & Refund</h3>

<ul>
  <li><strong>Booking Cancellation:</strong> Workflow for canceling active tickets and releasing seats back to inventory.</li>
  <li><strong>Refund Calculation:</strong> Determining refund eligibility and amounts based on airline cancellation policies.</li>
  <li><strong>Refund Transaction Tracking:</strong> Monitoring the status of credited amounts back to the original payment method.</li>
</ul>



