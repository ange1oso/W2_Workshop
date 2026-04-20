DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

-- Create the database
CREATE DATABASE DogWalkingBusiness;
USE DogWalkingBusiness;

-- =========================
-- Client Table
-- =========================
CREATE TABLE Client (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15) NOT NULL,
    Location VARCHAR(100),
    Age INT,
    NumberOfDogs INT
);

-- =========================
-- Dog Table
-- =========================
CREATE TABLE Dog (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    DogName VARCHAR(100) NOT NULL,
    DogBreed VARCHAR(100),
    DogAge INT,
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
);

-- =========================
-- Service Table
-- =========================
CREATE TABLE Service (
    ServiceID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    DogID INT NOT NULL,
    DurationOfService INT,        -- minutes
    TimeOfService TIME,
    CostPerService DECIMAL(8,2),
    FOREIGN KEY (ClientID) REFERENCES Client(ClientID),
    FOREIGN KEY (DogID) REFERENCES Dog(DogID)
);