-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2024 pada 19.55
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8
SET
    SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
    time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--
-- --------------------------------------------------------
--
-- Struktur dari tabel `about`
--
CREATE TABLE
    `about` (
        `id` int (11) NOT NULL,
        `about_headline` varchar(255) NOT NULL,
        `about_content` varchar(255) NOT NULL,
        `about_picture` varchar(255) NOT NULL,
        `created_at` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_at` datetime NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Struktur dari tabel `feature`
--
CREATE TABLE
    `feature` (
        `id` int (11) NOT NULL,
        `feature_title` varchar(255) NOT NULL,
        `feature_description` varchar(255) NOT NULL,
        `feature_icon` varchar(255) NOT NULL,
        `created_at` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_at` datetime NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Struktur dari tabel `hero`
--
CREATE TABLE
    `hero` (
        `id` int (11) NOT NULL,
        `hero_headline` varchar(255) NOT NULL,
        `hero_description` varchar(255) NOT NULL,
        `created_at` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_at` datetime NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Struktur dari tabel `service`
--
CREATE TABLE
    `service` (
        `id` int (11) NOT NULL,
        `service_title` varchar(255) NOT NULL,
        `service_description` varchar(255) NOT NULL,
        `service_image` varchar(255) NOT NULL,
        `service_category_id` int (11) NOT NULL,
        `created_at` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_at` datetime NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Struktur dari tabel `service_category`
--
CREATE TABLE
    `service_category` (
        `id` int (11) NOT NULL,
        `service_category_name` varchar(255) NOT NULL,
        `service_category_description` varchar(255) NOT NULL,
        `created_at` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_at` datetime NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Struktur dari tabel `techstack`
--
CREATE TABLE
    `techstack` (
        `id` int (11) NOT NULL,
        `techstack_name` varchar(255) NOT NULL,
        `techstack_type` varchar(255) NOT NULL,
        `techstack_icon` varchar(255) NOT NULL,
        `techstack_category_id` int (11) NOT NULL,
        `created_at` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_at` datetime NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Struktur dari tabel `techstack_category`
--
CREATE TABLE
    `techstack_category` (
        `id` int (11) NOT NULL,
        `techstack_category_name` varchar(255) NOT NULL,
        `techstack_category_description` varchar(255) NOT NULL,
        `created_at` datetime NOT NULL DEFAULT current_timestamp(),
        `updated_at` datetime NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Indexes for dumped tables
--
--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `feature`
--
ALTER TABLE `feature` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hero`
--
ALTER TABLE `hero` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service` ADD PRIMARY KEY (`id`),
ADD KEY `service_category_id` (`service_category_id`);

--
-- Indeks untuk tabel `service_category`
--
ALTER TABLE `service_category` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `techstack`
--
ALTER TABLE `techstack` ADD PRIMARY KEY (`id`),
ADD KEY `techstack_category_id` (`techstack_category_id`);

--
-- Indeks untuk tabel `techstack_category`
--
ALTER TABLE `techstack_category` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--
--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 2;

--
-- AUTO_INCREMENT untuk tabel `feature`
--
ALTER TABLE `feature` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 8;

--
-- AUTO_INCREMENT untuk tabel `hero`
--
ALTER TABLE `hero` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 10;

--
-- AUTO_INCREMENT untuk tabel `service_category`
--
ALTER TABLE `service_category` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 3;

--
-- AUTO_INCREMENT untuk tabel `techstack`
--
ALTER TABLE `techstack` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 22;

--
-- AUTO_INCREMENT untuk tabel `techstack_category`
--
ALTER TABLE `techstack_category` MODIFY `id` int (11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--
--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service` ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`service_category_id`) REFERENCES `service_category` (`id`);

--
-- Ketidakleluasaan untuk tabel `techstack`
--
ALTER TABLE `techstack` ADD CONSTRAINT `techstack_ibfk_1` FOREIGN KEY (`techstack_category_id`) REFERENCES `techstack_category` (`id`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;