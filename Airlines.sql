create database Airline;

use Airline;

drop table if exists Flights;

CREATE TABLE Flights (
  Flight_ID int PRIMARY KEY NOT NULL,
  Departure_Airport VARCHAR(10),
  Arrival_Airport VARCHAR(10),
  Departure_Time DATETIME,
  Arrival_Time  DATETIME,
  Flight_Date DATE
);


INSERT INTO Flights (Flight_ID, Departure_Airport, Arrival_Airport, Departure_Time, Arrival_Time, Flight_Date) VALUES 
(1001, 'JFK', 'LAX', '2025-02-01 08:00:00', '2025-02-01 11:00:00', '2025-02-01'),
(1002, 'SFO', 'ORD','2025-02-01 09:00:00', '2025-02-01 15:00:00','2025-02-01'),
(1003, 'LAX', 'ATL','2025-02-02 10:00:00','2025-02-02 16:30:00','2025-02-02'),
(1004, 'ORD', 'MIA', '2025-02-02 07:30:00','2025-02-02 10:45:00','2025-02-02'),
(1005, 'ATL', 'ORD', '2025-02-03 06:30:00','2025-02-03 08:45:00','2025-02-03'),
(1006, 'SFO', 'MIA','2025-02-03 09:45:00','2025-02-03 18:00:00','2025-02-03'),
(1007, 'JFK', 'ORD','2025-02-04 07:00:00','2025-02-04 09:30:00','2025-02-04'),
(1008, 'LAX', 'SFO', '2025-02-04 11:15:00','2025-02-04 12:45:00','2025-02-04'),
(1009, 'MIA', 'LAX','2025-02-05 05:00:00','2025-02-05 08:30:00','2025-02-05'),
(1010, 'ORD', 'SFO', '2025-02-05 10:00:00','2025-02-05 12:30:00','2025-02-05'),
(1011, 'ATL', 'JFK', '2025-02-06 06:00:00','2025-02-06 08:30:00','2025-02-06'),
(1012, 'SFO', 'LAX', '2025-02-06 08:30:00','2025-02-06 10:00:00','2025-02-06'),
(1013, 'ORD', 'ATL', '2025-02-07 07:00:00','2025-02-07 09:15:00','2025-02-07'),
(1014, 'MIA', 'ORD', '2025-02-07 12:00:00','2025-02-07 14:30:00','2025-02-07'),
(1015, 'LAX', 'ORD', '2025-02-08 06:00:00','2025-02-08 13:30:00','2025-02-08');


select * from Flights;

drop table if exists Passengers;

CREATE TABLE Passengers (
    Passenger_ID int PRIMARY KEY,
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    Date_of_Birth DATE,
    Contact_Details VARCHAR(15),
    Email VARCHAR(40)
);
INSERT INTO Passengers (Passenger_ID,First_Name,Last_Name,Date_of_Birth,Contact_Details,Email) VALUES 
(1, 'John', 'Doe', '1985-05-15', 1234567890, 'john.doe@gmail.com'),
(2, 'Jane', 'Smith', '1990-07-22', 3987654810, 'jane.smith@gmail.com'),
(3, 'Michael', 'Johnson', '1982-12-30', 5552345678, 'michael.johnson@gmail.com'),
(4, 'Emily', 'Davis', '1995-03-10', 6781234567, 'emily.davis@gmail.com'),
(5, 'Sarah', 'Williams','1992-08-14', 7773456789, 'sarah.williams@gmail.com'),
(6, 'David', 'Brown', '1987-02-28', 4449876543, 'david.brown@gmail.com'),
(7, 'Olivia', 'Taylor', '1993-04-25', 3338765432, 'olivia.taylor@gmail.com'),
(8, 'Daniel', 'Martinez','1988-06-19', 5555432109, 'sophia.rodriguez@gmail.com'),
(9, 'Flora', 'Trump', '1979-03-27', 1480227109, 'flora.trump@gmail.com'),
(10, 'James', 'Wilson', '1990-06-17', 6664321098, 'james.wilson@gmail.com'),
(11, 'Charlotte', 'Evans','1989-03-12', 7773210987, 'charlotte.evans@gmail.com'),
(12, 'Benjamin', 'Thomas','1984-09-02', 8882109876, 'benjamin.thomas@gmail.com'),
(13, 'Amelia', 'Clark','1994-01-22', 9991098765, 'amelia.clark@gmail.com'),
(14, 'Ethan', 'Martinez','1992-08-05', 1012345678, 'ethan.martinez@gmail.com'),
(15, 'Mia', 'Taylor', '1996-11-15', 2023456789, 'mia.taylor@gmail.com');

