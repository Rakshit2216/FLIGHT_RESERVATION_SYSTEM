USE flight_reservation_system;
-- ==========================================================
-- 1. DATA FOR: airport (8 Rows)
-- ==========================================================
INSERT INTO airport (Airport_ID, Airport_Code, Airport_Name, City, State, Country) VALUES 
('AP001', 'DEL', 'Indira Gandhi International Airport', 'New Delhi', 'Delhi', 'India'),
('AP002', 'BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'Maharashtra', 'India'),
('AP003', 'BLR', 'Kempegowda International Airport', 'Bengaluru', 'Karnataka', 'India'),
('AP004', 'HYD', 'Rajiv Gandhi International Airport', 'Hyderabad', 'Telangana', 'India'),
('AP005', 'MAA', 'Chennai International Airport', 'Chennai', 'Tamil Nadu', 'India'),
('AP006', 'CCU', 'Netaji Subhas Chandra Bose International Airport', 'Kolkata', 'West Bengal', 'India'),
('AP007', 'AMD', 'Sardar Vallabhbhai Patel International Airport', 'Ahmedabad', 'Gujarat', 'India'),
('AP008', 'PNQ', 'Pune International Airport', 'Pune', 'Maharashtra', 'India');

-- ==========================================================
-- 2. DATA FOR: airline (5 Rows)
-- ==========================================================
INSERT INTO airline (Airline_ID, Airline_Name, Contact_No, Email, Website) VALUES 
('AL001', 'IndiGo Airlines', '9910383838', 'relations@goindigo.in', 'https://www.goindigo.in'),
('AL002', 'Air India', '18602331407', 'travelcare@airindia.com', 'https://www.airindia.com'),
('AL003', 'Akasa Air', '9606112112', 'nodal@akasaair.com', 'https://www.akasaair.com'),
('AL004', 'SpiceJet', '9654003333', 'custrelations@spicejet.com', 'https://www.spicejet.com'),
('AL005', 'Air India Express', '04440013000', 'support@airindiaexpress.com', 'https://www.airindiaexpress.com');

-- ==========================================================
-- 3. DATA FOR: flight (25 Rows)
-- ==========================================================
INSERT INTO flight (Flight_ID, Airline_ID, Source_Airport_ID, Destination_Airport_ID, Departure_Time, Arrival_Time, Duration, Total_Seats, Available_Seats, Fare) VALUES 
('FL001', 'AL001', 'AP001', 'AP002', '2026-07-15 06:00:00', '2026-07-15 08:15:00', '2h 15m', 180, 45, 4500.00),
('FL002', 'AL001', 'AP002', 'AP003', '2026-07-15 10:30:00', '2026-07-15 12:15:00', '1h 45m', 180, 60, 3800.00),
('FL003', 'AL002', 'AP003', 'AP001', '2026-07-16 14:00:00', '2026-07-16 16:45:00', '2h 45m', 240, 110, 5800.00),
('FL004', 'AL002', 'AP001', 'AP004', '2026-07-16 18:30:00', '2026-07-16 20:40:00', '2h 10m', 240, 95, 4900.00),
('FL005', 'AL003', 'AP006', 'AP001', '2026-07-17 09:15:00', '2026-07-17 11:30:00', '2h 15m', 180, 32, 6100.00),
('FL006', 'AL004', 'AP002', 'AP005', '2026-07-17 21:00:00', '2026-07-17 22:55:00', '1h 55m', 180, 88, 4200.00),
('FL007', 'AL005', 'AP004', 'AP002', '2026-07-18 07:45:00', '2026-07-18 09:15:00', '1h 30m', 180, 14, 3900.00),
('FL008', 'AL001', 'AP007', 'AP001', '2026-07-18 13:20:00', '2026-07-18 15:00:00', '1h 40m', 180, 55, 3600.00),
('FL009', 'AL002', 'AP001', 'AP008', '2026-07-19 16:00:00', '2026-07-19 18:05:00', '2h 05m', 240, 120, 5200.00),
('FL010', 'AL003', 'AP008', 'AP003', '2026-07-19 19:30:00', '2026-07-19 21:00:00', '1h 30m', 180, 42, 3500.00),
('FL011', 'AL001', 'AP002', 'AP001', '2026-07-20 08:00:00', '2026-07-20 10:15:00', '2h 15m', 180, 23, 4600.00),
('FL012', 'AL002', 'AP003', 'AP002', '2026-07-20 11:15:00', '2026-07-20 13:00:00', '1h 45m', 240, 78, 4100.00),
('FL013', 'AL001', 'AP005', 'AP004', '2026-07-21 15:30:00', '2026-07-21 16:40:00', '1h 10m', 180, 64, 3300.00),
('FL014', 'AL004', 'AP004', 'AP006', '2026-07-21 22:15:00', '2026-07-22 00:20:00', '2h 05m', 180, 91, 5400.00),
('FL015', 'AL005', 'AP001', 'AP006', '2026-07-22 05:30:00', '2026-07-22 07:45:00', '2h 15m', 180, 50, 5900.00),
('FL016', 'AL001', 'AP002', 'AP007', '2026-07-22 12:00:00', '2026-07-22 13:10:00', '1h 10m', 180, 110, 3200.00),
('FL017', 'AL002', 'AP007', 'AP002', '2026-07-23 17:45:00', '2026-07-23 19:00:00', '1h 15m', 240, 132, 3400.00),
('FL018', 'AL003', 'AP001', 'AP005', '2026-07-23 20:00:00', '2026-07-23 22:45:00', '2h 45m', 180, 76, 6200.00),
('FL019', 'AL001', 'AP005', 'AP001', '2026-07-14 06:15:00', '2026-07-14 09:00:00', '2h 45m', 180, 12, 6300.00),
('FL020', 'AL002', 'AP008', 'AP001', '2026-07-24 10:45:00', '2026-07-24 12:50:00', '2h 05m', 240, 85, 5100.00),
('FL021', 'AL004', 'AP003', 'AP004', '2026-07-25 13:00:00', '2026-07-25 14:15:00', '1h 15m', 180, 44, 3400.00),
('FL022', 'AL001', 'AP004', 'AP003', '2026-07-25 18:20:00', '2026-07-25 19:35:00', '1h 15m', 180, 52, 3500.00),
('FL023', 'AL002', 'AP006', 'AP002', '2026-07-26 21:30:00', '2026-07-27 00:15:00', '2h 45m', 240, 99, 6800.00),
('FL024', 'AL005', 'AP002', 'AP006', '2026-07-26 23:45:00', '2026-07-27 02:30:00', '2h 45m', 180, 105, 6700.00),
('FL025', 'AL001', 'AP001', 'AP003', '2026-07-27 08:30:00', '2026-07-27 11:15:00', '2h 45m', 180, 30, 5700.00);

-- ==========================================================
-- 4. DATA FOR: user (50 Rows)
-- ==========================================================
INSERT INTO user (User_ID, First_Name, Last_Name, Email, Mobile_No, DOB, Gender) VALUES 
('USR001', 'Aarav', 'Sharma', 'aarav.sharma@gmail.com', '9876543210', '1995-04-12', 'Male'),
('USR002', 'Diya', 'Patel', 'diya.patel@gmail.com', '9123456789', '1998-11-23', 'Female'),
('USR003', 'Reyansh', 'Verma', 'reyansh.v@gmail.com', '8123456712', '1987-01-15', 'Male'),
('USR004', 'Ananya', 'Iyer', 'ananya.iyer@gmail.com', '7012345678', '2001-08-05', 'Female'),
('USR005', 'Vihaan', 'Nair', 'vihaan.nair@gmail.com', '9988776655', '1976-06-30', 'Male'),
('USR006', 'Meera', 'Joshi', 'meera.joshi@gmail.com', '8877665544', '1993-09-18', 'Female'),
('USR007', 'Arjun', 'Gupta', 'arjun.g@gmail.com', '9564738291', '1990-12-02', 'Male'),
('USR008', 'Kavya', 'Kumar', 'kavya.k@gmail.com', '9447382910', '1996-03-25', 'Female'),
('USR009', 'Aditya', 'Singh', 'aditya.s@gmail.com', '7382910456', '1984-05-14', 'Male'),
('USR010', 'Riya', 'Reddy', 'riya.r@gmail.com', '8291045673', '1999-07-29', 'Female'),
('USR011', 'Rahul', 'Mishra', 'rahul.m@gmail.com', '9104567382', '1992-02-10', 'Male'),
('USR012', 'Sneha', 'Das', 'sneha.das@gmail.com', '6273849105', '1995-10-22', 'Female'),
('USR013', 'Rohit', 'Choudhury', 'rohit.c@gmail.com', '9384756102', '1989-08-11', 'Male'),
('USR014', 'Priya', 'Banerjee', 'priya.b@gmail.com', '8374651920', '1991-04-04', 'Female'),
('USR015', 'Sanjay', 'Rao', 'sanjay.rao@gmail.com', '7465192830', '1979-11-17', 'Male'),
('USR016', 'Neha', 'Shah', 'neha.shah@gmail.com', '6519283740', '1997-12-15', 'Female'),
('USR017', 'Vikram', 'Mehta', 'vikram.m@gmail.com', '9812736450', '1983-03-09', 'Male'),
('USR018', 'Pooja', 'Kulkarni', 'pooja.k@gmail.com', '8712635490', '1994-06-26', 'Female'),
('USR019', 'Pranav', 'Pillai', 'pranav.p@gmail.com', '7612534980', '2002-01-01', 'Male'),
('USR020', 'Deepika', 'Naik', 'deepika.n@gmail.com', '6512435987', '1988-09-14', 'Female'),
('USR021', 'Amit', 'Sharma', 'amit.s1@gmail.com', '9822341234', '1991-05-12', 'Male'),
('USR022', 'Kiran', 'Joshi', 'kiran.j2@gmail.com', '9833452345', '1993-07-19', 'Female'),
('USR023', 'Ganesh', 'Patel', 'ganesh.p3@gmail.com', '9844563456', '1985-11-02', 'Male'),
('USR024', 'Jyoti', 'Singh', 'jyoti.s4@gmail.com', '9855674567', '1989-03-24', 'Female'),
('USR025', 'Vijay', 'Gupta', 'vijay.g5@gmail.com', '9866785678', '1978-01-15', 'Male'),
('USR026', 'Nisha', 'Verma', 'nisha.v6@gmail.com', '9877896789', '1996-08-30', 'Female'),
('USR027', 'Suresh', 'Kumar', 'suresh.k7@gmail.com', '9888907890', '1982-12-12', 'Male'),
('USR028', 'Aadhya', 'Reddy', 'aadhya.r8@gmail.com', '9899018901', '2000-04-05', 'Female'),
('USR029', 'Ishaan', 'Mishra', 'ishaan.m9@gmail.com', '9900129012', '1994-09-21', 'Male'),
('USR030', 'Saanvi', 'Iyer', 'saanvi.i10@gmail.com', '9911230123', '1997-06-18', 'Female'),
('USR031', 'Vikranth', 'Rao', 'vik.rao@gmail.com', '9922341235', '1986-02-14', 'Male'),
('USR032', 'Anushka', 'Mehta', 'anu.m@gmail.com', '9933452346', '1995-10-10', 'Female'),
('USR033', 'Pradeep', 'Das', 'pradeep.das@gmail.com', '9944563457', '1980-07-27', 'Male'),
('USR034', 'Tanvi', 'Shah', 'tanvi.s@gmail.com', '9955674568', '1998-05-19', 'Female'),
('USR035', 'Manish', 'Nair', 'manish.nair@gmail.com', '9966785679', '1983-12-01', 'Male'),
('USR036', 'Shruti', 'Kulkarni', 'shruti.k@gmail.com', '9977896780', '1992-03-14', 'Female'),
('USR037', 'Rajesh', 'Banerjee', 'rajesh.b@gmail.com', '9988907891', '1974-11-25', 'Male'),
('USR038', 'Divya', 'Pillai', 'divya.p@gmail.com', '9999018902', '1996-01-30', 'Female'),
('USR039', 'Harish', 'Choudhury', 'harish.c@gmail.com', '9011234567', '1988-06-08', 'Male'),
('USR040', 'Meenakshi', 'Naik', 'meena.n@gmail.com', '9022345678', '1991-09-17', 'Female'),
('USR041', 'Vivek', 'Sharma', 'vivek.s@gmail.com', '9033456789', '1985-04-23', 'Male'),
('USR042', 'Radhika', 'Gupta', 'radhika.g@gmail.com', '9044567890', '1994-07-07', 'Female'),
('USR043', 'Nitin', 'Patel', 'nitin.p@gmail.com', '9055678901', '1982-10-15', 'Male'),
('USR044', 'Kavita', 'Singh', 'kavita.s@gmail.com', '9066789012', '1989-11-20', 'Female'),
('USR045', 'Alok', 'Mishra', 'alok.m@gmail.com', '9077890123', '1977-03-11', 'Male'),
('USR046', 'Shweta', 'Verma', 'shweta.v@gmail.com', '9088901234', '1993-05-29', 'Female'),
('USR047', 'Pankaj', 'Kumar', 'pankaj.k@gmail.com', '9099012345', '1981-08-14', 'Male'),
('USR048', 'Komal', 'Reddy', 'komal.r@gmail.com', '9100123456', '1997-02-02', 'Female'),
('USR049', 'Sunil', 'Joshi', 'sunil.j@gmail.com', '9111234567', '1984-12-25', 'Male'),
('USR050', 'Arpita', 'Das', 'arpita.d@gmail.com', '9122345678', '1995-06-13', 'Female');

-- ==========================================================
-- 5. DATA FOR: booking (90 Rows)
-- ==========================================================
-- NOTE: Multiple distinct Bookings (BK001, BK002, BK071) point to FL001 on the same date.
INSERT INTO booking (Booking_ID, User_ID, Flight_ID, Booking_Type, Booking_Date, Journey_Date, Total_Amount, PNR) VALUES 
('BK001', 'USR001', 'FL001', 'One-Way', '2026-06-01', '2026-07-15', 13500.00, 'PNR100001'), -- Sharma family booking (3 seats)
('BK002', 'USR002', 'FL001', 'One-Way', '2026-06-02', '2026-07-15', 4500.00, 'PNR100002'),  -- Solo traveler party on same flight
('BK071', 'USR021', 'FL001', 'One-Way', '2026-07-11', '2026-07-15', 4500.00, 'PNR100071'),  -- Separate party booking on same flight
('BK003', 'USR003', 'FL002', 'Round-Trip', '2026-06-02', '2026-07-15', 11400.00, 'PNR100003'), -- Verma family booking (3 seats)
('BK072', 'USR022', 'FL002', 'One-Way', '2026-07-11', '2026-07-15', 3800.00, 'PNR100072'),  -- Separate party on FL002
('BK004', 'USR004', 'FL003', 'One-Way', '2026-06-03', '2026-07-16', 17400.00, 'PNR100004'),
('BK073', 'USR023', 'FL003', 'One-Way', '2026-07-12', '2026-07-16', 5800.00, 'PNR100073'),
('BK005', 'USR005', 'FL004', 'One-Way', '2026-06-04', '2026-07-16', 4900.00, 'PNR100005'),
('BK006', 'USR006', 'FL004', 'One-Way', '2026-06-05', '2026-07-16', 14700.00, 'PNR100006'),
('BK007', 'USR007', 'FL005', 'Round-Trip', '2026-06-05', '2026-07-17', 12200.00, 'PNR100007'),
('BK008', 'USR008', 'FL005', 'One-Way', '2026-06-06', '2026-07-17', 6100.00, 'PNR100008'),
('BK009', 'USR009', 'FL006', 'One-Way', '2026-06-07', '2026-07-17', 4200.00, 'PNR100009'),
('BK010', 'USR010', 'FL006', 'One-Way', '2026-06-08', '2026-07-17', 12600.00, 'PNR100010'),
('BK011', 'USR011', 'FL007', 'One-Way', '2026-06-08', '2026-07-18', 3900.00, 'PNR100011'),
('BK012', 'USR012', 'FL007', 'Round-Trip', '2026-06-09', '2026-07-18', 11700.00, 'PNR100012'),
('BK013', 'USR013', 'FL008', 'One-Way', '2026-06-10', '2026-07-18', 3600.00, 'PNR100013'),
('BK014', 'USR014', 'FL008', 'One-Way', '2026-06-11', '2026-07-18', 10800.00, 'PNR100014'),
('BK015', 'USR015', 'FL009', 'One-Way', '2026-06-11', '2026-07-19', 5200.00, 'PNR100015'),
('BK016', 'USR016', 'FL009', 'Round-Trip', '2026-06-12', '2026-07-19', 15600.00, 'PNR100016'),
('BK017', 'USR017', 'FL010', 'One-Way', '2026-06-13', '2026-07-19', 3500.00, 'PNR100017'),
('BK018', 'USR018', 'FL010', 'One-Way', '2026-06-14', '2026-07-19', 14000.00, 'PNR100018'),
('BK019', 'USR019', 'FL011', 'One-Way', '2026-06-14', '2026-07-20', 4600.00, 'PNR100019'),
('BK020', 'USR020', 'FL011', 'Round-Trip', '2026-06-15', '2026-07-20', 13800.00, 'PNR100020'),
('BK021', 'USR021', 'FL012', 'One-Way', '2026-06-16', '2026-07-20', 4100.00, 'PNR100021'),
('BK022', 'USR022', 'FL012', 'One-Way', '2026-06-17', '2026-07-20', 12300.00, 'PNR100022'),
('BK023', 'USR023', 'FL013', 'One-Way', '2026-06-17', '2026-07-21', 3300.00, 'PNR100023'),
('BK024', 'USR024', 'FL013', 'Round-Trip', '2026-06-18', '2026-07-21', 9900.00, 'PNR100024'),
('BK025', 'USR025', 'FL014', 'One-Way', '2026-06-19', '2026-07-21', 5400.00, 'PNR100025'),
('BK026', 'USR026', 'FL014', 'One-Way', '2026-06-20', '2026-07-21', 16200.00, 'PNR100026'),
('BK027', 'USR027', 'FL015', 'One-Way', '2026-06-20', '2026-07-22', 5900.00, 'PNR100027'),
('BK028', 'USR028', 'FL015', 'Round-Trip', '2026-06-21', '2026-07-22', 11800.00, 'PNR100028'),
('BK029', 'USR029', 'FL016', 'One-Way', '2026-06-22', '2026-07-22', 3200.00, 'PNR100029'),
('BK030', 'USR030', 'FL016', 'One-Way', '2026-06-23', '2026-07-22', 9600.00, 'PNR100030'),
('BK031', 'USR031', 'FL017', 'One-Way', '2026-06-23', '2026-07-23', 3400.00, 'PNR100031'),
('BK032', 'USR032', 'FL017', 'Round-Trip', '2026-06-24', '2026-07-23', 10200.00, 'PNR100032'),
('BK033', 'USR033', 'FL018', 'One-Way', '2026-06-25', '2026-07-23', 6200.00, 'PNR100033'),
('BK034', 'USR034', 'FL018', 'One-Way', '2026-06-26', '2026-07-23', 24800.00, 'PNR100034'),
('BK035', 'USR035', 'FL019', 'One-Way', '2026-06-26', '2026-07-14', 6300.00, 'PNR100035'),
('BK036', 'USR036', 'FL019', 'Round-Trip', '2026-06-27', '2026-07-14', 12600.00, 'PNR100036'),
('BK037', 'USR037', 'FL020', 'One-Way', '2026-06-28', '2026-07-24', 5100.00, 'PNR100037'),
('BK038', 'USR038', 'FL020', 'One-Way', '2026-06-29', '2026-07-24', 15300.00, 'PNR100038'),
('BK039', 'USR039', 'FL021', 'One-Way', '2026-06-29', '2026-07-25', 3400.00, 'PNR100039'),
('BK040', 'USR040', 'FL021', 'Round-Trip', '2026-06-30', '2026-07-25', 10200.00, 'PNR100040'),
('BK041', 'USR041', 'FL022', 'One-Way', '2026-07-01', '2026-07-25', 3500.00, 'PNR100041'),
('BK042', 'USR042', 'FL022', 'One-Way', '2026-07-02', '2026-07-25', 10500.00, 'PNR100042'),
('BK043', 'USR043', 'FL023', 'One-Way', '2026-07-02', '2026-07-26', 6800.00, 'PNR100043'),
('BK044', 'USR044', 'FL023', 'Round-Trip', '2026-07-03', '2026-07-26', 20400.00, 'PNR100044'),
('BK045', 'USR045', 'FL024', 'One-Way', '2026-07-04', '2026-07-26', 6700.00, 'PNR100045'),
('BK046', 'USR046', 'FL024', 'One-Way', '2026-07-05', '2026-07-26', 13400.00, 'PNR100046'),
('BK047', 'USR047', 'FL025', 'One-Way', '2026-07-05', '2026-07-27', 5700.00, 'PNR100047'),
('BK048', 'USR048', 'FL025', 'Round-Trip', '2026-07-06', '2026-07-27', 11400.00, 'PNR100048'),
('BK049', 'USR049', 'FL001', 'One-Way', '2026-07-07', '2026-07-15', 5700.00, 'PNR100049'),
('BK050', 'USR050', 'FL002', 'One-Way', '2026-07-08', '2026-07-15', 11400.00, 'PNR100050');

-- Padding rows to scale clean indexing to 90 Bookings
INSERT INTO booking (Booking_ID, User_ID, Flight_ID, Booking_Type, Booking_Date, Journey_Date, Total_Amount, PNR) VALUES 
('BK051', 'USR001', 'FL005', 'One-Way', '2026-07-01', '2026-07-17', 6100.00, 'PNR100051'),
('BK052', 'USR002', 'FL006', 'One-Way', '2026-07-01', '2026-07-17', 4200.00, 'PNR100052'),
('BK053', 'USR003', 'FL007', 'One-Way', '2026-07-02', '2026-07-18', 3900.00, 'PNR100053'),
('BK054', 'USR004', 'FL008', 'One-Way', '2026-07-02', '2026-07-18', 3600.00, 'PNR100054'),
('BK055', 'USR005', 'FL009', 'One-Way', '2026-07-03', '2026-07-19', 5200.00, 'PNR100055'),
('BK056', 'USR006', 'FL010', 'One-Way', '2026-07-03', '2026-07-19', 3500.00, 'PNR100056'),
('BK057', 'USR007', 'FL011', 'One-Way', '2026-07-04', '2026-07-20', 4600.00, 'PNR100057'),
('BK058', 'USR008', 'FL012', 'One-Way', '2026-07-04', '2026-07-20', 4100.00, 'PNR100058'),
('BK059', 'USR009', 'FL013', 'One-Way', '2026-07-05', '2026-07-21', 3300.00, 'PNR100059'),
('BK060', 'USR010', 'FL014', 'One-Way', '2026-07-05', '2026-07-21', 5400.00, 'PNR100060'),
('BK061', 'USR011', 'FL015', 'One-Way', '2026-07-06', '2026-07-22', 5900.00, 'PNR100061'),
('BK062', 'USR012', 'FL016', 'One-Way', '2026-07-06', '2026-07-22', 3200.00, 'PNR100062'),
('BK063', 'USR013', 'FL017', 'One-Way', '2026-07-07', '2026-07-23', 3400.00, 'PNR100063'),
('BK064', 'USR014', 'FL018', 'One-Way', '2026-07-07', '2026-07-23', 6200.00, 'PNR100064'),
('BK065', 'USR015', 'FL019', 'One-Way', '2026-07-08', '2026-07-14', 6300.00, 'PNR100065'),
('BK066', 'USR016', 'FL020', 'One-Way', '2026-07-08', '2026-07-24', 5100.00, 'PNR100066'),
('BK067', 'USR017', 'FL021', 'One-Way', '2026-07-09', '2026-07-25', 3400.00, 'PNR100067'),
('BK068', 'USR018', 'FL022', 'One-Way', '2026-07-09', '2026-07-25', 3500.00, 'PNR100068'),
('BK069', 'USR019', 'FL023', 'One-Way', '2026-07-10', '2026-07-26', 6800.00, 'PNR100069'),
('BK070', 'USR020', 'FL024', 'One-Way', '2026-07-10', '2026-07-26', 6700.00, 'PNR100070'),
('BK074', 'USR024', 'FL004', 'One-Way', '2026-07-12', '2026-07-16', 4900.00, 'PNR100074'),
('BK075', 'USR025', 'FL005', 'One-Way', '2026-07-13', '2026-07-17', 6100.00, 'PNR100075'),
('BK076', 'USR026', 'FL006', 'One-Way', '2026-07-13', '2026-07-17', 4200.00, 'PNR100076'),
('BK077', 'USR027', 'FL007', 'One-Way', '2026-07-14', '2026-07-18', 3900.00, 'PNR100077'),
('BK078', 'USR028', 'FL008', 'One-Way', '2026-07-14', '2026-07-18', 3600.00, 'PNR100078'),
('BK079', 'USR029', 'FL009', 'One-Way', '2026-07-14', '2026-07-19', 5200.00, 'PNR100079'),
('BK080', 'USR030', 'FL010', 'One-Way', '2026-07-14', '2026-07-19', 3500.00, 'PNR100080'),
('BK081', 'USR031', 'FL011', 'One-Way', '2026-07-14', '2026-07-20', 4600.00, 'PNR100081'),
('BK082', 'USR032', 'FL012', 'One-Way', '2026-07-15', '2026-07-20', 4100.00, 'PNR100082'),
('BK083', 'USR033', 'FL013', 'One-Way', '2026-07-15', '2026-07-21', 3300.00, 'PNR100083'),
('BK084', 'USR034', 'FL014', 'One-Way', '2026-07-15', '2026-07-21', 5400.00, 'PNR100084'),
('BK085', 'USR035', 'FL015', 'One-Way', '2026-07-15', '2026-07-22', 5900.00, 'PNR100085'),
('BK086', 'USR036', 'FL016', 'One-Way', '2026-07-15', '2026-07-22', 3200.00, 'PNR100086'),
('BK087', 'USR037', 'FL017', 'One-Way', '2026-07-15', '2026-07-23', 3400.00, 'PNR100087'),
('BK088', 'USR038', 'FL018', 'One-Way', '2026-07-15', '2026-07-23', 6200.00, 'PNR100088'),
('BK089', 'USR039', 'FL019', 'One-Way', '2026-07-15', '2026-07-14', 6300.00, 'PNR100089'),
('BK090', 'USR040', 'FL020', 'One-Way', '2026-07-15', '2026-07-24', 5100.00, 'PNR100090');

-- ==========================================================
-- 6. DATA FOR: passenger (150 Rows)
-- ==========================================================
-- Stacking multiple distinct booking accounts onto identical flight legs
INSERT INTO passenger (Passenger_ID, Booking_ID, First_Name, Last_Name, Gender, DOB) VALUES 
-- Flight FL001 on 2026-07-15 (Party 1: Sharma family booking BK001)
('PSG001', 'BK001', 'Aarav', 'Sharma', 'Male', '1995-04-12'), 
('PSG002', 'BK001', 'Kiran', 'Sharma', 'Female', '1997-08-19'),
('PSG121', 'BK001', 'Madhav', 'Sharma', 'Male', '2019-05-05'),
-- Flight FL001 on 2026-07-15 (Party 2: Solo booking BK002)
('PSG003', 'BK002', 'Diya', 'Patel', 'Female', '1998-11-23'),
-- Flight FL001 on 2026-07-15 (Party 3: Separate traveler booking BK071)
('PSG101', 'BK071', 'Darsh', 'Sharma', 'Male', '2005-01-15'),

-- Flight FL002 on 2026-07-15 (Party 1: Verma Family booking BK003)
('PSG004', 'BK003', 'Reyansh', 'Verma', 'Male', '1987-01-15'), 
('PSG005', 'BK003', 'Amit', 'Verma', 'Male', '2015-05-10'),
('PSG122', 'BK003', 'Geeta', 'Verma', 'Female', '1990-08-14'),
-- Flight FL002 on 2026-07-15 (Party 2: Separate traveler booking BK072)
('PSG102', 'BK072', 'Esha', 'Patel', 'Female', '2003-11-22'),

-- Flight FL003 on 2026-07-16 (Party 1: Iyer booking BK004)
('PSG006', 'BK004', 'Ananya', 'Iyer', 'Female', '2001-08-05'), 
('PSG123', 'BK004', 'Lalitha', 'Iyer', 'Female', '1975-04-12'),
('PSG147', 'BK004', 'Kunal', 'Iyer', 'Male', '2005-06-14'),
-- Flight FL003 on 2026-07-16 (Party 2: Booking BK073)
('PSG103', 'BK073', 'Kabir', 'Verma', 'Male', '1994-03-19'),

-- Regular distribution blocks tracking down subsequent booking identifiers to 150
('PSG007', 'BK005', 'Vihaan', 'Nair', 'Male', '1976-06-30'),
('PSG008', 'BK006', 'Meera', 'Joshi', 'Female', '1993-09-18'), ('PSG009', 'BK006', 'Sanjay', 'Joshi', 'Male', '1990-04-12'), ('PSG124', 'BK006', 'Devendra', 'Joshi', 'Male', '1964-10-10'),
('PSG010', 'BK007', 'Arjun', 'Gupta', 'Male', '1990-12-02'), ('PSG125', 'BK007', 'Chandan', 'Gupta', 'Male', '1962-11-15'),
('PSG011', 'BK008', 'Kavya', 'Kumar', 'Female', '1996-03-25'),
('PSG012', 'BK009', 'Aditya', 'Singh', 'Male', '1984-05-14'),
('PSG013', 'BK010', 'Riya', 'Reddy', 'Female', '1999-07-29'), ('PSG126', 'BK010', 'Prerna', 'Reddy', 'Female', '1997-12-12'),
('PSG014', 'BK011', 'Rahul', 'Mishra', 'Male', '1992-02-10'),
('PSG015', 'BK012', 'Sneha', 'Das', 'Female', '1995-10-22'), ('PSG127', 'BK012', 'Nirmala', 'Das', 'Female', '1967-03-24'),
('PSG016', 'BK013', 'Rohit', 'Choudhury', 'Male', '1989-08-11'),
('PSG017', 'BK014', 'Priya', 'Banerjee', 'Female', '1991-04-04'), ('PSG128', 'BK014', 'Abhishek', 'Banerjee', 'Male', '1995-07-17'),
('PSG018', 'BK015', 'Sanjay', 'Rao', 'Male', '1979-11-17'),
('PSG019', 'BK016', 'Neha', 'Shah', 'Female', '1997-12-15'), ('PSG129', 'BK016', 'Meena', 'Shah', 'Female', '1970-01-15'),
('PSG020', 'BK017', 'Vikram', 'Mehta', 'Male', '1983-03-09'),
('PSG021', 'BK018', 'Pooja', 'Kulkarni', 'Female', '1994-06-26'), ('PSG130', 'BK018', 'Kriti', 'Kulkarni', 'Female', '2023-04-05'), ('PSG148', 'BK018', 'Rashmi', 'Kulkarni', 'Female', '1995-10-10'),
('PSG022', 'BK019', 'Pranav', 'Pillai', 'Male', '2002-01-01'),
('PSG023', 'BK020', 'Deepika', 'Naik', 'Female', '1988-09-14'), ('PSG131', 'BK020', 'Rajendra', 'Naik', 'Male', '1960-12-12'),
('PSG024', 'BK021', 'Amit', 'Sharma', 'Male', '1991-05-12'),
('PSG025', 'BK022', 'Kiran', 'Joshi', 'Female', '1993-07-19'), ('PSG132', 'BK022', 'Siddharth', 'Joshi', 'Male', '1995-05-25'),
('PSG026', 'BK023', 'Ganesh', 'Patel', 'Male', '1985-11-02'),
('PSG027', 'BK024', 'Jyoti', 'Singh', 'Female', '1989-03-24'), ('PSG133', 'BK024', 'Ananya', 'Singh', 'Female', '1994-08-18'),
('PSG028', 'BK025', 'Vijay', 'Gupta', 'Male', '1978-01-15'),
('PSG029', 'BK026', 'Nisha', 'Verma', 'Female', '1996-08-30'), ('PSG134', 'BK026', 'Preeti', 'Verma', 'Female', '1996-01-14'), ('PSG149', 'BK026', 'Tushar', 'Verma', 'Male', '1998-03-22'),
('PSG030', 'BK027', 'Suresh', 'Kumar', 'Male', '1982-12-12'),
('PSG031', 'BK028', 'Aadhya', 'Reddy', 'Female', '2000-04-05'), ('PSG135', 'BK028', 'Srinivas', 'Reddy', 'Male', '1971-06-20'),
('PSG032', 'BK029', 'Ishaan', 'Mishra', 'Male', '1994-09-21'),
('PSG033', 'BK030', 'Saanvi', 'Iyer', 'Female', '1997-06-18'), ('PSG136', 'BK030', 'Vasundhara', 'Iyer', 'Female', '1973-03-15'),
('PSG034', 'BK031', 'Vikranth', 'Rao', 'Male', '1986-02-14'),
('PSG035', 'BK032', 'Anushka', 'Mehta', 'Female', '1995-10-10'), ('PSG137', 'BK032', 'Gaurav', 'Mehta', 'Male', '1994-11-11'),
('PSG036', 'BK033', 'Pradeep', 'Das', 'Male', '1980-07-27'),
('PSG037', 'BK034', 'Tanvi', 'Shah', 'Female', '1998-05-19'), ('PSG138', 'BK034', 'Hansika', 'Shah', 'Female', '2022-10-10'), ('PSG150', 'BK034', 'Nisha', 'Shah', 'Female', '1997-01-01'),
('PSG038', 'BK035', 'Manish', 'Nair', 'Male', '1983-12-01'),
('PSG039', 'BK036', 'Shruti', 'Kulkarni', 'Female', '1992-03-14'), ('PSG139', 'BK036', 'Mukund', 'Kulkarni', 'Male', '1961-05-19'),
('PSG040', 'BK037', 'Rajesh', 'Banerjee', 'Male', '1974-11-25'),
('PSG041', 'BK038', 'Divya', 'Pillai', 'Female', '1996-01-30'), ('PSG140', 'BK038', 'Raghavan', 'Pillai', 'Male', '1968-09-09'),
('PSG042', 'BK039', 'Harish', 'Choudhury', 'Male', '1988-06-08'),
('PSG043', 'BK040', 'Meenakshi', 'Naik', 'Female', '1991-09-17'), ('PSG141', 'BK040', 'Kishore', 'Naik', 'Male', '1965-02-14'),
('PSG044', 'BK041', 'Vivek', 'Sharma', 'Male', '1985-04-23'),
('PSG045', 'BK042', 'Radhika', 'Gupta', 'Female', '1994-07-07'), ('PSG142', 'BK042', 'Nandini', 'Gupta', 'Female', '1996-03-22'),
('PSG046', 'BK043', 'Nitin', 'Patel', 'Male', '1982-10-15'),
('PSG047', 'BK044', 'Kavita', 'Singh', 'Female', '1989-11-20'), ('PSG143', 'BK044', 'Savitri', 'Singh', 'Female', '1961-07-07'),
('PSG048', 'BK045', 'Alok', 'Mishra', 'Male', '1977-03-11'),
('PSG049', 'BK046', 'Shweta', 'Verma', 'Female', '1993-05-29'), ('PSG144', 'BK046', 'Raman', 'Verma', 'Male', '1963-09-18'),
('PSG050', 'BK047', 'Pankaj', 'Kumar', 'Male', '1981-08-14');

-- Packing structural remaining rows dynamically into sequential units
INSERT INTO passenger (Passenger_ID, Booking_ID, First_Name, Last_Name, Gender, DOB) VALUES 
('PSG051', 'BK048', 'Komal', 'Reddy', 'Female', '1997-02-02'), ('PSG145', 'BK048', 'Chinmay', 'Reddy', 'Male', '1995-04-04'),
('PSG052', 'BK049', 'Sunil', 'Joshi', 'Male', '1984-12-25'),
('PSG053', 'BK050', 'Arpita', 'Das', 'Female', '1995-06-13'), ('PSG146', 'BK050', 'Manju', 'Das', 'Female', '1971-08-11'),
('PSG054', 'BK051', 'Prem', 'Sharma', 'Male', '1964-02-18'),
('PSG055', 'BK052', 'Asha', 'Patel', 'Female', '1970-05-22'),
('PSG056', 'BK053', 'Dev', 'Verma', 'Male', '1992-09-09'),
('PSG057', 'BK054', 'Renu', 'Iyer', 'Female', '1975-01-25'),
('PSG058', 'BK055', 'Bala', 'Nair', 'Male', '1968-10-14'),
('PSG059', 'BK056', 'Ila', 'Joshi', 'Female', '1995-03-03'),
('PSG060', 'BK057', 'Shiv', 'Gupta', 'Male', '1988-07-21'),
('PSG061', 'BK058', 'Uma', 'Kumar', 'Female', '1966-11-11'),
('PSG062', 'BK059', 'Yash', 'Singh', 'Male', '2002-08-17'),
('PSG063', 'BK060', 'Tara', 'Reddy', 'Female', '2001-12-12'),
('PSG064', 'BK061', 'Anil', 'Mishra', 'Male', '1970-01-01'),
('PSG065', 'BK062', 'Gita', 'Das', 'Female', '1974-06-18'),
('PSG066', 'BK063', 'Arun', 'Choudhury', 'Male', '1966-03-31'),
('PSG067', 'BK064', 'Maya', 'Banerjee', 'Female', '1995-09-05'),
('PSG068', 'BK065', 'Hari', 'Rao', 'Male', '1959-05-15'),
('PSG069', 'BK066', 'Jaya', 'Shah', 'Female', '1963-07-20'),
('PSG070', 'BK067', 'Ravi', 'Mehta', 'Male', '1981-12-10'),
('PSG071', 'BK068', 'Lata', 'Kulkarni', 'Female', '1958-02-28'),
('PSG072', 'BK069', 'Manu', 'Pillai', 'Male', '1996-04-04'),
('PSG073', 'BK070', 'Usha', 'Naik', 'Female', '1969-08-08'),
('PSG074', 'BK074', 'Kabir', 'Reddy', 'Male', '1995-10-12'),
('PSG075', 'BK075', 'Darsh', 'Gupta', 'Male', '1988-11-14'),
('PSG076', 'BK076', 'Nisha', 'Kumar', 'Female', '1990-03-22'),
('PSG077', 'BK077', 'Om', 'Shah', 'Male', '1982-05-19'),
('PSG078', 'BK078', 'Tanvi', 'Das', 'Female', '1994-07-07'),
('PSG079', 'BK079', 'Pradeep', 'Singh', 'Male', '1986-09-15'),
('PSG080', 'BK080', 'Jyoti', 'Reddy', 'Female', '1989-12-12'),
('PSG081', 'BK081', 'Vijay', 'Mishra', 'Male', '1975-01-14'),
('PSG082', 'BK082', 'Sneha', 'Kumar', 'Female', '1993-02-18'),
('PSG083', 'BK083', 'Rahul', 'Das', 'Male', '1982-04-20'),
('PSG084', 'BK084', 'Priya', 'Singh', 'Female', '1988-06-25'),
('PSG085', 'BK085', 'Sanjay', 'Rao', 'Male', '1979-08-11'),
('PSG086', 'BK086', 'Neha', 'Shah', 'Female', '1995-10-22'),
('PSG087', 'BK087', 'Vikram', 'Mehta', 'Male', '1983-12-15'),
('PSG088', 'BK088', 'Pooja', 'Kumar', 'Female', '1991-01-30'),
('PSG089', 'BK089', 'Pranav', 'Pillai', 'Male', '2001-03-04'),
('PSG090', 'BK090', 'Deepika', 'Naik', 'Female', '1987-05-12'),
('PSG091', 'BK001', 'Aditi', 'Sharma', 'Female', '1999-01-01'),
('PSG092', 'BK003', 'Rohan', 'Verma', 'Male', '2018-02-02'),
('PSG093', 'BK004', 'Siddharth', 'Iyer', 'Male', '2008-03-03'),
('PSG094', 'BK006', 'Komal', 'Joshi', 'Female', '1998-04-04'),
('PSG095', 'BK007', 'Nitin', 'Gupta', 'Male', '1995-05-05'),
('PSG096', 'BK010', 'Shweta', 'Reddy', 'Female', '1996-06-06'),
('PSG097', 'BK012', 'Pankaj', 'Das', 'Male', '1992-07-07'),
('PSG098', 'BK014', 'Sunil', 'Banerjee', 'Male', '1970-08-08'),
('PSG099', 'BK016', 'Arpita', 'Shah', 'Female', '1999-09-09'),
('PSG100', 'BK018', 'Vivek', 'Kulkarni', 'Male', '2020-10-10');

-- ==========================================================
-- 7. DATA FOR: ticket (150 Rows)
-- ==========================================================
-- Flight FL001 Manifest Allocation (DEL to BOM)
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK001', 'BK001', 'PSG001', 'TKT-100001-1', '2026-06-01 10:00:00', 'Economy', '12A'), -- Sharma Family Row
('TK002', 'BK001', 'PSG002', 'TKT-100001-2', '2026-06-01 10:05:00', 'Economy', '12B'), 
('TK121', 'BK001', 'PSG121', 'TKT-100001-3', '2026-06-01 10:06:00', 'Economy', '12C'), 
('TK003', 'BK002', 'PSG003', 'TKT-100002-1', '2026-06-02 11:20:00', 'Economy', '06F'), -- Solo passenger Diya Patel
('TK101', 'BK071', 'PSG101', 'TKT-100071-1', '2026-07-11 14:00:00', 'Economy', '14D'), -- Separate traveler Darsh Sharma

-- Flight FL002 Manifest Allocation (BOM to BLR)
('TK004', 'BK003', 'PSG004', 'TKT-100003-1', '2026-06-02 09:15:00', 'Business', '02C'), -- Verma Family in Business Class
('TK005', 'BK003', 'PSG005', 'TKT-100003-2', '2026-06-02 09:16:00', 'Business', '02D'),
('TK122', 'BK003', 'PSG122', 'TKT-100003-3', '2026-06-02 09:18:00', 'Business', '02E'),
('TK102', 'BK072', 'PSG102', 'TKT-100072-1', '2026-07-11 16:45:00', 'Economy', '18A'), -- Separate traveler Esha Patel on same flight

-- Flight FL003 Manifest Leg (BLR to DEL)
('TK006', 'BK004', 'PSG006', 'TKT-100004-1', '2026-06-03 15:30:00', 'Economy', '08A'),
('TK123', 'BK004', 'PSG123', 'TKT-100004-2', '2026-06-03 15:32:00', 'Economy', '08B'),
('TK147', 'BK004', 'PSG147', 'TKT-100004-3', '2026-06-03 15:35:00', 'Economy', '08C'),
('TK103', 'BK073', 'PSG103', 'TKT-100073-1', '2026-07-12 11:10:00', 'Economy', '19E'), -- Overlapping manifest leg entry

-- Base rows maps safely from PSG007 down to target limit
('TK007', 'BK005', 'PSG007', 'TKT-100005-1', '2026-06-04 18:40:00', 'Economy', '14A'),
('TK008', 'BK006', 'PSG008', 'TKT-100006-1', '2026-06-05 13:12:00', 'Economy', '10A'),
('TK009', 'BK006', 'PSG009', 'TKT-100006-2', '2026-06-05 13:14:00', 'Economy', '10B'),
('TK010', 'BK006', 'PSG124', 'TKT-100006-3', '2026-06-05 13:15:00', 'Economy', '10C'),
('TK011', 'BK007', 'PSG010', 'TKT-100007-1', '2026-06-05 16:22:00', 'Economy', '22D'),
('TK012', 'BK007', 'PSG125', 'TKT-100007-2', '2026-06-05 16:24:00', 'Economy', '22E'),
('TK013', 'BK008', 'PSG011', 'TKT-100008-1', '2026-06-06 20:01:00', 'Economy', '04B'),
('TK014', 'BK009', 'PSG012', 'TKT-100009-1', '2026-06-07 11:11:00', 'Business', '01A'),
('TK015', 'BK010', 'PSG013', 'TKT-100010-1', '2026-06-08 14:45:00', 'Economy', '15B'),
('TK016', 'BK010', 'PSG126', 'TKT-100010-2', '2026-06-08 14:47:00', 'Economy', '15C'),
('TK017', 'BK011', 'PSG014', 'TKT-100011-1', '2026-06-08 17:02:00', 'Economy', '11C'),
('TK018', 'BK012', 'PSG015', 'TKT-100012-1', '2026-06-09 21:10:00', 'Economy', '26A'),
('TK019', 'BK012', 'PSG127', 'TKT-100012-2', '2026-06-09 21:12:00', 'Economy', '26B'),
('TK020', 'BK013', 'PSG016', 'TKT-100013-1', '2026-06-10 08:30:00', 'Economy', '07D'),
('TK024', 'BK015', 'PSG018', 'TKT-100015-1', '2026-06-11 12:44:00', 'Economy', '16E'),
('TK025', 'BK016', 'PSG019', 'TKT-100016-1', '2026-06-12 15:19:00', 'Economy', '16F');

-- Query projection inserts to bulk populate remaining tickets dynamically 1:1 with passengers
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) 
SELECT CONCAT('TK', SUBSTRING(p.Passenger_ID, 4, 3)), p.Booking_ID, p.Passenger_ID, CONCAT('TKT-AUTO-', SUBSTRING(p.Passenger_ID, 4, 3)), '2026-07-02 12:00:00', 'Economy', CONCAT(CAST(SUBSTRING(p.Passenger_ID, 4, 3) AS UNSIGNED) % 30 + 1, 'B') 
FROM passenger p 
WHERE p.Passenger_ID NOT IN ('PSG001','PSG002','PSG121','PSG003','PSG101','PSG004','PSG005','PSG122','PSG102','PSG006','PSG123','PSG147','PSG103','PSG007','PSG008','PSG009','PSG124','PSG010','PSG125','PSG011','PSG012','PSG013','PSG126','PSG014','PSG015','PSG127','PSG016','PSG018','PSG019');

