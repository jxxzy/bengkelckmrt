-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 10:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokuviawapro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
(1, 'admin', '$2y$10$hvV.yJLF7YH3v6lMPCSCWerywpwkwYTPnXgS5wQEL1B9z/BMDrpqq', '7GrWB4wHPsBOq5G8pTFYbZakTrvx2j2KSdoDe9EmCokNlL9ZcC0UzcHtXY8sQu1u');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`, `url`) VALUES
(17, '1644876067940.jpg', '#'),
(18, '1644876247811.jpg', '#'),
(19, '1644876256939.jpg', '#'),
(20, '1644876266391.jpg', '#');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
(9, 'Headset', '1609500482468.png', 'headset'),
(10, 'T-Shirt', '1609500501398.png', 't-shirt'),
(11, 'Kursi', '1609500513814.png', 'kursi'),
(12, 'Laptop', '1609500526278.png', 'laptop'),
(13, 'Handphone', '1609500608832.png', 'handphone'),
(14, 'Sepatu', '1609500781426.png', 'sepatu');

-- --------------------------------------------------------

--
-- Table structure for table `cod`
--

CREATE TABLE `cod` (
  `id` int(11) NOT NULL,
  `regency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cost_delivery`
--

CREATE TABLE `cost_delivery` (
  `id` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_send`
--

CREATE TABLE `email_send` (
  `id` int(11) NOT NULL,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page`, `type`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `app_name` varchar(50) NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `navbar_color` varchar(10) NOT NULL,
  `api_rajaongkir` varchar(70) NOT NULL,
  `account_gmail` varchar(50) NOT NULL,
  `pass_gmail` varchar(50) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `whatsappv2` varchar(20) NOT NULL,
  `email_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `app_name`, `slogan`, `navbar_color`, `api_rajaongkir`, `account_gmail`, `pass_gmail`, `whatsapp`, `whatsappv2`, `email_contact`) VALUES
(1, 'TokoKu ViaWA Pro', 'TokoKu ViaWA Pro - Toko Online Blackexpo', '', 'd2f95f678fa44c587dea727c7af7ae7f', 'jangandigantiudah@janjiyah.com', 'jangandigantiudah@janjiyah.com', '082377823390', '6282377823390', 'mycoding@401xd.com');

-- --------------------------------------------------------

--
-- Table structure for table `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_product`
--

