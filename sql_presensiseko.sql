-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2025 at 09:10 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_presensiseko`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `kode_cabang` char(3) NOT NULL,
  `nama_cabang` varchar(50) NOT NULL,
  `alamat_cabang` varchar(100) NOT NULL,
  `telepon_cabang` varchar(13) NOT NULL,
  `lokasi_cabang` varchar(255) NOT NULL,
  `radius_cabang` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`kode_cabang`, `nama_cabang`, `alamat_cabang`, `telepon_cabang`, `lokasi_cabang`, `radius_cabang`, `created_at`, `updated_at`) VALUES
('KG1', 'KANTOR GURU', 'SMK MUTU WONOSOBO', '085191312197', '-7.365704, 109.896836', 30, '2025-06-25 15:47:31', '2025-06-25 16:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `kode_cuti` char(3) NOT NULL,
  `jenis_cuti` varchar(255) NOT NULL,
  `jumlah_hari` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`kode_cuti`, `jenis_cuti`, `jumlah_hari`, `created_at`, `updated_at`) VALUES
('C01', 'Tahunan', 12, '2024-06-15 15:03:56', '2024-06-15 15:03:56'),
('C02', 'Melahirkan', 90, '2024-06-15 15:03:56', '2024-06-15 15:03:56'),
('C03', 'Khusus', 2, '2024-06-15 15:03:56', '2024-10-14 20:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dari` smallint(6) NOT NULL,
  `sampai` smallint(6) NOT NULL,
  `denda` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id`, `dari`, `sampai`, `denda`, `created_at`, `updated_at`) VALUES
(2, 1, 5, 5000, '2025-03-12 22:15:38', '2025-03-12 22:15:38'),
(3, 6, 10, 10000, '2025-03-12 22:15:45', '2025-03-12 22:15:45'),
(4, 11, 15, 15000, '2025-03-12 22:16:26', '2025-03-12 22:16:26'),
(5, 15, 59, 25000, '2025-03-12 22:16:39', '2025-03-12 22:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `kode_dept` char(3) NOT NULL,
  `nama_dept` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`kode_dept`, `nama_dept`, `created_at`, `updated_at`) VALUES
('GR', 'Guru', '2024-06-15 14:24:09', '2025-06-25 15:51:17'),
('KRY', 'Karyawan', '2024-04-27 21:06:16', '2025-06-25 15:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `detailtunjangans`
--

CREATE TABLE `detailtunjangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur`
--

CREATE TABLE `hari_libur` (
  `kode_libur` char(7) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_cabang` char(3) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `hari_libur_detail`
--

