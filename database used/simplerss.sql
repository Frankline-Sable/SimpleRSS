-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2020 at 12:22 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplerss`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `vacancy_id` (`vacancy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
CREATE TABLE IF NOT EXISTS `feeds` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

DROP TABLE IF EXISTS `job_categories`;
CREATE TABLE IF NOT EXISTS `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Accounting', NULL, NULL),
(2, 'Airlines / Aviation', NULL, NULL),
(3, 'Alternative Dispute Resolution', NULL, NULL),
(4, 'Alternative Medicine', NULL, NULL),
(5, 'Animation', NULL, NULL),
(6, 'Apparel / Fashion', NULL, NULL),
(7, 'Architecture / Planning', NULL, NULL),
(8, 'Arts / Crafts', NULL, NULL),
(9, 'Automotive', NULL, NULL),
(10, 'Aviation / Aerospace', NULL, NULL),
(11, 'Banking / Mortgage', NULL, NULL),
(12, 'Biotechnology / Greentech', NULL, NULL),
(13, 'Broadcast Media', NULL, NULL),
(14, 'Building Materials', NULL, NULL),
(15, 'Business Supplies / Equipment', NULL, NULL),
(16, 'Capital Markets / Hedge Fund / Private Equity', NULL, NULL),
(17, 'Chemicals', NULL, NULL),
(18, 'Civic / Social Organization', NULL, NULL),
(19, 'Civil Engineering', NULL, NULL),
(20, 'Commercial Real Estate', NULL, NULL),
(21, 'Computer Games', NULL, NULL),
(22, 'Computer Hardware', NULL, NULL),
(23, 'Computer Networking', NULL, NULL),
(24, 'Computer Software / Engineering', NULL, NULL),
(25, 'Computer / Network Security', NULL, NULL),
(26, 'Construction', NULL, NULL),
(27, 'Consumer Electronics', NULL, NULL),
(28, 'Consumer Goods', NULL, NULL),
(29, 'Consumer Services', NULL, NULL),
(30, 'Cosmetics', NULL, NULL),
(31, 'Dairy', NULL, NULL),
(32, 'Defense / Space', NULL, NULL),
(33, 'Design', NULL, NULL),
(34, 'E - Learning', NULL, NULL),
(35, 'Education Management', NULL, NULL),
(36, 'Electrical / Electronic Manufacturing', NULL, NULL),
(37, 'Entertainment / Movie Production', NULL, NULL),
(38, 'Environmental Services', NULL, NULL),
(39, 'Events Services', NULL, NULL),
(40, 'Executive Office', NULL, NULL),
(41, 'Facilities Services', NULL, NULL),
(42, 'Farming', NULL, NULL),
(43, 'Financial Services', NULL, NULL),
(44, 'Fine Art', NULL, NULL),
(45, 'Fishery', NULL, NULL),
(46, 'Food Production', NULL, NULL),
(47, 'Food / Beverages', NULL, NULL),
(48, 'Fundraising', NULL, NULL),
(49, 'Furniture', NULL, NULL),
(50, 'Gambling / Casinos', NULL, NULL),
(51, 'Glass / Ceramics / Concrete', NULL, NULL),
(52, 'Government Administration', NULL, NULL),
(53, 'Government Relations', NULL, NULL),
(54, 'Graphic Design / Web Design', NULL, NULL),
(55, 'Health / Fitness', NULL, NULL),
(56, 'Higher Education / Acadamia', NULL, NULL),
(57, 'Hospital / Health Care', NULL, NULL),
(58, 'Hospitality', NULL, NULL),
(59, 'Human Resources / HR', NULL, NULL),
(60, 'Import / Export', NULL, NULL),
(61, 'Individual / Family Services', NULL, NULL),
(62, 'Industrial Automation', NULL, NULL),
(63, 'Information Services', NULL, NULL),
(64, 'Information Technology / IT', NULL, NULL),
(65, 'Insurance', NULL, NULL),
(66, 'International Affairs', NULL, NULL),
(67, 'International Trade / Development', NULL, NULL),
(68, 'Internet', NULL, NULL),
(69, 'Investment Banking / Venture', NULL, NULL),
(70, 'Investment Management / Hedge Fund / Private Equity', NULL, NULL),
(71, 'Judiciary', NULL, NULL),
(72, 'Law Enforcement', NULL, NULL),
(73, 'Law Practice / Law Firms', NULL, NULL),
(74, 'Legal Services', NULL, NULL),
(75, 'Legislative Office', NULL, NULL),
(76, 'Leisure / Travel', NULL, NULL),
(77, 'Library', NULL, NULL),
(78, 'Logistics / Procurement', NULL, NULL),
(79, 'Luxury Goods / Jewelry', NULL, NULL),
(80, 'Machinery', NULL, NULL),
(81, 'Management Consulting', NULL, NULL),
(82, 'Maritime', NULL, NULL),
(83, 'Market Research', NULL, NULL),
(84, 'Marketing / Advertising / Sales', NULL, NULL),
(85, 'Mechanical or Industrial Engineering', NULL, NULL),
(86, 'Media Production', NULL, NULL),
(87, 'Medical Equipment', NULL, NULL),
(88, 'Medical Practice', NULL, NULL),
(89, 'Mental Health Care', NULL, NULL),
(90, 'Military Industry', NULL, NULL),
(91, 'Mining / Metals', NULL, NULL),
(92, 'Motion Pictures / Film', NULL, NULL),
(93, 'Museums / Institutions', NULL, NULL),
(94, 'Music', NULL, NULL),
(95, 'Nanotechnology', NULL, NULL),
(96, 'Newspapers / Journalism', NULL, NULL),
(97, 'Non - Profit / Volunteering', NULL, NULL),
(98, 'Oil / Energy / Solar / Greentech', NULL, NULL),
(99, 'Online Publishing', NULL, NULL),
(100, 'Others', NULL, NULL),
(101, 'Outsourcing / Offshoring', NULL, NULL),
(102, 'Package / Freight Delivery', NULL, NULL),
(103, 'Packaging / Containers', NULL, NULL),
(104, 'Paper / Forest Products', NULL, NULL),
(105, 'Performing Arts', NULL, NULL),
(106, 'Pharmaceuticals', NULL, NULL),
(107, 'Philanthropy', NULL, NULL),
(108, 'Photography', NULL, NULL),
(109, 'Plastics', NULL, NULL),
(110, 'Political Organization', NULL, NULL),
(111, 'Primary / Secondary Education', NULL, NULL),
(112, 'Printing', NULL, NULL),
(113, 'Professional Training', NULL, NULL),
(114, 'Program Development', NULL, NULL),
(115, 'Public Relations / PR', NULL, NULL),
(116, 'Public Safety', NULL, NULL),
(117, 'Publishing Industry', NULL, NULL),
(118, 'Railroad Manufacture', NULL, NULL),
(119, 'Ranching', NULL, NULL),
(120, 'Real Estate / Mortgage', NULL, NULL),
(121, 'Recreational Facilities / Services', NULL, NULL),
(122, 'Religious Institutions', NULL, NULL),
(123, 'Renewables / Environment', NULL, NULL),
(124, 'Research Industry', NULL, NULL),
(125, 'Restaurants', NULL, NULL),
(126, 'Retail Industry', NULL, NULL),
(127, 'Security / Investigations', NULL, NULL),
(128, 'Semiconductors', NULL, NULL),
(129, 'Shipbuilding', NULL, NULL),
(130, 'Sporting Goods', NULL, NULL),
(131, 'Sports', NULL, NULL),
(132, 'Staffing / Recruiting', NULL, NULL),
(133, 'Supermarkets', NULL, NULL),
(134, 'Telecommunications', NULL, NULL),
(135, 'Textiles', NULL, NULL),
(136, 'Think Tanks', NULL, NULL),
(137, 'Tobacco', NULL, NULL),
(138, 'Translation / Localization', NULL, NULL),
(139, 'Transportation', NULL, NULL),
(140, 'Utilities', NULL, NULL),
(141, 'Venture Capital / VC', NULL, NULL),
(142, 'Veterinary', NULL, NULL),
(143, 'Warehousing', NULL, NULL),
(144, 'Wholesale', NULL, NULL),
(145, 'Wine / Spirits', NULL, NULL),
(146, 'Wireless', NULL, NULL),
(147, 'Writing / Editing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_08_100000_create_telescope_entries_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_05_02_182931_create_vacancies_table', 1),
(6, '2020_05_02_193511_create_job_categories_table', 1),
(7, '2020_05_03_073407_create_roles_table', 1),
(8, '2020_05_03_105735_create_applications_table', 1),
(9, '2020_05_03_131224_create_feeds_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin of the system', NULL, NULL),
(2, 'User', 'User of the system', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

DROP TABLE IF EXISTS `telescope_entries`;
CREATE TABLE IF NOT EXISTS `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`sequence`),
  UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  KEY `telescope_entries_batch_id_index` (`batch_id`),
  KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  KEY `telescope_entries_family_hash_index` (`family_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

DROP TABLE IF EXISTS `telescope_entries_tags`;
CREATE TABLE IF NOT EXISTS `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  KEY `telescope_entries_tags_tag_index` (`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

DROP TABLE IF EXISTS `telescope_monitoring`;
CREATE TABLE IF NOT EXISTS `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `role_id` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

DROP TABLE IF EXISTS `vacancies`;
CREATE TABLE IF NOT EXISTS `vacancies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires_on` datetime NOT NULL DEFAULT '2020-05-04 00:22:26',
  `vacancies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_level` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vacancies`
--

INSERT INTO `vacancies` (`id`, `title`, `company`, `location`, `category`, `expires_on`, `vacancies`, `salary`, `education_level`, `created_at`, `updated_at`) VALUES
(1, 'Sales Representative', 'Greenfelder, Muller and Sporer', 'South Brady, Swaziland', 'Fine Art', '2020-05-04 00:22:30', 'wlr5wvqMNP', '90000', 'Diploma', '2020-05-03 21:22:30', '2020-05-03 21:22:30'),
(2, 'Food Cooking Machine Operators', 'Schmeler-Bergnaum', 'Deborahmouth, France', 'Computer Software', '2020-05-04 00:22:30', 'PzNG41S6qH', '30000', 'Degree', '2020-05-03 21:22:30', '2020-05-03 21:22:30'),
(3, 'Armored Assault Vehicle Crew Member', 'Pacocha LLC', 'Eichmannstad, Brunei Darussalam', 'Chemicals', '2020-05-04 00:22:30', '2x0oan5nHP', '20000', 'Degree', '2020-05-03 21:22:30', '2020-05-03 21:22:30'),
(4, 'Electrical Parts Reconditioner', 'Will-Turcotte', 'North Jeraldmouth, Hong Kong', 'Accounting', '2020-05-04 00:22:30', 'BYNTPyY5QO', '70000', 'Diploma', '2020-05-03 21:22:30', '2020-05-03 21:22:30'),
(5, 'Biological Science Teacher', 'Rosenbaum-Bernhard', 'New Aric, Tanzania', 'Computer Software', '2020-05-04 00:22:30', 'mXl4dHVBU8', '70000', 'Degree', '2020-05-03 21:22:30', '2020-05-03 21:22:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
