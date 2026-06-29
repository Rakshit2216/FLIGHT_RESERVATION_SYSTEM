
USE flight_reservation_system
CREATE TABLE user (
    User_ID VARCHAR(10) PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Mobile_No VARCHAR(15) UNIQUE,
    DOB DATE,
    Gender VARCHAR(10)
);

CREATE TABLE airline (
    Airline_ID VARCHAR(10) PRIMARY KEY,
    Airline_Name VARCHAR(100) UNIQUE NOT NULL,
    Contact_No VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Website VARCHAR(200)
);

CREATE TABLE airport (
    Airport_ID VARCHAR(10) PRIMARY KEY,
    Airport_Code VARCHAR(10) UNIQUE NOT NULL,
    Airport_Name VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE flight (
    Flight_ID VARCHAR(10) PRIMARY KEY,
    Airline_ID VARCHAR(10),
    Source_Airport_ID VARCHAR(10),
    Destination_Airport_ID VARCHAR(10),
    Departure_Time DATETIME,
    Arrival_Time DATETIME,
    Duration VARCHAR(20),
    Total_Seats INT,
    Available_Seats INT,
    Fare DECIMAL(10,2),

    FOREIGN KEY (Airline_ID)
        REFERENCES airline(Airline_ID),

    FOREIGN KEY (Source_Airport_ID)
        REFERENCES airport(Airport_ID),

    FOREIGN KEY (Destination_Airport_ID)
        REFERENCES airport(Airport_ID)
);

CREATE TABLE booking (
    Booking_ID VARCHAR(10) PRIMARY KEY,
    User_ID VARCHAR(10),
    Flight_ID VARCHAR(10),
    Booking_Type VARCHAR(20),
    Booking_Date DATE,
    Journey_Date DATE,
    Total_Amount DECIMAL(10,2),
    PNR VARCHAR(20) UNIQUE,

    FOREIGN KEY (User_ID)
        REFERENCES user(User_ID),

    FOREIGN KEY (Flight_ID)
        REFERENCES flight(Flight_ID)
);

CREATE TABLE passenger (
    Passenger_ID VARCHAR(10) PRIMARY KEY,
    Booking_ID VARCHAR(10),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Gender VARCHAR(10),
    DOB DATE,

    FOREIGN KEY (Booking_ID)
        REFERENCES booking(Booking_ID)
);

CREATE TABLE ticket (
    Ticket_ID VARCHAR(10) PRIMARY KEY,
    Booking_ID VARCHAR(10),
    Passenger_ID VARCHAR(10),
    Ticket_No VARCHAR(30) UNIQUE,
    Date_Time DATETIME,
    Class VARCHAR(20),
    Seat_No VARCHAR(10),

    FOREIGN KEY (Booking_ID)
        REFERENCES booking(Booking_ID),

    FOREIGN KEY (Passenger_ID)
        REFERENCES passenger(Passenger_ID)
);

CREATE TABLE baggage (
    Baggage_ID VARCHAR(10) PRIMARY KEY,
    Ticket_ID VARCHAR(10),
    Baggage_Type VARCHAR(30),
    Weight DECIMAL(5,2),
    Charge DECIMAL(10,2),

    FOREIGN KEY (Ticket_ID)
        REFERENCES ticket(Ticket_ID)
);

CREATE TABLE payment (
    Payment_ID VARCHAR(10) PRIMARY KEY,
    Booking_ID VARCHAR(10),
    Amount DECIMAL(10,2),
    Payment_Date DATE,
    Payment_Mode VARCHAR(20),
    Transaction_ID VARCHAR(50) UNIQUE,

    FOREIGN KEY (Booking_ID)
        REFERENCES booking(Booking_ID)
);

CREATE TABLE cancellation (
    Cancellation_ID VARCHAR(10) PRIMARY KEY,
    Booking_ID VARCHAR(10),
    Cancel_Date DATE,
    Reason VARCHAR(255),
    Refund_Amount DECIMAL(10,2),

    FOREIGN KEY (Booking_ID)
        REFERENCES booking(Booking_ID)
);

CREATE TABLE refund (
    Refund_ID VARCHAR(10) PRIMARY KEY,
    Cancellation_ID VARCHAR(10),
    Amount DECIMAL(10,2),
    Refund_Date DATE,
    Refund_Mode VARCHAR(20),
    Transaction_ID VARCHAR(50) UNIQUE,

    FOREIGN KEY (Cancellation_ID)
        REFERENCES cancellation(Cancellation_ID)
);