-- ==========================================================
-- 8. DATA FOR: baggage (15 Rows)
-- ==========================================================
INSERT INTO baggage (Baggage_ID, Ticket_ID, Baggage_Type, Weight, Charge) VALUES 
('BAG001', 'TK001', 'Check-in', 14.50, 0.00),
('BAG002', 'TK002', 'Cabin', 6.20, 0.00),
('BAG003', 'TK003', 'Check-in', 18.00, 1350.00),
('BAG004', 'TK004', 'Check-in', 22.00, 0.00),
('BAG005', 'TK006', 'Check-in', 12.00, 0.00),
('BAG006', 'TK007', 'Check-in', 15.00, 0.00),
('BAG007', 'TK008', 'Check-in', 19.50, 2025.00),
('BAG008', 'TK010', 'Cabin', 5.00, 0.00),
('BAG009', 'TK011', 'Check-in', 13.80, 0.00),
('BAG010', 'TK014', 'Check-in', 25.00, 0.00),
('BAG011', 'TK017', 'Check-in', 16.20, 540.00),
('BAG012', 'TK018', 'Check-in', 11.00, 0.00),
('BAG013', 'TK021', 'Check-in', 15.00, 0.00),
('BAG014', 'TK022', 'Check-in', 21.00, 2700.00),
('BAG015', 'TK024', 'Cabin', 7.00, 0.00);

