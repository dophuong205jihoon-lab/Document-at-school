CREATE DATABASE aloe_vera_farm_management;
USE aloe_vera_farm_management;

-- =========================
-- USERS TABLE
-- =========================
CREATE TABLE users (
    user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_username VARCHAR(50) NOT NULL UNIQUE,
    user_password_hash VARCHAR(255) NOT NULL,
    user_email VARCHAR(100) NOT NULL UNIQUE,
    user_full_name VARCHAR(100) NOT NULL,
    user_role ENUM('admin','manager','farmer') NOT NULL DEFAULT 'farmer',
    user_status ENUM('active','locked','inactive') NOT NULL DEFAULT 'active',
    user_failed_login_count TINYINT UNSIGNED NOT NULL DEFAULT 0,
    user_phone VARCHAR(20),
    user_created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    user_last_login DATETIME,

    INDEX idx_user_role (user_role),
    INDEX idx_user_status (user_status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- =========================
INSERT INTO `users` (`user_id`, `user_username`, `user_password_hash`, `user_email`, `user_full_name`, `user_role`, `user_status`, `user_failed_login_count`, `user_phone`, `user_created_at`, `user_last_login`) VALUES
(21, 'admin', '$2y$10$Mo8MSBoWWJ/gqMrjxp.4leg3IJ3UX5dKBNMH.IT72Ix5PMzdl2jm2', 'admin@farm.local', 'System Admin', 'admin', 'active', 0, '0900000001', '2026-05-11 19:34:19', '2026-05-16 16:21:16'),
(22, 'manager', '$2y$10$YygDZzd.hD/NuTpMRIlRv.evY8DoLmHYyRuYL0RHLkKgEDAMxY3hu', 'manager@farm.local', 'Farm Manager', 'manager', 'active', 0, '0900000002', '2026-05-11 19:34:19', '2026-05-16 16:01:16'),
(23, 'farmer', '$2y$10$KfOyBKPqtqYmXGvE.iwORuNfFAdLXIR.AMlHhMC50akqoqm9P8eEu', 'farmer@farm.local', 'Farm Farmer', 'farmer', 'active', 0, '0900000003', '2026-05-11 19:34:19', '2026-05-15 17:48:10'),
(25, 'giangvnuis', '$2y$10$qv0b7RnZVOJs8R.awjutVuShmCEd9vRgmuc9CZzV5JIbM3AoIe/Pm', 'huongiangnguyengenz@gmail.com', 'Hương Giang', 'farmer', 'active', 0, '0867652305', '2026-05-15 16:29:53', '2026-05-15 16:30:00'),
(26, 'admin_system', '$2y$12$hashed_admin01', 'admin@gcfood.vn', 'Nguyễn Minh Quản Trị', 'admin', 'active', 0, '0901234567', '2023-01-01 08:00:00', NULL),
(27, 'manager_hanoi', '$2y$12$hashed_mgr01', 'manager.hn@gcfood.vn', 'Trần Thị Bảo Quản', 'manager', 'active', 0, '0912345678', '2023-01-05 09:00:00', NULL),
(28, 'farmer_nva', '$2y$12$hashed_f01', 'nva@gcfood.vn', 'Nguyễn Văn An', 'farmer', 'active', 0, '0923456789', '2023-01-10 10:00:00', NULL),
(29, 'farmer_ltb', '$2y$12$hashed_f02', 'ltb@gcfood.vn', 'Lê Thị Bình', 'farmer', 'active', 0, '0934567890', '2023-01-12 10:30:00', NULL),
(30, 'farmer_pvc', '$2y$12$hashed_f03', 'pvc@gcfood.vn', 'Phạm Văn Cường', 'farmer', 'active', 0, '0945678901', '2023-01-15 11:00:00', NULL),
(31, 'farmer_ntd', '$2y$12$hashed_f04', 'ntd@gcfood.vn', 'Ngô Thị Dung', 'farmer', 'active', 0, '0956789012', '2023-02-01 08:00:00', NULL),
(32, 'farmer_hve', '$2y$12$hashed_f05', 'hve@gcfood.vn', 'Hoàng Văn Em', 'farmer', 'active', 0, '0967890123', '2023-02-05 09:00:00', NULL),
(33, 'farmer_tvf', '$2y$12$hashed_f06', 'tvf@gcfood.vn', 'Trịnh Văn Phong', 'farmer', 'active', 0, '0978901234', '2023-02-10 10:00:00', NULL),
(34, 'farmer_ntg', '$2y$12$hashed_f07', 'ntg@gcfood.vn', 'Nguyễn Thị Giang', 'farmer', 'active', 0, '0989012345', '2023-02-15 11:00:00', NULL),
(35, 'farmer_lvh', '$2y$12$hashed_f08', 'lvh@gcfood.vn', 'Lâm Văn Hưng', 'farmer', 'active', 0, '0990123456', '2023-03-01 08:00:00', NULL),
(36, 'manager_hcm', '$2y$12$hashed_mgr02', 'manager.hcm@gcfood.vn', 'Đinh Thị Thu Hồng', 'manager', 'active', 0, '0901111222', '2023-03-05 09:00:00', NULL),
(37, 'farmer_bti', '$2y$12$hashed_f09', 'bti@gcfood.vn', 'Bùi Thị Liên', 'farmer', 'active', 0, '0912222333', '2023-03-10 10:00:00', NULL),
(38, 'farmer_cvk', '$2y$12$hashed_f10', 'cvk@gcfood.vn', 'Cao Văn Khoa', 'farmer', 'active', 0, '0923333444', '2023-03-15 11:00:00', NULL),
(39, 'farmer_dtl', '$2y$12$hashed_f11', 'dtl@gcfood.vn', 'Đặng Thị Lan', 'farmer', 'active', 0, '0934444555', '2023-04-01 08:00:00', NULL),
(40, 'farmer_nvm', '$2y$12$hashed_f12', 'nvm@gcfood.vn', 'Nguyễn Văn Minh', 'farmer', 'active', 0, '0945555666', '2023-04-05 09:00:00', NULL),
(41, 'farmer_ttn', '$2y$12$hashed_f13', 'ttn@gcfood.vn', 'Tô Thị Ngọc', 'farmer', 'active', 0, '0956666777', '2023-04-10 10:00:00', NULL),
(42, 'farmer_pdo', '$2y$12$hashed_f14', 'pdo@gcfood.vn', 'Phùng Đức Oanh', 'farmer', 'active', 0, '0967777888', '2023-04-15 11:00:00', NULL),
(43, 'farmer_hvp', '$2y$12$hashed_f15', 'hvp@gcfood.vn', 'Hà Văn Phúc', 'farmer', 'active', 0, '0978888999', '2023-05-01 08:00:00', NULL),
(44, 'farmer_lmq', '$2y$12$hashed_f16', 'lmq@gcfood.vn', 'Lý Minh Quân', 'farmer', 'inactive', 0, '0989999000', '2023-05-05 09:00:00', NULL),
(45, 'farmer_dtr', '$2y$12$hashed_f17', 'dtr@gcfood.vn', 'Dương Thị Rừng', 'farmer', 'active', 0, '0990000111', '2023-05-10 10:00:00', NULL),
(66, 'admin_aloe', '$2y$10$Uyw1U2B7UT9MOx6R6kNm5eEgxFqCBF9FHZoU5c/mEvfa0aEpiwbtu', 'admin@aloefarm.vn', 'Nguyễn Quốc Quản Trị', 'admin', 'active', 0, '0901000001', '2024-01-01 08:00:00', '2026-05-19 10:04:23'),
(67, 'manager_nam', '$2y$10$H239FLogDPSbhnOJsFxiSO4005OzpAukv.Y8B1XN0FYg5l5HFeYry', 'manager.nam@aloefarm.vn', 'Trần Văn Nam', 'manager', 'active', 0, '0912000001', '2024-01-05 08:00:00', NULL),
(68, 'manager_linh', '$2y$10$H239FLogDPSbhnOJsFxiSO4005OzpAukv.Y8B1XN0FYg5l5HFeYry', 'manager.linh@aloefarm.vn', 'Lê Thị Linh', 'manager', 'active', 0, '0912000002', '2024-01-05 09:00:00', NULL),
(69, 'farmer_z01', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z01@aloefarm.vn', 'Nguyễn Văn Bình', 'farmer', 'active', 0, '0923000001', '2024-02-01 08:00:00', '2026-05-16 19:09:03'),
(70, 'farmer_z02', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z02@aloefarm.vn', 'Trần Thị Cẩm', 'farmer', 'active', 0, '0923000002', '2024-02-01 09:00:00', NULL),
(71, 'farmer_z03', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z03@aloefarm.vn', 'Phạm Văn Dũng', 'farmer', 'active', 0, '0923000003', '2024-02-02 08:00:00', NULL),
(72, 'farmer_z04', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z04@aloefarm.vn', 'Lê Thị Emm', 'farmer', 'active', 0, '0923000004', '2024-02-02 09:00:00', NULL),
(73, 'farmer_z05', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z05@aloefarm.vn', 'Hoàng Văn Phúc', 'farmer', 'active', 0, '0923000005', '2024-02-03 08:00:00', NULL),
(74, 'farmer_z06', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z06@aloefarm.vn', 'Ngô Thị Giang', 'farmer', 'active', 0, '0923000006', '2024-02-03 09:00:00', NULL),
(75, 'farmer_z07', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z07@aloefarm.vn', 'Đinh Văn Hải', 'farmer', 'active', 0, '0923000007', '2024-02-04 08:00:00', NULL),
(76, 'farmer_z08', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z08@aloefarm.vn', 'Vũ Thị Huyền', 'farmer', 'active', 0, '0923000008', '2024-02-04 09:00:00', NULL),
(77, 'farmer_z09', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z09@aloefarm.vn', 'Bùi Văn Khánh', 'farmer', 'active', 0, '0923000009', '2024-02-05 08:00:00', NULL),
(78, 'farmer_z10', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z10@aloefarm.vn', 'Dương Thị Lan', 'farmer', 'active', 0, '0923000010', '2024-02-05 09:00:00', NULL),
(79, 'farmer_z01b', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z01b@aloefarm.vn', 'Lý Văn Minh', 'farmer', 'active', 0, '0923000011', '2024-03-01 08:00:00', NULL),
(80, 'farmer_z03b', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z03b@aloefarm.vn', 'Phan Thị Ngọc', 'farmer', 'active', 0, '0923000012', '2024-03-01 09:00:00', NULL),
(81, 'farmer_z05b', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z05b@aloefarm.vn', 'Trịnh Văn Oanh', 'farmer', 'active', 0, '0923000013', '2024-03-02 08:00:00', NULL),
(82, 'farmer_z07b', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z07b@aloefarm.vn', 'Cao Thị Phương', 'farmer', 'active', 0, '0923000014', '2024-03-02 09:00:00', NULL),
(83, 'farmer_z09b', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.z09b@aloefarm.vn', 'Đặng Văn Quân', 'farmer', 'active', 0, '0923000015', '2024-03-03 08:00:00', NULL),
(84, 'farmer_ex01', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.ex01@aloefarm.vn', 'Hà Thị Rừng', 'farmer', 'locked', 0, '0923000016', '2024-04-01 08:00:00', NULL),
(85, 'farmer_ex02', '$2y$10$5lY8Q5edr.A5Z.9xsDjNR.6DaS2HXMLIkHRss3MTFLKIGCyTyWsaC', 'farmer.ex02@aloefarm.vn', 'Kiều Văn Sơn', 'farmer', 'inactive', 0, '0923000017', '2024-04-02 08:00:00', NULL);
-- =========================
-- ZONES TABLE
-- =========================
CREATE TABLE zones (
    zone_id                INT UNSIGNED    AUTO_INCREMENT PRIMARY KEY,
    zone_code              VARCHAR(10)     NOT NULL UNIQUE,
    zone_name              VARCHAR(100)    NOT NULL,
    zone_area_m2           DECIMAL(10,2)   NOT NULL,
    zone_soil_type         ENUM('loamy','sandy_loam','clay_loam') DEFAULT 'sandy_loam',
    zone_row_count         SMALLINT UNSIGNED,
    zone_plants_per_row    SMALLINT UNSIGNED,
    zone_irrigation_type   ENUM('drip','sprinkler') DEFAULT 'drip',
    zone_status            ENUM('active','fallow','harvesting','setup') DEFAULT 'active',
    zone_notes             TEXT,
    zone_created_at        DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    INDEX idx_zone_status (zone_status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ======================
INSERT INTO `zones`(`zone_id`,`zone_code`,`zone_name`,`zone_area_m2`,`zone_soil_type`,`zone_row_count`,`zone_plants_per_row`,`zone_irrigation_type`,`zone_status`,`zone_notes`,`zone_created_at`) VALUES
(2, 'Z01', 'Zone A – Bắc Trang Trại', 5000.00, 'sandy_loam', 50, 40, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(3, 'Z02', 'Zone B – Đông Bắc', 4800.00, 'sandy_loam', 48, 40, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(4, 'Z03', 'Zone C – Đông', 5200.00, 'loamy', 52, 42, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(5, 'Z04', 'Zone D – Đông Nam', 4600.00, 'sandy_loam', 46, 40, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(6, 'Z05', 'Zone E – Nam', 5500.00, 'loamy', 55, 44, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(7, 'Z06', 'Zone F – Tây Nam', 4900.00, 'clay_loam', 49, 40, 'drip', 'harvesting', NULL, '2026-05-16 16:14:36'),
(8, 'Z07', 'Zone G – Tây', 5100.00, 'sandy_loam', 51, 42, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(9, 'Z08', 'Zone H – Tây Bắc', 4700.00, 'loamy', 47, 40, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(10, 'Z09', 'Zone I – Trung Tâm', 6000.00, 'loamy', 60, 50, 'drip', 'active', NULL, '2026-05-16 16:14:36'),
(11, 'Z10', 'Zone J – Nhà Vòm', 2000.00, 'sandy_loam', 20, 25, 'sprinkler', 'setup', NULL, '2026-05-16 16:14:36');
-- =======================
-- USER_ZONE_ASSIGNMENT
-- ======================
CREATE TABLE user_zone_assignment (
    assign_id              INT UNSIGNED    AUTO_INCREMENT PRIMARY KEY,
    assign_user_id         INT UNSIGNED    NOT NULL,
    assign_zone_id         INT UNSIGNED    NOT NULL,
    assign_assigned_by     INT UNSIGNED    NOT NULL,
    assign_assigned_at     DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    assign_is_active       TINYINT(1)      NOT NULL DEFAULT 1,
    INDEX idx_assign_user_zone (assign_user_id, assign_zone_id),
    INDEX idx_assign_active (assign_is_active),
    FOREIGN KEY (assign_user_id)     REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (assign_zone_id)     REFERENCES zones(zone_id) ON DELETE CASCADE,
    FOREIGN KEY (assign_assigned_by) REFERENCES users(user_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `user_zone_assignment` (`assign_id`, `assign_user_id`, `assign_zone_id`, `assign_assigned_by`, `assign_assigned_at`, `assign_is_active`) VALUES
(1, 79, 2, 66, '2026-05-16 16:14:36', 0),
(2, 69, 2, 66, '2026-05-16 16:14:36', 0),
(3, 70, 3, 66, '2026-05-16 16:14:36', 1),
(4, 69, 3, 66, '2026-05-16 16:14:36', 1),
(5, 80, 4, 66, '2026-05-16 16:14:36', 1),
(6, 71, 4, 66, '2026-05-16 16:14:36', 1),
(7, 72, 5, 66, '2026-05-16 16:14:36', 1),
(8, 71, 5, 66, '2026-05-16 16:14:36', 1),
(9, 81, 6, 66, '2026-05-16 16:14:36', 1),
(10, 73, 6, 66, '2026-05-16 16:14:36', 1),
(11, 74, 7, 66, '2026-05-16 16:14:36', 1),
(12, 82, 8, 66, '2026-05-16 16:14:36', 1),
(13, 75, 8, 66, '2026-05-16 16:14:36', 1),
(14, 76, 9, 66, '2026-05-16 16:14:36', 1),
(15, 83, 10, 66, '2026-05-16 16:14:36', 1),
(16, 77, 10, 66, '2026-05-16 16:14:36', 1),
(17, 78, 11, 66, '2026-05-16 16:14:36', 1);
-- =====================
-- GROWING_CYCLES (Chu kỳ trồng gối vụ nha đam)
-- ==================
CREATE TABLE growing_cycles (
    cycle_id                     INT UNSIGNED  AUTO_INCREMENT PRIMARY KEY,
    cycle_zone_id                INT UNSIGNED  NOT NULL,
    cycle_variety                VARCHAR(100)  NOT NULL,
    cycle_planted_date           DATE          NOT NULL,
    cycle_expected_first_harvest DATE,
    cycle_plant_density          INT UNSIGNED,
    cycle_target_yield_kg        DECIMAL(10,2),
    cycle_status                 ENUM('growing','harvesting','ended') NOT NULL DEFAULT 'growing',
    FOREIGN KEY (cycle_zone_id) REFERENCES zones(zone_id) ON DELETE CASCADE,
    INDEX idx_cycle_zone (cycle_zone_id),
    INDEX idx_cycle_status (cycle_status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `growing_cycles` (`cycle_id`, `cycle_zone_id`, `cycle_variety`, `cycle_planted_date`, `cycle_expected_first_harvest`, `cycle_plant_density`, `cycle_target_yield_kg`, `cycle_status`, `cycle_notes`) VALUES(1, 2, 'Aloe Barbadensis Miller', '2024-03-01', '2025-11-01', 4, 18000.00, 'harvesting', NULL),
(2, 3, 'Aloe Barbadensis Miller', '2024-03-15', '2025-11-15', 4, 17280.00, 'harvesting', NULL),
(3, 4, 'Aloe Vera Chinensis', '2024-04-01', '2025-12-01', 4, 18720.00, 'harvesting', NULL),
(4, 5, 'Aloe Barbadensis Miller', '2024-04-15', '2025-12-15', 4, 16560.00, 'growing', NULL),
(5, 6, 'Aloe Barbadensis Miller', '2024-05-01', '2026-01-01', 4, 19800.00, 'growing', NULL),
(6, 7, 'Aloe Vera Chinensis', '2025-06-01', '2026-12-01', 4, 17640.00, 'harvesting', NULL),
(7, 8, 'Aloe Barbadensis Miller', '2024-06-01', '2025-12-01', 4, 18360.00, 'growing', NULL),
(8, 9, 'Aloe Barbadensis Miller', '2024-07-01', '2025-12-15', 4, 16920.00, 'growing', NULL),
(9, 10, 'Aloe Barbadensis Miller', '2024-08-01', '2026-02-01', 4, 21600.00, 'growing', NULL),
(10, 11, 'Aloe Vera Chinensis', '2025-03-01', '2026-12-01', 3, 4500.00, 'growing', NULL);

ALTER TABLE growing_cycles
ADD COLUMN cycle_notes TEXT;

-- =====================
--  SENSORS (Thiết bị cảm biến IoT)
CREATE TABLE sensors (
    sensor_id              INT UNSIGNED    AUTO_INCREMENT PRIMARY KEY,
    sensor_zone_id         INT UNSIGNED    NOT NULL,
    sensor_code            VARCHAR(20)     NOT NULL UNIQUE,
    sensor_type            ENUM('soil_moisture','temperature','humidity','ph','ec') NOT NULL,
    sensor_model           VARCHAR(100),
    sensor_unit            VARCHAR(20),
    sensor_min_threshold   DECIMAL(8,2),
    sensor_max_threshold   DECIMAL(8,2),
    sensor_status          ENUM('active','inactive', 'maintenance','error') NOT NULL DEFAULT 'active',
    sensor_installed_at    DATE,
    FOREIGN KEY (sensor_zone_id) REFERENCES zones(zone_id) ON DELETE CASCADE,
    INDEX idx_sensor_zone (sensor_zone_id),
    INDEX idx_sensor_type (sensor_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `sensors` (`sensor_id`, `sensor_zone_id`, `sensor_code`, `sensor_type`, `sensor_model`, `sensor_unit`, `sensor_min_threshold`, `sensor_max_threshold`, `sensor_status`, `sensor_installed_at`) VALUES
(1, 2, 'Z01-TH-01', 'temperature', 'SHT31-D', '°C', 10.000, 40.000, 'active', '2024-03-01'),
(2, 2, 'Z01-SM-01', 'soil_moisture', 'Capacitive v2.0', '%', 50.000, 85.000, 'active', '2024-03-01'),
(3, 3, 'Z02-TH-01', 'temperature', 'DHT22', '°C', 10.000, 40.000, 'active', '2024-03-15'),
(4, 3, 'Z02-SM-01', 'soil_moisture', 'Capacitive v2.0', '%', 50.000, 85.000, 'active', '2024-03-15'),
(5, 4, 'Z03-TH-01', 'temperature', 'SHT31-D', '°C', 10.000, 40.000, 'active', '2024-04-01'),
(6, 4, 'Z03-SM-01', 'soil_moisture', 'TEROS 11', '%', 50.000, 85.000, 'active', '2024-04-01'),
(7, 5, 'Z04-PH-01', 'ph', 'Atlas Scientific pH', 'pH', 6.000, 8.000, 'active', '2024-04-15'),
(8, 5, 'Z04-SM-01', 'soil_moisture', 'Capacitive v2.0', '%', 50.000, 85.000, 'active', '2024-04-15'),
(9, 6, 'Z05-TH-01', 'temperature', 'SHT40', '°C', 10.000, 40.000, 'active', '2024-05-01'),
(10, 6, 'Z05-SM-01', 'soil_moisture', 'TEROS 11', '%', 50.000, 85.000, 'active', '2024-05-01'),
(11, 7, 'Z06-TH-01', 'temperature', 'SHT31-D', '°C', 10.000, 40.000, 'active', '2025-06-01'),
(12, 7, 'Z06-SM-01', 'soil_moisture', 'Capacitive v2.0', '%', 50.000, 85.000, 'active', '2025-06-01'),
(13, 8, 'Z07-EC-01', 'ec', 'Atlas Scientific EC', 'mS/cm', 0.500, 3.000, 'active', '2024-06-01'),
(14, 8, 'Z07-SM-01', 'soil_moisture', 'TEROS 11', '%', 50.000, 85.000, 'active', '2024-06-01'),
(15, 9, 'Z08-TH-01', 'temperature', 'DHT22', '°C', 10.000, 40.000, 'maintenance', '2024-07-01'),
(16, 9, 'Z08-SM-01', 'soil_moisture', 'Capacitive v2.0', '%', 50.000, 85.000, 'active', '2024-07-01'),
(17, 10, 'Z09-HU-01', 'humidity', 'SHT40', '%', 40.000, 90.000, 'active', '2024-08-01'),
(18, 10, 'Z09-TH-01', 'temperature', 'SHT40', '°C', 10.000, 40.000, 'active', '2024-08-01'),
(19, 10, 'Z09-SM-01', 'soil_moisture', 'TEROS 11', '%', 50.000, 85.000, 'active', '2024-08-01'),
(20, 11, 'Z10-SM-01', 'soil_moisture', 'Capacitive v2.0', '%', 55.000, 80.000, 'active', '2025-03-01');

DROP TABLE sensors; 
-- ==================
-- ENSOR_READINGS (Bản ghi đo mỗi 5 phút – BIGINT PK)
CREATE TABLE sensor_readings (
    reading_id             BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    reading_sensor_id      INT UNSIGNED    NOT NULL,
    reading_value          DECIMAL(8,2)    NOT NULL,
    reading_recorded_at    DATETIME        NOT NULL,
    reading_is_valid       TINYINT(1)      NOT NULL DEFAULT 1,
    FOREIGN KEY (reading_sensor_id) REFERENCES sensors(sensor_id) ON DELETE CASCADE,
    INDEX idx_reading_sensor_time (reading_sensor_id, reading_recorded_at),
    INDEX idx_reading_time (reading_recorded_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `sensor_readings` (`reading_id`, `reading_sensor_id`, `reading_value`, `reading_recorded_at`, `reading_is_valid`) VALUES
(1, 2, 48.2000, '2026-05-16 15:14:36', 1),
(2, 2, 65.3000, '2026-05-16 14:14:36', 1),
(3, 2, 70.8000, '2026-05-16 11:14:36', 1),
(4, 2, 72.5000, '2026-05-16 06:14:36', 1),
(5, 1, 36.8000, '2026-05-16 14:14:36', 1),
(6, 1, 32.1000, '2026-05-16 06:14:36', 1),
(7, 4, 61.2000, '2026-05-16 14:14:36', 1),
(8, 4, 68.4000, '2026-05-16 06:14:36', 1),
(9, 3, 35.9000, '2026-05-16 14:14:36', 1),
(10, 3, 29.5000, '2026-05-16 06:14:36', 1),
(11, 6, 74.1000, '2026-05-16 06:14:36', 1),
(12, 5, 31.2000, '2026-05-16 06:14:36', 1),
(13, 7, 6.8000, '2026-05-16 06:14:36', 1),
(14, 8, 58.6000, '2026-05-16 06:14:36', 1),
(15, 10, 71.3000, '2026-05-16 06:14:36', 1),
(16, 9, 33.5000, '2026-05-16 06:14:36', 1),
(17, 12, 88.4000, '2026-05-16 06:14:36', 1),
(18, 11, 29.8000, '2026-05-16 06:14:36', 1),
(19, 13, 1.8500, '2026-05-16 06:14:36', 1),
(20, 14, 66.9000, '2026-05-16 06:14:36', 1);
-- ===============
-- IRRIGATION_SCHEDULES (Lịch tưới nhỏ giọt)
CREATE TABLE irrigation_schedules (
    schedule_id                INT UNSIGNED  AUTO_INCREMENT PRIMARY KEY,
    schedule_zone_id           INT UNSIGNED  NOT NULL,
    schedule_created_by        INT UNSIGNED  NOT NULL,
    schedule_name              VARCHAR(100)  NOT NULL,
    schedule_cron_expr         VARCHAR(100),
    schedule_duration_minutes  SMALLINT UNSIGNED NOT NULL,
    schedule_water_rate_l_m2   DECIMAL(5,2)  NOT NULL,
    schedule_is_auto_adjust    TINYINT(1)    NOT NULL DEFAULT 1,
    schedule_is_active         TINYINT(1)    NOT NULL DEFAULT 1,
    schedule_notes             TEXT,
    FOREIGN KEY (schedule_zone_id)    REFERENCES zones(zone_id) ON DELETE CASCADE,
    FOREIGN KEY (schedule_created_by) REFERENCES users(user_id),
    INDEX idx_schedule_zone (schedule_zone_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `irrigation_schedules` (`schedule_id`, `schedule_zone_id`, `schedule_created_by`, `schedule_name`, `schedule_cron_expr`, `schedule_duration_minutes`, `schedule_water_rate_l_m2`, `schedule_is_auto_adjust`, `schedule_is_active`, `schedule_notes`, `schedule_created_at`) VALUES(1, 2, 67, 'Z01 Tưới bổ sung khẩn', '0 9 * * *', 15, 0.40, 0, 0, NULL, '2026-05-16 16:14:36'),
(2, 2, 67, 'Z01 Tưới chiều dự phòng', '0 17 * * 2,5', 15, 0.35, 1, 0, NULL, '2026-05-16 16:14:36'),
(3, 2, 67, 'Z01 Tưới sáng mùa khô', '0 6 * * *', 25, 0.55, 1, 1, NULL, '2026-05-16 16:14:36'),
(4, 3, 67, 'Z02 Tưới bổ sung', '0 16 * * 3', 15, 0.35, 1, 0, NULL, '2026-05-16 16:14:36'),
(5, 3, 67, 'Z02 Tưới sáng', '0 6 * * *', 25, 0.56, 1, 1, NULL, '2026-05-16 16:14:36'),
(6, 4, 67, 'Z03 Tưới chiều', '0 16 * * 2,4', 15, 0.35, 1, 0, NULL, '2026-05-16 16:14:36'),
(7, 4, 67, 'Z03 Tưới sáng', '0 6 * * *', 28, 0.58, 1, 1, NULL, '2026-05-16 16:14:36'),
(8, 5, 67, 'Z04 Tưới chiều thứ 4,6', '0 16 * * 3,5', 15, 0.34, 1, 0, NULL, '2026-05-16 16:14:36'),
(9, 5, 67, 'Z04 Tưới sáng', '0 6 * * *', 24, 0.54, 1, 1, NULL, '2026-05-16 16:14:36'),
(10, 6, 67, 'Z05 Tưới chiều nắng nóng', '0 16 * * 1-5', 20, 0.45, 1, 0, NULL, '2026-05-16 16:14:36'),
(11, 6, 67, 'Z05 Tưới sáng', '0 6 * * *', 30, 0.60, 1, 1, NULL, '2026-05-16 16:14:36'),
(12, 7, 67, 'Z06 Tưới chiều thu hoạch', '0 16 * * 1,3,5', 12, 0.30, 1, 0, NULL, '2026-05-16 16:14:36'),
(13, 7, 67, 'Z06 Tưới thu hoạch', '0 6 * * *', 20, 0.45, 1, 1, NULL, '2026-05-16 16:14:36'),
(14, 8, 67, 'Z07 Tưới chiều', '0 16 * * 2,5', 15, 0.36, 1, 0, NULL, '2026-05-16 16:14:36'),
(15, 8, 67, 'Z07 Tưới sáng', '0 6 * * *', 27, 0.57, 1, 1, NULL, '2026-05-16 16:14:36'),
(16, 9, 67, 'Z08 Tưới chiều', '0 16 * * 2,4', 15, 0.34, 1, 0, NULL, '2026-05-16 16:14:36'),
(17, 9, 67, 'Z08 Tưới sáng', '0 6 * * *', 24, 0.54, 1, 1, NULL, '2026-05-16 16:14:36'),
(18, 10, 67, 'Z09 Tưới bổ sung', '0 16 * * *', 20, 0.45, 1, 0, NULL, '2026-05-16 16:14:36'),
(19, 10, 67, 'Z09 Tưới sáng', '0 6 * * *', 33, 0.62, 1, 1, NULL, '2026-05-16 16:14:36'),
(20, 11, 67, 'Z10 Nhà vòm – tưới phun', '0 7,15 * * *', 20, 0.50, 0, 1, NULL, '2026-05-16 16:14:36');
ALTER TABLE irrigation_schedules
ADD COLUMN schedule_created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- =============
-- IRRIGATION_LOGS (Lịch sử thực hiện tưới)
CREATE TABLE irrigation_logs (
    irrlog_id                  INT UNSIGNED  AUTO_INCREMENT PRIMARY KEY,
    irrlog_schedule_id         INT UNSIGNED  NOT NULL,
    irrlog_zone_id             INT UNSIGNED  NOT NULL,
    irrlog_started_at          DATETIME      NOT NULL,
    irrlog_ended_at            DATETIME,
    irrlog_actual_duration_min SMALLINT UNSIGNED,
    irrlog_water_used_liters   DECIMAL(10,2),
    irrlog_trigger_type        ENUM('manual','auto','scheduled') NOT NULL,
    irrlog_soil_moisture_before DECIMAL(5,2),
    irrlog_soil_moisture_after  DECIMAL(5,2),
    irrlog_status              ENUM('completed','aborted','in_progress') NOT NULL DEFAULT 'in_progress',
    FOREIGN KEY (irrlog_schedule_id) REFERENCES irrigation_schedules(schedule_id),
    FOREIGN KEY (irrlog_zone_id)     REFERENCES zones(zone_id),
    INDEX idx_irrlog_zone_time (irrlog_zone_id, irrlog_started_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `irrigation_logs` (`irrlog_id`, `irrlog_schedule_id`, `irrlog_zone_id`, `irrlog_started_at`, `irrlog_ended_at`, `irrlog_actual_duration_min`, `irrlog_water_used_liters`, `irrlog_trigger_type`, `irrlog_soil_moisture_before`, `irrlog_soil_moisture_after`, `irrlog_status`) VALUES(2, 5, 3, '2026-05-16 06:00:00', '2026-05-16 06:25:00', 25, 2688.00, 'scheduled', 61.40, 70.80, 'completed'),
(3, 7, 4, '2026-05-16 06:00:00', '2026-05-16 06:28:00', 28, 2912.00, 'scheduled', 65.10, 74.30, 'completed'),
(4, 9, 5, '2026-05-16 06:00:00', '2026-05-16 06:24:00', 24, 2208.00, 'scheduled', 58.60, 68.20, 'completed'),
(5, 11, 6, '2026-05-16 06:00:00', '2026-05-16 06:30:00', 30, 3300.00, 'scheduled', 62.30, 73.50, 'completed'),
(6, 13, 7, '2026-05-16 06:00:00', '2026-05-16 06:20:00', 20, 1960.00, 'scheduled', 70.10, 78.40, 'completed'),
(7, 15, 8, '2026-05-16 06:00:00', '2026-05-16 06:27:00', 27, 2754.00, 'scheduled', 60.50, 71.20, 'completed'),
(8, 17, 9, '2026-05-16 06:00:00', '2026-05-16 06:24:00', 24, 2256.00, 'scheduled', 59.80, 69.50, 'completed'),
(9, 19, 10, '2026-05-16 06:00:00', '2026-05-16 06:33:00', 33, 3720.00, 'scheduled', 61.70, 72.80, 'completed'),
(10, 20, 11, '2026-05-16 07:00:00', '2026-05-16 07:20:00', 20, 1000.00, 'scheduled', 65.40, 74.20, 'completed'),
(11, NULL, 4, '2026-05-14 08:00:00', '2026-05-14 08:15:00', 15, 780.00, 'manual', 52.10, 60.30, 'completed'),
(12, 11, 6, '2026-05-14 06:00:00', '2026-05-14 06:18:00', 18, NULL, 'scheduled', 66.20, NULL, 'aborted');
ALTER TABLE irrigation_logs
MODIFY irrlog_schedule_id INT UNSIGNED NULL;
-- =================
-- ALERTS (Cảnh báo tự động từ cảm biến)
CREATE TABLE alerts (
    alert_id               INT UNSIGNED    AUTO_INCREMENT PRIMARY KEY,
    alert_sensor_id        INT UNSIGNED    NOT NULL,
    alert_zone_id          INT UNSIGNED    NOT NULL,
    alert_type             ENUM('threshold_high','threshold_low','sensor_offline','valve_error') NOT NULL,
    alert_priority         ENUM('info','warning','critical') NOT NULL DEFAULT 'warning',
    alert_message          VARCHAR(500)    NOT NULL,
    alert_triggered_value  DECIMAL(8,2),
    alert_triggered_at     DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    alert_resolved_at      DATETIME,
    alert_is_resolved      TINYINT(1)      NOT NULL DEFAULT 0,
    alert_resolved_by      INT UNSIGNED,
    FOREIGN KEY (alert_sensor_id)   REFERENCES sensors(sensor_id),
    FOREIGN KEY (alert_zone_id)     REFERENCES zones(zone_id),
    FOREIGN KEY (alert_resolved_by) REFERENCES users(user_id),
    INDEX idx_alert_zone_resolved (alert_zone_id, alert_is_resolved),
    INDEX idx_alert_priority (alert_priority)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `alerts` (`alert_id`, `alert_sensor_id`, `alert_zone_id`, `alert_type`, `alert_priority`, `alert_message`, `alert_triggered_value`, `alert_triggered_at`, `alert_resolved_at`, `alert_is_resolved`, `alert_resolved_by`) VALUES
(1, 1, 2, 'threshold_high', 'critical', 'Nhiệt độ Z01 đạt 41.2°C – nguy hiểm!', 41.2000, '2026-05-08 16:14:36', '2026-05-08 16:14:36', 1, 67),
(2, 1, 2, 'threshold_high', 'warning', 'Nhiệt độ Z01 đạt 36.8°C – stress nhiệt nha đam (>35°C)', 36.8000, '2026-05-16 14:14:36', NULL, 0, NULL),
(3, 2, 2, 'threshold_low', 'warning', 'Độ ẩm đất Z01 giảm 65.3%', 65.3000, '2026-05-16 14:14:36', '2026-05-16 15:14:36', 1, 67),
(4, 2, 2, 'threshold_low', 'critical', 'Độ ẩm đất Z01 xuống 48.2% – dưới ngưỡng 50% nha đam cần khẩn cấp tưới!', 48.2000, '2026-05-16 15:14:36', NULL, 0, NULL),
(5, 3, 3, 'threshold_high', 'warning', 'Nhiệt độ Z02 đạt 36.5°C', 36.5000, '2026-05-10 16:14:36', '2026-05-10 16:14:36', 1, 67),
(6, 4, 3, 'threshold_low', 'warning', 'Độ ẩm đất Z02 xuống 61.2% – gần ngưỡng tối thiểu', 61.2000, '2026-05-16 14:14:36', '2026-05-16 15:14:36', 1, 67),
(7, 5, 4, 'threshold_high', 'warning', 'Nhiệt độ Z03 lên 37.2°C', 37.2000, '2026-05-10 16:14:36', '2026-05-10 16:14:36', 1, 67),
(8, 6, 4, 'threshold_low', 'warning', 'Độ ẩm đất Z03 xuống 58.6%', 58.6000, '2026-05-11 16:14:36', '2026-05-11 16:14:36', 1, 67),
(9, 7, 5, 'threshold_low', 'critical', 'pH đất Z04 xuống 5.8 – nha đam cần pH 6.0–8.0', 5.8000, '2026-05-15 16:14:36', '2026-05-15 18:14:36', 1, 67),
(10, 9, 6, 'threshold_high', 'warning', 'Nhiệt độ Z05 đạt 35.9°C – stress nhiệt', 35.9000, '2026-05-16 14:14:36', NULL, 0, NULL),
(11, 10, 6, 'threshold_high', 'info', 'Độ ẩm đất Z05 đạt 84.2%', 84.2000, '2026-05-11 16:14:36', '2026-05-11 16:14:36', 1, 67),
(12, 10, 6, 'threshold_high', 'critical', 'Độ ẩm đất Z05 đạt 92.1% sau mưa lớn', 92.1000, '2026-05-13 16:14:36', '2026-05-13 16:14:36', 1, 67),
(13, 11, 7, 'threshold_high', 'warning', 'Nhiệt độ Z06 cao 38.5°C', 38.5000, '2026-05-12 16:14:36', '2026-05-12 16:14:36', 1, 67),
(14, 12, 7, 'threshold_high', 'info', 'Độ ẩm Z06 đạt 83.1% sau tưới', 83.1000, '2026-05-06 16:14:36', '2026-05-06 16:14:36', 1, 67),
(15, 12, 7, 'threshold_high', 'warning', 'Độ ẩm đất Z06 đạt 88.4% – quá ẩm, nguy cơ thối gốc nha đam!', 88.4000, '2026-05-16 06:14:36', NULL, 0, NULL),
(16, 13, 8, 'threshold_high', 'info', 'EC đất Z07 đạt 1.85 mS/cm – hơi cao', 1.8500, '2026-05-16 06:14:36', '2026-05-16 08:14:36', 1, 67),
(17, 14, 8, 'threshold_low', 'critical', 'Độ ẩm đất Z07 xuống 46.5% – khô nghiêm trọng!', 46.5000, '2026-05-09 16:14:36', '2026-05-09 16:14:36', 1, 67),
(18, 15, 9, 'sensor_offline', 'critical', 'Cảm biến Z08-TH-01 mất kết nối!', NULL, '2026-05-15 23:14:36', NULL, 0, NULL),
(19, 16, 9, 'threshold_low', 'warning', 'Độ ẩm Z08 xuống 54.3%', 54.3000, '2026-05-07 16:14:36', '2026-05-07 16:14:36', 1, 67),
(20, 19, 10, 'threshold_low', 'warning', 'Độ ẩm đất Z09 xuống 61.7%', 61.7000, '2026-05-09 16:14:36', '2026-05-09 16:14:36', 1, 67);
-- =======================
-- AI_PREDICTIONS (Kết quả phân tích AI)
CREATE TABLE ai_predictions (
    predict_id             INT UNSIGNED    AUTO_INCREMENT PRIMARY KEY,
    predict_zone_id        INT UNSIGNED    NOT NULL,
    predict_cycle_id       INT UNSIGNED,
    predict_model_type     ENUM('disease','yield','irrigation_opt') NOT NULL,
    predict_result_label   VARCHAR(100)    NOT NULL,
    predict_confidence     DECIMAL(5,4)    NOT NULL,
    predict_detail_json    TEXT,
    predict_predicted_at   DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (predict_zone_id)  REFERENCES zones(zone_id) ON DELETE CASCADE,
    FOREIGN KEY (predict_cycle_id) REFERENCES growing_cycles(cycle_id),
    INDEX idx_predict_zone_type (predict_zone_id, predict_model_type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `ai_predictions` (`predict_id`, `predict_zone_id`, `predict_cycle_id`, `predict_model_type`, `predict_result_label`, `predict_confidence`, `predict_detail_json`, `predict_predicted_at`) VALUES(1, 2, 1, 'irrigation_opt', 'Lịch tưới hiện tại tối ưu', 0.9321, '{}', '2026-05-11 16:14:36'),
(2, 2, 1, 'yield', 'Dự báo thu hoạch 285 kg lá tháng này', 0.8876, '{\"predicted_kg\":285}', '2026-05-16 15:14:36'),
(3, 2, 1, 'disease', 'Không phát hiện bệnh – lá xanh tốt', 0.9432, '{\"status\":\"healthy\"}', '2026-05-16 14:14:36'),
(4, 3, 2, 'disease', 'Bọ trĩ (Thrips) – cần theo dõi', 0.7654, '{}', '2026-05-12 16:14:36'),
(5, 3, 2, 'yield', 'Dự báo thu hoạch 270 kg lá', 0.8745, '{\"predicted_kg\":270}', '2026-05-16 15:14:36'),
(6, 4, 3, 'yield', 'Dự báo thu hoạch 305 kg', 0.8890, '{\"predicted_kg\":305}', '2026-05-10 16:14:36'),
(7, 4, 3, 'disease', 'Rệp sáp (Mealybug) – mức độ nhẹ', 0.8234, '{\"pest\":\"mealybug\"}', '2026-05-15 16:14:36'),
(8, 5, 4, 'disease', 'Không phát hiện sâu bệnh', 0.9123, '{}', '2026-05-09 16:14:36'),
(9, 5, 4, 'irrigation_opt', 'Giảm tưới 15% trong 3 ngày tới do dự báo mưa', 0.9012, '{\"water_saving_pct\":15}', '2026-05-15 16:14:36'),
(10, 6, 5, 'irrigation_opt', 'Tưới sáng sớm 5:30', 0.8654, '{}', '2026-05-10 16:14:36'),
(11, 6, 5, 'disease', 'Bệnh đốm lá (Leaf Spot) – giai đoạn sớm', 0.8567, '{\"disease\":\"leaf_spot\"}', '2026-05-14 16:14:36'),
(12, 7, 6, 'yield', 'Dự báo thu hoạch 210 kg – giảm do thối gốc', 0.8765, '{\"predicted_kg\":210}', '2026-05-08 16:14:36'),
(13, 7, 6, 'irrigation_opt', 'Giảm tưới do thối gốc', 0.9234, '{}', '2026-05-13 16:14:36'),
(14, 7, 6, 'disease', 'Bệnh thối gốc (Root Rot) – cần xử lý khẩn', 0.9123, '{\"disease\":\"root_rot\"}', '2026-05-16 14:14:36'),
(15, 8, 7, 'disease', 'Bệnh đốm lá nhẹ', 0.7890, '{}', '2026-05-09 16:14:36'),
(16, 8, 7, 'yield', 'Dự báo thu hoạch 290 kg', 0.8901, '{\"predicted_kg\":290}', '2026-05-14 16:14:36'),
(17, 9, 8, 'yield', 'Dự báo thu hoạch 250 kg – thấp do thiếu nước', 0.8432, '{\"predicted_kg\":250}', '2026-05-12 16:14:36'),
(18, 10, 9, 'yield', 'Dự báo thu hoạch 340 kg', 0.9012, '{\"predicted_kg\":340}', '2026-05-08 16:14:36'),
(19, 10, 9, 'irrigation_opt', 'Tối ưu: tưới 2 lần/ngày khi T > 35°C', 0.8765, '{}', '2026-05-13 16:14:36'),
(20, 11, 10, 'disease', 'Không phát hiện bệnh – cây giống khỏe', 0.9567, '{}', '2026-05-11 16:14:36'),
(32, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:16:59'),
(33, 2, 1, 'yield', 'Dự báo 15840 kg lá/Zone', 0.7590, '{\"predicted_yield_kg\":15840,\"target_yield_kg\":18000,\"moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"humidity\":null,\"ph\":null,\"ec\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:10'),
(34, 2, 1, 'yield', 'Dự báo 15840 kg lá/Zone', 0.7590, '{\"predicted_yield_kg\":15840,\"target_yield_kg\":18000,\"moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"humidity\":null,\"ph\":null,\"ec\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:10'),
(35, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:19'),
(36, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:21'),
(37, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:21'),
(38, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:22'),
(39, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:23'),
(40, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:24'),
(41, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:25'),
(42, 2, 1, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"ph\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:25'),
(43, 2, 1, 'yield', 'Dự báo 15840 kg lá/Zone', 0.7590, '{\"predicted_yield_kg\":15840,\"target_yield_kg\":18000,\"moisture\":48.2000000000000028421709430404007434844970703125,\"temperature\":36.7999999999999971578290569595992565155029296875,\"humidity\":null,\"ph\":null,\"ec\":null,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:36'),
(44, 2, 1, 'irrigation_opt', 'Tưới 30 phút/lần — tiết kiệm ~17% nước', 0.7800, '{\"duration_min\":30,\"saving_pct\":17,\"moisture\":48.2000000000000028421709430404007434844970703125,\"days_since_planting\":806,\"cycle_status\":\"harvesting\"}', '2026-05-16 16:17:38'),
(45, 3, 2, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":61.2000000000000028421709430404007434844970703125,\"temperature\":35.89999999999999857891452847979962825775146484375,\"ph\":null,\"days_since_planting\":792,\"cycle_status\":\"harvesting\"}', '2026-05-16 19:09:41'),
(46, 3, 2, 'disease', 'Bệnh đốm lá (Leaf spot)', 0.7200, '{\"disease_key\":\"leaf_spot\",\"detail\":\"Phân tích heuristic dựa trên cảm biến Zone.\",\"soil_moisture\":61.2000000000000028421709430404007434844970703125,\"temperature\":35.89999999999999857891452847979962825775146484375,\"ph\":null,\"days_since_planting\":792,\"cycle_status\":\"harvesting\"}', '2026-05-16 19:09:46');

-- ===============
--  HARVEST_RECORDS (Thu hoạch nha đam)
CREATE TABLE harvest_records (
    harvest_id             INT UNSIGNED    AUTO_INCREMENT PRIMARY KEY,
    harvest_zone_id        INT UNSIGNED    NOT NULL,
    harvest_cycle_id       INT UNSIGNED    NOT NULL,
    harvest_recorded_by    INT UNSIGNED    NOT NULL,
    harvest_date           DATE            NOT NULL,
    harvest_weight_kg      DECIMAL(10,2)   NOT NULL,
    harvest_grade          ENUM('A','B','C') NOT NULL,
    harvest_new_shoots_count INT UNSIGNED,
    harvest_notes          TEXT,
    harvest_approved_by    INT UNSIGNED,
    harvest_approved_at    DATETIME,
    FOREIGN KEY (harvest_zone_id)     REFERENCES zones(zone_id),
    FOREIGN KEY (harvest_cycle_id)    REFERENCES growing_cycles(cycle_id),
    FOREIGN KEY (harvest_recorded_by) REFERENCES users(user_id),
    FOREIGN KEY (harvest_approved_by) REFERENCES users(user_id),
    INDEX idx_harvest_zone_date (harvest_zone_id, harvest_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `harvest_records` (`harvest_id`, `harvest_zone_id`, `harvest_cycle_id`, `harvest_recorded_by`, `harvest_date`, `harvest_weight_kg`, `harvest_grade`, `harvest_new_shoots_count`, `harvest_notes`, `harvest_approved_by`, `harvest_approved_at`) VALUES(1, 2, 1, 69, '2025-02-01', 125.80, 'A', 19, 'Mùa mưa', 67, '2025-02-02 09:00:00'),
(2, 2, 1, 69, '2025-03-01', 130.20, 'A', 20, 'Đợt đầu mùa khô', 67, '2025-03-02 09:00:00'),
(3, 2, 1, 69, '2025-04-01', 138.60, 'A', 21, 'Ổn định', 67, '2025-04-02 09:00:00'),
(4, 2, 1, 69, '2025-05-01', 142.50, 'A', 23, 'Lá dày, gel nhiều', 67, '2025-05-02 09:00:00'),
(5, 3, 2, 70, '2025-02-01', 122.10, 'A', 16, 'Bình thường', 67, '2025-02-02 09:30:00'),
(6, 3, 2, 70, '2025-03-01', 128.50, 'A', 17, 'Bình thường', 67, '2025-03-02 09:30:00'),
(7, 3, 2, 70, '2025-04-01', 131.40, 'A', 18, 'Tốt', 67, '2025-04-02 09:30:00'),
(8, 3, 2, 70, '2025-05-01', 135.80, 'A', 19, 'Chất lượng tốt', 67, '2025-05-02 09:30:00'),
(9, 4, 3, 71, '2025-02-01', 136.70, 'A', 21, 'Tốt', 67, '2025-02-02 10:00:00'),
(10, 4, 3, 71, '2025-03-01', 141.30, 'A', 22, 'Tốt', 67, '2025-03-02 10:00:00'),
(11, 4, 3, 71, '2025-04-01', 147.90, 'A', 24, 'Tốt', 67, '2025-04-02 10:00:00'),
(12, 4, 3, 71, '2025-05-01', 151.20, 'A', 25, 'Vượt mục tiêu 8%', 67, '2025-05-02 10:00:00'),
(13, 6, 5, 73, '2025-05-01', 1.00, 'A', NULL, 'Đang cân đo, chưa cập nhật', NULL, NULL),
(14, 7, 6, 74, '2025-02-01', 95.30, 'B', 13, 'Cải thiện sau điều trị', 67, '2025-02-02 10:30:00'),
(15, 7, 6, 74, '2025-03-01', 89.60, 'C', 10, 'Tỷ lệ lá bị bệnh 15%', 67, '2025-03-02 10:30:00'),
(16, 7, 6, 74, '2025-04-01', 105.20, 'B', 14, 'Cải thiện', 67, '2025-04-02 10:30:00'),
(17, 7, 6, 74, '2025-05-01', 98.40, 'B', 12, 'Một số lá ngắn do thối gốc', 67, '2025-05-02 10:30:00'),
(18, 8, 7, 75, '2025-05-01', 143.20, 'A', 22, 'Thu hoạch lần đầu', 67, '2025-05-02 11:00:00'),
(19, 9, 8, 76, '2025-05-01', 119.60, 'B', 15, 'Sensor offline', 67, '2025-05-02 12:00:00'),
(20, 10, 9, 77, '2025-05-01', 168.40, 'A', 28, 'Zone lớn nhất', 67, '2025-05-02 11:30:00');
-- ======
--  WEATHER_DATA (Dữ liệu thời tiết từ API ngoài)
CREATE TABLE weather_data (
    weather_id             INT UNSIGNED    AUTO_INCREMENT PRIMARY KEY,
    weather_forecast_date  DATE            NOT NULL UNIQUE,
    weather_temp_max       DECIMAL(5,2),
    weather_temp_min       DECIMAL(5,2),
    weather_humidity       DECIMAL(5,2),
    weather_rainfall_mm    DECIMAL(6,2)    DEFAULT 0.00,
    weather_wind_speed     DECIMAL(5,2),
    weather_condition      VARCHAR(50),
    weather_is_forecast    TINYINT(1)      NOT NULL DEFAULT 1,
    weather_fetched_at     DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP
    -- INDEX idx_weather_date đã bị loại bỏ: UNIQUE tự tạo index, thêm nữa là dư
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `weather_data` (`weather_id`, `weather_forecast_date`, `weather_temp_max`, `weather_temp_min`, `weather_humidity`, `weather_rainfall_mm`, `weather_wind_speed`, `weather_condition`, `weather_is_forecast`, `weather_fetched_at`) VALUES(1, '2026-05-12', 30.50, 24.50, 88.00, 35.00, 20.00, 'Mưa to', 0, '2026-05-16 16:14:36'),
(2, '2026-05-13', 32.80, 25.20, 80.00, 5.00, 15.00, 'Nhiều mây', 0, '2026-05-16 16:14:36'),
(3, '2026-05-14', 37.90, 27.80, 67.00, 0.00, 9.00, 'Nắng nóng', 0, '2026-05-16 16:14:36'),
(4, '2026-05-15', 33.50, 25.80, 78.00, 2.00, 14.00, 'Có mây', 0, '2026-05-16 16:14:36'),
(5, '2026-05-16', 36.80, 27.50, 70.00, 0.00, 10.00, 'Nắng nóng', 0, '2026-05-16 16:14:36'),
(6, '2026-05-17', 37.20, 27.80, 68.00, 0.00, 9.00, 'Nắng nóng', 1, '2026-05-16 16:14:36'),
(7, '2026-05-18', 35.50, 26.50, 74.00, 5.00, 15.00, 'Có mây nhẹ', 1, '2026-05-16 16:14:36'),
(8, '2026-05-19', 32.00, 25.00, 85.00, 20.00, 22.00, 'Mưa dông', 1, '2026-05-16 16:14:36'),
(9, '2026-05-20', 30.50, 24.50, 90.00, 30.00, 25.00, 'Mưa to', 1, '2026-05-16 16:14:36'),
(10, '2026-05-21', 33.80, 25.80, 78.00, 8.00, 16.00, 'Nhiều mây', 1, '2026-05-16 16:14:36'),
(11, '2026-05-22', 34.80, 26.50, 75.00, 3.00, 10.00, 'Ít mây', 1, '2026-05-16 16:14:36');
-- ============
-- 13. AUDIT_LOGS (Nhật ký toàn bộ thao tác – BIGINT PK, append-only)
CREATE TABLE audit_logs (
    audit_id               BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    audit_user_id          INT UNSIGNED    NOT NULL,
    audit_action           ENUM('INSERT','UPDATE','DELETE','LOGIN','LOGOUT','EXPORT') NOT NULL,
    audit_table_name       VARCHAR(50),
    audit_record_id        BIGINT UNSIGNED,
    audit_old_json         TEXT,
    audit_new_json         TEXT,
    audit_ip_address       VARCHAR(45),
    audit_logged_at        DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (audit_user_id) REFERENCES users(user_id),
    INDEX idx_audit_user (audit_user_id),
    INDEX idx_audit_time (audit_logged_at),
    INDEX idx_audit_action (audit_action)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `audit_logs` (`audit_id`, `audit_user_id`, `audit_action`, `audit_table_name`, `audit_record_id`, `audit_old_json`, `audit_new_json`, `audit_ip_address`, `audit_logged_at`) VALUES
(1, 25, 'LOGIN', 'users', '25', NULL, '{\"username\":\"giangvnuis\",\"ip\":\"::1\"}', '::1', '2026-05-15 16:30:00'),
(2, 25, 'LOGOUT', 'users', '25', NULL, '{\"username\":\"giangvnuis\",\"ip\":\"::1\"}', '::1', '2026-05-15 16:30:09'),
(3, 21, 'LOGIN', 'users', '21', NULL, '{\"username\":\"admin\",\"ip\":\"::1\"}', '::1', '2026-05-15 16:35:24'),
(4, 21, 'LOGOUT', 'users', '21', NULL, '{\"username\":\"admin\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:01:02'),
(5, 22, 'LOGIN', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:01:10'),
(6, 22, 'EXPORT', 'reports', '1', NULL, '{\"days\":7}', '::1', '2026-05-15 17:02:15'),
(7, 22, 'LOGOUT', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:33:18'),
(8, 22, 'LOGIN', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:33:22'),
(9, 22, 'LOGOUT', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:40:08'),
(10, 22, 'LOGIN', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:40:12'),
(11, 22, 'LOGOUT', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:40:15'),
(12, 21, 'LOGIN', 'users', '21', NULL, '{\"username\":\"admin\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:40:24'),
(13, 21, 'LOGOUT', 'users', '21', NULL, '{\"username\":\"admin\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:47:54'),
(14, 22, 'LOGIN', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:47:56'),
(15, 22, 'LOGOUT', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:48:09'),
(16, 23, 'LOGIN', 'users', '23', NULL, '{\"username\":\"farmer\",\"ip\":\"::1\"}', '::1', '2026-05-15 17:48:10'),
(17, 23, 'LOGOUT', 'users', '23', NULL, '{\"username\":\"farmer\",\"ip\":\"::1\"}', '::1', '2026-05-16 16:01:13'),
(18, 22, 'LOGIN', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-16 16:01:16'),
(19, 22, 'LOGOUT', 'users', '22', NULL, '{\"username\":\"manager\",\"ip\":\"::1\"}', '::1', '2026-05-16 16:21:14'),
(20, 21, 'LOGIN', 'users', '21', NULL, '{\"username\":\"admin\",\"ip\":\"::1\"}', '::1', '2026-05-16 16:21:16'),
(21, 21, 'UPDATE', 'user_zone_assignment', '2', NULL, '{\"farmer_id\":79}', '::1', '2026-05-16 17:22:35'),
(22, 21, 'LOGOUT', 'users', '21', NULL, '{\"username\":\"admin\",\"ip\":\"::1\"}', '::1', '2026-05-16 19:00:49'),
(23, 66, 'LOGIN', 'users', '66', NULL, '{\"username\":\"admin_aloe\",\"ip\":\"::1\"}', '::1', '2026-05-16 19:07:38'),
(24, 66, 'LOGIN', 'users', '66', NULL, '{\"username\":\"admin_aloe\",\"ip\":\"::1\"}', '::1', '2026-05-16 19:08:07'),
(25, 66, 'LOGOUT', 'users', '66', NULL, '{\"username\":\"admin_aloe\",\"ip\":\"::1\"}', '::1', '2026-05-16 19:09:02'),
(26, 69, 'LOGIN', 'users', '69', NULL, '{\"username\":\"farmer_z01\",\"ip\":\"::1\"}', '::1', '2026-05-16 19:09:03'),
(27, 69, 'LOGOUT', 'users', '69', NULL, '{\"username\":\"farmer_z01\",\"ip\":\"::1\"}', '::1', '2026-05-19 10:04:21'),
(28, 66, 'LOGIN', 'users', '66', NULL, '{\"username\":\"admin_aloe\",\"ip\":\"::1\"}', '::1', '2026-05-19 10:04:23');
-- ============================================================
-- TRIGGER: Ràng buộc role cho user_zone_assignment
-- Vì ENUM không thể enforce cross-table constraint, dùng TRIGGER
-- ============================================================
DELIMITER $$
CREATE TRIGGER trg_check_assign_role
BEFORE INSERT ON user_zone_assignment
FOR EACH ROW
BEGIN
    DECLARE v_role VARCHAR(20);
    SELECT user_role INTO v_role FROM users WHERE user_id = NEW.assign_user_id;
    IF v_role != 'farmer' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Chi farmer moi duoc phan cong Zone. Kiem tra user_role.';
    END IF;
END$$

CREATE TRIGGER trg_check_assign_role_update
BEFORE UPDATE ON user_zone_assignment
FOR EACH ROW
BEGIN
    DECLARE v_role VARCHAR(20);
    SELECT user_role INTO v_role FROM users WHERE user_id = NEW.assign_user_id;
    IF v_role != 'farmer' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Chi farmer moi duoc phan cong Zone.';
    END IF;
END$$

-- TRIGGER: harvest_approved_by phai la manager
CREATE TRIGGER trg_check_harvest_approver
BEFORE UPDATE ON harvest_records
FOR EACH ROW
BEGIN
    DECLARE v_role VARCHAR(20);
    IF NEW.harvest_approved_by IS NOT NULL THEN
        SELECT user_role INTO v_role FROM users WHERE user_id = NEW.harvest_approved_by;
        IF v_role NOT IN ('manager','admin') THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Chi manager/admin moi duoc phe duyet thu hoach.';
        END IF;
    END IF;
END$$
DELIMITER ;

