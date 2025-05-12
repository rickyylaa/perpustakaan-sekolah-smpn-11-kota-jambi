-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2025 at 12:48 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan-sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `bukus`
--

CREATE TABLE `bukus` (
  `id` bigint UNSIGNED NOT NULL,
  `isbn` bigint DEFAULT NULL,
  `judul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `rak_dan_baris_id` bigint UNSIGNED NOT NULL,
  `penulis` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` int NOT NULL,
  `stok_buku` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `sampul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sampul.png',
  `status` enum('aktif','nonaktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bukus`
--

INSERT INTO `bukus` (`id`, `isbn`, `judul`, `slug`, `kategori_id`, `rak_dan_baris_id`, `penulis`, `penerbit`, `tahun_terbit`, `stok_buku`, `deskripsi`, `sampul`, `status`, `created_at`, `updated_at`) VALUES
(1, 9793936346694, 'Vel quia officiis.', 'non-quasi-facilis-quibusdam', 3, 7, 'Salsabila Nasyiah', 'PT Mardhiyah Pratama', 1972, 38, 'Voluptate reiciendis minus quos cupiditate. Culpa ea soluta magni ut placeat consectetur. Odit adipisci sed sequi molestiae quisquam. Similique sequi ex sint expedita. Est tempore rem placeat sit quia hic. Iste et quasi voluptatum esse esse maiores.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(2, 9789512960286, 'Amet explicabo asperiores.', 'sit-aut-molestias', 4, 10, 'Tiara Oktaviani M.TI.', 'CV Anggriawan Natsir', 2008, 24, 'Veritatis dolor nam est soluta. Laborum corrupti non cupiditate qui quaerat nesciunt. Et necessitatibus hic enim debitis.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(3, 9791898367443, 'Totam error ea laborum.', 'non-eligendi-perspiciatis', 1, 1, 'Jane Astuti S.Farm', 'CV Haryanto Tbk', 1990, 44, 'Laborum eos fugiat hic quibusdam qui adipisci dolorem rem. Est eius unde dolore optio quam occaecati qui. Natus sit vel totam. Est aperiam tempore autem delectus provident.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(4, 9791693754301, 'Maiores nam at aspernatur.', 'et-quam-suscipit-necessitatibus', 2, 4, 'Galiono Pradipta', 'Fa Suwarno', 2012, 11, 'Dolorem enim placeat voluptate fugiat sunt. Sapiente nihil error harum et optio ea officia. Rerum et aut est consequuntur eligendi. Pariatur sunt voluptatem eveniet quos consequatur. Molestiae est unde fugit odit quis error est dolorem. Vitae voluptas quia voluptatum animi qui.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(5, 9789658269250, 'Repudiandae aut eos consectetur.', 'quis-ea-laboriosam-mollitia', 5, 13, 'Limar Saefullah M.Ak', 'CV Prasasta Ramadan', 2004, 35, 'Perferendis vitae cum et esse recusandae quasi nihil. Ea unde voluptatem doloremque perspiciatis molestias impedit necessitatibus. Reiciendis aut eum non vitae. Possimus impedit non aut rerum. Id neque quia est unde. Fugit quibusdam assumenda numquam ipsa sed tempora fugiat.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(6, 9787292364584, 'Modi animi perspiciatis autem.', 'fugit-molestiae-distinctio-eum', 2, 6, 'Cinthia Mulyani', 'PT Nugroho Tbk', 2013, 18, 'Rem perferendis qui voluptatem autem et enim sed. Sunt eveniet maiores ullam non aut optio est. Voluptatem quibusdam nisi quos ratione et molestias omnis. Vel dolorem aut illo.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(7, 9784630261383, 'Alias in delectus.', 'dolorum-exercitationem-veritatis-omnis', 4, 12, 'Balapati Luis Prabowo', 'PD Irawan Uwais Tbk', 1982, 43, 'Officia fuga temporibus est cum quia aspernatur. Quisquam laborum exercitationem quis reiciendis maxime. Quas autem qui quasi suscipit repellendus dolor tempore quaerat. Hic sint illo numquam maxime.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(8, 9796300777193, 'Eum consequatur aut.', 'debitis-cupiditate-aut', 1, 1, 'Mustofa Uwais', 'Fa Kusmawati Pudjiastuti Tbk', 2010, 25, 'Et deserunt quia quam consequatur. Vel magnam est blanditiis at eligendi reiciendis fuga. Quo accusantium natus eos laboriosam culpa tempora. Nihil labore nisi quos sint vel unde.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(9, 9782961729176, 'Consectetur repellat.', 'error-quod-quidem-dolorem', 5, 15, 'Luhung Situmorang M.TI.', 'CV Safitri Tbk', 2010, 7, 'Excepturi a quos nulla dolores maiores consequatur. Qui nulla aut quia aut aut rem. Tempora explicabo natus omnis laborum repellat.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(10, 9789799273765, 'Error eaque quibusdam.', 'nam-atque-qui-unde', 4, 10, 'Teddy Gambira Dongoran', 'Fa Saputra', 2024, 19, 'Eius debitis ut omnis totam nam ipsum. Modi culpa aut ut iure. Ut eos debitis ea. Earum excepturi aliquid sint esse quasi hic.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(11, 9798455264856, 'Libero a adipisci vel.', 'veritatis-dolores-perferendis', 5, 15, 'Vivi Gilda Padmasari M.Pd', 'PJ Handayani Tbk', 1973, 37, 'Eos libero quae nihil ea debitis numquam reiciendis. Quo quisquam ducimus at nostrum quia doloribus. Minus tempore recusandae veritatis. Quia vitae placeat cum vel earum eos.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(12, 9793469906136, 'Nihil labore.', 'corporis-pariatur-et-natus', 5, 13, 'Dartono Tugiman Narpati', 'PD Manullang', 1973, 8, 'Voluptate facilis omnis eaque asperiores autem excepturi. Quis odit sit praesentium praesentium. Nesciunt ducimus eius eaque et aut hic.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(13, 9784067075751, 'Tenetur assumenda numquam est.', 'qui-non-quibusdam-eveniet-aliquam', 4, 11, 'Vanya Wahyuni', 'Perum Hutasoit', 2014, 39, 'Illo molestiae saepe dolor rem in. Expedita temporibus totam quibusdam velit ipsam officia. Incidunt vel aperiam veritatis reprehenderit aliquam perferendis. Itaque animi excepturi maiores consequatur magni nesciunt. Aut repellat aut harum neque. Error reiciendis ut non a veritatis voluptatibus repudiandae facere.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(14, 9782106606683, 'Delectus velit sequi.', 'eum-id', 4, 11, 'Purwanto Siregar', 'Perum Pratama (Persero) Tbk', 2017, 21, 'Magni ipsum iure hic ducimus autem. Consequatur et enim qui et quia quia exercitationem. Quasi qui exercitationem sunt minima harum quae. Adipisci tenetur et doloremque quod et itaque nemo. Quo autem qui commodi qui inventore quaerat.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(15, 9791378997542, 'Ipsum voluptas sint adipisci.', 'aut-voluptatem-pariatur-sit', 3, 9, 'Nugraha Sirait', 'Perum Widiastuti', 1995, 50, 'Et provident et fuga ipsa non ut. Repellat ipsum eum eveniet mollitia rerum dolor ullam. Consequatur rerum officia aut atque tenetur modi. Est modi ut iste. Quidem voluptatem dolore sed. Magnam aut ab repellendus odio et modi.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(16, 9783567521300, 'Magni harum esse.', 'et-quis-dolorem-deserunt', 5, 13, 'Bella Novitasari', 'PD Riyanti (Persero) Tbk', 2022, 16, 'Expedita asperiores voluptatem dolore. Quam et inventore minus eum. Rem et aliquam saepe quia ipsum itaque consectetur. Dolore itaque quisquam ducimus tempore et. Et sit et cum. Voluptate quia quaerat nobis molestiae.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(17, 9793437979216, 'Sit voluptatem.', 'animi-itaque-sit-eligendi', 1, 3, 'Akarsana Gunawan', 'PT Astuti Prastuti Tbk', 1992, 11, 'Nemo delectus nisi repudiandae sit nam non. Assumenda amet eius ea ad. Et explicabo ut dolore aut aut dolor natus. Blanditiis sint iure earum sapiente sed molestiae aut voluptatem. Sit maxime ullam sequi ad maxime consectetur.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(18, 9782937627314, 'Odit aliquam debitis occaecati non.', 'consequatur-non-illum', 2, 4, 'Dono Maulana M.Farm', 'PD Narpati Budiman', 1999, 42, 'Et blanditiis quos voluptas. Excepturi ducimus assumenda tempora aperiam. Aliquid quia pariatur voluptatibus aliquam. Tempore quidem aut aut aut quo ipsum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(19, 9788365447067, 'Sequi ducimus magni dolorum.', 'eveniet-ullam-praesentium', 2, 6, 'Cengkal Permadi', 'Fa Permadi Wastuti', 2004, 5, 'Quas repudiandae labore corrupti nostrum quam. Omnis doloribus facilis quo dicta. Quis id exercitationem nobis doloremque placeat eum ab. Et dolore tempora ut quia et illo. Qui in molestias expedita aut maiores unde quisquam. Facere ullam dolorum illum tempora ea officiis.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(20, 9780335538997, 'Dolore in ut vel.', 'rerum-repellat', 5, 13, 'Padma Nasyiah', 'Perum Farida Puspita (Persero) Tbk', 1972, 12, 'Aliquid nostrum ducimus voluptates molestiae odit cum quia quae. Laborum optio enim quisquam et mollitia repellat. Necessitatibus aspernatur iure voluptatibus aut. Doloribus atque doloribus rem possimus dolores praesentium voluptatem rerum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(21, 9797047423794, 'Minima quae.', 'sed-sapiente-totam', 2, 4, 'Lidya Lestari', 'Perum Saputra', 2023, 47, 'Tempora consequatur quis eveniet fuga eius. Molestias aut et exercitationem dolorem enim facere quam. Consequatur labore nihil accusamus fugit molestiae saepe quis.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(22, 9783237495108, 'Voluptas et molestias delectus.', 'laboriosam-atque-aliquid', 2, 5, 'Ikin Nugroho', 'PJ Pratiwi Prastuti (Persero) Tbk', 2021, 3, 'Ratione possimus nesciunt labore dolorem. Asperiores veritatis adipisci vitae aspernatur rerum sequi. Nesciunt omnis sapiente ex dignissimos praesentium non praesentium distinctio. Iusto deserunt illo occaecati enim consectetur. Velit rerum adipisci vero nostrum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(23, 9780640702748, 'Magnam cupiditate et.', 'ab-eum', 1, 3, 'Ani Wulandari S.Farm', 'Perum Narpati (Persero) Tbk', 1981, 44, 'Reiciendis quo nostrum sit possimus necessitatibus. Cupiditate dolorum exercitationem dolorum ratione qui iusto est iure. Neque cumque quaerat quo iste voluptates recusandae officia. Facere labore consectetur id odit quas commodi. Nemo nihil id cumque ut ullam iusto.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(24, 9781060272569, 'Assumenda sunt magni.', 'repellat-delectus-sequi-vitae', 5, 15, 'Febi Vicky Hariyah M.Farm', 'CV Hidayat Farida (Persero) Tbk', 2018, 38, 'Animi quasi officiis distinctio consequuntur quo ducimus nesciunt unde. Ducimus ratione quasi et sunt eveniet dolor. Qui laborum corporis inventore et. Minus et nihil quae consequuntur fugiat. Laboriosam ullam est dolor.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(25, 9798569639786, 'Repellat iure quis.', 'tempora-ut-suscipit', 4, 12, 'Cemplunk Nasim Hidayat S.Pt', 'Fa Usada Pangestu Tbk', 1998, 19, 'Sint earum ut praesentium laboriosam dolores in dolorem. Aut nostrum voluptas dolorum laboriosam tempore ratione tenetur mollitia. Omnis reprehenderit fugit non incidunt. Hic occaecati id aliquid. Sint non cumque explicabo nobis. Ut odio accusamus iure aperiam officia mollitia ipsam ex.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(26, 9786619780793, 'Itaque cupiditate eveniet.', 'nemo-beatae-neque', 2, 4, 'Victoria Sudiati S.Sos', 'PJ Situmorang Tbk', 2002, 36, 'Voluptates sit sequi dolorem et molestiae id. Tenetur ad distinctio quis architecto dolore distinctio sunt atque. Esse quasi nesciunt culpa iure voluptatem aut. Officia officiis sunt voluptas ad.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(27, 9790929745847, 'Debitis ab perspiciatis dolorum.', 'eveniet-est-amet', 3, 7, 'Dartono Firmansyah S.Farm', 'PD Kuswoyo Tbk', 1975, 6, 'Minus quia repellat voluptatem ut. Quis rerum eligendi rerum maiores ea. Possimus voluptates officia repellendus voluptas quisquam ratione. Dolorem quibusdam atque dolores error ipsa. Illum harum vero velit odio velit mollitia quo. Velit odio itaque veniam in ut.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(28, 9791739464348, 'Voluptatem exercitationem eveniet aut.', 'est-voluptas-totam-et', 1, 3, 'Mursita Gangsa Anggriawan S.Sos', 'Yayasan Dongoran Tbk', 1988, 8, 'Quia ipsam autem et labore molestiae non. Quo deleniti facilis magnam voluptate qui. Vitae deleniti dolor eos rerum deleniti. Blanditiis qui fugit ad quaerat qui quo.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(29, 9797626169235, 'Quae molestiae molestias ab.', 'est-est-vel-nesciunt', 1, 2, 'Rini Yulia Winarsih', 'UD Widodo Tbk', 1974, 39, 'Architecto sunt deleniti porro quibusdam ducimus et. Laudantium quasi voluptatem vero unde voluptas aliquid. Rerum corporis nisi perferendis omnis. Quia sit animi id consequuntur qui. Est aliquam omnis dolor tenetur delectus perferendis.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(30, 9797316904108, 'Quam distinctio recusandae quia.', 'sunt-fugiat-itaque', 4, 11, 'Padma Icha Kuswandari M.Ak', 'PD Hastuti Manullang (Persero) Tbk', 2019, 14, 'Totam non odit sapiente itaque. Rem cum autem autem velit. Voluptates nulla id aut et quod vel voluptatem. Repudiandae nemo in sed illo.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(31, 9792844624801, 'Quia et incidunt maiores.', 'sint-ea-amet', 2, 5, 'Hamima Dewi Puspita S.Pd', 'Perum Andriani', 1973, 24, 'Maxime excepturi voluptatum eaque a distinctio. Aut ratione iure aut repellat in mollitia delectus. Quo nesciunt amet rem asperiores. Qui non totam quia amet cupiditate.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(32, 9786515948143, 'Sunt quia sed.', 'neque-impedit', 1, 3, 'Rini Sarah Mandasari M.Ak', 'PD Wijaya Tbk', 1971, 6, 'Voluptatem voluptatibus praesentium pariatur excepturi qui qui alias totam. Consequatur ea ipsa est explicabo. Quibusdam dicta quis possimus non et id. Aperiam cumque ut inventore architecto voluptates.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(33, 9784996271231, 'Rerum iure aut autem.', 'et-ducimus-et-repellat-dolorem', 2, 5, 'Jayadi Tirtayasa Widodo', 'Fa Puspasari', 2020, 7, 'Reiciendis et rerum suscipit adipisci eveniet. Natus recusandae dolor ab iure. Deserunt ea sit quaerat animi qui. Quis et autem quis ipsum ipsum. Occaecati dignissimos magni adipisci velit. Consequatur ullam deleniti provident ipsam alias nemo rerum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(34, 9780007005864, 'Voluptatum quia non.', 'molestias-excepturi-et', 5, 13, 'Cinta Laksmiwati', 'UD Andriani Kuswandari Tbk', 1999, 22, 'At sunt dolor dicta repudiandae incidunt voluptas. Laudantium consectetur autem dolorem consectetur. Ea tempore eos facere illum nemo.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(35, 9786013934303, 'Possimus eligendi accusantium.', 'sed-eum-excepturi-distinctio', 5, 15, 'Radit Hardi Saputra', 'Yayasan Prasetya Rahayu', 1979, 35, 'Ut ratione quae dolorum illum nihil minima et. Temporibus aliquid sint suscipit voluptatum incidunt illo error. Qui ipsa et velit magni eos minima eveniet.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(36, 9792833328703, 'Temporibus aut quas culpa.', 'ab-repellat-soluta', 2, 6, 'Diah Jessica Andriani S.T.', 'UD Sihotang Suwarno (Persero) Tbk', 1998, 15, 'Illum alias hic excepturi laborum tempora vel sit. Esse et provident temporibus exercitationem dolorum nihil et perferendis. Eum in itaque ut dolor iure quia et libero. Molestiae dolorum animi possimus molestiae nesciunt repudiandae ut voluptas. Qui exercitationem voluptatem est assumenda quos odit iusto.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(37, 9788116256122, 'Reprehenderit pariatur corrupti explicabo.', 'quo-vel-et-deserunt', 3, 9, 'Mustofa Salahudin', 'Yayasan Rahimah Purnawati (Persero) Tbk', 2005, 15, 'Quia beatae architecto fuga fugiat. Molestiae tempore velit excepturi enim sint assumenda. Quo laboriosam non veritatis quia iste facere culpa sunt.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(38, 9787267928315, 'Culpa et quia voluptatibus.', 'tenetur-doloribus-dolore-laborum', 4, 11, 'Padmi Mardhiyah', 'PD Laksita Ardianto Tbk', 2013, 35, 'Accusantium necessitatibus corrupti sed praesentium molestias soluta. Tempore pariatur minima tempore temporibus quibusdam. Dolores explicabo tempore iste doloremque ipsum dolore corporis. Qui laborum autem rem voluptatibus et ducimus aut. Nemo ad omnis ullam rerum doloribus provident inventore ipsa. Nisi omnis ut molestiae et minus facilis sunt.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(39, 9799084134527, 'Eligendi ut qui.', 'quos-voluptatem-suscipit-natus', 4, 12, 'Darmanto Prakasa', 'PJ Simbolon Yulianti (Persero) Tbk', 2001, 36, 'Quo est dolorem id autem consequatur quos. Ex nobis aut repellendus et ut suscipit aliquam. Aspernatur velit aliquid quo laudantium aspernatur aut illum et. Blanditiis nihil quia quod aut. Quia non consequatur iure molestiae. Repudiandae consequatur qui molestiae sed quam.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(40, 9797101699851, 'Nemo natus sapiente.', 'cum-harum-ut-totam-magnam', 4, 11, 'Galak Hendra Simanjuntak S.E.', 'Yayasan Lestari', 1986, 12, 'Rerum laudantium eos voluptate quis ab et. Quibusdam et suscipit laborum officia. Reiciendis quo repudiandae laudantium cum porro voluptates.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(41, 9799764902026, 'Praesentium provident illo.', 'nihil-asperiores-qui', 4, 10, 'Saka Jumadi Sirait S.E.', 'Yayasan Budiman', 1977, 9, 'Nesciunt ut sequi in aliquam. Voluptatem at dolorum quam quisquam doloribus. Placeat officiis veniam et est. Officia quae quibusdam deleniti nihil. Dolor praesentium dolorem officia eaque.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(42, 9780825455759, 'Amet nostrum et in est.', 'atque-est-sit-eligendi', 4, 10, 'Azalea Dalima Wulandari', 'Fa Tampubolon Safitri Tbk', 2012, 26, 'Nisi aliquid et dolorum quidem dolorum qui voluptate. Voluptatem cumque sint odit nobis qui ipsum officia. Delectus sequi consequatur voluptate est alias qui. Vitae sed et accusamus cum tempore qui sit inventore.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(43, 9798627482866, 'Ipsa praesentium sed.', 'omnis-natus-ab', 1, 2, 'Lala Usada', 'CV Namaga', 1981, 14, 'Ducimus iusto cum expedita dicta autem. Quibusdam ipsum at non. Assumenda voluptatem qui temporibus saepe. Aliquid eos nihil veniam et. Laborum odit voluptas aut ducimus laborum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(44, 9790095009491, 'Quisquam maiores aliquid.', 'amet-aliquam-cupiditate', 4, 12, 'Zulfa Ani Farida', 'Fa Rajata Siregar', 2009, 6, 'Nostrum adipisci consequatur aliquam expedita voluptas ad et reprehenderit. Minima deleniti mollitia aliquid sed aut. Praesentium sunt aliquid omnis quis quis. Est nam ea perspiciatis vitae. Magnam quaerat vitae consequuntur quis dolore suscipit. Possimus dignissimos omnis recusandae sapiente.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(45, 9788282113960, 'Fugit quasi quae.', 'similique-quis-labore', 5, 14, 'Hilda Rahayu', 'CV Lestari (Persero) Tbk', 2013, 7, 'Sit accusantium laudantium et vero et dignissimos repellendus et. Aliquam reiciendis quis sit qui ut nesciunt. Qui qui omnis qui. Qui veritatis repellendus quia similique velit dolorem.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(46, 9788731416673, 'Laborum eius.', 'voluptas-quaerat-architecto-accusamus', 4, 10, 'Puji Dalima Fujiati', 'PJ Riyanti Maryati (Persero) Tbk', 1993, 42, 'A doloribus quaerat dolorem consequatur quam adipisci. Expedita dolorem dolorum modi debitis exercitationem. Consequatur qui voluptatem sapiente a. Soluta soluta aut aut qui voluptatibus ex.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(47, 9783754929889, 'Aliquid aut et.', 'commodi-sed-ipsam-laboriosam', 3, 8, 'Dasa Maulana', 'PD Usada (Persero) Tbk', 1986, 41, 'Voluptas incidunt adipisci sunt suscipit. Quo laborum voluptate harum est omnis. Ratione voluptates alias ut delectus. Exercitationem libero molestiae ut veritatis exercitationem quae autem. Autem dignissimos maiores eos commodi numquam quia. Optio provident maxime ratione blanditiis voluptatum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(48, 9789853356946, 'Occaecati mollitia ut.', 'modi-dicta-assumenda', 3, 9, 'Keisha Yuniar', 'PJ Suartini (Persero) Tbk', 2009, 25, 'Voluptas maxime voluptatibus autem blanditiis vitae illo. Earum blanditiis consequatur alias earum minima odio excepturi. Reiciendis dignissimos saepe fugiat fugiat minima. Autem eius dolorum qui aperiam culpa porro.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(49, 9789113064475, 'Neque vitae.', 'nam-autem-voluptatem-illum', 2, 4, 'Banawi Bagiya Wibisono S.Kom', 'PD Usamah Nasyidah', 2006, 39, 'Eum soluta doloremque qui dignissimos. Culpa pariatur tenetur in voluptatem non sed ducimus maxime. Qui omnis ut est molestiae totam sit nulla. Molestias in eveniet quod nesciunt.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(50, 9780872910805, 'Dolores dolores quaerat voluptatibus voluptas.', 'perferendis-neque-quis-voluptatem-architecto', 3, 9, 'Genta Wijayanti S.E.I', 'PJ Januar', 1993, 42, 'Ullam ad nihil molestiae placeat sint in. Iste non delectus sit veritatis. Voluptatibus et iusto non tempora. Officiis est saepe libero voluptas beatae.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(51, 9794791908287, 'Voluptas laborum reiciendis.', 'et-id-error', 1, 2, 'Jindra Sinaga', 'CV Astuti Wijaya', 1979, 39, 'Sed quis quo reiciendis voluptatem officiis. Dolore autem officia dolor blanditiis. Tempora illum eveniet est facilis consequuntur eum aut. Error excepturi reiciendis saepe culpa.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(52, 9784063728347, 'Non nihil eius.', 'amet-ab', 2, 5, 'Zalindra Gawati Nasyidah', 'PJ Hassanah Pradipta', 2024, 2, 'Distinctio modi voluptas eos ea. Magnam est est repellendus expedita expedita cum. Dolorem exercitationem cum in sequi incidunt et sed. Dolorem commodi totam repudiandae quia aut aperiam quibusdam. Quia praesentium tenetur ab beatae sit dolorem earum nobis.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(53, 9790311907624, 'Est et adipisci.', 'sequi-neque-et-ut', 3, 7, 'Margana Lazuardi', 'Perum Tamba Pudjiastuti Tbk', 1976, 18, 'Fuga molestiae quisquam non accusamus aut aut perferendis rerum. Tenetur voluptatem voluptate quod facere voluptatem quod. Ipsam similique quo perferendis ut reiciendis atque velit quae. Sit excepturi dolores et est eligendi non odit.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(54, 9786800584193, 'Corporis sed nemo autem eos.', 'omnis-beatae-aliquam-occaecati', 1, 1, 'Titi Lestari', 'PD Hartati Tampubolon Tbk', 2021, 24, 'Sapiente rerum ut voluptas velit est deleniti. Commodi nihil necessitatibus similique omnis placeat commodi magnam. Minus eaque doloribus ut dolores officia. Magnam ab et omnis ab sit accusantium. Magni a nesciunt nihil. Dolore earum corrupti sed ut dolorem voluptatem adipisci.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(55, 9793117464452, 'Eum ducimus non voluptas ut.', 'aperiam-ex-aut-dolore', 3, 7, 'Ana Padmasari', 'UD Siregar Andriani Tbk', 2003, 3, 'Et quas velit cumque quos asperiores. Aliquam asperiores animi corrupti praesentium sunt quibusdam. Ipsa laboriosam commodi est ullam nesciunt. Consequuntur eum consectetur iste et quia. Ut a illo et odit. Dolores ipsa sit reprehenderit voluptatibus et voluptatum ea qui.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(56, 9791796061375, 'Voluptatem maxime quia neque.', 'est-sit-quaerat-sed', 1, 2, 'Mutia Ami Yuliarti', 'CV Rahayu Kusmawati (Persero) Tbk', 2012, 44, 'Sequi fugiat qui sint nihil neque. Alias adipisci similique quae et necessitatibus. Est assumenda sed voluptas.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(57, 9785462432965, 'Assumenda facere suscipit repellat voluptatem.', 'dolor-vitae-impedit-sed', 3, 8, 'Indah Patricia Pudjiastuti S.IP', 'Yayasan Suryono (Persero) Tbk', 2012, 47, 'Et voluptatem ex quasi aliquam quod. Maxime impedit eum laudantium. Tempore eos excepturi provident qui nisi voluptatibus aut. Cum vitae nihil tempora quas. Tempora explicabo error voluptate eum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(58, 9799601659601, 'Est expedita sapiente.', 'commodi-quaerat-iste', 4, 10, 'Lurhur Rendy Hidayanto M.Farm', 'Yayasan Sirait Firmansyah', 2005, 37, 'Placeat nobis exercitationem sunt sit consequatur officiis rerum asperiores. Optio doloribus sit voluptatibus incidunt. Possimus quo laborum labore sed molestiae ex. At minus libero consequuntur et eveniet doloremque accusantium. Repellat quia provident nostrum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(59, 9798595857154, 'Eius pariatur et.', 'a-dicta-odio-unde', 4, 10, 'Galar Suryono', 'Fa Hasanah Pudjiastuti', 1995, 1, 'Nulla placeat voluptas velit sequi numquam. Autem quo veniam et beatae. Suscipit nam dolores quo numquam accusantium natus eius.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(60, 9797343109002, 'Ipsam dicta consectetur officia aut.', 'ad-nisi-saepe-id', 2, 5, 'Imam Simbolon', 'PT Hastuti (Persero) Tbk', 2008, 13, 'Ea nulla rem perspiciatis porro a consequatur fuga. Officiis molestias vitae quia vel quaerat. In dolor aut porro incidunt quis ex.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(61, 9799187017611, 'Optio quo.', 'quia-sit-impedit-voluptate', 4, 10, 'Kuncara Hakim', 'PJ Sinaga Mangunsong', 1972, 48, 'Quis accusantium corporis accusantium earum sequi eos doloribus. Id natus nobis porro iure. Dolorum est qui et et.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(62, 9799566911639, 'Voluptas sit minus.', 'pariatur-voluptas', 4, 12, 'Syahrini Wulandari', 'PJ Kusumo Suryatmi', 1981, 1, 'Beatae et nesciunt quaerat modi beatae quod. Assumenda aut consequatur qui totam et voluptatibus est corrupti. Molestias exercitationem et sequi voluptatem non. Consequatur autem aut dolorem reiciendis dicta.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(63, 9784860921712, 'Eveniet atque.', 'at-ut-odio', 4, 11, 'Jaiman Jindra Hidayanto', 'PD Laksita Waluyo', 1996, 36, 'Eum voluptatem praesentium modi dolore perferendis. Quia omnis officiis aut fuga aut id aut. Animi eum dolore eum praesentium quaerat et expedita ut. Voluptas at illo optio doloremque illum. Et voluptas aut et.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(64, 9795049416004, 'Eum asperiores reprehenderit aut.', 'aut-asperiores', 3, 7, 'Ayu Maya Andriani', 'Fa Riyanti Tbk', 2020, 3, 'Officia distinctio maxime architecto nam. Quo commodi ut et aspernatur officia dolorum. Exercitationem nihil sint qui accusantium blanditiis facere.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(65, 9782959214134, 'Fuga maiores rerum voluptatem.', 'necessitatibus-molestias-deserunt', 1, 3, 'Jefri Manah Wahyudin S.Pd', 'Perum Prabowo', 1984, 25, 'Eligendi hic fuga molestiae. Temporibus quos dolore qui quibusdam ipsam. Accusantium non culpa laboriosam dolore sed ea. Possimus ut quis ullam cum nisi qui. Voluptatem dolore illum dolor qui voluptas ea totam aspernatur.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(66, 9792774726910, 'Est aliquid minima.', 'accusantium-dolore-ipsum-quo', 2, 4, 'Mustika Suryono', 'Perum Hasanah', 1982, 31, 'Architecto labore aliquam voluptas doloremque et. Ullam non dignissimos nisi consectetur qui beatae ut quia. Mollitia ut quam iure ut quibusdam fugit velit. Quia saepe ut aut sapiente ratione. Sit ea ut est inventore quod nobis. Culpa doloribus ut in sequi.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(67, 9783067013916, 'Possimus rem optio.', 'est-at-explicabo', 3, 8, 'Bakiman Mustofa', 'Fa Mansur', 2018, 24, 'Nihil enim eligendi nobis et. Ea aspernatur eum voluptatibus necessitatibus officia minus. Non dicta distinctio nam non et aut dolorem. Nihil iusto praesentium et deleniti.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(68, 9786338304874, 'Et deserunt dolorum aut.', 'similique-qui-aspernatur', 4, 10, 'Pranawa Pandu Hidayat M.Farm', 'PJ Widiastuti Laksita Tbk', 1999, 39, 'Enim rem nemo illo excepturi. Ipsam alias repudiandae et sed voluptate. Fugiat minus quas aut enim sit. Voluptatum possimus id in et minima recusandae excepturi. Doloribus laudantium voluptates porro quisquam aut. Rem voluptatem maiores fugiat quia sed aliquam.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(69, 9780435642785, 'Dolorem sed suscipit rerum.', 'nihil-modi-consequatur', 1, 3, 'Qori Astuti S.T.', 'CV Sinaga (Persero) Tbk', 1985, 22, 'Non et corporis quod. Mollitia blanditiis et nobis sit qui dolor. Voluptates velit dolores alias inventore.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(70, 9799177973644, 'Omnis quia unde sunt.', 'unde-odio-placeat', 5, 13, 'Eman Hakim', 'Yayasan Sinaga Padmasari', 1988, 29, 'Earum porro itaque vitae est. Itaque tempora ut voluptates consequatur facilis ex. Sed debitis dignissimos excepturi eveniet vel repudiandae amet. Earum omnis veritatis illo pariatur.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(71, 9793220422592, 'Molestiae reiciendis.', 'porro-quae-ab-accusamus', 1, 1, 'Vivi Yuliarti', 'Perum Samosir (Persero) Tbk', 1998, 26, 'Quia quod occaecati dolor distinctio ipsum dicta quam. A et officia a non. Laborum consequatur maiores ea voluptatem omnis illum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(72, 9797624160203, 'Magnam aut.', 'consequatur-eos-totam', 3, 7, 'Oman Permadi', 'Yayasan Suryatmi (Persero) Tbk', 1992, 3, 'Repellendus fuga omnis saepe beatae dicta vel quas. Rerum facere enim voluptas enim eveniet in. Ut quia debitis velit enim ut incidunt eos in. Et sit recusandae ullam et. Minima asperiores tempora impedit ipsa iure.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(73, 9784383686488, 'Possimus sunt aut cum.', 'distinctio-dolores-ea', 3, 7, 'Gading Saptono', 'PJ Permata Prasasta Tbk', 1991, 22, 'Numquam velit est vitae nihil. Magni sunt pariatur neque est. Qui corporis at saepe dolores voluptatum. Impedit nisi quibusdam est. Aut debitis beatae aut excepturi expedita iure. Consequuntur esse veritatis et reiciendis.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(74, 9782841849116, 'Voluptas perspiciatis blanditiis.', 'vitae-sunt-quae', 3, 8, 'Juli Susanti', 'PT Pranowo Prasetyo (Persero) Tbk', 1977, 8, 'Placeat omnis adipisci sunt qui ea qui vitae. Nemo est aperiam maxime corrupti cum nam sit. Ratione architecto et cumque est reprehenderit. Aut consectetur eos facere laborum est. Doloremque incidunt provident eos minima perferendis corporis consequatur. Ut qui beatae ut dolor.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(75, 9783096957472, 'Possimus enim explicabo eveniet.', 'nobis-et-totam', 4, 10, 'Maryanto Prasetyo', 'Fa Saptono Tbk', 1980, 32, 'Ea et quia est impedit. Vero sed enim tempora dolorem molestiae. Aut dolorem unde facilis vitae. Nesciunt fugiat aspernatur assumenda ut quod rem autem. Voluptatibus dolorem repudiandae totam quos vel iusto magnam.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(76, 9790880221817, 'Delectus illum aspernatur.', 'quis-recusandae', 3, 8, 'Kemba Adikara Wijaya M.M.', 'Perum Lazuardi Lailasari (Persero) Tbk', 1990, 6, 'Architecto deleniti neque rem autem optio. Quia vero autem quos saepe. Et magni nam quod expedita. Officiis voluptas laudantium reprehenderit voluptatum vel. Vitae et molestias cupiditate eaque adipisci. Deleniti molestiae qui ex ratione exercitationem.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(77, 9781521852217, 'Mollitia dolorem et mollitia.', 'quos-nam-sit', 4, 11, 'Cakrawangsa Sihotang', 'PD Pertiwi', 1984, 27, 'Vero ut velit molestiae aliquid. Occaecati mollitia voluptatibus eos repudiandae velit est. Similique harum quia aut eos quos. Tenetur culpa ipsam et ullam earum voluptatem. Sapiente officiis doloremque numquam similique quod excepturi.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(78, 9798694976008, 'Libero rerum quas.', 'doloribus-eius-repudiandae', 1, 2, 'Queen Kusmawati', 'Yayasan Zulaika (Persero) Tbk', 1999, 23, 'Nostrum commodi odio illo quae commodi autem. Impedit est voluptatem sed ut ut. Rem voluptatem nesciunt ea saepe soluta similique neque et. Consectetur modi quam reiciendis asperiores quasi commodi sed.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(79, 9796211357293, 'Et rerum atque dignissimos.', 'pariatur-voluptates-iste-sit', 4, 10, 'Banawa Ramadan', 'PD Suwarno Tbk', 2024, 11, 'Qui quod voluptatum voluptatibus neque cupiditate quo illo. Ut voluptas facere delectus aut est. Sed reiciendis commodi inventore harum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(80, 9794829797838, 'Qui quaerat qui qui.', 'ut-atque-ut-optio', 4, 10, 'Cakrawangsa Makuta Situmorang M.Ak', 'CV Yuniar Utami Tbk', 1993, 17, 'Neque aliquam corrupti amet. Odit expedita quae ex ducimus sequi ut sequi officiis. Aliquid deleniti dolor optio aut aliquid et.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(81, 9795032668052, 'Inventore repellat sit aut.', 'dolores-nisi-quis-ut', 1, 3, 'Zulfa Maida Pudjiastuti S.Pt', 'Perum Laksita', 1982, 24, 'Doloribus omnis eum molestiae labore dolorem. Temporibus magnam molestiae unde laudantium praesentium. Rerum temporibus cumque sequi atque. Voluptas autem vel hic cumque veniam ad.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(82, 9786187697585, 'Aperiam numquam autem non.', 'recusandae-aperiam-architecto-architecto', 3, 8, 'Yahya Permadi M.Farm', 'PD Tarihoran Nuraini (Persero) Tbk', 2017, 16, 'Nobis id saepe soluta dicta. Rerum accusamus sed consectetur autem rerum rem quia. Unde rem repellat distinctio ad enim aut error.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(83, 9791143621863, 'Ab perferendis aut.', 'vitae-ut-quae-unde', 3, 7, 'Alika Mardhiyah', 'CV Ardianto Rahmawati', 1999, 44, 'Nulla sed quaerat fugit dolor. Tenetur laboriosam velit possimus ullam itaque tempore aut. Eum atque in vel nulla ut. Earum minima sit voluptate illum dolores in. Est voluptate laboriosam inventore enim dignissimos aut et.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(84, 9785801436180, 'Qui optio fugiat omnis.', 'quisquam-sit', 1, 2, 'Tari Hastuti', 'Fa Suryono Kuswandari', 1988, 45, 'Et itaque aut vel placeat consequuntur ut. Dolores expedita est sed. Dolore vitae id sed in hic sed. Debitis quis vel ex numquam qui. Excepturi vero esse non incidunt et qui.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(85, 9790645380766, 'Odio pariatur provident.', 'ea-dolor-non-porro-rerum', 2, 5, 'Almira Mulyani', 'Fa Simanjuntak Prastuti (Persero) Tbk', 1996, 50, 'Rerum est corporis aliquid id quis. Eaque quam impedit eum quas eveniet. Enim et voluptas hic et id. Ut tempora occaecati dignissimos enim. Distinctio inventore distinctio minus et doloremque sint voluptates.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(86, 9789283974086, 'Itaque sed cumque recusandae sunt.', 'et-placeat-qui-odio', 5, 14, 'Wasis Hardiansyah M.M.', 'PJ Marpaung', 1990, 18, 'Necessitatibus quia cupiditate tempora eveniet. Est cumque officia est blanditiis tempora ex. Quasi eligendi aspernatur beatae error aut.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(87, 9789327642001, 'Iusto quidem ducimus.', 'maiores-natus-sit', 1, 3, 'Wadi Tasdik Waluyo S.E.', 'PD Utama (Persero) Tbk', 1989, 6, 'Sit fugiat itaque sed ex nemo perferendis sed. Dolorem accusantium blanditiis ullam non atque sit ut. Libero velit dolor molestiae in voluptas. Illum voluptas odit ratione voluptas quia harum culpa.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(88, 9793486939063, 'Recusandae eius enim.', 'cumque-nobis-assumenda-ut', 3, 8, 'Baktianto Widodo', 'Perum Wahyuni (Persero) Tbk', 2016, 41, 'Voluptatem dignissimos in quia dolorum illum unde. Provident et voluptatem dolores sunt autem totam. Quae labore est earum.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(89, 9797754660918, 'Qui voluptatem incidunt.', 'ea-assumenda-quo', 2, 6, 'Lalita Talia Suartini', 'Perum Pudjiastuti Tbk', 1984, 39, 'Aut excepturi ut qui et delectus omnis consequatur. Pariatur in in dolores qui. Harum accusamus ut quae dicta et beatae. Saepe iure officiis blanditiis. Id quis facilis ipsum modi recusandae vitae et error.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(90, 9788453240877, 'Qui beatae sit non.', 'beatae-error-cum', 4, 10, 'Ellis Shakila Mandasari M.M.', 'Perum Suartini Tbk', 2005, 30, 'Nam consequatur quis autem perspiciatis aut et explicabo. Est ex sed natus provident velit tenetur non. Optio ut dolorem id perferendis. Recusandae commodi et et reiciendis. Facilis nisi nihil eos perferendis molestiae illo qui. Quo qui eum animi sequi ad nam.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(91, 9796352329555, 'Veritatis voluptas incidunt.', 'ea-ut-saepe-non-eum', 3, 8, 'Sakura Anggraini', 'PD Nasyidah Tbk', 1993, 41, 'Dolores eius quae aliquid iste ducimus voluptatibus ullam. Ab praesentium magnam ullam et fuga provident dolor. Qui eius deleniti nemo velit qui corrupti. Vero nesciunt debitis maiores voluptate est.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(92, 9797966057087, 'Laudantium earum.', 'rem-tempora', 5, 14, 'Tasnim Damanik', 'Yayasan Nugroho Mardhiyah', 1982, 42, 'Commodi ducimus qui molestias necessitatibus. Esse dolor et autem quod optio. Fuga repellendus tempore dignissimos vero consequatur. Recusandae repellendus et ipsa quo consequatur voluptatum. Repellendus unde quos consequatur culpa.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(93, 9792121205099, 'Ducimus autem voluptas maxime.', 'earum-eum-soluta-quos-magni', 5, 15, 'Elvina Prastuti S.Sos', 'PT Zulkarnain Tbk', 1993, 8, 'Ut ex ipsam iure dolores adipisci autem. Illum nisi occaecati in. Est quis aut omnis nihil quibusdam et voluptatem eius. Debitis qui ipsum temporibus sint esse voluptatem sequi et. Occaecati qui molestiae et harum. Porro nihil quasi ut et.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(94, 9798644522156, 'Repellat ut qui.', 'quidem-ut-ullam-ea', 4, 11, 'Tugiman Kusumo', 'Fa Puspasari', 1970, 42, 'Quod earum id enim. Natus necessitatibus quos facere nesciunt error dolores adipisci. Non doloremque nisi mollitia sapiente culpa aliquam quo.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(95, 9782788941072, 'Rerum molestias est.', 'est-in-aut-qui', 5, 15, 'Asirwada Wijaya', 'CV Wasita Tbk', 2019, 22, 'Praesentium et provident reprehenderit iure atque optio ratione. Libero corporis id architecto accusamus in. Cumque omnis qui sunt velit adipisci. Soluta qui unde corrupti. Ab a aut atque repudiandae.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(96, 9784573489868, 'Vero et aperiam.', 'incidunt-quam-et-et', 1, 3, 'Yono Hutasoit', 'PD Pratiwi (Persero) Tbk', 1982, 18, 'Quidem voluptatum nihil optio ex quia ipsam. Assumenda et est recusandae ipsum sequi saepe debitis. Consectetur ducimus numquam quos at nesciunt nulla.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(97, 9791400806927, 'Deleniti sint praesentium est.', 'ea-deleniti-ducimus-temporibus', 5, 15, 'Uchita Mulyani', 'Fa Winarno (Persero) Tbk', 2022, 4, 'Commodi esse eligendi quo. Accusamus molestiae officiis rerum quo facilis. Expedita nulla voluptates libero ratione. Nisi quos eligendi qui ut aut deserunt. Nobis dolore repellendus numquam totam. Illo rerum possimus atque unde dolorum hic explicabo omnis.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(98, 9788592248109, 'Magni qui eveniet dolor.', 'voluptates-voluptatem-eum-dolor', 5, 14, 'Warta Wahyudin', 'PJ Wastuti Winarsih (Persero) Tbk', 1980, 17, 'Laborum nam nobis quas alias assumenda sed. Cumque qui optio assumenda commodi illo. Temporibus eum recusandae voluptate aut qui placeat laboriosam. Ullam sed quia perspiciatis totam. Blanditiis voluptate vel magnam eum vel magni eaque excepturi.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(99, 9799121150183, 'Quas pariatur est rerum.', 'sunt-inventore-autem-aperiam', 1, 2, 'Mala Sudiati', 'Yayasan Prasetya Tbk', 2010, 1, 'Quas amet officia nihil accusantium necessitatibus. Assumenda ut commodi qui repellendus perferendis harum. Autem harum ut modi sint corrupti eligendi non. Et adipisci in dolore sit rerum soluta facere. Reprehenderit deleniti consequatur excepturi non.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(100, 9784190663139, 'Consectetur et animi.', 'deleniti-nesciunt-cumque-voluptas', 5, 14, 'Lili Rachel Rahimah M.Pd', 'PJ Pradipta Budiyanto Tbk', 1982, 41, 'Recusandae voluptatem non optio voluptates. Deleniti reiciendis et soluta. Reprehenderit dolor quia aut vero aperiam reiciendis similique cumque. Sit quibusdam voluptatum ut nemo sed.', 'sampul.png', 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `dendas`
--

CREATE TABLE `dendas` (
  `id` bigint UNSIGNED NOT NULL,
  `denda_pinjam` int NOT NULL,
  `denda_buku_rusak` int NOT NULL,
  `denda_buku_hilang` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dendas`
--

INSERT INTO `dendas` (`id`, `denda_pinjam`, `denda_buku_rusak`, `denda_buku_hilang`, `created_at`, `updated_at`) VALUES
(1, 3000, 10000, 50000, '2025-02-04 13:45:27', '2025-02-04 13:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Bahasa', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(2, 'Sejarah', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(3, 'Komik', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(4, 'Agama', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(5, 'Romansa', '2025-02-04 13:45:27', '2025-02-04 13:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `created_at`, `updated_at`) VALUES
(1, 'Kelas 7 A', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(2, 'Kelas 7 B', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(3, 'Kelas 7 C', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(4, 'Kelas 7 D', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(5, 'Kelas 7 E', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(6, 'Kelas 8 A', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(7, 'Kelas 8 B', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(8, 'Kelas 8 C', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(9, 'Kelas 8 D', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(10, 'Kelas 8 E', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(11, 'Kelas 9 A', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(12, 'Kelas 9 B', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(13, 'Kelas 9 C', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(14, 'Kelas 9 D', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(15, 'Kelas 9 E', '2025-02-04 13:45:26', '2025-02-04 13:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2024_10_29_000000_create_users_table', 1),
(14, '2024_10_29_000001_create_permission_tables', 1),
(15, '2024_10_29_000002_create_kelas_table', 1),
(16, '2024_10_29_000003_create_siswas_table', 1),
(17, '2024_10_29_000004_create_kategoris_table', 1),
(18, '2024_10_29_000005_create_rak_dan_baris_table', 1),
(19, '2024_10_29_000006_create_bukus_table', 1),
(20, '2024_10_29_000007_create_pinjams_table', 1),
(21, '2024_10_29_000008_create_riwayat_pinjams_table', 1),
(22, '2024_10_29_000009_create_dendas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinjams`
--

CREATE TABLE `pinjams` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `buku_id` bigint UNSIGNED NOT NULL,
  `tanggal_kembali` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rak_dan_baris`
--

CREATE TABLE `rak_dan_baris` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `rak` int NOT NULL,
  `baris` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rak_dan_baris`
--

INSERT INTO `rak_dan_baris` (`id`, `kategori_id`, `rak`, `baris`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(2, 1, 2, 2, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(3, 1, 3, 3, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(4, 2, 1, 1, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(5, 2, 2, 2, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(6, 2, 3, 3, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(7, 3, 1, 1, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(8, 3, 2, 2, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(9, 3, 3, 3, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(10, 4, 1, 1, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(11, 4, 2, 2, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(12, 4, 3, 3, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(13, 5, 1, 1, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(14, 5, 2, 2, '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(15, 5, 3, 3, '2025-02-04 13:45:27', '2025-02-04 13:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pinjams`
--

CREATE TABLE `riwayat_pinjams` (
  `id` bigint UNSIGNED NOT NULL,
  `siswa_id` bigint UNSIGNED NOT NULL,
  `buku_id` bigint UNSIGNED NOT NULL,
  `tanggal_kembali` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `denda` bigint DEFAULT NULL,
  `denda_buku_rusak` bigint DEFAULT NULL,
  `denda_buku_hilang` bigint DEFAULT NULL,
  `status` enum('pinjam','selesai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(2, 'petugas', 'web', '2025-02-04 13:45:26', '2025-02-04 13:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint UNSIGNED NOT NULL,
  `barcode` bigint NOT NULL,
  `nisn` bigint NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `kelas_id` bigint UNSIGNED NOT NULL,
  `status` enum('aktif','nonaktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswas`
--

INSERT INTO `siswas` (`id`, `barcode`, `nisn`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `foto`, `kelas_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 539359458, 8095725404, 'Ellis Pratiwi', 'laki-laki', '2008-08-06', 'avatar.png', 4, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(2, 738283886, 1226500462, 'Manah Prasetya', 'perempuan', '2010-01-05', 'avatar.png', 2, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(3, 283069898, 4679974443, 'Tari Winarsih', 'perempuan', '2009-11-27', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(4, 864244438, 6466310960, 'Shania Zulaika', 'laki-laki', '2008-10-31', 'avatar.png', 9, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(5, 557026231, 6566180328, 'Melinda Hariyah', 'laki-laki', '2007-08-24', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(6, 566085457, 3061689581, 'Padmi Lestari', 'laki-laki', '2007-04-12', 'avatar.png', 2, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(7, 696285429, 7921838413, 'Gawati Mandasari', 'perempuan', '2008-12-05', 'avatar.png', 9, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(8, 893297188, 6714298629, 'Sarah Padmasari', 'perempuan', '2009-08-16', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(9, 932117292, 2943787343, 'Carla Ghaliyati Agustina', 'laki-laki', '2008-08-16', 'avatar.png', 3, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(10, 317994654, 1656960943, 'Gatra Hutasoit S.IP', 'laki-laki', '2007-04-10', 'avatar.png', 15, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(11, 696129694, 4446422374, 'Anita Maryati', 'perempuan', '2010-01-28', 'avatar.png', 12, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(12, 774431447, 8015639234, 'Kartika Sudiati', 'perempuan', '2008-07-25', 'avatar.png', 3, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(13, 841810212, 7570899188, 'Elvina Laksita', 'laki-laki', '2008-06-06', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(14, 420106568, 6455271838, 'Najwa Suryatmi', 'perempuan', '2007-03-18', 'avatar.png', 9, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(15, 236373770, 6500448421, 'Prabowo Heru Pradipta', 'perempuan', '2008-08-10', 'avatar.png', 8, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(16, 796717050, 4971121991, 'Paiman Uwais', 'perempuan', '2008-10-07', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(17, 267736237, 1770886724, 'Kasiyah Keisha Uyainah', 'laki-laki', '2007-09-22', 'avatar.png', 8, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(18, 762820025, 3052341858, 'Tira Mardhiyah', 'laki-laki', '2007-06-03', 'avatar.png', 3, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(19, 818407159, 4668921076, 'Eko Saputra', 'laki-laki', '2007-10-02', 'avatar.png', 14, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(20, 167189106, 3182508335, 'Makara Satya Latupono M.Ak', 'laki-laki', '2009-12-31', 'avatar.png', 8, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(21, 757052527, 7871843168, 'Elvina Palastri', 'perempuan', '2010-01-02', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(22, 945939449, 6271706673, 'Sabar Wijaya', 'perempuan', '2008-05-10', 'avatar.png', 5, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(23, 511125665, 7706961404, 'Ida Widiastuti', 'perempuan', '2007-09-19', 'avatar.png', 4, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(24, 309347059, 7425314102, 'Hesti Prastuti S.IP', 'perempuan', '2008-04-03', 'avatar.png', 1, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(25, 229436856, 2244093629, 'Digdaya Murti Simanjuntak M.TI.', 'laki-laki', '2008-06-14', 'avatar.png', 1, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(26, 297785854, 9776703773, 'Hendri Wacana', 'laki-laki', '2008-12-03', 'avatar.png', 3, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(27, 881328618, 2840737416, 'Humaira Padma Novitasari S.T.', 'perempuan', '2007-07-30', 'avatar.png', 7, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(28, 638585474, 9841080145, 'Saiful Hakim', 'perempuan', '2008-08-02', 'avatar.png', 4, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(29, 667238691, 8307402479, 'Salman Mahendra M.TI.', 'laki-laki', '2009-08-23', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(30, 662757078, 7748202798, 'Devi Ratih Mandasari', 'laki-laki', '2009-03-12', 'avatar.png', 13, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(31, 121475463, 9290504346, 'Aslijan Nugroho', 'laki-laki', '2009-08-29', 'avatar.png', 8, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(32, 857338282, 9577415994, 'Makara Prabowo', 'laki-laki', '2007-04-17', 'avatar.png', 6, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(33, 402294217, 7768082027, 'Anggabaya Niyaga Manullang M.Farm', 'laki-laki', '2008-04-05', 'avatar.png', 2, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(34, 962918604, 5915343790, 'Najam Thamrin', 'perempuan', '2008-01-02', 'avatar.png', 3, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(35, 186547892, 3609971892, 'Jinawi Rajata', 'laki-laki', '2008-12-24', 'avatar.png', 9, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(36, 100751604, 3471566978, 'Silvia Jelita Novitasari S.Psi', 'laki-laki', '2007-08-12', 'avatar.png', 11, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(37, 672313740, 4507749477, 'Sabar Hardi Sihombing S.Pt', 'perempuan', '2009-08-14', 'avatar.png', 14, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(38, 748210083, 8530682931, 'Ratih Riyanti', 'laki-laki', '2007-08-12', 'avatar.png', 12, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(39, 694159525, 1193356098, 'Ganda Tampubolon S.Kom', 'perempuan', '2007-03-23', 'avatar.png', 3, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(40, 961481432, 6385355357, 'Paiman Cahya Habibi M.Farm', 'perempuan', '2009-10-25', 'avatar.png', 14, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(41, 871511801, 5139833943, 'Puji Handayani S.T.', 'laki-laki', '2007-05-28', 'avatar.png', 9, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(42, 487015240, 7179585921, 'Ghaliyati Nasyiah', 'laki-laki', '2009-05-27', 'avatar.png', 4, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(43, 539844510, 4206573122, 'Anggabaya Hutapea M.Ak', 'laki-laki', '2008-12-31', 'avatar.png', 5, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(44, 959613823, 5333996234, 'Yance Nadine Usada S.Farm', 'perempuan', '2007-04-14', 'avatar.png', 15, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(45, 944949193, 2417044924, 'Raina Puspasari', 'perempuan', '2008-05-06', 'avatar.png', 14, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(46, 584842421, 6984276653, 'Jamalia Sudiati', 'laki-laki', '2007-07-03', 'avatar.png', 7, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(47, 322452915, 3926761805, 'Oman Waluyo M.Pd', 'perempuan', '2009-11-08', 'avatar.png', 12, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(48, 973214249, 7530953671, 'Dian Rahayu S.E.', 'perempuan', '2007-10-11', 'avatar.png', 9, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(49, 112965858, 7777727631, 'Maryanto Halim Jailani M.Kom.', 'perempuan', '2007-04-15', 'avatar.png', 12, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27'),
(50, 739572360, 4705159913, 'Maras Damanik', 'perempuan', '2007-06-26', 'avatar.png', 3, 'aktif', '2025-02-04 13:45:27', '2025-02-04 13:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `nip` bigint NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `status` enum('aktif','nonaktif') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `nama`, `password`, `telepon`, `jenis_kelamin`, `alamat`, `foto`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'super admin', '$2y$10$jEBqsNBNuesBsa48z2QTjO1/P21MMiHL/kJV6Jr/MvxTgFPO5Axu2', '081234567890', 'laki-laki', 'Jambi', 'avatar.png', 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(2, 200207112024241001, 'super petugas', '$2y$10$Q45VoTKcZ9AtlTvArWOlkeqZVT2GDr03VjeEtwFlTIXBUukJqRKmK', '081234567890', 'laki-laki', 'Jambi', 'avatar.png', 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26'),
(3, 2, 'petugas', '$2y$10$jnu2VHcpKgX9Z5vbFlpJ8uEbkl5XNSDyyQey0/UX/VQ4OA8W4zMBm', '081234567890', 'laki-laki', 'Jambi', 'avatar.png', 'aktif', '2025-02-04 13:45:26', '2025-02-04 13:45:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bukus`
--
ALTER TABLE `bukus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bukus_kategori_id_foreign` (`kategori_id`),
  ADD KEY `bukus_rak_dan_baris_id_foreign` (`rak_dan_baris_id`);

--
-- Indexes for table `dendas`
--
ALTER TABLE `dendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pinjams`
--
ALTER TABLE `pinjams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinjams_siswa_id_foreign` (`siswa_id`),
  ADD KEY `pinjams_buku_id_foreign` (`buku_id`);

--
-- Indexes for table `rak_dan_baris`
--
ALTER TABLE `rak_dan_baris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rak_dan_baris_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `riwayat_pinjams`
--
ALTER TABLE `riwayat_pinjams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_pinjams_siswa_id_foreign` (`siswa_id`),
  ADD KEY `riwayat_pinjams_buku_id_foreign` (`buku_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswas_nisn_unique` (`nisn`),
  ADD KEY `siswas_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bukus`
--
ALTER TABLE `bukus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `dendas`
--
ALTER TABLE `dendas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjams`
--
ALTER TABLE `pinjams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rak_dan_baris`
--
ALTER TABLE `rak_dan_baris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `riwayat_pinjams`
--
ALTER TABLE `riwayat_pinjams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bukus`
--
ALTER TABLE `bukus`
  ADD CONSTRAINT `bukus_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bukus_rak_dan_baris_id_foreign` FOREIGN KEY (`rak_dan_baris_id`) REFERENCES `rak_dan_baris` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `pinjams`
--
ALTER TABLE `pinjams`
  ADD CONSTRAINT `pinjams_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `bukus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pinjams_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rak_dan_baris`
--
ALTER TABLE `rak_dan_baris`
  ADD CONSTRAINT `rak_dan_baris_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_pinjams`
--
ALTER TABLE `riwayat_pinjams`
  ADD CONSTRAINT `riwayat_pinjams_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `bukus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `riwayat_pinjams_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswas`
--
ALTER TABLE `siswas`
  ADD CONSTRAINT `siswas_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