-- ==========================================================
-- 9. DATA FOR: payment (45 Rows Matrix Block)
-- ==========================================================
INSERT INTO payment (Payment_ID, Booking_ID, Amount, Payment_Date, Payment_Mode, Transaction_ID) VALUES 
('PAY001', 'BK001', 13500.00, '2026-06-01', 'UPI', 'TXN9182736450'),
('PAY002', 'BK002', 4500.00, '2026-06-02', 'Credit Card', 'TXN1029384756'),
('PAY003', 'BK003', 11400.00, '2026-06-02', 'Net Banking', 'TXN5748392019'),
('PAY004', 'BK004', 17400.00, '2026-06-03', 'Wallet', 'TXN3847291048'),
('PAY005', 'BK005', 4900.00, '2026-06-04', 'UPI', 'TXN2938471029'),
('PAY006', 'BK006', 14700.00, '2026-06-05', 'Debit Card', 'TXN9018273645'),
('PAY007', 'BK007', 12200.00, '2026-06-05', 'Credit Card', 'TXN5647382910'),
('PAY008', 'BK008', 6100.00, '2026-06-06', 'UPI', 'TXN4738291056'),
('PAY009', 'BK009', 4200.00, '2026-06-07', 'Credit Card', 'TXN2839401928'),
('PAY010', 'BK010', 12600.00, '2026-06-08', 'UPI', 'TXN1049382716'),
('PAY011', 'BK011', 3900.00, '2026-06-08', 'UPI', 'TXN3049281736'),
('PAY012', 'BK012', 11700.00, '2026-06-09', 'Credit Card', 'TXN4049281737'),
('PAY013', 'BK013', 3600.00, '2026-06-10', 'Net Banking', 'TXN5049281738'),
('PAY014', 'BK014', 10800.00, '2026-06-11', 'Debit Card', 'TXN6049281739'),
('PAY015', 'BK015', 5200.00, '2026-06-11', 'UPI', 'TXN7049281740'),
('PAY016', 'BK016', 15600.00, '2026-06-12', 'Credit Card', 'TXN8049281741'),
('PAY017', 'BK017', 3500.00, '2026-06-13', 'Net Banking', 'TXN9049281742'),
('PAY018', 'BK018', 14000.00, '2026-06-14', 'Wallet', 'TXN0149281743'),
('PAY019', 'BK019', 4600.00, '2026-06-14', 'UPI', 'TXN1149281744'),
('PAY020', 'BK020', 13800.00, '2026-06-15', 'Credit Card', 'TXN2149281745'),
('PAY021', 'BK021', 4100.00, '2026-06-16', 'UPI', 'TXN3149281746'),
('PAY022', 'BK022', 12300.00, '2026-06-17', 'Credit Card', 'TXN4149281747'),
('PAY023', 'BK023', 3300.00, '2026-06-17', 'Net Banking', 'TXN5149281748'),
('PAY024', 'BK024', 9900.00, '2026-06-18', 'Debit Card', 'TXN6149281749'),
('PAY025', 'BK025', 5400.00, '2026-06-19', 'UPI', 'TXN7149281750'),
('PAY026', 'BK026', 16200.00, '2026-06-20', 'Credit Card', 'TXN8149281751'),
('PAY027', 'BK027', 5900.00, '2026-06-20', 'Net Banking', 'TXN9149281752'),
('PAY028', 'BK028', 11800.00, '2026-06-21', 'Wallet', 'TXN0249281753'),
('PAY029', 'BK029', 3200.00, '2026-06-22', 'UPI', 'TXN1249281754'),
('PAY030', 'BK030', 9600.00, '2026-06-23', 'Credit Card', 'TXN2249281755'),
('PAY031', 'BK031', 3400.00, '2026-06-23', 'UPI', 'TXN3249281756'),
('PAY032', 'BK032', 10200.00, '2026-06-24', 'Credit Card', 'TXN4249281757'),
('PAY033', 'BK033', 6200.00, '2026-06-25', 'Net Banking', 'TXN5249281758'),
('PAY034', 'BK034', 24800.00, '2026-06-26', 'Debit Card', 'TXN6249281759'),
('PAY035', 'BK035', 6300.00, '2026-06-26', 'UPI', 'TXN7249281760'),
('PAY036', 'BK036', 12600.00, '2026-06-27', 'Credit Card', 'TXN8249281761'),
('PAY037', 'BK037', 5100.00, '2026-06-28', 'Net Banking', 'TXN9249281762'),
('PAY038', 'BK038', 15300.00, '2026-06-29', 'Wallet', 'TXN0349281763'),
('PAY039', 'BK039', 3400.00, '2026-06-29', 'UPI', 'TXN1349281764'),
('PAY040', 'BK040', 10200.00, '2026-06-30', 'Credit Card', 'TXN2349281765'),
('PAY041', 'BK041', 3500.00, '2026-07-01', 'UPI', 'TXN3349281766'),
('PAY042', 'BK042', 10500.00, '2026-07-02', 'Credit Card', 'TXN4249281767'),
('PAY043', 'BK043', 6800.00, '2026-07-02', 'Net Banking', 'TXN5349281768'),
('PAY044', 'BK044', 20400.00, '2026-07-03', 'Debit Card', 'TXN6349281769'),
('PAY045', 'BK045', 6700.00, '2026-07-04', 'UPI', 'TXN7349281770');

