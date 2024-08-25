-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Agu 2024 pada 10.38
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penerimaan_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_24_062320_create_tbl_user', 1),
(6, '2024_08_24_062419_create_tbl_calon_mahasiswa', 1),
(9, '2024_08_24_071456_create_tbl_agama', 1),
(11, '2024_08_24_065431_create_tbl_kota', 2),
(12, '2024_08_24_065500_create_tbl_propinsi', 2),
(14, '2024_08_25_034927_insert_to_tbl_calon', 3),
(15, '2024_08_25_043356_insert_to_tbl_user', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_calon_mahasiswa`
--

CREATE TABLE `tbl_calon_mahasiswa` (
  `id_calon_mahasiswa` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `alamat_ktp` varchar(255) DEFAULT NULL,
  `alamat_sekarang` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `propinsi` varchar(50) DEFAULT NULL,
  `nohp` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `tgl_lahir` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(50) DEFAULT NULL,
  `status_menikah` varchar(50) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `nilai_bindo` varchar(50) DEFAULT NULL,
  `nilai_bing` varchar(50) DEFAULT NULL,
  `nilai_mtk` varchar(50) DEFAULT NULL,
  `rata_rata` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_calon_mahasiswa`
--

INSERT INTO `tbl_calon_mahasiswa` (`id_calon_mahasiswa`, `nama_user`, `alamat_ktp`, `alamat_sekarang`, `kecamatan`, `kabupaten`, `propinsi`, `nohp`, `email`, `kewarganegaraan`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `status_menikah`, `agama`, `nilai_bindo`, `nilai_bing`, `nilai_mtk`, `rata_rata`, `created_at`, `updated_at`, `foto`) VALUES
(10, 'test', 'test', 'test', 'test', '1', '1', '12312213213', 'asddas@gmail.com', 'WNI Asli', '2024-08-25 00:00:00', 'test', 'Laki-laki', 'Menikah', 'Islam', '45', '45', '45', '45.00', '2024-08-25 00:12:29', '2024-08-25 00:12:29', 'Yvwdf4yVdb8ufEA2xTHWn3ZAUQvKRtAAaWCiHKYm.jpg'),
(11, 'John Doe', 'test', 'test', 'test', '1', '1', '1231232312', 'test@gmail.com', 'WNI Asli', '2024-08-25 00:00:00', 'test', 'Laki-laki', 'Belum Menikah', 'Islam', '12', '12', '12', '12.00', '2024-08-25 01:14:25', '2024-08-25 01:14:25', 'NzdVQKFLWcefRfpVOYq7GjvVCzjY6fnKqR6NWvEC.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id_kota` bigint(20) UNSIGNED NOT NULL,
  `nama_kota` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kota`, `nama_kota`, `created_at`, `updated_at`) VALUES
(1, 'Kota Banda Aceh', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(2, 'Kota Langsa', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(3, 'Kota Lhokseumawe', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(4, 'Kota Sabang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(5, 'Kota Subulussalam', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(6, 'Kota Binjai', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(7, 'Kota Gunungsitoli', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(8, 'Kota Medan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(9, 'Kota Padangsidempuan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(10, 'Kota Pematangsiantar', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(11, 'Kota Sibolga', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(12, 'Kota Tanjungbalai', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(13, 'Kota Tebing Tinggi', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(14, 'Kota Bukittinggi', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(15, 'Kota Padang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(16, 'Kota Padangpanjang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(17, 'Kota Pariaman', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(18, 'Kota Payakumbuh', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(19, 'Kota Sawahlunto', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(20, 'Kota Solok', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(21, 'Kota Lubuklinggau', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(22, 'Kota Pagar Alam', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(23, 'Kota Palembang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(24, 'Kota Prabumulih', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(25, 'Kota Dumai', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(26, 'Kota Pekanbaru', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(27, 'Kota Batam', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(28, 'Kota Tanjung Pinang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(29, 'Kota Jambi', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(30, 'Kota Sungai Penuh', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(31, 'Kota Bengkulu', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(32, 'Kota Pangkal Pinang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(33, 'Kota Bandar Lampung', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(34, 'Kota Metro', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(35, 'Kota Cilegon', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(36, 'Kota Serang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(37, 'Kota Tangerang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(38, 'Kota Tangerang Selatan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(39, 'Kota Bandung', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(40, 'Kota Banjar', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(41, 'Kota Bekasi', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(42, 'Kota Bogor', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(43, 'Kota Cimahi', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(44, 'Kota Cirebon', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(45, 'Kota Depok', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(46, 'Kota Sukabumi', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(47, 'Kota Tasikmalaya', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(48, 'Kota Magelang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(49, 'Kota Pekalongan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(50, 'Kota Salatiga', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(51, 'Kota Semarang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(52, 'Kota Surakarta', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(53, 'Kota Tegal', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(54, 'Kota Batu', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(55, 'Kota Blitar', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(56, 'Kota Kediri', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(57, 'Kota Madiun', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(58, 'Kota Malang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(59, 'Kota Mojokerto', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(60, 'Kota Pasuruan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(61, 'Kota Probolinggo', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(62, 'Kota Surabaya', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(63, 'Kota Administrasi Jakarta Barat', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(64, 'Kota Administrasi Jakarta Pusat', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(65, 'Kota Administrasi Jakarta Selatan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(66, 'Kota Administrasi Jakarta Timur', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(67, 'Kota Administrasi Jakarta Utara', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(68, 'Kabupaten Administrasi Kepulauan Seribu', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(69, 'Kota Yogyakarta', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(70, 'Kota Denpasar', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(71, 'Kota Bima', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(72, 'Kota Mataram', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(73, 'Kota Kupang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(74, 'Kota Pontianak', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(75, 'Kota Singkawang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(76, 'Kota Banjarbaru', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(77, 'Kota Banjarmasin', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(78, 'Kota Palangka Raya', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(79, 'Kota Balikpapan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(80, 'Kota Bontang', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(81, 'Kota Samarinda', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(82, 'Kota Tarakan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(83, 'Kota Gorontalo', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(84, 'Kota Makassar', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(85, 'Kota Palopo', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(86, 'Kota Parepare', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(87, 'Kota Bau-Bau', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(88, 'Kota Kendari', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(89, 'Kota Palu', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(90, 'Kota Bitung', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(91, 'Kota Kotamobagu', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(92, 'Kota Manado', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(93, 'Kota Tomohon', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(94, 'Kota Mamuju', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(95, 'Kota Ambon', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(96, 'Kota Tual', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(97, 'Kota Ternate', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(98, 'Kota Tidore Kepulauan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(99, 'Kota Jayapura', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(100, 'Kota Sorong', '2024-08-23 17:00:00', '2024-08-23 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` bigint(20) UNSIGNED NOT NULL,
  `nama_provinsi` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `nama_provinsi`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(2, 'Sumatera Utara', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(3, 'Sumatera Barat', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(4, 'Sumatera Selatan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(5, 'Riau', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(6, 'Kepulauan Riau', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(7, 'Jambi', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(8, 'Bengkulu', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(9, 'Bangka Belitung', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(10, 'Lampung', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(11, 'Banten', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(12, 'Jawa Barat', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(13, 'Jawa Tengah', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(14, 'Jawa Timur', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(15, 'DKI Jakarta', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(16, 'Daerah Istimewa Yogyakarta', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(17, 'Bali', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(18, 'Nusa Tenggara Barat', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(19, 'Nusa Tenggara Timur', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(20, 'Kalimantan Barat', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(21, 'Kalimantan Selatan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(22, 'Kalimantan Tengah', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(23, 'Kalimantan Timur', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(24, 'Kalimantan Utara', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(25, 'Gorontalo', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(26, 'Sulawesi Selatan', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(27, 'Sulawesi Tenggara', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(28, 'Sulawesi Tengah', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(29, 'Sulawesi Utara', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(30, 'Sulawesi Barat', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(31, 'Maluku', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(32, 'Maluku Utara', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(33, 'Papua', '2024-08-23 17:00:00', '2024-08-23 17:00:00'),
(34, 'Papua Barat', '2024-08-23 17:00:00', '2024-08-23 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `kode_user` varchar(50) DEFAULT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uid` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `kode_user`, `nama_user`, `password`, `role`, `created_at`, `updated_at`, `uid`) VALUES
(4, 'tess12345', 'asdg', '$2y$10$tiEhujtGyLt1i7hYMM9JSOWptzBTKsoKZLThsH.un1BoqSqX4hWFy', 'Admin', '2024-08-24 21:35:56', '2024-08-25 00:40:16', '3b6e3dee-1a82-495f-aa6d-0cfddbee2963'),
(6, 'ADM001', 'Admin User', '$2y$10$CCmUpoLUT3rjn5Ywg7FyJ.imD6ESaotMS6a4KbBMSDe4lXI.mOcGu', 'Admin', '2024-08-25 00:30:54', '2024-08-25 00:30:54', NULL),
(7, 'USR001', 'John Doe', '$2y$10$Cy3ZEQtnyDge2ESv4ki5d.cWpBjIrgQe5hATlNgcnie.X7/K5jF6K', 'Camaba', '2024-08-25 00:30:54', '2024-08-25 00:30:54', NULL),
(8, 'ADM002', 'admin', '$2y$10$eIjOpD8sMsmzEOkuvTyhSOoo2TZksvwl9FlHq3whbqE6qdHDppA8m', 'Admin', '2024-08-25 00:30:54', '2024-08-25 00:30:54', NULL),
(10, 'tesmaba1', 'testlengkap', '$2y$10$5dsl8pmCBSDfivgoyJuHleKpaLBMSNLySV99LpGoNGx05r3MhotSW', 'Camaba', '2024-08-25 00:52:06', '2024-08-25 00:52:06', '9a3ea7e0-2b58-44c0-acd7-4574451497f6'),
(12, 'tes213', 'asdasddasa', '$2y$10$Rub30sp/Zj6AYPuvIw2yXuRmuGzS/mUAaRul7bhw3ioUciiZTZBk.', 'Camaba', '2024-08-25 00:54:10', '2024-08-25 00:54:10', '5db6e1fe-5dbc-4cd4-8bd1-3720755da051');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tbl_calon_mahasiswa`
--
ALTER TABLE `tbl_calon_mahasiswa`
  ADD PRIMARY KEY (`id_calon_mahasiswa`),
  ADD UNIQUE KEY `tbl_calon_mahasiswa_nama_user_unique` (`nama_user`);

--
-- Indeks untuk tabel `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `tbl_user_kode_user_unique` (`kode_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_calon_mahasiswa`
--
ALTER TABLE `tbl_calon_mahasiswa`
  MODIFY `id_calon_mahasiswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id_kota` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
