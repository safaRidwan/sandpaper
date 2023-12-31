-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 08:02 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sandpaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `visi` text NOT NULL,
  `misi` varchar(1000) NOT NULL,
  `member` varchar(10) NOT NULL,
  `armada` varchar(10) NOT NULL,
  `perjalanan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id_about`, `visi`, `misi`, `member`, `armada`, `perjalanan`) VALUES
(5, 'Menjadi pemimpin global dalam penyediaan produk abrasif berkualitas tinggi yang memberikan solusi tepat waktu untuk kebutuhan industri, konstruksi, dan manufaktur.', '1. Kualitas Terbaik: Kami berkomitmen untuk menghasilkan produk abrasif dengan kualitas terbaik yang memenuhi atau melebihi harapan pelanggan kami.\r\n\r\n2. Inovasi Berkelanjutan: Kami akan terus mengembangkan dan memperkenalkan teknologi dan produk-produk baru yang efisien dan ramah lingkungan.\r\n', '178', '16', '557');

-- --------------------------------------------------------

--
-- Table structure for table `about2`
--

CREATE TABLE `about2` (
  `id_foto` int(11) NOT NULL,
  `foto_about` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about2`
--

INSERT INTO `about2` (`id_foto`, `foto_about`) VALUES
(1, '20231116063706.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_berakhir` date NOT NULL,
  `nama_client` varchar(200) NOT NULL,
  `id_konten` varchar(50) NOT NULL,
  `keterangan_booking` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `tgl_mulai`, `tgl_berakhir`, `nama_client`, `id_konten`, `keterangan_booking`) VALUES
(45, '2023-11-17', '2023-11-17', 'kiki', '1', ''),
(46, '2023-11-17', '2023-11-17', 'Ryan Adi Putra', '1', ''),
(47, '2023-11-08', '2023-11-22', 'jokowo', '1', ''),
(48, '2023-11-20', '2023-11-20', 'Pablo', '3', 'Indo - Mexico'),
(49, '2023-11-16', '2023-11-30', 'Biyan', '3', 'papahan - Jongke');

-- --------------------------------------------------------

--
-- Table structure for table `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraousel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caraousel`
--