select * from Passengers;

drop table if exists  Reservations;

CREATE TABLE Reservations (
  Reservation_ID VARCHAR(10) PRIMARY KEY,
  Passenger_ID int,
  Flight_ID int,
  Booking_Date DATE,
  Seat_Selection VARCHAR(10),
  CONSTRAINT FK_Passenger_ID FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID),
  CONSTRAINT FK_Flight_ID FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID)
);
INSERT INTO Reservations VALUES ('AA01', 1, 1001, '2025-01-15', 'A1'),
('AA02', 2, 1002,'2025-01-16', 'B2'),
('AA03', 3, 1001,'2025-01-17', 'C3'),
('AA04', 4, 1004,'2025-01-18','D4'),
('AA05', 5, 1010,'2025-01-19', 'E5'),
('AA06', 6, 1001, '2025-01-20', 'F6'),
('AA07', 7, 1003, '2025-01-21', 'G7'),
('AA08', 8, 1010, '2025-01-22', 'H8'),
('AA09', 9, 1002, '2025-01-23', 'I9'),
('AA10', 10, 1003,'2025-01-24', 'J10'),
('AA11', 11, 1001,'2025-01-25', 'K11'),
('AA12', 12, 1012,'2025-01-26', 'L12'),
('AA13', 13, 1015,'2025-01-27', 'M13'),
('AA14', 14, 1003,'2025-01-28', 'N14'),
('AA15', 15, 1008,'2025-01-29', 'O15');

select * from Reservations;


drop table if exists  Tickets;

CREATE TABLE Tickets (
  Ticket_ID int PRIMARY KEY,
  Reservation_ID VARCHAR(10),
  Ticket_Number VARCHAR(20),
  Ticket_Price int,
  CONSTRAINT FK_Reservation_ID FOREIGN KEY (Reservation_ID) REFERENCES Reservations(Reservation_ID)
);

INSERT INTO Tickets VALUES 
(1, 'AA01', 'TKT123456', 2500),
(2, 'AA02', 'TKT123457', 3000),
(3, 'AA03', 'TKT123458', 1500),
(4, 'AA04', 'TKT123459', 2000),
(5, 'AA05', 'TKT123460', 3500),
(6, 'AA06', 'TKT123461', 2800),
(7, 'AA07', 'TKT123462', 4000),
(8, 'AA08', 'TKT123463', 2200),
(9, 'AA09', 'TKT123464', 1800),
(10, 'AA10', 'TKT123465', 3200),
(11, 'AA11', 'TKT123466', 2500),
(12, 'AA12', 'TKT123467', 2700),
(13, 'AA13', 'TKT123468', 3100),
(14, 'AA14', 'TKT123469', 2300),
(15, 'AA15', 'TKT123470', 2700);

select * from Tickets;

drop table if exists Payments;

CREATE TABLE Payments (
  Payment_ID int PRIMARY KEY,
  Reservation_ID VARCHAR(10),
  Payment_Method VARCHAR(20),
  Payment_Date DATE,
  Payment_Amount int,
  CONSTRAINT FK_Reservation_ID_2 FOREIGN KEY (Reservation_ID) REFERENCES Reservations(Reservation_ID)
);

