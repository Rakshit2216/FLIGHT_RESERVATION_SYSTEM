--List Flights with Their Available Seats
SELECT Flight_ID, Total_Seats, Available_Seats
FROM flight
WHERE Available_Seats > 0;

--Total Money Refunded Due to Cancellations
SELECT SUM(Amount) AS Total_Money_Refunded 
FROM refund;

--Count Total Flights Operated by Each Airline
SELECT al.Airline_Name, COUNT(f.Flight_ID) AS Total_Flights
FROM airline al
JOIN flight f ON al.Airline_ID = f.Airline_ID
GROUP BY al.Airline_Name;

--Count How Many Bookings Each User Has Placed
SELECT u.User_ID, u.First_Name, u.Last_Name, COUNT(b.Booking_ID) AS Booking_Count
FROM user u
JOIN booking b ON u.User_ID = b.User_ID
GROUP BY u.User_ID, u.First_Name, u.Last_Name
ORDER BY Booking_Count DESC;

--List All Canceled Flights with Reasons
SELECT b.Booking_ID, b.PNR, c.Cancel_Date, c.Reason
FROM booking b
JOIN cancellation c ON b.Booking_ID = c.Booking_ID;

--Find Multi-Passenger Group Bookings
SELECT Booking_ID, COUNT(Passenger_ID) AS Total_Passengers
FROM passenger
GROUP BY Booking_ID
HAVING COUNT(Passenger_ID) > 1;

--Find the Cheapest Available Flights
SELECT Flight_ID, Source_Airport_ID, Destination_Airport_ID, Fare
FROM flight
WHERE Fare < 6000.00
ORDER BY Fare ASC;

--Find Flights Flying Out of a Specific City (e.g., New Delhi)
SELECT f.Flight_ID, al.Airline_Name, f.Departure_Time, f.Fare
FROM flight f
JOIN airport ap ON f.Source_Airport_ID = ap.Airport_ID
JOIN airline al ON f.Airline_ID = al.Airline_ID
WHERE ap.City = 'New Delhi';

--List Bookings Done via a Specific Mode (UPI)
SELECT Booking_ID, Amount, Payment_Date, Transaction_ID
FROM payment
WHERE Payment_Mode = 'UPI';

--Top 5 High-Value Customers
SELECT u.User_ID, u.First_Name, u.Last_Name, SUM(b.Total_Amount) AS Total_Money_Spent
FROM user u
JOIN booking b ON u.User_ID = b.User_ID
GROUP BY u.User_ID, u.First_Name, u.Last_Name
ORDER BY Total_Money_Spent DESC
LIMIT 5;

