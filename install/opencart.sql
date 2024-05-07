-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 20, 2023 at 12:50 PM
-- Server version: 5.7.36
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gift`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `company` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `address_1` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `address_2` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `country_id` int NOT NULL DEFAULT '0',
  `zone_id` int NOT NULL DEFAULT '0',
  `custom_field` text COLLATE utf8mb4_general_ci NOT NULL,
  `default` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`, `default`) VALUES
(1, 3, 'demo', 'demo', 'surat', 'surat', 'surat', 'surat', '123456', 99, 1485, '\"\"', 1),
(2, 4, 'Romit', 'Sachani', 'testing', '4th floor,yogini building,above surat super store,', 'opp.new shankti vijay,near hirabaug,varachha road', 'SURAT', '395006', 105, 3881, '\"\"', 1),
(3, 6, 'demo', 'demo', '', 'sdsdsdsdcsdvsdv', '', 'surat', '395004', 222, 3563, '\"\"', 0),
(4, 8, 'demo', 'demo', 'winter', 'amro arcade', '', 'surat', '395004', 99, 0, '\"\"', 1),
(5, 9, 'demo', 'demo', '', 'katargam', '', 'surat', '395004', 99, 0, '\"\"', 1),
(6, 13, 'Ashton', 'George', 'Browning and Wilkins Traders', '470 West Oak Extension', 'Ipsum dolore ducimus', 'Cillum ullam ratione', 'Quis eveni', 120, 0, '\"\"', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_address_format`
--

DROP TABLE IF EXISTS `oc_address_format`;
CREATE TABLE IF NOT EXISTS `oc_address_format` (
  `address_format_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `address_format` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_address_format`
--

INSERT INTO `oc_address_format` (`address_format_id`, `name`, `address_format`) VALUES
(1, 'Address Format', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `key` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '0b9192d007001d0be0c3c6f546bad0d3d6ae38bbad65706e86c3517ba65f3ad50d954fde50d86d2950fdd8969dc894c9f59b445d2dee8fc661c04e0cb664a70fb8607a10ebcf83b2ca8cb7147bf71bf2226fbd5be6a73dac4ef44429a6fc56cf1e352efae3d859132fead1f3a068099772469679d7d27a93a23c45c3137e3d60', 1, '2022-09-14 10:41:06', '2022-09-14 10:41:06'),
(2, 'Default', '0077863d351d65c8d0d28c0bebe6c2e63f608a470695fe64648cc6e36ad728479d9ebc1b289b58cf1966f01596e5332d41e2b007b0031163a32bb46b0078ab9bf1b40c5a03f87a3c315e84ba6ab369b08bf5650e59f79cd9238ad10c1b5bc04c46583eadd13ce6a4c7842657b79e6bcf5969cfb5c7fa172486b2a5fa1c309bcb', 1, '2022-09-26 18:50:26', '2022-09-26 18:50:26'),
(3, 'Default', '1d25d6d0b3bcf790d35aba30fa0ddf964e3b068ab2504c008d9ddc376d12bec5bff0da80c05cd3d78dd3ee114ef0a401c2e477be35a5bd7195fdc1d69ce6b868999b414152c69d982c21b750aa3ce5a5e011556e4e1f91304056bd367ffaca79cb962e3f96d1de611c0b7f71cd7b1c935e8fcf5f3b49d65fc48e536b5b9d43b3', 1, '2022-09-27 19:12:24', '2022-09-27 19:12:24'),
(4, 'Default', '271526329651203c7a33752e7a03bf5756588991c74b619e8c26e4846191dae65d6ed98db116d5069ce8ca6443c8acaefa9595699b9622c8e70e01b612e577691ee1dbb4ea17da0e3e2f03c35940f8e8c006ee024ca18e030977d127bc063fb5f02923bf54a46e4d00cc0eb00165d26ce2e76c40b158c66e182e2893e5ec2630', 1, '2022-09-28 09:57:34', '2022-09-28 09:57:34'),
(5, 'Default', '0afe6f0bac2bed933dab79b2ae88610d99aca974cf5a308f795551b6a20423a631f1259ba96f7e30f78f7169870b4ccd631e29bd9c7e6550a9b3b259b628bfa00ab0bd535d183b7cfd9d2bf36cd40f20a68504369e8ae6637d54e0ed9338e0a321c518ecb685d3d3d9c1f5384d75b1caa98660fc13bb8d6e2657631467fe445e', 1, '2022-10-19 18:28:09', '2022-10-19 18:28:09'),
(6, 'Default', '120fe988acc562d984014f030a256c156b70c6f673cb64eaeed72d07203fa56e1ccd5393d0ad322028e3a3d46449a450957c91bc972034f8f924c0112a3e07153d0d33ff92cd8542c1aa6a16ba94c79b9d48d65ae5d464270b8b21d43d3b2b50847dd268011e240863c558c0cd336d91ba874b7d07178b2550c076db7046cc7f', 1, '2022-11-04 16:33:56', '2022-11-04 16:33:56'),
(7, 'Default', '00b57d75272953b75beac757ce32b88cfb94f5ac819f3a92e4c7986c192f656dff37a8c714c61d92cee75c1b8f04fa7692507c1f50ecc75bb77f710e660f15c05c8fe76ddbc47032e19d4666cd238987250cb1eac3531295b5c541ad9c1d71325f0481dd149b3b9ed009a71b0cb97483a6666a72f09da940507c56f22879086c', 1, '2022-12-09 17:08:59', '2022-12-09 17:08:59'),
(8, 'Default', '7cd1d7afd3c086d55a7a989aeacd7311a24b41d6f818690fd8a428dd71b89d8e7ccbe0bfe7b17ef7bacaeaa273b07d2efa6f9b8703774cd5834b07464689070357d3ea8857376c4ef660606ec313f5fed4c65ccf39fc49a3538ce99a64e131676312ebc4c063900f06ee71f03977e52d42b5d88ee9acdd7174265c1f9fec2947', 1, '2023-01-18 13:01:46', '2023-01-18 13:01:46'),
(9, 'Default', '0b609e9ddd2499774f612889d83f11c846dc9d62067b41a39b1930776e0f98127f27b995af99b5cf5984074aa957df3234bf38e1ce80a9ee6e6f56cd0f6edbafa8cd9c3b38f90d3efb575e8f0d6f57b83e87031e4ac6906ea1d54cdb4ed8bd155d1032c42df41f6157be3267290aa20c6ecddd8234ea740cf3423030c96021e5', 1, '2023-01-24 14:18:31', '2023-01-24 14:18:31'),
(10, 'Default', 'af5f79640981ed6d808dea2de818d876971d3fe1f72908f54d7f8d2255f384b832b5be47a750d8a0230d042b7252e773741f0738322872e80a41d1774900951d8e8edebdfbb9785147b33bbcfb602a739f046311952d25395b3c426d3dba99bb565149794687031437ca47a4ee5e7c31ee38497ff1700c0989209e353ded848c', 1, '2023-02-13 11:44:13', '2023-02-13 11:44:13'),
(11, 'Default', '0f37230fd1429733a9fd7f320796469e029a125545df4e8fb5c49924243dd732c0ca87d31ab24ba15293a668abb00401e503c4f38f969a459687bfc2475444b0cf5a5e03641a9a81af5f79858a91c76a48962feb217a696c7723d337a219f8852b2c9d00b7a796ae2a3ee64ed4fec679677c7a6e9ac57fc186782f7337855645', 1, '2023-02-21 11:24:53', '2023-02-21 11:24:53'),
(12, 'Default', '7a41aa8b5474a961813196a488e5b9d1f74646129a6966d00ce3f696debd4ea65ccd71737073564f587dd7d70aa481e2b6cfcba2fa12ceca2277cb4f95f9884c0e2fce19dc20fc37cc5667902e489df57463c1003718887859be0864edea78ed7d4c324be0ba8ec2929f242cf1b9ef47b8ab7f6040d5edfcffe02e2b8759714f', 1, '2023-03-06 14:43:14', '2023-03-06 14:43:14'),
(13, 'Default', '6d4f2fdc3e692726e5ce0c52d4f898e925410a62dfc198e2e6dfaf88db977d64b161b0e01fb73ad0d5231748b40a136690af019fdda66fa0a097838709b84eef2d4b2f76a632c143afb30085b0fe89677f2441b53ca0f3227e77907a5f5818b40f1a180bab233294e33559f797f45d41655edec3521ae3f35f9d09ad23c11ea1', 1, '2023-03-27 15:25:48', '2023-03-27 15:25:48'),
(14, 'Default', '6f796a6fc5d207426dc27143b22a7d9ad2051f72896881e935e14d04b6d3f2653f7adf02621d20b23593b1897e55d40e37bae897621455cdc23745a04a6124b3a3df6b98c6b73259fd71a75d008ef95577df8b61d802201eb4646ebe3fe01e3e58276c0289a8bc56725e754a0ffe7977250db13b87e7ef6f8ad045d53a8a0255', 1, '2023-04-03 12:47:19', '2023-04-03 12:47:19'),
(15, 'Default', 'a96a937005ea6ac9e9c14d3d1d95cb2dd1ad86a65bc52821c1a6852bd4ec191dfb70646621f68c309d02171fdfcbe04b79c38dd567d6329a84fd2d6189b0e6fea8c967770355c50cf691d28d4afc70cf66d7fd7ff054ab02bb7d829af08b5a4b2b3300646667f7d7c55403761d4ad29697163b200890769e9c921d054b7de5d8', 1, '2023-04-08 17:14:38', '2023-04-08 17:14:38'),
(16, 'Default', '8fe84d12cd9b0944956c037df29581b8e3fb02d15f79c3bf3e63e5e4edffaa58dccf19fe26140c2053a38b4db650f6c48228ec9a6d8dd84cb3c46426be70e0ea801e74331c30b04fcd117c1ef7c6cbaa54db471653024a3a680cfe1fc53207efd74eee4e538780113d14feddec1e8e6e7af6b79ebca840faf6c3e5a4f9613f5c', 1, '2023-04-13 13:00:44', '2023-04-13 13:00:44'),
(17, 'Default', 'fb0e1ab6bfc1b724458d24e1fe7473577e97a0d7d6eb889dab24db08f90763e5820678936f442c3375032540f2c9f98c92effedc74a64dd7b1269d23bd7afb33e8c8c72dffbad94c9ec52e8281b09299b9400f25ef687aa57003b5d6c7aaef1be244124d3f96b7711661b3b967ddd922618aad3e4cb7186b3a8f49c886e33a68', 1, '2023-04-15 22:20:40', '2023-04-15 22:20:40'),
(18, 'Default', '8dcf6242fe6c7cfe82c83dad0de1729e8a4417e6ee10bd6b410d710f23ae15900135b44131488c84241200d8cba34f8da49394b3157f0f9db4280071c2a34421fd255c9cf6256ed261a964cd8a003452b83c8ddea727a7c239a25ceec6bcb53c7f21ff925e6ca6a218e65746c8694dbb0c5b05d6d19f065a7ee0fae248230274', 1, '2023-04-18 18:25:23', '2023-04-18 18:25:23'),
(19, 'Default', 'b8018d81e543249e5fff407d5931dfc500cd59ad4d89cb6d664c96cad84763428b6835d6e2ae0319e745fa42167f8816dad98b00160316227854e6f30b12a1bb899352dc2a87f7b285ea287feacabe7b9a6c52afdddd8c5626a15c09c6543de175b2992b52bbdffd82df8c4dbfed82533406863575e75109914aabf1de596324', 1, '2023-05-01 14:44:20', '2023-05-01 14:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

DROP TABLE IF EXISTS `oc_api_ip`;
CREATE TABLE IF NOT EXISTS `oc_api_ip` (
  `api_ip_id` int NOT NULL,
  `api_id` int NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

DROP TABLE IF EXISTS `oc_api_session`;
CREATE TABLE IF NOT EXISTS `oc_api_session` (
  `api_session_id` int NOT NULL,
  `api_id` int NOT NULL,
  `session_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int NOT NULL,
  `attribute_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(1, 2, 'Description'),
(2, 1, 'No. of Cores'),
(2, 2, 'No. of Cores'),
(3, 1, 'Clockspeed'),
(3, 2, 'Clockspeed'),
(4, 1, 'test 1'),
(4, 2, 'test 1'),
(5, 1, 'test 2'),
(5, 2, 'test 2'),
(6, 1, 'test 3'),
(6, 2, 'test 3'),
(7, 1, 'test 4'),
(7, 2, 'test 4'),
(8, 1, 'test 5'),
(8, 2, 'test 5'),
(9, 1, 'test 6'),
(9, 2, 'test 6'),
(10, 1, 'test 7'),
(10, 2, 'test 7'),
(11, 1, 'test 8'),
(11, 2, 'test 8');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(3, 2, 'Memory'),
(4, 1, 'Technical'),
(4, 2, 'Technical'),
(5, 1, 'Motherboard'),
(5, 2, 'Motherboard'),
(6, 1, 'Processor'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(10, 'centerbanner', 1),
(11, 'offerbanner', 1),
(12, 'Home Page Slideshow', 1),
(14, 'logoslider', 1),
(39, 'Right banner', 1),
(69, 'imgbanner', 1),
(70, 'left banner', 1),
(71, 'special banner', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int NOT NULL,
  `banner_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `description`, `sort_order`) VALUES
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer|info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', '', 0),
(143, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer|info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', '', 0),
(639, 14, 1, 'brand', '#', 'catalog/brand-logo/1.png', '', 0),
(640, 14, 1, 'brand', '#', 'catalog/brand-logo/1.png', '', 0),
(641, 14, 1, 'brand', '#', 'catalog/brand-logo/1.png', '', 0),
(642, 14, 1, 'barnd', '#', 'catalog/brand-logo/1.png', '', 0),
(643, 14, 1, 'brand', '#', 'catalog/brand-logo/1.png', '', 0),
(644, 14, 1, 'brand', '#', 'catalog/brand-logo/1.png', '', 0),
(645, 14, 1, 'brand', '#', 'catalog/brand-logo/1.png', '', 0),
(784, 70, 1, 'left-banner', '#', 'catalog/left-banner/1.jpg', '&lt;div class=&quot;left-ctn&quot;&gt;\r\n&lt;h3&gt;ACCESSORIES&lt;/h3&gt;\r\n\r\n&lt;p&gt;INTENSE BLACK T-SHIRT&lt;/p&gt;\r\n&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;&lt;span&gt;see more&lt;svg height=&quot;20px&quot; width=&quot;20px&quot;&gt;&lt;use xlink:href=&quot;#arright&quot;&gt;&lt;/use&gt;&lt;/svg&gt;&lt;/span&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(785, 70, 1, 'left-banner', '#', 'catalog/left-banner/2.jpg', '&lt;div class=&quot;left-ctn&quot;&gt;\r\n&lt;h3&gt;ACCESSORIES&lt;/h3&gt;\r\n\r\n&lt;p&gt;INTENSE BLACK T-SHIRT&lt;/p&gt;\r\n&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;&lt;span&gt;see more&lt;svg height=&quot;20px&quot; width=&quot;20px&quot;&gt;&lt;use xlink:href=&quot;#arright&quot;&gt;&lt;/use&gt;&lt;/svg&gt;&lt;/span&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(818, 71, 1, 'special-banner', '#', 'catalog/specialbanner/1.png', '&lt;h2&gt;Plants&amp;amp;Pots&lt;/h2&gt;\r\n\r\n&lt;h3&gt;&lt;b&gt;Create a tropical interior&lt;/b&gt; in your home.&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;check more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/p&gt;', 0),
(877, 12, 1, 'slider', '#', 'catalog/slider/1.png', '&lt;h4&gt;gifts.&lt;/h4&gt;\r\n\r\n&lt;h1&gt;&lt;b&gt;Gifts for &lt;/b&gt;all occasions&lt;/h1&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;/p&gt;\r\n\r\n&lt;div class=&quot;slider-btn&quot;&gt;&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot;&gt;check more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(878, 12, 1, 'slider', '#', 'catalog/slider/2.png', '&lt;h4&gt;gifts.&lt;/h4&gt;\r\n\r\n&lt;h1&gt;&lt;b&gt;Gifts for &lt;/b&gt;all occasions&lt;/h1&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;/p&gt;\r\n\r\n&lt;div class=&quot;slider-btn&quot;&gt;&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot;&gt;check more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(883, 11, 1, 'offerbanner', '#', 'catalog/offerbanner/1.png', '&lt;div class=&quot;offer-ctn&quot;&gt;\r\n&lt;h2 class=&quot;heading text-left&quot;&gt;&lt;span&gt;&lt;b&gt;Gifts for&lt;/b&gt;all occasions&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;/p&gt;\r\n\r\n&lt;div class=&quot;offer-service&quot;&gt;\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-md-6 col-xs-12 s-icon&quot;&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;img alt=&quot;thumb1&quot; src=&quot;image/catalog/offerbanner/thumb1.png&quot; /&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;img alt=&quot;pro-dot&quot; src=&quot;image/catalog/pro-dot.svg&quot; /&gt;\r\n	&lt;h4&gt;The best place with gifts&lt;/h4&gt;\r\n\r\n	&lt;h3&gt;&lt;b&gt;John Doe,&lt;/b&gt; Client&lt;/h3&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-6 col-xs-12 s-icon&quot;&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;img alt=&quot;thumb2&quot; src=&quot;image/catalog/offerbanner/thumb2.jpg&quot; /&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;img alt=&quot;pro-dot&quot; src=&quot;image/catalog/pro-dot.svg&quot; /&gt;\r\n	&lt;h4&gt;The best place with gifts&lt;/h4&gt;\r\n\r\n	&lt;h3&gt;&lt;b&gt;John Doe,&lt;/b&gt; Client&lt;/h3&gt;\r\n	&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;show more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(885, 10, 1, 'centerbanner', '#', 'catalog/centerbanner/1.jpg', '&lt;div class=&quot;cbnr-ctn&quot;&gt;\r\n&lt;h2&gt;Gifts.&lt;/h2&gt;\r\n\r\n&lt;h3&gt;&lt;b&gt;Gifts for&lt;/b&gt; all occasions&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;/p&gt;\r\n&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;show more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(888, 39, 1, 'banner', '#', 'catalog/right-banner/1.jpg', '&lt;div class=&quot;banser-dec&quot;&gt;\r\n&lt;h3&gt;&lt;b&gt;Gifts for&lt;/b&gt; all occasions&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;\r\n&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;show more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(889, 69, 1, 'image banner', '#', 'catalog/imgbanner/1.jpg', '&lt;div class=&quot;banser-dec&quot;&gt;\r\n&lt;h2&gt;&lt;b&gt;Gifts for&lt;/b&gt; all occasions&lt;/h2&gt;\r\n&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;show more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 0),
(890, 69, 1, 'image banner', '#', 'catalog/imgbanner/2.jpg', '&lt;div class=&quot;banser-dec&quot;&gt;\r\n&lt;h2&gt;&lt;b&gt;Gifts for&lt;/b&gt; all occasions&lt;/h2&gt;\r\n&lt;a class=&quot;btn btn-primary btn-section&quot; href=&quot;#&quot; tabindex=&quot;0&quot;&gt;show more products&lt;img alt=&quot;stor-bg&quot; src=&quot;image/catalog/stor-bg.svg&quot; /&gt;&lt;/a&gt;&lt;/div&gt;', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger`
--

DROP TABLE IF EXISTS `oc_blogger`;
CREATE TABLE IF NOT EXISTS `oc_blogger` (
  `blogger_id` int NOT NULL,
  `module_id` int DEFAULT NULL,
  `status` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_blogger`
--

INSERT INTO `oc_blogger` (`blogger_id`, `module_id`, `status`, `image`, `date_added`, `date_modified`) VALUES
(1, 53, 1, 'catalog/blog/1.jpg', '2022-12-12 04:37:21', '2023-04-19 08:55:01'),
(2, 53, 1, 'catalog/blog/2.jpg', '2022-12-12 04:37:31', '2023-04-19 08:55:15'),
(3, 53, 1, 'catalog/blog/3.jpg', '2022-12-13 04:02:14', '2023-04-19 08:55:24'),
(4, 53, 1, 'catalog/blog/4.jpg', '2022-12-13 04:02:36', '2023-04-19 08:55:37'),
(5, 53, 1, 'catalog/blog/5.jpg', '2022-12-13 04:02:53', '2023-04-19 08:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_comment`
--

DROP TABLE IF EXISTS `oc_blogger_comment`;
CREATE TABLE IF NOT EXISTS `oc_blogger_comment` (
  `blogger_comment_id` int NOT NULL,
  `blogger_id` int DEFAULT NULL,
  `approved` int DEFAULT NULL,
  `author` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(96) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_comment_description`
--

DROP TABLE IF EXISTS `oc_blogger_comment_description`;
CREATE TABLE IF NOT EXISTS `oc_blogger_comment_description` (
  `blogger_comment_id` int NOT NULL,
  `language_id` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_blogger_description`
--

DROP TABLE IF EXISTS `oc_blogger_description`;
CREATE TABLE IF NOT EXISTS `oc_blogger_description` (
  `blogger_id` int NOT NULL,
  `language_id` int DEFAULT NULL,
  `title` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_blogger_description`
--

INSERT INTO `oc_blogger_description` (`blogger_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'Quisque sit amet', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;'),
(2, 1, 'Morbi vel risus', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;'),
(3, 1, 'Pellentesque non', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;'),
(4, 1, 'Sed viverra', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;'),
(5, 1, 'Morbi vel risus', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

DROP TABLE IF EXISTS `oc_cart`;
CREATE TABLE IF NOT EXISTS `oc_cart` (
  `cart_id` int NOT NULL,
  `api_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `session_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int NOT NULL,
  `subscription_plan_id` int NOT NULL,
  `option` text COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `subscription_plan_id`, `option`, `quantity`, `date_added`) VALUES
(27, 0, 3, '866435a31ba8fd607cb9d4113a', 46, 0, '[]', 1, '2022-09-30 11:27:17'),
(47, 0, 2, 'a9dc823405462ea594226b9816', 46, 0, '[]', 2, '2022-10-04 06:06:18'),
(74, 0, 1, '56270fa536b1b14fe67955a329', 44, 0, '[]', 1, '2022-10-05 09:06:05'),
(96, 0, 5, '83cc7ad9d6d5cb8888a2b4e8e3', 46, 0, '[]', 1, '2022-12-19 09:46:00'),
(97, 0, 5, '83cc7ad9d6d5cb8888a2b4e8e3', 31, 0, '[]', 1, '2022-12-19 09:46:06'),
(100, 0, 6, 'd3494c7c150ac819f3b3788892', 51, 0, '{\"238\":\"31\"}', 1, '2022-12-29 04:45:15'),
(105, 0, 8, '5128801275c735e635b1292fb3', 54, 0, '{\"255\":\"82\"}', 1, '2023-01-21 11:27:38'),
(106, 0, 8, '5128801275c735e635b1292fb3', 49, 0, '{\"275\":\"140\"}', 1, '2023-02-25 06:50:26'),
(113, 0, 0, 'f90ff203669ce1a8bf23e1b543', 29, 0, '{\"398\":\"424\"}', 1, '2023-05-01 10:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(20, 'catalog/category/1.jpg', 0, 0, 2, 1, 1, '2009-01-05 21:49:43', '2023-04-14 09:56:55'),
(25, 'catalog/menu-icon/cheese.png', 0, 1, 3, 3, 1, '2009-01-31 01:04:25', '2023-04-16 04:17:27'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2023-04-14 09:57:13'),
(28, '', 25, 1, 3, 1, 1, '2009-02-02 13:11:12', '2023-04-14 09:58:50'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2023-04-14 09:58:12'),
(60, 'catalog/menu-icon/meat-fish.png', 0, 1, 1, 0, 1, '2022-10-05 09:34:00', '2023-04-14 09:56:32'),
(61, '', 27, 0, 1, 0, 1, '2022-10-05 09:35:30', '2023-04-14 09:57:24'),
(63, '', 27, 0, 1, 0, 1, '2022-10-05 09:37:41', '2023-04-14 09:57:33'),
(64, '', 29, 0, 1, 0, 1, '2022-10-05 09:41:36', '2023-04-14 09:58:42'),
(65, '', 29, 0, 1, 0, 1, '2022-10-05 09:42:59', '2023-04-14 09:58:25'),
(66, '', 29, 0, 1, 0, 1, '2022-10-05 09:43:48', '2023-04-14 09:58:33'),
(67, '', 0, 1, 1, 2, 1, '2022-12-16 05:10:25', '2023-04-14 09:57:51'),
(68, 'catalog/menu-icon/chocolate-crackers.png', 0, 1, 1, 5, 1, '2022-12-16 05:12:16', '2023-04-14 09:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(20, 1, 'Cloth', '&lt;p&gt;Shop Laptop Feature Only The Best Laptop Deals On The Market. By Comparing Laptop Deals From The Likes Of PC World, Comet, Dixons, The Link And Carphone Warehouse, Shop Laptop Has The Most Comprehensive Selection Of Laptops On The Internet. At Shop Laptop, We Pride Ourselves On Offering Customers The Very Best Laptop Deals. From Refurbished Laptops To Netbooks, Shop Laptop Ensures That Every Laptop - In Every Colour, Style, Size And Technical Spec - Is Featured On The Site At The Lowest Possible Price.&lt;/p&gt;', 'Cloth', 'Example of category description', ''),
(25, 1, 'Scanners', '&lt;p&gt;From sweet red varieties, like Red Delicious, Fuji or Gala, to tangy green ones, like Granny Smith — my personal favorite that I enjoy with lime juice and a little salt when I want a savory snack — there sure is an apple for everyone. They’re commonly used in recipes, like pies, cookies, muffins, jam, salads, oatmeal, or smoothies. They also make a great snack on their own or wedged and smeared with nut butter&lt;/p&gt;', 'Scanners', '', ''),
(27, 1, 'Monitors', '', 'Monitors', '', ''),
(28, 1, 'Women', '', 'Women', '', ''),
(29, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(60, 1, 'accessories', '', 'accessories', '', ''),
(61, 1, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(64, 1, 'shop', '', 'shop', '', ''),
(65, 1, 'collection', '', 'collection', '', ''),
(66, 1, 'men', '', 'men', '', ''),
(67, 1, 'Printers', '', 'Printers', '', ''),
(68, 1, 'Bag', '', 'Bag', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int NOT NULL,
  `filter_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(20, 1),
(20, 2),
(20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int NOT NULL,
  `path_id` int NOT NULL,
  `level` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(20, 20, 0),
(25, 25, 0),
(27, 20, 0),
(27, 27, 1),
(28, 25, 0),
(28, 28, 1),
(29, 25, 0),
(29, 29, 1),
(60, 60, 0),
(61, 20, 0),
(61, 27, 1),
(61, 61, 2),
(63, 20, 0),
(63, 27, 1),
(63, 63, 2),
(64, 25, 0),
(64, 29, 1),
(64, 64, 2),
(65, 25, 0),
(65, 29, 1),
(65, 65, 2),
(66, 25, 0),
(66, 29, 1),
(66, 66, 2),
(67, 67, 0),
(68, 68, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(25, 0, 0),
(27, 0, 0),
(28, 0, 0),
(29, 0, 0),
(60, 0, 0),
(61, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(20, 0),
(25, 0),
(27, 0),
(28, 0),
(29, 0),
(60, 0),
(61, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `iso_code_3` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `address_format_id` int NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format_id`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, 0, 1),
(2, 'Albania', 'AL', 'ALB', 1, 0, 1),
(3, 'Algeria', 'DZ', 'DZA', 1, 0, 1),
(4, 'American Samoa', 'AS', 'ASM', 1, 0, 1),
(5, 'Andorra', 'AD', 'AND', 1, 0, 1),
(6, 'Angola', 'AO', 'AGO', 1, 0, 1),
(7, 'Anguilla', 'AI', 'AIA', 1, 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', 1, 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, 0, 1),
(10, 'Argentina', 'AR', 'ARG', 1, 0, 1),
(11, 'Armenia', 'AM', 'ARM', 1, 0, 1),
(12, 'Aruba', 'AW', 'ABW', 1, 0, 1),
(13, 'Australia', 'AU', 'AUS', 1, 0, 1),
(14, 'Austria', 'AT', 'AUT', 1, 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, 0, 1),
(16, 'Bahamas', 'BS', 'BHS', 1, 0, 1),
(17, 'Bahrain', 'BH', 'BHR', 1, 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', 1, 0, 1),
(19, 'Barbados', 'BB', 'BRB', 1, 0, 1),
(20, 'Belarus', 'BY', 'BLR', 1, 0, 1),
(21, 'Belgium', 'BE', 'BEL', 1, 0, 1),
(22, 'Belize', 'BZ', 'BLZ', 1, 0, 1),
(23, 'Benin', 'BJ', 'BEN', 1, 0, 1),
(24, 'Bermuda', 'BM', 'BMU', 1, 0, 1),
(25, 'Bhutan', 'BT', 'BTN', 1, 0, 1),
(26, 'Bolivia', 'BO', 'BOL', 1, 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 1, 0, 1),
(28, 'Botswana', 'BW', 'BWA', 1, 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1, 0, 1),
(30, 'Brazil', 'BR', 'BRA', 1, 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', 1, 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1, 0, 1),
(35, 'Burundi', 'BI', 'BDI', 1, 0, 1),
(36, 'Cambodia', 'KH', 'KHM', 1, 0, 1),
(37, 'Cameroon', 'CM', 'CMR', 1, 0, 1),
(38, 'Canada', 'CA', 'CAN', 1, 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', 1, 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1, 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', 1, 0, 1),
(42, 'Chad', 'TD', 'TCD', 1, 0, 1),
(43, 'Chile', 'CL', 'CHL', 1, 0, 1),
(44, 'China', 'CN', 'CHN', 1, 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', 1, 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, 0, 1),
(47, 'Colombia', 'CO', 'COL', 1, 0, 1),
(48, 'Comoros', 'KM', 'COM', 1, 0, 1),
(49, 'Congo', 'CG', 'COG', 1, 0, 1),
(50, 'Cook Islands', 'CK', 'COK', 1, 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', 1, 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, 0, 1),
(53, 'Croatia', 'HR', 'HRV', 1, 0, 1),
(54, 'Cuba', 'CU', 'CUB', 1, 0, 1),
(55, 'Cyprus', 'CY', 'CYP', 1, 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1, 0, 1),
(57, 'Denmark', 'DK', 'DNK', 1, 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', 1, 0, 1),
(59, 'Dominica', 'DM', 'DMA', 1, 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1, 0, 1),
(61, 'East Timor', 'TL', 'TLS', 1, 0, 1),
(62, 'Ecuador', 'EC', 'ECU', 1, 0, 1),
(63, 'Egypt', 'EG', 'EGY', 1, 0, 1),
(64, 'El Salvador', 'SV', 'SLV', 1, 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, 0, 1),
(66, 'Eritrea', 'ER', 'ERI', 1, 0, 1),
(67, 'Estonia', 'EE', 'EST', 1, 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', 1, 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1, 0, 1),
(71, 'Fiji', 'FJ', 'FJI', 1, 0, 1),
(72, 'Finland', 'FI', 'FIN', 1, 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', 1, 1, 1),
(75, 'French Guiana', 'GF', 'GUF', 1, 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', 1, 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1, 0, 1),
(78, 'Gabon', 'GA', 'GAB', 1, 0, 1),
(79, 'Gambia', 'GM', 'GMB', 1, 0, 1),
(80, 'Georgia', 'GE', 'GEO', 1, 0, 1),
(81, 'Germany', 'DE', 'DEU', 1, 1, 1),
(82, 'Ghana', 'GH', 'GHA', 1, 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', 1, 0, 1),
(84, 'Greece', 'GR', 'GRC', 1, 0, 1),
(85, 'Greenland', 'GL', 'GRL', 1, 0, 1),
(86, 'Grenada', 'GD', 'GRD', 1, 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1, 0, 1),
(88, 'Guam', 'GU', 'GUM', 1, 0, 1),
(89, 'Guatemala', 'GT', 'GTM', 1, 0, 1),
(90, 'Guinea', 'GN', 'GIN', 1, 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', 1, 0, 1),
(92, 'Guyana', 'GY', 'GUY', 1, 0, 1),
(93, 'Haiti', 'HT', 'HTI', 1, 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, 0, 1),
(95, 'Honduras', 'HN', 'HND', 1, 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', 1, 0, 1),
(97, 'Hungary', 'HU', 'HUN', 1, 0, 1),
(98, 'Iceland', 'IS', 'ISL', 1, 0, 1),
(99, 'India', 'IN', 'IND', 1, 0, 1),
(100, 'Indonesia', 'ID', 'IDN', 1, 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', 1, 0, 1),
(103, 'Ireland', 'IE', 'IRL', 1, 0, 1),
(104, 'Israel', 'IL', 'ISR', 1, 0, 1),
(105, 'Italy', 'IT', 'ITA', 1, 0, 1),
(106, 'Jamaica', 'JM', 'JAM', 1, 0, 1),
(107, 'Japan', 'JP', 'JPN', 1, 0, 1),
(108, 'Jordan', 'JO', 'JOR', 1, 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, 0, 1),
(110, 'Kenya', 'KE', 'KEN', 1, 0, 1),
(111, 'Kiribati', 'KI', 'KIR', 1, 0, 1),
(112, 'North Korea', 'KP', 'PRK', 1, 0, 1),
(113, 'South Korea', 'KR', 'KOR', 1, 0, 1),
(114, 'Kuwait', 'KW', 'KWT', 1, 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, 0, 1),
(117, 'Latvia', 'LV', 'LVA', 1, 0, 1),
(118, 'Lebanon', 'LB', 'LBN', 1, 0, 1),
(119, 'Lesotho', 'LS', 'LSO', 1, 0, 1),
(120, 'Liberia', 'LR', 'LBR', 1, 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1, 0, 1),
(123, 'Lithuania', 'LT', 'LTU', 1, 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', 1, 0, 1),
(125, 'Macau', 'MO', 'MAC', 1, 0, 1),
(126, 'FYROM', 'MK', 'MKD', 1, 0, 1),
(127, 'Madagascar', 'MG', 'MDG', 1, 0, 1),
(128, 'Malawi', 'MW', 'MWI', 1, 0, 1),
(129, 'Malaysia', 'MY', 'MYS', 1, 0, 1),
(130, 'Maldives', 'MV', 'MDV', 1, 0, 1),
(131, 'Mali', 'ML', 'MLI', 1, 0, 1),
(132, 'Malta', 'MT', 'MLT', 1, 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1, 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', 1, 0, 1),
(135, 'Mauritania', 'MR', 'MRT', 1, 0, 1),
(136, 'Mauritius', 'MU', 'MUS', 1, 0, 1),
(137, 'Mayotte', 'YT', 'MYT', 1, 0, 1),
(138, 'Mexico', 'MX', 'MEX', 1, 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, 0, 1),
(141, 'Monaco', 'MC', 'MCO', 1, 0, 1),
(142, 'Mongolia', 'MN', 'MNG', 1, 0, 1),
(143, 'Montserrat', 'MS', 'MSR', 1, 0, 1),
(144, 'Morocco', 'MA', 'MAR', 1, 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1, 0, 1),
(146, 'Myanmar', 'MM', 'MMR', 1, 0, 1),
(147, 'Namibia', 'NA', 'NAM', 1, 0, 1),
(148, 'Nauru', 'NR', 'NRU', 1, 0, 1),
(149, 'Nepal', 'NP', 'NPL', 1, 0, 1),
(150, 'Netherlands', 'NL', 'NLD', 1, 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', 1, 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', 1, 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', 1, 0, 1),
(155, 'Niger', 'NE', 'NER', 1, 0, 1),
(156, 'Nigeria', 'NG', 'NGA', 1, 0, 1),
(157, 'Niue', 'NU', 'NIU', 1, 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1, 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, 0, 1),
(160, 'Norway', 'NO', 'NOR', 1, 0, 1),
(161, 'Oman', 'OM', 'OMN', 1, 0, 1),
(162, 'Pakistan', 'PK', 'PAK', 1, 0, 1),
(163, 'Palau', 'PW', 'PLW', 1, 0, 1),
(164, 'Panama', 'PA', 'PAN', 1, 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, 0, 1),
(166, 'Paraguay', 'PY', 'PRY', 1, 0, 1),
(167, 'Peru', 'PE', 'PER', 1, 0, 1),
(168, 'Philippines', 'PH', 'PHL', 1, 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', 1, 0, 1),
(170, 'Poland', 'PL', 'POL', 1, 0, 1),
(171, 'Portugal', 'PT', 'PRT', 1, 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1, 0, 1),
(173, 'Qatar', 'QA', 'QAT', 1, 0, 1),
(174, 'Reunion', 'RE', 'REU', 1, 0, 1),
(175, 'România', 'RO', 'ROM', 1, 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', 1, 0, 1),
(177, 'Rwanda', 'RW', 'RWA', 1, 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1, 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, 0, 1),
(181, 'Samoa', 'WS', 'WSM', 1, 0, 1),
(182, 'San Marino', 'SM', 'SMR', 1, 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, 0, 1),
(185, 'Senegal', 'SN', 'SEN', 1, 0, 1),
(186, 'Seychelles', 'SC', 'SYC', 1, 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1, 0, 1),
(188, 'Singapore', 'SG', 'SGP', 1, 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', 1, 0, 1),
(190, 'Slovenia', 'SI', 'SVN', 1, 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1, 0, 1),
(192, 'Somalia', 'SO', 'SOM', 1, 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', 1, 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', 1, 0, 1),
(195, 'Spain', 'ES', 'ESP', 1, 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', 1, 0, 1),
(197, 'St. Helena', 'SH', 'SHN', 1, 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, 0, 1),
(199, 'Sudan', 'SD', 'SDN', 1, 0, 1),
(200, 'Suriname', 'SR', 'SUR', 1, 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1, 0, 1),
(203, 'Sweden', 'SE', 'SWE', 1, 1, 1),
(204, 'Switzerland', 'CH', 'CHE', 1, 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, 0, 1),
(206, 'Taiwan', 'TW', 'TWN', 1, 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1, 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, 0, 1),
(209, 'Thailand', 'TH', 'THA', 1, 0, 1),
(210, 'Togo', 'TG', 'TGO', 1, 0, 1),
(211, 'Tokelau', 'TK', 'TKL', 1, 0, 1),
(212, 'Tonga', 'TO', 'TON', 1, 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, 0, 1),
(214, 'Tunisia', 'TN', 'TUN', 1, 0, 1),
(215, 'Turkey', 'TR', 'TUR', 1, 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1, 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', 1, 0, 1),
(219, 'Uganda', 'UG', 'UGA', 1, 0, 1),
(220, 'Ukraine', 'UA', 'UKR', 1, 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', 1, 1, 1),
(223, 'United States', 'US', 'USA', 1, 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, 0, 1),
(225, 'Uruguay', 'UY', 'URY', 1, 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', 1, 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, 0, 1),
(229, 'Venezuela', 'VE', 'VEN', 1, 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', 1, 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', 1, 0, 1),
(235, 'Yemen', 'YE', 'YEM', 1, 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', 1, 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', 1, 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, 0, 1),
(242, 'Montenegro', 'ME', 'MNE', 1, 0, 1),
(243, 'Serbia', 'RS', 'SRB', 1, 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', 1, 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', 1, 0, 1),
(246, 'Curacao', 'CW', 'CUW', 1, 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', 1, 0, 1),
(248, 'South Sudan', 'SS', 'SSD', 1, 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', 1, 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', 1, 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', 1, 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', 1, 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', 1, 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', 1, 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', 1, 0, 1),
(256, 'Guernsey', 'GG', 'GGY', 1, 0, 1),
(257, 'Jersey', 'JE', 'JEY', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `type` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `uses_total` int NOT NULL,
  `uses_customer` varchar(11) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cron`
--

DROP TABLE IF EXISTS `oc_cron`;
CREATE TABLE IF NOT EXISTS `oc_cron` (
  `cron_id` int NOT NULL,
  `code` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `cycle` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `action` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_cron`
--

INSERT INTO `oc_cron` (`cron_id`, `code`, `description`, `cycle`, `action`, `status`, `date_added`, `date_modified`) VALUES
(1, 'currency', '', 'day', 'cron/currency', 1, '2014-09-25 14:40:00', '2014-09-25 14:40:00'),
(2, 'gdpr', '', 'day', 'cron/gdpr', 1, '2014-09-25 14:40:00', '2014-09-25 14:40:00'),
(3, 'subscription', '', 'day', 'cron/subscription', 1, '2014-09-25 14:40:00', '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `symbol_right` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `decimal_place` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.80589042, 1, '2023-04-20 11:47:28'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2023-04-20 11:47:28'),
(3, 'Euro', 'EUR', '', '€', '2', 0.91466203, 1, '2023-04-20 11:47:28'),
(4, 'Hong Kong Dollar', 'HKD', 'HK$', '', '2', 7.84926370, 0, '2023-04-20 11:47:28'),
(5, 'Indian Rupee', 'INR', '₹', '', '2', 82.22674472, 0, '2023-04-20 11:47:28'),
(6, 'Russian Ruble', 'RUB', '', '₽', '2', 56.40360000, 0, '2018-02-16 12:00:00'),
(7, 'Chinese Yuan Renminbi', 'CNY', '¥', '', '2', 6.89710052, 0, '2023-04-20 11:47:28'),
(8, 'Australian Dollar', 'AUD', '$', '', '2', 1.49099058, 0, '2023-04-20 11:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `language_id` int NOT NULL,
  `firstname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `custom_field` text COLLATE utf8mb4_general_ci NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `password`, `custom_field`, `newsletter`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'demo', 'demo', 'demo@demo.com', '', '$2y$10$jBnCiwUx/Sg16GTAQDIR..xiFWVKlwqKAFlpMbEjGmGKsIjJigIfS', '\"\"', 0, '::1', 1, 0, '', '', '2022-09-20 12:03:46'),
(2, 1, 0, 1, 'demo', 'demo', 'demo12@demo.com', '', '$2y$10$PBzIV/DDaUc6fYhmQIVcFOXvLdIEZAL4CrmoaMV4yLb8pl5g4iPr.', '\"\"', 0, '49.36.81.102', 1, 0, '', '', '2022-09-20 12:37:06'),
(3, 1, 0, 1, 'demo', 'demo', 'demo14@demo.com', '', '$2y$10$ERxdhb5N3sE0yLLYEhvpKu2KgzxLp8sKT68Vggn7lbOWnMmQiaGw.', '', 0, '::1', 1, 0, '', '', '2022-09-29 06:57:04'),
(4, 1, 0, 1, 'Romit', 'Sachani', 'demosadsad@demo.com', '', '$2y$10$Bw6hwj.ymUhhW.o1v9iF2uddGJh9usbNgMlEaKdmZyNjw/ITRgD/S', '', 0, '::1', 1, 0, '', '', '2022-12-12 10:50:19'),
(5, 1, 0, 1, 'Romit', 'Sachani', 'admin123@gmail.com', '', '$2y$10$WU8HFbpLDzJzr9zpUoUwc.kK5OyOnrp2pfZPzie8XWmioQdTLZV7C', '\"\"', 0, '::1', 1, 0, '', '', '2022-12-19 04:12:02'),
(6, 1, 0, 1, 'demo', 'demo', 'deo@demo.com', '', '$2y$10$/nlV.trSZcT4Xaa0B.FKF.4FkIJKmmItjl4Bv.IEhHnqTOAGn69kS', '', 1, '::1', 1, 0, '', '', '2022-12-28 11:37:45'),
(7, 1, 0, 1, 'demo', 'demo', 'demo1@demo.com', '', '$2y$10$J/h7KtvjQAl7y372JaNYAuRnx20ZhWvbcOKg.RObaYe7JAie/ySja', '\"\"', 1, '::1', 1, 0, '', '', '2022-12-29 05:26:47'),
(8, 1, 0, 1, 'demo', 'demo', 'admin@demo.com', '', '$2y$10$3b3Mqpv9H/R487PtE1a2HOYIkLMDK8Zu8tbx/WYpVxb119wS6lOIi', '', 1, '::1', 1, 0, '', '', '2023-01-21 04:38:52'),
(9, 1, 0, 1, 'demo', 'demo', 'admin3569@gmail.com', '', '$2y$10$UkfWmxJK5/xZuffBzQY7ren08fZRG/ImuDeVsoCVno4RKrPEgE/42', '', 1, '::1', 1, 0, '', '', '2023-01-24 05:34:34'),
(10, 1, 0, 1, 'demo', 'demo', 'demo2@demo.com', '', '$2y$10$U7yGrLcRDDiVoLVPiq.fgem9nPEIqGEvQDnkUgGWThzaXiu40nzEq', '\"\"', 0, '::1', 1, 0, '', '', '2023-03-30 09:38:05'),
(11, 1, 0, 1, 'demo', 'demo', 'demo3@demo.com', '', '$2y$10$o/4UG5aieuxN5dEDZT6qMuyhLz86hOSEyY1brONK5fSJ02i0f8xmq', '\"\"', 0, '::1', 1, 0, '', '', '2023-04-06 05:55:25'),
(12, 1, 0, 1, 'demo', 'demo', 'demo4@demo.com', '', '$2y$10$Xftby5.Dc7PgSmz4P6iRy.Z4.59LGKtFC5Fd2UqxUlMuIB2Y3IzBO', '\"\"', 0, '::1', 1, 0, '', '', '2023-04-11 07:24:54'),
(13, 1, 0, 1, 'Jaquelyn', 'Spears', 'mujyc@mailinator.com', '', '$2y$10$2brmzppsQCaWWProxOB3ue8gyXp6H/WJEIy2PLWNynBBW7uskwFw2', '\"\"', 1, '::1', 1, 0, '', '', '2023-05-01 09:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `customer_activity_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

DROP TABLE IF EXISTS `oc_customer_affiliate`;
CREATE TABLE IF NOT EXISTS `oc_customer_affiliate` (
  `customer_id` int NOT NULL,
  `company` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tracking` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `payment` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `cheque` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `paypal` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_branch_number` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_swift_code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_account_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `bank_account_number` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `custom_field` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_customer_affiliate`
--

INSERT INTO `oc_customer_affiliate` (`customer_id`, `company`, `website`, `tracking`, `commission`, `tax`, `payment`, `cheque`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `custom_field`, `status`, `date_added`) VALUES
(13, 'Decker and Acevedo Associates', 'https://www.kumep.info', 'f02a43ab38', '5.00', 'Est aut dolor nulla', 'cheque', 'Irene Randall', 'movoxy@mailinator.com', '', '', '', '', '', '', 1, '2023-05-01 09:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate_report`
--

DROP TABLE IF EXISTS `oc_customer_affiliate_report`;
CREATE TABLE IF NOT EXISTS `oc_customer_affiliate_report` (
  `customer_affiliate_report_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

DROP TABLE IF EXISTS `oc_customer_approval`;
CREATE TABLE IF NOT EXISTS `oc_customer_approval` (
  `customer_approval_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `type` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int NOT NULL,
  `approval` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `store_id`, `ip`, `country`, `date_added`) VALUES
(1, 1, 0, '::1', '', '2022-09-20 12:03:46'),
(2, 2, 0, '::1', '', '2022-09-20 12:37:06'),
(3, 2, 0, '::1', '', '2022-09-22 04:03:39'),
(4, 2, 0, '::1', '', '2022-09-29 05:40:54'),
(5, 2, 0, '::1', '', '2022-09-29 05:43:45'),
(6, 2, 0, '::1', '', '2022-09-29 05:46:06'),
(7, 2, 0, '::1', '', '2022-09-30 12:14:03'),
(8, 2, 0, '::1', '', '2022-10-01 05:30:23'),
(9, 2, 0, '::1', '', '2022-10-01 09:23:03'),
(10, 2, 0, '49.36.81.102', '', '2022-10-04 06:00:44'),
(11, 1, 0, '49.36.81.102', '', '2022-10-04 11:03:41'),
(12, 1, 0, '49.36.81.102', '', '2022-10-04 11:21:01'),
(13, 1, 0, '::1', '', '2022-10-11 08:49:28'),
(14, 5, 0, '::1', '', '2022-12-19 04:12:02'),
(15, 7, 0, '::1', '', '2022-12-29 05:26:47'),
(16, 8, 0, '::1', '', '2023-01-27 08:57:39'),
(17, 9, 0, '::1', '', '2023-01-31 06:03:15'),
(18, 8, 0, '::1', '', '2023-02-15 05:18:52'),
(19, 8, 0, '::1', '', '2023-02-24 08:58:20'),
(20, 8, 0, '::1', '', '2023-03-16 10:56:34'),
(21, 10, 0, '::1', '', '2023-03-30 09:38:06'),
(22, 11, 0, '::1', '', '2023-04-06 05:55:25'),
(23, 12, 0, '::1', '', '2023-04-11 07:24:54'),
(24, 11, 0, '::1', '', '2023-04-14 13:40:06'),
(25, 11, 0, '::1', '', '2023-04-17 10:25:34'),
(26, 10, 0, '::1', '', '2023-04-19 11:11:30'),
(27, 13, 0, '::1', '', '2023-05-01 09:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int NOT NULL,
  `email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `total` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, '', '49.36.81.102', 1, '2022-10-04 11:00:52', '2022-10-04 11:00:52'),
(2, 'admin', '::1', 5, '2022-12-29 05:19:55', '2023-03-16 10:56:27'),
(3, 'demo@demo.com', '::1', 5, '2022-12-29 05:19:58', '2023-02-24 08:58:11'),
(4, '', '127.0.0.1', 1, '2023-02-17 09:25:04', '2023-02-17 09:25:04'),
(5, 'demo1@demo.com', '::1', 3, '2023-02-23 09:33:57', '2023-03-16 10:56:30'),
(6, 'demo@demo.com.', '::1', 2, '2023-02-23 09:34:07', '2023-02-24 08:58:15'),
(7, 'restaurant', '::1', 1, '2023-02-23 09:34:12', '2023-02-23 09:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL,
  `url` text COLLATE utf8mb4_general_ci NOT NULL,
  `referer` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_payment`
--

DROP TABLE IF EXISTS `oc_customer_payment`;
CREATE TABLE IF NOT EXISTS `oc_customer_payment` (
  `customer_payment_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `date_expire` date NOT NULL,
  `default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `order_id` int NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `points` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

DROP TABLE IF EXISTS `oc_customer_search`;
CREATE TABLE IF NOT EXISTS `oc_customer_search` (
  `customer_search_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` int NOT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

DROP TABLE IF EXISTS `oc_customer_wishlist`;
CREATE TABLE IF NOT EXISTS `oc_customer_wishlist` (
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 42, '2022-10-11 08:49:28'),
(1, 49, '2022-10-11 08:49:28'),
(2, 30, '2022-10-01 09:23:03'),
(2, 36, '2022-10-01 09:23:03'),
(2, 42, '2022-10-01 05:30:23'),
(2, 46, '2022-10-04 06:11:12'),
(2, 47, '2022-09-30 12:14:03'),
(2, 49, '2022-09-22 04:03:39'),
(3, 42, '2022-09-30 11:26:47'),
(3, 46, '2022-09-30 08:56:06'),
(3, 47, '2022-09-30 10:56:59'),
(5, 30, '2022-12-19 08:44:30'),
(5, 34, '2022-12-19 08:44:37'),
(5, 42, '2022-12-19 08:44:35'),
(5, 44, '2022-12-20 05:02:18'),
(5, 49, '2022-12-19 08:44:33'),
(5, 53, '2022-12-19 10:12:03'),
(7, 30, '2022-12-29 12:32:06'),
(8, 28, '2023-01-21 05:26:46'),
(8, 42, '2023-03-17 05:41:25'),
(8, 50, '2023-01-21 05:26:44'),
(8, 54, '2023-01-21 05:26:43'),
(10, 29, '2023-04-20 10:07:24'),
(10, 49, '2023-03-31 06:09:52'),
(10, 54, '2023-03-31 05:33:00'),
(11, 28, '2023-04-17 12:05:26'),
(11, 29, '2023-04-18 07:17:20'),
(11, 30, '2023-04-17 10:25:34'),
(11, 31, '2023-04-18 06:20:01'),
(11, 46, '2023-04-15 12:35:53'),
(11, 49, '2023-04-06 08:49:59'),
(12, 28, '2023-04-11 12:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `validation` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES
(1, 'select', '', '', 'account', 0, 1),
(2, 'radio', '', '', 'account', 0, 2),
(3, 'checkbox', '', '', 'account', 0, 3),
(4, 'text', '', '', 'account', 0, 4),
(5, 'textarea', '', '', 'account', 0, 5),
(6, 'file', '', '', 'account', 0, 6),
(7, 'date', '', '', 'account', 0, 7),
(8, 'time', '', '', 'account', 0, 8),
(9, 'datetime', '', '', 'account', 0, 9),
(11, 'checkbox', '', '', 'address', 0, 3),
(12, 'time', '', '', 'address', 0, 8),
(13, 'date', '', '', 'address', 0, 7),
(14, 'datetime', '', '', 'address', 0, 9),
(15, 'file', '', '', 'address', 0, 6),
(16, 'radio', '', '', 'address', 0, 2),
(17, 'select', '', '', 'address', 0, 1),
(18, 'text', '', '', 'address', 0, 4),
(19, 'textarea', '', '', 'address', 0, 5),
(20, 'checkbox', '', '', 'affiliate', 0, 3),
(21, 'date', '', '', 'affiliate', 0, 8),
(22, 'datetime', '', '', 'affiliate', 0, 9),
(23, 'file', '', '', 'affiliate', 0, 6),
(24, 'radio', '', '', 'affiliate', 0, 2),
(25, 'select', '', '', 'affiliate', 0, 1),
(26, 'text', '', '', 'affiliate', 0, 4),
(27, 'textarea', '', '', 'affiliate', 0, 5),
(28, 'time', '', '', 'affiliate', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1),
(5, 1, 1),
(6, 1, 1),
(7, 1, 1),
(8, 1, 1),
(9, 1, 1),
(11, 1, 1),
(12, 1, 1),
(13, 1, 1),
(14, 1, 1),
(15, 1, 1),
(16, 1, 1),
(17, 1, 1),
(18, 1, 1),
(19, 1, 1),
(20, 1, 1),
(21, 1, 1),
(22, 1, 1),
(23, 1, 1),
(24, 1, 1),
(25, 1, 1),
(26, 1, 1),
(27, 1, 1),
(28, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(1, 1, 'Select'),
(1, 2, 'Select'),
(2, 1, 'Radio'),
(2, 2, 'Radio'),
(3, 1, 'Checkbox'),
(3, 2, 'Checkbox'),
(4, 1, 'Text'),
(4, 2, 'Text'),
(5, 1, 'Textarea'),
(5, 2, 'Textarea'),
(6, 1, 'File'),
(6, 2, 'File'),
(7, 1, 'Date'),
(7, 2, 'Date'),
(8, 1, 'Time'),
(8, 2, 'Time'),
(9, 1, 'Date &amp; Time'),
(9, 2, 'Date &amp; Time'),
(11, 1, 'Checkbox'),
(11, 2, 'Checkbox'),
(12, 1, 'Time'),
(12, 2, 'Time'),
(13, 1, 'Date'),
(13, 2, 'Date'),
(14, 1, 'Date &amp; Time'),
(14, 2, 'Date &amp; Time'),
(15, 1, 'File'),
(15, 2, 'File'),
(16, 1, 'Radio'),
(16, 2, 'Radio'),
(17, 1, 'Select'),
(17, 2, 'Select'),
(18, 1, 'Text'),
(18, 2, 'Text'),
(19, 1, 'Textarea'),
(19, 2, 'Textarea'),
(20, 1, 'Checkbox'),
(20, 2, 'Checkbox'),
(21, 1, 'Date'),
(21, 2, 'Date'),
(22, 1, 'Date &amp; Time'),
(22, 2, 'Date &amp; Time'),
(23, 1, 'File'),
(23, 2, 'File'),
(24, 1, 'Radio'),
(24, 2, 'Radio'),
(25, 1, 'Select'),
(25, 2, 'Select'),
(26, 1, 'Text'),
(26, 2, 'Text'),
(27, 1, 'Textarea'),
(27, 2, 'Textarea'),
(28, 1, 'Time'),
(28, 2, 'Time');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_custom_field_value`
--

INSERT INTO `oc_custom_field_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(20, 11, 1),
(21, 11, 2),
(22, 11, 3),
(32, 16, 1),
(33, 16, 2),
(34, 16, 3),
(35, 17, 1),
(36, 17, 2),
(37, 17, 3),
(38, 20, 1),
(39, 20, 2),
(40, 20, 3),
(41, 24, 1),
(42, 24, 2),
(43, 24, 3),
(44, 25, 0),
(45, 25, 0),
(46, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `custom_field_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_custom_field_value_description`
--

INSERT INTO `oc_custom_field_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
(1, 1, 1, 'Test 1'),
(1, 2, 1, 'Test 1'),
(2, 1, 1, 'test 2'),
(2, 2, 1, 'test 2'),
(3, 1, 1, 'Test 3'),
(3, 2, 1, 'Test 3'),
(4, 1, 2, 'Test 1'),
(4, 2, 2, 'Test 1'),
(5, 1, 2, 'Test 2'),
(5, 2, 2, 'Test 2'),
(6, 1, 2, 'Test 3'),
(6, 2, 2, 'Test 3'),
(7, 1, 3, 'Test 1'),
(7, 2, 3, 'Test 1'),
(8, 1, 3, 'Test 2'),
(8, 2, 3, 'Test 2'),
(9, 1, 3, 'Test 3'),
(9, 2, 3, 'Test 3'),
(20, 1, 11, 'Test 1'),
(20, 2, 11, 'Test 1'),
(21, 1, 11, 'Test 2'),
(21, 2, 11, 'Test 2'),
(22, 1, 11, 'Test 3'),
(22, 2, 11, 'Test 3'),
(32, 1, 16, 'Test 1'),
(32, 2, 16, 'Test 1'),
(33, 1, 16, 'Test 2'),
(33, 2, 16, 'Test 2'),
(34, 1, 16, 'Test 3'),
(34, 2, 16, 'Test 3'),
(35, 1, 17, 'Test 1'),
(35, 2, 17, 'Test 1'),
(36, 1, 17, 'Test 2'),
(36, 2, 17, 'Test 2'),
(37, 1, 17, 'Test 3'),
(37, 2, 17, 'Test 3'),
(38, 1, 20, 'Test 1'),
(38, 2, 20, 'Test 1'),
(39, 1, 20, 'Test 2'),
(39, 2, 20, 'Test 2'),
(40, 1, 20, 'Test 3'),
(40, 2, 20, 'Test 3'),
(41, 1, 24, 'Test 1'),
(41, 2, 24, 'Test 1'),
(42, 1, 24, 'Test 2'),
(42, 2, 24, 'Test 2'),
(43, 1, 24, 'Test 3'),
(43, 2, 24, 'Test 3'),
(44, 1, 25, 'Test 1'),
(44, 2, 25, 'Test 1'),
(45, 1, 25, 'Test 2'),
(45, 2, 25, 'Test 2'),
(46, 1, 25, 'Test 3'),
(46, 2, 25, 'Test 3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int NOT NULL,
  `filename` varchar(160) COLLATE utf8mb4_general_ci NOT NULL,
  `mask` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_report`
--

DROP TABLE IF EXISTS `oc_download_report`;
CREATE TABLE IF NOT EXISTS `oc_download_report` (
  `download_report_id` int NOT NULL,
  `download_id` int NOT NULL,
  `store_id` int NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int NOT NULL,
  `code` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `trigger` text COLLATE utf8mb4_general_ci NOT NULL,
  `action` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `description`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', '', 'catalog/model/account/customer/addCustomer/after', 'event/activity|addCustomer', 1, 1),
(2, 'activity_customer_edit', '', 'catalog/model/account/customer/editCustomer/after', 'event/activity|editCustomer', 1, 1),
(3, 'activity_customer_password', '', 'catalog/model/account/customer/editPassword/after', 'event/activity|editPassword', 1, 1),
(4, 'activity_customer_forgotten', '', 'catalog/model/account/customer/editCode/after', 'event/activity|forgotten', 1, 1),
(5, 'activity_customer_login', '', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity|login', 1, 1),
(6, 'activity_customer_transaction', '', 'catalog/model/account/customer/addTransaction/after', 'event/activity|addTransaction', 1, 1),
(7, 'activity_address_add', '', 'catalog/model/account/address/addAddress/after', 'event/activity|addAddress', 1, 1),
(8, 'activity_address_edit', '', 'catalog/model/account/address/editAddress/after', 'event/activity|editAddress', 1, 1),
(9, 'activity_address_delete', '', 'catalog/model/account/address/deleteAddress/after', 'event/activity|deleteAddress', 1, 1),
(10, 'activity_affiliate_add', '', 'catalog/model/account/affiliate/addAffiliate/after', 'event/activity|addAffiliate', 1, 1),
(11, 'activity_affiliate_edit', '', 'catalog/model/account/affiliate/editAffiliate/after', 'event/activity|editAffiliate', 1, 1),
(12, 'activity_order_add', '', 'catalog/model/checkout/order/addHistory/before', 'event/activity|addHistory', 1, 1),
(13, 'activity_return_add', '', 'catalog/model/account/returns/addReturn/after', 'event/activity|addReturn', 1, 1),
(14, 'mail_customer_transaction', '', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 1),
(15, 'mail_customer_forgotten', '', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 1),
(16, 'mail_customer_add', '', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 1),
(17, 'mail_customer_alert', '', 'catalog/model/account/customer/addCustomer/after', 'mail/register|alert', 1, 1),
(18, 'mail_affiliate_add', '', 'catalog/model/account/affiliate/addAffiliate/after', 'mail/affiliate', 1, 1),
(19, 'mail_affiliate_alert', '', 'catalog/model/account/affiliate/addAffiliate/after', 'mail/affiliate|alert', 1, 1),
(20, 'mail_order_alert', '', 'catalog/model/checkout/order/addHistory/before', 'mail/order|alert', 1, 1),
(21, 'mail_order_add', '', 'catalog/model/checkout/order/addHistory/before', 'mail/order', 1, 1),
(22, 'mail_gdpr', '', 'catalog/model/account/gdpr/addGdpr/after', 'mail/gdpr', 1, 1),
(23, 'mail_voucher', '', 'catalog/model/checkout/order/addHistory/after', 'mail/voucher', 1, 1),
(24, 'mail_review', '', 'catalog/model/catalog/review/addReview/after', 'mail/review', 1, 1),
(25, 'statistics_review_add', '', 'catalog/model/catalog/review/addReview/after', 'event/statistics|addReview', 1, 1),
(26, 'statistics_return_add', '', 'catalog/model/account/returns/addReturn/after', 'event/statistics|addReturn', 1, 1),
(27, 'statistics_return_delete', '', 'admin/model/sale/returns/deleteReturn/after', 'event/statistics|deleteReturn', 1, 1),
(28, 'statistics_order_history', '', 'catalog/model/checkout/order/addHistory/before', 'event/statistics|addHistory', 1, 1),
(29, 'subscription', '', 'catalog/model/checkout/subscription/addSubscription/after', 'mail/subscription', 1, 1),
(30, 'admin_currency_add', '', 'admin/model/localisation/currency/addCurrency/after', 'event/currency', 1, 1),
(31, 'admin_currency_edit', '', 'admin/model/localisation/currency/editCurrency/after', 'event/currency', 1, 1),
(32, 'admin_currency_setting', '', 'admin/model/setting/setting/editSetting/after', 'event/currency', 1, 1),
(33, 'admin_mail_gdpr', '', 'admin/model/customer/gdpr/editStatus/after', 'mail/gdpr', 1, 1),
(34, 'admin_mail_affiliate_approve', '', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate|approve', 1, 1),
(35, 'admin_mail_affiliate_deny', '', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate|deny', 1, 1),
(36, 'admin_mail_customer_approve', '', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer|approve', 1, 1),
(37, 'admin_mail_customer_deny', '', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer|deny', 1, 1),
(38, 'admin_mail_customer_transaction', '', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 1),
(39, 'admin_mail_reward', '', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 1),
(40, 'admin_mail_return', '', 'admin/model/sale/returns/addHistory/after', 'mail/returns', 1, 1),
(41, 'admin_mail_user_forgotten', '', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 1),
(42, 'admin_mail_user_authorize', '', 'admin/controller/common/authorize|send/after', 'mail/authorize', 1, 1),
(43, 'admin_mail_user_authorize_reset', '', 'admin/model/user/user/editCode/after', 'mail/authorize|reset', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `extension`, `type`, `code`) VALUES
(1, 'opencart', 'payment', 'cod'),
(2, 'opencart', 'total', 'shipping'),
(3, 'opencart', 'total', 'sub_total'),
(4, 'opencart', 'total', 'tax'),
(5, 'opencart', 'total', 'total'),
(6, 'opencart', 'module', 'banner'),
(8, 'opencart', 'total', 'credit'),
(9, 'opencart', 'shipping', 'flat'),
(10, 'opencart', 'total', 'handling'),
(11, 'opencart', 'total', 'low_order_fee'),
(12, 'opencart', 'total', 'coupon'),
(13, 'opencart', 'module', 'category'),
(14, 'opencart', 'module', 'account'),
(15, 'opencart', 'total', 'reward'),
(16, 'opencart', 'total', 'voucher'),
(17, 'opencart', 'payment', 'free_checkout'),
(18, 'opencart', 'module', 'featured'),
(20, 'opencart', 'theme', 'basic'),
(21, 'opencart', 'dashboard', 'activity'),
(22, 'opencart', 'dashboard', 'sale'),
(23, 'opencart', 'dashboard', 'recent'),
(24, 'opencart', 'dashboard', 'order'),
(25, 'opencart', 'dashboard', 'online'),
(26, 'opencart', 'dashboard', 'map'),
(27, 'opencart', 'dashboard', 'customer'),
(28, 'opencart', 'dashboard', 'chart'),
(29, 'opencart', 'report', 'sale_coupon'),
(31, 'opencart', 'report', 'customer_search'),
(32, 'opencart', 'report', 'customer_transaction'),
(33, 'opencart', 'report', 'product_purchased'),
(34, 'opencart', 'report', 'product_viewed'),
(35, 'opencart', 'report', 'sale_return'),
(36, 'opencart', 'report', 'sale_order'),
(37, 'opencart', 'report', 'sale_shipping'),
(38, 'opencart', 'report', 'sale_tax'),
(39, 'opencart', 'report', 'customer_activity'),
(40, 'opencart', 'report', 'customer_order'),
(41, 'opencart', 'report', 'customer_reward'),
(42, 'opencart', 'currency', 'ecb'),
(43, 'opencart', 'report', 'marketing'),
(50, 'opencart', 'module', 'html'),
(56, 'opencart', 'module', 'bestseller'),
(57, 'opencart', 'module', 'latest'),
(58, 'opencart', 'module', 'filter'),
(59, 'wbcountdown', 'module', 'wbcountdown'),
(60, 'opencart', 'module', 'special'),
(67, 'wdimgslider', 'module', 'wdimgslider'),
(68, 'wdonsale', 'module', 'wdonsale'),
(69, 'wdcategory', 'module', 'wdcategory'),
(70, 'wdcenterbanner', 'module', 'wdcenterbanner'),
(71, 'wdofferbanner', 'module', 'wdofferbanner'),
(72, 'wdtop', 'module', 'wdtop'),
(73, 'blogger', 'module', 'blogger'),
(74, 'wdselected', 'module', 'wdselected'),
(76, 'wdrightbanner', 'module', 'wdrightbanner'),
(77, 'wdlogoslider', 'module', 'wdlogoslider'),
(78, 'workdonewsletter', 'module', 'workdonewsletter'),
(79, 'wdcategorytab', 'module', 'wdcategorytab'),
(80, 'wdspecialbanner', 'module', 'wdspecialbanner'),
(81, 'wdleftbanner', 'module', 'wdleftbanner'),
(82, 'opencart', 'module', 'store'),
(83, 'wbimgbanner', 'module', 'wbimgbanner'),
(84, 'wdcategorytabone', 'module', 'wdcategorytabone');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

DROP TABLE IF EXISTS `oc_extension_install`;
CREATE TABLE IF NOT EXISTS `oc_extension_install` (
  `extension_install_id` int NOT NULL,
  `extension_id` int NOT NULL,
  `extension_download_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_id`, `extension_download_id`, `name`, `code`, `version`, `author`, `link`, `status`, `date_added`) VALUES
(1, 0, 0, 'OpenCart Default Extensions', 'opencart', '1.0', 'OpenCart Ltd', 'http://www.opencart.com', 1, '2020-08-29 15:35:39'),
(2, 0, 0, 'OpenCart Language Example', 'oc_language_example', '1.0', 'OpenCart Ltd', 'https://www.opencart.com', 0, '2022-09-15 11:48:54'),
(3, 0, 0, 'OpenCart Payment Example', 'oc_payment_example', '1.0', 'OpenCart Ltd', 'https://www.opencart.com', 0, '2022-09-15 11:48:54'),
(4, 0, 0, 'OpenCart Theme Example', 'oc_theme_example', '1.0', 'OpenCart Ltd', 'https://www.opencart.com', 0, '2022-09-15 11:48:54'),
(17, 0, 0, 'wbcountdown', 'wbcountdown', '1.0', 'Webibazaar', 'https://workdo.com', 1, '2022-10-04 06:52:48'),
(25, 0, 0, 'Wd Imgslider', 'wdimgslider', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-10 12:29:47'),
(26, 0, 0, 'wdonsale', 'wdonsale', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-10 12:38:26'),
(27, 0, 0, 'wdcategory', 'wdcategory', '1.0', 'Workdo', 'https://workdo.io/', 1, '2022-12-10 12:39:48'),
(28, 0, 0, 'Wd center banner', 'wdcenterbanner', '1.0', 'Workdo', 'https://workdo.io/', 1, '2022-12-10 12:42:48'),
(29, 0, 0, 'WD offer banner', 'wdofferbanner', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-12 04:27:15'),
(30, 0, 0, 'wdtop', 'wdtop', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-12 04:32:10'),
(31, 0, 0, 'Workdo Blog', 'blogger', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-12 04:35:59'),
(32, 0, 0, 'wdselected', 'wdselected', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-12 04:50:15'),
(34, 0, 0, 'WD right banner', 'wdrightbanner', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-12 04:56:59'),
(35, 0, 0, 'WD logoslider', 'wdlogoslider', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-12 04:58:02'),
(36, 0, 0, 'workdonewsletter', 'workdonewsletter', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-13 07:28:38'),
(37, 0, 0, 'wdcategorytab', 'wdcategorytab', '1.0', 'Workdo', 'https://workdo.io/', 1, '2022-12-21 10:08:29'),
(38, 0, 0, 'Wd special banner', 'wdspecialbanner', '1.0', 'Workdo', 'https://workdo.io', 1, '2022-12-22 08:55:16'),
(39, 0, 0, 'Wd left banner', 'wdleftbanner', '1.0', 'Workdo', 'https://workdo.io', 1, '2023-01-25 07:17:25'),
(40, 0, 0, 'WB img banner', 'wbimgbanner', '1.0', 'Webibazaar', 'https://webibazaar.com', 1, '2023-03-07 06:40:12'),
(41, 0, 0, 'wdcategorytabone', 'wdcategorytabone', '1.0', 'Workdo', 'https://workdo.io/', 1, '2023-03-29 12:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

DROP TABLE IF EXISTS `oc_extension_path`;
CREATE TABLE IF NOT EXISTS `oc_extension_path` (
  `extension_path_id` int NOT NULL,
  `extension_install_id` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`) VALUES
(1, 1, 'opencart'),
(2, 1, 'opencart/admin'),
(3, 1, 'opencart/admin/controller'),
(4, 1, 'opencart/admin/controller/analytics'),
(5, 1, 'opencart/admin/controller/analytics/index.html'),
(6, 1, 'opencart/admin/controller/captcha'),
(7, 1, 'opencart/admin/controller/captcha/basic.php'),
(8, 1, 'opencart/admin/controller/currency'),
(9, 1, 'opencart/admin/controller/currency/ecb.php'),
(10, 1, 'opencart/admin/controller/currency/fixer.php'),
(11, 1, 'opencart/admin/controller/dashboard'),
(12, 1, 'opencart/admin/controller/dashboard/activity.php'),
(13, 1, 'opencart/admin/controller/dashboard/chart.php'),
(14, 1, 'opencart/admin/controller/dashboard/customer.php'),
(15, 1, 'opencart/admin/controller/dashboard/map.php'),
(16, 1, 'opencart/admin/controller/dashboard/online.php'),
(17, 1, 'opencart/admin/controller/dashboard/order.php'),
(18, 1, 'opencart/admin/controller/dashboard/recent.php'),
(19, 1, 'opencart/admin/controller/dashboard/sale.php'),
(20, 1, 'opencart/admin/controller/feed'),
(21, 1, 'opencart/admin/controller/feed/index.html'),
(22, 1, 'opencart/admin/controller/fraud'),
(23, 1, 'opencart/admin/controller/fraud/ip.php'),
(24, 1, 'opencart/admin/controller/module'),
(25, 1, 'opencart/admin/controller/module/account.php'),
(26, 1, 'opencart/admin/controller/module/banner.php'),
(27, 1, 'opencart/admin/controller/module/bestseller.php'),
(28, 1, 'opencart/admin/controller/module/category.php'),
(29, 1, 'opencart/admin/controller/module/featured.php'),
(30, 1, 'opencart/admin/controller/module/filter.php'),
(31, 1, 'opencart/admin/controller/module/html.php'),
(32, 1, 'opencart/admin/controller/module/information.php'),
(33, 1, 'opencart/admin/controller/module/latest.php'),
(34, 1, 'opencart/admin/controller/module/special.php'),
(35, 1, 'opencart/admin/controller/module/store.php'),
(36, 1, 'opencart/admin/controller/payment'),
(37, 1, 'opencart/admin/controller/payment/bank_transfer.php'),
(38, 1, 'opencart/admin/controller/payment/cheque.php'),
(39, 1, 'opencart/admin/controller/payment/cod.php'),
(40, 1, 'opencart/admin/controller/payment/free_checkout.php'),
(41, 1, 'opencart/admin/controller/report'),
(42, 1, 'opencart/admin/controller/report/customer_activity.php'),
(43, 1, 'opencart/admin/controller/report/customer_order.php'),
(44, 1, 'opencart/admin/controller/report/customer_reward.php'),
(45, 1, 'opencart/admin/controller/report/customer_search.php'),
(46, 1, 'opencart/admin/controller/report/customer_transaction.php'),
(47, 1, 'opencart/admin/controller/report/marketing.php'),
(48, 1, 'opencart/admin/controller/report/product_purchased.php'),
(49, 1, 'opencart/admin/controller/report/product_viewed.php'),
(50, 1, 'opencart/admin/controller/report/sale_coupon.php'),
(51, 1, 'opencart/admin/controller/report/sale_order.php'),
(52, 1, 'opencart/admin/controller/report/sale_return.php'),
(53, 1, 'opencart/admin/controller/report/sale_shipping.php'),
(54, 1, 'opencart/admin/controller/report/sale_tax.php'),
(55, 1, 'opencart/admin/controller/shipping'),
(56, 1, 'opencart/admin/controller/shipping/flat.php'),
(57, 1, 'opencart/admin/controller/shipping/free.php'),
(58, 1, 'opencart/admin/controller/shipping/item.php'),
(59, 1, 'opencart/admin/controller/shipping/pickup.php'),
(60, 1, 'opencart/admin/controller/shipping/weight.php'),
(61, 1, 'opencart/admin/controller/theme'),
(62, 1, 'opencart/admin/controller/theme/basic.php'),
(63, 1, 'opencart/admin/controller/total'),
(64, 1, 'opencart/admin/controller/total/coupon.php'),
(65, 1, 'opencart/admin/controller/total/credit.php'),
(66, 1, 'opencart/admin/controller/total/handling.php'),
(67, 1, 'opencart/admin/controller/total/low_order_fee.php'),
(68, 1, 'opencart/admin/controller/total/reward.php'),
(69, 1, 'opencart/admin/controller/total/shipping.php'),
(70, 1, 'opencart/admin/controller/total/sub_total.php'),
(71, 1, 'opencart/admin/controller/total/tax.php'),
(72, 1, 'opencart/admin/controller/total/total.php'),
(73, 1, 'opencart/admin/controller/total/voucher.php'),
(74, 1, 'opencart/admin/language'),
(75, 1, 'opencart/admin/language/en-gb'),
(76, 1, 'opencart/admin/language/en-gb/captcha'),
(77, 1, 'opencart/admin/language/en-gb/captcha/basic.php'),
(78, 1, 'opencart/admin/language/en-gb/currency'),
(79, 1, 'opencart/admin/language/en-gb/currency/ecb.php'),
(80, 1, 'opencart/admin/language/en-gb/currency/fixer.php'),
(81, 1, 'opencart/admin/language/en-gb/dashboard'),
(82, 1, 'opencart/admin/language/en-gb/dashboard/activity.php'),
(83, 1, 'opencart/admin/language/en-gb/dashboard/chart.php'),
(84, 1, 'opencart/admin/language/en-gb/dashboard/customer.php'),
(85, 1, 'opencart/admin/language/en-gb/dashboard/map.php'),
(86, 1, 'opencart/admin/language/en-gb/dashboard/online.php'),
(87, 1, 'opencart/admin/language/en-gb/dashboard/order.php'),
(88, 1, 'opencart/admin/language/en-gb/dashboard/recent.php'),
(89, 1, 'opencart/admin/language/en-gb/dashboard/sale.php'),
(90, 1, 'opencart/admin/language/en-gb/fraud'),
(91, 1, 'opencart/admin/language/en-gb/fraud/ip.php'),
(92, 1, 'opencart/admin/language/en-gb/module'),
(93, 1, 'opencart/admin/language/en-gb/module/account.php'),
(94, 1, 'opencart/admin/language/en-gb/module/banner.php'),
(95, 1, 'opencart/admin/language/en-gb/module/bestseller.php'),
(96, 1, 'opencart/admin/language/en-gb/module/category.php'),
(97, 1, 'opencart/admin/language/en-gb/module/featured.php'),
(98, 1, 'opencart/admin/language/en-gb/module/filter.php'),
(99, 1, 'opencart/admin/language/en-gb/module/html.php'),
(100, 1, 'opencart/admin/language/en-gb/module/information.php'),
(101, 1, 'opencart/admin/language/en-gb/module/latest.php'),
(102, 1, 'opencart/admin/language/en-gb/module/special.php'),
(103, 1, 'opencart/admin/language/en-gb/module/store.php'),
(104, 1, 'opencart/admin/language/en-gb/payment'),
(105, 1, 'opencart/admin/language/en-gb/payment/bank_transfer.php'),
(106, 1, 'opencart/admin/language/en-gb/payment/cheque.php'),
(107, 1, 'opencart/admin/language/en-gb/payment/cod.php'),
(108, 1, 'opencart/admin/language/en-gb/payment/free_checkout.php'),
(109, 1, 'opencart/admin/language/en-gb/report'),
(110, 1, 'opencart/admin/language/en-gb/report/customer_activity.php'),
(111, 1, 'opencart/admin/language/en-gb/report/customer_order.php'),
(112, 1, 'opencart/admin/language/en-gb/report/customer_reward.php'),
(113, 1, 'opencart/admin/language/en-gb/report/customer_search.php'),
(114, 1, 'opencart/admin/language/en-gb/report/customer_transaction.php'),
(115, 1, 'opencart/admin/language/en-gb/report/marketing.php'),
(116, 1, 'opencart/admin/language/en-gb/report/product_purchased.php'),
(117, 1, 'opencart/admin/language/en-gb/report/product_viewed.php'),
(118, 1, 'opencart/admin/language/en-gb/report/sale_coupon.php'),
(119, 1, 'opencart/admin/language/en-gb/report/sale_order.php'),
(120, 1, 'opencart/admin/language/en-gb/report/sale_return.php'),
(121, 1, 'opencart/admin/language/en-gb/report/sale_shipping.php'),
(122, 1, 'opencart/admin/language/en-gb/report/sale_tax.php'),
(123, 1, 'opencart/admin/language/en-gb/shipping'),
(124, 1, 'opencart/admin/language/en-gb/shipping/flat.php'),
(125, 1, 'opencart/admin/language/en-gb/shipping/free.php'),
(126, 1, 'opencart/admin/language/en-gb/shipping/item.php'),
(127, 1, 'opencart/admin/language/en-gb/shipping/pickup.php'),
(128, 1, 'opencart/admin/language/en-gb/shipping/weight.php'),
(129, 1, 'opencart/admin/language/en-gb/theme'),
(130, 1, 'opencart/admin/language/en-gb/theme/basic.php'),
(131, 1, 'opencart/admin/language/en-gb/total'),
(132, 1, 'opencart/admin/language/en-gb/total/coupon.php'),
(133, 1, 'opencart/admin/language/en-gb/total/credit.php'),
(134, 1, 'opencart/admin/language/en-gb/total/handling.php'),
(135, 1, 'opencart/admin/language/en-gb/total/low_order_fee.php'),
(136, 1, 'opencart/admin/language/en-gb/total/reward.php'),
(137, 1, 'opencart/admin/language/en-gb/total/shipping.php'),
(138, 1, 'opencart/admin/language/en-gb/total/sub_total.php'),
(139, 1, 'opencart/admin/language/en-gb/total/tax.php'),
(140, 1, 'opencart/admin/language/en-gb/total/total.php'),
(141, 1, 'opencart/admin/language/en-gb/total/voucher.php'),
(142, 1, 'opencart/admin/model'),
(143, 1, 'opencart/admin/model/dashboard'),
(144, 1, 'opencart/admin/model/dashboard/map.php'),
(145, 1, 'opencart/admin/model/fraud'),
(146, 1, 'opencart/admin/model/fraud/ip.php'),
(147, 1, 'opencart/admin/model/payment'),
(148, 1, 'opencart/admin/model/report'),
(149, 1, 'opencart/admin/model/report/activity.php'),
(150, 1, 'opencart/admin/model/report/coupon.php'),
(151, 1, 'opencart/admin/model/report/customer.php'),
(152, 1, 'opencart/admin/model/report/customer_transaction.php'),
(153, 1, 'opencart/admin/model/report/marketing.php'),
(154, 1, 'opencart/admin/model/report/product.php'),
(155, 1, 'opencart/admin/model/report/returns.php'),
(156, 1, 'opencart/admin/model/report/sale.php'),
(157, 1, 'opencart/admin/view'),
(158, 1, 'opencart/admin/view/template'),
(159, 1, 'opencart/admin/view/template/captcha'),
(160, 1, 'opencart/admin/view/template/captcha/basic.twig'),
(161, 1, 'opencart/admin/view/template/currency'),
(162, 1, 'opencart/admin/view/template/currency/ecb.twig'),
(163, 1, 'opencart/admin/view/template/currency/fixer.twig'),
(164, 1, 'opencart/admin/view/template/dashboard'),
(165, 1, 'opencart/admin/view/template/dashboard/activity_form.twig'),
(166, 1, 'opencart/admin/view/template/dashboard/activity_info.twig'),
(167, 1, 'opencart/admin/view/template/dashboard/chart_form.twig'),
(168, 1, 'opencart/admin/view/template/dashboard/chart_info.twig'),
(169, 1, 'opencart/admin/view/template/dashboard/customer_form.twig'),
(170, 1, 'opencart/admin/view/template/dashboard/customer_info.twig'),
(171, 1, 'opencart/admin/view/template/dashboard/map_form.twig'),
(172, 1, 'opencart/admin/view/template/dashboard/map_info.twig'),
(173, 1, 'opencart/admin/view/template/dashboard/online_form.twig'),
(174, 1, 'opencart/admin/view/template/dashboard/online_info.twig'),
(175, 1, 'opencart/admin/view/template/dashboard/order_form.twig'),
(176, 1, 'opencart/admin/view/template/dashboard/order_info.twig'),
(177, 1, 'opencart/admin/view/template/dashboard/recent_form.twig'),
(178, 1, 'opencart/admin/view/template/dashboard/recent_info.twig'),
(179, 1, 'opencart/admin/view/template/dashboard/sale_form.twig'),
(180, 1, 'opencart/admin/view/template/dashboard/sale_info.twig'),
(181, 1, 'opencart/admin/view/template/fraud'),
(182, 1, 'opencart/admin/view/template/fraud/ip.twig'),
(183, 1, 'opencart/admin/view/template/fraud/ip_ip.twig'),
(184, 1, 'opencart/admin/view/template/module'),
(185, 1, 'opencart/admin/view/template/module/account.twig'),
(186, 1, 'opencart/admin/view/template/module/banner.twig'),
(187, 1, 'opencart/admin/view/template/module/bestseller.twig'),
(188, 1, 'opencart/admin/view/template/module/category.twig'),
(189, 1, 'opencart/admin/view/template/module/featured.twig'),
(190, 1, 'opencart/admin/view/template/module/filter.twig'),
(191, 1, 'opencart/admin/view/template/module/html.twig'),
(192, 1, 'opencart/admin/view/template/module/information.twig'),
(193, 1, 'opencart/admin/view/template/module/latest.twig'),
(194, 1, 'opencart/admin/view/template/module/special.twig'),
(195, 1, 'opencart/admin/view/template/module/store.twig'),
(196, 1, 'opencart/admin/view/template/payment'),
(197, 1, 'opencart/admin/view/template/payment/bank_transfer.twig'),
(198, 1, 'opencart/admin/view/template/payment/cheque.twig'),
(199, 1, 'opencart/admin/view/template/payment/cod.twig'),
(200, 1, 'opencart/admin/view/template/payment/free_checkout.twig'),
(201, 1, 'opencart/admin/view/template/report'),
(202, 1, 'opencart/admin/view/template/report/customer_activity.twig'),
(203, 1, 'opencart/admin/view/template/report/customer_activity_form.twig'),
(204, 1, 'opencart/admin/view/template/report/customer_order.twig'),
(205, 1, 'opencart/admin/view/template/report/customer_order_form.twig'),
(206, 1, 'opencart/admin/view/template/report/customer_reward.twig'),
(207, 1, 'opencart/admin/view/template/report/customer_reward_form.twig'),
(208, 1, 'opencart/admin/view/template/report/customer_search.twig'),
(209, 1, 'opencart/admin/view/template/report/customer_search_form.twig'),
(210, 1, 'opencart/admin/view/template/report/customer_transaction.twig'),
(211, 1, 'opencart/admin/view/template/report/customer_transaction_form.twig'),
(212, 1, 'opencart/admin/view/template/report/marketing.twig'),
(213, 1, 'opencart/admin/view/template/report/marketing_form.twig'),
(214, 1, 'opencart/admin/view/template/report/product_purchased.twig'),
(215, 1, 'opencart/admin/view/template/report/product_purchased_form.twig'),
(216, 1, 'opencart/admin/view/template/report/product_viewed.twig'),
(217, 1, 'opencart/admin/view/template/report/product_viewed_form.twig'),
(218, 1, 'opencart/admin/view/template/report/sale_coupon.twig'),
(219, 1, 'opencart/admin/view/template/report/sale_coupon_form.twig'),
(220, 1, 'opencart/admin/view/template/report/sale_order.twig'),
(221, 1, 'opencart/admin/view/template/report/sale_order_form.twig'),
(222, 1, 'opencart/admin/view/template/report/sale_return.twig'),
(223, 1, 'opencart/admin/view/template/report/sale_return_form.twig'),
(224, 1, 'opencart/admin/view/template/report/sale_shipping.twig'),
(225, 1, 'opencart/admin/view/template/report/sale_shipping_form.twig'),
(226, 1, 'opencart/admin/view/template/report/sale_tax.twig'),
(227, 1, 'opencart/admin/view/template/report/sale_tax_form.twig'),
(228, 1, 'opencart/admin/view/template/shipping'),
(229, 1, 'opencart/admin/view/template/shipping/flat.twig'),
(230, 1, 'opencart/admin/view/template/shipping/free.twig'),
(231, 1, 'opencart/admin/view/template/shipping/item.twig'),
(232, 1, 'opencart/admin/view/template/shipping/pickup.twig'),
(233, 1, 'opencart/admin/view/template/shipping/weight.twig'),
(234, 1, 'opencart/admin/view/template/theme'),
(235, 1, 'opencart/admin/view/template/theme/basic.twig'),
(236, 1, 'opencart/admin/view/template/total'),
(237, 1, 'opencart/admin/view/template/total/coupon.twig'),
(238, 1, 'opencart/admin/view/template/total/credit.twig'),
(239, 1, 'opencart/admin/view/template/total/handling.twig'),
(240, 1, 'opencart/admin/view/template/total/low_order_fee.twig'),
(241, 1, 'opencart/admin/view/template/total/reward.twig'),
(242, 1, 'opencart/admin/view/template/total/shipping.twig'),
(243, 1, 'opencart/admin/view/template/total/sub_total.twig'),
(244, 1, 'opencart/admin/view/template/total/tax.twig'),
(245, 1, 'opencart/admin/view/template/total/total.twig'),
(246, 1, 'opencart/admin/view/template/total/voucher.twig'),
(247, 1, 'opencart/catalog'),
(248, 1, 'opencart/catalog/controller'),
(249, 1, 'opencart/catalog/controller/captcha'),
(250, 1, 'opencart/catalog/controller/captcha/basic.php'),
(251, 1, 'opencart/catalog/controller/module'),
(252, 1, 'opencart/catalog/controller/module/account.php'),
(253, 1, 'opencart/catalog/controller/module/banner.php'),
(254, 1, 'opencart/catalog/controller/module/bestseller.php'),
(255, 1, 'opencart/catalog/controller/module/category.php'),
(256, 1, 'opencart/catalog/controller/module/featured.php'),
(257, 1, 'opencart/catalog/controller/module/filter.php'),
(258, 1, 'opencart/catalog/controller/module/html.php'),
(259, 1, 'opencart/catalog/controller/module/information.php'),
(260, 1, 'opencart/catalog/controller/module/latest.php'),
(261, 1, 'opencart/catalog/controller/module/special.php'),
(262, 1, 'opencart/catalog/controller/module/store.php'),
(263, 1, 'opencart/catalog/controller/payment'),
(264, 1, 'opencart/catalog/controller/payment/bank_transfer.php'),
(265, 1, 'opencart/catalog/controller/payment/cheque.php'),
(266, 1, 'opencart/catalog/controller/payment/cod.php'),
(267, 1, 'opencart/catalog/controller/payment/free_checkout.php'),
(268, 1, 'opencart/catalog/controller/total'),
(269, 1, 'opencart/catalog/controller/total/coupon.php'),
(270, 1, 'opencart/catalog/controller/total/reward.php'),
(271, 1, 'opencart/catalog/controller/total/shipping.php'),
(272, 1, 'opencart/catalog/controller/total/voucher.php'),
(273, 1, 'opencart/catalog/language'),
(274, 1, 'opencart/catalog/language/en-gb'),
(275, 1, 'opencart/catalog/language/en-gb/captcha'),
(276, 1, 'opencart/catalog/language/en-gb/captcha/basic.php'),
(277, 1, 'opencart/catalog/language/en-gb/module'),
(278, 1, 'opencart/catalog/language/en-gb/module/account.php'),
(279, 1, 'opencart/catalog/language/en-gb/module/bestseller.php'),
(280, 1, 'opencart/catalog/language/en-gb/module/category.php'),
(281, 1, 'opencart/catalog/language/en-gb/module/featured.php'),
(282, 1, 'opencart/catalog/language/en-gb/module/filter.php'),
(283, 1, 'opencart/catalog/language/en-gb/module/information.php'),
(284, 1, 'opencart/catalog/language/en-gb/module/latest.php'),
(285, 1, 'opencart/catalog/language/en-gb/module/special.php'),
(286, 1, 'opencart/catalog/language/en-gb/module/store.php'),
(287, 1, 'opencart/catalog/language/en-gb/payment'),
(288, 1, 'opencart/catalog/language/en-gb/payment/bank_transfer.php'),
(289, 1, 'opencart/catalog/language/en-gb/payment/cheque.php'),
(290, 1, 'opencart/catalog/language/en-gb/payment/cod.php'),
(291, 1, 'opencart/catalog/language/en-gb/payment/free_checkout.php'),
(292, 1, 'opencart/catalog/language/en-gb/shipping'),
(293, 1, 'opencart/catalog/language/en-gb/shipping/flat.php'),
(294, 1, 'opencart/catalog/language/en-gb/shipping/free.php'),
(295, 1, 'opencart/catalog/language/en-gb/shipping/item.php'),
(296, 1, 'opencart/catalog/language/en-gb/shipping/pickup.php'),
(297, 1, 'opencart/catalog/language/en-gb/shipping/weight.php'),
(298, 1, 'opencart/catalog/language/en-gb/total'),
(299, 1, 'opencart/catalog/language/en-gb/total/coupon.php'),
(300, 1, 'opencart/catalog/language/en-gb/total/credit.php'),
(301, 1, 'opencart/catalog/language/en-gb/total/handling.php'),
(302, 1, 'opencart/catalog/language/en-gb/total/low_order_fee.php'),
(303, 1, 'opencart/catalog/language/en-gb/total/reward.php'),
(304, 1, 'opencart/catalog/language/en-gb/total/shipping.php'),
(305, 1, 'opencart/catalog/language/en-gb/total/sub_total.php'),
(306, 1, 'opencart/catalog/language/en-gb/total/total.php'),
(307, 1, 'opencart/catalog/language/en-gb/total/voucher.php'),
(308, 1, 'opencart/catalog/model'),
(309, 1, 'opencart/catalog/model/fraud'),
(310, 1, 'opencart/catalog/model/fraud/ip.php'),
(311, 1, 'opencart/catalog/model/payment'),
(312, 1, 'opencart/catalog/model/payment/bank_transfer.php'),
(313, 1, 'opencart/catalog/model/payment/cheque.php'),
(314, 1, 'opencart/catalog/model/payment/cod.php'),
(315, 1, 'opencart/catalog/model/payment/free_checkout.php'),
(316, 1, 'opencart/catalog/model/shipping'),
(317, 1, 'opencart/catalog/model/shipping/flat.php'),
(318, 1, 'opencart/catalog/model/shipping/free.php'),
(319, 1, 'opencart/catalog/model/shipping/item.php'),
(320, 1, 'opencart/catalog/model/shipping/pickup.php'),
(321, 1, 'opencart/catalog/model/shipping/weight.php'),
(322, 1, 'opencart/catalog/model/total'),
(323, 1, 'opencart/catalog/model/total/coupon.php'),
(324, 1, 'opencart/catalog/model/total/credit.php'),
(325, 1, 'opencart/catalog/model/total/handling.php'),
(326, 1, 'opencart/catalog/model/total/low_order_fee.php'),
(327, 1, 'opencart/catalog/model/total/reward.php'),
(328, 1, 'opencart/catalog/model/total/shipping.php'),
(329, 1, 'opencart/catalog/model/total/sub_total.php'),
(330, 1, 'opencart/catalog/model/total/tax.php'),
(331, 1, 'opencart/catalog/model/total/total.php'),
(332, 1, 'opencart/catalog/model/total/voucher.php'),
(333, 1, 'opencart/catalog/view'),
(334, 1, 'opencart/catalog/view/template'),
(335, 1, 'opencart/catalog/view/template/captcha'),
(336, 1, 'opencart/catalog/view/template/captcha/basic.twig'),
(337, 1, 'opencart/catalog/view/template/module'),
(338, 1, 'opencart/catalog/view/template/module/account.twig'),
(339, 1, 'opencart/catalog/view/template/module/banner.twig'),
(340, 1, 'opencart/catalog/view/template/module/bestseller.twig'),
(341, 1, 'opencart/catalog/view/template/module/category.twig'),
(342, 1, 'opencart/catalog/view/template/module/featured.twig'),
(343, 1, 'opencart/catalog/view/template/module/filter.twig'),
(344, 1, 'opencart/catalog/view/template/module/html.twig'),
(345, 1, 'opencart/catalog/view/template/module/information.twig'),
(346, 1, 'opencart/catalog/view/template/module/latest.twig'),
(347, 1, 'opencart/catalog/view/template/module/special.twig'),
(348, 1, 'opencart/catalog/view/template/module/store.twig'),
(349, 1, 'opencart/catalog/view/template/payment'),
(350, 1, 'opencart/catalog/view/template/payment/bank_transfer.twig'),
(351, 1, 'opencart/catalog/view/template/payment/cheque.twig'),
(352, 1, 'opencart/catalog/view/template/payment/cod.twig'),
(353, 1, 'opencart/catalog/view/template/payment/free_checkout.twig'),
(354, 1, 'opencart/catalog/view/template/total'),
(355, 1, 'opencart/catalog/view/template/total/coupon.twig'),
(356, 1, 'opencart/catalog/view/template/total/reward.twig'),
(357, 1, 'opencart/catalog/view/template/total/shipping.twig'),
(358, 1, 'opencart/catalog/view/template/total/voucher.twig'),
(359, 1, 'opencart/install.json'),
(771, 17, 'wbcountdown'),
(772, 17, 'wbcountdown/admin'),
(773, 17, 'wbcountdown/admin/controller'),
(774, 17, 'wbcountdown/admin/controller/module'),
(775, 17, 'wbcountdown/admin/controller/module/wbcountdown.php'),
(776, 17, 'wbcountdown/admin/language'),
(777, 17, 'wbcountdown/admin/language/en-gb'),
(778, 17, 'wbcountdown/admin/language/en-gb/module'),
(779, 17, 'wbcountdown/admin/language/en-gb/module/wbcountdown.php'),
(780, 17, 'wbcountdown/admin/view'),
(781, 17, 'wbcountdown/admin/view/template'),
(782, 17, 'wbcountdown/admin/view/template/module'),
(783, 17, 'wbcountdown/admin/view/template/module/wbcountdown.twig'),
(784, 17, 'wbcountdown/catalog'),
(785, 17, 'wbcountdown/catalog/controller'),
(786, 17, 'wbcountdown/catalog/controller/module'),
(787, 17, 'wbcountdown/catalog/controller/module/wbcountdown.php'),
(788, 17, 'wbcountdown/catalog/language'),
(789, 17, 'wbcountdown/catalog/language/en-gb'),
(790, 17, 'wbcountdown/catalog/language/en-gb/module'),
(791, 17, 'wbcountdown/catalog/language/en-gb/module/wbcountdown.php'),
(792, 17, 'wbcountdown/catalog/model'),
(793, 17, 'wbcountdown/catalog/model/module'),
(794, 17, 'wbcountdown/catalog/model/module/wbcountdown.php'),
(795, 17, 'wbcountdown/catalog/view'),
(796, 17, 'wbcountdown/catalog/view/countdown'),
(797, 17, 'wbcountdown/catalog/view/countdown/jquery.countdown.css'),
(798, 17, 'wbcountdown/catalog/view/countdown/jquery.countdown.js'),
(799, 17, 'wbcountdown/catalog/view/countdown/jquery.countdown.min.js'),
(800, 17, 'wbcountdown/catalog/view/countdown/jquery.countdown.min.map'),
(801, 17, 'wbcountdown/catalog/view/countdown/jquery.plugin.js'),
(802, 17, 'wbcountdown/catalog/view/countdown/jquery.plugin.min.js'),
(803, 17, 'wbcountdown/catalog/view/countdown/jquery.plugin.min.map'),
(804, 17, 'wbcountdown/catalog/view/template'),
(805, 17, 'wbcountdown/catalog/view/template/module'),
(806, 17, 'wbcountdown/catalog/view/template/module/wbcountdown.twig'),
(807, 17, 'wbcountdown/install.json'),
(948, 25, 'wdimgslider'),
(949, 25, 'wdimgslider/admin'),
(950, 25, 'wdimgslider/admin/controller'),
(951, 25, 'wdimgslider/admin/controller/module'),
(952, 25, 'wdimgslider/admin/controller/module/wdimgslider.php'),
(953, 25, 'wdimgslider/admin/language'),
(954, 25, 'wdimgslider/admin/language/en-gb'),
(955, 25, 'wdimgslider/admin/language/en-gb/module'),
(956, 25, 'wdimgslider/admin/language/en-gb/module/wdimgslider.php'),
(957, 25, 'wdimgslider/admin/view'),
(958, 25, 'wdimgslider/admin/view/template'),
(959, 25, 'wdimgslider/admin/view/template/module'),
(960, 25, 'wdimgslider/admin/view/template/module/wdimgslider.twig'),
(961, 25, 'wdimgslider/catalog'),
(962, 25, 'wdimgslider/catalog/controller'),
(963, 25, 'wdimgslider/catalog/controller/module'),
(964, 25, 'wdimgslider/catalog/controller/module/wdimgslider.php'),
(965, 25, 'wdimgslider/catalog/view'),
(966, 25, 'wdimgslider/catalog/view/template'),
(967, 25, 'wdimgslider/catalog/view/template/module'),
(968, 25, 'wdimgslider/catalog/view/template/module/wdimgslider.twig'),
(969, 25, 'wdimgslider/install.json'),
(970, 26, 'wdonsale'),
(971, 26, 'wdonsale/admin'),
(972, 26, 'wdonsale/admin/controller'),
(973, 26, 'wdonsale/admin/controller/module'),
(974, 26, 'wdonsale/admin/controller/module/wdonsale.php'),
(975, 26, 'wdonsale/admin/language'),
(976, 26, 'wdonsale/admin/language/en-gb'),
(977, 26, 'wdonsale/admin/language/en-gb/module'),
(978, 26, 'wdonsale/admin/language/en-gb/module/wdonsale.php'),
(979, 26, 'wdonsale/admin/view'),
(980, 26, 'wdonsale/admin/view/template'),
(981, 26, 'wdonsale/admin/view/template/module'),
(982, 26, 'wdonsale/admin/view/template/module/wdonsale.twig'),
(983, 26, 'wdonsale/catalog'),
(984, 26, 'wdonsale/catalog/controller'),
(985, 26, 'wdonsale/catalog/controller/module'),
(986, 26, 'wdonsale/catalog/controller/module/wdonsale.php'),
(987, 26, 'wdonsale/catalog/language'),
(988, 26, 'wdonsale/catalog/language/en-gb'),
(989, 26, 'wdonsale/catalog/language/en-gb/module'),
(990, 26, 'wdonsale/catalog/language/en-gb/module/wdonsale.php'),
(991, 26, 'wdonsale/catalog/view'),
(992, 26, 'wdonsale/catalog/view/template'),
(993, 26, 'wdonsale/catalog/view/template/module'),
(994, 26, 'wdonsale/catalog/view/template/module/wdonsale.twig'),
(995, 26, 'wdonsale/install.json'),
(996, 27, 'wdcategory'),
(997, 27, 'wdcategory/admin'),
(998, 27, 'wdcategory/admin/controller'),
(999, 27, 'wdcategory/admin/controller/module'),
(1000, 27, 'wdcategory/admin/controller/module/wdcategory.php'),
(1001, 27, 'wdcategory/admin/language'),
(1002, 27, 'wdcategory/admin/language/en-gb'),
(1003, 27, 'wdcategory/admin/language/en-gb/module'),
(1004, 27, 'wdcategory/admin/language/en-gb/module/wdcategory.php'),
(1005, 27, 'wdcategory/admin/language/en-gb/wdcategory.php'),
(1006, 27, 'wdcategory/admin/view'),
(1007, 27, 'wdcategory/admin/view/template'),
(1008, 27, 'wdcategory/admin/view/template/module'),
(1009, 27, 'wdcategory/admin/view/template/module/wdcategory.twig'),
(1010, 27, 'wdcategory/catalog'),
(1011, 27, 'wdcategory/catalog/controller'),
(1012, 27, 'wdcategory/catalog/controller/module'),
(1013, 27, 'wdcategory/catalog/controller/module/wdcategory.php'),
(1014, 27, 'wdcategory/catalog/language'),
(1015, 27, 'wdcategory/catalog/language/en-gb'),
(1016, 27, 'wdcategory/catalog/language/en-gb/module'),
(1017, 27, 'wdcategory/catalog/language/en-gb/module/wdcategory.php'),
(1018, 27, 'wdcategory/catalog/view'),
(1019, 27, 'wdcategory/catalog/view/template'),
(1020, 27, 'wdcategory/catalog/view/template/module'),
(1021, 27, 'wdcategory/catalog/view/template/module/wdcategory.twig'),
(1022, 27, 'wdcategory/install.json'),
(1023, 28, 'wdcenterbanner'),
(1024, 28, 'wdcenterbanner/admin'),
(1025, 28, 'wdcenterbanner/admin/controller'),
(1026, 28, 'wdcenterbanner/admin/controller/module'),
(1027, 28, 'wdcenterbanner/admin/controller/module/wdcenterbanner.php'),
(1028, 28, 'wdcenterbanner/admin/language'),
(1029, 28, 'wdcenterbanner/admin/language/en-gb'),
(1030, 28, 'wdcenterbanner/admin/language/en-gb/module'),
(1031, 28, 'wdcenterbanner/admin/language/en-gb/module/wdcenterbanner.php'),
(1032, 28, 'wdcenterbanner/admin/view'),
(1033, 28, 'wdcenterbanner/admin/view/template'),
(1034, 28, 'wdcenterbanner/admin/view/template/module'),
(1035, 28, 'wdcenterbanner/admin/view/template/module/wdcenterbanner.twig'),
(1036, 28, 'wdcenterbanner/catalog'),
(1037, 28, 'wdcenterbanner/catalog/controller'),
(1038, 28, 'wdcenterbanner/catalog/controller/module'),
(1039, 28, 'wdcenterbanner/catalog/controller/module/wdcenterbanner.php'),
(1040, 28, 'wdcenterbanner/catalog/view'),
(1041, 28, 'wdcenterbanner/catalog/view/template'),
(1042, 28, 'wdcenterbanner/catalog/view/template/module'),
(1043, 28, 'wdcenterbanner/catalog/view/template/module/wdcenterbanner.twig'),
(1044, 28, 'wdcenterbanner/install.json'),
(1045, 29, 'wdofferbanner'),
(1046, 29, 'wdofferbanner/admin'),
(1047, 29, 'wdofferbanner/admin/controller'),
(1048, 29, 'wdofferbanner/admin/controller/module'),
(1049, 29, 'wdofferbanner/admin/controller/module/wdofferbanner.php'),
(1050, 29, 'wdofferbanner/admin/language'),
(1051, 29, 'wdofferbanner/admin/language/en-gb'),
(1052, 29, 'wdofferbanner/admin/language/en-gb/module'),
(1053, 29, 'wdofferbanner/admin/language/en-gb/module/wdofferbanner.php'),
(1054, 29, 'wdofferbanner/admin/view'),
(1055, 29, 'wdofferbanner/admin/view/template'),
(1056, 29, 'wdofferbanner/admin/view/template/module'),
(1057, 29, 'wdofferbanner/admin/view/template/module/wdofferbanner.twig'),
(1058, 29, 'wdofferbanner/catalog'),
(1059, 29, 'wdofferbanner/catalog/controller'),
(1060, 29, 'wdofferbanner/catalog/controller/module'),
(1061, 29, 'wdofferbanner/catalog/controller/module/wdofferbanner.php'),
(1062, 29, 'wdofferbanner/catalog/view'),
(1063, 29, 'wdofferbanner/catalog/view/template'),
(1064, 29, 'wdofferbanner/catalog/view/template/module'),
(1065, 29, 'wdofferbanner/catalog/view/template/module/wdofferbanner.twig'),
(1066, 29, 'wdofferbanner/install.json'),
(1067, 30, 'wdtop'),
(1068, 30, 'wdtop/admin'),
(1069, 30, 'wdtop/admin/controller'),
(1070, 30, 'wdtop/admin/controller/module'),
(1071, 30, 'wdtop/admin/controller/module/wdtop.php'),
(1072, 30, 'wdtop/admin/language'),
(1073, 30, 'wdtop/admin/language/en-gb'),
(1074, 30, 'wdtop/admin/language/en-gb/module'),
(1075, 30, 'wdtop/admin/language/en-gb/module/wdtop.php'),
(1076, 30, 'wdtop/admin/view'),
(1077, 30, 'wdtop/admin/view/template'),
(1078, 30, 'wdtop/admin/view/template/module'),
(1079, 30, 'wdtop/admin/view/template/module/wdtop.twig'),
(1080, 30, 'wdtop/catalog'),
(1081, 30, 'wdtop/catalog/controller'),
(1082, 30, 'wdtop/catalog/controller/module'),
(1083, 30, 'wdtop/catalog/controller/module/wdtop.php'),
(1084, 30, 'wdtop/catalog/language'),
(1085, 30, 'wdtop/catalog/language/en-gb'),
(1086, 30, 'wdtop/catalog/language/en-gb/module'),
(1087, 30, 'wdtop/catalog/language/en-gb/module/wdtop.php'),
(1088, 30, 'wdtop/catalog/view'),
(1089, 30, 'wdtop/catalog/view/template'),
(1090, 30, 'wdtop/catalog/view/template/module'),
(1091, 30, 'wdtop/catalog/view/template/module/wdtop.twig'),
(1092, 30, 'wdtop/install.json'),
(1093, 31, 'blogger'),
(1094, 31, 'blogger/admin'),
(1095, 31, 'blogger/admin/controller'),
(1096, 31, 'blogger/admin/controller/module'),
(1097, 31, 'blogger/admin/controller/module/blogger.php'),
(1098, 31, 'blogger/admin/language'),
(1099, 31, 'blogger/admin/language/en-gb'),
(1100, 31, 'blogger/admin/language/en-gb/module'),
(1101, 31, 'blogger/admin/language/en-gb/module/blogger.php'),
(1102, 31, 'blogger/admin/model'),
(1103, 31, 'blogger/admin/model/workdo'),
(1104, 31, 'blogger/admin/model/workdo/blogger.php'),
(1105, 31, 'blogger/admin/view'),
(1106, 31, 'blogger/admin/view/template'),
(1107, 31, 'blogger/admin/view/template/module'),
(1108, 31, 'blogger/admin/view/template/module/blogger.twig'),
(1109, 31, 'blogger/admin/view/template/module/blogger'),
(1110, 31, 'blogger/admin/view/template/module/blogger/comments.twig'),
(1111, 31, 'blogger/admin/view/template/module/blogger/form.twig'),
(1112, 31, 'blogger/admin/view/template/module/blogger/list.twig'),
(1113, 31, 'blogger/admin/view/template/module/blogger/view_comment.twig'),
(1114, 31, 'blogger/catalog'),
(1115, 31, 'blogger/catalog/controller'),
(1116, 31, 'blogger/catalog/controller/information'),
(1117, 31, 'blogger/catalog/controller/information/blogger.php'),
(1118, 31, 'blogger/catalog/controller/module'),
(1119, 31, 'blogger/catalog/controller/module/blogger.php'),
(1120, 31, 'blogger/catalog/language'),
(1121, 31, 'blogger/catalog/language/ar'),
(1122, 31, 'blogger/catalog/language/ar/information'),
(1123, 31, 'blogger/catalog/language/ar/information/blogger.php'),
(1124, 31, 'blogger/catalog/language/ar/module'),
(1125, 31, 'blogger/catalog/language/ar/module/blogger.php'),
(1126, 31, 'blogger/catalog/language/en-gb'),
(1127, 31, 'blogger/catalog/language/en-gb/information'),
(1128, 31, 'blogger/catalog/language/en-gb/information/blogger.php'),
(1129, 31, 'blogger/catalog/language/en-gb/module'),
(1130, 31, 'blogger/catalog/language/en-gb/module/blogger.php'),
(1131, 31, 'blogger/catalog/model'),
(1132, 31, 'blogger/catalog/model/module'),
(1133, 31, 'blogger/catalog/model/module/blogger.php'),
(1134, 31, 'blogger/catalog/model/module/workdo'),
(1135, 31, 'blogger/catalog/model/module/workdo/blogger.php'),
(1136, 31, 'blogger/catalog/model/workdo'),
(1137, 31, 'blogger/catalog/model/workdo/blogger.php'),
(1138, 31, 'blogger/catalog/view'),
(1139, 31, 'blogger/catalog/view/template'),
(1140, 31, 'blogger/catalog/view/template/information'),
(1141, 31, 'blogger/catalog/view/template/information/blogger.twig'),
(1142, 31, 'blogger/catalog/view/template/information/blogger_blogs.twig'),
(1143, 31, 'blogger/catalog/view/template/module'),
(1144, 31, 'blogger/catalog/view/template/module/blogger.twig'),
(1145, 31, 'blogger/catalog/view/workdo'),
(1146, 31, 'blogger/catalog/view/workdo/blog'),
(1147, 31, 'blogger/catalog/view/workdo/blog/lightbox.css'),
(1148, 31, 'blogger/catalog/view/workdo/blog/lightbox-2.6.min.js'),
(1149, 31, 'blogger/install.json'),
(1150, 32, 'wdselected'),
(1151, 32, 'wdselected/admin'),
(1152, 32, 'wdselected/admin/controller'),
(1153, 32, 'wdselected/admin/controller/module'),
(1154, 32, 'wdselected/admin/controller/module/wdselected.php'),
(1155, 32, 'wdselected/admin/language'),
(1156, 32, 'wdselected/admin/language/en-gb'),
(1157, 32, 'wdselected/admin/language/en-gb/module'),
(1158, 32, 'wdselected/admin/language/en-gb/module/wdselected.php'),
(1159, 32, 'wdselected/admin/view'),
(1160, 32, 'wdselected/admin/view/template'),
(1161, 32, 'wdselected/admin/view/template/module'),
(1162, 32, 'wdselected/admin/view/template/module/wdselected.twig'),
(1163, 32, 'wdselected/catalog'),
(1164, 32, 'wdselected/catalog/controller'),
(1165, 32, 'wdselected/catalog/controller/module'),
(1166, 32, 'wdselected/catalog/controller/module/wdselected.php'),
(1167, 32, 'wdselected/catalog/language'),
(1168, 32, 'wdselected/catalog/language/en-gb'),
(1169, 32, 'wdselected/catalog/language/en-gb/module'),
(1170, 32, 'wdselected/catalog/language/en-gb/module/wdselected.php'),
(1171, 32, 'wdselected/catalog/view'),
(1172, 32, 'wdselected/catalog/view/template'),
(1173, 32, 'wdselected/catalog/view/template/module'),
(1174, 32, 'wdselected/catalog/view/template/module/wdselected.twig'),
(1175, 32, 'wdselected/install.json'),
(1198, 34, 'wdrightbanner'),
(1199, 34, 'wdrightbanner/admin'),
(1200, 34, 'wdrightbanner/admin/controller'),
(1201, 34, 'wdrightbanner/admin/controller/module'),
(1202, 34, 'wdrightbanner/admin/controller/module/wdrightbanner.php'),
(1203, 34, 'wdrightbanner/admin/language'),
(1204, 34, 'wdrightbanner/admin/language/en-gb'),
(1205, 34, 'wdrightbanner/admin/language/en-gb/module'),
(1206, 34, 'wdrightbanner/admin/language/en-gb/module/wdrightbanner.php'),
(1207, 34, 'wdrightbanner/admin/view'),
(1208, 34, 'wdrightbanner/admin/view/template'),
(1209, 34, 'wdrightbanner/admin/view/template/module'),
(1210, 34, 'wdrightbanner/admin/view/template/module/wdrightbanner.twig'),
(1211, 34, 'wdrightbanner/catalog'),
(1212, 34, 'wdrightbanner/catalog/controller'),
(1213, 34, 'wdrightbanner/catalog/controller/module'),
(1214, 34, 'wdrightbanner/catalog/controller/module/wdrightbanner.php'),
(1215, 34, 'wdrightbanner/catalog/view'),
(1216, 34, 'wdrightbanner/catalog/view/template'),
(1217, 34, 'wdrightbanner/catalog/view/template/module'),
(1218, 34, 'wdrightbanner/catalog/view/template/module/wdrightbanner.twig'),
(1219, 34, 'wdrightbanner/install.json'),
(1220, 35, 'wdlogoslider'),
(1221, 35, 'wdlogoslider/admin'),
(1222, 35, 'wdlogoslider/admin/controller'),
(1223, 35, 'wdlogoslider/admin/controller/module'),
(1224, 35, 'wdlogoslider/admin/controller/module/wdlogoslider.php'),
(1225, 35, 'wdlogoslider/admin/language'),
(1226, 35, 'wdlogoslider/admin/language/en-gb'),
(1227, 35, 'wdlogoslider/admin/language/en-gb/module'),
(1228, 35, 'wdlogoslider/admin/language/en-gb/module/wdlogoslider.php'),
(1229, 35, 'wdlogoslider/admin/view'),
(1230, 35, 'wdlogoslider/admin/view/template'),
(1231, 35, 'wdlogoslider/admin/view/template/module'),
(1232, 35, 'wdlogoslider/admin/view/template/module/wdlogoslider.twig'),
(1233, 35, 'wdlogoslider/catalog'),
(1234, 35, 'wdlogoslider/catalog/controller'),
(1235, 35, 'wdlogoslider/catalog/controller/module'),
(1236, 35, 'wdlogoslider/catalog/controller/module/wdlogoslider.php'),
(1237, 35, 'wdlogoslider/catalog/view'),
(1238, 35, 'wdlogoslider/catalog/view/template'),
(1239, 35, 'wdlogoslider/catalog/view/template/module'),
(1240, 35, 'wdlogoslider/catalog/view/template/module/wdlogoslider.twig'),
(1241, 35, 'wdlogoslider/install.json'),
(1242, 36, 'workdonewsletter'),
(1243, 36, 'workdonewsletter/admin'),
(1244, 36, 'workdonewsletter/admin/controller'),
(1245, 36, 'workdonewsletter/admin/controller/module'),
(1246, 36, 'workdonewsletter/admin/controller/module/workdonewsletter.php'),
(1247, 36, 'workdonewsletter/admin/language'),
(1248, 36, 'workdonewsletter/admin/language/en-gb'),
(1249, 36, 'workdonewsletter/admin/language/en-gb/module'),
(1250, 36, 'workdonewsletter/admin/language/en-gb/module/workdonewsletter.php'),
(1251, 36, 'workdonewsletter/admin/model'),
(1252, 36, 'workdonewsletter/admin/model/workdonewsletter'),
(1253, 36, 'workdonewsletter/admin/model/workdonewsletter/draft.php'),
(1254, 36, 'workdonewsletter/admin/model/workdonewsletter/newsletter.php'),
(1255, 36, 'workdonewsletter/admin/model/workdonewsletter/product.php'),
(1256, 36, 'workdonewsletter/admin/model/workdonewsletter/subscribe.php'),
(1257, 36, 'workdonewsletter/admin/model/workdonewsletter/template.php'),
(1258, 36, 'workdonewsletter/admin/view'),
(1259, 36, 'workdonewsletter/admin/view/stylesheet'),
(1260, 36, 'workdonewsletter/admin/view/stylesheet/workdonewsletter.css'),
(1261, 36, 'workdonewsletter/admin/view/template'),
(1262, 36, 'workdonewsletter/admin/view/template/module'),
(1263, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter'),
(1264, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/action_bar.twig'),
(1265, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/config.twig'),
(1266, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/contact.twig'),
(1267, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/draft_contact.twig'),
(1268, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/draft_newsletter.twig'),
(1269, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/form_newsletter.twig'),
(1270, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/form_template.twig'),
(1271, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/frontend_modules.twig'),
(1272, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/panel.twig'),
(1273, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/subscribes.twig'),
(1274, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/templates.twig'),
(1275, 36, 'workdonewsletter/admin/view/template/module/workdonewsletter/toolbar.twig'),
(1276, 36, 'workdonewsletter/catalog'),
(1277, 36, 'workdonewsletter/catalog/controller'),
(1278, 36, 'workdonewsletter/catalog/controller/module'),
(1279, 36, 'workdonewsletter/catalog/controller/module/workdonewsletter.php'),
(1280, 36, 'workdonewsletter/catalog/language'),
(1281, 36, 'workdonewsletter/catalog/language/ar'),
(1282, 36, 'workdonewsletter/catalog/language/ar/module'),
(1283, 36, 'workdonewsletter/catalog/language/ar/module/webinewsletter.php'),
(1284, 36, 'workdonewsletter/catalog/language/en-gb'),
(1285, 36, 'workdonewsletter/catalog/language/en-gb/module'),
(1286, 36, 'workdonewsletter/catalog/language/en-gb/module/workdonewsletter.php'),
(1287, 36, 'workdonewsletter/catalog/model'),
(1288, 36, 'workdonewsletter/catalog/model/workdonewsletter'),
(1289, 36, 'workdonewsletter/catalog/model/workdonewsletter/subscribe.php'),
(1290, 36, 'workdonewsletter/catalog/view'),
(1291, 36, 'workdonewsletter/catalog/view/jquery'),
(1292, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker'),
(1293, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/bootstrap-datetimepicker.min.css'),
(1294, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/bootstrap-datetimepicker.min.js'),
(1295, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/bower.json'),
(1296, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/daterangepicker.css'),
(1297, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/daterangepicker.js'),
(1298, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/demo.html'),
(1299, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/drp.png'),
(1300, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example'),
(1301, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/amd'),
(1302, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/amd/index.html'),
(1303, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/amd/main.js'),
(1304, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/amd/require.js'),
(1305, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/browserify'),
(1306, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/browserify/bundle.js'),
(1307, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/browserify/index.html'),
(1308, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/browserify/main.js'),
(1309, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/example/browserify/README.md'),
(1310, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment.min.js'),
(1311, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment'),
(1312, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment/locales.js'),
(1313, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment/locales.min.js'),
(1314, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment/moment.min.js'),
(1315, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment/moment-with-locales.js'),
(1316, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment/moment-with-locales.min.js'),
(1317, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment/tests.js'),
(1318, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment-with-locales.min.js'),
(1319, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/moment-with-locales.min.js.map'),
(1320, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/package.js'),
(1321, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/package.json'),
(1322, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/README.md'),
(1323, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/website'),
(1324, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/website/index.html'),
(1325, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/website/website.css'),
(1326, 36, 'workdonewsletter/catalog/view/jquery/datetimepicker/website/website.js'),
(1327, 36, 'workdonewsletter/catalog/view/jquery/jquery-2.1.1.min.js'),
(1328, 36, 'workdonewsletter/catalog/view/jquery/jquery-2.1.1.min.map'),
(1329, 36, 'workdonewsletter/catalog/view/jquery/jquery-3.3.1.min.js'),
(1330, 36, 'workdonewsletter/catalog/view/jquery/jquery-3.6.0.min.js'),
(1331, 36, 'workdonewsletter/catalog/view/jquery/magnific'),
(1332, 36, 'workdonewsletter/catalog/view/jquery/magnific/jquery.magnific-popup.min.js'),
(1333, 36, 'workdonewsletter/catalog/view/jquery/magnific/magnific-popup.css'),
(1334, 36, 'workdonewsletter/catalog/view/jquery/owl.carousel.css'),
(1335, 36, 'workdonewsletter/catalog/view/jquery/owl.carousel.js'),
(1336, 36, 'workdonewsletter/catalog/view/jquery/owl.carousel.min.js'),
(1337, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel'),
(1338, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/AjaxLoader.gif'),
(1339, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/css'),
(1340, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/css/owl.carousel.css'),
(1341, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/css/owl.theme.css'),
(1342, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/css/owl.transitions.css'),
(1343, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/grabbing.png'),
(1344, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/owl.carousel.js'),
(1345, 36, 'workdonewsletter/catalog/view/jquery/owl-carousel/owl.carousel.min.js'),
(1346, 36, 'workdonewsletter/catalog/view/jquery/swiper'),
(1347, 36, 'workdonewsletter/catalog/view/jquery/swiper/css'),
(1348, 36, 'workdonewsletter/catalog/view/jquery/swiper/css/css'),
(1349, 36, 'workdonewsletter/catalog/view/jquery/swiper/css/css/owl.carousel.css'),
(1350, 36, 'workdonewsletter/catalog/view/jquery/swiper/css/css/owl.theme.css'),
(1351, 36, 'workdonewsletter/catalog/view/jquery/swiper/css/css/owl.transitions.css'),
(1352, 36, 'workdonewsletter/catalog/view/jquery/swiper/css/opencart.css'),
(1353, 36, 'workdonewsletter/catalog/view/jquery/swiper/css/swiper.css'),
(1354, 36, 'workdonewsletter/catalog/view/jquery/swiper/css/swiper.min.css'),
(1355, 36, 'workdonewsletter/catalog/view/jquery/swiper/js'),
(1356, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/AjaxLoader.gif'),
(1357, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/grabbing.png'),
(1358, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/maps'),
(1359, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/maps/swiper.jquery.min.js.map'),
(1360, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/maps/swiper.jquery.umd.min.js.map'),
(1361, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/maps/swiper.min.js.map'),
(1362, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/owl.carousel.js'),
(1363, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/owl.carousel.min.js'),
(1364, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/swiper.jquery.js'),
(1365, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/swiper.jquery.min.js'),
(1366, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/swiper.jquery.umd.js'),
(1367, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/swiper.jquery.umd.min.js'),
(1368, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/swiper.js'),
(1369, 36, 'workdonewsletter/catalog/view/jquery/swiper/js/swiper.min.js'),
(1370, 36, 'workdonewsletter/catalog/view/jquery/workdonewsletter.js'),
(1371, 36, 'workdonewsletter/catalog/view/jquery/workdoquickview.css'),
(1372, 36, 'workdonewsletter/catalog/view/jquery/workdoquickview.js'),
(1373, 36, 'workdonewsletter/catalog/view/template'),
(1374, 36, 'workdonewsletter/catalog/view/template/module'),
(1375, 36, 'workdonewsletter/catalog/view/template/module/workdonewsletter'),
(1376, 36, 'workdonewsletter/catalog/view/template/module/workdonewsletter/default.twig'),
(1377, 36, 'workdonewsletter/catalog/view/template/module/workdonewsletter/flybot.twig'),
(1378, 36, 'workdonewsletter/catalog/view/template/module/workdonewsletter/popup.twig'),
(1379, 36, 'workdonewsletter/install.json'),
(1380, 37, 'wdcategorytab'),
(1381, 37, 'wdcategorytab/admin'),
(1382, 37, 'wdcategorytab/admin/controller'),
(1383, 37, 'wdcategorytab/admin/controller/module'),
(1384, 37, 'wdcategorytab/admin/controller/module/wdcategorytab.php'),
(1385, 37, 'wdcategorytab/admin/language'),
(1386, 37, 'wdcategorytab/admin/language/en-gb'),
(1387, 37, 'wdcategorytab/admin/language/en-gb/module'),
(1388, 37, 'wdcategorytab/admin/language/en-gb/module/wdcategorytab.php'),
(1389, 37, 'wdcategorytab/admin/view'),
(1390, 37, 'wdcategorytab/admin/view/template'),
(1391, 37, 'wdcategorytab/admin/view/template/module'),
(1392, 37, 'wdcategorytab/admin/view/template/module/wdcategorytab.twig'),
(1393, 37, 'wdcategorytab/catalog'),
(1394, 37, 'wdcategorytab/catalog/controller'),
(1395, 37, 'wdcategorytab/catalog/controller/module'),
(1396, 37, 'wdcategorytab/catalog/controller/module/wdcategorytab.php'),
(1397, 37, 'wdcategorytab/catalog/language'),
(1398, 37, 'wdcategorytab/catalog/language/en-gb'),
(1399, 37, 'wdcategorytab/catalog/language/en-gb/module'),
(1400, 37, 'wdcategorytab/catalog/language/en-gb/module/wdcategorytab.php'),
(1401, 37, 'wdcategorytab/catalog/view'),
(1402, 37, 'wdcategorytab/catalog/view/template'),
(1403, 37, 'wdcategorytab/catalog/view/template/module'),
(1404, 37, 'wdcategorytab/catalog/view/template/module/wdcategorytab.twig'),
(1405, 37, 'wdcategorytab/install.json'),
(1406, 38, 'wdspecialbanner'),
(1407, 38, 'wdspecialbanner/admin'),
(1408, 38, 'wdspecialbanner/admin/controller'),
(1409, 38, 'wdspecialbanner/admin/controller/module'),
(1410, 38, 'wdspecialbanner/admin/controller/module/wdspecialbanner.php'),
(1411, 38, 'wdspecialbanner/admin/language'),
(1412, 38, 'wdspecialbanner/admin/language/en-gb'),
(1413, 38, 'wdspecialbanner/admin/language/en-gb/module'),
(1414, 38, 'wdspecialbanner/admin/language/en-gb/module/wdspecialbanner.php'),
(1415, 38, 'wdspecialbanner/admin/view'),
(1416, 38, 'wdspecialbanner/admin/view/template'),
(1417, 38, 'wdspecialbanner/admin/view/template/module'),
(1418, 38, 'wdspecialbanner/admin/view/template/module/wdspecialbanner.twig'),
(1419, 38, 'wdspecialbanner/catalog'),
(1420, 38, 'wdspecialbanner/catalog/controller'),
(1421, 38, 'wdspecialbanner/catalog/controller/module'),
(1422, 38, 'wdspecialbanner/catalog/controller/module/wdspecialbanner.php'),
(1423, 38, 'wdspecialbanner/catalog/view'),
(1424, 38, 'wdspecialbanner/catalog/view/template'),
(1425, 38, 'wdspecialbanner/catalog/view/template/module'),
(1426, 38, 'wdspecialbanner/catalog/view/template/module/wdspecialbanner.twig'),
(1427, 38, 'wdspecialbanner/install.json'),
(1428, 39, 'wdleftbanner'),
(1429, 39, 'wdleftbanner/admin'),
(1430, 39, 'wdleftbanner/admin/controller'),
(1431, 39, 'wdleftbanner/admin/controller/module'),
(1432, 39, 'wdleftbanner/admin/controller/module/wdleftbanner.php'),
(1433, 39, 'wdleftbanner/admin/language'),
(1434, 39, 'wdleftbanner/admin/language/en-gb'),
(1435, 39, 'wdleftbanner/admin/language/en-gb/module'),
(1436, 39, 'wdleftbanner/admin/language/en-gb/module/wdleftbanner.php'),
(1437, 39, 'wdleftbanner/admin/view'),
(1438, 39, 'wdleftbanner/admin/view/template'),
(1439, 39, 'wdleftbanner/admin/view/template/module'),
(1440, 39, 'wdleftbanner/admin/view/template/module/wdleftbanner.twig'),
(1441, 39, 'wdleftbanner/catalog'),
(1442, 39, 'wdleftbanner/catalog/controller'),
(1443, 39, 'wdleftbanner/catalog/controller/module'),
(1444, 39, 'wdleftbanner/catalog/controller/module/wdleftbanner.php'),
(1445, 39, 'wdleftbanner/catalog/view'),
(1446, 39, 'wdleftbanner/catalog/view/template'),
(1447, 39, 'wdleftbanner/catalog/view/template/module'),
(1448, 39, 'wdleftbanner/catalog/view/template/module/wdleftbanner.twig'),
(1449, 39, 'wdleftbanner/install.json'),
(1472, 40, 'wbimgbanner'),
(1473, 40, 'wbimgbanner/admin'),
(1474, 40, 'wbimgbanner/admin/controller'),
(1475, 40, 'wbimgbanner/admin/controller/module'),
(1476, 40, 'wbimgbanner/admin/controller/module/wbimgbanner.php'),
(1477, 40, 'wbimgbanner/admin/language'),
(1478, 40, 'wbimgbanner/admin/language/en-gb'),
(1479, 40, 'wbimgbanner/admin/language/en-gb/module'),
(1480, 40, 'wbimgbanner/admin/language/en-gb/module/wbimgbanner.php'),
(1481, 40, 'wbimgbanner/admin/view'),
(1482, 40, 'wbimgbanner/admin/view/template'),
(1483, 40, 'wbimgbanner/admin/view/template/module');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`) VALUES
(1484, 40, 'wbimgbanner/admin/view/template/module/wbimgbanner.twig'),
(1485, 40, 'wbimgbanner/catalog'),
(1486, 40, 'wbimgbanner/catalog/controller'),
(1487, 40, 'wbimgbanner/catalog/controller/module'),
(1488, 40, 'wbimgbanner/catalog/controller/module/wbimgbanner.php'),
(1489, 40, 'wbimgbanner/catalog/view'),
(1490, 40, 'wbimgbanner/catalog/view/template'),
(1491, 40, 'wbimgbanner/catalog/view/template/module'),
(1492, 40, 'wbimgbanner/catalog/view/template/module/wbimgbanner.twig'),
(1493, 40, 'wbimgbanner/install.json'),
(1494, 41, 'wdcategorytabone'),
(1495, 41, 'wdcategorytabone/admin'),
(1496, 41, 'wdcategorytabone/admin/controller'),
(1497, 41, 'wdcategorytabone/admin/controller/module'),
(1498, 41, 'wdcategorytabone/admin/controller/module/wdcategorytabone.php'),
(1499, 41, 'wdcategorytabone/admin/language'),
(1500, 41, 'wdcategorytabone/admin/language/en-gb'),
(1501, 41, 'wdcategorytabone/admin/language/en-gb/module'),
(1502, 41, 'wdcategorytabone/admin/language/en-gb/module/wdcategorytabone.php'),
(1503, 41, 'wdcategorytabone/admin/view'),
(1504, 41, 'wdcategorytabone/admin/view/template'),
(1505, 41, 'wdcategorytabone/admin/view/template/module'),
(1506, 41, 'wdcategorytabone/admin/view/template/module/wdcategorytabone.twig'),
(1507, 41, 'wdcategorytabone/catalog'),
(1508, 41, 'wdcategorytabone/catalog/controller'),
(1509, 41, 'wdcategorytabone/catalog/controller/module'),
(1510, 41, 'wdcategorytabone/catalog/controller/module/wdcategorytabone.php'),
(1511, 41, 'wdcategorytabone/catalog/language'),
(1512, 41, 'wdcategorytabone/catalog/language/en-gb'),
(1513, 41, 'wdcategorytabone/catalog/language/en-gb/module'),
(1514, 41, 'wdcategorytabone/catalog/language/en-gb/module/wdcategorytabone.php'),
(1515, 41, 'wdcategorytabone/catalog/view'),
(1516, 41, 'wdcategorytabone/catalog/view/template'),
(1517, 41, 'wdcategorytabone/catalog/view/template/module'),
(1518, 41, 'wdcategorytabone/catalog/view/template/module/wdcategorytabone.twig'),
(1519, 41, 'wdcategorytabone/install.json');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int NOT NULL,
  `filter_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 1),
(3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int NOT NULL,
  `language_id` int NOT NULL,
  `filter_group_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 1, 1, '10kg'),
(1, 2, 1, '10kg'),
(2, 1, 1, '2kg'),
(2, 2, 1, '2kg'),
(3, 1, 1, '5kg'),
(3, 2, 1, '5kg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Size'),
(1, 2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_gdpr`
--

DROP TABLE IF EXISTS `oc_gdpr`;
CREATE TABLE IF NOT EXISTS `oc_gdpr` (
  `gdpr_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `action` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int NOT NULL,
  `bottom` int NOT NULL DEFAULT '0',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(1, 1, 3, 1),
(2, 1, 1, 1),
(3, 1, 4, 1),
(4, 1, 2, 1),
(5, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'About Us', '&lt;div class=&quot;about-us&quot;&gt;\r\n&lt;div class=&quot;row about-one&quot;&gt;\r\n&lt;h3&gt;About our shop&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;col-md-6 col-xs-12&quot;&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-6 col-xs-12&quot;&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row about-two&quot;&gt;\r\n&lt;h3 class=&quot;text-center&quot;&gt;About our shop&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;col-md-6 col-xs-12&quot;&gt;\r\n&lt;h4&gt;About our shop&lt;/h4&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem&lt;/p&gt;\r\n\r\n&lt;p&gt;Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-6 col-xs-12&quot;&gt;&lt;img alt=&quot;about&quot; class=&quot;img img-fluid center-block&quot; src=&quot;image/catalog/about/about-2.jpg&quot; /&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row about-three&quot;&gt;\r\n&lt;div class=&quot;col-md-6 col-xs-12&quot;&gt;&lt;img alt=&quot;about&quot; class=&quot;img img-fluid center-block&quot; src=&quot;image/catalog/about/about-1.jpg&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-6 col-xs-12&quot;&gt;\r\n&lt;h4&gt;About our shop&lt;/h4&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem&lt;/p&gt;\r\n\r\n&lt;p&gt;Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row about-bottom&quot;&gt;\r\n&lt;h3&gt;About our shop&lt;/h3&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,&lt;/p&gt;\r\n\r\n&lt;div class=&quot;col-md-4&quot;&gt;\r\n&lt;div class=&quot;about-sup&quot;&gt;\r\n&lt;h4&gt;Fast delivery&lt;/h4&gt;\r\n&lt;img alt=&quot;icon&quot; src=&quot;image/catalog/about/icon1.svg&quot; /&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4&quot;&gt;\r\n&lt;div class=&quot;about-sup&quot;&gt;\r\n&lt;h4&gt;Many offers&lt;/h4&gt;\r\n&lt;img alt=&quot;icon&quot; src=&quot;image/catalog/about/icon2.svg&quot; /&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4&quot;&gt;\r\n&lt;div class=&quot;about-sup&quot;&gt;\r\n&lt;h4&gt;24/7 support&lt;/h4&gt;\r\n&lt;img alt=&quot;icon&quot; src=&quot;image/catalog/about/icon3.svg&quot; /&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'About Us', '', ''),
(2, 1, 'Terms &amp; Conditions', '&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(2, 2, 'Terms &amp; Conditions', '&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;terms-info&quot;&gt;\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'Privacy Policy', '', ''),
(4, 1, 'Delivery Information', '&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'Delivery Information', '', ''),
(4, 2, 'Delivery Information', '&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;The standard Lorem Ipsum passage&lt;/h3&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/thumb-up-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;An natum nulla eruditi mei, te qui idque adipisci, nonumy graeci has ad. Cu diam dolor noluisse nec. Nam ex dicta graeco, audire nominati persequeris eu eos. Pri nibh dolor soleat cu, sanctus inermis instructior eum ei. Scripta ceteros sit ex. Et eum alia laudem delectus.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Aliquam vulputate, neque consectetur gravida egestas&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/front-bus.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Et quis dictas meliore nec, habeo lorem blandit et vis, alia veniam assueverit an duo. Facilis offendit eleifend id has. Deserunt expetenda est an, tacimates iudicabit sed eu. Cum eu periculis similique, ut meis expetenda quo.&amp;nbsp; Eam ea omnis fierent disputando.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Suspendisse vel lorem massa. Morbi&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/clipboard-paste-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Eam eu illud menandri praesent, ei regione oporteat tractatos nam. Ad mea postea voluptua constituam, aeterno aperiri facilis et nec, utroque veritus no mea. Mel quando tantas accusamus et, quo quot augue senserit ex, possim efficiendi has no. Nam at bonorum prodesset, per ne primis platonem, mel in mundi salutatus constituto. Ei vis vidit oportere, no prima eripuit ius, vim at justo legendos.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-12 col-xs-12&quot;&gt;\r\n&lt;h3 style=&quot;text-transform: none;letter-spacing: 1px;font-size: 18px;&quot;&gt;Vivamus ut diam ut risus sodales vestibulum eget varius dolor&lt;/h3&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-2 col-lg-1 col-xs-2 info-img&quot;&gt;&lt;img src=&quot;image/catalog/icon/circles-extend-button.png&quot; style=&quot;width: 35px; height: 35px; float: left;&quot; /&gt;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-sm-10 col-lg-11 col-xs-10&quot;&gt;\r\n&lt;p style=&quot;font-size:14px;&quot;&gt;Has ut stet discere nonumes, te dicam nullam vim. Eam iriure tacimates persecuti ut. No labore reprimique consequuntur pri, iusto nihil ex usu. Ne illud definitionem pri, prima fuisset phaedrum sea cu. His ea partem tempor elaboraret, nam iudico atomorum accusamus ad, quo ut quidam aliquam voluptua. Cu cotidieque dissentiunt vix, at putent tamquam scribentur usu.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'Delivery Information', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 1, 'FAQ', '&lt;div class=&quot;row&quot;&gt;\r\n&lt;h3&gt;About Shop&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;accordion&quot; id=&quot;faqone&quot;&gt;\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;headingOne&quot;&gt;&lt;button aria-controls=&quot;collapseOne&quot; aria-expanded=&quot;true&quot; class=&quot;accordion-button&quot; data-bs-target=&quot;#collapseOne&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields?&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;headingOne&quot; class=&quot;accordion-collapse collapse show&quot; data-bs-parent=&quot;#faqone&quot; id=&quot;collapseOne&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;headingTwo&quot;&gt;&lt;button aria-controls=&quot;collapseTwo&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#collapseTwo&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 2&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;headingTwo&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqone&quot; id=&quot;collapseTwo&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;headingThree&quot;&gt;&lt;button aria-controls=&quot;collapseThree&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#collapseThree&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 3&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;headingThree&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqone&quot; id=&quot;collapseThree&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;headingFour&quot;&gt;&lt;button aria-controls=&quot;collapseFour&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#collapseFour&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 4&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;headingFour&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqone&quot; id=&quot;collapseFour&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;accordion&quot; id=&quot;faqtwo&quot;&gt;\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;bheadingOne&quot;&gt;&lt;button aria-controls=&quot;bcollapseOne&quot; aria-expanded=&quot;true&quot; class=&quot;accordion-button&quot; data-bs-target=&quot;#bcollapseOne&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields?&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;bheadingOne&quot; class=&quot;accordion-collapse collapse show&quot; data-bs-parent=&quot;#faqtwo&quot; id=&quot;bcollapseOne&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;bheadingTwo&quot;&gt;&lt;button aria-controls=&quot;bcollapseTwo&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#bcollapseTwo&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 2&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;bheadingTwo&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqtwo&quot; id=&quot;bcollapseTwo&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;bheadingThree&quot;&gt;&lt;button aria-controls=&quot;bcollapseThree&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#bcollapseThree&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 3&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;bheadingThree&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqtwo&quot; id=&quot;bcollapseThree&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;bheadingFour&quot;&gt;&lt;button aria-controls=&quot;bcollapseFour&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#bcollapseFour&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 4&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;bheadingFour&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqtwo&quot; id=&quot;bcollapseFour&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;accordion&quot; id=&quot;faqthree&quot;&gt;\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;cheadingOne&quot;&gt;&lt;button aria-controls=&quot;ccollapseOne&quot; aria-expanded=&quot;true&quot; class=&quot;accordion-button&quot; data-bs-target=&quot;#ccollapseOne&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields?&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;cheadingOne&quot; class=&quot;accordion-collapse collapse show&quot; data-bs-parent=&quot;#faqthree&quot; id=&quot;ccollapseOne&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;cheadingTwo&quot;&gt;&lt;button aria-controls=&quot;ccollapseTwo&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#ccollapseTwo&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 2&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;cheadingTwo&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqthree&quot; id=&quot;ccollapseTwo&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;cheadingThree&quot;&gt;&lt;button aria-controls=&quot;ccollapseThree&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#ccollapseThree&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 3&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;cheadingThree&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqthree&quot; id=&quot;ccollapseThree&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;cheadingFour&quot;&gt;&lt;button aria-controls=&quot;ccollapseFour&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#ccollapseFour&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 4&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;cheadingFour&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqthree&quot; id=&quot;ccollapseFour&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;row&quot;&gt;\r\n&lt;h3&gt;About Shop&lt;/h3&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;accordion&quot; id=&quot;faqfive&quot;&gt;\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;eheadingOne&quot;&gt;&lt;button aria-controls=&quot;ecollapseOne&quot; aria-expanded=&quot;true&quot; class=&quot;accordion-button&quot; data-bs-target=&quot;#ecollapseOne&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields?&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;eheadingOne&quot; class=&quot;accordion-collapse collapse show&quot; data-bs-parent=&quot;#faqfive&quot; id=&quot;ecollapseOne&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;eheadingTwo&quot;&gt;&lt;button aria-controls=&quot;ecollapseTwo&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#ecollapseTwo&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 2&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;eheadingTwo&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqfive&quot; id=&quot;ecollapseTwo&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;eheadingThree&quot;&gt;&lt;button aria-controls=&quot;ecollapseThree&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#ecollapseThree&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 3&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;eheadingThree&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqfive&quot; id=&quot;ecollapseThree&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;eheadingFour&quot;&gt;&lt;button aria-controls=&quot;ecollapseFour&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#ecollapseFour&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 4&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;eheadingFour&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqfive&quot; id=&quot;ecollapseFour&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;accordion&quot; id=&quot;faqsix&quot;&gt;\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;abheadingOne&quot;&gt;&lt;button aria-controls=&quot;abcollapseOne&quot; aria-expanded=&quot;true&quot; class=&quot;accordion-button&quot; data-bs-target=&quot;#abcollapseOne&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields?&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;abheadingOne&quot; class=&quot;accordion-collapse collapse show&quot; data-bs-parent=&quot;#faqsix&quot; id=&quot;abcollapseOne&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;abheadingTwo&quot;&gt;&lt;button aria-controls=&quot;abcollapseTwo&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#abcollapseTwo&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 2&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;abheadingTwo&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqsix&quot; id=&quot;abcollapseTwo&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;abheadingThree&quot;&gt;&lt;button aria-controls=&quot;abcollapseThree&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#abcollapseThree&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 3&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;abheadingThree&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqsix&quot; id=&quot;abcollapseThree&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;abheadingFour&quot;&gt;&lt;button aria-controls=&quot;abcollapseFour&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#abcollapseFour&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 4&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;abheadingFour&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqsix&quot; id=&quot;abcollapseFour&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;col-md-4 col-xs-12&quot;&gt;\r\n&lt;div class=&quot;accordion&quot; id=&quot;faqsev&quot;&gt;\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;wcheadingOne&quot;&gt;&lt;button aria-controls=&quot;wccollapseOne&quot; aria-expanded=&quot;true&quot; class=&quot;accordion-button&quot; data-bs-target=&quot;#wccollapseOne&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields?&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;wcheadingOne&quot; class=&quot;accordion-collapse collapse show&quot; data-bs-parent=&quot;#faqsev&quot; id=&quot;wccollapseOne&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;wcheadingTwo&quot;&gt;&lt;button aria-controls=&quot;wccollapseTwo&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#wccollapseTwo&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 2&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;wcheadingTwo&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqsev&quot; id=&quot;wccollapseTwo&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;wcheadingThree&quot;&gt;&lt;button aria-controls=&quot;wccollapseThree&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#wccollapseThree&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 3&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;wcheadingThree&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqsev&quot; id=&quot;wccollapseThree&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;accordion-item&quot;&gt;\r\n&lt;h2 class=&quot;accordion-header&quot; id=&quot;wcheadingFour&quot;&gt;&lt;button aria-controls=&quot;wccollapseFour&quot; aria-expanded=&quot;false&quot; class=&quot;accordion-button collapsed&quot; data-bs-target=&quot;#wccollapseFour&quot; data-bs-toggle=&quot;collapse&quot; type=&quot;button&quot;&gt;How to setup a page with custom fields 4&lt;/button&gt;&lt;/h2&gt;\r\n\r\n&lt;div aria-labelledby=&quot;wcheadingFour&quot; class=&quot;accordion-collapse collapse&quot; data-bs-parent=&quot;#faqsev&quot; id=&quot;wccollapseFour&quot;&gt;\r\n&lt;div class=&quot;accordion-body&quot;&gt;It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It\'s also worth noting that just about any HTML can go within the, though the transition does limit overflow These classes control.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'FAQ', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `extension`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-gb,en', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int NOT NULL,
  `layout_id` int NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(5040, 6, 'opencart.account', 'column_right', 0),
(5041, 6, 'opencart.html.37', 'footer_left', 0),
(5042, 6, 'opencart.html.60', 'footer_right', 0),
(5043, 10, 'opencart.html.37', 'footer_left', 0),
(5044, 10, 'opencart.html.60', 'footer_right', 0),
(5049, 7, 'opencart.html.37', 'footer_left', 0),
(5050, 7, 'opencart.html.60', 'footer_right', 0),
(5051, 12, 'opencart.html.37', 'footer_left', 0),
(5052, 12, 'opencart.html.60', 'footer_right', 0),
(5053, 8, 'opencart.html.37', 'footer_left', 0),
(5054, 8, 'opencart.html.60', 'footer_right', 0),
(5055, 4, 'opencart.html.37', 'footer_left', 0),
(5056, 4, 'opencart.html.60', 'footer_right', 0),
(5057, 11, 'opencart.html.37', 'footer_left', 0),
(5058, 11, 'opencart.html.60', 'footer_right', 0),
(5059, 5, 'opencart.html.37', 'footer_left', 0),
(5060, 5, 'opencart.html.60', 'footer_right', 0),
(5064, 13, 'opencart.html.37', 'footer_left', 0),
(5065, 13, 'opencart.html.60', 'footer_right', 0),
(5066, 9, 'opencart.html.37', 'footer_left', 0),
(5067, 9, 'opencart.html.60', 'footer_right', 0),
(5073, 3, 'opencart.category', 'column_left', 0),
(5074, 3, 'opencart.filter', 'column_left', 1),
(5075, 3, 'opencart.html.37', 'footer_left', 0),
(5076, 3, 'opencart.html.60', 'footer_right', 0),
(5282, 1, 'wdimgslider.wdimgslider.47', 'content_top', 0),
(5283, 1, 'wdcategory.wdcategory.49', 'content_top', 1),
(5284, 1, 'wdlogoslider.wdlogoslider.57', 'content_top', 2),
(5285, 1, 'opencart.special.31', 'content_top', 3),
(5286, 1, 'wdofferbanner.wdofferbanner.51', 'content_top', 4),
(5287, 1, 'wdonsale.wdonsale.48', 'content_top', 5),
(5288, 1, 'wdcenterbanner.wdcenterbanner.50', 'content_top', 6),
(5289, 1, 'wdrightbanner.wdrightbanner.56', 'content_top', 7),
(5290, 1, 'wbimgbanner.wbimgbanner.65', 'content_top', 8),
(5291, 1, 'opencart.html.23', 'content_top', 9),
(5292, 1, 'wdcategorytab.wdcategorytab.61', 'content_top', 10),
(5293, 1, 'workdonewsletter.workdonewsletter.64', 'content_top', 11),
(5294, 1, 'blogger.blogger.53', 'content_top', 12),
(5295, 1, 'opencart.html.37', 'footer_left', 0),
(5296, 1, 'opencart.html.60', 'footer_right', 0),
(5309, 2, 'wdofferbanner.wdofferbanner.51', 'content_bottom', 0),
(5310, 2, 'opencart.html.23', 'content_bottom', 1),
(5311, 2, 'workdonewsletter.workdonewsletter.64', 'content_bottom', 2),
(5312, 2, 'opencart.html.37', 'footer_left', 0),
(5313, 2, 'opencart.html.60', 'footer_right', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int NOT NULL,
  `layout_id` int NOT NULL,
  `store_id` int NOT NULL,
  `route` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(543, 6, 0, 'account/%'),
(544, 6, 0, 'information/gdpr'),
(545, 10, 0, 'affiliate/%'),
(547, 7, 0, 'checkout/%'),
(548, 12, 0, 'product/compare'),
(549, 8, 0, 'information/contact'),
(550, 4, 0, ''),
(551, 11, 0, 'information/information'),
(552, 5, 0, 'product/manufacturer'),
(554, 13, 0, 'product/search'),
(555, 9, 0, 'information/sitemap'),
(557, 3, 0, 'product/category'),
(579, 1, 0, 'common/home'),
(582, 2, 0, 'product/product');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `unit` varchar(4) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(1, 2, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(2, 2, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `address` text COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `geocode` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `open` text COLLATE utf8mb4_general_ci NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'shoes', 'catalog/demo/htc_logo.jpg', 0),
(6, 'sunglass', 'catalog/demo/palm_logo.jpg', 0),
(7, 'heels', 'catalog/demo/hp_logo.jpg', 0),
(8, 'bag', 'catalog/demo/apple_logo.jpg', 0),
(9, 'cloths', 'catalog/demo/canon_logo.jpg', 0),
(10, 'fashion', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_layout`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_layout` (
  `manufacturer_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_manufacturer_to_layout`
--

INSERT INTO `oc_manufacturer_to_layout` (`manufacturer_id`, `store_id`, `layout_id`) VALUES
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int NOT NULL,
  `store_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `clicks` int NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing_report`
--

DROP TABLE IF EXISTS `oc_marketing_report`;
CREATE TABLE IF NOT EXISTS `oc_marketing_report` (
  `marketing_report_id` int NOT NULL,
  `marketing_id` int NOT NULL,
  `store_id` int NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `setting` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(1, 'Category Banner', 'opencart.banner', '{\"name\":\"Category Banner\",\"banner_id\":\"6\",\"effect\":\"fade\",\"items\":\"1\",\"controls\":\"0\",\"indicators\":\"0\",\"interval\":\"5000\",\"width\":\"200\",\"height\":\"180\",\"status\":\"1\"}'),
(2, 'Featured', 'opencart.featured', '{\"name\":\"Featured\",\"product\":[\"42\",\"46\",\"34\",\"44\",\"45\",\"31\",\"30\",\"28\",\"52\",\"54\"],\"axis\":\"horizontal\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(3, 'Slideshow', 'opencart.banner', '{\"name\":\"Slideshow\",\"banner_id\":\"12\",\"effect\":\"slide\",\"items\":\"1\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"1920\",\"height\":\"776\",\"status\":\"1\"}'),
(4, 'Homepage Manufacturers', 'opencart.banner', '{\"name\":\"Homepage Manufacturers\",\"banner_id\":\"8\",\"effect\":\"slide\",\"items\":\"5\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(15, 'service', 'opencart.html', '{\"name\":\"service\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;dinfo&quot;&gt;\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n&lt;div class=&quot;row&quot;&gt;\\r\\n&lt;div class=&quot;col-md-3 service&quot;&gt;\\r\\n&lt;div class=&quot;home-sup-ctn&quot;&gt;\\r\\n&lt;h4&gt;3000+&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;orders in month&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;col-md-3 service&quot;&gt;\\r\\n&lt;div class=&quot;home-sup-ctn&quot;&gt;\\r\\n&lt;h4&gt;17+&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;plants and flowers categories&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;col-md-3 service&quot;&gt;\\r\\n&lt;div class=&quot;home-sup-ctn&quot;&gt;\\r\\n&lt;h4&gt;10+&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;years of experience&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;col-md-3 service&quot;&gt;\\r\\n&lt;div class=&quot;home-sup-ctn&quot;&gt;\\r\\n&lt;h4&gt;4.9&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;happy clients and partners&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(23, 'Testimonial', 'opencart.html', '{\"name\":\"Testimonial\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;test-pad&quot;&gt;\\r\\n&lt;div class=&quot;container parallex&quot;&gt;\\r\\n&lt;div class=&quot;secheading&quot;&gt;\\r\\n&lt;div class=&quot;heading&quot;&gt;\\r\\n&lt;h3&gt;Gifts&lt;\\/h3&gt;\\r\\n&lt;span&gt;Testimonials&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;row&quot;&gt;\\r\\n&lt;div class=&quot;col-xs-12 testi&quot;&gt;\\r\\n&lt;div class=&quot;wbtesti&quot;&gt;\\r\\n&lt;div class=&quot;testi-spc&quot;&gt;\\r\\n&lt;div class=&quot;item&quot;&gt;\\r\\n&lt;div class=&quot;testi-img&quot;&gt;&lt;img alt=&quot;pro-dot&quot; src=&quot;image\\/catalog\\/pro-dot.svg&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testi-dec&quot;&gt;\\r\\n&lt;h4&gt;The best place with gifts&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testdec-ctn&quot;&gt;&lt;img alt=&quot;1&quot; class=&quot;img-fluid&quot; src=&quot;image\\/catalog\\/testimonial\\/1.png&quot; \\/&gt;\\r\\n&lt;h5&gt;John Doe &lt;span&gt;Client&lt;\\/span&gt;&lt;\\/h5&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testi-spc&quot;&gt;\\r\\n&lt;div class=&quot;item&quot;&gt;\\r\\n&lt;div class=&quot;testi-img&quot;&gt;&lt;img alt=&quot;pro-dot&quot; src=&quot;image\\/catalog\\/pro-dot.svg&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testi-dec&quot;&gt;\\r\\n&lt;h4&gt;The best place with gifts&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testdec-ctn&quot;&gt;&lt;img alt=&quot;1&quot; class=&quot;img-fluid&quot; src=&quot;image\\/catalog\\/testimonial\\/2.png&quot; \\/&gt;\\r\\n&lt;h5&gt;John Doe &lt;span&gt;Client&lt;\\/span&gt;&lt;\\/h5&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testi-spc&quot;&gt;\\r\\n&lt;div class=&quot;item&quot;&gt;\\r\\n&lt;div class=&quot;testi-img&quot;&gt;&lt;img alt=&quot;pro-dot&quot; src=&quot;image\\/catalog\\/pro-dot.svg&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testi-dec&quot;&gt;\\r\\n&lt;h4&gt;The best place with gifts&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testdec-ctn&quot;&gt;&lt;img alt=&quot;1&quot; class=&quot;img-fluid&quot; src=&quot;image\\/catalog\\/testimonial\\/3.png&quot; \\/&gt;\\r\\n&lt;h5&gt;John Doe &lt;span&gt;Client&lt;\\/span&gt;&lt;\\/h5&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testi-spc&quot;&gt;\\r\\n&lt;div class=&quot;item&quot;&gt;\\r\\n&lt;div class=&quot;testi-img&quot;&gt;&lt;img alt=&quot;pro-dot&quot; src=&quot;image\\/catalog\\/pro-dot.svg&quot; \\/&gt;&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testi-dec&quot;&gt;\\r\\n&lt;h4&gt;The best place with gifts&lt;\\/h4&gt;\\r\\n\\r\\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;\\/p&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;testdec-ctn&quot;&gt;&lt;img alt=&quot;1&quot; class=&quot;img-fluid&quot; src=&quot;image\\/catalog\\/testimonial\\/4.png&quot; \\/&gt;\\r\\n&lt;h5&gt;John Doe &lt;span&gt;Client&lt;\\/span&gt;&lt;\\/h5&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(24, 'HTML Footer Contact', 'opencart.html', '{\"name\":\"HTML Footer Contact\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;rless storeinfo&quot;&gt;\\r\\n&lt;div class=&quot;cless&quot;&gt;\\r\\n&lt;h5&gt;contact us&lt;button class=&quot;btn toggle collapsed&quot; data-bs-target=&quot;#contact&quot; data-bs-toggle=&quot;collapse&quot;&gt;&lt;\\/button&gt;&lt;\\/h5&gt;\\r\\n&lt;\\/div&gt;\\r\\n\\r\\n&lt;div class=&quot;col-md-10 collapse footer-collapse cless&quot; id=&quot;contact&quot;&gt;\\r\\n&lt;ul class=&quot;list-unstyled f-left&quot;&gt;\\r\\n\\t&lt;li&gt;&lt;svg height=&quot;20px&quot; width=&quot;20px&quot;&gt;&lt;use xlink:href=&quot;#add&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;Organic Store, uffin Street Pufville surat, India&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;svg height=&quot;20px&quot; width=&quot;20px&quot;&gt;&lt;use xlink:href=&quot;#phone&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;123-456-789&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;svg height=&quot;22px&quot; width=&quot;22px&quot;&gt;&lt;use xlink:href=&quot;#mail&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;demo@demo.com&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(25, 'HTML Footer payment', 'opencart.html', '{\"name\":\"HTML Footer payment\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;payment&quot;&gt;\\r\\n&lt;ul class=&quot;list-unstyled fpaym&quot;&gt;\\r\\n\\t&lt;li&gt;&lt;svg height=&quot;38px&quot; width=&quot;22px&quot;&gt;&lt;use xlink:href=&quot;#ae&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;svg height=&quot;38px&quot; width=&quot;22px&quot;&gt;&lt;use xlink:href=&quot;#mc&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;svg height=&quot;38px&quot; width=&quot;22px&quot;&gt;&lt;use xlink:href=&quot;#dis&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;svg height=&quot;38px&quot; width=&quot;22px&quot;&gt;&lt;use xlink:href=&quot;#visa&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"},\"2\":{\"title\":\"\",\"description\":\"\"}},\"status\":\"1\"}'),
(28, 'bestseller', 'opencart.bestseller', '{\"name\":\"bestseller\",\"axis\":\"horizontal\",\"limit\":\"10\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(29, 'latest', 'opencart.latest', '{\"name\":\"latest\",\"axis\":\"horizontal\",\"limit\":\"16\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(30, 'Countdown', 'wbcountdown.wbcountdown', '{\"name\":\"Countdown\",\"status\":\"1\",\"option\":\"0\",\"product\":[\"42\",\"46\",\"34\",\"44\",\"30\"],\"cate_name\":\"Body Perfumes\",\"cate_id\":\"20\",\"productfrom\":\"0\",\"productcate\":\"\",\"input_specific_product\":\"0\",\"autoproduct\":\"0\",\"countdown\":\"1\",\"limit\":\"12\",\"width\":\"1000\",\"height\":\"800\"}'),
(31, 'special product', 'opencart.special', '{\"name\":\"special product\",\"axis\":\"horizontal\",\"limit\":\"10\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(32, 'HTML Footer bottom link', 'opencart.html', '{\"name\":\"HTML Footer bottom link\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;ul class=&quot;list-unstyled fsocial list-inline&quot;&gt;\\r\\n\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;svg height=&quot;35px&quot; width=&quot;35px&quot;&gt;&lt;use xlink:href=&quot;#facebook&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;svg height=&quot;35px&quot; width=&quot;35px&quot;&gt;&lt;use xlink:href=&quot;#instagram&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;svg height=&quot;35px&quot; width=&quot;35px&quot;&gt;&lt;use xlink:href=&quot;#pinterest&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\"}},\"status\":\"1\"}'),
(37, 'footleft', 'opencart.html', '{\"name\":\"footleft\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;h2&gt;Call and take more info:&lt;\\/h2&gt;\\r\\n\\r\\n&lt;p&gt;&lt;a class=&quot;footer-call&quot; href=&quot;tel:+00 544-213-615&quot;&gt;+00 544-213-615&lt;\\/a&gt;&lt;\\/p&gt;\\r\\n\\r\\n&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.&lt;\\/p&gt;\"}},\"status\":\"1\"}'),
(47, 'Slideshow', 'wdimgslider.wdimgslider', '{\"name\":\"Slideshow\",\"banner_id\":\"12\",\"effect\":\"slide\",\"items\":\"1\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"1920\",\"height\":\"900\",\"status\":\"1\"}'),
(48, 'Onsale Product', 'wdonsale.wdonsale', '{\"name\":\"Onsale Product\",\"product\":[\"42\",\"30\",\"28\",\"34\",\"44\",\"45\",\"46\"],\"axis\":\"horizontal\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(49, 'Fresh All category', 'wdcategory.wdcategory', '{\"name\":\"Fresh All category\",\"title\":{\"1\":\"Fresh All category\"},\"width\":\"32\",\"height\":\"32\",\"status\":\"1\",\"items\":[{\"description\":{\"1\":{\"title\":\"All Categories\",\"subtitle\":\"\"}},\"type\":\"category\",\"link\":\"68\",\"image\":\"catalog\\/category\\/2.png\",\"sort_order\":\"1\",\"status\":\"1\"},{\"description\":{\"1\":{\"title\":\"Shop\",\"subtitle\":\"\"}},\"type\":\"category\",\"link\":\"25\",\"image\":\"catalog\\/category\\/3.png\",\"sort_order\":\"2\",\"status\":\"1\"},{\"description\":{\"1\":{\"title\":\"Gifts\",\"subtitle\":\"\"}},\"type\":\"category\",\"link\":\"20\",\"image\":\"catalog\\/category\\/4.png\",\"sort_order\":\"3\",\"status\":\"1\"},{\"description\":{\"1\":{\"title\":\"Pop\",\"subtitle\":\"\"}},\"type\":\"category\",\"link\":\"17\",\"image\":\"catalog\\/category\\/1.png\",\"sort_order\":\"4\",\"status\":\"1\"}]}'),
(50, 'Center Banner', 'wdcenterbanner.wdcenterbanner', '{\"name\":\"Center Banner\",\"banner_id\":\"10\",\"effect\":\"slide\",\"items\":\"1\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"1155\",\"height\":\"360\",\"status\":\"1\"}'),
(51, 'offer banner', 'wdofferbanner.wdofferbanner', '{\"name\":\"offer banner\",\"banner_id\":\"11\",\"effect\":\"slide\",\"items\":\"4\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"550\",\"height\":\"475\",\"status\":\"1\"}'),
(52, 'Top Products', 'wdtop.wdtop', '{\"name\":\"Top Products\",\"product\":[\"46\",\"34\",\"31\",\"30\",\"29\",\"28\"],\"axis\":\"horizontal\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(53, 'Blog', 'blogger.blogger', '{\"module_id\":\"53\",\"name\":\"Blog\",\"status\":\"1\",\"width\":\"1000\",\"height\":\"700\",\"limit\":\"5\",\"char_limit\":\"250\",\"comments\":\"1\",\"login\":\"0\",\"auto_approve\":\"1\"}'),
(54, 'Selected Products', 'wdselected.wdselected', '{\"name\":\"Selected Products\",\"product\":[\"28\",\"34\",\"44\",\"45\",\"46\",\"42\",\"30\",\"52\",\"54\"],\"axis\":\"horizontal\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(56, 'Right Banner', 'wdrightbanner.wdrightbanner', '{\"name\":\"Right Banner\",\"banner_id\":\"39\",\"effect\":\"slide\",\"items\":\"1\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"740\",\"height\":\"450\",\"status\":\"1\"}'),
(57, 'Logo Slider', 'wdlogoslider.wdlogoslider', '{\"name\":\"Logo Slider\",\"banner_id\":\"14\",\"effect\":\"slide\",\"items\":\"4\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"172\",\"height\":\"41\",\"status\":\"1\"}'),
(59, 'Newsletter New', 'workdonewsletter.workdonewsletter', '{\"displaymode\":\"default\",\"name\":\"Newsletter New\",\"banner\":\"\",\"status\":\"1\",\"module_description\":{\"1\":{\"description\":\"\"}}}'),
(60, 'footer right', 'opencart.html', '{\"name\":\"footer right\",\"module_description\":{\"1\":{\"title\":\"\",\"description\":\"&lt;ul class=&quot;list-unstyled fsocial list-inline text-left social-media&quot;&gt;\\r\\n\\t&lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#youtube&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li class=&quot;massage&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#massage&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#instagram&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n\\t&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;svg&gt;&lt;use xlink:href=&quot;#twitter&quot;&gt;&lt;\\/use&gt;&lt;\\/svg&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\"}},\"status\":\"1\"}'),
(61, 'Category Tab', 'wdcategorytab.wdcategorytab', '{\"name\":\"Category Tab\",\"category_name\":\"\",\"category\":[\"25\",\"67\",\"28\"],\"limit\":\"12\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}'),
(62, 'special-banner', 'wdspecialbanner.wdspecialbanner', '{\"name\":\"special-banner\",\"banner_id\":\"71\",\"effect\":\"slide\",\"items\":\"4\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"550\",\"height\":\"475\",\"status\":\"1\"}'),
(63, 'left-banner', 'wdleftbanner.wdleftbanner', '{\"name\":\"left-banner\",\"banner_id\":\"70\",\"effect\":\"slide\",\"items\":\"1\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"360\",\"height\":\"131\",\"status\":\"1\"}'),
(64, 'newsletter', 'workdonewsletter.workdonewsletter', '{\"displaymode\":\"default\",\"name\":\"newsletter\",\"banner\":\"\",\"status\":\"1\",\"module_description\":{\"1\":{\"description\":\"\"}}}'),
(65, 'image-banner', 'wbimgbanner.wbimgbanner', '{\"name\":\"image-banner\",\"banner_id\":\"69\",\"effect\":\"slide\",\"items\":\"4\",\"controls\":\"1\",\"indicators\":\"1\",\"interval\":\"5000\",\"width\":\"290\",\"height\":\"365\",\"status\":\"1\"}'),
(66, 'CategoryTab-1', 'wdcategorytabone.wdcategorytabone', '{\"name\":\"CategoryTab-1\",\"category_name\":\"\",\"category\":[\"20\",\"25\"],\"limit\":\"5\",\"width\":\"1000\",\"height\":\"940\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_notification`
--

DROP TABLE IF EXISTS `oc_notification`;
CREATE TABLE IF NOT EXISTS `oc_notification` (
  `notification_id` int NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 5),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11),
(13, 'select', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Size:'),
(2, 1, 'Checkbox'),
(2, 2, 'Checkbox'),
(4, 1, 'Text'),
(4, 2, 'Text'),
(5, 1, 'Pot:'),
(6, 1, 'Textarea'),
(6, 2, 'Textarea'),
(7, 1, 'File'),
(7, 2, 'File'),
(8, 1, 'Date'),
(8, 2, 'Date'),
(9, 1, 'Time'),
(9, 2, 'Time'),
(10, 1, 'Date &amp; Time'),
(10, 2, 'Date &amp; Time'),
(11, 1, 'Size'),
(11, 2, 'Size'),
(12, 1, 'Delivery Date'),
(12, 2, 'Delivery Date'),
(13, 1, 'Types');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int NOT NULL,
  `option_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(23, 2, '', 1),
(24, 2, '', 2),
(31, 1, '', 2),
(32, 1, '', 1),
(39, 5, '', 1),
(40, 5, '', 2),
(41, 5, '', 3),
(42, 5, '', 4),
(44, 2, '', 3),
(45, 2, '', 4),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(49, 1, '', 0),
(50, 1, '', 0),
(51, 1, '', 0),
(52, 1, '', 0),
(54, 5, '', 5),
(55, 13, '', 0),
(56, 13, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int NOT NULL,
  `language_id` int NOT NULL,
  `option_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(23, 1, 2, 'Checkbox 1'),
(23, 2, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(24, 2, 2, 'Checkbox 2'),
(31, 1, 1, 'xxxl'),
(32, 1, 1, 'xxl'),
(39, 1, 5, '100cm'),
(40, 1, 5, '50cm'),
(41, 1, 5, '150cm'),
(42, 1, 5, '200cm'),
(44, 1, 2, 'Checkbox 3'),
(44, 2, 2, 'Checkbox 3'),
(45, 1, 2, 'Checkbox 4'),
(45, 2, 2, 'Checkbox 4'),
(46, 1, 11, 'Small'),
(46, 2, 11, 'Small'),
(47, 1, 11, 'Medium'),
(47, 2, 11, 'Medium'),
(48, 1, 11, 'Large'),
(48, 2, 11, 'Large'),
(49, 1, 1, 'small'),
(50, 1, 1, 'medium'),
(51, 1, 1, 'large'),
(52, 1, 1, 'xl'),
(54, 1, 5, '250cm'),
(55, 1, 13, 'Leather'),
(56, 1, 13, 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int NOT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `invoice_no` int NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) COLLATE utf8mb4_general_ci NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `store_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `store_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `firstname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `custom_field` text COLLATE utf8mb4_general_ci NOT NULL,
  `payment_firstname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_lastname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_company` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_address_1` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_address_2` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_city` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_postcode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_country` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_country_id` int NOT NULL,
  `payment_zone` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_zone_id` int NOT NULL,
  `payment_address_format` text COLLATE utf8mb4_general_ci NOT NULL,
  `payment_custom_field` text COLLATE utf8mb4_general_ci NOT NULL,
  `payment_method` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_code` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_firstname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_lastname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_company` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_address_1` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_address_2` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_city` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_postcode` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_country` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_country_id` int NOT NULL,
  `shipping_zone` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_zone_id` int NOT NULL,
  `shipping_address_format` text COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_custom_field` text COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_method` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_code` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int NOT NULL DEFAULT '0',
  `affiliate_id` int NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int NOT NULL,
  `tracking` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `language_id` int NOT NULL,
  `language_code` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `currency_id` int NOT NULL,
  `currency_code` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `forwarded_ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `accept_language` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `transaction_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `language_code`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, '', 0, 'INV-2022-00', 0, 'Your Store', 'http://localhost/freshgo-28-09/', 3, 1, 'demo', 'demo', 'demo14@demo.com', '', '[]', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', 'surat', 'surat', 'surat', 'surat', '123456', 'India', 99, 'Gujarat', 1485, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '\"\"', 'Flat Shipping Rate', 'flat.flat', '', '1025.0000', 1, 0, '0.0000', 0, '', 1, '', 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-09-29 06:57:31', '2022-09-29 06:57:32'),
(2, '', 0, 'INV-2022-00', 0, 'Product Store', 'http://localhost/product-store/', 4, 1, 'Romit', 'Sachani', 'demosadsad@demo.com', '', '[]', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'Romit', 'Sachani', 'testing', '4th floor,yogini building,above surat super store,', 'opp.new shankti vijay,near hirabaug,varachha road', 'SURAT', '395006', 'Italy', 105, 'Imperia', 3881, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '\"\"', 'Flat Shipping Rate', 'flat.flat', '', '2165.0000', 1, 0, '0.0000', 0, '', 1, '', 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-12 10:50:27', '2022-12-12 10:50:30'),
(3, '', 0, 'INV-2022-00', 0, 'Product Store', 'http://localhost/kuldeep/opencart/lifestyle/', 0, 1, 'demo', 'demo', 'deo@demo.com', '', '[]', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'sdsdsdsdcsdvsdv', '', 'surat', '395004', 'United Kingdom', 222, 'Lancashire', 3563, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '\"\"', 'Flat Shipping Rate', 'flat.flat', '', '103.0000', 1, 0, '0.0000', 0, '', 1, '', 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-28 11:48:03', '2022-12-28 11:48:04'),
(4, '', 0, 'INV-2022-00', 0, 'Product Store', 'http://localhost/kuldeep/opencart/lifestyle/', 0, 1, 'demo', 'demo', 'deo@demo.com', '', '[]', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'sdsdsdsdcsdvsdv', '', 'surat', '395004', 'United Kingdom', 222, 'Lancashire', 3563, 'demo demo<br/>sdsdsdsdcsdvsdv<br/>surat, Lancashire 395004<br/>United Kingdom', '\"\"', 'Flat Shipping Rate', 'flat.flat', 'fvhsdnijvfhnfdibnfo', '103.0000', 1, 0, '0.0000', 0, '', 1, '', 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2022-12-29 04:12:05', '2022-12-29 04:12:07'),
(5, '', 0, 'INV-2023-00', 0, 'Product Store', 'http://localhost/kuldeep/opencart/Coffee/', 9, 1, 'demo', 'demo', 'admin3569@gmail.com', '', '[]', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'demo', 'demo', '', 'katargam', '', 'surat', '395004', 'India', 99, '', 0, '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', '\"\"', 'Flat Shipping Rate', 'flat.flat', '', '189.0000', 1, 0, '0.0000', 0, '', 1, '', 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'en-US,en;q=0.9', '2023-01-24 05:36:33', '2023-01-24 05:36:40'),
(6, '', 0, 'INV-2023-00', 0, 'gift', 'http://localhost/opencart-1to5/oc-gifts-main/gifts-quickstart/', 13, 1, 'Jaquelyn', 'Spears', 'mujyc@mailinator.com', '', '\"\"', '', '', '', '', '', '', '', '', 0, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'Ashton', 'George', 'Browning and Wilkins Traders', '470 West Oak Extension', 'Ipsum dolore ducimus', 'Cillum ullam ratione', 'Quis eveni', 'Liberia', 120, '', 0, 'Ashton George<br/>Browning and Wilkins Traders<br/>470 West Oak Extension<br/>Ipsum dolore ducimus<br/>Cillum ullam ratione,<br/>Quis eveni<br/>Liberia', '\"\"', 'Flat Shipping Rate', 'flat.flat', 'Aut eos velit volup', '129.0000', 1, 0, '0.0000', 0, '', 1, '', 2, 'USD', '1.00000000', '::1', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8,la;q=0.7,es;q=0.6', '2023-05-01 09:35:08', '2023-05-01 09:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2022-09-29 06:57:32'),
(2, 2, 1, 0, '', '2022-12-12 10:50:30'),
(3, 3, 1, 0, '', '2022-12-28 11:48:04'),
(4, 4, 1, 0, '', '2022-12-29 04:12:07'),
(5, 5, 1, 0, '', '2023-01-24 05:36:40'),
(6, 6, 0, 0, '', '2023-05-01 09:35:11'),
(7, 6, 0, 0, '', '2023-05-01 09:35:16'),
(8, 6, 0, 0, '', '2023-05-01 09:35:19'),
(9, 6, 0, 0, '', '2023-05-01 09:35:19'),
(10, 6, 1, 0, '', '2023-05-01 09:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_product_id` int NOT NULL,
  `product_option_id` int NOT NULL,
  `product_option_value_id` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 2, 8, 226, 15, 'Select', 'Red', 'select'),
(2, 3, 9, 226, 15, 'Select', 'Red', 'select'),
(3, 4, 10, 238, 31, 'Select', 'Red', 'select'),
(4, 5, 11, 250, 66, 'Select', 'medium', 'select'),
(5, 5, 11, 219, 0, 'Date', '2011-02-20', 'date'),
(6, 5, 11, 221, 0, 'Time', '22:25', 'time'),
(7, 5, 11, 220, 0, 'Date &amp; Time', '2011-02-20 22:25', 'datetime'),
(12, 6, 16, 399, 426, 'Size:', 'xxl', 'radio');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `master_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `master_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 28, 0, 'HTC Touch HD', 'Product 1', 1, '20.0000', '20.0000', '0.0000', 400),
(2, 1, 44, 0, 'MacBook Air', 'Product 17', 1, '1000.0000', '1000.0000', '0.0000', 700),
(3, 2, 44, 0, 'Fruit - Banganapalli, 1 Kg', 'Product 17', 1, '20.0000', '20.0000', '0.0000', 700),
(4, 2, 34, 0, 'Fresho Apple-Red Delicious/Washington 4pcs', 'Product 7', 1, '20.0000', '20.0000', '0.0000', 0),
(5, 2, 46, 0, 'Pumpkin Green - Cut', 'Product 19', 1, '20.0000', '20.0000', '0.0000', 0),
(6, 2, 45, 0, 'Fruit - Fresh, Regular, 2 Pcs', 'Product 18', 1, '2000.0000', '2000.0000', '0.0000', 800),
(7, 2, 31, 0, 'Healthy Vegetables - Organically Grown, 1Kg', 'Product 4', 1, '20.0000', '20.0000', '0.0000', 0),
(8, 2, 30, 0, 'Exotic Early Fall Rapini Broccoli Seeds', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200),
(9, 3, 30, 0, 'Aluminium-metal wall lamp', 'Product 3', 1, '80.0000', '80.0000', '18.0000', 200),
(10, 4, 51, 0, 'Aluminium-metal wall lamp', 'Product 3', 1, '80.0000', '80.0000', '18.0000', 200),
(11, 5, 42, 0, 'Chocolate brew', 'Product 15', 2, '92.0000', '184.0000', '0.0000', 200),
(16, 6, 46, 0, 'Elegant Personalized Birthday Gift Box', 'Product 19', 1, '124.0000', '124.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(1, 2, 'Pending'),
(2, 1, 'Processing'),
(2, 2, 'Processing'),
(3, 1, 'Shipped'),
(3, 2, 'Shipped'),
(5, 1, 'Complete'),
(5, 2, 'Complete'),
(7, 1, 'Canceled'),
(7, 2, 'Canceled'),
(8, 1, 'Denied'),
(8, 2, 'Denied'),
(9, 1, 'Canceled Reversal'),
(9, 2, 'Canceled Reversal'),
(10, 1, 'Failed'),
(10, 2, 'Failed'),
(11, 1, 'Refunded'),
(11, 2, 'Refunded'),
(12, 1, 'Reversed'),
(12, 2, 'Reversed'),
(13, 1, 'Chargeback'),
(13, 2, 'Chargeback'),
(14, 1, 'Expired'),
(14, 2, 'Expired'),
(15, 1, 'Processed'),
(15, 2, 'Processed'),
(16, 1, 'Voided'),
(16, 2, 'Voided');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int NOT NULL,
  `order_id` int NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `extension`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'opencart', 'sub_total', 'Sub-Total', '1020.0000', 1),
(2, 1, 'opencart', 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'opencart', 'total', 'Total', '1025.0000', 9),
(4, 2, 'opencart', 'sub_total', 'Sub-Total', '2160.0000', 1),
(5, 2, 'opencart', 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(6, 2, 'opencart', 'total', 'Total', '2165.0000', 9),
(7, 3, 'opencart', 'sub_total', 'Sub-Total', '80.0000', 1),
(8, 3, 'opencart', 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(9, 3, 'opencart', 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(10, 3, 'opencart', 'tax', 'VAT (20%)', '16.0000', 5),
(11, 3, 'opencart', 'total', 'Total', '103.0000', 9),
(12, 4, 'opencart', 'sub_total', 'Sub-Total', '80.0000', 1),
(13, 4, 'opencart', 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(14, 4, 'opencart', 'tax', 'Eco Tax (-2.00)', '2.0000', 5),
(15, 4, 'opencart', 'tax', 'VAT (20%)', '16.0000', 5),
(16, 4, 'opencart', 'total', 'Total', '103.0000', 9),
(17, 5, 'opencart', 'sub_total', 'Sub-Total', '184.0000', 1),
(18, 5, 'opencart', 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(19, 5, 'opencart', 'total', 'Total', '189.0000', 9),
(32, 6, 'opencart', 'sub_total', 'Sub-Total', '124.0000', 1),
(33, 6, 'opencart', 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(34, 6, 'opencart', 'total', 'Total', '129.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `from_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `from_email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `to_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `to_email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int NOT NULL,
  `master_id` int NOT NULL DEFAULT '0',
  `model` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `sku` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `upc` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `ean` varchar(14) COLLATE utf8mb4_general_ci NOT NULL,
  `jan` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `isbn` varchar(17) COLLATE utf8mb4_general_ci NOT NULL,
  `mpn` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `variant` text COLLATE utf8mb4_general_ci NOT NULL,
  `override` text COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `stock_status_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `manufacturer_id` int NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int NOT NULL DEFAULT '0',
  `tax_class_id` int NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `master_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `variant`, `override`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(28, 0, 'Product 1', '', '', '', '', '', '', '', '', '', 938, 7, 'catalog/product/1.png', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2009-02-03 16:06:50', '2023-05-01 09:58:02'),
(29, 0, 'Product 2', '', '', '', '', '', '', '', '', '', 999, 6, 'catalog/product/11.png', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, '2009-02-03 16:42:17', '2023-05-01 09:58:15'),
(30, 0, 'Product 3', '', '', '', '', '', '', '', '', '', 5, 6, 'catalog/product/9.png', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2009-02-03 16:59:00', '2023-04-19 03:53:24'),
(31, 0, 'Product 4', '', '', '', '', '', '', '', '', '', 999, 6, 'catalog/product/2.png', 8, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, '2009-02-03 17:00:10', '2023-04-19 03:50:50'),
(34, 0, 'Product 7', '', '', '', '', '', '', '', '', '', 999, 6, 'catalog/product/4.png', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 18:07:54', '2023-04-19 03:51:11'),
(42, 0, 'Product 15', '', '', '', '', '', '', '', '', '', 988, 5, 'catalog/product/6.png', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, '2009-02-03 21:07:37', '2023-04-19 03:51:31'),
(44, 0, 'Product 17', '', '', '', '', '', '', '', '', '', 998, 5, 'catalog/product/10.png', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 21:08:00', '2023-04-19 03:52:08'),
(45, 0, 'Product 18', '', '', '', '', '', '', '', '', '', 997, 5, 'catalog/product/14.png', 8, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 21:08:17', '2023-05-01 09:59:03'),
(46, 0, 'Product 19', '', '', '', '', '', '', '', '', '', 998, 5, 'catalog/product/13.png', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2009-02-03 21:08:29', '2023-05-01 09:58:28'),
(52, 0, 'Product 1', '', '', '', '', '', '', '', '', '', 938, 7, 'catalog/product/8.png', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, '2022-11-07 06:26:21', '2023-04-19 03:51:48'),
(54, 0, 'Product 19', '', '', '', '', '', '', '', '', '', 1000, 5, 'catalog/product/5.png', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, '2022-11-07 06:28:50', '2023-05-01 09:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `language_id` int NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(42, 3, 1, '100mhz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `tag` text COLLATE utf8mb4_general_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'black Gift Box With Ribbon', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;/p&gt;', '', 'black Gift Box With Ribbon', '', ''),
(29, 1, 'Classic Decorative Gift Trunk Box India Tradition', '&lt;p&gt;Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'Classic Decorative Gift Trunk Box India Tradition', '', ''),
(30, 1, 'The Gift Designers Gift Baskets', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard&lt;/p&gt;', '', 'The Gift Designers Gift Baskets', '', ''),
(31, 1, 'Fine Paper Black Cardboard Box for Gift Hampers', '&lt;div class=&quot;cpt_product_description &quot;&gt;Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n&lt;br /&gt;\r\nSimilar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Fine Paper Black Cardboard Box for Gift Hampers', '', ''),
(34, 1, 'Gold Printed Butter Paper Gift Box For Women', '&lt;div&gt;&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n&lt;p&gt;Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n\r\n&lt;p&gt;Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'Gold Printed Butter Paper Gift Box For Women', '', ''),
(42, 1, 'Grey Rigid Gift Box For Men', '&lt;p&gt;&lt;span style=&quot;font-family:helvetica,geneva,arial; font-size:small&quot;&gt;&lt;span style=&quot;font-family:Helvetica; font-size:small&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;span style=&quot;font-family:Helvetica; font-size:small&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data.&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;', '', 'Grey Rigid Gift Box For Men', '', ''),
(44, 1, 'Oasis Round Boxes for Packaging Sweets', '&lt;div&gt;MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;', '', 'Oasis Round Boxes for Packaging Sweets', '', ''),
(45, 1, 'Stylish Dad Accessory Set in Personalized Box', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n&lt;div&gt;\r\n&lt;p&gt;&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n\r\n&lt;p&gt;Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Stylish Dad Accessory Set in Personalized Box', '', ''),
(46, 1, 'Elegant Personalized Birthday Gift Box', '&lt;div&gt;Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;', '', 'Elegant Personalized Birthday Gift Box', '', ''),
(52, 1, 'Happiness Jumbo Gift Bundle For Mens', '&lt;p&gt;HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'Happiness Jumbo Gift Bundle For Mens', '', ''),
(54, 1, 'The County Gift Shoppe Packging Box', '&lt;div&gt;Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;', '', 'The County Gift Shoppe Packging Box', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(672, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00'),
(673, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(674, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int NOT NULL,
  `filter_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int NOT NULL,
  `product_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(3737, 31, 'catalog/product/3.png', 0),
(3738, 34, 'catalog/product/5.png', 0),
(3739, 42, 'catalog/product/7.png', 0),
(3740, 52, 'catalog/product/9.png', 0),
(3741, 44, 'catalog/product/12.png', 0),
(3744, 30, 'catalog/product/1.png', 0),
(3745, 28, 'catalog/product/10.png', 0),
(3746, 29, 'catalog/product/12.png', 0),
(3747, 46, 'catalog/product/14.png', 0),
(3748, 45, 'catalog/product/3.png', 0),
(3749, 54, 'catalog/product/7.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int NOT NULL,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(397, 28, 1, '', 1),
(398, 29, 1, '', 1),
(399, 46, 1, '', 1),
(400, 31, 1, '', 1),
(401, 34, 1, '', 1),
(402, 42, 1, '', 1),
(403, 52, 1, '', 1),
(404, 44, 1, '', 1),
(405, 45, 1, '', 1),
(406, 54, 1, '', 1),
(407, 30, 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int NOT NULL,
  `product_option_id` int NOT NULL,
  `product_id` int NOT NULL,
  `option_id` int NOT NULL,
  `option_value_id` int NOT NULL,
  `quantity` int NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `points` int NOT NULL,
  `points_prefix` varchar(1) COLLATE utf8mb4_general_ci NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(422, 397, 28, 1, 51, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(423, 397, 28, 1, 50, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(424, 398, 29, 1, 49, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(425, 398, 29, 1, 52, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(426, 399, 46, 1, 32, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(427, 399, 46, 1, 31, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(428, 400, 31, 1, 50, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(429, 400, 31, 1, 49, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(430, 401, 34, 1, 52, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(431, 401, 34, 1, 32, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(432, 402, 42, 1, 32, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(433, 402, 42, 1, 31, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(434, 403, 52, 1, 51, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(435, 403, 52, 1, 31, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(436, 404, 44, 1, 50, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(437, 404, 44, 1, 32, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(438, 405, 45, 1, 49, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(439, 405, 45, 1, 32, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(440, 406, 54, 1, 50, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(441, 406, 54, 1, 49, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+'),
(442, 407, 30, 1, 49, 1, 0, '1.0000', '+', 0, '+', '0.00000000', '+'),
(443, 407, 30, 1, 50, 1, 0, '2.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int NOT NULL,
  `related_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 30),
(28, 31),
(28, 34),
(28, 42),
(28, 44),
(28, 45),
(28, 46),
(28, 52),
(28, 54),
(29, 30),
(29, 31),
(29, 34),
(29, 44),
(29, 45),
(29, 46),
(29, 52),
(29, 54),
(30, 28),
(30, 29),
(30, 31),
(30, 42),
(30, 44),
(30, 45),
(30, 46),
(30, 52),
(30, 54),
(31, 28),
(31, 29),
(31, 30),
(31, 31),
(31, 34),
(31, 44),
(31, 45),
(31, 46),
(31, 52),
(31, 54),
(34, 28),
(34, 29),
(34, 31),
(34, 34),
(34, 42),
(34, 44),
(34, 45),
(34, 46),
(34, 52),
(34, 54),
(42, 28),
(42, 30),
(42, 34),
(42, 42),
(42, 44),
(44, 28),
(44, 29),
(44, 30),
(44, 31),
(44, 34),
(44, 42),
(45, 28),
(45, 29),
(45, 30),
(45, 31),
(45, 34),
(45, 45),
(46, 28),
(46, 29),
(46, 30),
(46, 31),
(46, 34),
(52, 28),
(52, 29),
(52, 30),
(52, 31),
(52, 34),
(54, 28),
(54, 29),
(54, 30),
(54, 31),
(54, 34);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_report`
--

DROP TABLE IF EXISTS `oc_product_report`;
CREATE TABLE IF NOT EXISTS `oc_product_report` (
  `product_report_id` int NOT NULL,
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `customer_group_id` int NOT NULL DEFAULT '0',
  `points` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(1030, 42, 1, 100),
(1031, 52, 1, 400),
(1032, 44, 1, 700),
(1034, 30, 1, 200),
(1035, 28, 1, 400),
(1036, 45, 1, 800);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_group_id` int NOT NULL,
  `priority` int NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(1107, 31, 1, 1, '139.0000', '0000-00-00', '0000-00-00'),
(1108, 34, 1, 1, '234.0000', '2022-10-03', '2023-10-04'),
(1109, 42, 1, 1, '100.0000', '2022-09-27', '2023-12-14'),
(1110, 52, 1, 1, '200.0000', '2022-09-19', '2023-06-02'),
(1111, 44, 1, 1, '215.0000', '2022-10-03', '2023-10-05'),
(1114, 30, 1, 1, '135.0000', '2022-10-03', '2024-03-06'),
(1115, 28, 1, 1, '80.0000', '2022-09-19', '2023-06-02'),
(1116, 29, 1, 0, '150.0000', '0000-00-00', '0000-00-00'),
(1117, 46, 1, 1, '123.0000', '2022-10-03', '2024-04-17'),
(1118, 45, 1, 0, '138.0000', '0000-00-00', '0000-00-00'),
(1119, 54, 1, 1, '159.0000', '2022-10-03', '2024-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_subscription`
--

DROP TABLE IF EXISTS `oc_product_subscription`;
CREATE TABLE IF NOT EXISTS `oc_product_subscription` (
  `product_id` int NOT NULL,
  `subscription_plan_id` int NOT NULL,
  `customer_group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(29, 20),
(30, 20),
(31, 20),
(42, 20),
(44, 20),
(45, 20),
(46, 20),
(52, 20),
(54, 20),
(28, 25),
(29, 25),
(30, 25),
(31, 25),
(34, 25),
(44, 25),
(45, 25),
(46, 25),
(52, 25),
(54, 25),
(42, 27),
(46, 27),
(28, 28),
(29, 28),
(31, 28),
(34, 28),
(42, 28),
(44, 28),
(45, 28),
(46, 28),
(52, 28),
(54, 28),
(29, 60),
(31, 60),
(46, 60),
(42, 61),
(45, 61),
(31, 64),
(30, 65),
(30, 66),
(54, 66),
(28, 67),
(29, 67),
(34, 67),
(44, 67),
(45, 67),
(46, 67),
(52, 67),
(54, 67),
(28, 68),
(29, 68),
(45, 68),
(46, 68),
(54, 68);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int NOT NULL,
  `download_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL,
  `layout_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(34, 0, 0),
(42, 0, 0),
(44, 0, 0),
(45, 0, 0),
(46, 0, 0),
(52, 0, 0),
(54, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(34, 0),
(42, 0),
(44, 0),
(45, 0),
(46, 0),
(52, 0),
(54, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_viewed`
--

DROP TABLE IF EXISTS `oc_product_viewed`;
CREATE TABLE IF NOT EXISTS `oc_product_viewed` (
  `product_id` int NOT NULL,
  `viewed` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `firstname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int NOT NULL,
  `return_action_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(1, 2, 'Refunded'),
(2, 1, 'Credit Issued'),
(2, 2, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int NOT NULL,
  `return_id` int NOT NULL,
  `return_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(1, 2, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(2, 2, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(3, 2, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(4, 2, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(1, 2, 'Pending'),
(2, 1, 'Awaiting Products'),
(2, 2, 'Awaiting Products'),
(3, 1, 'Complete'),
(3, 2, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `author` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 42, 0, 'Shoes', 'sdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfssdfs', 5, 1, '2022-09-16 10:43:24', '2022-09-16 10:43:35'),
(2, 28, 8, 'demo demo', '$(\'#review\').on(\'click\', \'.pagination a\', function (e) {$(\'#review\').on(\'click\', \'.pagination a\', function (e) {$(\'#review\').on(\'click\', \'.pagination a\', function (e) {', 4, 0, '2023-02-25 04:22:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

DROP TABLE IF EXISTS `oc_seo_url`;
CREATE TABLE IF NOT EXISTS `oc_seo_url` (
  `seo_url_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `key`, `value`, `keyword`, `sort_order`) VALUES
(27, 0, 1, 'path', '30', 'printer', 0),
(32, 0, 1, 'path', '25_33', 'component/cameras', 0),
(70, 0, 1, 'language', 'en-gb', 'en-gb', -2),
(71, 0, 1, 'route', 'information/information|info', 'info', 0),
(72, 0, 1, 'route', 'information/information', 'information', -1),
(73, 0, 1, 'route', 'product/product', 'product', -1),
(74, 0, 1, 'route', 'product/category', 'catalog', -1),
(75, 0, 1, 'route', 'product/manufacturer', 'brands', -1),
(93, 0, 1, 'information_id', '2', 'terms', 0),
(95, 0, 1, 'information_id', '4', 'delivery', 0),
(209, 0, 1, 'path', '20_26_60', 'desktops/pc/cherry', 0),
(215, 0, 1, 'path', '20_26_62', 'desktops/pc/orange', 0),
(290, 0, 1, 'information_id', '5', 'faq', 0),
(291, 0, 1, 'information_id', '3', 'privacy', 0),
(296, 0, 1, 'information_id', '1', 'about-us', 0),
(592, 0, 1, 'manufacturer_id', '8', 'apple', 0),
(594, 0, 1, 'manufacturer_id', '7', 'hewlett-packard', 0),
(596, 0, 1, 'manufacturer_id', '5', 'htc', 0),
(597, 0, 1, 'manufacturer_id', '6', 'palm', 0),
(598, 0, 1, 'manufacturer_id', '10', 'sony', 0),
(599, 0, 1, 'manufacturer_id', '9', 'canon', 0),
(960, 0, 1, 'path', '60', 'meat', 0),
(961, 0, 1, 'path', '68', 'chocolate-crackers', 0),
(964, 0, 1, 'path', '20', 'desktops', 0),
(965, 0, 1, 'path', '20_27', 'desktops/mac', 0),
(966, 0, 1, 'path', '20_27_61', 'desktops/mac/mango', 0),
(968, 0, 1, 'path', '20_27_63', 'desktops/mac/pear', 0),
(971, 0, 1, 'path', '67', 'bread-pastry', 0),
(973, 0, 1, 'path', '25_29', 'component/mouse', 0),
(974, 0, 1, 'path', '25_29_65', 'component/mouse/lemon', 0),
(976, 0, 1, 'path', '25_29_66', 'component/mouse/pineberry', 0),
(977, 0, 1, 'path', '25_29_64', 'component/mouse/banana', 0),
(978, 0, 1, 'path', '25_28', 'component/monitor', 0),
(992, 0, 1, 'path', '25', 'component', 0),
(1057, 0, 1, 'product_id', '31', 'nikon-d300', 0),
(1058, 0, 1, 'product_id', '34', 'ipod-shuffle', 0),
(1059, 0, 1, 'product_id', '42', 'apple-cinema', 0),
(1060, 0, 1, 'product_id', '52', 'assd', 0),
(1061, 0, 1, 'product_id', '44', 'macbook-air', 0),
(1064, 0, 1, 'product_id', '30', 'canon-eos-5d', 0),
(1065, 0, 1, 'product_id', '28', 'htc-touch-hd', 0),
(1066, 0, 1, 'product_id', '29', 'palm-treo-pro', 0),
(1067, 0, 1, 'product_id', '46', 'sony-vaio', 0),
(1068, 0, 1, 'product_id', '45', 'macbook-pro', 0),
(1069, 0, 1, 'product_id', '54', 'mnerre', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

DROP TABLE IF EXISTS `oc_session`;
CREATE TABLE IF NOT EXISTS `oc_session` (
  `session_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `data` text COLLATE utf8mb4_general_ci NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('8c61fa4953ae3761465b4c699b', '{\"api_id\":\"9\",\"currency\":\"USD\",\"order_id\":5,\"customer\":{\"customer_id\":\"9\",\"customer_group_id\":\"1\",\"firstname\":\"demo\",\"lastname\":\"demo\",\"email\":\"admin3569@gmail.com\",\"telephone\":\"\",\"custom_field\":[]},\"payment_method\":\"cod\",\"shipping_address\":{\"firstname\":\"demo\",\"lastname\":\"demo\",\"company\":\"\",\"address_1\":\"katargam\",\"address_2\":\"\",\"postcode\":\"395004\",\"city\":\"surat\",\"zone_id\":\"0\",\"zone\":\"\",\"zone_code\":\"\",\"country_id\":\"99\",\"country\":\"India\",\"iso_code_2\":\"IN\",\"iso_code_3\":\"IND\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":\"\"},\"shipping_method\":\"flat.flat\",\"comment\":\"\",\"vouchers\":[]}', '2054-10-09 10:50:51'),
('ccdde5adeec211b06ce08daf07', '{\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"c9cca9a5370632d62f8ee7e02d65f8d2\"}', '2023-05-02 10:02:46'),
('e6a3a1db0b2f9ad579bec898e9', '{\"api_id\":\"7\",\"currency\":\"USD\",\"order_id\":2,\"customer\":{\"customer_id\":\"4\",\"customer_group_id\":\"1\",\"firstname\":\"Romit\",\"lastname\":\"Sachani\",\"email\":\"demosadsad@demo.com\",\"telephone\":\"\",\"custom_field\":[]},\"payment_method\":\"cod\",\"shipping_address\":{\"firstname\":\"Romit\",\"lastname\":\"Sachani\",\"company\":\"testing\",\"address_1\":\"4th floor,yogini building,above surat super store,\",\"address_2\":\"opp.new shankti vijay,near hirabaug,varachha road\",\"postcode\":\"395006\",\"city\":\"SURAT\",\"zone_id\":\"3881\",\"zone\":\"Imperia\",\"zone_code\":\"IM\",\"country_id\":\"105\",\"country\":\"Italy\",\"iso_code_2\":\"IT\",\"iso_code_3\":\"ITA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":\"\"},\"shipping_method\":\"flat.flat\",\"comment\":\"\",\"vouchers\":[]}', '2054-09-07 12:54:13'),
('f90ff203669ce1a8bf23e1b543', '{\"currency\":\"USD\",\"review_token\":\"691ed723cb88c38d38c03f871ac6b78c\",\"wishlist\":[46,29],\"login_token\":\"e17eeec355fcdc0f4b965933d6\",\"compare\":[],\"register_token\":\"e64bca82d96afc221095a718ba\"}', '2023-05-02 10:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `code` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `serialized` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(122, 0, 'developer', 'developer_sass', '1', 0),
(123, 0, 'currency_ecb', 'currency_ecb_status', '1', 0),
(124, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(125, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(126, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(127, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(128, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(129, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(130, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(131, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(132, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(133, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(134, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(135, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(136, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(137, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(138, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(139, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(140, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(141, 0, 'total_tax', 'total_tax_status', '1', 0),
(142, 0, 'total_total', 'total_total_sort_order', '9', 0),
(143, 0, 'total_total', 'total_total_status', '1', 0),
(144, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(145, 0, 'total_credit', 'total_credit_status', '1', 0),
(146, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(147, 0, 'total_reward', 'total_reward_status', '1', 0),
(148, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(149, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(150, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(151, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(152, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(153, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(155, 0, 'module_account', 'module_account_status', '1', 0),
(156, 0, 'theme_basic', 'theme_basic_status', '1', 0),
(157, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(158, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(159, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(160, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(161, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(162, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(163, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(164, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(165, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(166, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(167, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(168, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(169, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(170, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(171, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(172, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(173, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(174, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(175, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(176, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(177, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(178, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(179, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(180, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(181, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(182, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(183, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(184, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(185, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(186, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(187, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(188, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(189, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(190, 0, 'report_customer_transaction', 'report_customer_transaction_sort_order', '4', 0),
(191, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(192, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(193, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(194, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(195, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(196, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(197, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(198, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(199, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(200, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(201, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(202, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(203, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(204, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(205, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(206, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(997, 0, 'module_filter', 'module_filter_status', '1', 0),
(2414, 0, 'webinewsletter_config', 'webinewsletter_config', '1', 0),
(6398, 0, 'workdonewsletter_config', 'workdonewsletter_config', '1', 0),
(6786, 0, 'module_category', 'module_category_status', '1', 0),
(10996, 0, 'config', 'config_meta_title', 'gift', 0),
(10997, 0, 'config', 'config_meta_description', 'Product Store', 0),
(10998, 0, 'config', 'config_meta_keyword', '', 0),
(10999, 0, 'config', 'config_logo', 'catalog/storlogo/logo.png', 0),
(11000, 0, 'config', 'config_icon', 'catalog/storlogo/favicon.png', 0),
(11001, 0, 'config', 'config_theme', 'basic', 0),
(11002, 0, 'config', 'config_layout_id', '4', 0),
(11003, 0, 'config', 'config_name', 'gift', 0),
(11004, 0, 'config', 'config_owner', 'gift', 0),
(11005, 0, 'config', 'config_address', '9070Green Lake Drive Chevy Chase, MD 20815, USA', 0),
(11006, 0, 'config', 'config_geocode', '', 0),
(11008, 0, 'config', 'config_telephone', '610-403-403', 0),
(11009, 0, 'config', 'config_image', 'catalog/storlogo/logo.png', 0),
(11010, 0, 'config', 'config_open', '', 0),
(11011, 0, 'config', 'config_comment', '', 0),
(11012, 0, 'config', 'config_country_id', '222', 0),
(11013, 0, 'config', 'config_zone_id', '0', 0),
(11014, 0, 'config', 'config_timezone', 'UTC', 0),
(11015, 0, 'config', 'config_language', 'en-gb', 0),
(11016, 0, 'config', 'config_language_admin', 'en-gb', 0),
(11017, 0, 'config', 'config_currency', 'USD', 0),
(11018, 0, 'config', 'config_currency_engine', 'ecb', 0),
(11019, 0, 'config', 'config_currency_auto', '1', 0),
(11020, 0, 'config', 'config_length_class_id', '1', 0),
(11021, 0, 'config', 'config_weight_class_id', '1', 0),
(11022, 0, 'config', 'config_product_description_length', '200', 0),
(11023, 0, 'config', 'config_pagination', '10', 0),
(11024, 0, 'config', 'config_product_count', '1', 0),
(11025, 0, 'config', 'config_pagination_admin', '10', 0),
(11026, 0, 'config', 'config_product_report_status', '0', 0),
(11027, 0, 'config', 'config_review_status', '1', 0),
(11028, 0, 'config', 'config_review_purchased', '0', 0),
(11029, 0, 'config', 'config_review_guest', '1', 0),
(11030, 0, 'config', 'config_voucher_min', '1', 0),
(11031, 0, 'config', 'config_voucher_max', '1000', 0),
(11032, 0, 'config', 'config_cookie_id', '0', 0),
(11033, 0, 'config', 'config_gdpr_id', '0', 0),
(11034, 0, 'config', 'config_gdpr_limit', '180', 0),
(11035, 0, 'config', 'config_tax', '1', 0),
(11036, 0, 'config', 'config_tax_default', 'shipping', 0),
(11037, 0, 'config', 'config_tax_customer', 'shipping', 0),
(11038, 0, 'config', 'config_customer_online', '0', 0),
(11039, 0, 'config', 'config_customer_online_expire', '1', 0),
(11040, 0, 'config', 'config_customer_activity', '0', 0),
(11041, 0, 'config', 'config_customer_search', '0', 0),
(11042, 0, 'config', 'config_customer_group_id', '1', 0),
(11043, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(11044, 0, 'config', 'config_customer_price', '0', 0),
(11045, 0, 'config', 'config_telephone_display', '0', 0),
(11046, 0, 'config', 'config_telephone_required', '0', 0),
(11047, 0, 'config', 'config_login_attempts', '5', 0),
(11048, 0, 'config', 'config_account_id', '3', 0),
(11049, 0, 'config', 'config_invoice_prefix', 'INV-2023-00', 0),
(11050, 0, 'config', 'config_cart_weight', '1', 0),
(11051, 0, 'config', 'config_checkout_guest', '1', 0),
(11052, 0, 'config', 'config_checkout_address', '0', 0),
(11053, 0, 'config', 'config_checkout_id', '0', 0),
(11054, 0, 'config', 'config_order_status_id', '1', 0),
(11055, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(11056, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(11057, 0, 'config', 'config_fraud_status_id', '8', 0),
(11059, 0, 'config', 'config_subscription_status_id', '1', 0),
(11060, 0, 'config', 'config_subscription_active_status_id', '2', 0),
(11061, 0, 'config', 'config_subscription_expired_status_id', '6', 0),
(11062, 0, 'config', 'config_subscription_canceled_status_id', '4', 0),
(11063, 0, 'config', 'config_subscription_failed_status_id', '3', 0),
(11064, 0, 'config', 'config_subscription_denied_status_id', '5', 0),
(11065, 0, 'config', 'config_stock_display', '0', 0),
(11066, 0, 'config', 'config_stock_warning', '0', 0),
(11067, 0, 'config', 'config_stock_checkout', '0', 0),
(11068, 0, 'config', 'config_affiliate_status', '1', 0),
(11069, 0, 'config', 'config_affiliate_group_id', '1', 0),
(11070, 0, 'config', 'config_affiliate_approval', '0', 0),
(11071, 0, 'config', 'config_affiliate_auto', '0', 0),
(11072, 0, 'config', 'config_affiliate_commission', '5', 0),
(11073, 0, 'config', 'config_affiliate_expire', '0', 0),
(11074, 0, 'config', 'config_affiliate_id', '4', 0),
(11075, 0, 'config', 'config_return_status_id', '2', 0),
(11076, 0, 'config', 'config_return_id', '0', 0),
(11077, 0, 'config', 'config_captcha', '', 0),
(11078, 0, 'config', 'config_captcha_page', '[\"review\",\"contact\"]', 1),
(11079, 0, 'config', 'config_image_category_width', '1000', 0),
(11080, 0, 'config', 'config_image_category_height', '940', 0),
(11081, 0, 'config', 'config_image_thumb_width', '1000', 0),
(11082, 0, 'config', 'config_image_thumb_height', '940', 0),
(11083, 0, 'config', 'config_image_popup_width', '1000', 0),
(11084, 0, 'config', 'config_image_popup_height', '940', 0),
(11085, 0, 'config', 'config_image_product_width', '1000', 0),
(11086, 0, 'config', 'config_image_product_height', '940', 0),
(11087, 0, 'config', 'config_image_additional_width', '1000', 0),
(11088, 0, 'config', 'config_image_additional_height', '940', 0),
(11089, 0, 'config', 'config_image_related_width', '1000', 0),
(11090, 0, 'config', 'config_image_related_height', '940', 0),
(11091, 0, 'config', 'config_image_compare_width', '90', 0),
(11092, 0, 'config', 'config_image_compare_height', '90', 0),
(11093, 0, 'config', 'config_image_wishlist_width', '47', 0),
(11094, 0, 'config', 'config_image_wishlist_height', '47', 0),
(11095, 0, 'config', 'config_image_cart_width', '47', 0),
(11096, 0, 'config', 'config_image_cart_height', '47', 0),
(11097, 0, 'config', 'config_image_location_width', '268', 0),
(11098, 0, 'config', 'config_image_location_height', '50', 0),
(11099, 0, 'config', 'config_mail_engine', '', 0),
(11100, 0, 'config', 'config_mail_parameter', '', 0),
(11101, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(11102, 0, 'config', 'config_mail_smtp_username', '', 0),
(11103, 0, 'config', 'config_mail_smtp_password', '', 0),
(11104, 0, 'config', 'config_mail_smtp_port', '25', 0),
(11105, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(11106, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(11107, 0, 'config', 'config_mail_alert_email', '', 0),
(11108, 0, 'config', 'config_maintenance', '0', 0),
(11109, 0, 'config', 'config_session_expire', '86400', 0),
(11110, 0, 'config', 'config_session_samesite', 'Strict', 0),
(11111, 0, 'config', 'config_seo_url', '0', 0),
(11112, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(11113, 0, 'config', 'config_compression', '0', 0),
(11114, 0, 'config', 'config_security', '0', 0),
(11115, 0, 'config', 'config_shared', '0', 0),
(11117, 0, 'config', 'config_file_max_size', '20', 0),
(11118, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\nwebp\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nmp4\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(11119, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/webp\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-zip\r\napplication/x-zip-compressed\r\napplication/rar\r\napplication/x-rar\r\napplication/x-rar-compressed\r\napplication/octet-stream\r\naudio/mpeg\r\nvideo/mp4\r\nvideo/quicktime\r\napplication/pdf', 0),
(11120, 0, 'config', 'config_error_display', '1', 0),
(11121, 0, 'config', 'config_error_log', '1', 0),
(11122, 0, 'config', 'config_error_filename', 'error.log', 0),
(11123, 0, 'config', 'config_email', 'admin@gmail.com', 0),
(11124, 0, 'config', 'config_encryption', 'd9aeaac297bb30cc94a4aafb35df18fdc40d9c1a55e37d7fd0b418316b21cd36d93874e1e07678d38807ff78026bfde883b7d47f243e22eb6bc5ab1470cc2ba1fbf4f713fe3a3aeba9a076f2d031712071a4d4c5608cd86aeabc23077edaea52f1c5fb4bc86930d0d5382a468d9b421375effc651f6ca3e07e9ad6d50fdca1e0419ac768ff1524f38b87825f934f4967008b9dce4b7418806e3a4d2c1829a486926ba2298fa358689b6ee5802a1ee395dac84ff66f455816bc5459a2cc2fe1813ebd55e53ae77216b57eed4d473c3e3032af590d603d895959e66bfc512580e9ad0baf6edd89fdaca9aeb41f561601a64143ac9ec21b0d8195943c11952ba66a', 0),
(11125, 0, 'config', 'config_api_id', '19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_startup`
--

DROP TABLE IF EXISTS `oc_startup`;
CREATE TABLE IF NOT EXISTS `oc_startup` (
  `startup_id` int NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `action` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

DROP TABLE IF EXISTS `oc_statistics`;
CREATE TABLE IF NOT EXISTS `oc_statistics` (
  `statistics_id` int NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '3714.0000'),
(2, 'order_processing', '6.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '2.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(5, 1, 'Out Of Stock'),
(5, 2, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(6, 2, '2-3 Days'),
(7, 1, 'In Stock'),
(7, 2, 'In Stock'),
(8, 1, 'Pre-Order'),
(8, 2, 'Pre-Order');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscription`
--

DROP TABLE IF EXISTS `oc_subscription`;
CREATE TABLE IF NOT EXISTS `oc_subscription` (
  `subscription_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_id` int NOT NULL,
  `order_product_id` int NOT NULL,
  `subscription_plan_id` int NOT NULL,
  `customer_payment_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') COLLATE utf8mb4_general_ci NOT NULL,
  `trial_cycle` smallint NOT NULL,
  `trial_duration` smallint NOT NULL,
  `trial_remaining` smallint NOT NULL,
  `trial_status` tinyint(1) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') COLLATE utf8mb4_general_ci NOT NULL,
  `cycle` smallint NOT NULL,
  `duration` smallint NOT NULL,
  `remaining` smallint NOT NULL,
  `date_next` datetime NOT NULL,
  `subscription_status_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscription_history`
--

DROP TABLE IF EXISTS `oc_subscription_history`;
CREATE TABLE IF NOT EXISTS `oc_subscription_history` (
  `subscription_history_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `subscription_status_id` int NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscription_plan`
--

DROP TABLE IF EXISTS `oc_subscription_plan`;
CREATE TABLE IF NOT EXISTS `oc_subscription_plan` (
  `subscription_plan_id` int NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') COLLATE utf8mb4_general_ci NOT NULL,
  `trial_duration` int NOT NULL,
  `trial_cycle` int NOT NULL,
  `trial_status` tinyint NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') COLLATE utf8mb4_general_ci NOT NULL,
  `duration` int NOT NULL,
  `cycle` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscription_plan_description`
--

DROP TABLE IF EXISTS `oc_subscription_plan_description`;
CREATE TABLE IF NOT EXISTS `oc_subscription_plan_description` (
  `subscription_plan_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscription_status`
--

DROP TABLE IF EXISTS `oc_subscription_status`;
CREATE TABLE IF NOT EXISTS `oc_subscription_status` (
  `subscription_status_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_subscription_status`
--

INSERT INTO `oc_subscription_status` (`subscription_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(1, 2, 'Pending'),
(2, 1, 'Active'),
(2, 2, 'Active'),
(3, 1, 'Failed'),
(3, 2, 'Failed'),
(4, 1, 'Cancelled'),
(4, 2, 'Cancelled'),
(5, 1, 'Denied'),
(5, 2, 'Denied'),
(6, 1, 'Expired'),
(6, 2, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_subscription_transaction`
--

DROP TABLE IF EXISTS `oc_subscription_transaction`;
CREATE TABLE IF NOT EXISTS `oc_subscription_transaction` (
  `subscription_transaction_id` int NOT NULL,
  `subscription_id` int NOT NULL,
  `order_id` int NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` tinyint NOT NULL,
  `payment_method` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `payment_code` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int NOT NULL,
  `geo_zone_id` int NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int NOT NULL,
  `customer_group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int NOT NULL,
  `tax_class_id` int NOT NULL,
  `tax_rate_id` int NOT NULL,
  `based` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `priority` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(120, 10, 87, 'store', 0),
(121, 10, 86, 'payment', 1),
(127, 9, 87, 'shipping', 2),
(128, 9, 86, 'shipping', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

DROP TABLE IF EXISTS `oc_theme`;
CREATE TABLE IF NOT EXISTS `oc_theme` (
  `theme_id` int NOT NULL,
  `store_id` int NOT NULL,
  `route` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `code` mediumtext COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

DROP TABLE IF EXISTS `oc_translation`;
CREATE TABLE IF NOT EXISTS `oc_translation` (
  `translation_id` int NOT NULL,
  `store_id` int NOT NULL,
  `language_id` int NOT NULL,
  `route` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `key` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `value` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int NOT NULL,
  `user_group_id` int NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `firstname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `code` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '$2y$10$cQ7csR5VLn4qWh2.AtP1OOKm.A7rdLCUy4PJjxNuGuqZxtY.rWoiu', 'John', 'Doe', 'admin@gmail.com', '', '', '::1', 1, '2023-05-01 14:44:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `permission` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/review\",\"10\":\"catalog\\/subscription_plan\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/pagination\",\"15\":\"common\\/security\",\"16\":\"cron\\/cron\",\"17\":\"cron\\/currency\",\"18\":\"cron\\/gdpr\",\"19\":\"cron\\/subscription\",\"20\":\"customer\\/custom_field\",\"21\":\"customer\\/customer\",\"22\":\"customer\\/customer_approval\",\"23\":\"customer\\/customer_group\",\"24\":\"customer\\/gdpr\",\"25\":\"design\\/banner\",\"26\":\"design\\/layout\",\"27\":\"design\\/seo_url\",\"28\":\"design\\/theme\",\"29\":\"design\\/translation\",\"30\":\"error\\/exception\",\"31\":\"extension\\/analytics\",\"32\":\"extension\\/captcha\",\"33\":\"extension\\/currency\",\"34\":\"extension\\/dashboard\",\"35\":\"extension\\/feed\",\"36\":\"extension\\/fraud\",\"37\":\"extension\\/language\",\"38\":\"extension\\/module\",\"39\":\"extension\\/other\",\"40\":\"extension\\/payment\",\"41\":\"extension\\/report\",\"42\":\"extension\\/shipping\",\"43\":\"extension\\/theme\",\"44\":\"extension\\/total\",\"45\":\"localisation\\/address_format\",\"46\":\"localisation\\/country\",\"47\":\"localisation\\/currency\",\"48\":\"localisation\\/geo_zone\",\"49\":\"localisation\\/language\",\"50\":\"localisation\\/length_class\",\"51\":\"localisation\\/location\",\"52\":\"localisation\\/order_status\",\"53\":\"localisation\\/return_action\",\"54\":\"localisation\\/return_reason\",\"55\":\"localisation\\/return_status\",\"56\":\"localisation\\/stock_status\",\"57\":\"localisation\\/subscription_status\",\"58\":\"localisation\\/tax_class\",\"59\":\"localisation\\/tax_rate\",\"60\":\"localisation\\/weight_class\",\"61\":\"localisation\\/zone\",\"62\":\"mail\\/affiliate\",\"63\":\"mail\\/authorize\",\"64\":\"mail\\/customer\",\"65\":\"mail\\/forgotten\",\"66\":\"mail\\/gdpr\",\"67\":\"mail\\/returns\",\"68\":\"mail\\/reward\",\"69\":\"mail\\/subscription\",\"70\":\"mail\\/transaction\",\"71\":\"mail\\/voucher\",\"72\":\"marketing\\/affiliate\",\"73\":\"marketing\\/contact\",\"74\":\"marketing\\/coupon\",\"75\":\"marketing\\/marketing\",\"76\":\"marketplace\\/api\",\"77\":\"marketplace\\/cron\",\"78\":\"marketplace\\/event\",\"79\":\"marketplace\\/extension\",\"80\":\"marketplace\\/installer\",\"81\":\"marketplace\\/marketplace\",\"82\":\"marketplace\\/promotion\",\"83\":\"marketplace\\/startup\",\"84\":\"report\\/online\",\"85\":\"report\\/report\",\"86\":\"report\\/statistics\",\"87\":\"sale\\/order\",\"88\":\"sale\\/returns\",\"89\":\"sale\\/subscription\",\"90\":\"sale\\/voucher\",\"91\":\"sale\\/voucher_theme\",\"92\":\"setting\\/setting\",\"93\":\"setting\\/store\",\"94\":\"startup\\/authorize\",\"95\":\"tool\\/backup\",\"96\":\"tool\\/log\",\"97\":\"tool\\/notification\",\"98\":\"tool\\/upgrade\",\"99\":\"tool\\/upload\",\"100\":\"user\\/api\",\"101\":\"user\\/profile\",\"102\":\"user\\/user\",\"103\":\"user\\/user_permission\",\"104\":\"extension\\/opencart\\/captcha\\/basic\",\"105\":\"extension\\/opencart\\/currency\\/ecb\",\"106\":\"extension\\/opencart\\/currency\\/fixer\",\"107\":\"extension\\/opencart\\/dashboard\\/activity\",\"108\":\"extension\\/opencart\\/dashboard\\/chart\",\"109\":\"extension\\/opencart\\/dashboard\\/customer\",\"110\":\"extension\\/opencart\\/dashboard\\/map\",\"111\":\"extension\\/opencart\\/dashboard\\/online\",\"112\":\"extension\\/opencart\\/dashboard\\/order\",\"113\":\"extension\\/opencart\\/dashboard\\/recent\",\"114\":\"extension\\/opencart\\/dashboard\\/sale\",\"115\":\"extension\\/opencart\\/fraud\\/ip\",\"116\":\"extension\\/opencart\\/module\\/account\",\"117\":\"extension\\/opencart\\/module\\/banner\",\"118\":\"extension\\/opencart\\/module\\/bestseller\",\"119\":\"extension\\/opencart\\/module\\/category\",\"120\":\"extension\\/opencart\\/module\\/featured\",\"121\":\"extension\\/opencart\\/module\\/filter\",\"122\":\"extension\\/opencart\\/module\\/html\",\"123\":\"extension\\/opencart\\/module\\/information\",\"124\":\"extension\\/opencart\\/module\\/latest\",\"125\":\"extension\\/opencart\\/module\\/special\",\"126\":\"extension\\/opencart\\/module\\/store\",\"127\":\"extension\\/opencart\\/payment\\/bank_transfer\",\"128\":\"extension\\/opencart\\/payment\\/cheque\",\"129\":\"extension\\/opencart\\/payment\\/cod\",\"130\":\"extension\\/opencart\\/payment\\/free_checkout\",\"131\":\"extension\\/opencart\\/report\\/customer_activity\",\"132\":\"extension\\/opencart\\/report\\/customer_order\",\"133\":\"extension\\/opencart\\/report\\/customer_reward\",\"134\":\"extension\\/opencart\\/report\\/customer_search\",\"135\":\"extension\\/opencart\\/report\\/customer_transaction\",\"136\":\"extension\\/opencart\\/report\\/marketing\",\"137\":\"extension\\/opencart\\/report\\/product_purchased\",\"138\":\"extension\\/opencart\\/report\\/product_viewed\",\"139\":\"extension\\/opencart\\/report\\/sale_coupon\",\"140\":\"extension\\/opencart\\/report\\/sale_order\",\"141\":\"extension\\/opencart\\/report\\/sale_return\",\"142\":\"extension\\/opencart\\/report\\/sale_shipping\",\"143\":\"extension\\/opencart\\/report\\/sale_tax\",\"144\":\"extension\\/opencart\\/shipping\\/flat\",\"145\":\"extension\\/opencart\\/shipping\\/free\",\"146\":\"extension\\/opencart\\/shipping\\/item\",\"147\":\"extension\\/opencart\\/shipping\\/pickup\",\"148\":\"extension\\/opencart\\/shipping\\/weight\",\"149\":\"extension\\/opencart\\/theme\\/basic\",\"150\":\"extension\\/opencart\\/total\\/coupon\",\"151\":\"extension\\/opencart\\/total\\/credit\",\"152\":\"extension\\/opencart\\/total\\/handling\",\"153\":\"extension\\/opencart\\/total\\/low_order_fee\",\"154\":\"extension\\/opencart\\/total\\/reward\",\"155\":\"extension\\/opencart\\/total\\/shipping\",\"156\":\"extension\\/opencart\\/total\\/sub_total\",\"157\":\"extension\\/opencart\\/total\\/tax\",\"158\":\"extension\\/opencart\\/total\\/total\",\"159\":\"extension\\/opencart\\/total\\/voucher\",\"160\":\"extension\\/wbimgslider\\/module\\/wbimgslider\",\"163\":\"extension\\/wbofferbanner\\/module\\/wbofferbanner\",\"164\":\"extension\\/wbcenterbanner\\/module\\/wbcenterbanner\",\"167\":\"extension\\/opencart\\/module\\/html\",\"168\":\"extension\\/wbimgbanner\\/module\\/wbimgbanner\",\"171\":\"extension\\/blogger\\/module\\/blogger\",\"172\":\"extension\\/wblogoslider\\/module\\/wblogoslider\",\"173\":\"extension\\/wbcountdown\\/module\\/wbcountdown\",\"174\":\"extension\\/opencart\\/module\\/bestseller\",\"175\":\"extension\\/opencart\\/module\\/latest\",\"176\":\"extension\\/opencart\\/module\\/filter\",\"177\":\"extension\\/wbcountdown\\/module\\/wbcountdown\",\"178\":\"extension\\/opencart\\/module\\/special\",\"179\":\"extension\\/wbimgbanner\\/module\\/wbimgbanner\",\"180\":\"extension\\/wbrightbanner\\/module\\/wbrightbanner\",\"181\":\"extension\\/wbleftbanner\\/module\\/wbleftbanner\",\"182\":\"extension\\/wbspecialbanner\\/module\\/wbspecialbanner\",\"183\":\"extension\\/wdimgslider\\/module\\/wdimgslider\",\"184\":\"extension\\/wdonsale\\/module\\/wdonsale\",\"185\":\"extension\\/wdonsale\\/module\\/wdonsale\",\"186\":\"extension\\/wdcategory\\/module\\/wdcategory\",\"187\":\"extension\\/wdcategory\\/module\\/wdcategory\",\"188\":\"extension\\/wdcenterbanner\\/module\\/wdcenterbanner\",\"189\":\"extension\\/wdofferbanner\\/module\\/wdofferbanner\",\"190\":\"extension\\/wdtop\\/module\\/wdtop\",\"191\":\"extension\\/wdtop\\/module\\/wdtop\",\"192\":\"extension\\/blogger\\/module\\/blogger\",\"193\":\"extension\\/wdselected\\/module\\/wdselected\",\"194\":\"extension\\/wdselected\\/module\\/wdselected\",\"195\":\"extension\\/wdleftbanner\\/module\\/wdleftbanner\",\"196\":\"extension\\/wdrightbanner\\/module\\/wdrightbanner\",\"197\":\"extension\\/wdlogoslider\\/module\\/wdlogoslider\",\"198\":\"extension\\/workdonewsletter\\/module\\/workdonewsletter\",\"199\":\"extension\\/workdonewsletter\\/module\\/workdonewsletter\",\"200\":\"extension\\/wdcategorytab\\/module\\/wdcategorytab\",\"201\":\"extension\\/wdcategorytab\\/module\\/wdcategorytab\",\"202\":\"extension\\/wdspecialbanner\\/module\\/wdspecialbanner\",\"203\":\"extension\\/wdleftbanner\\/module\\/wdleftbanner\",\"204\":\"extension\\/opencart\\/module\\/store\",\"205\":\"extension\\/wbimgbanner\\/module\\/wbimgbanner\",\"206\":\"extension\\/wdcategorytabone\\/module\\/wdcategorytabone\",\"207\":\"extension\\/wdcategorytabone\\/module\\/wdcategorytabone\"},\"modify\":{\"0\":\"catalog\\/attribute\",\"1\":\"catalog\\/attribute_group\",\"2\":\"catalog\\/category\",\"3\":\"catalog\\/download\",\"4\":\"catalog\\/filter\",\"5\":\"catalog\\/information\",\"6\":\"catalog\\/manufacturer\",\"7\":\"catalog\\/option\",\"8\":\"catalog\\/product\",\"9\":\"catalog\\/review\",\"10\":\"catalog\\/subscription_plan\",\"11\":\"common\\/column_left\",\"12\":\"common\\/developer\",\"13\":\"common\\/filemanager\",\"14\":\"common\\/pagination\",\"15\":\"common\\/security\",\"16\":\"cron\\/cron\",\"17\":\"cron\\/currency\",\"18\":\"cron\\/gdpr\",\"19\":\"cron\\/subscription\",\"20\":\"customer\\/custom_field\",\"21\":\"customer\\/customer\",\"22\":\"customer\\/customer_approval\",\"23\":\"customer\\/customer_group\",\"24\":\"customer\\/gdpr\",\"25\":\"design\\/banner\",\"26\":\"design\\/layout\",\"27\":\"design\\/seo_url\",\"28\":\"design\\/theme\",\"29\":\"design\\/translation\",\"30\":\"error\\/exception\",\"31\":\"extension\\/analytics\",\"32\":\"extension\\/captcha\",\"33\":\"extension\\/currency\",\"34\":\"extension\\/dashboard\",\"35\":\"extension\\/feed\",\"36\":\"extension\\/fraud\",\"37\":\"extension\\/language\",\"38\":\"extension\\/module\",\"39\":\"extension\\/other\",\"40\":\"extension\\/payment\",\"41\":\"extension\\/report\",\"42\":\"extension\\/shipping\",\"43\":\"extension\\/theme\",\"44\":\"extension\\/total\",\"45\":\"localisation\\/address_format\",\"46\":\"localisation\\/country\",\"47\":\"localisation\\/currency\",\"48\":\"localisation\\/geo_zone\",\"49\":\"localisation\\/language\",\"50\":\"localisation\\/length_class\",\"51\":\"localisation\\/location\",\"52\":\"localisation\\/order_status\",\"53\":\"localisation\\/return_action\",\"54\":\"localisation\\/return_reason\",\"55\":\"localisation\\/return_status\",\"56\":\"localisation\\/stock_status\",\"57\":\"localisation\\/subscription_status\",\"58\":\"localisation\\/tax_class\",\"59\":\"localisation\\/tax_rate\",\"60\":\"localisation\\/weight_class\",\"61\":\"localisation\\/zone\",\"62\":\"mail\\/affiliate\",\"63\":\"mail\\/authorize\",\"64\":\"mail\\/customer\",\"65\":\"mail\\/forgotten\",\"66\":\"mail\\/gdpr\",\"67\":\"mail\\/returns\",\"68\":\"mail\\/reward\",\"69\":\"mail\\/subscription\",\"70\":\"mail\\/transaction\",\"71\":\"mail\\/voucher\",\"72\":\"marketing\\/affiliate\",\"73\":\"marketing\\/contact\",\"74\":\"marketing\\/coupon\",\"75\":\"marketing\\/marketing\",\"76\":\"marketplace\\/api\",\"77\":\"marketplace\\/cron\",\"78\":\"marketplace\\/event\",\"79\":\"marketplace\\/extension\",\"80\":\"marketplace\\/installer\",\"81\":\"marketplace\\/marketplace\",\"82\":\"marketplace\\/promotion\",\"83\":\"marketplace\\/startup\",\"84\":\"report\\/online\",\"85\":\"report\\/report\",\"86\":\"report\\/statistics\",\"87\":\"sale\\/order\",\"88\":\"sale\\/returns\",\"89\":\"sale\\/subscription\",\"90\":\"sale\\/voucher\",\"91\":\"sale\\/voucher_theme\",\"92\":\"setting\\/setting\",\"93\":\"setting\\/store\",\"94\":\"startup\\/authorize\",\"95\":\"tool\\/backup\",\"96\":\"tool\\/log\",\"97\":\"tool\\/notification\",\"98\":\"tool\\/upgrade\",\"99\":\"tool\\/upload\",\"100\":\"user\\/api\",\"101\":\"user\\/profile\",\"102\":\"user\\/user\",\"103\":\"user\\/user_permission\",\"104\":\"extension\\/opencart\\/captcha\\/basic\",\"105\":\"extension\\/opencart\\/currency\\/ecb\",\"106\":\"extension\\/opencart\\/currency\\/fixer\",\"107\":\"extension\\/opencart\\/dashboard\\/activity\",\"108\":\"extension\\/opencart\\/dashboard\\/chart\",\"109\":\"extension\\/opencart\\/dashboard\\/customer\",\"110\":\"extension\\/opencart\\/dashboard\\/map\",\"111\":\"extension\\/opencart\\/dashboard\\/online\",\"112\":\"extension\\/opencart\\/dashboard\\/order\",\"113\":\"extension\\/opencart\\/dashboard\\/recent\",\"114\":\"extension\\/opencart\\/dashboard\\/sale\",\"115\":\"extension\\/opencart\\/fraud\\/ip\",\"116\":\"extension\\/opencart\\/module\\/account\",\"117\":\"extension\\/opencart\\/module\\/banner\",\"118\":\"extension\\/opencart\\/module\\/bestseller\",\"119\":\"extension\\/opencart\\/module\\/category\",\"120\":\"extension\\/opencart\\/module\\/featured\",\"121\":\"extension\\/opencart\\/module\\/filter\",\"122\":\"extension\\/opencart\\/module\\/html\",\"123\":\"extension\\/opencart\\/module\\/information\",\"124\":\"extension\\/opencart\\/module\\/latest\",\"125\":\"extension\\/opencart\\/module\\/special\",\"126\":\"extension\\/opencart\\/module\\/store\",\"127\":\"extension\\/opencart\\/payment\\/bank_transfer\",\"128\":\"extension\\/opencart\\/payment\\/cheque\",\"129\":\"extension\\/opencart\\/payment\\/cod\",\"130\":\"extension\\/opencart\\/payment\\/free_checkout\",\"131\":\"extension\\/opencart\\/report\\/customer_activity\",\"132\":\"extension\\/opencart\\/report\\/customer_order\",\"133\":\"extension\\/opencart\\/report\\/customer_reward\",\"134\":\"extension\\/opencart\\/report\\/customer_search\",\"135\":\"extension\\/opencart\\/report\\/customer_transaction\",\"136\":\"extension\\/opencart\\/report\\/marketing\",\"137\":\"extension\\/opencart\\/report\\/product_purchased\",\"138\":\"extension\\/opencart\\/report\\/product_viewed\",\"139\":\"extension\\/opencart\\/report\\/sale_coupon\",\"140\":\"extension\\/opencart\\/report\\/sale_order\",\"141\":\"extension\\/opencart\\/report\\/sale_return\",\"142\":\"extension\\/opencart\\/report\\/sale_shipping\",\"143\":\"extension\\/opencart\\/report\\/sale_tax\",\"144\":\"extension\\/opencart\\/shipping\\/flat\",\"145\":\"extension\\/opencart\\/shipping\\/free\",\"146\":\"extension\\/opencart\\/shipping\\/item\",\"147\":\"extension\\/opencart\\/shipping\\/pickup\",\"148\":\"extension\\/opencart\\/shipping\\/weight\",\"149\":\"extension\\/opencart\\/theme\\/basic\",\"150\":\"extension\\/opencart\\/total\\/coupon\",\"151\":\"extension\\/opencart\\/total\\/credit\",\"152\":\"extension\\/opencart\\/total\\/handling\",\"153\":\"extension\\/opencart\\/total\\/low_order_fee\",\"154\":\"extension\\/opencart\\/total\\/reward\",\"155\":\"extension\\/opencart\\/total\\/shipping\",\"156\":\"extension\\/opencart\\/total\\/sub_total\",\"157\":\"extension\\/opencart\\/total\\/tax\",\"158\":\"extension\\/opencart\\/total\\/total\",\"159\":\"extension\\/opencart\\/total\\/voucher\",\"160\":\"extension\\/wbimgslider\\/module\\/wbimgslider\",\"163\":\"extension\\/wbofferbanner\\/module\\/wbofferbanner\",\"164\":\"extension\\/wbcenterbanner\\/module\\/wbcenterbanner\",\"167\":\"extension\\/opencart\\/module\\/html\",\"168\":\"extension\\/wbimgbanner\\/module\\/wbimgbanner\",\"171\":\"extension\\/blogger\\/module\\/blogger\",\"172\":\"extension\\/wblogoslider\\/module\\/wblogoslider\",\"173\":\"extension\\/wbcountdown\\/module\\/wbcountdown\",\"174\":\"extension\\/opencart\\/module\\/bestseller\",\"175\":\"extension\\/opencart\\/module\\/latest\",\"176\":\"extension\\/opencart\\/module\\/filter\",\"177\":\"extension\\/wbcountdown\\/module\\/wbcountdown\",\"178\":\"extension\\/opencart\\/module\\/special\",\"179\":\"extension\\/wbimgbanner\\/module\\/wbimgbanner\",\"180\":\"extension\\/wbrightbanner\\/module\\/wbrightbanner\",\"181\":\"extension\\/wbleftbanner\\/module\\/wbleftbanner\",\"182\":\"extension\\/wbspecialbanner\\/module\\/wbspecialbanner\",\"183\":\"extension\\/wdimgslider\\/module\\/wdimgslider\",\"184\":\"extension\\/wdonsale\\/module\\/wdonsale\",\"185\":\"extension\\/wdonsale\\/module\\/wdonsale\",\"186\":\"extension\\/wdcategory\\/module\\/wdcategory\",\"187\":\"extension\\/wdcategory\\/module\\/wdcategory\",\"188\":\"extension\\/wdcenterbanner\\/module\\/wdcenterbanner\",\"189\":\"extension\\/wdofferbanner\\/module\\/wdofferbanner\",\"190\":\"extension\\/wdtop\\/module\\/wdtop\",\"191\":\"extension\\/wdtop\\/module\\/wdtop\",\"192\":\"extension\\/blogger\\/module\\/blogger\",\"193\":\"extension\\/wdselected\\/module\\/wdselected\",\"194\":\"extension\\/wdselected\\/module\\/wdselected\",\"195\":\"extension\\/wdleftbanner\\/module\\/wdleftbanner\",\"196\":\"extension\\/wdrightbanner\\/module\\/wdrightbanner\",\"197\":\"extension\\/wdlogoslider\\/module\\/wdlogoslider\",\"198\":\"extension\\/workdonewsletter\\/module\\/workdonewsletter\",\"199\":\"extension\\/workdonewsletter\\/module\\/workdonewsletter\",\"200\":\"extension\\/wdcategorytab\\/module\\/wdcategorytab\",\"201\":\"extension\\/wdcategorytab\\/module\\/wdcategorytab\",\"202\":\"extension\\/wdspecialbanner\\/module\\/wdspecialbanner\",\"203\":\"extension\\/wdleftbanner\\/module\\/wdleftbanner\",\"204\":\"extension\\/opencart\\/module\\/store\",\"205\":\"extension\\/wbimgbanner\\/module\\/wbimgbanner\",\"206\":\"extension\\/wdcategorytabone\\/module\\/wdcategorytabone\",\"207\":\"extension\\/wdcategorytabone\\/module\\/wdcategorytabone\"}}'),
(2, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_login`
--

DROP TABLE IF EXISTS `oc_user_login`;
CREATE TABLE IF NOT EXISTS `oc_user_login` (
  `user_login_id` int NOT NULL,
  `user_id` int NOT NULL,
  `token` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `total` int NOT NULL,
  `ip` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_vendor`
--

DROP TABLE IF EXISTS `oc_vendor`;
CREATE TABLE IF NOT EXISTS `oc_vendor` (
  `vendor_id` int NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `code` text COLLATE utf8mb4_general_ci NOT NULL,
  `version` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `from_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `from_email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `to_name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `to_email` varchar(96) COLLATE utf8mb4_general_ci NOT NULL,
  `voucher_theme_id` int NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `order_id` int NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(6, 'catalog/demo/apple_logo.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(8, 'catalog/demo/canon_eos_5d_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int NOT NULL,
  `language_id` int NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(6, 2, 'Christmas'),
(7, 1, 'Birthday'),
(7, 2, 'Birthday'),
(8, 1, 'General'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `unit` varchar(4) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(1, 2, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(2, 2, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(5, 2, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_workdonewsletter_draft`
--

DROP TABLE IF EXISTS `oc_workdonewsletter_draft`;
CREATE TABLE IF NOT EXISTS `oc_workdonewsletter_draft` (
  `draft_id` int NOT NULL,
  `store_id` int NOT NULL DEFAULT '0',
  `to` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `customer_group_id` int NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `affiliate` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_workdonewsletter_email`
--

DROP TABLE IF EXISTS `oc_workdonewsletter_email`;
CREATE TABLE IF NOT EXISTS `oc_workdonewsletter_email` (
  `email_id` int NOT NULL,
  `template_id` int NOT NULL DEFAULT '0',
  `language_id` int NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `attach` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `customer_group_id` int NOT NULL,
  `affiliate` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product` datetime NOT NULL,
  `defined` varchar(255) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `special` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `latest` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `popular` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `defined_categories` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `categories` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `defined_products` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `defined_products_more` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `only_selected_language` int NOT NULL,
  `store_id` int NOT NULL,
  `to` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_workdonewsletter_history`
--

DROP TABLE IF EXISTS `oc_workdonewsletter_history`;
CREATE TABLE IF NOT EXISTS `oc_workdonewsletter_history` (
  `id` int NOT NULL,
  `language_id` int DEFAULT '0',
  `template_id` int DEFAULT NULL,
  `public_id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` text COLLATE utf8mb4_general_ci NOT NULL,
  `message` text COLLATE utf8mb4_general_ci NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_workdonewsletter_subscribe`
--

DROP TABLE IF EXISTS `oc_workdonewsletter_subscribe`;
CREATE TABLE IF NOT EXISTS `oc_workdonewsletter_subscribe` (
  `subscribe_id` int NOT NULL,
  `customer_id` int NOT NULL DEFAULT '0',
  `store_id` int NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_workdonewsletter_subscribe`
--

INSERT INTO `oc_workdonewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 0, 0, 'company@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_workdonewsletter_template`
--

DROP TABLE IF EXISTS `oc_workdonewsletter_template`;
CREATE TABLE IF NOT EXISTS `oc_workdonewsletter_template` (
  `template_id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `hits` tinyint NOT NULL,
  `template_file` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `ordering` int NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_workdonewsletter_template_description`
--

DROP TABLE IF EXISTS `oc_workdonewsletter_template_description`;
CREATE TABLE IF NOT EXISTS `oc_workdonewsletter_template_description` (
  `template_id` int NOT NULL,
  `language_id` int NOT NULL DEFAULT '0',
  `subject` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `template_message` text COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `ordering` int NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int NOT NULL,
  `country_id` int NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', '01', 1),
(70, 3, 'Ain Defla', '44', 1),
(71, 3, 'Ain Temouchent', '46', 1),
(72, 3, 'Alger', '16', 1),
(73, 3, 'Annaba', '23', 1),
(74, 3, 'Batna', '05', 1),
(75, 3, 'Bechar', '08', 1),
(76, 3, 'Bejaia', '06', 1),
(77, 3, 'Biskra', '07', 1),
(78, 3, 'Blida', '09', 1),
(79, 3, 'Bordj Bou Arreridj', '34', 1),
(80, 3, 'Bouira', '10', 1),
(81, 3, 'Boumerdes', '35', 1),
(82, 3, 'Chlef', '02', 1),
(83, 3, 'Constantine', '26', 1),
(84, 3, 'Djelfa', '17', 1),
(85, 3, 'El Bayadh', '32', 1),
(86, 3, 'El Oued', '39', 1),
(87, 3, 'El Tarf', '36', 1),
(88, 3, 'Ghardaia', '47', 1),
(89, 3, 'Guelma', '24', 1),
(90, 3, 'Illizi', '33', 1),
(91, 3, 'Jijel', '18', 1),
(92, 3, 'Khenchela', '40', 1),
(93, 3, 'Laghouat', '03', 1),
(94, 3, 'Mascara', '29', 1),
(95, 3, 'Medea', '26', 1),
(96, 3, 'Mila', '43', 1),
(97, 3, 'Mostaganem', '27', 1),
(98, 3, 'M\'Sila', '28', 1),
(99, 3, 'Naama', '45', 1),
(100, 3, 'Oran', '31', 1),
(101, 3, 'Ouargla', '30', 1),
(102, 3, 'Oum el-Bouaghi', '04', 1),
(103, 3, 'Relizane', '48', 1),
(104, 3, 'Saida', '20', 1),
(105, 3, 'Setif', '19', 1),
(106, 3, 'Sidi Bel Abbes', '22', 1),
(107, 3, 'Skikda', '21', 1),
(108, 3, 'Souk Ahras', '41', 1),
(109, 3, 'Tamanrasset', '11', 1),
(110, 3, 'Tebessa', '12', 1),
(111, 3, 'Tiaret', '14', 1),
(112, 3, 'Tindouf', '37', 1),
(113, 3, 'Tipaza', '42', 1),
(114, 3, 'Tissemsilt', '38', 1),
(115, 3, 'Tizi Ouzou', '15', 1),
(116, 3, 'Tlemcen', '13', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'B', 1),
(157, 10, 'Catamarca', 'K', 1),
(158, 10, 'Chaco', 'H', 1),
(159, 10, 'Chubut', 'U', 1),
(160, 10, 'Cordoba', 'X', 1),
(161, 10, 'Corrientes', 'W', 1),
(162, 10, 'Ciudad Autónoma de Buenos Aires', 'C', 1),
(163, 10, 'Entre Rios', 'E', 1),
(164, 10, 'Formosa', 'P', 1),
(165, 10, 'Jujuy', 'Y', 1),
(166, 10, 'La Pampa', 'L', 1),
(167, 10, 'La Rioja', 'F', 1),
(168, 10, 'Mendoza', 'M', 1),
(169, 10, 'Misiones', 'N', 1),
(170, 10, 'Neuquen', 'Q', 1),
(171, 10, 'Rio Negro', 'R', 1),
(172, 10, 'Salta', 'A', 1),
(173, 10, 'San Juan', 'J', 1),
(174, 10, 'San Luis', 'D', 1),
(175, 10, 'Santa Cruz', 'Z', 1),
(176, 10, 'Santa Fe', 'S', 1),
(177, 10, 'Santiago del Estero', 'G', 1),
(178, 10, 'Tierra del Fuego', 'V', 1),
(179, 10, 'Tucuman', 'T', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', '1', 1),
(200, 14, 'Kärnten', '2', 1),
(201, 14, 'Niederösterreich', '3', 1),
(202, 14, 'Oberösterreich', '4', 1),
(203, 14, 'Salzburg', '5', 1),
(204, 14, 'Steiermark', '6', 1),
(205, 14, 'Tirol', '7', 1),
(206, 14, 'Vorarlberg', '8', 1),
(207, 14, 'Wien', '9', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMA', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'DC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CUN', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GUV', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NSA', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VAC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VID', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Nordjyland', '81', 1),
(904, 57, 'Midtjylland', '82', 1),
(905, 57, 'Syddanmark', '83', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Hovedstaden', '84', 1),
(908, 57, 'Sjælland', '85', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BW', 1),
(1255, 81, 'Bayern', 'BY', 1),
(1256, 81, 'Berlin', 'BE', 1),
(1257, 81, 'Brandenburg', 'BB', 1),
(1258, 81, 'Bremen', 'HB', 1),
(1259, 81, 'Hamburg', 'HH', 1),
(1260, 81, 'Hessen', 'HE', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MV', 1),
(1262, 81, 'Niedersachsen', 'NI', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RP', 1),
(1265, 81, 'Saarland', 'SL', 1),
(1266, 81, 'Sachsen', 'SN', 1),
(1267, 81, 'Sachsen-Anhalt', 'ST', 1),
(1268, 81, 'Schleswig-Holstein', 'SH', 1),
(1269, 81, 'Thüringen', 'TH', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BR', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli and Davan and Diu', 'DH', 1),
(1483, 99, 'Delhi', 'DL', 1),
(1484, 99, 'Goa', 'GA', 1),
(1485, 99, 'Gujarat', 'GJ', 1),
(1486, 99, 'Haryana', 'HR', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JK', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KL', 1),
(1491, 99, 'Lakshadweep', 'LD', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MH', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ML', 1),
(1496, 99, 'Mizoram', 'MZ', 1),
(1497, 99, 'Nagaland', 'NL', 1),
(1498, 99, 'Odisha', 'OR', 1),
(1499, 99, 'Puducherry', 'PY', 1),
(1500, 99, 'Punjab', 'PB', 1),
(1501, 99, 'Rajasthan', 'RJ', 1),
(1502, 99, 'Sikkim', 'SK', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'Kirkuk', 'KI', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California', 'BCN', 1),
(2147, 138, 'Baja California Sur', 'BCS', 1),
(2148, 138, 'Campeche', 'CAM', 1),
(2149, 138, 'Chiapas', 'CHP', 1),
(2150, 138, 'Chihuahua', 'CHH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'COA', 1),
(2152, 138, 'Colima', 'COL', 1),
(2153, 138, 'Cuidad de Mexico', 'CMX', 1),
(2154, 138, 'Durango', 'DUR', 1),
(2155, 138, 'Guanajuato', 'GUA', 1),
(2156, 138, 'Guerrero', 'GRO', 1),
(2157, 138, 'Hidalgo', 'HID', 1),
(2158, 138, 'Jalisco', 'JAL', 1),
(2159, 138, 'Mexico', 'MEX', 1),
(2160, 138, 'Michoacan de Ocampo', 'MIC', 1),
(2161, 138, 'Morelos', 'MOR', 1),
(2162, 138, 'Nayarit', 'NAY', 1),
(2163, 138, 'Nuevo Leon', 'NLE', 1),
(2164, 138, 'Oaxaca', 'OAX', 1),
(2165, 138, 'Puebla', 'PUE', 1),
(2166, 138, 'Queretaro', 'QUE', 1),
(2167, 138, 'Quintana Roo', 'ROO', 1),
(2168, 138, 'San Luis Potosi', 'SLP', 1),
(2169, 138, 'Sinaloa', 'SIN', 1),
(2170, 138, 'Sonora', 'SON', 1),
(2171, 138, 'Tabasco', 'TAB', 1),
(2172, 138, 'Tamaulipas', 'TAM', 1),
(2173, 138, 'Tlaxcala', 'TLA', 1),
(2174, 138, 'Veracruz de Ignacio de la Llave', 'VER', 1),
(2175, 138, 'Yucatan', 'YUC', 1),
(2176, 138, 'Zacatecas', 'ZAC', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', '02', 1),
(2632, 170, 'Kujawsko-Pomorskie', '94', 1),
(2633, 170, 'Lodzkie', '10', 1),
(2634, 170, 'Lubelskie', '06', 1),
(2635, 170, 'Lubuskie', '08', 1),
(2636, 170, 'Malopolskie', '12', 1),
(2637, 170, 'Mazowieckie', '14', 1),
(2638, 170, 'Opolskie', '16', 1),
(2639, 170, 'Podkarpackie', '18', 1),
(2640, 170, 'Podlaskie', '20', 1),
(2641, 170, 'Pomorskie', '22', 1),
(2642, 170, 'Slaskie', '24', 1),
(2643, 170, 'Swietokrzyskie', '26', 1),
(2644, 170, 'Warminsko-Mazurskie', '28', 1),
(2645, 170, 'Wielkopolskie', '30', 1),
(2646, 170, 'Zachodniopomorskie', '32', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', '20', 1),
(2650, 171, 'Aveiro', '01', 1),
(2651, 171, 'Beja', '02', 1),
(2652, 171, 'Braga', '03', 1),
(2653, 171, 'Bragan&ccedil;a', '04', 1),
(2654, 171, 'Castelo Branco', '05', 1),
(2655, 171, 'Coimbra', '06', 1),
(2656, 171, '&Eacute;vora', '07', 1),
(2657, 171, 'Faro', '08', 1),
(2658, 171, 'Guarda', '09', 1),
(2659, 171, 'Leiria', '10', 1),
(2660, 171, 'Lisboa', '11', 1),
(2661, 171, 'Madeira', '30', 1),
(2662, 171, 'Portalegre', '12', 1),
(2663, 171, 'Porto', '13', 1),
(2664, 171, 'Santar&eacute;m', '14', 1),
(2665, 171, 'Set&uacute;bal', '15', 1),
(2666, 171, 'Viana do Castelo', '16', 1),
(2667, 171, 'Vila Real', '17', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Argeș', 'AG', 1),
(2682, 175, 'Bacău', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrița-Năsăud', 'BN', 1),
(2685, 175, 'Botoșani', 'BT', 1),
(2686, 175, 'Brașov', 'BV', 1),
(2687, 175, 'Brăila', 'BR', 1),
(2688, 175, 'București', 'B', 1),
(2689, 175, 'Buzău', 'BZ', 1),
(2690, 175, 'Caraș-Severin', 'CS', 1),
(2691, 175, 'Călărași', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanța', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dâmbovița', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galați', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomița', 'IL', 1),
(2703, 175, 'Iași', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramureș', 'MM', 1),
(2706, 175, 'Mehedinți', 'MH', 1),
(2707, 175, 'Mureș', 'MS', 1),
(2708, 175, 'Neamț', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Sălaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timiș', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Vâlcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BC', 1),
(2926, 189, 'Bratislavský', 'BL', 1),
(2927, 189, 'Košický', 'KI', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PV', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TA', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GP', 1),
(2964, 193, 'KwaZulu-Natal', 'KZN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'C', 1),
(2971, 195, '&Aacute;lava', 'VI', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'A', 1),
(2974, 195, 'Almeria', 'AL', 1),
(2975, 195, 'Asturias', 'O', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BA', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'B', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CA', 1),
(2983, 195, 'Cantabria', 'S', 1),
(2984, 195, 'Castell&oacute;n', 'CS', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CO', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GR', 1),
(2991, 195, 'Guadalajara', 'GU', 1),
(2992, 195, 'Guip&uacute;zcoa', 'SS', 1),
(2993, 195, 'Huelva', 'H', 1),
(2994, 195, 'Huesca', 'HU', 1),
(2995, 195, 'Ja&eacute;n', 'J', 1),
(2996, 195, 'La Rioja', 'LO', 1),
(2997, 195, 'Las Palmas', 'GC', 1),
(2998, 195, 'Leon', 'CL', 1),
(2999, 195, 'Lleida', 'L', 1),
(3000, 195, 'Lugo', 'LU', 1),
(3001, 195, 'Madrid', 'M', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NA', 1),
(3006, 195, 'Ourense', 'OR', 1),
(3007, 195, 'Palencia', 'P', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SA', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'TF', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SE', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'T', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'V', 1),
(3018, 195, 'Valladolid', 'VA', 1),
(3019, 195, 'Bizkaia', 'BI', 1),
(3020, 195, 'Zamora', 'ZA', 1),
(3021, 195, 'Zaragoza', 'Z', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', '37', 1),
(3190, 209, 'Ang Thong', '15', 1),
(3192, 209, 'Bangkok', '10', 1),
(3193, 209, 'Buri Ram', '31', 1),
(3194, 209, 'Chachoengsao', '24', 1),
(3195, 209, 'Chai Nat', '18', 1),
(3196, 209, 'Chaiyaphum', '36', 1),
(3197, 209, 'Chanthaburi', '22', 1),
(3198, 209, 'Chiang Mai', '50', 1),
(3199, 209, 'Chiang Rai', '57', 1),
(3200, 209, 'Chon Buri', '20', 1),
(3201, 209, 'Chumphon', '86', 1),
(3202, 209, 'Kalasin', '46', 1),
(3203, 209, 'Kamphaeng Phet', '62', 1),
(3204, 209, 'Kanchanaburi', '71', 1),
(3205, 209, 'Khon Kaen', '40', 1),
(3206, 209, 'Krabi', '81', 1),
(3207, 209, 'Lampang', '52', 1),
(3208, 209, 'Lamphun', '51', 1),
(3209, 209, 'Loei', '42', 1),
(3210, 209, 'Lop Buri', '1', 1),
(3211, 209, 'Mae Hong Son', '55', 1),
(3212, 209, 'Maha Sarakham', '44', 1),
(3213, 209, 'Mukdahan', '49', 1),
(3214, 209, 'Nakhon Nayok', '26', 1),
(3215, 209, 'Nakhon Pathom', '73', 1),
(3216, 209, 'Nakhon Phanom', '48', 1),
(3217, 209, 'Nakhon Ratchasima', '30', 1),
(3218, 209, 'Nakhon Sawan', '60', 1),
(3219, 209, 'Nakhon Si Thammarat', '80', 1),
(3220, 209, 'Nan', '55', 1),
(3221, 209, 'Narathiwat', '96', 1),
(3222, 209, 'Nong Bua Lamphu', '39', 1),
(3223, 209, 'Nong Khai', '43', 1),
(3224, 209, 'Nonthaburi', '12', 1),
(3225, 209, 'Pathum Thani', '13', 1),
(3226, 209, 'Pattani', '94', 1),
(3227, 209, 'Phangnga', '82', 1),
(3228, 209, 'Phatthalung', '93', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', '67', 1),
(3231, 209, 'Phetchaburi', '76', 1),
(3232, 209, 'Phichit', '66', 1),
(3233, 209, 'Phitsanulok', '65', 1),
(3234, 209, 'Phrae', '54', 1),
(3235, 209, 'Phuket', '83', 1),
(3236, 209, 'Prachin Buri', '25', 1),
(3237, 209, 'Prachuap Khiri Khan', '77', 1),
(3238, 209, 'Ranong', '21', 1),
(3239, 209, 'Ratchaburi', '70', 1),
(3240, 209, 'Rayong', '21', 1),
(3241, 209, 'Roi Et', '45', 1),
(3242, 209, 'Sa Kaeo', '27', 1),
(3243, 209, 'Sakon Nakhon', '47', 1),
(3244, 209, 'Samut Prakan', '11', 1),
(3245, 209, 'Samut Sakhon', '74', 1),
(3246, 209, 'Samut Songkhram', '75', 1),
(3247, 209, 'Saraburi', '19', 1),
(3248, 209, 'Satun', '91', 1),
(3249, 209, 'Sing Buri', '17', 1),
(3250, 209, 'Si Sa Ket', '33', 1),
(3251, 209, 'Songkhla', '90', 1),
(3252, 209, 'Sukhothai', '64', 1),
(3253, 209, 'Suphan Buri', '72', 1),
(3254, 209, 'Surat Thani', '84', 1),
(3255, 209, 'Surin', '32', 1),
(3256, 209, 'Tak', '63', 1),
(3257, 209, 'Trang', '92', 1),
(3258, 209, 'Trat', '23', 1),
(3259, 209, 'Ubon Ratchathani', '34', 1),
(3260, 209, 'Udon Thani', '41', 1),
(3261, 209, 'Uthai Thani', '61', 1),
(3262, 209, 'Uttaradit', '53', 1),
(3263, 209, 'Yala', '95', 1),
(3264, 209, 'Yasothon', '35', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'TR-01', 1),
(3316, 215, 'Adıyaman', 'TR-02', 1),
(3317, 215, 'Afyonkarahisar', 'TR-03', 1),
(3318, 215, 'Ağrı', 'TR-04', 1),
(3319, 215, 'Aksaray', 'TR-68', 1),
(3320, 215, 'Amasya', 'TR-05', 1),
(3321, 215, 'Ankara', 'TR-06', 1),
(3322, 215, 'Antalya', 'TR-07', 1),
(3323, 215, 'Ardahan', 'TR-75', 1),
(3324, 215, 'Artvin', 'TR-08', 1),
(3325, 215, 'Aydın', 'TR-09', 1),
(3326, 215, 'Balıkesir', 'TR-10', 1),
(3327, 215, 'Bartın', 'TR-74', 1),
(3328, 215, 'Batman', 'TR-72', 1),
(3329, 215, 'Bayburt', 'TR-69', 1),
(3330, 215, 'Bilecik', 'TR-11', 1),
(3331, 215, 'Bingöl', 'TR-12', 1),
(3332, 215, 'Bitlis', 'TR-13', 1),
(3333, 215, 'Bolu', 'TR-14', 1),
(3334, 215, 'Burdur', 'TR-15', 1),
(3335, 215, 'Bursa', 'TR-16', 1),
(3336, 215, 'Çanakkale', 'TR-17', 1),
(3337, 215, 'Çankırı', 'TR-18', 1),
(3338, 215, 'Çorum', 'TR-19', 1),
(3339, 215, 'Denizli', 'TR-20', 1),
(3340, 215, 'Diyarbakır', 'TR-21', 1),
(3341, 215, 'Düzce', 'TR-81', 1),
(3342, 215, 'Edirne', 'TR-22', 1),
(3343, 215, 'Elazığ', 'TR-23', 1),
(3344, 215, 'Erzincan', 'TR-24', 1),
(3345, 215, 'Erzurum', 'TR-25', 1),
(3346, 215, 'Eskişehir', 'TR-26', 1),
(3347, 215, 'Gaziantep', 'TR-27', 1),
(3348, 215, 'Giresun', 'TR-28', 1),
(3349, 215, 'Gümüşhane', 'TR-29', 1),
(3350, 215, 'Hakkari', 'TR-30', 1),
(3351, 215, 'Hatay', 'TR-31', 1),
(3352, 215, 'Iğdır', 'TR-76', 1),
(3353, 215, 'Isparta', 'TR-32', 1),
(3354, 215, 'İstanbul', 'TR-34', 1),
(3355, 215, 'İzmir', 'TR-35', 1),
(3356, 215, 'Kahramanmaraş', 'TR-46', 1),
(3357, 215, 'Karabük', 'TR-78', 1),
(3358, 215, 'Karaman', 'TR-70', 1),
(3359, 215, 'Kars', 'TR-36', 1),
(3360, 215, 'Kastamonu', 'TR-37', 1),
(3361, 215, 'Kayseri', 'TR-38', 1),
(3362, 215, 'Kilis', 'TR-79', 1),
(3363, 215, 'Kırıkkale', 'TR-71', 1),
(3364, 215, 'Kırklareli', 'TR-39', 1),
(3365, 215, 'Kırşehir', 'TR-40', 1),
(3366, 215, 'Kocaeli', 'TR-41', 1),
(3367, 215, 'Konya', 'TR-42', 1),
(3368, 215, 'Kütahya', 'TR-43', 1),
(3369, 215, 'Malatya', 'TR-44', 1),
(3370, 215, 'Manisa', 'TR-45', 1),
(3371, 215, 'Mardin', 'TR-47', 1),
(3372, 215, 'Mersin', 'TR-33', 1),
(3373, 215, 'Muğla', 'TR-48', 1),
(3374, 215, 'Muş', 'TR-49', 1),
(3375, 215, 'Nevşehir', 'TR-50', 1),
(3376, 215, 'Niğde', 'TR-51', 1),
(3377, 215, 'Ordu', 'TR-52', 1),
(3378, 215, 'Osmaniye', 'TR-80', 1),
(3379, 215, 'Rize', 'TR-53', 1),
(3380, 215, 'Sakarya', 'TR-54', 1),
(3381, 215, 'Samsun', 'TR-55', 1),
(3382, 215, 'Şanlıurfa', 'TR-63', 1),
(3383, 215, 'Siirt', 'TR-56', 1),
(3384, 215, 'Sinop', 'TR-57', 1),
(3385, 215, 'Şırnak', 'TR-73', 1),
(3386, 215, 'Sivas', 'TR-58', 1),
(3387, 215, 'Tekirdağ', 'TR-59', 1),
(3388, 215, 'Tokat', 'TR-60', 1),
(3389, 215, 'Trabzon', 'TR-61', 1),
(3390, 215, 'Tunceli', 'TR-62', 1),
(3391, 215, 'Uşak', 'TR-64', 1),
(3392, 215, 'Van', 'TR-65', 1),
(3393, 215, 'Yalova', 'TR-77', 1),
(3394, 215, 'Yozgat', 'TR-66', 1),
(3395, 215, 'Zonguldak', 'TR-67', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkaska', '23', 1),
(3481, 220, 'Chernihivska', '25', 1),
(3482, 220, 'Chernivetska', '24', 1),
(3483, 220, 'Avtonomna Respublika Krym', '27', 1),
(3484, 220, 'Dnipropetrovska', '04', 1),
(3485, 220, 'Donetska', '05', 1),
(3486, 220, 'Ivano-Frankivska', '09', 1),
(3487, 220, 'Khersonska', '21', 1),
(3488, 220, 'Khmelnytska', '22', 1),
(3489, 220, 'Kirovohradska', '35', 1),
(3490, 220, 'Kyiv', '26', 1),
(3491, 220, 'Kyivska', '10', 1),
(3492, 220, 'Luhanska', '12', 1),
(3493, 220, 'Lvivska', '13', 1),
(3494, 220, 'Mykolaivska', '14', 1),
(3495, 220, 'Odeska', '15', 1),
(3496, 220, 'Poltavska', '16', 1),
(3497, 220, 'Rivnenska', '17', 1),
(3498, 220, 'Sevastopol', '28', 1),
(3499, 220, 'Sumska', '18', 1),
(3500, 220, 'Ternopilska', '19', 1),
(3501, 220, 'Vinnytska', '02', 1),
(3502, 220, 'Volynska', '03', 1),
(3503, 220, 'Zakarpatska', '07', 1),
(3504, 220, 'Zaporizka', '08', 1),
(3505, 220, 'Zhytomyrskа', '06', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shāriqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'Ra’s al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'Z', 1),
(3727, 229, 'Anzoategui', 'B', 1),
(3728, 229, 'Apure', 'C', 1),
(3729, 229, 'Aragua', 'D', 1),
(3730, 229, 'Barinas', 'E', 1),
(3731, 229, 'Bolivar', 'F', 1),
(3732, 229, 'Carabobo', 'G', 1),
(3733, 229, 'Cojedes', 'H', 1),
(3734, 229, 'Delta Amacuro', 'Y', 1),
(3735, 229, 'Dependencias Federales', 'W', 1),
(3736, 229, 'Distrito Capital', 'A', 1),
(3737, 229, 'Falcon', 'I', 1),
(3738, 229, 'Guarico', 'J', 1),
(3739, 229, 'Lara', 'K', 1),
(3740, 229, 'Merida', 'L', 1),
(3741, 229, 'Miranda', 'M', 1),
(3742, 229, 'Monagas', 'N', 1),
(3743, 229, 'Nueva Esparta', 'O', 1),
(3744, 229, 'Portuguesa', 'P', 1),
(3745, 229, 'Sucre', 'R', 1),
(3746, 229, 'Tachira', 'S', 1),
(3747, 229, 'Trujillo', 'T', 1),
(3748, 229, 'Vargas', 'X', 1),
(3749, 229, 'Yaracuy', 'U', 1),
(3750, 229, 'Zulia', 'V', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(4038, 117, 'Aizkraukles novads', '002', 1),
(4040, 117, 'Aizputes novads', '003', 1),
(4042, 117, 'Aknīstes novads', '004', 1),
(4044, 117, 'Alojas novads', '005', 1),
(4045, 117, 'Alsungas novads', '006', 1),
(4047, 117, 'Alūksnes novads', '007', 1),
(4048, 117, 'Amatas novads', '008', 1),
(4050, 117, 'Apes novads', '008', 1),
(4052, 117, 'Auces novads', '010', 1),
(4053, 117, 'Ādažu novads', '011', 1),
(4054, 117, 'Babītes novads', '012', 1),
(4056, 117, 'Baldones novads', '013', 1),
(4058, 117, 'Baltinavas novads', '014', 1),
(4060, 117, 'Balvu novads', '015', 1),
(4062, 117, 'Bauskas novads', '016', 1),
(4063, 117, 'Beverīnas novads', '017', 1),
(4065, 117, 'Brocēnu novads', '018', 1),
(4066, 117, 'Burtnieku novads', '019', 1),
(4067, 117, 'Carnikavas novads', '020', 1),
(4069, 117, 'Cesvaines novads', '021', 1),
(4071, 117, 'Cēsu novads', '022', 1),
(4072, 117, 'Ciblas novads', '023', 1),
(4074, 117, 'Dagdas novads', '024', 1),
(4075, 117, 'Daugavpils', 'DGV', 1),
(4076, 117, 'Daugavpils novads', '025', 1),
(4078, 117, 'Dobeles novads', '026', 1),
(4079, 117, 'Dundagas novads', '027', 1),
(4081, 117, 'Durbes novads', '028', 1),
(4082, 117, 'Engures novads', '029', 1),
(4083, 117, 'Ērgļu novads', '030', 1),
(4084, 117, 'Garkalnes novads', '031', 1),
(4086, 117, 'Grobiņas novads', '032', 1),
(4088, 117, 'Gulbenes novads', '033', 1),
(4089, 117, 'Iecavas novads', '034', 1),
(4091, 117, 'Ikšķiles novads', '035', 1),
(4093, 117, 'Ilūkstes novads', '036', 1),
(4094, 117, 'Inčukalna novads', '037', 1),
(4096, 117, 'Jaunjelgavas novads', '038', 1),
(4097, 117, 'Jaunpiebalgas novads', '039', 1),
(4098, 117, 'Jaunpils novads', '040', 1),
(4099, 117, 'Jelgava', 'JEL', 1),
(4100, 117, 'Jelgavas novads', '041', 1),
(4101, 117, 'Jēkabpils', 'JKB', 1),
(4102, 117, 'Jēkabpils novads', '042', 1),
(4103, 117, 'Jūrmala', 'JUR', 1),
(4106, 117, 'Kandavas novads', '043', 1),
(4108, 117, 'Kārsavas novads', '044', 1),
(4110, 117, 'Kokneses novads', '046', 1),
(4112, 117, 'Krāslavas novads', '047', 1),
(4113, 117, 'Krimuldas novads', '048', 1),
(4114, 117, 'Krustpils novads', '049', 1),
(4116, 117, 'Kuldīgas novads', '050', 1),
(4117, 117, 'Ķeguma novads', '051', 1),
(4119, 117, 'Ķekavas novads', '052', 1),
(4121, 117, 'Lielvārdes novads', '053', 1),
(4122, 117, 'Liepāja', 'LPX', 1),
(4124, 117, 'Limbažu novads', '054', 1),
(4126, 117, 'Līgatnes novads', '055', 1),
(4128, 117, 'Līvānu novads', '056', 1),
(4130, 117, 'Lubānas novads', '057', 1),
(4132, 117, 'Ludzas novads', '058', 1),
(4134, 117, 'Madonas novads', '059', 1),
(4136, 117, 'Mazsalacas novads', '060', 1),
(4137, 117, 'Mālpils novads', '061', 1),
(4138, 117, 'Mārupes novads', '062', 1),
(4139, 117, 'Mērsraga novads', '063', 1),
(4140, 117, 'Naukšēnu novads', '064', 1),
(4141, 117, 'Neretas novads', '065', 1),
(4142, 117, 'Nīcas novads', '066', 1),
(4144, 117, 'Ogres novads', '067', 1),
(4146, 117, 'Olaines novads', '068', 1),
(4147, 117, 'Ozolnieku novads', '069', 1),
(4148, 117, 'Pārgaujas novads', '070', 1),
(4150, 117, 'Pāvilostas novads', '071', 1),
(4153, 117, 'Pļaviņu novads', '072', 1),
(4155, 117, 'Preiļu novads', '073', 1),
(4157, 117, 'Priekules novads', '074', 1),
(4158, 117, 'Priekuļu novads', '075', 1),
(4159, 117, 'Raunas novads', '076', 1),
(4160, 117, 'Rēzekne', 'REZ', 1),
(4161, 117, 'Rēzeknes novads', '077', 1),
(4162, 117, 'Riebiņu novads', '078', 1),
(4163, 117, 'Rīga', 'RIX', 1),
(4164, 117, 'Rojas novads', '079', 1),
(4165, 117, 'Ropažu novads', '080', 1),
(4166, 117, 'Rucavas novads', '081', 1),
(4167, 117, 'Rugāju novads', '082', 1),
(4168, 117, 'Rundāles novads', '083', 1),
(4170, 117, 'Rūjienas novads', '084', 1),
(4173, 117, 'Salacgrīvas novads', '086', 1),
(4174, 117, 'Salas novads', '085', 1),
(4175, 117, 'Salaspils novads', '087', 1),
(4177, 117, 'Saldus novads', '088', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4180, 117, 'Saulkrastu novads', '089', 1),
(4182, 117, 'Sējas novads', '090', 1),
(4184, 117, 'Siguldas novads', '091', 1),
(4185, 117, 'Skrīveru novads', '092', 1),
(4187, 117, 'Skrundas novads', '093', 1),
(4189, 117, 'Smiltenes novads', '094', 1),
(4192, 117, 'Stopiņu novads', '095', 1),
(4194, 117, 'Strenču novads', '096', 1),
(4197, 117, 'Talsu novads', '097', 1),
(4198, 117, 'Tērvetes novads', '098', 1),
(4199, 117, 'Tukuma novads', '099', 1),
(4201, 117, 'Vaiņodes novads', '100', 1),
(4204, 117, 'Valkas novads', '101', 1),
(4205, 117, 'Valmiera', 'VMR', 1),
(4208, 117, 'Varakļānu novads', '102', 1),
(4209, 117, 'Vārkavas novads', '103', 1),
(4210, 117, 'Vecpiebalgas novads', '104', 1),
(4211, 117, 'Vecumnieku novads', '105', 1),
(4212, 117, 'Ventspils', 'VEN', 1),
(4213, 117, 'Ventspils novads', '106', 1),
(4215, 117, 'Viesītes novads', '107', 1),
(4217, 117, 'Viļakas novads', '108', 1),
(4219, 117, 'Viļānu novads', '109', 1),
(4221, 117, 'Zilupes novads', '110', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1),
(4239, 113, 'Seoul-teukbyeolsi', '11', 1),
(4240, 113, 'Busan-gwangyeoksi', '26', 1),
(4241, 113, 'Daegu-gwangyeoksi', '27', 1),
(4242, 113, 'Daejeon-gwangyeoksi', '30', 1),
(4243, 113, 'Gwangju-gwangyeoksi', '29', 1),
(4244, 113, 'Incheon-gwangyeoksi', '28', 1),
(4245, 113, 'Ulsan-gwangyeoksi', '31', 1),
(4246, 113, 'Chungcheongbuk-do', '43', 1),
(4247, 113, 'Chungcheongnam-do', '44', 1),
(4248, 113, 'Gangwon-do', '42', 1),
(4249, 113, 'Gyeonggi-do', '41', 1),
(4250, 113, 'Gyeongsangbuk-do', '47', 1),
(4251, 113, 'Gyeongsangnam-do', '48', 1),
(4252, 113, 'Jeollabuk-do', '45', 1),
(4253, 113, 'Jeollanam-do', '46', 1),
(4254, 113, 'Jeju-teukbyeoljachido', '49', 1),
(4255, 113, 'Sejong-teukbyeoljachisi', '50', 1),
(4256, 209, 'Phra Nakhon Si Ayutthaya', '14', 1),
(4257, 176, 'Adygea, Republic of', 'RU-AD', 1),
(4258, 176, 'Bashkortostan, Republic of', 'RU-BA', 1),
(4259, 176, 'Buryatia, Republic of', 'RU-BU', 1),
(4260, 176, 'Altai Republic', 'RU-AL', 1),
(4261, 176, 'Dagestan, Republic of', 'RU-DA', 1),
(4262, 176, 'Ingushetia, Republic of', 'RU-IN', 1),
(4263, 176, 'Kabardino-Balkar Republic', 'RU-KB', 1),
(4264, 176, 'Kalmykia, Republic of', 'RU-KL', 1),
(4265, 176, 'Karachay-Cherkess Republic', 'RU-KC', 1),
(4266, 176, 'Karelia, Republic of', 'RU-KR', 1),
(4267, 176, 'Komi Republic', 'RU-KO', 1),
(4268, 176, 'Mari El Republic', 'RU-ME', 1),
(4269, 176, 'Mordovia, Republic of', 'RU-MO', 1),
(4270, 176, 'Sakha (Yakutia) Republic', 'RU-SA', 1),
(4271, 176, 'North Ossetia-Alania, Republic of', 'RU-SE', 1),
(4272, 176, 'Tatarstan, Republic of', 'RU-TA', 1),
(4273, 176, 'Tuva Republic', 'RU-TY', 1),
(4274, 176, 'Udmurt Republic', 'RU-UD', 1),
(4275, 176, 'Khakassia, Republic of', 'RU-KK', 1),
(4276, 176, 'Chechen Republic', 'RU-CE', 1),
(4277, 176, 'Chuvash Republic', 'RU-CU', 1),
(4278, 176, 'Altai Krai', 'RU-ALT', 1),
(4279, 176, 'Krasnodar Krai', 'RU-KDA', 1),
(4280, 176, 'Krasnoyarsk Krai', 'RU-KYA', 1),
(4281, 176, 'Primorsky Krai', 'RU-PRI', 1),
(4282, 176, 'Stavropol Krai', 'RU-STA', 1),
(4283, 176, 'Khabarovsk Krai', 'RU-KHA', 1),
(4284, 176, 'Amur Oblast', 'RU-AMU', 1),
(4285, 176, 'Arkhangelsk Oblast', 'RU-ARK', 1),
(4286, 176, 'Astrakhan Oblast', 'RU-AST', 1),
(4287, 176, 'Belgorod Oblast', 'RU-BEL', 1),
(4288, 176, 'Bryansk Oblast', 'RU-BRY', 1),
(4289, 176, 'Vladimir Oblast', 'RU-VLA', 1),
(4290, 176, 'Volgograd Oblast', 'RU-VGG', 1),
(4291, 176, 'Vologda Oblast', 'RU-VLG', 1),
(4292, 176, 'Voronezh Oblast', 'RU-VOR', 1),
(4293, 176, 'Ivanovo Oblast', 'RU-IVA', 1),
(4294, 176, 'Irkutsk Oblast', 'RU-IRK', 1),
(4295, 176, 'Kaliningrad Oblast', 'RU-KGD', 1),
(4296, 176, 'Kaluga Oblast', 'RU-KLU', 1),
(4297, 176, 'Kamchatka Krai', 'RU-KAM', 1),
(4298, 176, 'Kemerovo Oblast', 'RU-KEM', 1),
(4299, 176, 'Kirov Oblast', 'RU-KIR', 1),
(4300, 176, 'Kostroma Oblast', 'RU-KOS', 1),
(4301, 176, 'Kurgan Oblast', 'RU-KGN', 1),
(4302, 176, 'Kursk Oblast', 'RU-KRS', 1),
(4303, 176, 'Leningrad Oblast', 'RU-LEN', 1),
(4304, 176, 'Lipetsk Oblast', 'RU-LIP', 1),
(4305, 176, 'Magadan Oblast', 'RU-MAG', 1),
(4306, 176, 'Moscow Oblast', 'RU-MOS', 1),
(4307, 176, 'Murmansk Oblast', 'RU-MUR', 1),
(4308, 176, 'Nizhny Novgorod Oblast', 'RU-NIZ', 1),
(4309, 176, 'Novgorod Oblast', 'RU-NGR', 1),
(4310, 176, 'Novosibirsk Oblast', 'RU-NVS', 1),
(4311, 176, 'Omsk Oblast', 'RU-OMS', 1),
(4312, 176, 'Orenburg Oblast', 'RU-ORE', 1),
(4313, 176, 'Oryol Oblast', 'RU-ORL', 1),
(4314, 176, 'Penza Oblast', 'RU-PNZ', 1),
(4315, 176, 'Perm Krai', 'RU-PER', 1),
(4316, 176, 'Pskov Oblast', 'RU-PSK', 1),
(4317, 176, 'Rostov Oblast', 'RU-ROS', 1),
(4318, 176, 'Ryazan Oblast', 'RU-RYA', 1),
(4319, 176, 'Samara Oblast', 'RU-SAM', 1),
(4320, 176, 'Saratov Oblast', 'RU-SAR', 1),
(4321, 176, 'Sakhalin Oblast', 'RU-SAK', 1),
(4322, 176, 'Sverdlovsk Oblast', 'RU-SVE', 1),
(4323, 176, 'Smolensk Oblast', 'RU-SMO', 1),
(4324, 176, 'Tambov Oblast', 'RU-TAM', 1),
(4325, 176, 'Tver Oblast', 'RU-TVE', 1),
(4326, 176, 'Tomsk Oblast', 'RU-TOM', 1),
(4327, 176, 'Tula Oblast', 'RU-TUL', 1),
(4328, 176, 'Tyumen Oblast', 'RU-TYU', 1),
(4329, 176, 'Ulyanovsk Oblast', 'RU-ULY', 1),
(4330, 176, 'Chelyabinsk Oblast', 'RU-CHE', 1),
(4331, 176, 'Zabaykalsky Krai', 'RU-ZAB', 1),
(4332, 176, 'Yaroslavl Oblast', 'RU-YAR', 1),
(4333, 176, 'Moscow', 'RU-MOW', 1),
(4334, 176, 'Saint Petersburg', 'RU-SPE', 1),
(4335, 176, 'Jewish Autonomous Oblast', 'RU-YEV', 1),
(4336, 176, 'Nenets Autonomous Okrug', 'RU-NEN', 1),
(4337, 176, 'Khanty–Mansi Autonomous Okrug – Yugra', 'RU-KHM', 1),
(4338, 176, 'Chukotka Autonomous Okrug', 'RU-CHU', 1),
(4339, 176, 'Yamalo-Nenets Autonomous Okrug', 'RU-YAN', 1),
(4340, 117, 'Aglonas novads', '001', 1),
(4341, 99, 'Chhattisgarh', 'CT', 1),
(4342, 99, 'Ladakh', 'LA', 1),
(4343, 99, 'Uttarakhand', 'UT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int NOT NULL,
  `country_id` int NOT NULL,
  `zone_id` int NOT NULL DEFAULT '0',
  `geo_zone_id` int NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

  MODIFY `zone_to_geo_zone_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