-- ==========================================================
-- 10. DATA FOR: cancellation (12 ROWS)
-- ==========================================================
INSERT INTO cancellation (Cancellation_ID, Booking_ID, Cancel_Date, Reason, Refund_Amount) VALUES 
('CNL001', 'BK002', '2026-06-20', 'Plan Changed', 3825.00),   -- 15% cancellation penalty applied
('CNL002', 'BK008', '2026-07-01', 'Medical Emergency', 5185.00),
('CNL003', 'BK011', '2026-06-15', 'Meeting Postponed', 3315.00),
('CNL004', 'BK015', '2026-06-20', 'Personal Reason', 4420.00),
('CNL005', 'BK019', '2026-06-25', 'Health Issue', 3910.00),
('CNL006', 'BK023', '2026-07-02', 'Bad Weather Forecast', 2805.00),
('CNL007', 'BK027', '2026-06-28', 'Plan Changed', 5015.00),
('CNL008', 'BK031', '2026-07-05', 'Accident', 2890.00),
('CNL009', 'BK035', '2026-07-04', 'Work Urgency', 5355.00),
('CNL010', 'BK039', '2026-07-06', 'Flight Time Unsuitable', 2890.00),
('CNL011', 'BK041', '2026-07-08', 'Double Booking Error', 2975.00),
('CNL012', 'BK043', '2026-07-10', 'Visa Rejected', 5780.00);

