DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- Creating Tables using AI
CREATE TABLE client (
    client_id     INT            NOT NULL AUTO_INCREMENT,
    name          VARCHAR(100)   NOT NULL,
    phone_number  VARCHAR(20)    NOT NULL,
    location      VARCHAR(255)   NOT NULL,
    date_of_birth DATE           NOT NULL,          -- use DOB, calculate age at query time
    PRIMARY KEY (client_id)
);
-- Client Table Created
CREATE TABLE dog (
    dog_id        INT            NOT NULL AUTO_INCREMENT,
    client_id     INT            NOT NULL,
    dog_name      VARCHAR(100)   NOT NULL,
    breed         VARCHAR(100),
    date_of_birth DATE,                             -- same reason as client
    PRIMARY KEY (dog_id),
    CONSTRAINT fk_dog_client
        FOREIGN KEY (client_id)
        REFERENCES client (client_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- Dog Table Created
CREATE TABLE client_service (
    service_id        INT             NOT NULL AUTO_INCREMENT,
    client_id         INT             NOT NULL,
    time_of_service   DATETIME        NOT NULL,
    duration_mins     INT             NOT NULL CHECK (duration_mins > 0),
    cost              DECIMAL(8, 2)   NOT NULL CHECK (cost >= 0),
    PRIMARY KEY (service_id),
    CONSTRAINT fk_cs_client
        FOREIGN KEY (client_id)
        REFERENCES client (client_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
-- Client Service Table Created
