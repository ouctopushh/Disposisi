-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2024 pada 06.06
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_disposisi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `id_surat` varchar(255) NOT NULL,
  `Sifat_surat` varchar(11) NOT NULL,
  `Catatan` varchar(50) NOT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `id_surat`, `Sifat_surat`, `Catatan`, `id_user`) VALUES
(1, '1', '1', '1', '3'),
(2, '1', '1', '-', '2');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `disposisi_keluar`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `disposisi_keluar` (
`id_disposisi` int(11)
,`id_surat` varchar(255)
,`sifat_surat` varchar(11)
,`catatan` varchar(255)
,`id_user` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `disposisi_masuk`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `disposisi_masuk` (
`id_disposisi` int(11)
,`id_surat` varchar(255)
,`Sifat_surat` varchar(11)
,`Catatan` varchar(50)
,`id_user` varchar(255)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi_surat_keluar`
--

CREATE TABLE `disposisi_surat_keluar` (
  `id_disposisi` int(11) NOT NULL,
  `id_surat` varchar(255) NOT NULL,
  `sifat_surat` varchar(11) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `disposisi_surat_keluar`
--

INSERT INTO `disposisi_surat_keluar` (`id_disposisi`, `id_surat`, `sifat_surat`, `catatan`, `id_user`) VALUES
(1, '1', '3', '-', 'Universitas Dharmas Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(814, 1, 'disposisi', 'list'),
(815, 1, 'disposisi', 'view'),
(816, 1, 'disposisi', 'add'),
(817, 1, 'disposisi', 'edit'),
(818, 1, 'disposisi', 'editfield'),
(819, 1, 'disposisi', 'delete'),
(820, 1, 'disposisi', 'import_data'),
(821, 1, 'disposisi_masuk', 'list'),
(822, 1, 'disposisi_masuk', 'view'),
(823, 1, 'role_permissions', 'list'),
(824, 1, 'role_permissions', 'view'),
(825, 1, 'role_permissions', 'add'),
(826, 1, 'role_permissions', 'edit'),
(827, 1, 'role_permissions', 'editfield'),
(828, 1, 'role_permissions', 'delete'),
(829, 1, 'role_permissions', 'import_data'),
(830, 1, 'roles', 'list'),
(831, 1, 'roles', 'view'),
(832, 1, 'roles', 'add'),
(833, 1, 'roles', 'edit'),
(834, 1, 'roles', 'editfield'),
(835, 1, 'roles', 'delete'),
(836, 1, 'roles', 'import_data'),
(837, 1, 'sifat_surat', 'list'),
(838, 1, 'sifat_surat', 'view'),
(839, 1, 'sifat_surat', 'add'),
(840, 1, 'sifat_surat', 'edit'),
(841, 1, 'sifat_surat', 'editfield'),
(842, 1, 'sifat_surat', 'delete'),
(843, 1, 'sifat_surat', 'import_data'),
(844, 1, 'surat_keluarr', 'list'),
(845, 1, 'surat_keluarr', 'view'),
(846, 1, 'surat_keluarr', 'add'),
(847, 1, 'surat_keluarr', 'edit'),
(848, 1, 'surat_keluarr', 'editfield'),
(849, 1, 'surat_keluarr', 'delete'),
(850, 1, 'surat_keluarr', 'import_data'),
(851, 1, 'surat_masuk', 'list'),
(852, 1, 'surat_masuk', 'view'),
(853, 1, 'surat_masuk', 'add'),
(854, 1, 'surat_masuk', 'edit'),
(855, 1, 'surat_masuk', 'editfield'),
(856, 1, 'surat_masuk', 'delete'),
(857, 1, 'surat_masuk', 'import_data'),
(858, 1, 'userr', 'list'),
(859, 1, 'userr', 'view'),
(860, 1, 'userr', 'add'),
(861, 1, 'userr', 'edit'),
(862, 1, 'userr', 'editfield'),
(863, 1, 'userr', 'delete'),
(864, 1, 'userr', 'import_data'),
(865, 1, 'disposisi_surat_keluar', 'list'),
(866, 1, 'disposisi_surat_keluar', 'view'),
(867, 1, 'disposisi_surat_keluar', 'add'),
(868, 1, 'disposisi_surat_keluar', 'edit'),
(869, 1, 'disposisi_surat_keluar', 'editfield'),
(870, 1, 'disposisi_surat_keluar', 'delete'),
(871, 1, 'userr', 'accountedit'),
(872, 1, 'userr', 'accountview'),
(873, 1, 'disposisi_keluar', 'list'),
(874, 1, 'disposisi_keluar', 'view'),
(875, 2, 'disposisi_masuk', 'list'),
(876, 2, 'disposisi_masuk', 'view'),
(877, 2, 'surat_keluarr', 'list'),
(878, 2, 'surat_keluarr', 'view'),
(879, 2, 'surat_masuk', 'list'),
(880, 2, 'surat_masuk', 'view'),
(881, 2, 'userr', 'accountedit'),
(882, 2, 'userr', 'accountview'),
(883, 2, 'disposisi_keluar', 'list'),
(884, 2, 'disposisi_keluar', 'view');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sifat_surat`
--

CREATE TABLE `sifat_surat` (
  `id` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sifat_surat`
--

INSERT INTO `sifat_surat` (`id`, `sifat_surat`) VALUES
(1, 'Penting'),
(2, 'Rahasia'),
(3, 'Biasa/Terbuka'),
(4, 'Segera dilaksanakan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluarr`
--

CREATE TABLE `surat_keluarr` (
  `id_surat` int(11) NOT NULL,
  `nomor_surat` varchar(50) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `kepada` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_keluarr`
--

INSERT INTO `surat_keluarr` (`id_surat`, `nomor_surat`, `tanggal_surat`, `perihal_surat`, `file_surat`, `kepada`) VALUES
(1, '800.1.1/71/Diskominfo/VI-2024', '2024-06-07', 'Kesediaan Menerima mahasiswa magang', 'http://localhost/diskominfo/uploads/files/tv3qhz1695yfrdu.pdf', 'Universitas Dharmas Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat` int(11) NOT NULL,
  `nomor_surat` varchar(50) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `perihal_surat` varchar(255) NOT NULL,
  `tanggal_terima` date NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `diterima_oleh` varchar(35) NOT NULL,
  `dari` varchar(50) NOT NULL,
  `kepada` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat`, `nomor_surat`, `tanggal_surat`, `perihal_surat`, `tanggal_terima`, `file_surat`, `diterima_oleh`, `dari`, `kepada`) VALUES
(1, '140/22/Pem-2024', '2024-04-24', 'Permohonan Implementasi Sertifikasi Elektronik pada sistem Elektronik di Pemerintahan Negeri Koto Besar', '2024-06-07', 'http://localhost/apkdisposisisurat/uploads/files/8ba2ysihr0n5cxm.pdf', '1', 'Nagari Koto Besar', 'Diskominfo'),
(2, '002/WAJA/VI/2024', '2024-06-18', 'Undangan Gathering', '2024-06-11', '', '3', 'PT Wira Agung Jaya Abadi', 'Diskominfo'),
(3, '400.2/668/DINSOSP3APPKB-2024', '2024-06-10', 'Sosialisai PUG Sekaligus Pelatihan Perencanaan dan Penganggaran Responsif Gender PPRG', '2024-06-11', '', '3', 'Sekretariat Daerah', 'Kepala Dinas Kominfo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `userr`
--

CREATE TABLE `userr` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_pengguna` varchar(35) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-09-13 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `userr`
--

INSERT INTO `userr` (`id_user`, `username`, `password`, `nama_pengguna`, `no_telepon`, `email`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'admin', '$2y$10$SHMm4Pw3OjBLhwBwnz0Yzu4QFegItmR/yYht4SCGDmKJpw0.vInYu', 'Admin', '085264954479', 'admin@mail.com', 'http://localhost/diskominfo/uploads/files/h5jmvx6usdow8zt.png', '15d3a938eb3b913321bcc0defd15046d', NULL, '2024-09-13 00:00:00', NULL, 1),
(2, 'KasubagUmum', '$2y$10$D3HSjLMxgIgDXaxN3YSs/uuVGBF8z6RUj52OiPM5Z9XIVOd.6f1om', 'Kasubag Umum', '083115236901', 'kasubag@gmail.com', 'http://localhost/diskominfo/uploads/files/c2lzatnkj0ym63o.jpeg', 'd8c08f916dd041f6a6e2ce92b89252c3', NULL, '2024-09-13 00:00:00', NULL, 2),
(3, 'Kadis', '$2y$10$6CDmYg97FpNzfqXhrukyKeb7nwlKfvQi79o/Ufu5UZ/EPrKxBzSAK', 'Kadis', '081270344719', 'kadis@gmail.com', 'http://localhost/diskominfo/uploads/files/jlupm7vz3gf4aso.jpg', 'd67d53a51dec3d3fc2d88da1a1717235', NULL, '2024-09-13 00:00:00', NULL, 2);

-- --------------------------------------------------------

--
-- Struktur untuk view `disposisi_keluar`
--
DROP TABLE IF EXISTS `disposisi_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `disposisi_keluar`  AS  select `disposisi_surat_keluar`.`id_disposisi` AS `id_disposisi`,`disposisi_surat_keluar`.`id_surat` AS `id_surat`,`disposisi_surat_keluar`.`sifat_surat` AS `sifat_surat`,`disposisi_surat_keluar`.`catatan` AS `catatan`,`disposisi_surat_keluar`.`id_user` AS `id_user` from `disposisi_surat_keluar` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `disposisi_masuk`
--
DROP TABLE IF EXISTS `disposisi_masuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `disposisi_masuk`  AS  select `disposisi`.`id_disposisi` AS `id_disposisi`,`disposisi`.`id_surat` AS `id_surat`,`disposisi`.`Sifat_surat` AS `Sifat_surat`,`disposisi`.`Catatan` AS `Catatan`,`disposisi`.`id_user` AS `id_user` from `disposisi` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `disposisi_surat_keluar`
--
ALTER TABLE `disposisi_surat_keluar`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `sifat_surat`
--
ALTER TABLE `sifat_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_keluarr`
--
ALTER TABLE `surat_keluarr`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indeks untuk tabel `userr`
--
ALTER TABLE `userr`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `disposisi_surat_keluar`
--
ALTER TABLE `disposisi_surat_keluar`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=885;

--
-- AUTO_INCREMENT untuk tabel `sifat_surat`
--
ALTER TABLE `sifat_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `surat_keluarr`
--
ALTER TABLE `surat_keluarr`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `userr`
--
ALTER TABLE `userr`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