-- ==========================================================
-- 11. DATA FOR: refund (12 ROWS)
-- ==========================================================
INSERT INTO refund (Refund_ID, Cancellation_ID, Amount, Refund_Date, Refund_Mode, Transaction_ID) VALUES 
('RFD001', 'CNL001', 3825.00, '2026-06-22', 'Credit Card', 'REF100000001'),
('RFD002', 'CNL002', 5185.00, '2026-07-03', 'UPI', 'REF100000002'),
('RFD003', 'CNL003', 3315.00, '2026-06-17', 'UPI', 'REF100000003'),
('RFD004', 'CNL004', 4420.00, '2026-06-22', 'UPI', 'REF100000004'),
('RFD005', 'CNL005', 3910.00, '2026-06-27', 'UPI', 'REF100000005'),
('RFD006', 'CNL006', 2805.00, '2026-07-04', 'Net Banking', 'REF100000006'),
('RFD007', 'CNL007', 5015.00, '2026-06-30', 'Net Banking', 'REF100000007'),
('RFD008', 'CNL008', 2890.00, '2026-07-07', 'UPI', 'REF100000008'),
('RFD009', 'CNL009', 5355.00, '2026-07-06', 'UPI', 'REF100000009'),
('RFD010', 'CNL010', 2890.00, '2026-07-08', 'Credit Card', 'REF100000010'),
('RFD011', 'CNL011', 2975.00, '2026-07-10', 'UPI', 'REF100000011'),
('RFD012', 'CNL012', 5780.00, '2026-07-12', 'Net Banking', 'REF100000012');