INSERT INTO `caraousel` (`id_caraousel`, `judul`, `foto`) VALUES
(10, 'WEBSITE RESMI', '20231112150904.jpg'),
(17, 'SANDPAPER HOLIDAY TRANS', '20231116065556.jpg'),
(18, 'TRANS 88', '20231116065601.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail`
--

CREATE TABLE `detail` (
  `id_detail` int(11) NOT NULL,
  `foto_detail` varchar(50) NOT NULL,
  `judul_detail` varchar(100) NOT NULL,
  `id_konten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail`
--

INSERT INTO `detail` (`id_detail`, `foto_detail`, `judul_detail`, `id_konten`) VALUES
(1, '20231117044605.jpg', '', '1'),
(2, '20231117044612.jpg', '', '1'),
(3, '20231117044753.jpg', '', '2'),
(4, '20231117044758.jpg', '', '2'),
(5, '20231117071001.jpg', 'ada 2 TV', '1'),
(7, '20231120031942.jpg', '', '3'),
(11, '20231121050735.jpg', '', '4'),
(12, '20231121051856.jpg', '', '4'),
(13, '20231121051904.jpg', '', '4'),
(14, '20231121051911.jpg', '', '4'),
(15, '20231121051924.jpg', '', '4'),
(16, '20231121064022.jpg', '', '5'),
(17, '20231121064034.jpg', '', '5'),
(18, '20231121064058.jpg', '', '5'),
(20, '20231121064321.jpg', '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id_home` int(11) NOT NULL,
  `foto_home` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id_home`, `foto_home`) VALUES
(1, '20231116063746.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(22, 'Normal Deck'),
(23, 'Double Decker'),
(24, 'High Decker'),
(25, 'Ultra High Decker'),
(26, 'Super High Decker'),
(27, 'High Decker Double Glass');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(30) NOT NULL,
  `hari_buka` varchar(100) NOT NULL,
  `waktu_buka` varchar(100) NOT NULL,
  `contact_us` varchar(200) NOT NULL,
  `maps` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facebook`, `tiktok`, `youtube`, `email`, `alamat`, `no_wa`, `hari_buka`, `waktu_buka`, `contact_us`, `maps`) VALUES
(1, 'SANDPAPER', 'SandPaper adalah perusahaan bus yang berkomitmen untuk memberikan pengalaman perjalanan yang menyenangkan dan nyaman bagi pelanggannya. Kami menyediakan berbagai layanan bus yang disesuaikan dengan kebutuhan pelanggan, mulai dari bus antarkota, bus pariwisata, hingga bus charter.\r\nSandpaper memiliki armada bus yang cukup lengkap, mulai dari bus kelas ekonomi, bisnis, hingga eksekutif. Bus-bus Sandpaper dilengkapi dengan fasilitas yang nyaman, seperti AC, TV, dan toilet.\r\n\r\n', 'https://www.instagram.com/sandpaper_trans_88/', '', '', '', 'sandpaper@gmail.com', 'Ngaliyan, Lalung, Jaten, Karanganyar', '81215137373', 'Setiap Hari', '07.00  -  18.00', 'Hubungi kami lewat nomor WhatsApp yang tertera diatas atau datang langsung ke kantor kami di Jl. Lkr. Sel. Karanganyar, Ngaliyan, Lalung, Kec. Jaten, Kabupaten Karanganyar, Jawa Tengah 57731', 'https://maps.app.goo.gl/4yE6TDwZ9jyZEmKa7');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `kursi` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `merk`, `kursi`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(1, 'Hamtaro', 'Mitsubishi', '35', 'Hamtaro adalah karakter fiksi dalam serial manga Jepang yang dikenal sebagai \"Tottoko Hamtaro\" atau \"Hamtaro: Little Hamsters, Big Adventures.\" Serial ini diciptakan oleh Ritsuko Kawai. ', '20231117044517.jpg', 'Hamtaro-adalah-karakter-fiksi-dalam-serial-manga-Jepang-yang-dikenal-sebagai-\"Tottoko-Hamtaro\"-atau-\"Hamtaro:-Little-Hamsters,-Big-Adventures.\"-Serial-ini-diciptakan-oleh-Ritsuko-Kawai.-', '22', '2023-11-17', 'musa'),
(2, 'Bisma', 'Mercedes Benz', '36', '\"Bisma\" bisa menjadi nama orang di kehidupan sehari-hari, nama karakter dalam suatu cerita, atau merujuk kepada sesuatu yang spesifik dalam konteks tertentu. Jika Anda memiliki konteks lebih lanjut atau pertanyaan spesifik tentang \"Bisma,\" silakan beri informasi tambahan sehingga saya dapat memberikan jawaban yang lebih relevan.', '20231117044742.jpg', '\"Bisma\"-bisa-menjadi-nama-orang-di-kehidupan-sehari-hari,-nama-karakter-dalam-suatu-cerita,-atau-merujuk-kepada-sesuatu-yang-spesifik-dalam-konteks-tertentu.-Jika-Anda-memiliki-konteks-lebih-lanjut-at', '24', '2023-11-17', 'musa'),
(3, 'Jan Etes', 'Hino', '36', '\r\nDalam bahasa Jawa, \"jan etes\" berarti \"jangan ragu\" atau \"jangan takut\". Frasa ini sering digunakan untuk memberikan semangat atau motivasi kepada seseorang. Misalnya, jika seseorang sedang ragu untuk melakukan sesuatu, kita bisa mengatakan \"jan etes, pasti bisa!\" untuk menyemangatinya.', '20231120031912.jpg', '\r\nDalam-bahasa-Jawa,-\"jan-etes\"-berarti-\"jangan-ragu\"-atau-\"jangan-takut\".-Frasa-ini-sering-digunakan-untuk-memberikan-semangat-atau-motivasi-kepada-seseorang.-Misalnya,-jika-seseorang-sedang-ragu-unt', '23', '2023-11-20', 'musa'),
(4, 'Faqih', 'Mercedes Benz', '35', ' \"bus faqih\" merupakan istilah lokal atau spesifik, mungkin ada konteks khusus di suatu daerah atau komunitas tertentu yang tidak terdokumentasikan secara luas. Untuk informasi lebih lanjut, Anda dapat mencari informasi lokal atau memeriksa sumber-sumber yang berkaitan dengan transportasi di daerah atau komunitas tertentu.', '20231121045810.jpg', '-\"bus-faqih\"-merupakan-istilah-lokal-atau-spesifik,-mungkin-ada-konteks-khusus-di-suatu-daerah-atau-komunitas-tertentu-yang-tidak-terdokumentasikan-secara-luas.-Untuk-informasi-lebih-lanjut,-Anda-dapa', '24', '2023-11-21', 'musa'),
(5, 'Arjuna', 'Hino', '35', 'merupakan istilah lokal atau spesifik, mungkin ada konteks khusus di suatu daerah atau komunitas tertentu yang tidak terdokumentasikan secara luas. Untuk informasi lebih lanjut, Anda dapat mencari informasi lokal atau memeriksa sumber-sumber yang berkaitan dengan transportasi di daerah atau komunitas tertentu.', '20231121063911.jpg', 'merupakan-istilah-lokal-atau-spesifik,-mungkin-ada-konteks-khusus-di-suatu-daerah-atau-komunitas-tertentu-yang-tidak-terdokumentasikan-secara-luas.-Untuk-informasi-lebih-lanjut,-Anda-dapat-mencari-inf', '23', '2023-11-21', 'musa');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `foto_logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `foto_logo`) VALUES
(1, '20231117073818.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profil_team`
--

CREATE TABLE `profil_team` (
  `id_profil` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `tiktok` varchar(50) NOT NULL,
  `foto_profil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil_team`
--

INSERT INTO `profil_team` (`id_profil`, `nama`, `jabatan`, `facebook`, `instagram`, `tiktok`, `foto_profil`) VALUES
(17, 'Contoh 1', 'contoh jabatan 1', 'https://www.facebook.com/musaa.nz/', '', '', '20231112052652.jpg'),
(22, 'Contoh 2', 'contoh jabatan 2', '', 'https://www.instagram.com/sandpaper_trans_88/', '', '20231121055611.jpg'),
(23, 'Contoh 3', 'contoh jabatan 3', '', '', '', '20231121055636.jpg'),
(24, 'Contoh 4', 'contoh jabatan 4', '', 'https://www.instagram.com/musaa.nz/', '', '20231121055709.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(8, 'musa', 'Musafa Ridwan', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(31, 'safa', 'Safareta', 'c4ca4238a0b923820dcc509a6f75849b', 'Kontributor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `about2`
--
ALTER TABLE `about2`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraousel`);

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id_home`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `profil_team`
--
ALTER TABLE `profil_team`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `about2`
--
ALTER TABLE `about2`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `detail`
--
ALTER TABLE `detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profil_team`
--
ALTER TABLE `profil_team`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
