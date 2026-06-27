Create Database Flight_Reservation_System;
USE Flight_Reservation_System;
CREATE TABLE Airline (
    Airline_ID VARCHAR(10) PRIMARY KEY,
    Airline_Name VARCHAR(100) NOT NULL UNIQUE,
    Contact_No VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Website VARCHAR(200)
);

CREATE TABLE Airport (
    Airport_ID VARCHAR(10) PRIMARY KEY,
    Airport_Code VARCHAR(10) NOT NULL UNIQUE,
    Airport_Name VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE User (
    User_ID VARCHAR(10) PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Mobile_No VARCHAR(15) UNIQUE,
    DOB DATE,
    Gender VARCHAR(10)
);

CREATE TABLE Flight (
    Flight_ID VARCHAR(10) PRIMARY KEY,
    Airline_ID VARCHAR(10),
    Flight_Number VARCHAR(20) NOT NULL UNIQUE,

    Source_Airport_ID VARCHAR(10),
    Destination_Airport_ID VARCHAR(10),

    Departure_Time DATETIME,
    Arrival_Time DATETIME,

    Duration VARCHAR(20),

    Total_Seats INT,
    Available_Seats INT,

    Fare DECIMAL(10,2),

    FOREIGN KEY (Airline_ID)
        REFERENCES Airline(Airline_ID),

    FOREIGN KEY (Source_Airport_ID)
        REFERENCES Airport(Airport_ID),

    FOREIGN KEY (Destination_Airport_ID)
        REFERENCES Airport(Airport_ID)
);

CREATE TABLE Booking (
    Booking_ID VARCHAR(10) PRIMARY KEY,
    User_ID VARCHAR(10),
    Flight_ID VARCHAR(10),

    Booking_Type VARCHAR(20),
    Booking_Date DATE,
    Journey_Date DATE,

    Total_Amount DECIMAL(10,2),

    PNR VARCHAR(20) UNIQUE,

    FOREIGN KEY (User_ID)
        REFERENCES User(User_ID),

    FOREIGN KEY (Flight_ID)
        REFERENCES Flight(Flight_ID)
);

CREATE TABLE Passenger (
    Passenger_ID VARCHAR(10) PRIMARY KEY,
    Booking_ID VARCHAR(10),

    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Gender VARCHAR(10),
    DOB DATE,

    FOREIGN KEY (Booking_ID)
        REFERENCES Booking(Booking_ID)
);

CREATE TABLE Ticket (
    Ticket_ID VARCHAR(10) PRIMARY KEY,

    Booking_ID VARCHAR(10),
    Passenger_ID VARCHAR(10),

    Ticket_No VARCHAR(30) UNIQUE,

    Date_Time DATETIME,

    Class VARCHAR(20),
    Seat_No VARCHAR(10),

    FOREIGN KEY (Booking_ID)
        REFERENCES Booking(Booking_ID),

    FOREIGN KEY (Passenger_ID)
        REFERENCES Passenger(Passenger_ID)
);

CREATE TABLE Baggage (
    Baggage_ID VARCHAR(10) PRIMARY KEY,

    Ticket_ID VARCHAR(10),

    Baggage_Type VARCHAR(30),
    Weight DECIMAL(5,2),
    Charge DECIMAL(10,2),

    FOREIGN KEY (Ticket_ID)
        REFERENCES Ticket(Ticket_ID)
);

CREATE TABLE Offer (
    Offer_ID VARCHAR(10) PRIMARY KEY,

    Offer_Code VARCHAR(20) UNIQUE,
    Offer_Type VARCHAR(30),

    Discount_Value DECIMAL(10,2),
    Min_Amount DECIMAL(10,2),

    Start_Date DATE,
    End_Date DATE
);

CREATE TABLE Payment (
    Payment_ID VARCHAR(10) PRIMARY KEY,

    Booking_ID VARCHAR(10),

    Amount DECIMAL(10,2),
    Payment_Date DATE,
    Payment_Mode VARCHAR(20),

    Transaction_ID VARCHAR(50) UNIQUE,

    Offer_ID VARCHAR(10),

    FOREIGN KEY (Booking_ID)
        REFERENCES Booking(Booking_ID),

    FOREIGN KEY (Offer_ID)
        REFERENCES Offer(Offer_ID)
);

CREATE TABLE Cancellation (
    Cancellation_ID VARCHAR(10) PRIMARY KEY,

    Booking_ID VARCHAR(10),

    Cancel_Date DATE,
    Reason VARCHAR(255),
    Refund_Amount DECIMAL(10,2),

    FOREIGN KEY (Booking_ID)
        REFERENCES Booking(Booking_ID)
);

CREATE TABLE Refund (
    Refund_ID VARCHAR(10) PRIMARY KEY,

    Cancellation_ID VARCHAR(10),

    Amount DECIMAL(10,2),
    Refund_Date DATE,
    Refund_Mode VARCHAR(20),

    Transaction_ID VARCHAR(50) UNIQUE,

    FOREIGN KEY (Cancellation_ID)
        REFERENCES Cancellation(Cancellation_ID)
);

CREATE TABLE Private_Jet (
    Jet_ID VARCHAR(10) PRIMARY KEY,

    Jet_Registration_No VARCHAR(30) UNIQUE,
    Jet_Model VARCHAR(50),

    Capacity INT,

    Hourly_Rate DECIMAL(10,2),

    Amenities VARCHAR(255),
    Availability_Status VARCHAR(30)
);

CREATE TABLE Private_Jet_Booking (
    PJ_Booking_ID VARCHAR(10) PRIMARY KEY,

    Booking_ID VARCHAR(10),
    Jet_ID VARCHAR(10),

    Departure_Airport_ID VARCHAR(10),
    Arrival_Airport_ID VARCHAR(10),

    Departure_DateTime DATETIME,
    Arrival_DateTime DATETIME,

    Total_Flight_Time DECIMAL(10,2),
    Total_Amount DECIMAL(10,2),

    FOREIGN KEY (Booking_ID)
        REFERENCES Booking(Booking_ID),

    FOREIGN KEY (Jet_ID)
        REFERENCES Private_Jet(Jet_ID),

    FOREIGN KEY (Departure_Airport_ID)
        REFERENCES Airport(Airport_ID),

    FOREIGN KEY (Arrival_Airport_ID)
        REFERENCES Airport(Airport_ID)
);

CREATE TABLE Private_Jet_Pass (
    Pass_ID VARCHAR(10) PRIMARY KEY,

    PJ_Booking_ID VARCHAR(10),
    Passenger_ID VARCHAR(10),

    Issue_Date DATE,
    Pass_Status VARCHAR(30),

    FOREIGN KEY (PJ_Booking_ID)
        REFERENCES Private_Jet_Booking(PJ_Booking_ID),

    FOREIGN KEY (Passenger_ID)
        REFERENCES Passenger(Passenger_ID)
);