INSERT INTO `img_product` (`id`, `id_product`, `img`) VALUES
(1, 22, '1589840767903.jpg'),
(2, 22, '1589840786550.jpg'),
(5, 22, '1589840836102.jpg'),
(7, 31, '1609588918841.png'),
(8, 31, '1609588925526.png'),
(9, 31, '1609588935924.png'),
(10, 32, '1609589176734.png'),
(11, 32, '1609589181711.png'),
(12, 32, '1609589188574.png');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `province` int(11) NOT NULL,
  `regency` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address` text NOT NULL,
  `courier` varchar(5) NOT NULL,
  `courier_service` varchar(70) NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_limit` datetime NOT NULL,
  `process` int(11) NOT NULL,
  `send` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_code`, `label`, `name`, `email`, `telp`, `province`, `regency`, `district`, `village`, `zipcode`, `address`, `courier`, `courier_service`, `ongkir`, `total_price`, `total_all`, `date_input`, `date_limit`, `process`, `send`) VALUES
(151, '791494', 'true', 'Yosia', '', '087870223639', 2, 29, 'Rogob', 'Rogob Selatan', 161422, 'Rogob Selatan', 'tiki', 'REG', '76000', 192000, 268000, '2020-12-30 11:49:51', '2021-01-01 11:49:51', 1, 1),
(152, '533589', 'true', 'Testing Satu', '', '087870223839', 5, 501, 'Sleman', 'Karang malang', 161232, 'Jalan Karang Malang II', 'jne', 'REG', '230000', 300000, 530000, '2021-01-02 20:52:13', '2021-01-04 20:52:13', 1, 1),
(153, '979125', 'true', 'Testing Dua', '', '08897823772', 9, 79, 'Bogor Jabar', 'Jabami Yumeko', 16132, 'Jabami Santuy keuin waelah', 'jne', 'REG', '42000', 300000, 342000, '2021-01-02 20:59:39', '2021-01-04 20:59:39', 1, 1),
(154, '506112', 'true', 'Testing Tiga', '', '0872183128', 5, 135, 'Kidul Gunung', 'Gunung Selatan', 182828, 'Jalan Gunung Selatan Omaigat', 'jne', 'REG', '102000', 6500000, 6602000, '2021-01-02 21:08:26', '2021-01-04 21:08:26', 1, 1),
(155, '886131', 'true', 'asdasd', '', '2312312312', 2, 28, 'asdasd', 'asdasd', 123123, 'asdasd', 'jne', 'REG', '680000', 600000, 1280000, '2021-01-07 20:41:26', '2021-01-09 20:41:26', 0, 0),
(156, '466628', 'true', 'asdasd', '', '123123', 2, 28, 'sadas', 'd1asdasd', 123123, 'asdasdasdasd', 'jne', 'REG', '340000', 5000000, 5340000, '2021-01-27 18:54:26', '2021-01-29 18:54:26', 0, 0),
(157, '965986', 'true', 'sadas', '', '123213', 2, 28, 'asdasd', 'asdasdasd', 123123, 'asdasd', 'jne', 'REG', '68000', 250000, 318000, '2021-01-27 19:02:45', '2021-01-29 19:02:45', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `banner` varchar(30) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner` varchar(30) NOT NULL,
  `slug` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package_product`
--

CREATE TABLE `package_product` (
  `id` int(11) NOT NULL,
  `package` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
(1, 'Tentang Kami', '<p>Lakukan tugas Anda dengan senang hati dan gunakan humor Anda di waktu kerja terutama saat sulit dan tegang-tegang, itulah salah satu budaya (fun) kami.</p><p>&nbsp;</p><p>Religious, Passionate, Tough, Knowledgeable, Fun &amp; Customer Service adalah budaya-budaya yang ada di TokokuViaWA, dan kami sangat menjunjung tinggi budaya kami dengan cara memberikan yang terbaik bagi pelanggan, diri kita, keluarga, dan masyarakat.</p><p>&nbsp;</p><p>Visi</p><p>\"Menjadi sebuah perusahaan kelas dunia dengan semangat pemanfaatan informasi teknologi, dan menjadi kebanggaan bangsa.\"</p><p>&nbsp;</p><p>Misi</p><p>\"Menjadi webstore nomor satu di Indonesia yang menyediakan kelengkapan dan kemudahan belanja, serta memperhatikan dan memberikan pengalaman belanja yang berkesan kepada pelanggan, melalui nilai-nilai delapan dimensi pengalaman.\"</p><p>&nbsp;</p><p>Sekapur Sirih</p><p>Sejak awal TokokuViaWA berdiri, kami bertekad membangun bisnis yang berdaya tahan panjang. Mengutamakan citra merk dengan pelayanan dan menjadikannya bagian dari budaya kerja. Fokus pada pelayanan berarti memberi nilai tambah dalam setiap layanan. Sebab itulah mengapa pelanggan kami menekan tombol\'beli\' dan tetap kembali lagi di kemudian hari.</p><p>&nbsp;</p><p>Menengok sejenak ke belakang, kami bersyukur fokus pada pelayanan dan \'human touch\' dalam membangun TokokuViaWA, yang dirumuskan dengan sebuah kalimat sederhana \'Pelayanan Dari Hati\'. Dan sekarang, kalimat ini telah menjadi esensi dalam setiap langkah yang kami lakukan, mudah dicerna tanpa perlu segala embel-embel dan frase-frase yang sulit untuk dipahami dalam melayani pelanggan kami.</p><p>&nbsp;</p><p>Standar pelayanan kami pun semakin tinggi setiap tahun. Berinovasi dan menyajikan pengalamanan berbelanja yang berkesan, mulai dari produk yang lengkap, harga yang kompetitif, mudah dalam bertransaksi, jaminan purna jual, hingga kejutan-kejutan mengasyikkan untuk setiap pelanggan kami, yang menjadikan belanja diTokokuViaWA semakin nyaman, baik online maupun offline.</p><p>&nbsp;</p><p>Untuk teman-teman komunitas TokokuViaWA yang bersama dengan kami sejak awal perkembangan internet dimulai di Indonesia, kami akan terus perhatikan dan senantiasa mengembangkan banyak fitur yang akan semakin asyik untuk saling bertemu, berbagi, berbincang, belajar, atau sekedar melakukan jual-beli produk. Offline store TokokuViaWA juga menjadi tempat untuk workshop, tempat berkumpul, dan ngobrol antar komunitas.</p><p>&nbsp;</p><p>Akhirnya, saya sangat berbahagia TokokuViaWA dapat berkontribusi untuk negeri ini dan membawa nilai lebih untuk masyarakat Indonesia. Kami akan selalu berusaha dan mendorong diri kami sendiri untuk menjadi salah satu perusahaan berbasis teknologi yang menjadi kebanggaan bangsa Indonesia.</p>', 'about'),
(2, 'Kontak Kami', '<p>Konsultan Penjualan</p><p>Melayani kebutuhan Anda untuk seluruh kategori produk. Silakan hubungi email mycoding@401xd.com</p><p>&nbsp;</p><p>Korporasi &amp; Pemerintah.</p><p>Melayani kebutuhan korporasi &amp; proyek. Silakan email kami ke mycoding@401xd.com</p><p>&nbsp;</p><p>Solusi Software &amp; Lisensi</p><p>Melayani kebutuhan lisensi &amp; konsultasi software. Silakan email kami ke mycoding@401xd.com</p><p>&nbsp;</p><p>Solusi Percetakan &amp; Signage</p><p>Melayani kebutuhan printer besar, signage, &amp; produk 3D. Silakan email mycoding@401xd.com</p><p>&nbsp;</p><p>Layanan Klaim Garansi</p><p>Untuk bantuan teknisi dan klaim garansi produk, silakan email ke mycoding@401xd.com</p><p>&nbsp;</p><p>Layanan Pengembalian Barang &amp; Refund</p><p>Jika produk yang diterima salah/cacat/rusak &amp; ingin mengurus pengembalian dana, untuk laporan dan bantuan dapat menghubungi kami, email mycoding@401xd.com</p><p>&nbsp;</p><p>Layanan Pelanggan</p><p>Silakan berikan feedback atas pelayanan yang kurang berkenan dari tim kami. Tuliskan masukan Anda ke email mycoding@401xd.com</p><p>&nbsp;</p><p>Status Pengiriman</p><p>Untuk bantuan tracking status pesanan &amp; status pengiriman, silakan menghubungi kami, email mycoding@401xd.com</p><p>&nbsp;</p><p>Merchant &nbsp;</p><p>Ingin memulai jualan? Anda bisa mendaftar menjadi merchant &amp; bertanya seputar Marketplace ke email mycoding@401xd.com</p><p>&nbsp;</p><p>Tidak Dapat Menemukan Tim yang Anda Cari?</p><p>Anda dapat menghubungi kami email mycoding@401xd.com</p>', 'contact'),
(3, 'Testimoni', '<p>redirect page</p>', 'testimoni'),
(4, 'Kebijakan Privasi', '<p>TokokuViaWA memahami dan menghormati privasi Anda dan nilai hubungan kami dengan Anda. Kebijakan Privasi ini menjelaskan bagaimana TokokuViaWA mengumpulkan, mengatur dan melindungi informasi Anda ketika Anda mengunjungi dan/atau menggunakan situs atau aplikasi TokokuViaWA, bagaimana TokokuViaWA menggunakan informasi dan kepada siapa TokokuViaWA dapat berbagi.</p><p>&nbsp;</p><p>Kebijakan privasi ini juga memberitahu Anda bagaimana Anda dapat meminta TokokuViaWA untuk mengakses atau mengubah informasi Anda serta menjawab pertanyaan Anda sehubungan dengan Kebijakan Privasi ini.Kata-kata yang dimulai dengan huruf besar dalam Kebijakan Privacy ini mempunyai pengertian yang sama dengan Syarat dan Ketentuan penggunaan situs dan aplikasi TokokuViaWA.</p><p>&nbsp;</p><p>Informasi yang kami kumpulkan</p><p>TokokuViaWA dapat memperoleh dan mengumpulkan informasi dan/atau konten dari situs dan aplikasi yang Anda atau pengguna lain sambungkan atau disambungkan oleh situs atau aplikasi TokokuViaWA dengan situs atau pengguna tertentu dan informasi dan/atau konten yang Anda berikan melalui penggunaan situs atau aplikasi TokokuViaWA dan/atau pengisian Aplikasi.</p><p>&nbsp;</p><p>Ketika Anda mengunjungi situs atau aplikasi TokokuViaWA, TokokuViaWA dapat mengumpulkan informasi apapun yang telah dipilih bisa terlihat oleh semua orang dan setiap informasi publik yang tersedia. Informasi ini dapat mencakup nama Anda, gambar profil, jenis kelamin, kota saat ini, hari lahir, email, jaringan, daftar teman, dan informasi-informasi Anda lainnya yang tersedia dalam jaringan. Selain itu, ketika Anda menggunakan aplikasi TokokuViaWA, atau berinteraksi dengan alat terkait, widget atau plug-in, TokokuViaWA dapat mengumpulkan informasi tertentu dengan cara otomatis, seperti cookies dan web beacon.</p><p>&nbsp;</p><p>Informasi yang TokokuViaWA kumpulkan dengan cara ini termasuk alamat IP, perangkat pengenal unik, karakteristik perambah, karakteristik perangkat, sistem operasi, preferensi bahasa, URL, informasi tentang tindakan yang dilakukan, tanggal dan waktu kegiatan. Melalui metode pengumpulan otomatis ini, TokokuViaWA mendapatkan informasi mengenai Anda. TokokuViaWA mungkin menghubungkan unsur-unsur tertentu atas data yang telah dikumpulkan melalui sarana otomatis, seperti informasi browser Anda, dengan informasi lain yang diperoleh tentang Anda, misalnya, apakah Anda telah membuka email yang dikirimkan kepada Anda.</p><p>&nbsp;</p><p>TokokuViaWA juga dapat menggunakan alat analisis pihak ketiga yang mengumpulkan informasi tentang lalu lintas pengunjung situs atau aplikasi TokokuViaWA. Browser Anda mungkin memberitahu Anda ketika Anda menerima cookie jenis tertentu atau cara untuk membatasi atau menonaktifkan beberapa jenis cookies. Harap dicatat, bahwa tanpa cookie Anda mungkin tidak dapat menggunakan semua fitur dari situs atau aplikasi TokokuViaWA.</p><p>&nbsp;</p><p>Situs atau aplikasi TokokuViaWA mungkin berisi link ke tempat pihak lain yang dapat dioperasikan oleh pihak lain tersebut yang mungkin tidak memiliki kebijakan privasi yang sama dengan TokokuViaWA. TokokuViaWA sangat menyarankan Anda untuk membaca dan mempelajari kebijakan privasi dan ketentuan-ketentuan pihak lain tersebut sebelum masuk atau menggunakannya. TokokuViaWA tidak bertanggung jawab atas pengumpulan dan/atau penyebaran informasi pribadi Anda oleh pihak lain atau yang berkaitan dengan penggunaan media sosial seperti Facebook dan Twitter dan TokokuViaWA dibebaskan dari segala akibat yang timbul atas penyebaran dan/atau penyalahgunaan informasi tersebut.</p><p>&nbsp;</p><p>BAGAIMANA TokokuViaWA MENGGUNAKAN INFORMASI</p><p>TokokuViaWA dapat menggunakan informasi Anda yang diperoleh untuk menyediakan produk dan layanan yang Anda minta, sebagai data riset atau berkomunikasi tentang dan/atau mengelola partisipasi Anda dalam survei atau undian atau kontes atau acara khusus lainnya yang diadakan oleh TokokuViaWA, pengoperasian TokokuViaWA, memberikan dukungan kepada Anda sebagai pengunjung dan/atau pengguna situs atau aplikasi TokokuViaWA, merespon dan berkomunikasi dengan Anda mengenai permintaan Anda, pertanyaan dan/atau komentar Anda, membiarkan Anda untuk meninggalkan komentar di situs atau aplikasi TokokuViaWA atau melalui media sosial lainnya, membangun dan mengelola Akun Anda, mengirimkan berita-berita dan/atau penawaran-penawaran yang berlaku bagi Anda selaku pengunjung dan penguna situs atau aplikasi TokokuViaWA, untuk mengoperasikan, mengevaluasi dan meningkatkan bisnis TokokuViaWA termasuk untuk mengembangkan produk dan layanan baru; untuk mengelola komunikasi TokokuViaWA, menentukan efektifitas layanan, pemasaran dan periklanan situs atau aplikasi TokokuViaWA, dan melakukan akutansi, audit, dan kegiatan TokokuViaWA lainnya, melakukan analisis data termasuk pasar dan pencarian konsumen, analisis trend, keuangan, dan informasi pribadi, melaksanakan kerjasama dengan mitra TokokuViaWA yang terkait dengan program-program yang diadakan oleh TokokuViaWA, melindungi, mengidentifikasi, dan mencegah penipuan dan kegiatan kriminal lainnya, klaim dan kewajiban lainnya, membantu mendiagnosa masalah teknis dan layanan, untuk memelihara, mengoperasikan, atau mengelola situs atau aplikasi TokokuViaWAyang dilakukan oleh TokokuViaWA atau pihak lain yang ditentukan oleh TokokuViaWA, mengidentifikasi pengguna situs atau aplikasi TokokuViaWA, serta mengumpulkan informasi demografis tentang pengguna situs atau aplikasi TokokuViaWA, untuk cara lain yang TokokuViaWA beritahukan pada saat pengumpulan informasi.</p><p>&nbsp;</p><p>TokokuViaWA tidak akan menjual atau memberikan informasi pribadi Anda kepada pihak lain, kecuali seperti yang dijelaskan dalam kebijakan privasi ini. TokokuViaWA akan berbagi informasi dengan afiliasi TokokuViaWA atau pihak lain yang melakukan layanan berdasarkan petunjuk dari TokokuViaWA. Pihak lain tersebut tidak diizinkan untuk menggunakan atau mengungkapkan informasi tersebut kecuali diperlukan untuk melakukan layanan atas nama TokokuViaWA atau untuk mematuhi persyaratan hukum. TokokuViaWA juga dapat berbagi informasi dengan pihak lain yang merupakan mitra TokokuViaWA untuk menawarkan produk atau jasa yang mungkin menarik bagi AndaTokokuViaWA dapat mengungkapkan informasi jika dianggap perlu dalam kebijakan tunggal TokokuViaWA, untuk mematuhi hukum yang berlaku, peraturan, proses hukum atau permintaan pemerintah, dan peraturan yang berlaku di TokokuViaWA. Selain itu, TokokuViaWA dapat mengungkapkan informasi ketika percaya, pengungkapan diperlukan atau wajib dilakukan untuk mencegah kerusakan fisik atau kerugian finansial atau hal lainnya sehubungan dengan dugaan atau terjadinya kegiatan ilegal. TokokuViaWA juga berhak untuk mengungkapkan dan/atau mengalihkan informasi yang dimiliki apabila sebagian atau seluruh bisnis atau aset TokokuViaWA dijual atau dialihkan.TokokuViaWA dapat menyimpan dan/atau memusnahkan informasi tentang Anda sesuai kebijakan yang berlaku atau jika diperlukan.</p><p>&nbsp;</p><p>UPDATE KEBIJAKAN PRIVASI INI</p><p>Kebijakan Privasi ini mungkin diperbarui secara berkala dan tanpa pemberitahuan sebelumnya kepada Anda untuk mencerminkan perubahan dalam praktik informasi pribadi. TokokuViaWA akan menampilkan pemberitahuan di bagian info profil website untuk memberitahu Anda tentang perubahan terhadap Kebijakan Privasi dan menunjukkan di bagian atas Kebijakan saat ketika Kebijakan Privasi ini terakhir diperbarui. Kebijakan Privasi ini merupakan satu kesatuan dan menjadi bagian yang tidak terpisahkan dari Syarat dan Ketentuan Penggunaan situs dan aplikasi TokokuViaWA.</p>', 'privacy-policy'),
(5, 'Syarat dan Ketentuan', '<p>Selamat datang dan terima kasih telah mengunjungi situs/aplikasi TokokuViaWA. Silahkan membaca Syarat dan Ketentuan ini dengan seksama. Syarat dan Ketentuan ini mengatur akses, penelusuran, penggunaan, dan pembelian barang-barang yang ditawarkan atau dijual di blackexpotokokuviawa.401xd.com kepada Anda. Dengan mengakses, menelusuri, dan menggunakan situs/aplikasi TokokuViaWA ini, berarti Anda telah membaca, mengerti, dan setuju untuk tunduk dan terikat pada Syarat dan Ketentuan ini, dan Anda juga setuju untuk tidak mempengaruhi, mengganggu, atau berusaha mempengaruhi atau mengganggu jalannya situs/aplikasi TokokuViaWA dengan cara apapun. Jika Anda tidak menyetujui salah satu, sebagian, atau seluruh isi Syarat dan Ketentuan ini, maka Anda tidak diperkenankan untuk mengakses, menelusuri atau menggunakan situs/aplikasi TokokuViaWA ini. Akses, penelusuran, dan penggunaan situs/aplikasi TokokuViaWA ini hanya untuk penggunaan pribadi Anda. Anda tidak diperkenankan untuk mendistribusikan, memodifikasi, menjual, atau mengirimkan apapun yang Anda akses dari situs/aplikasi TokokuViaWA ini, termasuk tetapi tidak terbatas pada teks, gambar, audio, dan video untuk keperluan bisnis, komersial, publik atau kepeluan non-personal lainnya.</p><p>&nbsp;</p><p>Penggunaan konten situs/aplikasi TokokuViaWA, logo TokokuViaWA, merek layanan dan/atau merek dagang yang tidak sah dapat melanggar undang-undang hak kekayaan intelektual, hak cipta, merek, privasi, publisitas, hukum perdata dan pidana tertentu. Syarat dan Ketentuan ini termasuk hak kekayaan intelektual milik TokokuViaWA yang dilindungi hak cipta. Setiap penggunaan Syarat dan Ketentuan ini oleh pihak manapun, baik sebagian maupun seluruhnya, tidak diizinkan. Pelanggaran atas hak atas kekayaan intelektual TokokuViaWA ini dapat dikenakan tindakan atau sanksi berdasarkan ketentuan hukum yang berlaku.Anda perlu mengunjungi halaman ini secara berkala untuk mengetahui setiap perubahan Syarat dan Ketentuan ini.</p>', 'terms'),
(6, 'Cara Berbelanja', '<p>Anda bisa mengklik “Blanja sekarang” di blanja.com untuk membeli produk, atau Anda bisa menambahkan produk ke Favorit dahulu lalu menempatkan pesanan.</p><p><strong>1. Blanja sekarang</strong></p><p>1.1 Jika Anda ingin membeli produk langsung ketika Anda melihatnya di Product Detail Page (gambar di bawah), Anda bisa mengklik “Blanja sekarang” setelah Anda memilih atribut, jumlah, dll. dari produk tersebut.</p><p>&nbsp;</p><p>1.2 Setelah Anda mengkonfirmasi alamat pengiriman, informasi pesanan dan informasi lainnya, klik “Selanjutnya”.</p><p>&nbsp;</p><p>1.3 Anda bisa masuk ke “My blanja”-“Pesanan Saya” dan melihat pesanan yang telah ditempatkan. Jika Anda sudah mengkonfirmasi jumlah dari pesanan tersebut, klik “Bayar”.</p><p>&nbsp;</p><p>1.4 Masuk ke halaman pembayaran dan bayarkan pesanan. Status pemesanan akan berubah menjadi “Telah dibayar”, yang artinya barang sedang menunggu dikirim oleh penjual.</p><p>&nbsp;</p><p>1.5 Setelah penjual berhasil mengirimkan barang, status pemesanan akan berubah menjadi “Telah dikirim”. Ketika anda menerima barang dan mengkonfirmasi, mohon klik “Konfirmasi”.</p><p>&nbsp;</p><p>Anda harus memasukkan password Dompet Blanja sebelum mengklik “Konfirmasi”.</p><p>&nbsp;</p><p>1.6 Ketika status berubah ke \"Selesai\", maka berarti transaksi telah selesai</p><p>&nbsp;</p><p><strong>Checkout beberapa produk yang telah ditambahkan ke Troli blanja secara bersamaan</strong></p><p>Anda bisa menambahkan beberapa produk ke Troli blanja dan membelinya secara bersamaan, lalu menempatkan pesanan dan membayar sekali sekaligus. Prosesnya sama seperti proses “Blanja sekarang”.</p>', 'shopping-help'),
(7, 'Pengiriman Barang', '<ol><li>Pengiriman barang untuk setiap transaksi yang terjadi melalui Platform TokokuViaWA menggunakan layanan pengiriman barang yang disediakan TokokuViaWA atas kerjasama TokokuViaWA dengan pihak jasa ekspedisi pengiriman barang resmi.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk peraturan terkait dengan syarat dan ketentuan pengiriman barang sepenuhnya ditentukan oleh pihak jasa ekspedisi pengiriman barang dan sepenuhnya menjadi tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>TokokuViaWA hanya berperan sebagai media perantara antara Pengguna dengan pihak jasa ekspedisi pengiriman barang.</li><li>Pengguna wajib memahami, menyetujui, serta mengikuti ketentuan-ketentuan pengiriman barang yang telah dibuat oleh pihak jasa ekspedisi pengiriman barang.</li><li>Pengiriman barang atas transaksi melalui sistem TokokuViaWA menggunakan jasa ekspedisi pengiriman barang dilakukan dengan tujuan agar barang dapat dipantau melalui sistem TokokuViaWA.</li><li>Pelapak (Penjual) wajib bertanggung jawab penuh atas barang yang dikirimnya.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk kerugian yang dapat timbul akibat kerusakan ataupun kehilangan pada barang, baik pada saat pengiriman barang tengah berlangsung maupun pada saat pengiriman barang telah selesai, adalah sepenuhnya tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Dalam hal diperlukan untuk dilakukan proses pengembalian barang, maka Pengguna, baik Pelapak (Penjual) maupun Pembeli, diwajibkan untuk melakukan pengiriman barang langsung ke masing-masing Pembeli maupun Pelapak (Penjual). TokokuViaWA tidak menerima pengembalian atau pengiriman barang atas transaksi yang dilakukan oleh Pengguna dalam kondisi apa pun.</li></ol>', 'pengiriman-barang');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` int(11) NOT NULL,
  `viewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `stock`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`) VALUES
