CREATE TABLE Flights (
  Flight_ID NUMBER PRIMARY KEY NOT NULL,
  Departure_Airport VARCHAR2(10),
  Arrival_Airport VARCHAR2(10),
  Departure_Time TIMESTAMP,
  Arrival_Time  TIMESTAMP,
  Flight_Date DATE
);

Describe Flights;


INSERT INTO Flights (Flight_ID, Departure_Airport, Arrival_Airport, Departure_Time, Arrival_Time, Flight_Date) VALUES 
(1001, 'JFK', 'LAX', TO_TIMESTAMP('01-02-2025 08:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-02-2025 11:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('01-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1002, 'SFO', 'ORD',TO_TIMESTAMP('01-02-2025 09:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('01-02-2025 15:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('01-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1003, 'LAX', 'ATL',TO_TIMESTAMP('02-02-2025 10:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('02-02-2025 16:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1004, 'ORD', 'MIA', TO_TIMESTAMP('02-02-2025 07:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('02-02-2025 10:45:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('02-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1005, 'ATL', 'ORD', TO_TIMESTAMP('03-02-2025 06:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('03-02-2025 08:45:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('03-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1006, 'SFO', 'MIA', TO_TIMESTAMP('03-02-2025 09:45:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('03-02-2025 18:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('03-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1007, 'JFK', 'ORD', TO_TIMESTAMP('04-02-2025 07:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('04-02-2025 09:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('04-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1008, 'LAX', 'SFO', TO_TIMESTAMP('04-02-2025 11:15:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('04-02-2025 12:45:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('04-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1009, 'MIA', 'LAX', TO_TIMESTAMP('05-02-2025 05:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('05-02-2025 08:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('05-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1010, 'ORD', 'SFO', TO_TIMESTAMP('05-02-2025 10:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('05-02-2025 12:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('05-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1011, 'ATL', 'JFK', TO_TIMESTAMP('06-02-2025 06:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('06-02-2025 08:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('06-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1012, 'SFO', 'LAX', TO_TIMESTAMP('06-02-2025 08:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('06-02-2025 10:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('06-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1013, 'ORD', 'ATL', TO_TIMESTAMP('07-02-2025 07:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('07-02-2025 09:15:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('07-02-2025', 'DD-MM-YYYY'));

INSERT INTO Flights VALUES
(1014, 'MIA', 'ORD', TO_TIMESTAMP('07-02-2025 12:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('07-02-2025 14:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('07-02-2025', 'DD-MM-YYYY'));


INSERT INTO Flights VALUES
(1015, 'LAX', 'ORD', TO_TIMESTAMP('08-02-2025 06:00:00', 'DD-MM-YYYY HH24:MI:SS'), TO_TIMESTAMP('08-02-2025 13:30:00', 'DD-MM-YYYY HH24:MI:SS'), TO_DATE('08-02-2025', 'DD-MM-YYYY'));

select * from Flights;

CREATE TABLE Passengers (
    Passenger_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(20),
    Last_Name VARCHAR2(20),
    Date_of_Birth DATE,
    Contact_Details NUMBER(20),
    Email VARCHAR2(40)
);

INSERT INTO Passengers VALUES (1, 'John', 'Doe', TO_DATE('15-05-1985', 'DD-MM-YYYY'), 1234567890, 'john.doe@gmail.com');
INSERT INTO Passengers VALUES (2, 'Jane', 'Smith', TO_DATE('22-07-1990', 'DD-MM-YYYY'), 9876543210, 'jane.smith@gmail.com');
INSERT INTO Passengers VALUES (3, 'Michael', 'Johnson', TO_DATE('30-12-1982', 'DD-MM-YYYY'), 5552345678, 'michael.johnson@gmail.com');
INSERT INTO Passengers VALUES (4, 'Emily', 'Davis', TO_DATE('10-03-1995', 'DD-MM-YYYY'), 6781234567, 'emily.davis@gmail.com');
INSERT INTO Passengers VALUES (5, 'Sarah', 'Williams', TO_DATE('14-08-1992', 'DD-MM-YYYY'), 7773456789, 'sarah.williams@gmail.com');
INSERT INTO Passengers VALUES (6, 'David', 'Brown', TO_DATE('28-02-1987', 'DD-MM-YYYY'), 4449876543, 'david.brown@gmail.com');
INSERT INTO Passengers VALUES (7, 'Olivia', 'Taylor', TO_DATE('25-04-1993', 'DD-MM-YYYY'), 3338765432, 'olivia.taylor@gmail.com');
INSERT INTO Passengers VALUES (8, 'Daniel', 'Martinez', TO_DATE('19-06-1988', 'DD-MM-YYYY'), 5555432109, 'sophia.rodriguez@gmail.com');
INSERT INTO Passengers VALUES (10, 'James', 'Wilson', TO_DATE('17-06-1990', 'DD-MM-YYYY'), 6664321098, 'james.wilson@gmail.com');
INSERT INTO Passengers VALUES (11, 'Charlotte', 'Evans', TO_DATE('12-03-1989', 'DD-MM-YYYY'), 7773210987, 'charlotte.evans@gmail.com');
INSERT INTO Passengers VALUES (12, 'Benjamin', 'Thomas', TO_DATE('02-09-1984', 'DD-MM-YYYY'), 8882109876, 'benjamin.thomas@gmail.com');
INSERT INTO Passengers VALUES (13, 'Amelia', 'Clark', TO_DATE('22-01-1994', 'DD-MM-YYYY'), 9991098765, 'amelia.clark@gmail.com');
INSERT INTO Passengers VALUES (14, 'Ethan', 'Martinez', TO_DATE('05-08-1992', 'DD-MM-YYYY'), 1012345678, 'ethan.martinez@gmail.com');
INSERT INTO Passengers VALUES (15, 'Mia', 'Taylor', TO_DATE('15-11-1996', 'DD-MM-YYYY'), 2023456789, 'mia.taylor@gmail.com');

select * from Passengers;


CREATE TABLE Reservations (
  Reservation_ID VARCHAR2(10) PRIMARY KEY,
  Passenger_ID NUMBER,
  Flight_ID NUMBER,
  Booking_Date DATE,
  Seat_Selection VARCHAR2(10),
  CONSTRAINT FK_Passenger_ID FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID),
  CONSTRAINT FK_Flight_ID FOREIGN KEY (Flight_ID) REFERENCES Flights(Flight_ID)
);


INSERT INTO Reservations VALUES ('AA01', 1, 1001, TO_DATE('15-01-2025', 'DD-MM-YYYY'), 'A1');
INSERT INTO Reservations VALUES ('AA02', 2, 1002, TO_DATE('16-01-2025', 'DD-MM-YYYY'), 'B2');
INSERT INTO Reservations VALUES ('AA03', 3, 1001, TO_DATE('17-01-2025', 'DD-MM-YYYY'), 'C3');
INSERT INTO Reservations VALUES ('AA04', 4, 1004, TO_DATE('18-01-2025', 'DD-MM-YYYY'), 'D4');
INSERT INTO Reservations VALUES ('AA05', 5, 1010, TO_DATE('19-01-2025', 'DD-MM-YYYY'), 'E5');
INSERT INTO Reservations VALUES ('AA06', 6, 1001, TO_DATE('20-01-2025', 'DD-MM-YYYY'), 'F6');
INSERT INTO Reservations VALUES ('AA07', 7, 1003, TO_DATE('21-01-2025', 'DD-MM-YYYY'), 'G7');
INSERT INTO Reservations VALUES ('AA08', 8, 1010, TO_DATE('22-01-2025', 'DD-MM-YYYY'), 'H8');
INSERT INTO Reservations VALUES ('AA09', 9, 1002, TO_DATE('23-01-2025', 'DD-MM-YYYY'), 'I9');
INSERT INTO Reservations VALUES ('AA10', 10, 1003, TO_DATE('24-01-2025', 'DD-MM-YYYY'), 'J10');
INSERT INTO Reservations VALUES ('AA11', 11, 1001, TO_DATE('25-01-2025', 'DD-MM-YYYY'), 'K11');
INSERT INTO Reservations VALUES ('AA12', 12, 1012, TO_DATE('26-01-2025', 'DD-MM-YYYY'), 'L12');
INSERT INTO Reservations VALUES ('AA13', 13, 1015, TO_DATE('27-01-2025', 'DD-MM-YYYY'), 'M13');
INSERT INTO Reservations VALUES ('AA14', 14, 1003, TO_DATE('28-01-2025', 'DD-MM-YYYY'), 'N14');
INSERT INTO Reservations VALUES ('AA15', 15, 1008, TO_DATE('29-01-2025', 'DD-MM-YYYY'), 'O15');

select * from Reservations;

CREATE TABLE Tickets (
  Ticket_ID NUMBER PRIMARY KEY,
  Reservation_ID VARCHAR2(10),
  Ticket_Number VARCHAR2(20),
  Ticket_Price NUMBER,
  CONSTRAINT FK_Reservation_ID FOREIGN KEY (Reservation_ID) REFERENCES Reservations(Reservation_ID)
);

INSERT INTO Tickets VALUES (1, 'AA01', 'TKT123456', 2500);
INSERT INTO Tickets VALUES (2, 'AA02', 'TKT123457', 3000);
INSERT INTO Tickets VALUES (3, 'AA03', 'TKT123458', 1500);
INSERT INTO Tickets VALUES (4, 'AA04', 'TKT123459', 2000);
INSERT INTO Tickets VALUES (5, 'AA05', 'TKT123460', 3500);
INSERT INTO Tickets VALUES (6, 'AA06', 'TKT123461', 2800);
INSERT INTO Tickets VALUES (7, 'AA07', 'TKT123462', 4000);
INSERT INTO Tickets VALUES (8, 'AA08', 'TKT123463', 2200);
INSERT INTO Tickets VALUES (9, 'AA09', 'TKT123464', 1800);
INSERT INTO Tickets VALUES (10, 'AA10', 'TKT123465', 3200);
INSERT INTO Tickets VALUES (11, 'AA11', 'TKT123466', 2500);
INSERT INTO Tickets VALUES (12, 'AA12', 'TKT123467', 2700);
INSERT INTO Tickets VALUES (13, 'AA13', 'TKT123468', 3100);
INSERT INTO Tickets VALUES (14, 'AA14', 'TKT123469', 2300);
INSERT INTO Tickets VALUES (15, 'AA15', 'TKT123470', 2700);


select * from Tickets;

CREATE TABLE Payments (
  Payment_ID NUMBER PRIMARY KEY,
  Reservation_ID VARCHAR2(10),
  Payment_Method VARCHAR2(20),
  Payment_Date DATE,
  Payment_Amount NUMBER,
  CONSTRAINT FK_Reservation_ID_2 FOREIGN KEY (Reservation_ID) REFERENCES Reservations(Reservation_ID)
);

INSERT INTO Payments (Payment_ID, Reservation_ID, Payment_Method, Payment_Date, Payment_Amount) VALUES (1, 'AA01', 'Credit Card', TO_DATE('2025-01-15', 'DD-MM-YYYY'), 2500);
INSERT INTO Payments VALUES (2, 'AA02', 'PayPal', TO_DATE('16-01-2025', 'DD-MM-YYYY'), 3000);
INSERT INTO Payments VALUES (3, 'AA03', 'Debit Card', TO_DATE('17-01-2025', 'DD-MM-YYYY'), 1500);
INSERT INTO Payments VALUES (4, 'AA04', 'Credit Card', TO_DATE('18-01-2025', 'DD-MM-YYYY'), 2000);
INSERT INTO Payments VALUES (5, 'AA05', 'Bank Transfer', TO_DATE('19-01-2025', 'DD-MM-YYYY'), 3500);
INSERT INTO Payments VALUES (6, 'AA06', 'Credit Card', TO_DATE('20-01-2025', 'DD-MM-YYYY'), 2800);
INSERT INTO Payments VALUES (7, 'AA07', 'PayPal', TO_DATE('21-01-2025', 'DD-MM-YYYY'), 4000);
INSERT INTO Payments VALUES (8, 'AA08', 'Debit Card', TO_DATE('22-01-2025', 'DD-MM-YYYY'), 2200);
INSERT INTO Payments VALUES (9, 'AA09', 'Credit Card', TO_DATE('23-01-2025', 'DD-MM-YYYY'), 1800);
INSERT INTO Payments VALUES (10, 'AA10', 'Bank Transfer', TO_DATE('24-01-2025', 'DD-MM-YYYY'), 3200);
INSERT INTO Payments VALUES (11, 'AA11', 'PayPal', TO_DATE('25-01-2025', 'DD-MM-YYYY'), 2500);
INSERT INTO Payments VALUES (12, 'AA12', 'Credit Card', TO_DATE('26-01-2025', 'DD-MM-YYYY'), 2700);
INSERT INTO Payments VALUES (13, 'AA13', 'Debit Card', TO_DATE('27-01-2025', 'DD-MM-YYYY'), 3100);
INSERT INTO Payments VALUES (14, 'AA14', 'Bank Transfer', TO_DATE('28-01-2025', 'DD-MM-YYYY'), 2300);
INSERT INTO Payments VALUES (15, 'AA15', 'PayPal', TO_DATE('29-01-2025', 'DD-MM-YYYY'), 2700);

select * from Payments;


\\\\\


UPDATE Passengers
SET Contact_Details = '9876543299'
WHERE Passenger_ID = 3;

ALTER TABLE Passengers
ADD Address_ID VARCHAR(30);

ALTER TABLE Passengers
DROP column Address_ID ;


\\\\\\\\

Find all flights departing from a specific airport:
SELECT * 
FROM Flights
WHERE Departure_Airport = 'JFK';

Find flights between two airports (departure and arrival):
SELECT * 
FROM Flights
WHERE Departure_Airport = 'ORD' AND Arrival_Airport = 'SFO';


Find flights for a specific date:
SELECT * 
FROM Flights
WHERE Flight_Date = '02/05/2025'

Find passengers who were born after a specific date
SELECT * 
FROM Passengers
WHERE Date_of_Birth > '01/01/1987';

Find passengers with a specific Last name
SELECT * 
FROM Passengers
WHERE Last_Name = 'Smith';

Find passengers whose First name starts with a specific letter
SELECT * 
FROM Passengers
WHERE First_Name LIKE 'J%';

Find reservations for a specific flight
SELECT * 
FROM Reservations
WHERE Flight_ID = 1001;

Find reservations made on a specific date
SELECT * 
FROM Reservations
WHERE Booking_Date = '01/19/2025';

Find reservations with no seat selection (if null values are allowed)
SELECT * 
FROM Reservations
WHERE Seat_Selection IS NULL;

Find tickets with a price greater than a certain amount
SELECT * 
FROM Tickets
WHERE Ticket_Price > 1500;

Find payments that are less than a specific amount, sorted by payment date
SELECT * 
FROM Payments
WHERE Payment_Amount < 3000
ORDER BY Payment_Date DESC;

Find payments made using a specific payment method
SELECT * 
FROM Payments
WHERE Payment_Method = 'Credit Card';




\\\Aggre
Count the number of flights arriving at each airport
SELECT Arrival_Airport, COUNT(*) AS Number_of_Flights
FROM Flights
GROUP BY Arrival_Airport;

Find the total number of passengers
SELECT COUNT(*) AS Total_Passengers
FROM Passengers;

Find the total number of reservations made for each flight
SELECT Flight_ID, COUNT(*) AS Number_of_Reservations
FROM Reservations
GROUP BY Flight_ID;

Calculate the total payment amount received 
SELECT SUM(Payment_Amount) AS Total_Payment
FROM Payments;

Find the total amount paid by each payment method
SELECT Payment_Method, SUM(Payment_Amount) AS Total_Payment_Amount
FROM Payments
GROUP BY Payment_Method;


\\\\join
Flights and Reservations
Get the list of reservations with the corresponding flight information.
SELECT R.Reservation_ID, R.Passenger_ID, R.Flight_ID, F.Departure_Airport, F.Arrival_Airport, F.Departure_Time, F.Arrival_Time
FROM Reservations R
INNER JOIN Flights F ON R.Flight_ID = F.Flight_ID;

Passengers and Reservations
Get the list of passengers with their corresponding reservations.
SELECT P.First_Name, P.Contact_Details, R.Reservation_ID, R.Flight_ID, R.Booking_Date
FROM Passengers P
INNER JOIN Reservations R ON P.Passenger_ID = R.Passenger_ID;


Reservations and Tickets
Get reservation details along with the ticket price.
SELECT R.Reservation_ID, R.Passenger_ID, R.Flight_ID, T.Ticket_ID, T.Ticket_Price
FROM Reservations R
INNER JOIN Tickets T ON R.Reservation_ID = T.Reservation_ID;


Reservations and Payments (Showing Pending Payments):
Get the list of reservations that havenot been paid yet (where no payment is recorded)
SELECT R.Reservation_ID, R.Passenger_ID, R.Flight_ID
FROM Reservations R
LEFT JOIN Payments P ON R.Reservation_ID = P.Reservation_ID
WHERE P.Payment_ID IS NULL;


Find tickets for reservations made after a specific date
SELECT t.*
FROM Tickets t
JOIN Reservations r ON t.Reservation_ID = r.Reservation_ID
WHERE r.Booking_Date > TO_DATE('01-01-2025', 'DD-MM-YYYY');


\\\\\\\\subquery

Find passengers who have booked a flight on a specific date.
SELECT First_Name, Last_Name
FROM Passengers
WHERE Passenger_ID IN (
  SELECT Passenger_ID
  FROM Reservations
  WHERE Flight_ID IN (
    SELECT Flight_ID
    FROM Flights
    WHERE Flight_Date = TO_DATE('2025-02-05', 'YYYY-MM-DD')
  )
);

Find all passengers who have made a payment greater than 1500 for their reservation.
SELECT First_Name, Last_Name
FROM Passengers
WHERE Passenger_ID IN (
  SELECT r.Passenger_ID
  FROM Reservations r
  JOIN Payments p ON r.Reservation_ID = p.Reservation_ID
  WHERE p.Payment_Amount > 1500
);


Get the total payment amount for a specific reservation.
SELECT Reservation_ID, 
       (SELECT SUM(Payment_Amount) 
        FROM Payments 
        WHERE Reservation_ID = r.Reservation_ID) AS Total_Payment
FROM Reservations r
WHERE r.Reservation_ID = 'AA07';


List the flights that have been booked by passengers.
SELECT Flight_ID, Departure_Airport, Arrival_Airport, Flight_Date
FROM Flights
WHERE Flight_ID IN (
  SELECT Flight_ID
  FROM Reservations
);


Find the price of the most expensive ticket for each reservation.
SELECT Reservation_ID, 
       (SELECT MAX(Ticket_Price) 
        FROM Tickets 
        WHERE Reservation_ID = r.Reservation_ID) AS Max_Ticket_Price
FROM Reservations r;
