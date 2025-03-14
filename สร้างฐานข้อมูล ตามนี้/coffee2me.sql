-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2025 at 10:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee2me`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_member`
--

CREATE TABLE `db_member` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(30) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(30) NOT NULL COMMENT 'นามสกุล',
  `telephone` int(10) NOT NULL COMMENT 'เบอร์โทร',
  `username` varchar(10) NOT NULL COMMENT 'Username',
  `password` varchar(128) NOT NULL COMMENT 'Password',
  `status` int(1) NOT NULL COMMENT '0=user, 1=admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `db_member`
--

INSERT INTO `db_member` (`id`, `name`, `lastname`, `telephone`, `username`, `password`, `status`) VALUES
(000001, 'บัญญา', 'ใจมาก', 2147483647, 'jaimak', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 0),
(000002, 'กรร', 'กรร', 2147483647, 'korn', '5aadb45520dcd8726b2822a7a78bb53d794f557199d5d4abdedd2c55a4bd6ca73607605c558de3db80c8e86c3196484566163ed1327e82e8b6757d1932113cb8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(30) NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(30) NOT NULL COMMENT 'นามสกุล',
  `telephone` int(10) NOT NULL COMMENT 'เบอร์โทร',
  `username` varchar(10) NOT NULL COMMENT 'Username',
  `password` varchar(128) NOT NULL COMMENT 'Password',
  `status` int(1) NOT NULL COMMENT '0=user, 1=admin',
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `lastname`, `telephone`, `username`, `password`, `status`, `image`) VALUES
(000001, 'บัญญา', 'ใจมาก', 2147483647, 'jaimak', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 0, NULL),
(000002, 'กรร', 'กรร', 2147483647, 'korn', '5aadb45520dcd8726b2822a7a78bb53d794f557199d5d4abdedd2c55a4bd6ca73607605c558de3db80c8e86c3196484566163ed1327e82e8b6757d1932113cb8', 0, NULL),
(000003, 'พีรวิชญ์', 'กาญจนะ', 887992868, 'admin', '6ac31a47bc720f4b53f5560042fda740859c7deee8694006ac64e1e5a4e3ffec3ce9a3f723dc4ba31e555abe60b8df1174fca152c4ccc781c4ece38e5eee114b', 1, NULL),
(000006, 'ไฟ', 'ไฟ', 5451511, 'fire', '6ac31a47bc720f4b53f5560042fda740859c7deee8694006ac64e1e5a4e3ffec3ce9a3f723dc4ba31e555abe60b8df1174fca152c4ccc781c4ece38e5eee114b', 1, NULL),
(000007, '', '', 0, '', 'cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e', 0, NULL),
(000008, 'asdaasdas', 'asdasda', 2147483647, 'jiji', '6ac31a47bc720f4b53f5560042fda740859c7deee8694006ac64e1e5a4e3ffec3ce9a3f723dc4ba31e555abe60b8df1174fca152c4ccc781c4ece38e5eee114b', 1, NULL),
(000010, 'nimit', 'suwannasri', 969485389, 'nimit', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db', 2, NULL),
(000011, 'test', 'test', 0, 'tete', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 1, NULL),
(000012, 'bb', 'bb', 0, 'bb', '24b1a812d4e3535c06011c430aaba3f59d32f36263ddcb99541f998266c5e84a52fb33f951cec78656f598a004f83c771388b9a80404f7432b714f4dcae4a00f', 1, NULL),
(000013, 'dd', 'dd', 0, 'dd', '150990c01ce3198086c91576d323046d5cd72c3846bb006c96ba4bbb2fea819e0c0be618b54da576daca212f10340c57ab2f09b46666f1e2c15056ae77b22527', 0, NULL),
(000014, '5551', '51515', 515, '1', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 0, NULL),
(000015, 'ซื้อ', 'น้ำ', 887992868, 'sell', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 0, NULL),
(000016, 'แอดมิน', 'แอดมิน', 887992868, 'ad', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 1, NULL),
(000017, 'cvbc', 'vmn', 1152101, 'bbb', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 0, NULL),
(000018, 'cvbc', 'vmn', 1152101, 'bbb', '4dff4ea340f0a823f15d3f4f01ab62eae0e5da579ccb851f8db9dfe84c58b2b37b89903a740e1ee172da793a6e79d560e5f7f9bd058a12a280433ed6fa46510a', 0, NULL),
(000019, 'ad', 'dwa', 5613, 'dad', 'dfca681b16a5dc1fd975d64644401e25750827ccfe775b5571336e0a9080b24fd35a4443594621f9a49b967cbd48c82c09cb6a14b994ec87e2aff56eddff4c84', 0, NULL),
(000020, 'asdasdas', 'asdassdas', 2147483647, 'd1', '05815e12e515f36d09149ee9eaba48b5a9a413e1f9134d0386d72b977d08bd0d2cdf798df327404f801ab54a33d68058a260c0d899c4f320c337c4f6663be3db', 0, NULL),
(000021, 'asdasdsas', 'asdassdas', 2147483647, 'dd001', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, NULL),
(000022, '11', '11', 11, '11', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, ''),
(000023, '22', '22', 22, '22', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, ''),
(000024, '33', '33', 33, '33', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, ''),
(000025, '88', '88', 88, '88', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, '4_1.jpg'),
(000026, 'gg', 'gg', 0, 'gg', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, '118843_0.jpg'),
(000027, 'kk', 'kk', 1, 'kk', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, 'S__28377093_0.jpg'),
(000028, 'asdasdas', 'asdasdas', 887929268, 'user01', 'fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe', 0, '118843_0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสมาชิก',
  `name` varchar(30) NOT NULL COMMENT 'ชื่อสมาชิก',
  `surname` varchar(30) NOT NULL COMMENT 'นามสกุล',
  `telephone` int(10) NOT NULL COMMENT 'เบอร์โทรศัพท์'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `surname`, `telephone`) VALUES
(000001, 'พีรวิชญ์1', 'กาญจนะ', 887992868);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL COMMENT 'ลำดับที่',
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขที่ใบสั่งซื้อ',
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสินค้า',
  `orderPrice` float NOT NULL COMMENT 'ราคาสินค้า',
  `orderQty` int(11) NOT NULL COMMENT 'จำนวนสั่งซื้อ',
  `Total` float NOT NULL COMMENT 'ราคารวม'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderID`, `pro_id`, `orderPrice`, `orderQty`, `Total`) VALUES
(1, 0000000006, 000007, 60, 2, 120),
(2, 0000000007, 000005, 55, 1, 55),
(3, 0000000008, 000002, 60, 2, 120),
(4, 0000000009, 000002, 60, 2, 120),
(5, 0000000009, 000003, 55, 2, 110),
(6, 0000000010, 000004, 45, 2, 90),
(7, 0000000010, 000009, 60, 1, 60),
(8, 0000000012, 000007, 60, 1, 60),
(9, 0000000014, 000003, 55, 3, 165),
(10, 0000000014, 000004, 45, 2, 90),
(11, 0000000014, 000005, 55, 1, 55),
(12, 0000000015, 000002, 60, 2, 120),
(13, 0000000015, 000008, 70, 2, 140),
(14, 0000000015, 000009, 60, 2, 120),
(15, 0000000015, 000007, 60, 2, 120),
(16, 0000000015, 000005, 55, 2, 110),
(17, 0000000016, 000008, 70, 1, 70),
(18, 0000000017, 000005, 55, 1, 55),
(19, 0000000018, 000002, 60, 1, 60),
(20, 0000000019, 000002, 60, 2, 120),
(21, 0000000019, 000005, 55, 1, 55),
(22, 0000000020, 000002, 60, 1, 60),
(23, 0000000021, 000002, 60, 1, 60),
(24, 0000000022, 000002, 60, 22, 1320),
(25, 0000000023, 000002, 60, 1, 60),
(26, 0000000023, 000005, 55, 1, 55),
(27, 0000000024, 000002, 60, 2, 120),
(28, 0000000024, 000004, 45, 2, 90),
(29, 0000000024, 000009, 60, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสสินค้า',
  `pro_name` varchar(100) NOT NULL COMMENT 'ชื่อสินค้า',
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสประเภทสินค้า',
  `price` float NOT NULL COMMENT 'ราคา',
  `amount` int(11) NOT NULL COMMENT 'จำนวนคงเหลือ',
  `image` varchar(100) NOT NULL COMMENT 'รูปภาพ',
  `detail` text NOT NULL COMMENT 'รายละเอียด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `type_id`, `price`, `amount`, `image`, `detail`) VALUES
(000002, 'ชาเขียวว', 001, 60, 9, 'pr_67aeb7e7a9446.png', 'ชาเขียวไม่ใช่นม'),
(000003, 'ชาไทย', 001, 55, 45, 'pr_67aeb7f80652f.png', ''),
(000004, 'ชามะนาว', 001, 45, 34, 'pr_67aeb8021da46.png', ''),
(000005, 'นมสด', 001, 55, 13, 'pr_67aeb8097119e.png', ''),
(000006, 'แคนตาลูป', 001, 60, 20, 'pr_67aeb823cf7ac.png', ''),
(000007, 'แตงโมปั่น', 001, 60, 30, 'pr_67aeb83648ba6.png', ''),
(000008, 'คาปูชิโน่', 001, 70, 24, 'pr_67aeb84b3cd0f.png', ''),
(000009, 'โกโก้', 001, 60, 43, 'pr_67aeb85263f5a.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `orderID` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'เลขใบที่สั่งซื้อ',
  `cus_name` varchar(60) NOT NULL COMMENT 'ชื่อลูกค้า',
  `address` text NOT NULL COMMENT 'ที่อยู่',
  `telephone` varchar(10) NOT NULL COMMENT 'เบอร์โทรศัพท์',
  `total_price` float NOT NULL COMMENT 'ราคารวมสุทธิ',
  `order_status` varchar(1) NOT NULL COMMENT 'สถานะการสั่งซื้อ \r\n0=ยกเลิก\r\n1=สั่งซื้อ\r\n2=ชำระเงิน',
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'วันที่สั่งซื้อ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`orderID`, `cus_name`, `address`, `telephone`, `total_price`, `order_status`, `reg_date`) VALUES
(0000000008, 'พีรวิชญ์', '260/6 ', '0887992868', 120, '2', '2025-02-17 04:27:23'),
(0000000009, 'มูน', '888/8 ', '0888888888', 230, '2', '2025-02-17 04:35:25'),
(0000000010, 'พีรวิชญ์ กาญจนะ', ' 260/6', '0887992868', 150, '0', '2025-02-17 04:24:12'),
(0000000012, 'จัทร์ อังคาร', ' 777/7', '065750475', 60, '1', '2025-02-17 04:15:04'),
(0000000014, 'วันทอง หลายใจ', ' 271/1', '0877892560', 310, '1', '2025-02-17 08:04:14'),
(0000000015, 'เสี่ยเหมา', ' ถนน69 ตรอก27', '0985952658', 610, '1', '2025-02-18 03:53:45'),
(0000000016, 'นายดี กินแฟ', '420/20 ', '0895987252', 70, '1', '2025-02-19 07:15:26'),
(0000000017, 'วันดี วันร้าย', '500/1 ', '0798594198', 55, '1', '2025-02-19 07:15:51'),
(0000000018, 'เขียว ใจสู้', '600/1 ', '0958456454', 60, '2', '2025-02-20 02:20:05'),
(0000000019, '156565', ' 45654654', '4565456456', 175, '1', '2025-02-20 02:54:23'),
(0000000020, '1', ' 1', '1', 60, '2', '2025-02-20 04:42:38'),
(0000000021, '5646', '4646 ', '456456', 60, '1', '2025-02-20 04:47:43'),
(0000000022, 'เสี่ยเหมา2', '262/2 ', '0887992868', 1320, '0', '2025-02-20 08:51:29'),
(0000000023, 'adaasdsas', ' asdasd', '0456456456', 115, '2', '2025-02-20 08:51:24'),
(0000000024, '-', ' eeeeeee', '0789789', 270, '2', '2025-02-20 08:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'รหัสประเภทสินค้า',
  `type_name` varchar(50) NOT NULL COMMENT 'ชื่อประเภทสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(001, 'เครื่องดื่ม'),
(002, 'ขนม');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_member`
--
ALTER TABLE `db_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_member`
--
ALTER TABLE `db_member`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ลำดับที่', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสสินค้า', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `orderID` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'เลขใบที่สั่งซื้อ', AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทสินค้า', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