(31, 'Yeezy Desert Sage Premium', 20000, 2, 14, 1, 200, '1609501508725.png', '<p><strong>Color: </strong>Desert Sage/Desert Sage/Desert Sage</p><ul><li>Synthetic</li><li>100% Authentic</li><li>Desert Sage</li><li>China</li><li>Item Weight : 4 Pounds</li><li>Department : Mens</li><li>Date First Available : March 30, 2020</li><li>Manufacturer : Adidas</li><li>ASIN : B086KZMKS6</li></ul>', '2021-01-01 18:45:08', 1, 'yeezy-desert-sage-premium', 0, 0, 7),
(32, 'Headset 3D Surround Deep Bass', 25000, 22, 9, 1, 200, '1609501718752.png', '<p>3D surround sound and deep bass - high-intensity 50mm speaker drivers gives you the ultimate immersive experience,</p><h2>About this item</h2><ul><li>3D surround sound and deep bass - high-intensity 50mm speaker drivers gives you the ultimate immersive experience, bringing you vivid sound field, sound clarity, shock feeling sound, perfect for various games like PUBG, God of War, halo 5 Guardians, Fortnight, call of Duty, CS: go, over watch, World of Warcraft Legion, etc.</li><li>noise resection microphone and ONE key mute - Be excellent PS4 headset with Omni-directional &amp; flexible microphone enables you to communicate clearly while you are in a game, can pick up sounds with great sensitivity and remove the noise easily</li><li>ergonomic design and easy volume adjustment - lightweight design and memory protein earmuffs provide maximum comfort and individual fit allow for long gaming sessions without fatigue. And provide excellent durability, suits all gamers at any age</li><li>VERSATILE compatibility - Support for PS4/Xbox one/PC/cellphone/PS Vita a free audio and mic Splitter is provided for PC. Tips extra Xbox adapter (not included) is needed when connected with an old version of Xbox one</li><li>durable braided cord with professional test - Upgraded cord with strong braided design, Fiber core is more lasting under frequent wearing and tearing, You will no longer find that your cord easily break and have to wrap the cord in tape.</li></ul>', '2021-01-01 18:48:38', 1, 'headset-3d-surround-deep-bass', 0, 0, 21),
(34, 'Motorolla Z7', 1200000, 20, 13, 1, 2000, '1609502466467.png', '<p>Experience 5G speeds with this unlocked Motorola edge smartphone. The 6.7-inch OLED display wraps around the edges to deliver a clear picture quality with a 90 HZ refresh rate. The Motorola edge smartphone has a 64MP triple-camera system for low-light, high-res, ultra-wide, and ultra-zoom photos. Plus, Motorola Edge comes with 6GB memory, and the 256GB of storage holds your files and applications. The 4500mAh rechargeable battery delivers up to two days of use, and the stereo sound delivers studio-quality performance. Wi-Fi - Wi-Fi 802.11 a/b/g/n/ac | 2.4GHz &amp; 5GHz | Wi-Fi hotspot</p><h2>About this item</h2><ul><li>Unlocked for the freedom to choose your carrier. 4G compatible with AT&amp;T, Sprint, T-Mobile, and Verizon networks. Sim card not included. Customers may need to contact Sprint for activation on Sprint’s network</li><li>In order to use this Device on Verizon first provision your SIM through Verizon Wireless . Log in to your account on Verizon Wireless . Devices &gt; activate or switch devices &gt; activate. Alternatively, call/visit a Verizon store.</li><li>Ultra-powerful 5G performance - Experience pure speed with the next gen wireless network, plus an insanely fast processor, 6GB memory, and 256GB storage. Compatible with T-Mobile\'s 5G network now. Ready for 5G on other networks dependent on carrier availability.</li><li>Immersive 90 Hz Endless Edge display - Get breathtaking HDR10 picture quality on a gorgeous 6.7” OLED display that wraps around the edges.</li><li>64MP Triple Camera System - Class-leading camera resolution lets you capture everything from super high-res to crisp low-light, and from ultra-wide to ultra-zoom.</li><li>6GB RAM + 256GB Storage - Plus, motorola edge comes loaded with 6GB memory and 256GB of storage.</li><li>Up to 2 day battery + Turbo Charging - Free yourself from power outlets with the class-leading 4500 mAh battery, and fuel up fast with TurboPower.</li></ul>', '2021-01-01 19:01:06', 1, 'motorolla-z7', 5, 0, 10),
(35, 'Esport Shirt ', 500000, 49, 10, 1, 200, '1609503521388.png', '<p><strong>Product details</strong></p><ul><li>Package Dimensions : 10 x 8 x 1 inches; 4.8 Ounces</li><li>Department : Mens</li><li>Date First Available : November 14, 2020</li><li>Manufacturer : Funny Console Video Gaming E Sports Gift Shirts</li><li>ASIN : B08NHPKT77</li></ul>', '2021-01-01 19:18:41', 1, 'esport-shirt', 5, 0, 5),
(36, 'Gaming Chari', 4200000, 56, 11, 1, 2900, '1609503967461.png', '<p>About this item</p><p>Premium Materials Soontrans Computer Gaming Chair combined the latest ergonomic design with premium quality PU leather and high-density foam.</p><ul><li>?Dimension? ·Seating: 15*19\'\'(W*L); ·Wheel bottom to Seating: 12-15\'\'(H); ·Diameter of Wheel Base:26\'\'(D); ·Overall Height?45-48\'\';</li><li>?Adjustable? 3 inch Height Adjustable; 90°to 160°Reclining backrest; Retractable footrest; Removable and adjustable headrest pillow and lumbar cushion for extra support.</li><li>?Wide Usage?This chair can be Computer Gaming Chair / Ergonomic Gaming Chair / Video Gaming Chair / Office Chair / Racing Style Chair.</li><li>?Customer Service?Extended 1-year warranty; If any missing,just feel free to contact us via Amazon: Find the product item--click \"Sold by Soontrans Direct\"(on the top right side of the page)---Ask a question . 24/7 Customer Services Team all for your shopping experience.</li></ul>', '2021-01-01 19:26:07', 1, 'gaming-chari', 5, 0, 4),
(37, 'Intel I9 Processor', 9000000, 22, 12, 1, 1998, '1609587127785.png', '<p>Samsung 128GB MicroSDXC EVO Select Memory Card with Adapter</p><h3>With stunning speed and reliability, the Samsung 128GB microSDXC EVO&nbsp;</h3><p>Select memory card lets you get the most out of your devices. Ultra-fast read &amp; write speeds of up to 100MB/s &amp; 60MB/s and backed by 4-proof protection, keep your data safe against water, extreme temperatures, and other harsh conditions. Feel confident to capture, store and transfer 4K UHD videos, photos, music and other large files effortlessly. Your memories and adventures are irreplaceable, and now unforgettable.</p>', '2021-01-02 18:32:07', 1, 'intel-i9-processor', 0, 0, 4),
(38, 'Ryzen 3 Processor Tap', 6500000, 19, 12, 1, 2000, '1609587435332.png', '<p>Available at a lower price from <a href=\"https://www.amazon.com/gp/offer-listing/B08DHRG2X9/ref=dp_olp_pn\">other sellers</a> that may not offer free Prime shipping.</p><h2>About this item</h2><ul><li>10 core/20 threads</li><li>Up to 5.2ghz Unlocked</li><li>Compatible with Intel 400 series chipset based motherboards</li><li>Intel Turbo Boost Max Technology 3.0 Support</li></ul>', '2021-01-02 18:37:15', 1, 'ryzen-3-processor-tap', 1, 0, 15),
(39, 'ROG Gaming Laptop KLX562 Asus', 5000000, 20, 12, 1, 5000, '1609587589731.png', '<p>Available at a lower price from other sellers that may not offer free Prime shipping.</p><h3>About this item</h3><p>&nbsp;</p><ul><li>10 core/20 threads</li><li>Up to 5.2ghz Unlocked</li><li>Compatible with Intel 400 series chipset based motherboards</li><li>Intel Turbo Boost Max Technology 3.0 Support</li></ul>', '2021-01-02 18:39:49', 1, 'rog-gaming-laptop-klx562-asus', 0, 1200000, 10),
(40, 'Keyboard Mechanical Gamen', 200000, 20, 12, 1, 1000, '1609587634578.png', '<p>Available at a lower price from <a href=\"https://www.amazon.com/gp/offer-listing/B08DHRG2X9/ref=dp_olp_pn\">other sellers</a> that may not offer free Prime shipping.</p><h2>About this item</h2><ul><li>10 core/20 threads</li><li>Up to 5.2ghz Unlocked</li><li>Compatible with Intel 400 series chipset based motherboards</li><li>Intel Turbo Boost Max Technology 3.0 Support</li></ul>', '2021-01-02 18:40:34', 1, 'keyboard-mechanical-gamen', 0, 0, 5),
(41, 'SD Card 128GB Samsung', 300000, 10, 12, 1, 120, '1609587728000.png', '<p>Available at a lower price from <a href=\"https://www.amazon.com/gp/offer-listing/B08DHRG2X9/ref=dp_olp_pn\">other sellers</a> that may not offer free Prime shipping.</p><h2>About this item</h2><ul><li>10 core/20 threads</li><li>Up to 5.2ghz Unlocked</li><li>Compatible with Intel 400 series chipset based motherboards</li><li>Intel Turbo Boost Max Technology 3.0 Support</li></ul>', '2021-01-02 18:42:08', 1, 'sd-card-128gb-samsung', 0, 0, 3),
(42, 'Nike Mercurial GoPRO Ordered UK2', 200000, 20, 14, 1, 300, '1609587805609.png', '<p>Boys\' NIKE team hustle d 9 (GS) basketball shoe is built with a leather upper integrated with foam-backed mesh for comfort. A midfoot strap locks your foot down, while a lightweight, flexible foam midsole provides toe-to-heel cushioning.</p><h2><strong>Product details</strong></h2><ul><li>Product Dimensions : 12.2 x 8.66 x 4.72 inches; 8 Ounces</li><li>Item model number : AQ4224</li><li>Department : Unisex-child</li><li>Date First Available : April 9, 2019</li><li>Manufacturer : Nike</li><li>ASIN : B07HHTS1J3</li></ul>', '2021-01-02 18:43:25', 1, 'nike-mercurial-gopro-ordered-uk2', 0, 100000, 14),
(43, 'BLU G90 Gaming Smartphone', 4500000, 2000, 13, 1, 2000, '1609588189109.png', '<p>BLU G90 Pro – 6.5” HD+ Gaming Smartphone, Quad Camera, 128GB+4GB RAM – Purple Haze</p><h2>About this item</h2><ul><li>Gorgeous 6.5” Full HD+ Infinity Display; Premium Glass Design</li><li>Quad A.I Camera 48MP Sony Sensor + Depth Recognition + 8MP Wide Angle 120° + 2MP Macro + LED Flash, and 32MP Front Selfie Camera</li><li>128GB Internal Memory 4GB RAM Micro SD up to 128GB; MediaTek helio |G90T Gaming Octa-Core 2.0GHz + Liquid Cool Technology</li><li>Fortnite Compatible, Android 10, Mega 5,000mAh Battery with 18W Ultra Quick Charger + Type-C Charger, Fingerprint sensor and A.I Face ID</li><li>4G LTE (1/2/3/4/5/7/8/12/13/17/28) 3G: (850/900/1700/1900/2100): US compatibility Nationwide on all GSM Networks including AT&amp;T, T-Mobile, Cricket, Metro PCS, and others. (Not compatible with CDMA Networks like Verizon, Sprint, and Boost Mobile)</li></ul>', '2021-01-02 18:49:49', 1, 'blu-g90-gaming-smartphone', 0, 3500000, 1),
(44, 'Kaos Oblong Tanah Abang XL/L/S', 250000, 20, 10, 1, 200, '1609588259819.png', '<p>Boys Basketball Shoes Kids Basketball Sneakers Girls Non-slip Outdoor Training Shoes Mid Top Running Shoes Comfortable Boys Sports Shoes Durable Indoor Court Shoes Little Kid/Big Kid</p><p><strong>The design of the boys basketball shoes is to protect children\'s safety as the primary purpose. Therefore, we use non-slip and wear-resistant TPR outsole and air cushion midsole,they will play a role in shock absorption and cushioning during exercise, in order to provide sufficient safety for children.</strong></p><p>Our kids basketball shoes feature a mesh upper and skin-friendly lining that are breathable and stretchy. The soft and high-quality fabrics make children\'s feet more comfortable.High-top basketball shoes can protect children from sprains during intense sports.</p><p><strong>SIZE CHART</strong></p><p>11 little kid=EU 28= 7.3IN(inner length)</p><p>11.5 little kid=EU 29= 7.5IN(inner length)</p><p>12.5 little kid=EU 30= 7.8IN(inner length)</p><p>13 little kid=EU 31= 8.1IN(inner length)</p><p>1 little kid=EU 32= 8.3IN(inner length)</p>', '2021-01-02 18:50:59', 1, 'kaos-oblong-tanah-abang-xlls', 0, 0, 8),
(45, 'Gaming Chair Terkeren Brand American', 5000000, 2, 11, 1, 5000, '1609588349086.png', '<p>CONSOLE GAMING COMFORT provided by a plush removable headrest pillow and segmented padding that lead to the ultimate experience a fully functional gaming recliner that lets you level up while laying back</p><h2>About this item</h2><ul><li>CONTROLS AND DRINKS AT THE READY with a removable side pouch that hangs off the left arm to keep game controllers close and a cupholder built into the left arm so you don\'t have to pause the gaming action to refuel</li><li>CONTINUOUS SURFACE WITH INDEPENDENT CONTROLS The chair and footrest are a continuous surface, no open spaces to get wires caught, but operate independently to give you total control over your gaming chair experience Features a 275 lb weight capacity</li><li>RECLINE WITH CONFIDENCE Comfortably recline up to 135 degrees and feel secure because the 360 degree swivel base provides sturdy support for both the extendable footrest and reclining back allowing you to focus on your foes, not your balance</li><li>AWARD NOMINATED BRAND, RESPAWN is committed to your satisfaction and covers this gaming chair with our RESPAWN Limited Lifetime Warranty</li></ul>', '2021-01-02 18:52:29', 1, 'gaming-chair-terkeren-brand-american', 1, 300000, 12),
(46, 'QZHIHE Mens Running Shoes Blade Sneakers Mesh', 500000, 2, 14, 1, 2000, '1609588665929.png', '<p>The blade sneaker knit upper for breathability, help you get rid of stuffy feet. Let your foot always keeps dry and cool.&nbsp;</p><p><strong>The sport shoes are made of mesh. So they are light and breathable.these shoes are so light that it feels as though that you are walking on air. Really comfy, stylish, well made.</strong></p><ul><li>Imported</li><li>Rubber sole</li><li>These running shoes are awesome for heel strikers because they have a lot of cushion and shock absorbtion in the soles. The sole Is made of hollow carved technology. They are comfortable and look pretty good. You can see it has an air chamber for shock absorbtion.</li><li>Fashion Sneakers Exterior:Unique overall color contrast design. Bright colours, simple and stylish appearance.</li><li>This is a very fashionable sport shoe, its design style is very unique, it’s easy to be attached by people’s eyes in the crowd. It is comfortable and you can exercise your feet for a long time without feeling uncomfortable. It is as flexible at the bottom.</li><li>The sole is made of ultra-light natural rubber material, which is elastic and durable. Use them to work, jog, fish and hike.&nbsp;Very comfortable, with a lot of toe box space, moderate arched support.</li></ul>', '2021-01-02 18:57:45', 1, 'qzhihe-mens-running-shoes-blade-sneakers-mesh', 0, 250000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `rekening` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `rekening`, `name`, `number`) VALUES
(8, 'BCA', 'MC Project', '123456789'),
(9, 'BNI', 'MC Project', '123456789'),
(10, 'Gopay', 'MC Project', '123456789'),
(11, 'OVO', 'MC Project', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `regency_id` int(11) NOT NULL,
  `verify` int(11) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `favicon` varchar(30) NOT NULL,
  `ongkir` int(1) NOT NULL,
  `default_ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `regency_id`, `verify`, `logo`, `favicon`, `ongkir`, `default_ongkir`) VALUES
(1, 1, '2022-09-22T11:26', 'Toko online terlengkap dan terpercaya. Dapatkan penawaran dengan kualitas terbaik. TokoKu ViaWA hadir untuk memenuhi kebutuhan Anda.', 'Padang, Indonesia', 1, 1, '1644868908236.png', '1644868946111.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'facebook-f', 'https://facebook.com/MyCodingXD'),
(3, 'Twitter', 'twitter', 'https://twitter.com/MyCodingXD'),
(4, 'Blog', 'blogger', 'https://blog.mycoding.id'),
(5, 'Instagram', 'instagram', 'https://instagram.com/MyCodingXD'),
(6, 'Youtube', 'youtube', 'https://youtube.com/c/MyCodingXD');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `headline` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `photo`, `content`, `headline`) VALUES
(3, 'Ayung Darma - Pekalongan', '', 'Oia mf sis, Nich brg nya barusan aja ampe, mksh ya. Brg nya bgs banget, sesuai yg digambarnya, makasih ya', 'Produk Sesuai'),
(5, 'Dewanti - Solo', '', 'Barang tidak mengecewakan.. cs nya fast respon, resi besoknya langsung di share tanpa kita tanya.. mantap', 'Fast Respon'),
(6, 'Via Garolita - Cimahi', '', 'Sistaaaa…… baju nyaa udah smpee… bguss dechh…suka bgt… maaksiih yaa. Brg nya bgs banget', 'Kualitas Bagus'),
(9, 'Dina - Malang', '', 'Respon cs baik, tapi untuk pengirimannya agak lama, padahal pakai ekspedisi ”sicepat” harusnya bisa cepat sampainya.', 'CS Ramah');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_invoice`, `product_name`, `price`, `qty`, `slug`, `ket`) VALUES
(187, 791494, 'Jilbab Putih dari Kayangan', 192000, 1, 'kami-yarra-print-scarf-nuvoile-aster-jilbab-segiempat', ''),
(188, 533589, 'Gaming Chair American', 300000, 1, 'gaming-chair-xyz-kuy-american', ''),
(189, 979125, 'SD Card 128GB Samsung', 300000, 1, 'sd-card-128gb-samsung', ''),
(190, 506112, 'Ryzen 3 Processor Tap', 6500000, 1, 'ryzen-3-processor-tap', ''),
(191, 886131, 'Gaming Chair American', 300000, 2, 'gaming-chair-xyz-kuy-american', ''),
(192, 466628, 'Gaming Chair American', 5000000, 1, 'gaming-chair-xyz-kuy-american', ''),
(193, 965986, 'Kaos Oblong Tanah Abang XL/L/S', 250000, 1, 'kaos-oblong-tanah-abang-xlls', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod`
--
ALTER TABLE `cod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_send`
--
ALTER TABLE `email_send`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_product`
--
ALTER TABLE `package_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cod`
--
ALTER TABLE `cod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_send`
--
ALTER TABLE `email_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_product`
--
ALTER TABLE `package_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
