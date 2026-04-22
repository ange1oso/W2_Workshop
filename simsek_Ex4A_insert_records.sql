CREATE TABLE Clients (     ClientID INT PRIMARY KEY AUTO_INCREMENT,     Name VARCHAR(100) NOT NULL,     PhoneNumber VARCHAR(20),     Location VARCHAR(100) )

CREATE TABLE Dogs (     DogID INT PRIMARY KEY AUTO_INCREMENT,     ClientID INT,     DogName VARCHAR(50),     Breed VARCHAR(50),     Age INT,     FOREIGN KEY (ClientID) REFERENCES Clients(ClientID) )

CREATE TABLE Payments (     PaymentID INT PRIMARY KEY AUTO_INCREMENT,     ClientID INT,     PaymentMethod VARCHAR(50),     PaymentDateTime DATETIME,     FOREIGN KEY (ClientID) REFERENCES Clients(ClientID) )

CREATE TABLE Services (     ServiceID INT PRIMARY KEY AUTO_INCREMENT,     DogID INT,     DateTime DATETIME,     Duration INT,     Cost DECIMAL(6,2),     PaymentID INT,     FOREIGN KEY (DogID) REFERENCES Dogs(DogID),     FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID) )

CREATE TABLE Service_Payment (     ServiceID INT,     PaymentID INT,     PRIMARY KEY (ServiceID, PaymentID),     FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),     FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID) )

USE lana_dog_walking

INSERT INTO Clients (ClientID, Name, PhoneNumber, Location) VALUES (2, 'Sarah Smith', '773-555-5678', 'Chicago'), (3, 'Michael Johnson', '847-555-9012', 'Evanston'), (4, 'Emily Davis', '630-555-3456', 'Naperville'), (5, 'David Wilson', '708-555-7890', 'Oak Park'), (6, 'Jessica Brown', '312-555-2222', 'Chicago'), (7, 'Daniel Garcia', '773-555-3333', 'Cicero'), (8, 'Laura Martinez', '847-555-4444', 'Skokie'), (9, 'James Anderson', '630-555-5555', 'Aurora'), (10, 'Olivia Thomas', '708-555-6666', 'Berwyn'), (11, 'William Taylor', '312-555-7777', 'Chicago')

INSERT INTO Dogs (DogID, ClientID, DogName, Breed, Age) VALUES (2, 2, 'Buddy', 'Golden Retriever', 3), (3, 3, 'Max', 'Labrador', 5), (4, 4, 'Bella', 'Poodle', 2), (5, 5, 'Charlie', 'Beagle', 4), (6, 6, 'Lucy', 'Bulldog', 6), (7, 7, 'Daisy', 'German Shepherd', 3), (8, 8, 'Molly', 'Boxer', 2), (9, 9, 'Bailey', 'Dachshund', 5), (10, 10, 'Rocky', 'Rottweiler', 4), (11, 11, 'Luna', 'Husky', 3)

INSERT INTO Payments (PaymentID, ClientID, PaymentMethod, PaymentDateTime) VALUES (2, 2, 'Credit Card', '2026-04-01 10:00:00'), (3, 3, 'Cash', '2026-04-01 11:00:00'), (4, 4, 'Debit Card', '2026-04-02 09:30:00'), (5, 5, 'Credit Card', '2026-04-02 12:00:00'), (6, 6, 'Cash', '2026-04-03 14:00:00'), (7, 7, 'Credit Card', '2026-04-03 15:30:00'), (8, 8, 'Debit Card', '2026-04-04 10:15:00'), (9, 9, 'Cash', '2026-04-04 13:45:00'), (10, 10, 'Credit Card', '2026-04-05 11:20:00'), (11, 11, 'Debit Card', '2026-04-05 16:00:00')

INSERT INTO Services (ServiceID, DogID, DateTime, Duration, Cost, PaymentID) VALUES (2, 2, '2026-04-01 09:00:00', 30, 20.00, 2), (3, 3, '2026-04-01 10:30:00', 45, 25.00, 3), (4, 4, '2026-04-02 09:00:00', 30, 20.00, 4), (5, 5, '2026-04-02 11:00:00', 60, 30.00, 5), (6, 6, '2026-04-03 13:00:00', 30, 20.00, 6), (7, 7, '2026-04-03 14:30:00', 45, 25.00, 7), (8, 8, '2026-04-04 09:30:00', 30, 20.00, 8), (9, 9, '2026-04-04 12:30:00', 60, 30.00, 9), (10, 10, '2026-04-05 10:00:00', 45, 25.00, 10), (11, 11, '2026-04-05 15:00:00', 30, 20.00, 11)

INSERT INTO Service_Payment (ServiceID, PaymentID) VALUES (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10), (11, 11)

SELECT * FROM Dogs LIMIT 0, 1000

SELECT * FROM Clients LIMIT 0, 1000
