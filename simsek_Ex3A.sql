CREATE TABLE Clients (
    ClientID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    Location VARCHAR(100)
);
CREATE TABLE Dogs (
    DogID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    DogName VARCHAR(50),
    Breed VARCHAR(50),
    Age INT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ClientID INT,
    PaymentMethod VARCHAR(50),
    PaymentDateTime DATETIME,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);
CREATE TABLE Services (
    ServiceID INT PRIMARY KEY AUTO_INCREMENT,
    DogID INT,
    DateTime DATETIME,
    Duration INT,
    Cost DECIMAL(6,2),
    PaymentID INT,
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID),
    FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
);
CREATE TABLE Service_Payment (
    ServiceID INT,
    PaymentID INT,
    PRIMARY KEY (ServiceID, PaymentID),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (PaymentID) REFERENCES Payments(PaymentID)
);