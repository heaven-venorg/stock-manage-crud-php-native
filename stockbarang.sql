-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2025 at 08:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `namabarang` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'test@test.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `namabarang` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `idbarang` int(11) NOT NULL,
  `namabarang` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`idbarang`, `namabarang`, `deskripsi`, `stock`) VALUES
(1, 'Smartphone Xiaomi Mi 13', 'Smartphone flagship dengan Snapdragon 8 Gen 2', 25),
(2, 'Smartwatch Garmin Venu 2', 'Smartwatch dengan GPS dan pelacakan kesehatan', 40),
(3, 'Wireless Earbuds Apple AirPods Pro 2', 'Earbuds nirkabel dengan Active Noise Cancellation', 50),
(4, 'Laptop Microsoft Surface Laptop 5', 'Laptop premium dengan Intel Core i7, 16GB RAM', 15),
(5, 'Monitor LG 32UN650-W', 'Monitor 32 inci 4K UHD dengan warna akurat', 10),
(6, 'Speaker Bose SoundLink Revolve+', 'Speaker Bluetooth portabel dengan suara surround', 12),
(7, 'Game Console PlayStation 5', 'Konsol gaming dengan grafis 4K dan eksklusif game', 8),
(8, 'Tablet Lenovo Tab P11 Pro', 'Tablet Android dengan layar OLED 11 inci', 18),
(9, 'External SSD Samsung T7', 'SSD eksternal cepat dengan USB 3.2 Gen 2', 30),
(10, '4K Ultra HD TV Sony Bravia', 'Smart TV 55 inci dengan resolusi 4K dan HDR', 5),
(11, 'Camera Canon EOS R6', 'Kamera mirrorless dengan kemampuan video 4K', 6),
(12, 'Laptop ASUS ROG Strix', 'Laptop gaming dengan Intel Core i9, RTX 3080', 7),
(13, 'Keyboard Logitech MX Keys', 'Keyboard wireless dengan tombol pencahayaan otomatis', 35),
(14, 'Mouse Logitech MX Master 3', 'Mouse ergonomis wireless dengan daya tahan lama', 45),
(15, 'Smart Bulb Philips Hue', 'Lampu pintar RGB yang bisa dikendalikan dengan aplikasi', 60),
(16, 'Portable Powerbank Anker 20000mAh', 'Powerbank dengan kapasitas besar dan pengisian cepat', 30),
(17, 'Drone DJI Mini 3 Pro', 'Drone dengan kamera 4K dan jarak terbang 12 km', 5),
(18, 'Earphones Sony WF-1000XM4', 'Earphones nirkabel dengan noise-cancelling terbaik', 40),
(19, 'Laptop HP Spectre x360', 'Laptop convertible dengan Intel Core i7, 16GB RAM', 12),
(20, 'External Hard Drive Seagate 2TB', 'Hard disk eksternal dengan kapasitas 2TB', 25),
(21, 'USB Flash Drive Kingston 128GB', 'Flash drive USB 3.0 dengan kapasitas 128GB', 50),
(22, 'Smartphone Samsung Galaxy S23', 'Smartphone dengan Snapdragon 8 Gen 2, 12GB RAM', 30),
(23, 'Bluetooth Speaker JBL Charge 5', 'Speaker Bluetooth dengan daya tahan baterai 20 jam', 15),
(24, 'Electric Scooter Xiaomi Mi Pro 2', 'Skuter listrik dengan jarak tempuh hingga 45 km', 8),
(25, 'Webcam Logitech C922 Pro', 'Webcam HD untuk streaming dan video call', 40),
(26, 'Wireless Charger Anker 15W', 'Charger nirkabel cepat untuk smartphone', 50),
(27, 'Noise Cancelling Headphones Bose QC45', 'Headphones dengan pembatalan kebisingan aktif', 20),
(28, 'Smartphone OnePlus 11', 'Smartphone flagship dengan layar AMOLED 120Hz', 30),
(29, 'Bluetooth Headphones Sony WH-1000XM5', 'Headphones over-ear dengan suara jernih dan ANC', 15),
(30, 'Laptop Dell XPS 15', 'Laptop premium dengan Intel Core i7, 32GB RAM', 10),
(31, 'Gaming Mouse Razer DeathAdder V2', 'Mouse gaming dengan sensor 20.000 DPI', 50),
(32, 'Action Camera GoPro HERO 11', 'Kamera aksi dengan stabilisasi HyperSmooth 5.0', 5),
(33, 'Smartphone Oppo Find X5 Pro', 'Smartphone dengan Snapdragon 8 Gen 1, 12GB RAM', 20),
(34, 'Portable Bluetooth Speaker Ultimate Ears Megaboom 3', 'Speaker Bluetooth portabel dengan suara 360°', 35),
(35, 'Tablet Samsung Galaxy Tab S8+', 'Tablet dengan layar 12.4 inci dan Snapdragon 8 Gen 1', 15),
(36, 'Laptop Lenovo ThinkPad X1 Carbon', 'Laptop bisnis dengan Intel Core i7, 16GB RAM', 20),
(37, 'Smartphone Realme GT 2 Pro', 'Smartphone flagship dengan Snapdragon 8 Gen 1', 30),
(38, 'Gaming Monitor ASUS TUF 27\"', 'Monitor gaming dengan refresh rate 165Hz', 25),
(39, 'Wireless Headphones JBL Tune 700BT', 'Headphones dengan Bluetooth dan 27 jam waktu putar', 50),
(40, 'Digital Camera Fujifilm X-T4', 'Kamera mirrorless dengan video 4K', 8),
(41, 'Electric Bike Xiaomi Himo C20', 'Sepeda listrik dengan jarak tempuh 80 km', 6),
(42, 'Smartphone Vivo X90 Pro+', 'Smartphone dengan kamera 50MP dan Snapdragon 8 Gen 2', 18),
(43, 'Smartwatch Amazfit GTR 4', 'Smartwatch dengan pelacakan aktivitas dan 14 hari baterai', 50),
(44, 'Gaming Chair DXRacer Formula', 'Kursi gaming ergonomis dengan dukungan penuh', 25),
(45, 'Robot Vacuum Cleaner iRobot Roomba 692', 'Penyedot debu otomatis dengan Wi-Fi', 20),
(46, 'Smartphone Huawei P50 Pro', 'Smartphone dengan kamera Leica dan Snapdragon 8 Gen 1', 10),
(47, 'Laptop Acer Predator Helios 300', 'Laptop gaming dengan RTX 3060, Intel Core i7', 5),
(48, 'Noise Cancelling Earbuds Sony WF-SP800N', 'Earbuds olahraga dengan noise cancellation', 30),
(49, 'Smartwatch Fitbit Charge 5', 'Smartwatch dengan pelacakan kesehatan dan GPS', 40),
(50, 'External Storage WD My Passport 1TB', 'Hard disk eksternal dengan USB 3.0', 45),
(51, 'Smartphone Google Pixel 7 Pro', 'Smartphone dengan kamera Google dan Tensor Chip', 15),
(52, 'Electric Grill Tefal Optigrill+', 'Grill listrik dengan pengaturan otomatis untuk memasak', 25),
(53, 'Gaming Headset SteelSeries Arctis 7', 'Headset gaming wireless dengan suara surround', 20),
(54, 'Smartphone Poco F4 GT', 'Smartphone dengan Snapdragon 8 Gen 1 dan refresh rate 120Hz', 50),
(55, 'Bluetooth Wireless Earbuds Samsung Galaxy Buds 2 Pro', 'Earbuds nirkabel dengan suara premium', 18),
(56, 'Smartphone Motorola Edge 30 Pro', 'Smartphone flagship dengan Snapdragon 8 Gen 1', 25),
(57, 'Smartwatch Huawei Watch GT 3', 'Smartwatch dengan pelacakan kesehatan dan layar AMOLED', 40),
(58, 'Laptop MSI GE76 Raider', 'Laptop gaming dengan Intel Core i9, RTX 3080', 10),
(59, 'Smartphone iPhone 14 Pro Max', 'Smartphone dengan chip A16 Bionic dan 48MP kamera', 5),
(60, 'Gaming Monitor Samsung Odyssey G7', 'Monitor curved gaming dengan 240Hz refresh rate', 8),
(61, 'Power Bank RAVPower 26800mAh', 'Power bank dengan kapasitas besar dan fast charging', 50),
(62, 'Wireless Gaming Mouse Logitech G Pro X', 'Mouse gaming dengan sensor Hero 25K', 40),
(63, 'Smartphone Redmi Note 12 Pro', 'Smartphone mid-range dengan layar AMOLED 120Hz', 30),
(64, 'Smartwatch Amazfit Bip U Pro', 'Smartwatch dengan pelacakan kesehatan dan GPS', 50),
(65, 'Smartphone Sony Xperia 1 IV', 'Smartphone flagship dengan layar 4K OLED dan Snapdragon 8 Gen 1', 15),
(66, 'Portable Air Conditioner Evaporative', 'AC portabel dengan fungsi humidifier', 6),
(67, 'Gaming Keyboard Corsair K95 RGB', 'Keyboard gaming dengan tombol mekanik dan RGB', 10),
(68, 'Smartphone Nokia G50 5G', 'Smartphone dengan layar 6.82 inci dan 5G', 25),
(69, 'Bluetooth Car Kit Jabra Freeway', 'Car kit Bluetooth dengan speaker stereo', 50),
(70, 'Cordless Drill Bosch GSR 12V-15', 'Bor tanpa kabel untuk penggunaan rumah dan pekerjaan ringan', 20),
(71, 'Smartphone Infinix Zero 5G', 'Smartphone dengan layar AMOLED dan 5G', 40),
(72, 'Laptop MSI GS66 Stealth', 'Laptop gaming dengan RTX 3070 dan Intel Core i7', 5),
(73, 'Smartphone Tecno Camon 18 Premier', 'Smartphone dengan layar AMOLED dan kamera 64MP', 30),
(74, 'Smart Home Hub Google Nest Hub Max', 'Hub pintar dengan layar 10 inci dan Google Assistant', 20),
(75, 'Electric Kettle Xiaomi Mi', 'Ketel listrik dengan kapasitas 1.5 liter dan pengaturan suhu', 45),
(76, 'Smartphone Oppo Reno 8 Pro', 'Smartphone dengan kamera 50MP dan layar AMOLED', 18),
(77, 'Portable Speaker Sony SRS-XB33', 'Speaker Bluetooth dengan EXTRA BASS dan daya tahan baterai 24 jam', 30),
(78, 'Smartphone Nokia 8.3 5G', 'Smartphone dengan Snapdragon 765G dan 5G', 25),
(79, 'Streaming Stick Roku Ultra', 'Streaming stick 4K dengan remote suara dan Dolby Vision', 20),
(80, 'Bluetooth Speaker Ultimate Ears Boom 3', 'Speaker Bluetooth tahan air dengan suara 360 derajat', 35),
(81, 'Smartphone Honor Magic 4 Pro', 'Smartphone dengan Snapdragon 8 Gen 1 dan kamera 50MP', 8),
(82, 'Laptop ASUS TUF Dash F15', 'Laptop gaming dengan Intel Core i7 dan RTX 3060', 15),
(83, 'Electric Bike Brompton', 'Sepeda lipat listrik dengan kecepatan 25 km/h', 5),
(84, 'Portable Powerbank Zendure A8PD', 'Powerbank dengan kapasitas 26.800mAh dan 4 output USB', 50),
(85, 'Camera Sony ZV-1', 'Kamera vlogging dengan fitur auto-focus dan mikrofon', 10),
(86, 'Laptop MacBook Pro', 'Laptop dengan Apple M1 Chip, 16GB RAM', 10),
(87, 'Mouse Gaming Razer', 'Mouse gaming dengan sensor 16.000 DPI', 25),
(88, 'Keyboard Gaming Corsair', 'Keyboard mekanik dengan Cherry MX switch', 20),
(89, 'Monitor Acer Predator', 'Monitor gaming 27 inci 144Hz', 12),
(90, 'External SSD 1TB', 'SSD eksternal dengan kecepatan transfer tinggi', 30),
(91, 'Flashdisk 256GB', 'Flashdisk USB 3.1 dengan kapasitas besar', 22),
(92, 'Printer HP LaserJet', 'Printer laser monochrome untuk kantor', 10),
(93, 'Powerbank 50000mAh', 'Powerbank dengan kapasitas super besar', 5),
(94, 'Charger Wireless 30W', 'Charger wireless cepat untuk smartphone', 50),
(95, 'Mousepad SteelSeries', 'Mousepad besar dengan permukaan halus dan presisi', 40),
(96, 'Headphone Sony WH-1000XM4', 'Headphone dengan noise cancellation terbaik', 15),
(97, 'Speaker Harman Kardon', 'Speaker Bluetooth dengan suara jernih', 18),
(98, 'Kamera Sony Alpha 7 III', 'Kamera mirrorless dengan kualitas gambar tinggi', 7),
(99, 'Laptop ASUS VivoBook', 'Laptop dengan Intel Core i3, 8GB RAM', 12),
(100, 'SSD NVMe 1TB', 'SSD internal dengan kecepatan tinggi NVMe', 25),
(101, 'Powerbank 15000mAh', 'Powerbank dengan kapasitas 15000mAh', 35),
(102, 'Tripod Smartphone', 'Tripod untuk smartphone dengan ketinggian dapat disesuaikan', 50),
(103, 'Flashdisk 512GB', 'Flashdisk USB 3.1 dengan kapasitas besar', 20),
(104, 'Keyboard SteelSeries', 'Keyboard gaming mekanik dengan pencahayaan RGB', 30),
(105, 'Monitor LG Ultrawide', 'Monitor ultrawide 34 inci untuk produktivitas', 10),
(106, 'DVD Writer External', 'DVD Writer eksternal USB 3.0', 40),
(107, 'Mikrofon Shure SM7B', 'Mikrofon profesional untuk podcast dan rekaman', 5),
(108, 'Smartwatch Samsung Galaxy', 'Smartwatch dengan fitur pelacakan kesehatan', 40),
(109, 'Webcam 1080p Logitech', 'Webcam dengan resolusi 1080p dan autofokus', 30),
(110, 'Kabel VGA', 'Kabel VGA untuk proyektor dan monitor', 50),
(111, 'Modem Wifi 5G', 'Modem Wifi 5G untuk kecepatan internet ultra cepat', 15),
(112, 'Router Asus RT-AC86U', 'Router WiFi dengan kecepatan 2600Mbps', 25),
(113, 'Lampu LED Smart', 'Lampu pintar dengan pengaturan warna dan intensitas', 45),
(114, 'Keyboard Razer BlackWidow', 'Keyboard gaming dengan RGB mekanik', 20),
(115, 'Wireless Adapter TP-Link', 'Adapter WiFi USB untuk koneksi internet cepat', 35),
(116, 'Speaker Creative Pebble', 'Speaker desktop dengan suara stereo berkualitas', 25),
(117, 'Mikrofon Lavalier Rode', 'Mikrofon clip-on untuk rekaman dan vlog', 15),
(118, 'Lampu Meja Touch', 'Lampu meja dengan pengaturan sentuh dan kecerahan otomatis', 30),
(119, 'Case Samsung Galaxy S22', 'Case pelindung untuk Samsung Galaxy S22', 50),
(120, 'Smart Light Bulb Xiaomi', 'Lampu pintar Xiaomi yang dapat dikendalikan melalui aplikasi', 30),
(121, 'Webcam 4K Logitech Brio', 'Webcam dengan kualitas 4K untuk streaming', 10),
(122, 'Power Strip Belkin', 'Power strip dengan 8 colokan dan proteksi lonjakan listrik', 60),
(123, 'Kipas Angin Listrik', 'Kipas angin dengan tiga tingkat kecepatan', 40),
(124, 'Pen Drive 64GB Sandisk', 'Pen drive dengan kapasitas 64GB dan USB 3.0', 55),
(125, 'Hard Disk 4TB', 'Hard disk eksternal dengan kapasitas besar 4TB', 12),
(126, 'Laptop Dell XPS 13', 'Laptop premium dengan Intel Core i7, 16GB RAM', 8),
(127, 'External Soundcard Behringer', 'Soundcard eksternal untuk rekaman audio', 20),
(128, 'Wireless Charger 20W', 'Charger nirkabel untuk smartphone dengan daya 20W', 40),
(129, 'Projector Anker Nebula', 'Proyektor portabel dengan konektivitas Wi-Fi', 10),
(130, 'Tablet Apple iPad', 'Tablet dengan layar Retina dan Apple Pencil support', 8),
(131, 'Smart TV Samsung QLED', 'TV pintar dengan teknologi QLED 55 inci', 5),
(132, 'Gamepad Logitech F710', 'Gamepad wireless dengan desain ergonomis', 30),
(133, 'Case Laptop 14\"', 'Case pelindung untuk laptop 14 inci', 25),
(134, 'Pendrive 128GB', 'Pendrive dengan kapasitas 128GB dan USB 3.0', 40),
(135, 'Keyboard Mechanical Logitech', 'Keyboard mekanik dengan switch G Pro', 50),
(136, 'Camera DJI Osmo Pocket', 'Kamera portabel untuk vlogging dan stabilisasi gambar', 10),
(137, 'Laptop Acer Aspire 7', 'Laptop gaming dengan GTX 1650, 8GB RAM', 5),
(138, 'Printer Brother DCP', 'Printer multifunction inkjet untuk penggunaan kantor', 10),
(139, 'Home Theater Panasonic', 'Sistem audio Home Theater 2.1', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`idbarang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