-- ==========================================================
-- REVISED DATA FOR: ticket (100% Explicit, Zero-Conflict Block)
-- ==========================================================
-- Section A: Manual high-density overrides we already handled
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK001', 'BK001', 'PSG001', 'TKT-100001-1', '2026-06-01 10:00:00', 'Economy', '12A'),
('TK002', 'BK001', 'PSG002', 'TKT-100001-2', '2026-06-01 10:05:00', 'Economy', '12B'), 
('TK121', 'BK001', 'PSG121', 'TKT-100001-3', '2026-06-01 10:06:00', 'Economy', '12C'), 
('TK003', 'BK002', 'PSG003', 'TKT-100002-1', '2026-06-02 11:20:00', 'Economy', '06F'),
('TK101', 'BK071', 'PSG101', 'TKT-100071-1', '2026-07-11 14:00:00', 'Economy', '14D'),
('TK004', 'BK003', 'PSG004', 'TKT-100003-1', '2026-06-02 09:15:00', 'Business', '02C'),
('TK005', 'BK003', 'PSG005', 'TKT-100003-2', '2026-06-02 09:16:00', 'Business', '02D'),
('TK122', 'BK003', 'PSG122', 'TKT-100003-3', '2026-06-02 09:18:00', 'Business', '02E'),
('TK102', 'BK072', 'PSG102', 'TKT-100072-1', '2026-07-11 16:45:00', 'Economy', '18A'),
('TK006', 'BK004', 'PSG006', 'TKT-100004-1', '2026-06-03 15:30:00', 'Economy', '08A'),
('TK123', 'BK004', 'PSG123', 'TKT-100004-2', '2026-06-03 15:32:00', 'Economy', '08B'),
('TK147', 'BK004', 'PSG147', 'TKT-100004-3', '2026-06-03 15:35:00', 'Economy', '08C'),
('TK103', 'BK073', 'PSG103', 'TKT-100073-1', '2026-07-12 11:10:00', 'Economy', '19E'),
('TK007', 'BK005', 'PSG007', 'TKT-100005-1', '2026-06-04 18:40:00', 'Economy', '14A'),
('TK008', 'BK006', 'PSG008', 'TKT-100006-1', '2026-06-05 13:12:00', 'Economy', '10A'),
('TK009', 'BK006', 'PSG009', 'TKT-100006-2', '2026-06-05 13:14:00', 'Economy', '10B'),
('TK010', 'BK006', 'PSG124', 'TKT-100006-3', '2026-06-05 13:15:00', 'Economy', '10C'),
('TK011', 'BK007', 'PSG010', 'TKT-100007-1', '2026-06-05 16:22:00', 'Economy', '22D'),
('TK012', 'BK007', 'PSG125', 'TKT-100007-2', '2026-06-05 16:24:00', 'Economy', '22E'),
('TK013', 'BK008', 'PSG011', 'TKT-100008-1', '2026-06-06 20:01:00', 'Economy', '04B'),
('TK014', 'BK009', 'PSG012', 'TKT-100009-1', '2026-06-07 11:11:00', 'Business', '01A'),
('TK015', 'BK010', 'PSG013', 'TKT-100010-1', '2026-06-08 14:45:00', 'Economy', '15B'),
('TK016', 'BK010', 'PSG126', 'TKT-100010-2', '2026-06-08 14:47:00', 'Economy', '15C'),
('TK017', 'BK011', 'PSG014', 'TKT-100011-1', '2026-06-08 17:02:00', 'Economy', '11C'),
('TK018', 'BK012', 'PSG015', 'TKT-100012-1', '2026-06-09 21:10:00', 'Economy', '26A'),
('TK019', 'BK012', 'PSG127', 'TKT-100012-2', '2026-06-09 21:12:00', 'Economy', '26B'),
('TK020', 'BK013', 'PSG016', 'TKT-100013-1', '2026-06-10 08:30:00', 'Economy', '07D'),
('TK024', 'BK015', 'PSG018', 'TKT-100015-1', '2026-06-11 12:44:00', 'Economy', '16E'),
('TK025', 'BK016', 'PSG019', 'TKT-100016-1', '2026-06-12 15:19:00', 'Economy', '16F');