CREATE TABLE `hari_libur_detail` (
  `kode_libur` char(7) NOT NULL,
  `nik` char(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kode_jabatan` char(3) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kode_jabatan`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
('GR', 'GURU', '2025-06-25 15:52:16', '2025-06-25 15:52:16'),
('KY', 'KARYAWAN', '2025-06-25 15:52:28', '2025-06-25 15:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_tunjangan`
--

CREATE TABLE `jenis_tunjangan` (
  `kode_jenis_tunjangan` char(4) NOT NULL,
  `jenis_tunjangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_tunjangan`
--

INSERT INTO `jenis_tunjangan` (`kode_jenis_tunjangan`, `jenis_tunjangan`, `created_at`, `updated_at`) VALUES
('TJ01', 'Makan', '2025-05-29 15:08:17', '2025-05-30 15:57:12'),
('TJ02', 'Jabatan', '2025-05-29 15:53:13', '2025-05-30 15:57:16'),
('TJ03', 'Istri', '2025-05-30 15:57:22', '2025-05-30 15:57:22'),
('TJ04', 'Tanggung Jawab', '2025-05-30 16:22:23', '2025-05-30 16:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` char(9) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `kode_status_kawin` char(2) DEFAULT NULL,
  `pendidikan_terakhir` varchar(4) DEFAULT NULL,
  `kode_cabang` char(3) NOT NULL,
  `kode_dept` char(3) NOT NULL,
  `kode_jabatan` char(3) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status_karyawan` char(1) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `kode_jadwal` char(5) DEFAULT NULL,
  `pin` smallint(6) DEFAULT NULL,
  `tanggal_nonaktif` date DEFAULT NULL,
  `tanggal_off_gaji` date DEFAULT NULL,
  `lock_location` char(1) NOT NULL,
  `lock_jam_kerja` char(1) NOT NULL DEFAULT '1',
  `status_aktif_karyawan` char(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `no_ktp`, `nama_karyawan`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_hp`, `jenis_kelamin`, `kode_status_kawin`, `pendidikan_terakhir`, `kode_cabang`, `kode_dept`, `kode_jabatan`, `tanggal_masuk`, `status_karyawan`, `foto`, `kode_jadwal`, `pin`, `tanggal_nonaktif`, `tanggal_off_gaji`, `lock_location`, `lock_jam_kerja`, `status_aktif_karyawan`, `password`, `created_at`, `updated_at`) VALUES
('14.22.682', '3307011312970002', 'Ari Setiawan', 'wonosobo', '2025-06-25', 'wadaslintang', '0895422440207', 'L', 'TK', 'D1', 'KG1', 'GR', 'GR', '2025-06-25', 'T', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '$2y$12$rYCr5u9B54OEF9cpU0adJ..9QqQYhitSLdcRTLtjiKnGBQ/XDCvOe', '2025-06-25 16:05:40', '2025-06-25 16:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_bpjskesehatan`
--

CREATE TABLE `karyawan_bpjskesehatan` (
  `kode_bpjs_kesehatan` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_bpjstenagakerja`
--

CREATE TABLE `karyawan_bpjstenagakerja` (
  `kode_bpjs_tk` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_gaji_pokok`
--

CREATE TABLE `karyawan_gaji_pokok` (
  `kode_gaji` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_penyesuaian_gaji`
--

CREATE TABLE `karyawan_penyesuaian_gaji` (
  `kode_penyesuaian_gaji` char(9) NOT NULL,
  `bulan` smallint(6) NOT NULL,
  `tahun` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_penyesuaian_gaji`
--

INSERT INTO `karyawan_penyesuaian_gaji` (`kode_penyesuaian_gaji`, `bulan`, `tahun`, `created_at`, `updated_at`) VALUES
('PYG052025', 5, 2025, '2025-06-08 14:30:22', '2025-06-08 16:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_penyesuaian_gaji_detail`
--

CREATE TABLE `karyawan_penyesuaian_gaji_detail` (
  `kode_penyesuaian_gaji` char(9) NOT NULL,
  `nik` char(9) NOT NULL,
  `penambah` int(11) NOT NULL,
  `pengurang` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_tunjangan`
--

CREATE TABLE `karyawan_tunjangan` (
  `kode_tunjangan` char(7) NOT NULL,
  `nik` char(10) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_tunjangan_detail`
--

CREATE TABLE `karyawan_tunjangan_detail` (
  `kode_tunjangan` char(7) NOT NULL,
  `kode_jenis_tunjangan` char(4) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_wajah`
--

CREATE TABLE `karyawan_wajah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(9) NOT NULL,
  `wajah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `karyawan_wajah`
--

INSERT INTO `karyawan_wajah` (`id`, `nik`, `wajah`, `created_at`, `updated_at`) VALUES
(42, '14.22.682', '1.png', '2025-06-25 16:05:58', '2025-06-25 16:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_13_163827_add_username_field_to_users', 1),
(6, '2024_01_14_065610_create_permission_tables', 1),
(7, '2024_01_15_170203_create_permission_groups_table', 1),
(8, '2024_01_16_081416_add_id_permission_group_to_permissions', 1),
(9, '2024_01_16_082530_add_relation_from_permissions_to_permission_groups', 1),
(10, '2024_04_27_133940_create_karyawans_table', 2),
(11, '2024_04_27_134826_create_cabangs_table', 3),
(12, '2024_04_27_140209_create_departemens_table', 4),
(13, '2024_04_27_140736_create_jabatans_table', 5),
(14, '2024_04_27_141507_crate_table_status_kawin', 6),
(15, '2024_05_25_080125_add_column_to_karyawan', 7),
(16, '2024_06_01_151030_create_relation_karyawan_to_departemen', 8),
(17, '2024_06_15_075718_create_cutis_table', 9),
(19, '2024_12_01_143041_create_jamkerjas_table', 10),
(21, '2024_12_17_221256_create_setjamkerjas_table', 11),
(22, '2024_12_25_141314_create_hariliburs_table', 12),
(23, '2024_12_30_143453_create_detailhariliburs_table', 13),
(24, '2025_01_13_152829_create_setjamkerjabydates_table', 14),
(25, '2025_01_21_074359_create_userkaryawans_table', 15),
(26, '2025_01_22_150849_create_presensis_table', 16),
(27, '2025_01_22_153134_create_setjamkerjabydepts_table', 17),
(28, '2025_01_22_153959_create_detailsetjamkerjabydepts_table', 18),
(29, '2025_01_27_083520_create_izinabsens_table', 19),
(32, '2025_01_28_225208_create_approveizinabsens_table', 20),
(33, '2025_01_29_110840_create_izinsakits_table', 21),
(34, '2025_01_29_235629_create_approveizinsakits_table', 22),
(35, '2025_01_31_052651_create_izincutis_table', 23),
(36, '2025_02_01_221452_create_approveizincutis_table', 24),
(37, '2025_03_01_215021_add_relation_karyawan_jabatan', 25),
(38, '2025_03_10_233534_create_pengaturanumums_table', 26),
(39, '2025_03_12_210910_add_column_periode_laporan', 27),
(40, '2025_03_12_213803_create_dendas_table', 28),
(41, '2025_03_21_070306_create_facerecognitions_table', 29),
(43, '2025_03_24_145610_add_facerecognition', 30),
(44, '2025_03_24_151107_add_cloud_id_token', 31),
(45, '2025_04_28_194528_change_cascade_userskaryawan', 32),
(46, '2025_04_28_195903_change_cascade_harilibur', 32),
(47, '2025_04_28_200136_change_cascade_presensi_jamkerja_bydate', 32),
(48, '2025_04_28_200151_change_cascade_presensi_jamkerja_byday', 32),
(49, '2025_04_28_200326_change_cascade_presensi_izinabsen', 32),
(50, '2025_04_28_200341_change_cascade_presensi_izincuti', 32),
(51, '2025_04_28_200352_change_cascade_presensi_izinsakit', 32),
(52, '2025_04_28_200644_change_cascade_presensi', 32),
(53, '2025_04_28_201020_change_cascase_presensi_izinabsen_approve', 32),
(54, '2025_04_28_201036_change_cascase_presensi_izincuti_approve', 33),
(55, '2025_04_28_201055_change_cascase_presensi_izinsakit_approve', 33),
(56, '2025_04_28_205629_add_logo_and_domain_email_to_pengaturanumums_table', 34),
(57, '2025_05_13_172741_create_sessions_table', 35),
(58, '2025_05_19_200108_add_domian_wa_gateway', 36),
(59, '2025_05_25_182126_create_jobs_table', 37),
(61, '2025_05_28_160332_create_gajipokoks_table', 38),
(63, '2025_05_29_144500_create_jenistunjangans_table', 39),
(64, '2025_05_30_154217_create_tunjangans_table', 40),
(66, '2025_05_30_154419_create_detailtunjangans_table', 41),
(67, '2025_05_31_162620_add_column_batasi_absen_jam_batasi_absen', 42),
(68, '2025_06_06_131732_create_bpjskesehatans_table', 43),
(70, '2025_06_06_144606_create_bpjstenagakerjas_table', 44),
(71, '2025_06_08_140901_create_penyesuaiangajis_table', 45),
(74, '2025_06_08_141250_create_detailpenyesuaiangajis_table', 46),
(75, '2025_06_10_162258_create_wamessages_table', 47),
(76, '2025_06_10_163230_add_column_wa_api_key_to_pengaturan_umum', 48);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan_umum`
--

CREATE TABLE `pengaturan_umum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `total_jam_bulan` int(11) NOT NULL,
  `denda` tinyint(1) NOT NULL DEFAULT 1,
  `face_recognition` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `periode_laporan_dari` smallint(6) NOT NULL,
  `periode_laporan_sampai` smallint(6) NOT NULL,
  `periode_laporan_next_bulan` tinyint(1) NOT NULL,
  `cloud_id` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `domain_email` varchar(255) DEFAULT NULL,
  `domain_wa_gateway` varchar(255) DEFAULT NULL,
  `wa_api_key` varchar(255) NOT NULL,
  `batasi_absen` tinyint(1) NOT NULL DEFAULT 0,
  `batas_jam_absen` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pengaturan_umum`
--

INSERT INTO `pengaturan_umum` (`id`, `nama_perusahaan`, `alamat`, `telepon`, `logo`, `total_jam_bulan`, `denda`, `face_recognition`, `created_at`, `updated_at`, `periode_laporan_dari`, `periode_laporan_sampai`, `periode_laporan_next_bulan`, `cloud_id`, `api_key`, `domain_email`, `domain_wa_gateway`, `wa_api_key`, `batasi_absen`, `batas_jam_absen`) VALUES
(1, 'SMK MUTU WONOSOBO', 'Jl. Kh. Ahmad Dahlan No.6, Tosarirejo, Jaraksari, Kec. Wonosobo, Kab Wonosobo, Jawa Tengah 56311', '085191312197', '1750838900.png', 173, 1, 1, '2025-03-12 21:19:58', '2025-06-25 15:08:20', 21, 20, 1, NULL, NULL, 'adamadifa.com', 'https://wagateway.akademiksmkmutuwsb.shop', 'apiwagatewaysmkmutuwsb', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_permission_group` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `id_permission_group`) VALUES
(1, 'karyawan.index', 'web', '2024-03-14 16:46:35', '2024-03-14 16:46:35', 1),
(2, 'karyawan.create', 'web', '2024-03-14 16:46:44', '2024-03-14 16:46:44', 1),
(3, 'karyawan.edit', 'web', '2024-03-14 16:46:54', '2024-03-14 16:46:54', 1),
(4, 'karyawan.show', 'web', '2024-03-14 16:48:11', '2024-03-14 16:48:11', 1),
(5, 'karyawan.delete', 'web', '2024-03-14 16:48:18', '2024-03-14 16:48:18', 1),
(6, 'departemen.index', 'web', '2024-03-14 16:56:41', '2024-03-14 16:56:41', 2),
(7, 'departemen.create', 'web', '2024-03-14 16:57:08', '2024-03-14 16:57:08', 2),
(8, 'departemen.edit', 'web', '2024-03-14 16:57:16', '2024-03-14 16:57:16', 2),
(9, 'departemen.delete', 'web', '2024-03-14 16:57:32', '2024-03-14 16:57:32', 2),
(10, 'cabang.index', 'web', '2024-03-14 17:12:07', '2024-03-14 17:12:07', 3),
(11, 'cabang.create', 'web', '2024-03-14 17:12:15', '2024-03-14 17:12:15', 3),
(12, 'cabang.edit', 'web', '2024-03-14 17:12:25', '2024-03-14 17:12:25', 3),
(13, 'cabang.delete', 'web', '2024-03-14 17:12:41', '2024-03-14 17:12:41', 3),
(14, 'cuti.index', 'web', '2024-03-14 17:15:53', '2024-03-14 17:15:53', 4),
(15, 'cuti.create', 'web', '2024-03-14 17:16:00', '2024-03-14 17:16:00', 4),
(16, 'cuti.edit', 'web', '2024-03-14 17:16:09', '2024-03-14 17:16:09', 4),
(17, 'cuti.delete', 'web', '2024-03-14 17:16:20', '2024-03-14 17:16:20', 4),
(18, 'presensi.index', 'web', '2024-03-14 17:22:37', '2025-01-22 21:15:52', 10),
(19, 'karyawan.lockunlocklocation', 'web', '2024-05-25 15:39:29', '2024-05-25 15:39:29', 1),
(20, 'karyawan.lockunlockjamkerja', 'web', '2024-05-25 15:39:40', '2024-05-25 15:39:40', 1),
(21, 'karyawan.setjamkerja', 'web', '2024-10-14 20:38:16', '2024-10-14 20:38:16', 1),
(22, 'jamkerja.index', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(23, 'jamkerja.create', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(24, 'jamkerja.edit', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(25, 'jamkerja.show', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(26, 'jamkerja.delete', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(27, 'suratjalancabang.index', 'web', '2024-12-01 21:41:55', '2024-12-01 21:41:55', 6),
(28, 'harilibur.index', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(29, 'harilibur.create', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(30, 'harilibur.edit', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(31, 'harilibur.show', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(32, 'harilibur.delete', 'web', '2024-12-25 21:16:11', '2024-12-25 21:16:11', 7),
(33, 'harilibur.setharilibur', 'web', '2024-12-25 21:44:03', '2024-12-25 21:44:03', 7),
(34, 'users.index', 'web', '2025-01-21 15:02:01', '2025-01-21 15:02:01', 8),
(35, 'users.create', 'web', '2025-01-21 15:02:09', '2025-01-21 15:02:09', 8),
(36, 'users.edit', 'web', '2025-01-21 15:02:20', '2025-01-21 15:02:20', 8),
(37, 'users.delete', 'web', '2025-01-21 15:02:31', '2025-01-21 15:02:31', 8),
(38, 'presensi.create', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10),
(39, 'presensi.edit', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10),
(40, 'presensi.delete', 'web', '2025-01-22 21:14:08', '2025-01-22 21:14:08', 10),
(41, 'jamkerjabydept.index', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(42, 'jamkerjabydept.create', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(43, 'jamkerjabydept.edit', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(44, 'jamkerjabydept.delete', 'web', '2025-01-22 22:42:39', '2025-01-22 22:42:39', 11),
(45, 'izinabsen.index', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(46, 'izinabsen.create', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(47, 'izinabsen.edit', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(48, 'izinabsen.delete', 'web', '2025-01-27 08:40:48', '2025-01-27 08:40:48', 12),
(49, 'izinsakit.index', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(50, 'izinsakit.create', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(51, 'izinsakit.edit', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(52, 'izinsakit.delete', 'web', '2025-01-29 21:10:31', '2025-01-29 21:10:31', 13),
(53, 'izinsakit.approve', 'web', '2025-01-29 21:52:51', '2025-01-29 21:52:51', 13),
(54, 'izincuti.index', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(55, 'izincuti.create', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(56, 'izincuti.edit', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(57, 'izincuti.delete', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(58, 'izincuti.approve', 'web', '2025-02-01 20:20:35', '2025-02-01 20:20:35', 14),
(59, 'izinabsen.approve', 'web', '2025-02-01 22:46:19', '2025-02-01 22:46:19', 12),
(60, 'jabatan.index', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(61, 'jabatan.create', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(62, 'jabatan.edit', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(63, 'jabatan.show', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(64, 'jabatan.delete', 'web', '2025-03-01 21:27:48', '2025-03-01 21:27:48', 15),
(65, 'generalsetting.index', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(66, 'generalsetting.create', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(67, 'generalsetting.edit', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(68, 'generalsetting.show', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(69, 'generalsetting.delete', 'web', '2025-03-12 18:49:24', '2025-03-12 18:49:24', 16),
(70, 'laporan.presensi', 'web', '2025-03-13 00:36:30', '2025-03-13 00:36:30', 17),
(71, 'wagateway.index', 'web', '2025-05-19 20:11:48', '2025-05-19 20:11:48', 18),
(72, 'gajipokok.index', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(73, 'gajipokok.create', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(74, 'gajipokok.edit', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(75, 'gajipokok.show', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(76, 'gajipokok.delete', 'web', '2025-05-28 16:08:43', '2025-05-28 16:08:43', 19),
(77, 'jenistunjangan.index', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(78, 'jenistunjangan.create', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(79, 'jenistunjangan.edit', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(80, 'jenistunjangan.show', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(81, 'jenistunjangan.delete', 'web', '2025-05-29 14:48:28', '2025-05-29 14:48:28', 20),
(82, 'tunjangan.index', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(83, 'tunjangan.create', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(84, 'tunjangan.edit', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(85, 'tunjangan.show', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(86, 'tunjangan.delete', 'web', '2025-05-30 15:47:12', '2025-05-30 15:47:12', 21),
(87, 'bpjskesehatan.index', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(88, 'bpjskesehatan.create', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(89, 'bpjskesehatan.edit', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(90, 'bpjskesehatan.show', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(91, 'bpjskesehatan.delete', 'web', '2025-06-06 13:20:52', '2025-06-06 13:20:52', 22),
(92, 'bpjstenagakerja.index', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(93, 'bpjstenagakerja.create', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(94, 'bpjstenagakerja.edit', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(95, 'bpjstenagakerja.show', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(96, 'bpjstenagakerja.delete', 'web', '2025-06-06 14:48:32', '2025-06-06 14:48:32', 23),
(97, 'penyesuaiangaji.index', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(98, 'penyesuaiangaji.create', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(99, 'penyesuaiangaji.edit', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(100, 'penyesuaiangaji.show', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24),
(101, 'penyesuaiangaji.delete', 'web', '2025-06-08 14:15:37', '2025-06-08 14:15:37', 24);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Karyawan', '2024-03-14 16:46:22', '2024-03-14 16:46:22'),
(2, 'Departemen', '2024-03-14 16:55:53', '2024-03-14 16:55:53'),
(3, 'Cabang', '2024-03-14 17:09:23', '2024-03-14 17:09:23'),
(4, 'Cuti', '2024-03-14 17:15:40', '2024-03-14 17:15:40'),
(5, 'Presensi', '2024-03-14 17:22:00', '2024-03-14 17:22:00'),
(6, 'Jam Kerja', '2024-12-01 21:41:55', '2024-12-01 21:41:55'),
(7, 'Haril Libur', '2024-12-25 21:16:11', '2024-12-25 21:16:11'),
(8, 'User', '2025-01-21 15:01:51', '2025-01-21 15:01:51'),
(10, 'Presensi', '2025-01-22 21:14:08', '2025-01-22 21:14:08'),
(11, 'Jam Kerja Departemen', '2025-01-22 22:42:39', '2025-01-22 22:42:39'),
(12, 'Izin Absen', '2025-01-27 08:40:47', '2025-01-27 08:40:47'),
(13, 'Izin Sakit', '2025-01-29 21:10:31', '2025-01-29 21:10:31'),
(14, 'Izin Cuti', '2025-02-01 20:20:35', '2025-02-01 20:20:35'),
(15, 'Jabatan', '2025-03-01 21:27:48', '2025-03-01 21:27:48'),
(16, 'General Setting', '2025-03-12 18:49:24', '2025-03-12 18:49:24'),
(17, 'Laporan', '2025-03-13 00:36:30', '2025-03-13 00:36:30'),
(18, 'WA Gateway', '2025-05-19 20:11:48', '2025-05-19 20:11:48'),
(19, 'Gaji Pokok', '2025-05-28 16:08:43', '2025-05-28 16:08:43'),
(20, 'Jenis Tunjangan', '2025-05-29 14:48:28', '2025-05-29 14:48:28'),
(21, 'Tunjangan', '2025-05-30 15:47:12', '2025-05-30 15:47:12'),
(22, 'Bpjs Kesehatan', '2025-06-06 13:20:52', '2025-06-06 13:20:52'),
(23, 'Bpjs Tenaga Kerja', '2025-06-06 14:48:31', '2025-06-06 14:48:31'),
(24, 'Penyesuaian Gaji', '2025-06-08 14:15:37', '2025-06-08 14:15:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_in` datetime DEFAULT NULL,
  `jam_out` datetime DEFAULT NULL,
  `foto_in` varchar(255) DEFAULT NULL,
  `foto_out` varchar(255) DEFAULT NULL,
  `lokasi_in` varchar(255) DEFAULT NULL,
  `lokasi_out` varchar(255) DEFAULT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinabsen`
--

CREATE TABLE `presensi_izinabsen` (
  `kode_izin` char(255) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `nik` char(9) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinabsen_approve`
--

CREATE TABLE `presensi_izinabsen_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izincuti`
--

CREATE TABLE `presensi_izincuti` (
  `kode_izin_cuti` char(12) NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `kode_cuti` char(3) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izincuti_approve`
--

CREATE TABLE `presensi_izincuti_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin_cuti` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinsakit`
--

CREATE TABLE `presensi_izinsakit` (
  `kode_izin_sakit` char(12) NOT NULL,
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `dari` date NOT NULL,
  `sampai` date NOT NULL,
  `doc_sid` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `keterangan_hrd` varchar(255) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_izinsakit_approve`
--

CREATE TABLE `presensi_izinsakit_approve` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `kode_izin_sakit` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja`
--

CREATE TABLE `presensi_jamkerja` (
  `kode_jam_kerja` char(4) NOT NULL,
  `nama_jam_kerja` varchar(255) NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `istirahat` char(1) NOT NULL,
  `jam_awal_istirahat` time DEFAULT NULL,
  `jam_akhir_istirahat` time DEFAULT NULL,
  `total_jam` smallint(6) NOT NULL,
  `lintashari` char(1) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja`
--

INSERT INTO `presensi_jamkerja` (`kode_jam_kerja`, `nama_jam_kerja`, `jam_masuk`, `jam_pulang`, `istirahat`, `jam_awal_istirahat`, `jam_akhir_istirahat`, `total_jam`, `lintashari`, `keterangan`, `created_at`, `updated_at`) VALUES
('JK01', 'SENIN', '06:40:00', '14:45:00', '0', '11:30:00', '12:30:00', 8, '0', 'NORMAL', NULL, '2025-06-25 16:03:37'),
('JK02', 'SELASA', '06:55:00', '14:45:00', '0', '11:30:00', '12:30:00', 8, '0', 'Mantap', '2024-12-17 22:11:39', '2025-06-25 16:03:23'),
('JK03', 'RABU', '06:55:00', '14:45:00', '0', '04:00:00', '05:00:00', 8, '0', '-', '2025-03-01 20:58:19', '2025-06-25 16:01:08'),
('JK04', 'KAMIS', '06:55:00', '14:45:00', '0', NULL, NULL, 8, '0', NULL, '2025-05-06 21:03:37', '2025-06-25 16:03:11'),
('JK05', 'JUMAT', '06:55:00', '14:45:00', '0', '04:00:00', '05:00:00', 8, '0', '-', '2025-05-11 00:40:34', '2025-06-25 16:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydate`
--

CREATE TABLE `presensi_jamkerja_bydate` (
  `nik` char(9) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_byday`
--

CREATE TABLE `presensi_jamkerja_byday` (
  `nik` char(9) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydept`
--

CREATE TABLE `presensi_jamkerja_bydept` (
  `kode_jk_dept` char(7) NOT NULL,
  `kode_cabang` char(3) NOT NULL,
  `kode_dept` char(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_bydept`
--

INSERT INTO `presensi_jamkerja_bydept` (`kode_jk_dept`, `kode_cabang`, `kode_dept`, `created_at`, `updated_at`) VALUES
('JKG1AKT', 'KG1', 'AKT', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1GR', 'KG1', 'GR', '2025-06-25 16:04:34', '2025-06-25 16:04:34'),
('JKGAKT', 'KG', 'AKT', '2025-06-25 15:27:35', '2025-06-25 15:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `presensi_jamkerja_bydept_detail`
--

CREATE TABLE `presensi_jamkerja_bydept_detail` (
  `kode_jk_dept` char(7) NOT NULL,
  `hari` varchar(255) NOT NULL,
  `kode_jam_kerja` char(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `presensi_jamkerja_bydept_detail`
--

INSERT INTO `presensi_jamkerja_bydept_detail` (`kode_jk_dept`, `hari`, `kode_jam_kerja`, `created_at`, `updated_at`) VALUES
('JKGAKT', 'Senin', 'JK01', '2025-06-25 15:27:35', '2025-06-25 15:27:35'),
('JKGAKT', 'Selasa', 'JK01', '2025-06-25 15:27:35', '2025-06-25 15:27:35'),
('JKGAKT', 'Rabu', 'JK01', '2025-06-25 15:27:35', '2025-06-25 15:27:35'),
('JKGAKT', 'Kamis', 'JK01', '2025-06-25 15:27:35', '2025-06-25 15:27:35'),
('JKGAKT', 'Jumat', 'JK01', '2025-06-25 15:27:35', '2025-06-25 15:27:35'),
('JKGAKT', 'Sabtu', 'JK01', '2025-06-25 15:27:35', '2025-06-25 15:27:35'),
('JKGAKT', 'Minggu', 'JK01', '2025-06-25 15:27:35', '2025-06-25 15:27:35'),
('JKG1AKT', 'Senin', 'JK01', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1AKT', 'Selasa', 'JK01', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1AKT', 'Rabu', 'JK01', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1AKT', 'Kamis', 'JK01', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1AKT', 'Jumat', 'JK01', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1AKT', 'Sabtu', 'JK01', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1AKT', 'Minggu', 'JK01', '2025-06-25 15:48:30', '2025-06-25 15:48:30'),
('JKG1GR', 'Senin', 'JK01', '2025-06-25 16:04:34', '2025-06-25 16:04:34'),
('JKG1GR', 'Selasa', 'JK02', '2025-06-25 16:04:34', '2025-06-25 16:04:34'),
('JKG1GR', 'Rabu', 'JK03', '2025-06-25 16:04:34', '2025-06-25 16:04:34'),
('JKG1GR', 'Kamis', 'JK04', '2025-06-25 16:04:34', '2025-06-25 16:04:34'),
('JKG1GR', 'Jumat', 'JK05', '2025-06-25 16:04:34', '2025-06-25 16:04:34');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2024-03-14 16:31:06', '2024-03-14 16:31:06'),
(2, 'admin departemen', 'web', '2024-03-14 16:51:49', '2024-03-14 16:51:49'),
(3, 'karyawan', 'web', '2025-01-21 14:42:30', '2025-01-21 14:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(18, 3),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5cnJxgTlUgeZRaYcvCnKRx9jmdlypdUC39uXaVcg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ0c0YU9PeXdXMURXQWdURGxuQVZwRXpjTjN2a2FoMk1LZ2RaVWt2UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747891930),
('bHztnxwTzMnoA0Eq9K6SlFbASUMvxk8NM0cK0BVT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSm1xMERXakp2bFR2dW1abFcwS2lBNHZLUzRsYTBpQ1A0WlZoR1NyQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747869124),
('GmB1EFcJigpcehMkuclwnXOeg7ZBlDCqJtqMdxlH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0FPRXJsVlU2UG9zWUFFSHBqWWN0ZVJ2b0lqZFdQbk43WWY5bVR4SyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9rYXJ5YXdhbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1747695657),
('V9m7zD1SgRzTFUG4ZocXR3Nbj7orWoTUTVQABzn5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSkY2OEtvZ21SZEZVVVZRd2MxVkhTdGY3VFRwd1pXWk1MRngyREhQcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748181137),
('WfkoxeJDZw3M8hskj6FTcPZHCxq2jgZ9NNn18uEi', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiREt3UkVSNFMyRzVnTGpYSklHZGNnRFJMSnhqMUxiMkhPSFo4WUdaYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC93YWdhdGV3YXkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1748172920),
('YuXDjDSUhQROI2eedBORZrhCpr7wgluzmnYCp1Pl', 12, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/17.5 Mobile/15A5370a Safari/602.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN1lneG1aUEFTRVZTbW1kdjAzTVNSM3hNTHlMcnYwOWVRMmh6ZlkzTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mYWNlcmVjb2duaXRpb24vZ2V0d2FqYWg/dD0xNzQ3NjY5ODk0NDQ5Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7fQ==', 1747662701);

-- --------------------------------------------------------

--
-- Table structure for table `status_kawin`
--

CREATE TABLE `status_kawin` (
  `kode_status_kawin` char(2) NOT NULL,
  `status_kawin` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_kawin`
--

INSERT INTO `status_kawin` (`kode_status_kawin`, `status_kawin`, `created_at`, `updated_at`) VALUES
('HB', 'Telah Berpisah Secara Hukum / Janda / Duda', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K0', 'Kawin Belum Punya Tanggungan', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K1', 'Kawin Punya Tanggungan 1', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K2', 'Kawin PUnya Tanggungan 2', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('K3', 'Kawin PUnya Tanggungan 3', '2024-04-27 21:20:47', '2024-04-27 21:20:47'),
('TK', 'Tidak Kawin', '2024-04-27 21:20:47', '2024-04-27 21:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ari Setiawan', 'aris', 'ari@gmail.com', NULL, '$2y$12$xZk6VApqQyY9YCaOfo6oSOYyiJBWQWaKWKsF6H5Whdb6QUO5eGFhy', NULL, NULL, '2025-06-25 15:09:11'),
(15, 'Ari Setiawan', '14.22.682', '1422682@adamadifa.com', NULL, '$2y$12$sY8j63S/au62ibLkd.lizOGBYtMFFexYvMi04S7JcuTwKdKfK/JPu', NULL, '2025-06-25 16:05:44', '2025-06-25 16:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `users_karyawan`
--

CREATE TABLE `users_karyawan` (
  `nik` char(10) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_karyawan`
--

INSERT INTO `users_karyawan` (`nik`, `id_user`, `created_at`, `updated_at`) VALUES
('14.22.682', 15, '2025-06-25 16:05:44', '2025-06-25 16:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `wamessages`
--

CREATE TABLE `wamessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `error_message` text DEFAULT NULL,
  `sent_at` timestamp NOT NULL DEFAULT '2025-06-10 16:26:41',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `wamessages`
--

INSERT INTO `wamessages` (`id`, `sender`, `receiver`, `message`, `status`, `error_message`, `sent_at`, `created_at`, `updated_at`) VALUES
(1, '6282220804021:56@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test lagi', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(2, '6282220804021:56@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'test kirim', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(3, '6282220804021:56@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Terimakasih, Hari ini Adam Adifa absen masuk pada 2025-06-10 16:47 Semagat Bekerja', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(4, '6282220804021:56@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Terimakasih, Hari ini Adam Adifa absen Pulang pada 2025-06-10 16:50Hati Hati di Jalan', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(5, '6282220804021:56@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Terimakasih, Hari ini Adam Adifa absen masuk pada 2025-06-10 17:21 Semagat Bekerja', 1, NULL, '2025-06-10 16:26:41', NULL, NULL),
(6, '6282220804021:56@s.whatsapp.net', '6289670444321@s.whatsapp.net', 'Terimakasih, Hari ini Adam Adifa absen Pulang pada 2025-06-10 17:21Hati Hati di Jalan', 1, NULL, '2025-06-10 16:26:41', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`kode_cabang`) USING BTREE;

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`kode_cuti`) USING BTREE;

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`kode_dept`) USING BTREE;

--
-- Indexes for table `detailtunjangans`
--
ALTER TABLE `detailtunjangans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD PRIMARY KEY (`kode_libur`) USING BTREE,
  ADD KEY `hari_libur_kode_cabang_foreign` (`kode_cabang`) USING BTREE;

--
-- Indexes for table `hari_libur_detail`
--
ALTER TABLE `hari_libur_detail`
  ADD KEY `hari_libur_detail_kode_libur_foreign` (`kode_libur`) USING BTREE,
  ADD KEY `hari_libur_detail_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode_jabatan`) USING BTREE;

--
-- Indexes for table `jenis_tunjangan`
--
ALTER TABLE `jenis_tunjangan`
  ADD PRIMARY KEY (`kode_jenis_tunjangan`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `jobs_queue_index` (`queue`) USING BTREE;

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`) USING BTREE,
  ADD KEY `karyawan_kode_dept_foreign` (`kode_dept`) USING BTREE,
  ADD KEY `karyawan_kode_jabatan_foreign` (`kode_jabatan`) USING BTREE;

--
-- Indexes for table `karyawan_bpjskesehatan`
--
ALTER TABLE `karyawan_bpjskesehatan`
  ADD PRIMARY KEY (`kode_bpjs_kesehatan`) USING BTREE,
  ADD KEY `karyawan_bpjskesehatan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_bpjstenagakerja`
--
ALTER TABLE `karyawan_bpjstenagakerja`
  ADD PRIMARY KEY (`kode_bpjs_tk`) USING BTREE,
  ADD KEY `karyawan_bpjstenagakerja_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_gaji_pokok`
--
ALTER TABLE `karyawan_gaji_pokok`
  ADD PRIMARY KEY (`kode_gaji`) USING BTREE,
  ADD KEY `karyawan_gaji_pokok_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_penyesuaian_gaji`
--
ALTER TABLE `karyawan_penyesuaian_gaji`
  ADD PRIMARY KEY (`kode_penyesuaian_gaji`) USING BTREE;

--
-- Indexes for table `karyawan_penyesuaian_gaji_detail`
--
ALTER TABLE `karyawan_penyesuaian_gaji_detail`
  ADD KEY `karyawan_penyesuaian_gaji_detail_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign` (`kode_penyesuaian_gaji`) USING BTREE;

--
-- Indexes for table `karyawan_tunjangan`
--
ALTER TABLE `karyawan_tunjangan`
  ADD PRIMARY KEY (`kode_tunjangan`) USING BTREE,
  ADD KEY `karyawan_tunjangan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `karyawan_tunjangan_detail`
--
ALTER TABLE `karyawan_tunjangan_detail`
  ADD KEY `karyawan_tunjangan_detail_kode_tunjangan_foreign` (`kode_tunjangan`) USING BTREE,
  ADD KEY `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign` (`kode_jenis_tunjangan`) USING BTREE;

--
-- Indexes for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `karyawan_wajah_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Indexes for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE,
  ADD KEY `permissions_id_permission_group_foreign` (`id_permission_group`) USING BTREE;

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `presensi_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_izinabsen`
--
ALTER TABLE `presensi_izinabsen`
  ADD PRIMARY KEY (`kode_izin`) USING BTREE,
  ADD KEY `presensi_izinabsen_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izinabsen_approve_kode_izin_foreign` (`kode_izin`) USING BTREE;

--
-- Indexes for table `presensi_izincuti`
--
ALTER TABLE `presensi_izincuti`
  ADD PRIMARY KEY (`kode_izin_cuti`) USING BTREE,
  ADD KEY `presensi_izincuti_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_izincuti_kode_cuti_foreign` (`kode_cuti`) USING BTREE;

--
-- Indexes for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izincuti_approve_kode_izin_cuti_foreign` (`kode_izin_cuti`) USING BTREE;

--
-- Indexes for table `presensi_izinsakit`
--
ALTER TABLE `presensi_izinsakit`
  ADD PRIMARY KEY (`kode_izin_sakit`) USING BTREE,
  ADD KEY `presensi_izinsakit_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  ADD PRIMARY KEY (`id_presensi`) USING BTREE,
  ADD KEY `presensi_izinsakit_approve_kode_izin_sakit_foreign` (`kode_izin_sakit`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja`
--
ALTER TABLE `presensi_jamkerja`
  ADD PRIMARY KEY (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydate`
--
ALTER TABLE `presensi_jamkerja_bydate`
  ADD KEY `presensi_jamkerja_bydate_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_jamkerja_bydate_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_byday`
--
ALTER TABLE `presensi_jamkerja_byday`
  ADD KEY `presensi_jamkerja_byday_nik_foreign` (`nik`) USING BTREE,
  ADD KEY `presensi_jamkerja_byday_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydept`
--
ALTER TABLE `presensi_jamkerja_bydept`
  ADD PRIMARY KEY (`kode_jk_dept`) USING BTREE;

--
-- Indexes for table `presensi_jamkerja_bydept_detail`
--
ALTER TABLE `presensi_jamkerja_bydept_detail`
  ADD KEY `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign` (`kode_jam_kerja`) USING BTREE,
  ADD KEY `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign` (`kode_jk_dept`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `sessions_last_activity_index` (`last_activity`) USING BTREE;

--
-- Indexes for table `status_kawin`
--
ALTER TABLE `status_kawin`
  ADD PRIMARY KEY (`kode_status_kawin`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD KEY `users_karyawan_nik_foreign` (`nik`) USING BTREE;

--
-- Indexes for table `wamessages`
--
ALTER TABLE `wamessages`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detailtunjangans`
--
ALTER TABLE `detailtunjangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `pengaturan_umum`
--
ALTER TABLE `pengaturan_umum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wamessages`
--
ALTER TABLE `wamessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hari_libur`
--
ALTER TABLE `hari_libur`
  ADD CONSTRAINT `hari_libur_kode_cabang_foreign` FOREIGN KEY (`kode_cabang`) REFERENCES `cabang` (`kode_cabang`) ON UPDATE CASCADE;

--
-- Constraints for table `hari_libur_detail`
--
ALTER TABLE `hari_libur_detail`
  ADD CONSTRAINT `hari_libur_detail_kode_libur_foreign` FOREIGN KEY (`kode_libur`) REFERENCES `hari_libur` (`kode_libur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hari_libur_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_kode_dept_foreign` FOREIGN KEY (`kode_dept`) REFERENCES `departemen` (`kode_dept`) ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_kode_jabatan_foreign` FOREIGN KEY (`kode_jabatan`) REFERENCES `jabatan` (`kode_jabatan`) ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_bpjskesehatan`
--
ALTER TABLE `karyawan_bpjskesehatan`
  ADD CONSTRAINT `karyawan_bpjskesehatan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_bpjstenagakerja`
--
ALTER TABLE `karyawan_bpjstenagakerja`
  ADD CONSTRAINT `karyawan_bpjstenagakerja_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_gaji_pokok`
--
ALTER TABLE `karyawan_gaji_pokok`
  ADD CONSTRAINT `karyawan_gaji_pokok_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_penyesuaian_gaji_detail`
--
ALTER TABLE `karyawan_penyesuaian_gaji_detail`
  ADD CONSTRAINT `karyawan_penyesuaian_gaji_detail_kode_penyesuaian_gaji_foreign` FOREIGN KEY (`kode_penyesuaian_gaji`) REFERENCES `karyawan_penyesuaian_gaji` (`kode_penyesuaian_gaji`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_penyesuaian_gaji_detail_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_tunjangan`
--
ALTER TABLE `karyawan_tunjangan`
  ADD CONSTRAINT `karyawan_tunjangan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_tunjangan_detail`
--
ALTER TABLE `karyawan_tunjangan_detail`
  ADD CONSTRAINT `karyawan_tunjangan_detail_kode_jenis_tunjangan_foreign` FOREIGN KEY (`kode_jenis_tunjangan`) REFERENCES `jenis_tunjangan` (`kode_jenis_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `karyawan_tunjangan_detail_kode_tunjangan_foreign` FOREIGN KEY (`kode_tunjangan`) REFERENCES `karyawan_tunjangan` (`kode_tunjangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `karyawan_wajah`
--
ALTER TABLE `karyawan_wajah`
  ADD CONSTRAINT `karyawan_wajah_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_id_permission_group_foreign` FOREIGN KEY (`id_permission_group`) REFERENCES `permission_groups` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `presensi`
--
ALTER TABLE `presensi`
  ADD CONSTRAINT `presensi_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinabsen`
--
ALTER TABLE `presensi_izinabsen`
  ADD CONSTRAINT `presensi_izinabsen_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinabsen_approve`
--
ALTER TABLE `presensi_izinabsen_approve`
  ADD CONSTRAINT `presensi_izinabsen_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izinabsen_approve_kode_izin_foreign` FOREIGN KEY (`kode_izin`) REFERENCES `presensi_izinabsen` (`kode_izin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izincuti`
--
ALTER TABLE `presensi_izincuti`
  ADD CONSTRAINT `presensi_izincuti_kode_cuti_foreign` FOREIGN KEY (`kode_cuti`) REFERENCES `cuti` (`kode_cuti`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izincuti_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izincuti_approve`
--
ALTER TABLE `presensi_izincuti_approve`
  ADD CONSTRAINT `presensi_izincuti_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izincuti_approve_kode_izin_cuti_foreign` FOREIGN KEY (`kode_izin_cuti`) REFERENCES `presensi_izincuti` (`kode_izin_cuti`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinsakit`
--
ALTER TABLE `presensi_izinsakit`
  ADD CONSTRAINT `presensi_izinsakit_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_izinsakit_approve`
--
ALTER TABLE `presensi_izinsakit_approve`
  ADD CONSTRAINT `presensi_izinsakit_approve_id_presensi_foreign` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_izinsakit_approve_kode_izin_sakit_foreign` FOREIGN KEY (`kode_izin_sakit`) REFERENCES `presensi_izinsakit` (`kode_izin_sakit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_bydate`
--
ALTER TABLE `presensi_jamkerja_bydate`
  ADD CONSTRAINT `presensi_jamkerja_bydate_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_bydate_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_byday`
--
ALTER TABLE `presensi_jamkerja_byday`
  ADD CONSTRAINT `presensi_jamkerja_byday_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_byday_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `presensi_jamkerja_bydept_detail`
--
ALTER TABLE `presensi_jamkerja_bydept_detail`
  ADD CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jam_kerja_foreign` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `presensi_jamkerja` (`kode_jam_kerja`) ON UPDATE CASCADE,
  ADD CONSTRAINT `presensi_jamkerja_bydate_detail_kode_jk_dept_foreign` FOREIGN KEY (`kode_jk_dept`) REFERENCES `presensi_jamkerja_bydept` (`kode_jk_dept`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_karyawan`
--
ALTER TABLE `users_karyawan`
  ADD CONSTRAINT `users_karyawan_nik_foreign` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
