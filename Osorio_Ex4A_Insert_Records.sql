USE lana_dog_walking;
-- ================================================
-- Dog Walking Business — Sample Data (10 rows each)
-- Run AFTER the CREATE TABLE script
-- ================================================

USE lana_dog_walking;

-- ================================================
-- 1. CLIENT
-- ================================================
INSERT INTO client (client_id, name, phone_number, location, date_of_birth) VALUES
(1,  'Angel',    '6304146577', 'Chicago',        '2001-03-15'),
(2,  'Maria',    '7732094821', 'Naperville',     '1995-07-22'),
(3,  'James',    '6301857743', 'Evanston',       '1988-11-05'),
(4,  'Sofia',    '3124567890', 'Oak Park',       '2000-01-30'),
(5,  'Derek',    '7089234561', 'Schaumburg',     '1992-06-18'),
(6,  'Priya',    '6308741236', 'Aurora',         '1997-09-09'),
(7,  'Lena',     '7733456789', 'Elmhurst',       '1985-04-27'),
(8,  'Carlos',   '3129876543', 'Wicker Park',    '2003-12-01'),
(9,  'Janet',    '6305678901', 'Joliet',         '1979-08-14'),
(10, 'Tomás',    '7082345670', 'Downers Grove',  '1990-02-20');


-- ================================================
-- 2. DOG
-- ================================================
INSERT INTO dog (dog_id, client_id, dog_name, breed, date_of_birth) VALUES
(1,  1,  'Polo',    'Pitbull',           '2022-05-10'),
(2,  1,  'Luna',    'Labrador',          '2021-08-03'),
(3,  2,  'Biscuit', 'Beagle',            '2020-03-19'),
(4,  3,  'Rex',     'German Shepherd',   '2019-11-25'),
(5,  4,  'Daisy',   'Golden Retriever',  '2023-01-07'),
(6,  5,  'Mochi',   'Shih Tzu',          '2022-09-14'),
(7,  6,  'Bruno',   'Rottweiler',        '2018-06-30'),
(8,  7,  'Coco',    'Poodle',            '2021-04-22'),
(9,  8,  'Zeus',    'Doberman',          '2020-12-11'),
(10, 9,  'Bella',   'Chihuahua',         '2023-07-05');


-- ================================================
-- 3. CLIENT_SERVICE
-- ================================================
INSERT INTO client_service (service_id, client_id, time_of_service, duration_mins, cost) VALUES
(1,  1,  '2025-01-10 10:00:00', 30, 25.00),
(2,  2,  '2025-01-11 08:30:00', 45, 35.00),
(3,  3,  '2025-01-12 09:00:00', 60, 45.00),
(4,  4,  '2025-01-13 14:00:00', 30, 25.00),
(5,  1,  '2025-01-14 10:00:00', 45, 35.00),
(6,  5,  '2025-01-15 07:30:00', 60, 45.00),
(7,  6,  '2025-01-16 11:00:00', 30, 25.00),
(8,  7,  '2025-01-17 13:00:00', 45, 35.00),
(9,  8,  '2025-01-18 09:30:00', 60, 45.00),
(10, 9,  '2025-01-19 08:00:00', 30, 25.00);


-- ================================================
-- 4. DOG_SERVICE
-- ================================================
INSERT INTO dog_service (service_id, dog_id) VALUES
(1,  1),   -- service 1  → Polo      (Angel's walk)
(2,  3),   -- service 2  → Biscuit   (Maria)
(3,  4),   -- service 3  → Rex       (James)
(4,  5),   -- service 4  → Daisy     (Sofia)
(5,  1),   -- service 5  → Polo      (Angel, second walk)
(5,  2),   -- service 5  → Luna      (Angel walks both dogs)
(6,  6),   -- service 6  → Mochi     (Derek)
(7,  7),   -- service 7  → Bruno     (Priya)
(8,  8),   -- service 8  → Coco      (Lena)
(9,  9),   -- service 9  → Zeus      (Carlos)
(10, 10);  -- service 10 → Bella     (Janet)
