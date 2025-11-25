-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 02:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riskman`
--

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_dampak_produk`
--

CREATE TABLE `rmtb_dampak_produk` (
  `id` int(11) NOT NULL,
  `id_risiko_produk` text DEFAULT NULL,
  `dampak` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_dampak_produk`
--

INSERT INTO `rmtb_dampak_produk` (`id`, `id_risiko_produk`, `dampak`, `hapus`) VALUES
(2, '1', 'identifikasi dampak uji produk rev 2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_dampak_proses`
--

CREATE TABLE `rmtb_dampak_proses` (
  `id` int(11) NOT NULL,
  `id_risiko_proses` text DEFAULT NULL,
  `dampak` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_dampak_proses`
--

INSERT INTO `rmtb_dampak_proses` (`id`, `id_risiko_proses`, `dampak`, `hapus`) VALUES
(2, '2', 'identifikasi dampak uji proses 2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_metode_deteksi_produk`
--

CREATE TABLE `rmtb_metode_deteksi_produk` (
  `id` int(11) NOT NULL,
  `id_risiko_produk` text DEFAULT NULL,
  `metode_deteksi` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_metode_deteksi_produk`
--

INSERT INTO `rmtb_metode_deteksi_produk` (`id`, `id_risiko_produk`, `metode_deteksi`, `hapus`) VALUES
(2, '2', 'identifikasi metode deteksi uji produk 2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_metode_deteksi_proses`
--

CREATE TABLE `rmtb_metode_deteksi_proses` (
  `id` int(11) NOT NULL,
  `id_risiko_proses` text DEFAULT NULL,
  `metode_deteksi` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_metode_deteksi_proses`
--

INSERT INTO `rmtb_metode_deteksi_proses` (`id`, `id_risiko_proses`, `metode_deteksi`, `hapus`) VALUES
(1, '1', 'identifikasi metode deteksi 1 rev', NULL),
(2, '3', 'metode deteksi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_pembobotan_sod`
--

CREATE TABLE `rmtb_pembobotan_sod` (
  `id` int(11) NOT NULL,
  `parameter` text DEFAULT NULL,
  `pembobotan_dipilih` text DEFAULT NULL,
  `langsung` text DEFAULT NULL,
  `ahp` text DEFAULT NULL,
  `so_sd_od` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_pembobotan_sod`
--

INSERT INTO `rmtb_pembobotan_sod` (`id`, `parameter`, `pembobotan_dipilih`, `langsung`, `ahp`, `so_sd_od`) VALUES
(1, 'Severity', 'ahp', '1', '2', '0.3333333333333333'),
(2, 'Occurence', 'ahp', '2', '1', '5'),
(3, 'Detection', 'ahp', '3', '3', '7');

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_penilaian_produk`
--

CREATE TABLE `rmtb_penilaian_produk` (
  `id` int(11) NOT NULL,
  `id_user` text DEFAULT NULL,
  `id_sod_produk` text DEFAULT NULL,
  `nilai_s` text DEFAULT NULL,
  `nilai_o` text DEFAULT NULL,
  `nilai_d` text DEFAULT NULL,
  `nilai_s_eval` text DEFAULT NULL,
  `nilai_o_eval` text DEFAULT NULL,
  `nilai_d_eval` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_penilaian_produk`
--

INSERT INTO `rmtb_penilaian_produk` (`id`, `id_user`, `id_sod_produk`, `nilai_s`, `nilai_o`, `nilai_d`, `nilai_s_eval`, `nilai_o_eval`, `nilai_d_eval`) VALUES
(1, '1', '1', '4', '7', '9', NULL, NULL, NULL),
(2, '3', '1', '6', '7', '9', NULL, NULL, NULL),
(3, '3', '2', '8', '4', '2', NULL, NULL, NULL),
(4, '3', '3', '5', '6', '2', NULL, NULL, NULL),
(5, '3', '4', '5', '2', '6', NULL, NULL, NULL),
(6, '1', '2', '8', '2', '2', NULL, NULL, NULL),
(7, '1', '3', '5', '3', '3', NULL, NULL, NULL),
(8, '1', '4', '4', '2', '3', NULL, NULL, NULL),
(9, '1', '5', '8', '2', '2', '8', '5', '1'),
(10, '1', '6', '4', '6', '2', '6', '3', '1'),
(11, '1', '7', '6', '6', '4', '6', '4', '1'),
(12, '3', '5', '8', '5', '4', '7', '3', '2'),
(13, '3', '6', '7', '4', '4', '4', '4', '2'),
(14, '3', '7', '5', '4', '2', '4', '2', '1'),
(15, '4', '5', '7', '7', '7', '6', '2', '1'),
(16, '4', '7', '8', '8', '3', '4', '2', '1'),
(17, '4', '6', '7', '7', '3', '4', '4', '2');

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_penilaian_proses`
--

CREATE TABLE `rmtb_penilaian_proses` (
  `id` int(11) NOT NULL,
  `id_user` text DEFAULT NULL,
  `id_sod_proses` text DEFAULT NULL,
  `nilai_s` text DEFAULT NULL,
  `nilai_o` text DEFAULT NULL,
  `nilai_d` text DEFAULT NULL,
  `nilai_s_eval` text DEFAULT NULL,
  `nilai_o_eval` text DEFAULT NULL,
  `nilai_d_eval` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_penilaian_proses`
--

INSERT INTO `rmtb_penilaian_proses` (`id`, `id_user`, `id_sod_proses`, `nilai_s`, `nilai_o`, `nilai_d`, `nilai_s_eval`, `nilai_o_eval`, `nilai_d_eval`) VALUES
(1, '1', '1', '2', '3', '4', '8', '3', '1'),
(2, '1', '4', '4', '3', '2', NULL, NULL, NULL),
(3, '4', '1', '8', '3', '6', NULL, NULL, NULL),
(4, '4', '2', '3', '7', '5', NULL, NULL, NULL),
(5, '1', '7', '4', '5', '6', NULL, NULL, NULL),
(6, '1', '8', '9', '8', '8', NULL, NULL, NULL),
(7, '1', '9', '4', '3', '4', NULL, NULL, NULL),
(8, '1', '10', '6', '4', '7', NULL, NULL, NULL),
(9, '1', '11', '7', '5', '6', NULL, NULL, NULL),
(10, '1', '12', '6', '2', '6', NULL, NULL, NULL),
(11, '4', '8', '7', '8', '6', NULL, NULL, NULL),
(12, '4', '9', '6', '8', '6', NULL, NULL, NULL),
(13, '4', '10', '5', '3', '3', NULL, NULL, NULL),
(14, '4', '11', '5', '2', '2', NULL, NULL, NULL),
(15, '4', '12', '5', '2', '2', NULL, NULL, NULL),
(16, '4', '13', '4', '6', '3', NULL, NULL, NULL),
(17, '1', '13', '4', '4', '4', NULL, NULL, NULL),
(18, '1', '15', '3', '1', '1', NULL, NULL, NULL),
(19, '1', '16', '5', '7', '5', '4', '3', '1'),
(20, '4', '15', '4', '1', '2', NULL, NULL, NULL),
(21, '3', '15', '8', '3', '2', NULL, NULL, NULL),
(22, '1', '18', '1', '1', '3', '4', '3', '3'),
(23, '1', '19', '5', '6', '4', '4', '2', '2'),
(24, '1', '20', '7', '7', '3', '3', '2', '2'),
(25, '1', '21', '5', '6', '2', '2', '3', '1'),
(26, '3', '16', '5', '9', '2', '4', '3', '2'),
(27, '4', '16', '8', '6', '3', '2', '3', '2'),
(28, '4', '18', '8', '8', '6', '3', '2', '2'),
(29, '4', '19', '10', '7', '5', '3', '4', '1'),
(30, '4', '20', '6', '5', '4', '4', '1', '2'),
(31, '4', '21', '3', '1', '2', '3', '4', '1'),
(32, '3', '18', '7', '3', '3', '3', '1', '2'),
(33, '3', '21', '4', '1', '1', '4', '2', '2'),
(34, '3', '20', '9', '7', '6', '4', '1', '2'),
(35, '3', '19', '4', '3', '7', '3', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_penyebab_produk`
--

CREATE TABLE `rmtb_penyebab_produk` (
  `id` int(11) NOT NULL,
  `id_risiko_produk` text DEFAULT NULL,
  `penyebab` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_penyebab_produk`
--

INSERT INTO `rmtb_penyebab_produk` (`id`, `id_risiko_produk`, `penyebab`, `hapus`) VALUES
(1, '1', 'identifikasi penyebab uji produk rev', NULL),
(2, '2', 'identifikasi penyebab uji produk 2 rev', NULL),
(3, '3', 'penyebab', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_penyebab_proses`
--

CREATE TABLE `rmtb_penyebab_proses` (
  `id` int(11) NOT NULL,
  `id_risiko_proses` text DEFAULT NULL,
  `penyebab` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_penyebab_proses`
--

INSERT INTO `rmtb_penyebab_proses` (`id`, `id_risiko_proses`, `penyebab`, `hapus`) VALUES
(3, '3', 'penyebab rev by mana', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_produk`
--

CREATE TABLE `rmtb_produk` (
  `id` int(11) NOT NULL,
  `id_user` text DEFAULT NULL,
  `judul` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `langkah` text DEFAULT NULL,
  `pembobotan_dipilih` text DEFAULT NULL,
  `ps_langsung` text DEFAULT NULL,
  `po_langsung` text DEFAULT NULL,
  `pd_langsung` text DEFAULT NULL,
  `ps_ahp` text DEFAULT NULL,
  `po_ahp` text DEFAULT NULL,
  `pd_ahp` text DEFAULT NULL,
  `so` text DEFAULT NULL,
  `sd` text DEFAULT NULL,
  `od` text DEFAULT NULL,
  `penilai` text DEFAULT NULL,
  `tanggal_penilaian` text DEFAULT NULL,
  `tanggal_evaluasi` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_produk`
--

INSERT INTO `rmtb_produk` (`id`, `id_user`, `judul`, `deskripsi`, `langkah`, `pembobotan_dipilih`, `ps_langsung`, `po_langsung`, `pd_langsung`, `ps_ahp`, `po_ahp`, `pd_ahp`, `so`, `sd`, `od`, `penilai`, `tanggal_penilaian`, `tanggal_evaluasi`, `hapus`) VALUES
(4, '1', 'Mesin induk: studi kasus di KM. Sidomulyo', 'Analisis risiko mesin induk pada kapal Sidomulyo', '1. Tangki bahan bakar \n2. xxx\n3. xxx', 'langsung', '1', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '3;4', '23/09/2024', '23/09/2024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_proses`
--

CREATE TABLE `rmtb_proses` (
  `id` int(11) NOT NULL,
  `id_user` text DEFAULT NULL,
  `judul` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `langkah` text DEFAULT NULL,
  `pembobotan_dipilih` text DEFAULT NULL,
  `ps_langsung` text DEFAULT NULL,
  `po_langsung` text DEFAULT NULL,
  `pd_langsung` text DEFAULT NULL,
  `ps_ahp` text DEFAULT NULL,
  `po_ahp` text DEFAULT NULL,
  `pd_ahp` text DEFAULT NULL,
  `so` text DEFAULT NULL,
  `sd` text DEFAULT NULL,
  `od` text DEFAULT NULL,
  `penilai` text DEFAULT NULL,
  `tanggal_penilaian` text DEFAULT NULL,
  `tanggal_evaluasi` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_proses`
--

INSERT INTO `rmtb_proses` (`id`, `id_user`, `judul`, `deskripsi`, `langkah`, `pembobotan_dipilih`, `ps_langsung`, `po_langsung`, `pd_langsung`, `ps_ahp`, `po_ahp`, `pd_ahp`, `so`, `sd`, `od`, `penilai`, `tanggal_penilaian`, `tanggal_evaluasi`, `hapus`) VALUES
(7, '1', 'Pengujian abnormal kipas angin', 'menganalisis risiko proses uji abnormal ', '1. Pemutusan pembatas suhu \n2. xxx\n3. xxx', 'langsung', '1', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, '3;4', '23/09/2024', '23/09/2024', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_risiko_produk`
--

CREATE TABLE `rmtb_risiko_produk` (
  `id` int(11) NOT NULL,
  `id_produk` text DEFAULT NULL,
  `risiko` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_risiko_produk`
--

INSERT INTO `rmtb_risiko_produk` (`id`, `id_produk`, `risiko`, `hapus`) VALUES
(2, '1', 'identifikasi risiko uji produk 2 rev', NULL),
(3, '2', 'identifikasi', NULL),
(4, '3', 'Kebocoran pada dinding tangki bahan bakar', NULL),
(5, '3', 'Kotor dan terjadi sedimen air', NULL),
(6, '3', 'Penurunan tekanan aliran bahan bakar', NULL),
(7, '4', 'Kebocoran pada dinding tangki bahan bakar', NULL),
(8, '4', 'Kotor dan terjadi sedimen air ', NULL),
(9, '4', 'Penurunan tekanan aliran bahan bakar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_risiko_proses`
--

CREATE TABLE `rmtb_risiko_proses` (
  `id` int(11) NOT NULL,
  `id_proses` text DEFAULT NULL,
  `risiko` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_risiko_proses`
--

INSERT INTO `rmtb_risiko_proses` (`id`, `id_proses`, `risiko`, `hapus`) VALUES
(2, '2', 'identifikasi risiko uji proses 2 rev', NULL),
(3, '3', 'identifikasi risiko rev by mana R1', NULL),
(4, '3', 'identifikasi risiko 2', NULL),
(5, '4', 'risiko proses 2 risiko 1 R1', NULL),
(6, '4', 'risiko proses 2 risiko 2', NULL),
(11, '6', 'Kerusakan power meter', NULL),
(12, '6', 'Voltage regulator tidak berfungsi', NULL),
(13, '6', 'Tidak berfungsinya data logger', NULL),
(15, '7', 'Kerusakan power meter', NULL),
(16, '7', 'Voltage regulator tidak berfungsi ', NULL),
(17, '7', 'Tidak berfungsinya data logger', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_riwayat_laporan_awal`
--

CREATE TABLE `rmtb_riwayat_laporan_awal` (
  `id` int(11) NOT NULL,
  `tanggal` text DEFAULT NULL,
  `dokumen` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_riwayat_laporan_awal`
--

INSERT INTO `rmtb_riwayat_laporan_awal` (`id`, `tanggal`, `dokumen`) VALUES
(1, '2024-08-21 10:44:35', 'assets/laporan/laporan_awal_2024-08-21-104435000000.pdf'),
(2, '2024-09-08 15:40:50', 'assets/laporan/laporan_awal_2024-09-08-154050000000.pdf'),
(3, '2024-09-20 15:44:52', 'assets/laporan/laporan_awal_2024-09-20-154452000000.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_riwayat_laporan_mitigasi`
--

CREATE TABLE `rmtb_riwayat_laporan_mitigasi` (
  `id` int(11) NOT NULL,
  `tanggal` text DEFAULT NULL,
  `dokumen` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_riwayat_laporan_total`
--

CREATE TABLE `rmtb_riwayat_laporan_total` (
  `id` int(11) NOT NULL,
  `tanggal` text DEFAULT NULL,
  `dokumen` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_riwayat_laporan_total`
--

INSERT INTO `rmtb_riwayat_laporan_total` (`id`, `tanggal`, `dokumen`) VALUES
(1, '2024-09-20 15:49:35', 'assets/laporan/laporan_total_2024-09-20-154935000000.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_selera_risiko`
--

CREATE TABLE `rmtb_selera_risiko` (
  `id` int(11) NOT NULL,
  `status` text DEFAULT NULL,
  `min` text DEFAULT NULL,
  `max` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_selera_risiko`
--

INSERT INTO `rmtb_selera_risiko` (`id`, `status`, `min`, `max`) VALUES
(1, 'Abaikan', '0', '300'),
(2, 'Mitigasi', '301', '600'),
(3, 'Hindari', '601', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_selera_risiko_laporan`
--

CREATE TABLE `rmtb_selera_risiko_laporan` (
  `id` int(11) NOT NULL,
  `status` text DEFAULT NULL,
  `min` text DEFAULT NULL,
  `max` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_selera_risiko_laporan`
--

INSERT INTO `rmtb_selera_risiko_laporan` (`id`, `status`, `min`, `max`) VALUES
(1, 'Abaikan', '0', '300'),
(2, 'Mitigasi', '301', '600'),
(3, 'Hindari', '601', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_skala_dampak`
--

CREATE TABLE `rmtb_skala_dampak` (
  `id` int(11) NOT NULL,
  `ranking` text DEFAULT NULL,
  `judul_proses` text DEFAULT NULL,
  `deskripsi_proses` text DEFAULT NULL,
  `judul_produk` text DEFAULT NULL,
  `deskripsi_produk` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_skala_dampak`
--

INSERT INTO `rmtb_skala_dampak` (`id`, `ranking`, `judul_proses`, `deskripsi_proses`, `judul_produk`, `deskripsi_produk`, `hapus`) VALUES
(1, '10', 'Berbahaya tanpa peringatan', 'Kegagalan sistem yang menghasilkan efek sangat berbahaya', 'Gagal memenuhi persyaratan keselamatan dan/atau peraturan', 'Risiko mempengaruhi keselamatan/keamanan penggunaan produk dan/atau melanggar regulasi pemerintah tanpa peringatan.', NULL),
(2, '9', 'Berbahaya dengan peringatan', 'Kegagalan sistem yang menghasilkan efek berbahaya', 'Gagal memenuhi persyaratan keselamatan dan/atau peraturan', 'Risiko mempengaruhi keselamatan/keamanan penggunaan produk dan/atau melanggar regulasi pemerintah dengan peringatan.', NULL),
(3, '8', 'Sangat tinggi', 'Sistem tidak beroperasi', 'Kehilangan atau penurunan fungsi sekunder', 'Kehilangan fungsi utama produk (produk tidak dapat digunakan namun tidak mempengaruhi keselamatan/keamanan penggunaan produk.', NULL),
(4, '7', 'Tinggi', 'Sistem beroperasi tetapi tidak dapat dijalankan secara penuh', 'Kehilangan atau penurunan fungsi sekunder', 'Penurunan fungsi utama (produk dapat digunakan, namun mengalami penurunan kinerja)', NULL),
(5, '6', 'Sedang', 'Sistem beroperasi dan aman tetapi mengalami penurunan kinerja sehingga mempengaruhi keluaran', 'Kehilangan atau penurunan fungsi sekunder', 'Kehilangan fungsi sekunder produk (produk tidak dapat digunakan dan fungsi kenyamanan/kepraktisan juga tidak dapat digunakan.', NULL),
(6, '5', 'Rendah', 'Mengalami penurunan kinerja secara bertahap', 'Kehilangan atau penurunan fungsi sekunder', 'Penurunan fungsi sekunder produk (produk tidak dapat digunakan, tetapi fungsi kenyamanan/kepraktisan tersedia dengan tingkat kinerja yang berkurang).', NULL),
(7, '4', 'Sangat rendah', 'Efek yang kecil pada kinerja sistem', 'Mengganggu', 'Produk dapat digunakan, tetapi penampilan atau mungkin tidak memenuhi harapan, dengan pengguna tidak puas < 75 %', NULL),
(8, '3', 'Kecil', 'Sedikit berpengaruh pada kinerja sistem', 'Mengganggu', 'Produk dapat digunakan, tetapi penampilan atau kualitasnya mungkin tidak memenuhi harapan, dengan pengguna tidak puas < 50 %', NULL),
(9, '2', 'Sangat kecil', 'Efek yang diabaikan pada kinerja sistem', 'Mengganggu', 'Produk dapat digunakan, tetapi penampilan atau kualitasnya tidak terlihat dan mungkin tidak memenuhi harapan, dengan pengguna tidak puas < 25 %', NULL),
(10, '1', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_skala_dampak_laporan`
--

CREATE TABLE `rmtb_skala_dampak_laporan` (
  `id` int(11) NOT NULL,
  `ranking` text DEFAULT NULL,
  `judul_proses` text DEFAULT NULL,
  `deskripsi_proses` text DEFAULT NULL,
  `judul_produk` text DEFAULT NULL,
  `deskripsi_produk` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_skala_dampak_laporan`
--

INSERT INTO `rmtb_skala_dampak_laporan` (`id`, `ranking`, `judul_proses`, `deskripsi_proses`, `judul_produk`, `deskripsi_produk`, `hapus`) VALUES
(1, '10', 'Berbahaya tanpa peringatan', 'Kegagalan sistem yang menghasilkan efek sangat berbahaya', 'Gagal memenuhi persyaratan keselamatan dan/atau peraturan', 'Risiko mempengaruhi keselamatan/keamanan penggunaan produk dan/atau melanggar regulasi pemerintah tanpa peringatan.', NULL),
(2, '9', 'Berbahaya dengan peringatan', 'Kegagalan sistem yang menghasilkan efek berbahaya', 'Gagal memenuhi persyaratan keselamatan dan/atau peraturan', 'Risiko mempengaruhi keselamatan/keamanan penggunaan produk dan/atau melanggar regulasi pemerintah dengan peringatan.', NULL),
(3, '8', 'Sangat tinggi', 'Sistem tidak beroperasi', 'Kehilangan atau penurunan fungsi sekunder', 'Kehilangan fungsi utama produk (produk tidak dapat digunakan namun tidak mempengaruhi keselamatan/keamanan penggunaan produk.', NULL),
(4, '7', 'Tinggi', 'Sistem beroperasi tetapi tidak dapat dijalankan secara penuh', 'Kehilangan atau penurunan fungsi sekunder', 'Penurunan fungsi utama (produk dapat digunakan, namun mengalami penurunan kinerja)', NULL),
(5, '6', 'Sedang', 'Sistem beroperasi dan aman tetapi mengalami penurunan kinerja sehingga mempengaruhi keluaran', 'Kehilangan atau penurunan fungsi sekunder', 'Kehilangan fungsi sekunder produk (produk tidak dapat digunakan dan fungsi kenyamanan/kepraktisan juga tidak dapat digunakan.', NULL),
(6, '5', 'Rendah', 'Mengalami penurunan kinerja secara bertahap', 'Kehilangan atau penurunan fungsi sekunder', 'Penurunan fungsi sekunder produk (produk tidak dapat digunakan, tetapi fungsi kenyamanan/kepraktisan tersedia dengan tingkat kinerja yang berkurang).', NULL),
(7, '4', 'Sangat rendah', 'Efek yang kecil pada kinerja sistem', 'Mengganggu', 'Produk dapat digunakan, tetapi penampilan atau mungkin tidak memenuhi harapan, dengan pengguna tidak puas < 75 %', NULL),
(8, '3', 'Kecil', 'Sedikit berpengaruh pada kinerja sistem', 'Mengganggu', 'Produk dapat digunakan, tetapi penampilan atau kualitasnya mungkin tidak memenuhi harapan, dengan pengguna tidak puas < 50 %', NULL),
(9, '2', 'Sangat kecil', 'Efek yang diabaikan pada kinerja sistem', 'Mengganggu', 'Produk dapat digunakan, tetapi penampilan atau kualitasnya tidak terlihat dan mungkin tidak memenuhi harapan, dengan pengguna tidak puas < 25 %', NULL),
(10, '1', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_skala_metode_deteksi`
--

CREATE TABLE `rmtb_skala_metode_deteksi` (
  `id` int(11) NOT NULL,
  `ranking` text DEFAULT NULL,
  `judul_proses` text DEFAULT NULL,
  `deskripsi_proses` text DEFAULT NULL,
  `judul_produk` text DEFAULT NULL,
  `deskripsi_produk` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_skala_metode_deteksi`
--

INSERT INTO `rmtb_skala_metode_deteksi` (`id`, `ranking`, `judul_proses`, `deskripsi_proses`, `judul_produk`, `deskripsi_produk`, `hapus`) VALUES
(1, '10', 'Absolutely impossible', 'Sistem kontrol akan selalu tidak mampu untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan.', 'Absolutely impossible', 'Tidak ada sistem pengendalian; tidak bisa dideteksi atau dianalisis', NULL),
(2, '9', 'Very Remote', 'Sistem kontrol memiliki kemungkinan “very remote” untuk mampu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Very Remote', 'Analisis desain/kendali deteksi memiliki kemampuan deteksi yang lemah.', NULL),
(3, '8', 'Remote', 'Sistem kontrol memiliki kemungkinan “remote” untuk mampu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Remote', 'Verifikasi produk/validasi dilakukan setelah fase “freeze product” atau produk diluncurkan  melalui uji lolos/gagal', NULL),
(4, '7', 'Very Low', 'Sistem kontrol memiliki kemungkinan sangat rendah untuk mampu mendateksi penyebab potensial kegagalan dan mode kegagalan. ', 'Very Low', 'Verifikasi produk/validasi dilakukan setelah fase “freeze product” atau produk diluncurkan melalui uji merusak', NULL),
(5, '6', 'Low', 'Sistem kontrol memiliki kemungkinan rendah untuk mampu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Low', 'Verifikasi produk/validasi dilakukan setelah fase “freeze product” atau produk diluncurkan  melalui uji degradasi', NULL),
(6, '5', 'Moderate', 'Sistem kontrol memiliki kemungkinan “moderate” untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Moderate', 'Validasi produk (uji reliabilitas, pengembangan, atau uji validasi) sudah dilakukan melalui uji lolos/gagal', NULL),
(7, '4', 'Moderately High', 'Sistem kontrol memiliki kemungkinan “moderately high” untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Moderately High', 'Validasi produk (uji reliabilitas, pengembangan, atau uji validasi) sudah dilakukan melalui uji merusak', NULL),
(8, '3', 'High', 'Sistem kontrol memiliki kemungkinantinggi untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'High', 'Validasi produk (uji reliabilitas, pengembangan, atau uji validasi) sudah dilakukan melalui uji degrasi', NULL),
(9, '2', 'Very High', 'Sistem kontrol memiliki kemungkian sangat tinggi untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Very High', 'Analisis desain/kendali deteksi memiliki kemampuan deteksi kuat', NULL),
(10, '1', 'Almost Certain', 'Sistem kontrol akan selalu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan.', 'Almost Certain', 'Risiko tidak bisa muncul karena sudah dicegah melalui desain produk terstandar, praktek terbaik atau bahan umum', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_skala_metode_deteksi_laporan`
--

CREATE TABLE `rmtb_skala_metode_deteksi_laporan` (
  `id` int(11) NOT NULL,
  `ranking` text DEFAULT NULL,
  `judul_proses` text DEFAULT NULL,
  `deskripsi_proses` text DEFAULT NULL,
  `judul_produk` text DEFAULT NULL,
  `deskripsi_produk` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_skala_metode_deteksi_laporan`
--

INSERT INTO `rmtb_skala_metode_deteksi_laporan` (`id`, `ranking`, `judul_proses`, `deskripsi_proses`, `judul_produk`, `deskripsi_produk`, `hapus`) VALUES
(1, '10', 'Absolutely impossible', 'Sistem kontrol akan selalu tidak mampu untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan.', 'Absolutely impossible', 'Tidak ada sistem pengendalian; tidak bisa dideteksi atau dianalisis', NULL),
(2, '9', 'Very Remote', 'Sistem kontrol memiliki kemungkinan “very remote” untuk mampu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Very Remote', 'Analisis desain/kendali deteksi memiliki kemampuan deteksi yang lemah.', NULL),
(3, '8', 'Remote', 'Sistem kontrol memiliki kemungkinan “remote” untuk mampu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Remote', 'Verifikasi produk/validasi dilakukan setelah fase “freeze product” atau produk diluncurkan  melalui uji lolos/gagal', NULL),
(4, '7', 'Very Low', 'Sistem kontrol memiliki kemungkinan sangat rendah untuk mampu mendateksi penyebab potensial kegagalan dan mode kegagalan. ', 'Very Low', 'Verifikasi produk/validasi dilakukan setelah fase “freeze product” atau produk diluncurkan melalui uji merusak', NULL),
(5, '6', 'Low', 'Sistem kontrol memiliki kemungkinan rendah untuk mampu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Low', 'Verifikasi produk/validasi dilakukan setelah fase “freeze product” atau produk diluncurkan  melalui uji degradasi', NULL),
(6, '5', 'Moderate', 'Sistem kontrol memiliki kemungkinan “moderate” untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Moderate', 'Validasi produk (uji reliabilitas, pengembangan, atau uji validasi) sudah dilakukan melalui uji lolos/gagal', NULL),
(7, '4', 'Moderately High', 'Sistem kontrol memiliki kemungkinan “moderately high” untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Moderately High', 'Validasi produk (uji reliabilitas, pengembangan, atau uji validasi) sudah dilakukan melalui uji merusak', NULL),
(8, '3', 'High', 'Sistem kontrol memiliki kemungkinantinggi untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'High', 'Validasi produk (uji reliabilitas, pengembangan, atau uji validasi) sudah dilakukan melalui uji degrasi', NULL),
(9, '2', 'Very High', 'Sistem kontrol memiliki kemungkian sangat tinggi untuk mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan. ', 'Very High', 'Analisis desain/kendali deteksi memiliki kemampuan deteksi kuat', NULL),
(10, '1', 'Almost Certain', 'Sistem kontrol akan selalu mendeteksi penyebab potensial atau mekanisme kegagalan dan mode kegagalan.', 'Almost Certain', 'Risiko tidak bisa muncul karena sudah dicegah melalui desain produk terstandar, praktek terbaik atau bahan umum', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_skala_penyebab`
--

CREATE TABLE `rmtb_skala_penyebab` (
  `id` int(11) NOT NULL,
  `ranking` text DEFAULT NULL,
  `judul_proses` text DEFAULT NULL,
  `deskripsi_proses` text DEFAULT NULL,
  `judul_produk` text DEFAULT NULL,
  `deskripsi_produk` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_skala_penyebab`
--

INSERT INTO `rmtb_skala_penyebab` (`id`, `ranking`, `judul_proses`, `deskripsi_proses`, `judul_produk`, `deskripsi_produk`, `hapus`) VALUES
(1, '10', 'Very High', '>= 100 per seribu atau  >= 1 dalam 10', 'Very High', '>= 100 per seribu atau  >= 1 dalam 10', NULL),
(2, '9', 'High', '50 per seribu atau 1 dalam 20', 'High', '50 per seribu atau 1 dalam 20', NULL),
(3, '8', 'High', '20 per seribu atau 1 dalam 50', 'High', '20 per seribu atau 1 dalam 50', NULL),
(4, '7', 'High', '10 per seribu atau 1 dalam 100', 'High', '10 per seribu atau 1 dalam 100', NULL),
(5, '6', 'Moderate', '2 per seribu atau 1 dalam 500', 'Moderate', '2 per seribu atau 1 dalam 500', NULL),
(6, '5', 'Moderate', '0.5 per seribu atau 1 dalam 2000', 'Moderate', '0.5 per seribu atau 1 dalam 2000', NULL),
(7, '4', 'Moderate', '0.1 per seribu atau 1 dalam 10000', 'Moderate', '0.1 per seribu atau 1 dalam 10000', NULL),
(8, '3', 'Low', '0.01 per seribu atau 1 dalam 100000', 'Low', '0.01 per seribu atau 1 dalam 100000', NULL),
(9, '2', 'Low', '<= 0.001 per seribu atau 1 dalam 100.000', 'Low', '<= 0.001 per seribu atau 1 dalam 100.000', NULL),
(10, '1', 'Very Low', 'Kegagalan dihilangkan melalui pengendalian preventif', 'Very Low', 'Kegagalan dihilangkan melalui pengendalian preventif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_skala_penyebab_laporan`
--

CREATE TABLE `rmtb_skala_penyebab_laporan` (
  `id` int(11) NOT NULL,
  `ranking` text DEFAULT NULL,
  `judul_proses` text DEFAULT NULL,
  `deskripsi_proses` text DEFAULT NULL,
  `judul_produk` text DEFAULT NULL,
  `deskripsi_produk` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_skala_penyebab_laporan`
--

INSERT INTO `rmtb_skala_penyebab_laporan` (`id`, `ranking`, `judul_proses`, `deskripsi_proses`, `judul_produk`, `deskripsi_produk`, `hapus`) VALUES
(1, '10', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(2, '9', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(3, '8', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(4, '7', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(5, '6', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(6, '5', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(7, '4', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(8, '3', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(9, '2', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL),
(10, '1', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek', 'Tidak ada efek yang dapat dirasakan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_sod_produk`
--

CREATE TABLE `rmtb_sod_produk` (
  `id` int(11) NOT NULL,
  `id_risiko_produk` text DEFAULT NULL,
  `dampak` text DEFAULT NULL,
  `penyebab` text DEFAULT NULL,
  `metode_deteksi` text DEFAULT NULL,
  `ave_s` text DEFAULT NULL,
  `ave_o` text DEFAULT NULL,
  `ave_d` text DEFAULT NULL,
  `rpn` text DEFAULT NULL,
  `frpn` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `usulan_tindakan` text DEFAULT NULL,
  `penanggung_jawab` text DEFAULT NULL,
  `tanggal_target` text DEFAULT NULL,
  `tindakan_perbaikan` text DEFAULT NULL,
  `ave_s_eval` text DEFAULT NULL,
  `ave_o_eval` text DEFAULT NULL,
  `ave_d_eval` text DEFAULT NULL,
  `frpn_eval` text DEFAULT NULL,
  `keterangan_eval` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_sod_produk`
--

INSERT INTO `rmtb_sod_produk` (`id`, `id_risiko_produk`, `dampak`, `penyebab`, `metode_deteksi`, `ave_s`, `ave_o`, `ave_d`, `rpn`, `frpn`, `keterangan`, `usulan_tindakan`, `penanggung_jawab`, `tanggal_target`, `tindakan_perbaikan`, `ave_s_eval`, `ave_o_eval`, `ave_d_eval`, `frpn_eval`, `keterangan_eval`, `hapus`) VALUES
(1, '3', 'Penulisan ulang daftar rekaman (rework)', 'Proses input terburu-buru', 'Verifikasi daftar rekaman', '4.9', '7', '9', '308.7', '559.06', 'Hindari', 'usulan tindakan produk 1', 'penanggung jawab produk', '2023-11-01', 'tindakan perbaikan produk 1', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '4', 'Ledakan pada tangka dan pencemaran laut', 'korosi', 'Pengamatan visual secara langsung', '8', '2.83', '2', '45.28', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '5', 'Pembakaran pada mesin menjadi menurun', 'Bahan bakar kotor', 'Pengamatan visual secara langsung dan alarm pada indikator', '5', '4.24', '2.45', '51.94', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '6', 'Penurunan kinerja mesin', 'Seal pada pompa bocor/rusak ', 'Pengecekan pressure gauge dan pembongkaran ', '4.47', '2', '4.24', '37.91', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '7', 'Ledakan pada tangki dan pencemaran laut', 'korosi', 'Pengamatan visual secara langsung', '6.95', '4.12', '5.19', '148.61', '547.9', 'Mitigasi', 'Menerapkan SOP penanganan ledakan tangki dan pencemaran laut', 'Manajemen organisasi', '2024-11-30', '1. Melakukan pengamanan wilayah terdampak ledakan 2. Melakukan evakuasi 3. Melakukan klaim asuransi ', '6.95', '3.11', '1.26', '395.75', 'Mitigasi', NULL),
(6, '8', 'pembakaran pada mesin menjadi menurun', 'bahan bakar kotor', 'pengamatan visual secara langsung dan alarm pada indikator', '4.82', '6.95', '3.78', '126.63', '592.23', 'Mitigasi', 'Menerapkan SOP pemeriksaan berkala pada mesin dan bahan bakar kapal', 'Teknisi kapal', '2024-10-12', '1. Melakukan pembersihan tangki bahan bakar 2. pengecekan kualitas bahan bakar saat pembelian', '4.58', '3.63', '1.59', '440.2', 'Mitigasi', NULL),
(7, '9', 'penurunan kinerja mesin', 'seal pada pompa bocor/rusak', 'pengecekan pressure gauge dan pembongkaran', '6.95', '6.95', '4.76', '229.92', '662.96', 'Hindari', 'Menerapkan SOP pemeliharaan alat secara berkala pada kapal', 'Teknisi kapal', '2024-09-30', '1. penggantian seal pompa 2. pengecekan rutin pressure gauge', '4.58', '2.52', '1', '290.64', 'Abaikan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_sod_proses`
--

CREATE TABLE `rmtb_sod_proses` (
  `id` int(11) NOT NULL,
  `id_risiko_proses` text DEFAULT NULL,
  `dampak` text DEFAULT NULL,
  `penyebab` text DEFAULT NULL,
  `metode_deteksi` text DEFAULT NULL,
  `ave_s` text DEFAULT NULL,
  `ave_o` text DEFAULT NULL,
  `ave_d` text DEFAULT NULL,
  `rpn` text DEFAULT NULL,
  `frpn` text DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `usulan_tindakan` text DEFAULT NULL,
  `penanggung_jawab` text DEFAULT NULL,
  `tanggal_target` text DEFAULT NULL,
  `tindakan_perbaikan` text DEFAULT NULL,
  `ave_s_eval` text DEFAULT NULL,
  `ave_o_eval` text DEFAULT NULL,
  `ave_d_eval` text DEFAULT NULL,
  `frpn_eval` text DEFAULT NULL,
  `keterangan_eval` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_sod_proses`
--

INSERT INTO `rmtb_sod_proses` (`id`, `id_risiko_proses`, `dampak`, `penyebab`, `metode_deteksi`, `ave_s`, `ave_o`, `ave_d`, `rpn`, `frpn`, `keterangan`, `usulan_tindakan`, `penanggung_jawab`, `tanggal_target`, `tindakan_perbaikan`, `ave_s_eval`, `ave_o_eval`, `ave_d_eval`, `frpn_eval`, `keterangan_eval`, `hapus`) VALUES
(1, '3', 'Penulisan ulang daftar rekaman (rework)', 'Proses input terburu-buru', 'Verifikasi daftar rekaman', '4', '3', '4.9', '58.8', '490.83', 'Hindari', 'Usulan tindakan', 'penanggung jawab', '2023-11-30', 'tindakan perbaikan', '0', '0', '0', '0', 'Abaikan', NULL),
(2, '4', 'dampak identifikasi risiko 2', 'penyebab identifikasi risiko 2', 'deteksi identifikasi risiko 2', '3', '7', '5', '105', '629.05', 'Hindari', NULL, NULL, NULL, NULL, '0', '0', '0', '0', 'Abaikan', NULL),
(3, '3', 'dampak identifikasi risiko 1', 'penyebab identifikasi risiko 1', 'deteksi identifikasi risiko 1', '1', '1', '1', '1', '133', 'Abaikan', NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'Abaikan', NULL),
(4, '5', 'dampak 1 risiko 1 proses 2', 'penyebab 1 risiko 1 proses 2', 'deteksi 1 risiko 1 proses 2', '4', '3', '2', '24', '431.16', 'Hindari', NULL, NULL, NULL, NULL, '0', '0', '0', '0', 'Abaikan', NULL),
(5, '4', 'dampak proses 1 risiko 2', 'penyebab proses 1 risiko 2', 'deteksi proses 1 risiko 2', '1', '1', '1', '1', '133', 'Abaikan', NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'Abaikan', NULL),
(6, '6', 'dampak 1 risiko 2 proses 2', 'penyebab 1 risiko 2 proses 2', 'deteksi 1 risiko 2 proses 2', '1', '1', '1', '1', '133', 'Abaikan', NULL, NULL, NULL, NULL, '1', '1', '1', '0', 'Abaikan', NULL),
(7, '5', 'dampak 2 risiko 1 proses 2', 'penyebab 2 risiko 1 proses 2', 'deteksi 2 risiko 1 proses 2', '4', '5', '6', '120', '552.91', 'Hindari', NULL, NULL, NULL, NULL, '0', '0', '0', '0', 'Abaikan', NULL),
(8, '11', 'Pengukuran tegangan untuk perlakuan sampel uji tidak dapat dilakukan', 'Fuse putus', 'Monitor mati', '7.94', '8', '6.93', '440.19', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '11', 'Pengukuran tegangan untuk perlakuan sampel uji tidak dapat dilakukan', 'overload', 'Monitor mati', '4.9', '4.9', '4.9', '117.65', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '12', 'Pengaturan tegangan tidak dapat dilakukan, hasil pengujian tidak valid', 'Overload', 'Tegangan output tidak keluar', '5.48', '3.46', '4.58', '86.84', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '13', 'Kenaikan suhu titik uji tidak dapat dipantau, pengujian ditunda	', 'Gagal koneksi ke  komputer untuk akuisisi', 'Kenaikan suhu titik uji tidak dapat dipantau, pengujian ditunda	', '5.92', '3.16', '3.46', '64.73', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '13', 'Kenaikan suhu titik uji tidak dapat dipantau, pengujian ditunda', 'Modul tidak berfungsi	', 'Layar mati, file tidak bisa disimpan', '5.48', '2', '3.46', '37.92', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '13', 'Kenaikan suhu titik uji tidak dapat dipantau, pengujian ditunda', 'Memori penuh sehingga data tidak tersimpan', 'Layar mati, file tidak bisa disimpan', '4', '4.9', '3.46', '67.82', '0', 'Abaikan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '15', 'Pengukuran tegangan untuk perlakukan sampel uji tidak dapat dilakukan ', 'fuse putus', 'monitor mati', '3.63', '1.26', '1.59', '7.27', '294.02', 'Abaikan', NULL, NULL, NULL, NULL, '0', '0', '0', '133', 'Abaikan', NULL),
(16, '15', 'Pengukuran tegangan untuk perlakuan sampel uji tidak dapat dilakukan ', 'overload', 'monitor mati', '5.85', '7.23', '3.11', '131.54', '633.85', 'Hindari', 'Menerapkan SOP pemeliharaan alat secara berkala', 'manajer laboratorium ', '2024-09-27', 'Perbaikan power meter', '3.17', '3', '1.59', '371.04', 'Mitigasi', NULL),
(18, '16', 'pengaturan tegangan tidak dapat dilakukan, hasil pengujian tidak valid', 'overload', 'tegangan output tidak keluar', '3.83', '2.88', '3.78', '41.69', '432.67', 'Mitigasi', 'Menerapkan SOP pemeliharaan alat secara berkala', 'manajer laboratorium ', '2024-09-25', 'Perbaikan power meter', '3.3', '1.82', '2.29', '337.72', 'Mitigasi', NULL),
(19, '17', 'Kenaikan suhu titik uji tidak dapat dipantau sehingga pengujian tertunda ', 'gagal koneksi ke komputer untuk akuisisi', 'Layar mati, file tidak bisa  disimpan', '5.85', '5.01', '5.19', '152.11', '578.02', 'Mitigasi', 'Menerapkan SOP pemeliharaan alat secara berkala', 'manajer laboratorium ', '2024-09-30', 'Perbaikan data logger', '3.3', '2.52', '1.59', '342.74', 'Mitigasi', NULL),
(20, '17', 'Kenaikan suhu titik uji tidak dapat dipantau sehingga pengujian tertunda ', 'modul tidak berfungsi', 'Layar mati, file tidak bisa  disimpan', '7.23', '6.26', '4.16', '188.28', '642.87', 'Hindari', 'Menerapkan SOP pemeliharaan alat secara berkala', 'manajer laboratorium ', '2024-09-30', 'Perbaikan data logger', '3.63', '1.26', '2', '319.22', 'Mitigasi', NULL),
(21, '17', 'Kenaikan suhu titik uji tidak dapat dipantau sehingga pengujian tertunda ', 'memori penuh sehingga data tidak tersimpan', 'Layar mati, file tidak bisa  disimpan', '3.91', '1.82', '1.59', '11.31', '320.85', 'Mitigasi', 'Menerapkan SOP pemeliharaan alat secara berkala', 'manajer laboratorium ', '2024-09-26', 'Mengganti memori penyimpan data', '2.88', '2.88', '1.26', '330.71', 'Mitigasi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rmtb_users`
--

CREATE TABLE `rmtb_users` (
  `id` int(11) NOT NULL,
  `email` text DEFAULT NULL,
  `level` text DEFAULT NULL,
  `nama` text DEFAULT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `penilai_proses` text DEFAULT NULL,
  `penilai_produk` text DEFAULT NULL,
  `hapus` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rmtb_users`
--

INSERT INTO `rmtb_users` (`id`, `email`, `level`, `nama`, `username`, `password`, `penilai_proses`, `penilai_produk`, `hapus`) VALUES
(1, 'analis@brin.go.id', 'analis', 'Nama Lengkap Analis', 'analis', '6f7cf810b9252805f195bcf981156af6', NULL, NULL, NULL),
(2, 'manajemen@brin.go.id', 'manajemen', 'Nama Lengkap Manajemen', 'manajemen', '19b51f1cbb6146adcacbce46d5bdc3f2', NULL, NULL, NULL),
(3, 'penilai1@brin.go.id', 'penilai', 'Penilai 1', 'penilai1', 'a32440a7a6af86edafe2593d3b0d3f8f', '1', '1', NULL),
(4, 'penilai2@brin.go.id', 'penilai', 'Penilai 2', 'penilai2', '503750018cae25ecc8b0d1e7a87e519b', '1', '1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rmtb_dampak_produk`
--
ALTER TABLE `rmtb_dampak_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_dampak_proses`
--
ALTER TABLE `rmtb_dampak_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_metode_deteksi_produk`
--
ALTER TABLE `rmtb_metode_deteksi_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_metode_deteksi_proses`
--
ALTER TABLE `rmtb_metode_deteksi_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_pembobotan_sod`
--
ALTER TABLE `rmtb_pembobotan_sod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_penilaian_produk`
--
ALTER TABLE `rmtb_penilaian_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_penilaian_proses`
--
ALTER TABLE `rmtb_penilaian_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_penyebab_produk`
--
ALTER TABLE `rmtb_penyebab_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_penyebab_proses`
--
ALTER TABLE `rmtb_penyebab_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_produk`
--
ALTER TABLE `rmtb_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_proses`
--
ALTER TABLE `rmtb_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_risiko_produk`
--
ALTER TABLE `rmtb_risiko_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_risiko_proses`
--
ALTER TABLE `rmtb_risiko_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_riwayat_laporan_awal`
--
ALTER TABLE `rmtb_riwayat_laporan_awal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_riwayat_laporan_mitigasi`
--
ALTER TABLE `rmtb_riwayat_laporan_mitigasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_riwayat_laporan_total`
--
ALTER TABLE `rmtb_riwayat_laporan_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_selera_risiko`
--
ALTER TABLE `rmtb_selera_risiko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_selera_risiko_laporan`
--
ALTER TABLE `rmtb_selera_risiko_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_skala_dampak`
--
ALTER TABLE `rmtb_skala_dampak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_skala_dampak_laporan`
--
ALTER TABLE `rmtb_skala_dampak_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_skala_metode_deteksi`
--
ALTER TABLE `rmtb_skala_metode_deteksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_skala_metode_deteksi_laporan`
--
ALTER TABLE `rmtb_skala_metode_deteksi_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_skala_penyebab`
--
ALTER TABLE `rmtb_skala_penyebab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_skala_penyebab_laporan`
--
ALTER TABLE `rmtb_skala_penyebab_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_sod_produk`
--
ALTER TABLE `rmtb_sod_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_sod_proses`
--
ALTER TABLE `rmtb_sod_proses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtb_users`
--
ALTER TABLE `rmtb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rmtb_dampak_produk`
--
ALTER TABLE `rmtb_dampak_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_dampak_proses`
--
ALTER TABLE `rmtb_dampak_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmtb_metode_deteksi_produk`
--
ALTER TABLE `rmtb_metode_deteksi_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_metode_deteksi_proses`
--
ALTER TABLE `rmtb_metode_deteksi_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rmtb_pembobotan_sod`
--
ALTER TABLE `rmtb_pembobotan_sod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_penilaian_produk`
--
ALTER TABLE `rmtb_penilaian_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rmtb_penilaian_proses`
--
ALTER TABLE `rmtb_penilaian_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `rmtb_penyebab_produk`
--
ALTER TABLE `rmtb_penyebab_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_penyebab_proses`
--
ALTER TABLE `rmtb_penyebab_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_produk`
--
ALTER TABLE `rmtb_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rmtb_proses`
--
ALTER TABLE `rmtb_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rmtb_risiko_produk`
--
ALTER TABLE `rmtb_risiko_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rmtb_risiko_proses`
--
ALTER TABLE `rmtb_risiko_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rmtb_riwayat_laporan_awal`
--
ALTER TABLE `rmtb_riwayat_laporan_awal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_riwayat_laporan_mitigasi`
--
ALTER TABLE `rmtb_riwayat_laporan_mitigasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rmtb_riwayat_laporan_total`
--
ALTER TABLE `rmtb_riwayat_laporan_total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rmtb_selera_risiko`
--
ALTER TABLE `rmtb_selera_risiko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_selera_risiko_laporan`
--
ALTER TABLE `rmtb_selera_risiko_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rmtb_skala_dampak`
--
ALTER TABLE `rmtb_skala_dampak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rmtb_skala_dampak_laporan`
--
ALTER TABLE `rmtb_skala_dampak_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rmtb_skala_metode_deteksi`
--
ALTER TABLE `rmtb_skala_metode_deteksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rmtb_skala_metode_deteksi_laporan`
--
ALTER TABLE `rmtb_skala_metode_deteksi_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rmtb_skala_penyebab`
--
ALTER TABLE `rmtb_skala_penyebab`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rmtb_skala_penyebab_laporan`
--
ALTER TABLE `rmtb_skala_penyebab_laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rmtb_sod_produk`
--
ALTER TABLE `rmtb_sod_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rmtb_sod_proses`
--
ALTER TABLE `rmtb_sod_proses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rmtb_users`
--
ALTER TABLE `rmtb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