INSERT INTO Payments (Payment_ID, Reservation_ID, Payment_Method, Payment_Date, Payment_Amount) VALUES 
(1, 'AA01', 'Credit Card','2025-01-15', 2500),
(2, 'AA02', 'PayPal', '2025-01-16', 3000),
(3, 'AA03', 'Debit Card', '2025-01-17', 1500),
(4, 'AA04', 'Credit Card','2025-01-18', 2000),
(5, 'AA05', 'Bank Transfer','2025-01-19', 3500),
(6, 'AA06', 'Credit Card','2025-01-20', 2800),
(7, 'AA07', 'PayPal', '2025-01-21', 4000),
(8, 'AA08', 'Debit Card', '2025-01-22', 2200),
(9, 'AA09', 'Credit Card', '2025-01-23', 1800),
(10, 'AA10', 'Bank Transfer','2025-01-24', 3200),
(11, 'AA11', 'PayPal', '2025-01-25', 2500),
(12, 'AA12', 'Credit Card', '2025-01-26', 2700),
(13, 'AA13', 'Debit Card', '2025-01-27', 3100),
(14, 'AA14', 'Bank Transfer','2025-01-28', 2300),
(15, 'AA15', 'PayPal','2025-01-29', 2700);

---------------------------------------------------------------------------------------------------------------
-- update,alter,drop

UPDATE Passengers
SET Contact_Details = '9876543299'
WHERE Passenger_ID = 3;

ALTER TABLE Passengers
ADD Address_ID VARCHAR(30);

ALTER TABLE Passengers
DROP column Address_ID ;

-------------------------------------------------------------------------------------------------------------
-- Find all flights departing from a specific airport:
SELECT * 
FROM Flights
WHERE Departure_Airport = 'JFK';

-- Find flights between two airports (departure and arrival):
SELECT * 
FROM Flights
WHERE Departure_Airport = 'ORD' AND Arrival_Airport = 'SFO';


-- Find flights for a specific date:
SELECT * 
FROM Flights
WHERE Flight_Date = '02/05/2025'

-- Find passengers who were born after a specific date
SELECT * 
FROM Passengers
WHERE Date_of_Birth > '1987/01/01';

-- Find passengers with a specific Last name
SELECT * 
FROM Passengers
WHERE Last_Name = 'Smith';

-- Find passengers whose First name starts with a specific letter
SELECT * 
FROM Passengers
WHERE First_Name LIKE 'J%';

-- Find reservations for a specific flight
SELECT * 
FROM Reservations
WHERE Flight_ID = 1001;

-- Find reservations made on a specific date
SELECT * 
FROM Reservations
WHERE Booking_Date = '2025/01/19';

-- Find reservations with no seat selection (if null values are allowed)
SELECT * 
FROM Reservations
WHERE Seat_Selection IS NULL;

-- Find tickets with a price greater than a certain amount
SELECT * 
FROM Tickets
WHERE Ticket_Price > 1500;

-- Find payments that are less than a specific amount, sorted by payment date
SELECT * 
FROM Payments
WHERE Payment_Amount < 3000
ORDER BY Payment_Date DESC;

-- Find payments made using a specific payment method
SELECT * 
FROM Payments
WHERE Payment_Method = 'Credit Card';


-- Count the number of flights arriving at each airport
SELECT Arrival_Airport, COUNT(*) AS Number_of_Flights
FROM Flights
GROUP BY Arrival_Airport;

-- Find the total number of passengers
SELECT COUNT(*) AS Total_Passengers
FROM Passengers;

-- Find the total amount paid by each payment method
SELECT Payment_Method, SUM(Payment_Amount) AS Total_Payment_Amount
FROM Payments
GROUP BY Payment_Method;

-- Calculate the total payment amount received  

SELECT SUM(Payment_Amount) AS Total_Payment FROM Payments;

