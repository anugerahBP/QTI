-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 19 Nov 2023 pada 05.49
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `QTI-Employee`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `asset_name` text DEFAULT NULL,
  `asset_type` text DEFAULT NULL,
  `brand` text DEFAULT NULL,
  `asset_number` text DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `assets`
--

INSERT INTO `assets` (`asset_id`, `asset_name`, `asset_type`, `brand`, `asset_number`, `employee_id`) VALUES
(101, 'Laptop', 'Electronic', 'HP', 'L101', 1),
(102, 'Desktop', 'Electronic', 'Dell', 'D102', 2),
(103, 'Printer', 'Peripheral', 'Epson', 'P103', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_name` text DEFAULT NULL,
  `company_name` text DEFAULT NULL,
  `employee_number` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `department` text DEFAULT NULL,
  `division` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_name`, `company_name`, `employee_number`, `position`, `department`, `division`) VALUES
(1, 'John Doe', 'X', 'E123', 'Manager', 'HR', 'Operations'),
(2, 'Jane Smith', 'X', 'E456', 'Developer', 'IT', 'Development'),
(3, 'Bob Johnson', 'X', 'E789', 'Analyst', 'Finance', 'Analytics');

-- --------------------------------------------------------

--
-- Struktur dari tabel `losses`
--

CREATE TABLE `losses` (
  `loss_id` int(11) NOT NULL,
  `time` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `province` text DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `losses`
--

INSERT INTO `losses` (`loss_id`, `time`, `city`, `province`, `asset_id`) VALUES
(1001, '2023-01-01 10:00:00', 'Bandung', 'Jawa Barat', 101),
(1002, '2023-02-15 15:30:00', 'Bekasi', 'Jawa Barat', 102),
(1003, '2023-03-20 09:45:00', 'Depok', 'Jawa Barat', 103);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indeks untuk tabel `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indeks untuk tabel `losses`
--
ALTER TABLE `losses`
  ADD PRIMARY KEY (`loss_id`),
  ADD KEY `asset_id` (`asset_id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Ketidakleluasaan untuk tabel `losses`
--
ALTER TABLE `losses`
  ADD CONSTRAINT `losses_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`asset_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