-- Section B: Clean, non-clashing custom sequential blocks for the rest of the passengers
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK201', 'BK014', 'PSG128', 'TKT-AUTO-201', '2026-07-02 12:00:00', 'Economy', '15B'),
('TK202', 'BK016', 'PSG129', 'TKT-AUTO-202', '2026-07-02 12:00:00', 'Economy', '16B'),
('TK203', 'BK018', 'PSG130', 'TKT-AUTO-203', '2026-07-02 12:00:00', 'Economy', '17B'),
('TK204', 'BK020', 'PSG131', 'TKT-AUTO-204', '2026-07-02 12:00:00', 'Business', '18B'),
('TK205', 'BK022', 'PSG132', 'TKT-AUTO-205', '2026-07-02 12:00:00', 'Economy', '19B'),
('TK206', 'BK024', 'PSG133', 'TKT-AUTO-206', '2026-07-02 12:00:00', 'Economy', '20B'),
('TK207', 'BK026', 'PSG134', 'TKT-AUTO-207', '2026-07-02 12:00:00', 'Economy', '21B'),
('TK208', 'BK028', 'PSG135', 'TKT-AUTO-208', '2026-07-02 12:00:00', 'Economy', '22B'),
('TK209', 'BK030', 'PSG136', 'TKT-AUTO-209', '2026-07-02 12:00:00', 'Economy', '23B'),
('TK210', 'BK032', 'PSG137', 'TKT-AUTO-210', '2026-07-02 12:00:00', 'Economy', '24B'),
('TK211', 'BK034', 'PSG138', 'TKT-AUTO-211', '2026-07-02 12:00:00', 'Economy', '25B'),
('TK212', 'BK036', 'PSG139', 'TKT-AUTO-212', '2026-07-02 12:00:00', 'Economy', '26B'),
('TK213', 'BK038', 'PSG140', 'TKT-AUTO-213', '2026-07-02 12:00:00', 'Economy', '27B'),
('TK214', 'BK040', 'PSG141', 'TKT-AUTO-214', '2026-07-02 12:00:00', 'Economy', '28B'),
('TK215', 'BK042', 'PSG142', 'TKT-AUTO-215', '2026-07-02 12:00:00', 'Economy', '29B'),
('TK216', 'BK044', 'PSG143', 'TKT-AUTO-216', '2026-07-02 12:00:00', 'Economy', '30B'),
('TK217', 'BK046', 'PSG144', 'TKT-AUTO-217', '2026-07-02 12:00:00', 'Economy', '01C'),
('TK218', 'BK048', 'PSG145', 'TKT-AUTO-218', '2026-07-02 12:00:00', 'Economy', '02C'),
('TK219', 'BK050', 'PSG146', 'TKT-AUTO-219', '2026-07-02 12:00:00', 'Economy', '03C'),
('TK220', 'BK018', 'PSG148', 'TKT-AUTO-220', '2026-07-02 12:00:00', 'Economy', '04C'),
('TK221', 'BK026', 'PSG149', 'TKT-AUTO-221', '2026-07-02 12:00:00', 'Economy', '05C'),
('TK222', 'BK034', 'PSG150', 'TKT-AUTO-222', '2026-07-02 12:00:00', 'Economy', '06C');

INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK026', 'BK023', 'PSG026', 'TKT-AUTO-026', '2026-06-15 10:12:00', 'Economy', '27B'),
('TK027', 'BK024', 'PSG027', 'TKT-AUTO-027', '2026-06-15 11:45:00', 'Economy', '28B'),
('TK028', 'BK025', 'PSG028', 'TKT-AUTO-028', '2026-06-15 14:30:00', 'Economy', '29B'),
('TK029', 'BK026', 'PSG029', 'TKT-AUTO-029', '2026-06-15 16:05:00', 'Economy', '30B'),
('TK030', 'BK027', 'PSG030', 'TKT-AUTO-030', '2026-06-15 18:22:00', 'Economy', '01A');


INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK031', 'BK028', 'PSG031', 'TKT-AUTO-031', '2026-06-18 09:15:00', 'Economy', '02A'),
('TK032', 'BK029', 'PSG032', 'TKT-AUTO-032', '2026-06-18 11:24:00', 'Economy', '03A'),
('TK033', 'BK030', 'PSG033', 'TKT-AUTO-033', '2026-06-18 13:40:00', 'Economy', '04A'),
('TK034', 'BK031', 'PSG034', 'TKT-AUTO-034', '2026-06-18 15:10:00', 'Economy', '05A'),
('TK035', 'BK032', 'PSG035', 'TKT-AUTO-035', '2026-06-18 17:55:00', 'Economy', '06A');

-- BATCH 3: 5 People on 2026-06-22
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK036', 'BK033', 'PSG036', 'TKT-AUTO-036', '2026-06-22 08:30:00', 'Economy', '07A'),
('TK037', 'BK034', 'PSG037', 'TKT-AUTO-037', '2026-06-22 10:14:00', 'Economy', '08A'),
('TK038', 'BK035', 'PSG038', 'TKT-AUTO-038', '2026-06-22 12:44:00', 'Economy', '09A'),
('TK039', 'BK036', 'PSG039', 'TKT-AUTO-039', '2026-06-22 14:20:00', 'Economy', '10A'),
('TK040', 'BK037', 'PSG040', 'TKT-AUTO-040', '2026-06-22 16:50:00', 'Economy', '11A');

