DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Clients (
    client_id INT PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(20),
    location VARCHAR(100),
    age INT
);

CREATE TABLE Dogs (
    dog_id INT PRIMARY KEY,
    client_id INT,
    dog_name VARCHAR(100),
    dog_breed VARCHAR(100),
    age_of_dog INT,
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);

CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    service_date DATE,
    service_time TIME,
    duration_of_service INT,
    cost_per_service DECIMAL(10,2)
);

CREATE TABLE Service_Dogs (
    service_id INT,
    dog_id INT,
    PRIMARY KEY (service_id, dog_id),
    FOREIGN KEY (service_id) REFERENCES Services(service_id),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
);