-- Find the total number of reservations made for each flight

SELECT Flight_ID, COUNT(*) AS Number_of_Reservations
FROM Reservations
GROUP BY Flight_ID;
----------------------------------------------------------------------------------------------------------

-- join
-- Flights and Reservations
-- Get the list of reservations with the corresponding flight information.
SELECT R.Reservation_ID, R.Passenger_ID, R.Flight_ID, F.Departure_Airport, 
F.Arrival_Airport, F.Departure_Time, F.Arrival_Time
FROM Reservations R
INNER JOIN Flights F ON R.Flight_ID = F.Flight_ID;

-- Passengers and Reservations
-- Get the list of passengers with their corresponding reservations.
SELECT P.First_Name, P.Contact_Details, R.Reservation_ID, R.Flight_ID, R.Booking_Date
FROM Passengers P
INNER JOIN Reservations R ON P.Passenger_ID = R.Passenger_ID;


-- Reservations and Tickets
-- Get reservation details along with the ticket price.
SELECT R.Reservation_ID, R.Passenger_ID, R.Flight_ID, T.Ticket_ID, T.Ticket_Price
FROM Reservations R
INNER JOIN Tickets T ON R.Reservation_ID = T.Reservation_ID;

-- Flights, Reservations, and Passengers
-- Get the flight details along with the passengers who made the reservation
SELECT F.Flight_ID, F.Departure_Airport, F.Arrival_Airport, P.First_Name, P.Contact_Details
FROM Flights F
INNER JOIN Reservations R ON F.Flight_ID = R.Flight_ID
INNER JOIN Passengers P ON R.Passenger_ID = P.Passenger_ID;


-- Reservations, Tickets, and Payments
-- Get the total amount paid for each reservation.
SELECT R.Reservation_ID, T.Ticket_Price, P.Payment_Amount
FROM Reservations R
INNER JOIN Tickets T ON R.Reservation_ID = T.Reservation_ID
LEFT JOIN Payments P ON R.Reservation_ID = P.Reservation_ID;

-- Flights, Reservations, Passengers, and Payments:
-- Get the list of passengers, their flight details, and the payment amount they made
SELECT P.First_Name, F.Flight_ID, F.Departure_Airport, F.Arrival_Airport, Pay.Payment_Amount
FROM Passengers P
INNER JOIN Reservations R ON P.Passenger_ID = R.Passenger_ID
INNER JOIN Flights F ON R.Flight_ID = F.Flight_ID
LEFT JOIN Payments Pay ON R.Reservation_ID = Pay.Reservation_ID;

-- Reservations and Payments (Showing Pending Payments):
-- Get the list of reservations that haven't been paid yet (where no payment is recorded)
SELECT R.Reservation_ID, R.Passenger_ID, R.Flight_ID
FROM Reservations R
LEFT JOIN Payments P ON R.Reservation_ID = P.Reservation_ID
WHERE P.Payment_ID IS NULL;

-- Flights and Tickets (Get all tickets for each flight):
-- Get all tickets for a specific flight, including ticket prices
SELECT F.Flight_ID, T.Ticket_ID, T.Ticket_Price
FROM Flights F
INNER JOIN Reservations R ON F.Flight_ID = R.Flight_ID
INNER JOIN Tickets T ON R.Reservation_ID = T.Reservation_ID
WHERE F.Flight_ID = 1001;

-- Payments and Reservations (Get total payments per flight):
-- Get the total payment amount received for each flight.
SELECT F.Flight_ID, SUM(P.Payment_Amount) AS Total_Payment
FROM Payments P
INNER JOIN Reservations R ON P.Reservation_ID = R.Reservation_ID
INNER JOIN Flights F ON R.Flight_ID = F.Flight_ID
GROUP BY F.Flight_ID;