-- BATCH 4: 5 People on 2026-06-25
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK041', 'BK038', 'PSG041', 'TKT-AUTO-041', '2026-06-25 09:11:00', 'Economy', '12A'),
('TK042', 'BK039', 'PSG042', 'TKT-AUTO-042', '2026-06-25 11:35:00', 'Economy', '13A'),
('TK043', 'BK040', 'PSG043', 'TKT-AUTO-043', '2026-06-25 13:02:00', 'Economy', '14A'),
('TK044', 'BK041', 'PSG044', 'TKT-AUTO-044', '2026-06-25 15:40:00', 'Economy', '15A'),
('TK045', 'BK042', 'PSG045', 'TKT-AUTO-045', '2026-06-25 17:18:00', 'Economy', '16A');

INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK046', 'BK043', 'PSG046', 'TKT-AUTO-046', '2026-06-29 10:05:00', 'Economy', '17A'),
('TK047', 'BK044', 'PSG047', 'TKT-AUTO-047', '2026-06-29 11:22:00', 'Economy', '18A'),
('TK048', 'BK045', 'PSG048', 'TKT-AUTO-048', '2026-06-29 13:50:00', 'Economy', '19A'),
('TK049', 'BK046', 'PSG049', 'TKT-AUTO-049', '2026-06-29 15:15:00', 'Economy', '20A'),
('TK050', 'BK047', 'PSG050', 'TKT-AUTO-050', '2026-06-29 17:30:00', 'Economy', '21A');

-- BATCH 6: 5 People on 2026-07-02
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK051', 'BK048', 'PSG051', 'TKT-AUTO-051', '2026-07-02 09:25:00', 'Economy', '22A'),
('TK052', 'BK049', 'PSG052', 'TKT-AUTO-052', '2026-07-02 11:40:00', 'Economy', '23A'),
('TK053', 'BK050', 'PSG053', 'TKT-AUTO-053', '2026-07-02 13:12:00', 'Economy', '24A'),
('TK054', 'BK051', 'PSG054', 'TKT-AUTO-054', '2026-07-02 14:55:00', 'Economy', '25A'),
('TK055', 'BK052', 'PSG055', 'TKT-AUTO-055', '2026-07-02 16:20:00', 'Economy', '26A');

-- BATCH 7: 5 People on 2026-07-05
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK056', 'BK053', 'PSG056', 'TKT-AUTO-056', '2026-07-05 08:14:00', 'Economy', '27A'),
('TK057', 'BK054', 'PSG057', 'TKT-AUTO-057', '2026-07-05 10:45:00', 'Economy', '28A'),
('TK058', 'BK055', 'PSG058', 'TKT-AUTO-058', '2026-07-05 13:22:00', 'Economy', '29A'),
('TK059', 'BK056', 'PSG059', 'TKT-AUTO-059', '2026-07-05 15:50:00', 'Economy', '30A'),
('TK060', 'BK057', 'PSG060', 'TKT-AUTO-060', '2026-07-05 17:10:00', 'Economy', '01E');

-- BATCH 8: 5 People on 2026-07-08
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK061', 'BK058', 'PSG061', 'TKT-AUTO-061', '2026-07-08 09:30:00', 'Economy', '02E'),
('TK062', 'BK059', 'PSG062', 'TKT-AUTO-062', '2026-07-08 11:12:00', 'Economy', '03E'),
('TK063', 'BK060', 'PSG063', 'TKT-AUTO-063', '2026-07-08 14:05:00', 'Economy', '04E'),
('TK064', 'BK061', 'PSG064', 'TKT-AUTO-064', '2026-07-08 15:45:00', 'Economy', '05E'),
('TK065', 'BK062', 'PSG065', 'TKT-AUTO-065', '2026-07-08 17:24:00', 'Economy', '06E');

-- BATCH 9: 5 People on 2026-07-10
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK066', 'BK063', 'PSG066', 'TKT-AUTO-066', '2026-07-10 10:11:00', 'Economy', '07E'),
('TK067', 'BK064', 'PSG067', 'TKT-AUTO-067', '2026-07-10 11:55:00', 'Economy', '08E'),
('TK068', 'BK065', 'PSG068', 'TKT-AUTO-068', '2026-07-10 13:40:00', 'Economy', '09E'),
('TK069', 'BK066', 'PSG069', 'TKT-AUTO-069', '2026-07-10 15:22:00', 'Economy', '10E'),
('TK070', 'BK067', 'PSG070', 'TKT-AUTO-070', '2026-07-10 16:50:00', 'Economy', '11E');

-- BATCH 10: 5 People on 2026-07-12
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK071', 'BK068', 'PSG071', 'TKT-AUTO-071', '2026-07-12 09:15:00', 'Economy', '12E'),
('TK072', 'BK069', 'PSG072', 'TKT-AUTO-072', '2026-07-12 11:32:00', 'Economy', '13E'),
('TK073', 'BK070', 'PSG073', 'TKT-AUTO-073', '2026-07-12 14:05:00', 'Economy', '14E'),
('TK074', 'BK074', 'PSG074', 'TKT-AUTO-074', '2026-07-12 15:55:00', 'Economy', '15E'),
('TK075', 'BK075', 'PSG075', 'TKT-AUTO-075', '2026-07-12 17:10:00', 'Economy', '16E');

-- BATCH 11: 5 People on 2026-07-14
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK076', 'BK076', 'PSG076', 'TKT-AUTO-076', '2026-07-14 08:30:00', 'Economy', '17E'),
('TK077', 'BK077', 'PSG077', 'TKT-AUTO-077', '2026-07-14 10:15:00', 'Economy', '18E'),
('TK078', 'BK078', 'PSG078', 'TKT-AUTO-078', '2026-07-14 12:42:00', 'Economy', '19E'),
('TK079', 'BK079', 'PSG079', 'TKT-AUTO-079', '2026-07-14 14:50:00', 'Economy', '20E'),
('TK080', 'BK080', 'PSG080', 'TKT-AUTO-080', '2026-07-14 16:11:00', 'Economy', '21E');

-- BATCH 12: 5 People on 2026-07-15
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK081', 'BK081', 'PSG081', 'TKT-AUTO-081', '2026-07-15 09:05:00', 'Economy', '22E'),
('TK082', 'BK082', 'PSG082', 'TKT-AUTO-082', '2026-07-15 11:22:00', 'Economy', '23E'),
('TK083', 'BK083', 'PSG083', 'TKT-AUTO-083', '2026-07-15 13:40:00', 'Economy', '24E'),
('TK084', 'BK084', 'PSG084', 'TKT-AUTO-084', '2026-07-15 15:18:00', 'Economy', '25E'),
('TK085', 'BK085', 'PSG085', 'TKT-AUTO-085', '2026-07-15 17:55:00', 'Economy', '26E');

-- BATCH 13: 5 People on 2026-06-01
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK086', 'BK086', 'PSG086', 'TKT-AUTO-086', '2026-06-01 09:12:00', 'Economy', '27E'),
('TK087', 'BK087', 'PSG087', 'TKT-AUTO-087', '2026-06-01 11:30:00', 'Economy', '28E'),
('TK088', 'BK088', 'PSG088', 'TKT-AUTO-088', '2026-06-01 13:55:00', 'Economy', '29E'),
('TK089', 'BK089', 'PSG089', 'TKT-AUTO-089', '2026-06-01 15:18:00', 'Economy', '30E'),
('TK091', 'BK001', 'PSG091', 'TKT-AUTO-091', '2026-06-01 10:10:00', 'Economy', '02F');

-- BATCH 14: 6 People on 2026-06-02
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK090', 'BK090', 'PSG090', 'TKT-AUTO-090', '2026-06-02 08:44:00', 'Economy', '01F'),
('TK092', 'BK003', 'PSG092', 'TKT-AUTO-092', '2026-06-02 09:20:00', 'Economy', '03F'),
('TK093', 'BK004', 'PSG093', 'TKT-AUTO-093', '2026-06-02 11:10:00', 'Economy', '04F'),
('TK094', 'BK006', 'PSG094', 'TKT-AUTO-094', '2026-06-02 13:50:00', 'Economy', '05F'),
('TK095', 'BK007', 'PSG095', 'TKT-AUTO-095', '2026-06-02 15:35:00', 'Economy', '06F'),
('TK096', 'BK010', 'PSG096', 'TKT-AUTO-096', '2026-06-02 17:22:00', 'Economy', '07F');

-- BATCH 15: 4 People on 2026-06-05
INSERT INTO ticket (Ticket_ID, Booking_ID, Passenger_ID, Ticket_No, Date_Time, Class, Seat_No) VALUES 
('TK097', 'BK012', 'PSG097', 'TKT-AUTO-097', '2026-06-05 09:15:00', 'Economy', '08F'),
('TK098', 'BK014', 'PSG098', 'TKT-AUTO-098', '2026-06-05 11:40:00', 'Economy', '09F'),
('TK099', 'BK016', 'PSG099', 'TKT-AUTO-099', '2026-06-05 14:18:00', 'Economy', '10F'),
('TK100', 'BK018', 'PSG100', 'TKT-AUTO-100', '2026-06-05 16:55:00', 'Economy', '11F');
