-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2024 pada 19.55
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


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

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_headline` varchar(255) NOT NULL,
  `about_content` varchar(255) NOT NULL,
  `about_picture` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `about_headline`, `about_content`, `about_picture`, `created_at`, `updated_at`) VALUES
(1, 'Hi my name is Reza i am a tech enthusiast', '<p>i will help you to Transform your ideas into fancy secure and high performance Websites as posible</p>\r\n<p>turn your design into a custom high-performing websites. With a focus on design and functionality</p>', 'profile.jpg', '2024-07-29 11:36:19', '2024-07-29 11:36:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feature`
--

CREATE TABLE `feature` (
  `id` int(11) NOT NULL,
  `feature_title` varchar(255) NOT NULL,
  `feature_description` varchar(255) NOT NULL,
  `feature_icon` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `feature`
--

INSERT INTO `feature` (`id`, `feature_title`, `feature_description`, `feature_icon`, `created_at`, `updated_at`) VALUES
(1, 'Clean, Semantic, And Maintenable Source Code', 'For Future Update', 'Infinycon/Clean,Semantic,Maintainable.svg', '2024-07-29 13:03:45', '2024-07-29 13:03:45'),
(2, 'SEO Friendly App', 'Make your business easier to find by SEO Optimized App', 'Infinycon/Search Engine Friendly.svg', '2024-07-29 13:03:45', '2024-07-29 13:03:45'),
(3, 'Responsive User Interface', 'Multiplatform ready with Responsive User Interface', 'Infinycon/Responsive UI.svg', '2024-07-29 13:06:43', '2024-07-29 13:06:43'),
(4, 'Optimized User Interface & User Experience', 'Engage your customer with Good Optimized User Interface And User Experience', 'Infinycon/Optimized UI UX.svg', '2024-07-29 13:06:43', '2024-07-29 13:06:43'),
(5, 'Optimized user accesibility', 'Support Disable with optimized accesibility UI for screen reader', 'Infinycon/Support Disable with Good Accessibility App.svg', '2024-07-29 13:08:32', '2024-07-29 13:08:32'),
(6, 'High Speed Performance App', '', 'Infinycon/High Performance App Mini.svg', '2024-07-29 13:08:32', '2024-07-29 13:08:32'),
(7, 'Security Following OWASP Top 10 Guide', 'We made app based 10 OASP Security Standard and Best Practice as posible to make a strong and optimize system ', 'Infinycon/Security Following OWASP Top 10 Guide.svg', '2024-07-29 13:10:02', '2024-07-29 13:10:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero`
--

CREATE TABLE `hero` (
  `id` int(11) NOT NULL,
  `hero_headline` varchar(255) NOT NULL,
  `hero_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hero`
--

INSERT INTO `hero` (`id`, `hero_headline`, `hero_description`, `created_at`, `updated_at`) VALUES
(1, 'Reach more Customer by increasing your digital existance with \"SEO friendly Website\"', 'Transform your ideas into fancy secure and high performance Websites turn your design into a custom high performance websites. With a focus on design and functionality', '2024-07-28 15:03:16', '2024-07-28 15:03:16'),
(2, 'Upgrade your static website into interactive UI and System', '', '2024-07-28 15:03:16', '2024-07-28 15:03:16'),
(3, 'Boost your company productivity by integrating database', 'Implement your business logic and integrate it to database so you can store, monitor and calculate your record', '2024-07-28 15:05:21', '2024-07-28 15:05:21'),
(4, 'Turn your design into a custom high performance websites. With a focus on design and functionality\r\n', 'Boost your digital existance by improving \"SEO On Page\", \"Accesibility\", And \"Performance\" of your website', '2024-07-28 15:05:21', '2024-07-28 15:05:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_description` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `service_title`, `service_description`, `service_image`, `service_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Create a unique and custom website', '', '', 1, '2024-07-30 12:20:21', '2024-07-30 12:20:21'),
(2, 'Slicing from design to actual website', '', '', 1, '2024-07-30 12:20:21', '2024-07-30 12:20:21'),
(3, 'Fix or improve ui from your website', '', '', 1, '2024-07-30 12:20:21', '2024-07-30 12:20:21'),
(4, 'Optimize UI performance and \\\'On-Page\\\' SEO', '', '', 1, '2024-07-30 12:20:21', '2024-07-30 12:20:21'),
(5, 'Integrate API', '', '', 1, '2024-07-30 12:20:21', '2024-07-30 12:20:21'),
(6, 'Website business logic design', '', '', 2, '2024-07-30 12:21:57', '2024-07-30 12:21:57'),
(7, 'Database scheme design', '', '', 2, '2024-07-30 12:21:57', '2024-07-30 12:21:57'),
(8, 'Database integration', '', '', 2, '2024-07-30 12:21:57', '2024-07-30 12:21:57'),
(9, 'Add new functional feature', '', '', 2, '2024-07-30 12:21:57', '2024-07-30 12:21:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_category`
--

CREATE TABLE `service_category` (
  `id` int(11) NOT NULL,
  `service_category_name` varchar(255) NOT NULL,
  `service_category_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `service_category`
--

INSERT INTO `service_category` (`id`, `service_category_name`, `service_category_description`, `created_at`, `updated_at`) VALUES
(1, 'Frontend', '', '2024-07-30 12:17:41', '2024-07-30 12:17:41'),
(2, 'Backend', '', '2024-07-30 12:17:41', '2024-07-30 12:17:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `techstack`
--

CREATE TABLE `techstack` (
  `id` int(11) NOT NULL,
  `techstack_name` varchar(255) NOT NULL,
  `techstack_type` varchar(255) NOT NULL,
  `techstack_icon` varchar(255) NOT NULL,
  `techstack_category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `techstack`
--

INSERT INTO `techstack` (`id`, `techstack_name`, `techstack_type`, `techstack_icon`, `techstack_category_id`, `created_at`, `updated_at`) VALUES
(1, 'HTML', 'Language', 'assets/img/vendor/html-5-svgrepo-com.svg', 1, '2024-07-30 12:31:21', '2024-07-30 12:31:21'),
(2, 'CSS', 'Language', 'assets/img/vendor/css-3-svgrepo-com.svg', 1, '2024-07-30 12:31:21', '2024-07-30 12:31:21'),
(3, 'JS', 'Language', 'assets/img/vendor/js-official-svgrepo-com.svg', 1, '2024-07-30 12:31:21', '2024-07-30 12:31:21'),
(4, 'PHP', 'Language', 'assets/img/vendor/php3-svgrepo-com.svg', 2, '2024-07-30 12:31:21', '2024-07-30 12:31:21'),
(5, 'Javascript', 'Language', 'assets/img/vendor/js-official-svgrepo-com.svg', 2, '2024-07-30 12:31:21', '2024-07-30 12:31:21'),
(6, 'Java', 'Language', 'assets/img/vendor/', 2, '2024-07-30 12:31:21', '2024-07-30 12:31:21'),
(7, 'Bootstrap', 'Framework', 'assets/img/vendor/bootstrap-svgrepo-com.svg', 1, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(8, 'Tailwinds', 'Framework', 'assets/img/vendor/tailwindcss-white-full.svg', 1, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(9, 'Laravel', 'Framework', 'assets/img/vendor/laravel-original.svg', 2, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(10, 'Codeigniter', 'Framework', 'assets/img/vendor/codeigniter-svgrepo-com.svg', 2, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(11, 'Springboot', 'Framework', 'assets/img/vendor/Spring_Boot.svg', 2, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(12, 'Quarkus', 'Framework', 'assets/img/vendor/quarkus-icon-svgrepo-com.svg', 2, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(13, 'ExpressJS', 'Framework', 'assets/img/vendor/', 2, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(14, 'NextJS', 'Framework', 'assets/img/vendor/', 2, '2024-07-30 12:38:54', '2024-07-30 12:38:54'),
(15, 'React', 'Library', 'assets/img/vendor/React-icon.svg', 1, '2024-07-30 12:42:30', '2024-07-30 12:42:30'),
(16, 'NodeKS', 'Runtime', 'assets/img/vendor/Node.js_logo.svg', 2, '2024-07-30 12:42:30', '2024-07-30 12:42:30'),
(17, 'SASS', 'Preprocessor', 'assets/img/vendor/sass-full-svgrepo-com.svg', 1, '2024-07-30 12:45:26', '2024-07-30 12:45:26'),
(18, 'Webpack', 'Bundler', 'assets/img/vendor/', 1, '2024-07-30 12:45:26', '2024-07-30 12:45:26'),
(19, 'Vite', 'Bundler', 'assets/img/vendor/', 1, '2024-07-30 12:45:26', '2024-07-30 12:45:26'),
(20, 'MySQL', 'Database Management System', 'assets/img/vendor/mysql-logo-svgrepo-com.svg', 2, '2024-07-30 12:47:53', '2024-07-30 12:47:53'),
(21, 'PostgreSQL', 'Database Management System', 'assets/img/vendor/postgresql.svg', 2, '2024-07-30 12:47:53', '2024-07-30 12:47:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `techstack_category`
--

CREATE TABLE `techstack_category` (
  `id` int(11) NOT NULL,
  `techstack_category_name` varchar(255) NOT NULL,
  `techstack_category_description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `techstack_category`
--

INSERT INTO `techstack_category` (`id`, `techstack_category_name`, `techstack_category_description`, `created_at`, `updated_at`) VALUES
(1, 'Frontend', '', '2024-07-30 12:18:09', '2024-07-30 12:18:09'),
(2, 'Backend', '', '2024-07-30 12:18:09', '2024-07-30 12:18:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_category_id` (`service_category_id`);

--
-- Indeks untuk tabel `service_category`
--
ALTER TABLE `service_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `techstack`
--
ALTER TABLE `techstack`
  ADD PRIMARY KEY (`id`),
  ADD KEY `techstack_category_id` (`techstack_category_id`);

--
-- Indeks untuk tabel `techstack_category`
--
ALTER TABLE `techstack_category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `service_category`
--
ALTER TABLE `service_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `techstack`
--
ALTER TABLE `techstack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `techstack_category`
--
ALTER TABLE `techstack_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`service_category_id`) REFERENCES `service_category` (`id`);

--
-- Ketidakleluasaan untuk tabel `techstack`
--
ALTER TABLE `techstack`
  ADD CONSTRAINT `techstack_ibfk_1` FOREIGN KEY (`techstack_category_id`) REFERENCES `techstack_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
