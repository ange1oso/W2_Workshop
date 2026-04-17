USE lana_dog_walking;

-- Clients
INSERT INTO Clients (name, phone_number, location, age) VALUES
('Ceyhun Ugur', '8478271872', 'Chicago IL', 27),
('Ahmet Yilmaz', '3125551234', 'Chicago IL', 34),
('Ayse Demir', '7735555678', 'Chicago IL', 29),
('Mehmet Kaya', '2245558899', 'Evanston IL', 41),
('Zeynep Arslan', '8475557788', 'Skokie IL', 31),
('John Smith', '3125559999', 'Chicago IL', 45),
('Emily Johnson', '7735551111', 'Chicago IL', 26),
('Michael Brown', '8475552222', 'Niles IL', 38),
('Sarah Davis', '3125553333', 'Chicago IL', 33),
('David Wilson', '7735554444', 'Chicago IL', 50);

-- Dogs
INSERT INTO Dogs (client_id, dog_name, dog_breed, age_of_dog) VALUES
(1, 'Bella', 'Golden Retriever', 2),
(2, 'Max', 'Labrador', 3),
(3, 'Luna', 'Husky', 1),
(4, 'Charlie', 'Bulldog', 4),
(5, 'Rocky', 'German Shepherd', 5),
(6, 'Milo', 'Poodle', 2),
(7, 'Daisy', 'Beagle', 3),
(8, 'Bailey', 'Rottweiler', 4),
(9, 'Lola', 'Shih Tzu', 1),
(10, 'Coco', 'Chihuahua', 2);

-- Services
INSERT INTO Services (service_date, service_time, duration_of_service, cost_per_service) VALUES
('2026-03-12', '12:30:00', 45, 75.00),
('2026-03-13', '10:00:00', 30, 50.00),
('2026-03-14', '15:00:00', 60, 90.00),
('2026-03-15', '09:00:00', 30, 50.00),
('2026-03-16', '18:00:00', 45, 75.00),
('2026-03-17', '11:30:00', 30, 50.00),
('2026-03-18', '14:00:00', 60, 90.00),
('2026-03-19', '16:00:00', 45, 75.00),
('2026-03-20', '08:30:00', 30, 50.00),
('2026-03-21', '17:30:00', 60, 90.00);

-- Service_Dogs
INSERT INTO Service_Dogs (service_id, dog_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

SELECT * FROM Clients;
SELECT * FROM Dogs;
SELECT * FROM Services;
SELECT * FROM Service_Dogs;