-- list the passenger details along with their flight details and payment information.
SELECT p.First_Name AS Passenger_Name,f.Departure_Airport,f.Arrival_Airport,
f.Departure_Time,f.Arrival_Time,pay.Payment_Method,pay.Payment_Amount
FROM Passengers p
JOIN Reservations r ON p.Passenger_ID = r.Passenger_ID
JOIN Flights f ON r.Flight_ID = f.Flight_ID
JOIN Payments pay ON r.Reservation_ID = pay.Reservation_ID;

-------------------------------------------------------------------------------------------------------------
-- View
-- create a view to find tickets for reservations made after a specific date
create or replace view t1 as
SELECT t.*
FROM Tickets t
JOIN Reservations r ON t.Reservation_ID = r.Reservation_ID
WHERE r.Booking_Date > '2025-01-01';

select * from t1;

-- create a view to Find the average number of passengers for each flight.
create or replace view t2 as
SELECT F.Flight_ID, AVG(Passenger_Count) AS Average_Passengers
FROM (
    SELECT Flight_ID, COUNT(*) AS Passenger_Count
    FROM Reservations
    GROUP BY Flight_ID
) P
JOIN Flights F ON P.Flight_ID = F.Flight_ID
GROUP BY F.Flight_ID;

select * from t2;

-------------------------------------------------------------------------------------------------------------
-- subquery
-- Find passengers who have booked a flight on a specific date.
SELECT First_Name, Last_Name
FROM Passengers
WHERE Passenger_ID IN (
  SELECT Passenger_ID
  FROM Reservations
  WHERE Flight_ID IN (
    SELECT Flight_ID
    FROM Flights
    WHERE Flight_Date = '2025-02-05')
);

-- Find all passengers who have made a payment greater than 1500 for their reservation.
SELECT First_Name, Last_Name
FROM Passengers
WHERE Passenger_ID IN (
  SELECT r.Passenger_ID
  FROM Reservations r
  JOIN Payments p ON r.Reservation_ID = p.Reservation_ID
  WHERE p.Payment_Amount > 1500
);


-- Get the total payment amount for a specific reservation.
SELECT Reservation_ID, 
       (SELECT SUM(Payment_Amount) 
        FROM Payments 
        WHERE Reservation_ID = r.Reservation_ID) AS Total_Payment
FROM Reservations r
WHERE r.Reservation_ID = 'AA07';


-- List the flights that have been booked by passengers.
SELECT Flight_ID, Departure_Airport, Arrival_Airport, Flight_Date
FROM Flights
WHERE Flight_ID IN (
  SELECT Flight_ID
  FROM Reservations
);


-- Find the flight that has the highest number of reservations.
SELECT Flight_ID, Departure_Airport, Arrival_Airport, Flight_Date
FROM Flights
WHERE Flight_ID = (
  SELECT Flight_ID
  FROM Reservations
  GROUP BY Flight_ID
  ORDER BY COUNT(Reservation_ID) DESC
  limit 1
);


-- Find the passenger who has reserved the most flights.
SELECT First_Name, Last_Name
FROM Passengers
WHERE Passenger_ID = (
  SELECT Passenger_ID
  FROM Reservations
  GROUP BY Passenger_ID
  ORDER BY COUNT(Reservation_ID) DESC
  limit 1
);


-- Find the price of the most expensive ticket for each reservation.
SELECT Reservation_ID, 
       (SELECT MAX(Ticket_Price) 
        FROM Tickets 
        WHERE Reservation_ID = r.Reservation_ID) AS Max_Ticket_Price
FROM Reservations r;


-- Find passengers who have paid using a particular payment method
SELECT First_Name, Last_Name
FROM Passengers
WHERE Passenger_ID IN (
  SELECT r.Passenger_ID
  FROM Reservations r
  JOIN Payments p ON r.Reservation_ID = p.Reservation_ID
  WHERE p.Payment_Method = 'Credit Card'
);

---------------------------------------------END-----------------------------------------------------------

