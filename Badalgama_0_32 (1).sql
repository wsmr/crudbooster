-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2019 at 08:34 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.1.24-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Badalgama_0.32`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `rg_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `rg_id`, `name`, `description`) VALUES
(6, 1, 'Project Design', 'project plan in 3D view.'),
(7, 2, 'project plan in 3D view.', 'project plan in 3D view with day and night images'),
(8, 3, 'project plan in 3D view.', 'project plan in 3D view.');

-- --------------------------------------------------------

--
-- Table structure for table `basicdata`
--

CREATE TABLE `basicdata` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(255) NOT NULL DEFAULT '1',
  `bdt_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `editor` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basicdata`
--

INSERT INTO `basicdata` (`id`, `ref_id`, `bdt_id`, `name`, `value`, `active`, `editor`, `updated`) VALUES
(3, '1', 3, 'Confirmation Of Verbel Instruction', '30000', NULL, NULL, '2019-02-12 06:12:17'),
(5, '1', 5, 'Activity Relevant to Detail', 'RFI NO', NULL, NULL, '2019-02-13 04:30:00'),
(9, '1', 2, 'Financial progress', 'FPBD', NULL, NULL, '2019-02-25 04:09:55'),
(10, '1', 1, 'Physical Progress of Dairy Building', 'Month', NULL, NULL, '2019-02-25 07:06:17'),
(11, '1', 2, 'Financial Status', 'IPA', NULL, NULL, '2019-02-25 07:09:00'),
(12, '1', 5, 'REQUEST FOR INFORMATION', 'RFI NO', NULL, NULL, '2019-02-25 07:19:06'),
(13, '1', 6, 'Labour_CARP_BB_MAS_RIG Details', 'CARP_BB_MAS_RIG Count', NULL, NULL, '2019-02-26 04:13:09'),
(14, '1', 7, 'Labour Other Details', 'Labour Other Details Count', NULL, NULL, '2019-02-26 04:14:05'),
(15, '1', 8, 'test contact details', 'id', NULL, NULL, '2019-03-13 11:01:45'),
(16, '1', 9, 'Labor Details', 'Count', NULL, NULL, '2019-03-14 10:36:19'),
(17, '1', 10, 'Test Reports', 'Test Reports', NULL, NULL, '2019-03-18 05:59:09'),
(18, '1', 1, 'Financial Progress of Dairy Building', 'Financial Progress of Dairy Building', NULL, NULL, '2019-03-19 08:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `bdt_option`
--

CREATE TABLE `bdt_option` (
  `id` int(11) NOT NULL,
  `bdt_id` int(11) NOT NULL,
  `int_1_visible` varchar(5) NOT NULL DEFAULT '0',
  `int_1_lable` varchar(255) NOT NULL,
  `int_1_type` varchar(50) NOT NULL,
  `int_2_visible` varchar(5) NOT NULL DEFAULT '0',
  `int_2_lable` varchar(255) NOT NULL,
  `int_2_type` varchar(50) NOT NULL,
  `int_3_visible` varchar(5) NOT NULL DEFAULT '0',
  `int_3_lable` varchar(255) NOT NULL,
  `int_3_type` varchar(50) NOT NULL,
  `date_1_visible` varchar(5) NOT NULL DEFAULT '0',
  `date_1_lable` varchar(255) NOT NULL,
  `date_1_type` varchar(50) NOT NULL,
  `date_2_visible` varchar(5) NOT NULL DEFAULT '0',
  `date_2_lable` varchar(255) NOT NULL,
  `date_2_type` varchar(50) NOT NULL,
  `date_3_visible` varchar(5) NOT NULL DEFAULT '0',
  `date_3_lable` varchar(255) NOT NULL,
  `date_3_type` varchar(50) NOT NULL,
  `varchar_1_visible` varchar(5) NOT NULL DEFAULT '0',
  `varchar_1_lable` varchar(255) NOT NULL,
  `varchar_1_type` varchar(50) NOT NULL,
  `varchar_2_visible` varchar(5) NOT NULL DEFAULT '0',
  `varchar_2_lable` varchar(255) NOT NULL,
  `varchar_2_type` varchar(50) NOT NULL,
  `varchar_3_visible` varchar(5) NOT NULL DEFAULT '0',
  `varchar_3_lable` varchar(255) NOT NULL,
  `varchar_3_type` varchar(50) NOT NULL,
  `textarea_1_visible` varchar(5) NOT NULL DEFAULT '0',
  `textarea_1_lable` varchar(255) NOT NULL,
  `textarea_1_type` varchar(50) NOT NULL,
  `textarea_2_visible` varchar(5) NOT NULL DEFAULT '0',
  `textarea_2_lable` varchar(255) NOT NULL,
  `textarea_2_type` varchar(50) NOT NULL,
  `textarea_3_visible` varchar(5) NOT NULL DEFAULT '0',
  `textarea_3_lable` varchar(255) NOT NULL,
  `textarea_3_type` varchar(50) NOT NULL,
  `attachment_1_visible` varchar(5) NOT NULL DEFAULT '0',
  `attachment_1_lable` varchar(255) NOT NULL,
  `attachment_1_type` varchar(50) NOT NULL,
  `attachment_2_visible` varchar(5) NOT NULL DEFAULT '0',
  `attachment_2_lable` varchar(255) NOT NULL,
  `attachment_2_type` varchar(50) NOT NULL,
  `attachment_3_visible` varchar(5) NOT NULL DEFAULT '0',
  `attachment_3_lable` varchar(255) NOT NULL,
  `attachment_3_type` varchar(50) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `editor` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref_id` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bdt_option`
--

INSERT INTO `bdt_option` (`id`, `bdt_id`, `int_1_visible`, `int_1_lable`, `int_1_type`, `int_2_visible`, `int_2_lable`, `int_2_type`, `int_3_visible`, `int_3_lable`, `int_3_type`, `date_1_visible`, `date_1_lable`, `date_1_type`, `date_2_visible`, `date_2_lable`, `date_2_type`, `date_3_visible`, `date_3_lable`, `date_3_type`, `varchar_1_visible`, `varchar_1_lable`, `varchar_1_type`, `varchar_2_visible`, `varchar_2_lable`, `varchar_2_type`, `varchar_3_visible`, `varchar_3_lable`, `varchar_3_type`, `textarea_1_visible`, `textarea_1_lable`, `textarea_1_type`, `textarea_2_visible`, `textarea_2_lable`, `textarea_2_type`, `textarea_3_visible`, `textarea_3_lable`, `textarea_3_type`, `attachment_1_visible`, `attachment_1_lable`, `attachment_1_type`, `attachment_2_visible`, `attachment_2_lable`, `attachment_2_type`, `attachment_3_visible`, `attachment_3_lable`, `attachment_3_type`, `active`, `editor`, `updated`, `ref_id`) VALUES
(2, 2, '1', 'Submitted Value (Rs.)', 'number', '1', 'Payment Received', 'number', '1', 'Payment received (cumulative)', 'number', '1', 'Work Done Up to', 'datetime', '1', 'Payment Received Date', 'datetime', '1', 'Submitted Date', 'datetime', '1', 'IPA No', 'text', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-02-25 07:13:33', '1'),
(3, 3, '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '1', 'Submission Date', 'datetime', '1', 'Consultant Comment Date', 'datetime', '0', '', 'hidden', '1', 'CVI NO', 'text', '1', 'Activity Relevant to Detail', 'text', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-02-13 13:54:02', '1'),
(4, 5, '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '1', 'Submission Date', 'datetime', '1', 'Consultant Comment Date', 'datetime', '0', '', 'hidden', '1', 'RFI NO', 'text', '1', 'Activity Relevant to Detail', 'text', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-02-13 07:24:54', '1'),
(5, 4, '1', 'RFI Int 1 Lable', 'number', '1', 'RFI Int 2 Lable', 'number', '1', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-02-15 04:40:43', '1'),
(6, 1, '1', 'Planned progress percentage', 'number', '1', 'Actual progress percentage', 'number', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '1', 'Month', 'text', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-02-20 09:38:01', '1'),
(7, 6, '1', 'Skilled carpenty', 'number', '1', 'Semi_Skilled carpenty', 'number', '1', 'Un_Skilled carpenty', 'number', '1', 'Skilled Bar bender', 'number', '1', 'Semi_Skilled Bar bender', 'number', '1', 'Date', 'datetime', '1', 'Skilled Masonary', 'number', '1', 'Semi_Skilled Masonary', 'number', '1', 'Un_Skilled Masonary', 'number', '1', 'Un_Skilled Bar bender', 'number', '1', 'Skilled Rigger', 'number', '1', 'Semi_Skilled Rigger', 'number', '1', 'Un_Skilled Rigger', 'number', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-02-26 04:19:34', '1'),
(8, 7, '1', 'Painter', 'number', '1', 'AL Fabricator', 'number', '0', '', 'hidden', '1', 'date', 'datetime', '1', 'Plumber', 'number', '1', 'Survey Helper', 'number', '1', 'Electrician', 'number', '1', 'Grinder Man', 'number', '1', 'Welder', 'number', '1', 'ForMen', 'number', '1', 'Driver', 'number', '1', 'labour', 'number', '1', 'Opertor', 'number', '1', 'SignalMen', 'number', '1', 'Erector', 'number', NULL, NULL, '2019-02-26 04:18:36', '1'),
(9, 8, '1', 'id', 'number', '1', 'Contact No', 'number', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '1', 'Name', 'text', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-03-13 10:47:50', '1'),
(10, 9, '1', 'Skiled Planned', 'number', '1', 'Un-Skiled Planned', 'number', '1', 'Skiled Actual', 'number', '1', 'Un-Skiled Actual', 'number', '1', 'Date', 'date', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-03-14 10:40:47', '1'),
(11, 10, '1', 'Report Name', 'text', '1', 'Description', 'text', '1', 'Attachment', 'upload', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', '0', '', 'hidden', NULL, NULL, '2019-03-18 05:57:48', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bdt_option_order`
--

CREATE TABLE `bdt_option_order` (
  `id` int(11) NOT NULL,
  `bdt_option_id` int(11) NOT NULL,
  `int_1_order` int(2) DEFAULT NULL,
  `int_2_order` int(2) DEFAULT NULL,
  `int_3_order` int(2) DEFAULT NULL,
  `date_1_order` int(2) DEFAULT NULL,
  `date_2_order` int(2) DEFAULT NULL,
  `date_3_order` int(2) DEFAULT NULL,
  `varchar_1_order` int(2) DEFAULT NULL,
  `varchar_2_order` int(2) DEFAULT NULL,
  `varchar_3_order` int(2) DEFAULT NULL,
  `textarea_1_order` int(2) DEFAULT NULL,
  `textarea_2_order` int(2) DEFAULT NULL,
  `textarea_3_order` int(2) DEFAULT NULL,
  `attachment_1_order` int(2) DEFAULT NULL,
  `attachment_2_order` int(2) DEFAULT NULL,
  `attachment_3_order` int(2) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bdt_option_order`
--

INSERT INTO `bdt_option_order` (`id`, `bdt_option_id`, `int_1_order`, `int_2_order`, `int_3_order`, `date_1_order`, `date_2_order`, `date_3_order`, `varchar_1_order`, `varchar_2_order`, `varchar_3_order`, `textarea_1_order`, `textarea_2_order`, `textarea_3_order`, `attachment_1_order`, `attachment_2_order`, `attachment_3_order`, `updated`) VALUES
(3, 4, NULL, NULL, NULL, 2, 4, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-25 07:20:17'),
(4, 5, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-25 04:06:38'),
(5, 3, NULL, NULL, NULL, 2, 4, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-25 07:17:13'),
(6, 7, 1, 2, 3, 4, 5, 13, 6, 7, 8, 9, 10, 11, 12, NULL, NULL, '2019-02-26 04:07:17'),
(7, 6, 2, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-22 13:00:49'),
(8, 2, 2, 5, 6, 3, 7, 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-02-25 07:14:22'),
(9, 8, 12, 13, NULL, 14, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, '2019-02-26 04:09:51'),
(10, 9, 1, 3, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-13 10:49:07'),
(11, 10, 2, 4, 3, 5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-21 09:27:27'),
(12, 11, 1, 2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-18 05:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `bd_record_group`
--

CREATE TABLE `bd_record_group` (
  `id` int(11) NOT NULL,
  `rg_id` int(11) DEFAULT NULL,
  `bd_id` int(11) NOT NULL,
  `description` varchar(90) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `editor` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref_id` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bd_record_group`
--

INSERT INTO `bd_record_group` (`id`, `rg_id`, `bd_id`, `description`, `active`, `editor`, `updated`, `ref_id`) VALUES
(3, 2, 3, 'CVI', NULL, NULL, '2019-02-20 06:36:33', '1'),
(4, 2, 5, 'RFI', NULL, NULL, '2019-02-13 04:31:15', '1'),
(5, 1, 10, 'Month, Planned progress, Actual progress', NULL, NULL, '2019-02-25 07:07:06', '1'),
(6, 1, 11, 'Submitted Value & date, Work Done Up to, Payments', NULL, NULL, '2019-02-25 07:09:51', '1'),
(7, 1, 3, 'Submission Date, Activity Relevant to Detail', NULL, NULL, '2019-02-25 07:16:34', '1'),
(8, 1, 12, 'Submission Date, Activity Relevant to Detail', NULL, NULL, '2019-02-25 07:19:32', '1'),
(9, 1, 13, 'labor details - Carpenters,bar_benders, masons,riggers', NULL, NULL, '2019-02-26 04:23:20', '1'),
(10, 1, 14, 'labor details - Other', NULL, NULL, '2019-02-26 04:21:55', '1'),
(11, 3, 10, 'ythrgdew', NULL, NULL, '2019-02-27 07:20:00', '1'),
(21, 2, 11, 'Financial Status of kandy', NULL, NULL, '2019-02-28 03:23:29', '1'),
(22, 2, 10, 'physical progress of kandy', NULL, NULL, '2019-02-28 03:51:22', '1'),
(23, 4, 11, 'oiuytre', NULL, NULL, '2019-02-28 11:44:31', '1'),
(24, 1, 5, 'uhgh', NULL, NULL, '2019-03-04 03:35:32', '1'),
(25, 4, 3, 'utyr', NULL, NULL, '2019-03-04 05:42:42', '1'),
(26, 1, 15, 'contact', NULL, NULL, '2019-03-13 11:03:56', '1'),
(28, 1, 16, 'labor chart', NULL, NULL, '2019-03-14 10:37:00', '1'),
(29, 2, 16, 'wdxaw', NULL, NULL, '2019-03-14 11:11:58', '1'),
(30, 1, 17, 'Test Reports', NULL, NULL, '2019-03-18 05:59:31', '1'),
(31, 2, 17, 'm b', NULL, NULL, '2019-03-18 09:19:00', '1'),
(32, 3, 17, 'm b', NULL, NULL, '2019-03-18 09:21:31', '1'),
(33, 1, 18, 'IPA', NULL, NULL, '2019-03-19 08:47:03', '1'),
(34, 2, 18, 'jijk', NULL, NULL, '2019-03-19 09:24:32', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bd_type`
--

CREATE TABLE `bd_type` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(255) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `use_age` varchar(90) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `editor` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bd_type`
--

INSERT INTO `bd_type` (`id`, `ref_id`, `name`, `value`, `use_age`, `active`, `editor`, `updated`) VALUES
(1, '1', 'physical', '1000', 'operatinal', NULL, NULL, '2019-02-12 06:03:51'),
(2, '1', 'Financial', '20000', 'operatinal', NULL, NULL, '2019-02-12 06:04:16'),
(3, '1', 'confirmations', '3000', 'operatinal', NULL, NULL, '2019-02-12 06:05:12'),
(4, '1', 'RFI', 'RFI', 'operatinal', NULL, NULL, '2019-02-12 07:53:10'),
(5, '1', 'Requests', 'RFI NO', 'operatinal', NULL, NULL, '2019-02-13 04:29:26'),
(6, '1', 'Labour_CARP_BB_MAS_RIG', 'Labour_value', 'operatinal', NULL, NULL, '2019-02-20 07:51:23'),
(7, '1', 'Labour Other', 'Labour Other value', 'operatinal', NULL, NULL, '2019-02-26 03:56:06'),
(8, '1', 'Test BD Type', 'id', 'operatinal', NULL, NULL, '2019-03-13 10:25:33'),
(9, '1', 'Labor', 'Count', 'operatinal', NULL, NULL, '2019-03-14 10:26:58'),
(10, '1', 'Test Reports', 'Test Reports', 'operatinal', NULL, NULL, '2019-03-18 05:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE `camera` (
  `id` int(11) NOT NULL,
  `rg_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` longtext NOT NULL,
  `description` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`id`, `rg_id`, `name`, `url`, `description`, `updated_at`) VALUES
(1, 3, 'nawala front view', 'https://www.constructioncamtv.com/', '03, Swarna Place, Nawala Road, Rajagiriya Sri Lanka / Telephone +94 112 806 028', '2019-03-01 06:17:54'),
(2, 1, 'Milco Project Front View', 'https://www.constructioncamtv.com/', 'Milco Project Front View / 03, Swarna Place, Nawala Road tel: 00000000000', '2019-03-01 06:40:15');

-- --------------------------------------------------------

--
-- Stand-in structure for view `cloudy_count`
-- (See below for the actual view)
--
CREATE TABLE `cloudy_count` (
`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `responses` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-11-06 17:35:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-23 06:09:03', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery/delete-image', 'Delete the image of 6 at Gallery', '', 1, '2019-01-23 06:09:17', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery/edit-save/6', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-01/2c8ae0cfd7170a9c875bf334be4e20a700805cfe.png</td></tr></tbody></table>', 1, '2019-01-23 06:09:26', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data test2 at Album', '', 1, '2019-01-23 06:24:35', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 7 at Gallery', '', 1, '2019-01-23 06:35:11', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 8 at Gallery', '', 1, '2019-01-23 06:36:31', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 9 at Gallery', '', 1, '2019-01-23 06:37:34', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-24 00:11:12', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/delete/5', 'Delete data 5 at Gallery', '', 1, '2019-01-24 00:11:58', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/delete/4', 'Delete data 4 at Gallery', '', 1, '2019-01-24 00:12:03', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/delete/3', 'Delete data 3 at Gallery', '', 1, '2019-01-24 00:12:06', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/delete/2', 'Delete data 2 at Gallery', '', 1, '2019-01-24 00:12:09', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/gallery17/delete/1', 'Delete data 1 at Gallery', '', 1, '2019-01-24 00:12:13', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-24 00:20:46', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-24 00:21:01', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-24 00:21:08', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Weather at Menu Management', '', 1, '2019-01-24 01:05:06', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>WeatherChartController</td><td>WeatherChartController@getIndex</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 01:05:27', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 01:05:49', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Controller & Method</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 01:06:06', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>path</td><td>WeatherChartController@getIndex</td><td>WeatherChartController</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 01:06:29', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Controller & Method</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 01:06:40', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>WeatherChartController</td><td>WeatherChartController@getIndex</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 01:06:59', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data WeatherKK at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Weather</td><td>WeatherKK</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-24 02:04:15', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Weather at Menu Management', '', 1, '2019-01-24 02:05:00', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-24 22:22:24', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-27 22:22:07', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-01-28 21:26:37', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-28 21:26:39', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-29 00:58:16', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-29 00:58:18', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/weather_data/add-save', 'Add New Data 56 at Weather_Data', '', 1, '2019-01-29 01:37:47', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/weather_data/add-save', 'Add New Data 57 at Weather_Data', '', 1, '2019-01-29 01:38:13', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/weather_data/add-save', 'Add New Data 58 at Weather_Data', '', 1, '2019-01-29 01:40:46', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/weather_data/add-save', 'Add New Data 59 at Weather_Data', '', 1, '2019-01-29 01:41:13', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-29 22:14:14', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Structural at basic_data_type', '', 1, '2019-01-30 02:00:09', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Weather at basic_data_type', '', 1, '2019-01-30 02:00:36', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data embankment at basic_data_type', '', 1, '2019-01-30 02:01:18', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Basic_data_01 at Basic_data', '', 1, '2019-01-30 02:08:57', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Basic_data_02 at Basic_data', '', 1, '2019-01-30 02:09:43', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Basic_data_03 at Basic_data', '', 1, '2019-01-30 02:10:11', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Basic_data_04 at Basic_data', '', 1, '2019-01-30 02:10:42', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 2 at Basic_data_Option', '', 1, '2019-01-30 03:04:27', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/2', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_lable</td><td>Basic_data_Int_label_test</td><td>Basic_data_Int_label_test1</td></tr><tr><td>int_1_type</td><td>Basic_data_Int_Type_test</td><td>Basic_data_Int_Type_test1</td></tr><tr><td>int_2_lable</td><td>Basic_data_Int_label_test</td><td>Basic_data_Int_label_test2</td></tr><tr><td>int_2_type</td><td>Basic_data_Int_Type_test</td><td>Basic_data_Int_Type_test2</td></tr><tr><td>int_3_lable</td><td>Basic_data_Int_label_test</td><td>Basic_data_Int_label_test3</td></tr><tr><td>int_3_type</td><td>Basic_data_Int_Type_test</td><td>Basic_data_Int_Type_test3</td></tr><tr><td>date_1_lable</td><td>Basic_data_Date_label_test</td><td>Basic_data_Date_label_test1</td></tr><tr><td>date_1_type</td><td>Basic_data_Date_Type_test</td><td>Basic_data_Date_Type_test1</td></tr><tr><td>date_2_lable</td><td>Basic_data_Date_label_test</td><td>Basic_data_Date_label_test2</td></tr><tr><td>date_2_type</td><td>Basic_data_Date_Type_test</td><td>Basic_data_Date_Type_test2</td></tr><tr><td>date_3_lable</td><td>Basic_data_Date_label_test</td><td>Basic_data_Date_label_test3</td></tr><tr><td>date_3_type</td><td>Basic_data_Date_Type_test</td><td>Basic_data_Date_Type_test3</td></tr><tr><td>varchar_1_lable</td><td>Basic_data_Varchar_label_test</td><td>Basic_data_Varchar_label_test1</td></tr><tr><td>varchar_1_type</td><td>Basic_data_Varchar_Type_test</td><td>Basic_data_Varchar_Type_test1</td></tr><tr><td>varchar_2_lable</td><td>Basic_data_Varchar_label_test</td><td>Basic_data_Varchar_label_test2</td></tr><tr><td>varchar_2_type</td><td>Basic_data_Varchar_Type_test</td><td>Basic_data_Varchar_Type_test2</td></tr><tr><td>varchar_3_lable</td><td>Basic_data_Varchar_label_test</td><td>Basic_data_Varchar_label_test3</td></tr><tr><td>varchar_3_type</td><td>Basic_data_Varchar_Type_test</td><td>Basic_data_Varchar_Type_test3</td></tr><tr><td>textarea_1_lable</td><td>Basic_data_Textarea_label_test</td><td>Basic_data_Textarea_label_test1</td></tr><tr><td>textarea_1_type</td><td>Basic_data_Textarea_Type_test</td><td>Basic_data_Textarea_Type_test1</td></tr><tr><td>textarea_2_lable</td><td>Basic_data_Textarea_label_test</td><td>Basic_data_Textarea_label_test2</td></tr><tr><td>textarea_2_type</td><td>Basic_data_Textarea_Type_test</td><td>Basic_data_Textarea_Type_test2</td></tr><tr><td>textarea_3_lable</td><td>Basic_data_Textarea_label_test</td><td>Basic_data_Textarea_label_test3</td></tr><tr><td>textarea_3_type</td><td>Basic_data_Textarea_Type_test</td><td>Basic_data_Textarea_Type_test3</td></tr><tr><td>attachment_1_lable</td><td>Basic_data_Attachment_label_test</td><td>Basic_data_Attachment_label_test1</td></tr><tr><td>attachment_1_type</td><td>Basic_data_Attachment_Type_test</td><td>Basic_data_Attachment_Type_test1</td></tr><tr><td>attachment_2_lable</td><td>Basic_data_Attachment_label_test</td><td>Basic_data_Attachment_label_test2</td></tr><tr><td>attachment_2_type</td><td>Basic_data_Attachment_Type_test</td><td>Basic_data_Attachment_Type_test2</td></tr><tr><td>attachment_3_lable</td><td>Basic_data_Attachment_label_test</td><td>Basic_data_Attachment_label_test3</td></tr><tr><td>attachment_3_type</td><td>Basic_data_Attachment_Type_test</td><td>Basic_data_Attachment_Type_test3</td></tr><tr><td>int_1_visible</td><td>false</td><td></td></tr><tr><td>int_2_visible</td><td>false</td><td></td></tr><tr><td>int_3_visible</td><td>false</td><td></td></tr><tr><td>date_1_visible</td><td>false</td><td></td></tr><tr><td>date_2_visible</td><td>false</td><td></td></tr><tr><td>date_3_visible</td><td>false</td><td></td></tr><tr><td>varchar_1_visible</td><td>false</td><td></td></tr><tr><td>varchar_2_visible</td><td>false</td><td></td></tr><tr><td>varchar_3_visible</td><td>false</td><td></td></tr><tr><td>textarea_1_visible</td><td>false</td><td></td></tr><tr><td>textarea_2_visible</td><td>false</td><td></td></tr><tr><td>textarea_3_visible</td><td>false</td><td></td></tr><tr><td>attachment_1_visible</td><td>false</td><td></td></tr><tr><td>attachment_2_visible</td><td>false</td><td></td></tr><tr><td>attachment_3_visible</td><td>false</td><td></td></tr></tbody></table>', 1, '2019-01-30 03:05:55', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Basic Data at Menu Management', '', 1, '2019-01-30 04:16:01', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Records at Menu Management', '', 1, '2019-01-30 04:17:21', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Add Basic_data_6 at Basic_data', '', 1, '2019-01-30 05:08:02', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/edit-save/7', 'Update data Basic_data_6 at Basic_data', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Add Basic_data_6</td><td>Basic_data_6</td></tr></tbody></table>', 1, '2019-01-30 05:08:15', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Basic_data_05 at Basic_data', '', 1, '2019-01-30 05:08:56', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data financial status at Basic_data', '', 1, '2019-01-30 05:28:47', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 3 at Basic_data_Option', '', 1, '2019-01-30 05:39:07', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/bd_type/delete/1', 'Delete data test at Basic_data_type', '', 1, '2019-01-30 05:40:39', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-30 22:17:54', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-30 22:18:01', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-30 22:34:39', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-30 22:43:41', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-30 22:43:46', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-30 22:44:40', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-30 22:44:47', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-01-30 22:48:56', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-30 22:49:13', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-30 22:49:23', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data physical progress at Record_Group', '', 1, '2019-01-31 02:35:17', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Financial progress at Record_Group', '', 1, '2019-01-31 02:35:47', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Weather progress at Record_Group', '', 1, '2019-01-31 02:43:31', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Test View at Menu Management', '', 1, '2019-01-31 03:29:22', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:29:53', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/</td><td>http://127.0.0.1:8000/</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:30:10', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>http://127.0.0.1:8000/</td><td>pdfController@pdfchartview</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:31:47', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>Controller & Method</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:32:18', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Controller & Method</td><td>Route</td></tr><tr><td>path</td><td>pdfController@pdfchartview</td><td>pdfchartview</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:32:38', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>pdfchartview</td><td>FrontendController</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:33:16', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>path</td><td>FrontendController</td><td>/</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:33:59', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>/</td><td>test</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:34:18', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:37:26', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>test</td><td>http://127.0.0.1:8000/test</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-01-31 03:39:05', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/weather_data/add-save', 'Add New Data 60 at Weather_Data', '', 1, '2019-01-31 04:45:46', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-01-31 06:10:16', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-03 23:50:09', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-04 13:32:01', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/weather_data/add-save', 'Add New Data 61 at Weather_Data', '', 1, '2019-02-04 22:17:49', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/module_generator/delete/25', 'Delete data Day status at Module Generator', '', 1, '2019-02-04 22:21:05', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 3 at Day status', '', 1, '2019-02-04 22:28:47', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 4 at Day status', '', 1, '2019-02-04 22:34:45', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 3 at Day status', '', 1, '2019-02-05 01:11:18', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 4 at Day status', '', 1, '2019-02-05 01:23:28', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/weather_data/delete/60', 'Delete data 60 at Weather_Data', '', 1, '2019-02-05 01:33:51', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/weather_data/delete/61', 'Delete data 61 at Weather_Data', '', 1, '2019-02-05 01:33:56', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data test 2 at Basic_data_type', '', 1, '2019-02-05 06:16:12', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/10', 'Update data test 2 at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>use_age</td><td></td><td>system</td></tr></tbody></table>', 1, '2019-02-05 07:00:07', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/9', 'Update data embankment at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>use_age</td><td></td><td>operatinal</td></tr></tbody></table>', 1, '2019-02-05 07:00:16', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/8', 'Update data Weather at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>use_age</td><td></td><td>operatinal</td></tr></tbody></table>', 1, '2019-02-05 07:00:25', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/7', 'Update data Structural at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>use_age</td><td></td><td>operatinal</td></tr></tbody></table>', 1, '2019-02-05 07:00:32', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/6', 'Update data Physical at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>2</td><td></td></tr><tr><td>use_age</td><td></td><td>operatinal</td></tr></tbody></table>', 1, '2019-02-05 07:00:42', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/5', 'Update data Financial at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>2</td><td></td></tr><tr><td>use_age</td><td></td><td>operatinal</td></tr></tbody></table>', 1, '2019-02-05 07:00:54', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/4', 'Update data gsdfgdfh at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>2</td><td></td></tr><tr><td>use_age</td><td></td><td>system</td></tr></tbody></table>', 1, '2019-02-05 07:01:01', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/3', 'Update data trfr at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>use_age</td><td></td><td>system</td></tr></tbody></table>', 1, '2019-02-05 07:01:09', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/2', 'Update data test at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>use_age</td><td></td><td>system</td></tr></tbody></table>', 1, '2019-02-05 07:01:16', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/1', 'Update data test at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>use_age</td><td></td><td>operatinal</td></tr></tbody></table>', 1, '2019-02-05 07:01:23', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/2', 'Delete data sdfahgfdh at Basic_data', '', 1, '2019-02-05 07:10:10', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/1', 'Delete data test at Basic_data', '', 1, '2019-02-05 07:10:13', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data physical progress at Basic_data', '', 1, '2019-02-05 07:10:56', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Embankment Fill at Basic_data', '', 1, '2019-02-05 07:11:42', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Embankment Cut at Basic_data', '', 1, '2019-02-05 07:12:15', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 4 at Basic_data_Option', '', 1, '2019-02-05 07:31:38', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/2', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-05 08:04:04', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/2', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-05 08:04:29', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/delete/1', 'Delete data 1 at Basic_data_Option', '', 1, '2019-02-05 08:38:09', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/1', 'Delete data test at Basic_data', '', 1, '2019-02-05 08:38:30', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 5 at Basic_data_Option', '', 1, '2019-02-05 09:17:56', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/delete/4', 'Delete data 4 at Basic_data_Option', '', 1, '2019-02-05 09:18:17', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 6 at Basic_data_Option', '', 1, '2019-02-05 09:28:51', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 1 at Basic_data_record_group', '', 1, '2019-02-05 09:35:43', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/module_generator/delete/23', 'Delete data Record_Details at Module Generator', '', 1, '2019-02-05 09:39:45', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/module_generator/delete/27', 'Delete data Record_Details at Module Generator', '', 1, '2019-02-05 09:42:20', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-06 04:12:20', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-06 04:12:42', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-06 04:12:43', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-06 22:35:27', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/delete/1', 'Delete data Gallery at Menu Management', '', 1, '2019-02-06 22:36:13', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Gallery at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-photo</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-02-06 22:37:04', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Album at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-folder-open-o</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-02-06 22:39:35', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Gallery View at Menu Management', '', 1, '2019-02-06 22:56:21', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 10 at Gallery', '', 1, '2019-02-07 00:56:11', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 11 at Gallery', '', 1, '2019-02-07 01:30:54', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 5 at Day status', '', 1, '2019-02-07 05:38:01', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 6 at Day status', '', 1, '2019-02-07 05:39:17', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-02-08 05:41:52', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-08 05:41:54', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-08 05:42:35', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-08 05:42:38', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-07 05:59:34', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-07 07:05:08', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-07 07:05:15', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-07 07:05:17', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 7 at Day status', '', 1, '2019-02-07 07:38:56', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 8 at Day status', '', 1, '2019-02-07 08:02:16', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 9 at Day status', '', 1, '2019-02-07 08:10:36', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 10 at Day status', '', 1, '2019-02-07 08:11:29', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-09 13:16:01', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-10 22:22:10', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 5 at Day status', '', 1, '2019-02-10 22:58:33', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/4', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-10 23:59:54', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/3', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-11 00:01:02', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-11 02:25:55', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-11 02:25:59', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-11 02:28:59', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-11 02:29:01', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Test View at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-11 02:30:28', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Gallery at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-photo</td><td>fa fa-rotate-right</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-02-11 02:30:39', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 6 at Day status', '', 1, '2019-02-11 02:38:18', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/6', 'Delete data 6 at Day status', '', 1, '2019-02-11 02:38:42', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 6 at Day status', '', 1, '2019-02-11 03:40:24', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/6', 'Delete data 6 at Day status', '', 1, '2019-02-11 03:40:45', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-11 03:46:14', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-11 03:46:26', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Weather Data at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Weather_Data</td><td>Weather Data</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2019-02-11 03:47:03', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/2', 'Update data Contact Us at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-envelope-o</td><td>fa fa-glass</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2019-02-11 03:47:22', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 6 at Day status', '', 1, '2019-02-11 03:48:35', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 7 at Day status', '', 1, '2019-02-11 03:50:08', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/delete/1', 'Delete data test at Basic_data_type', '', 1, '2019-02-11 05:21:52', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/delete/2', 'Delete data test at Basic_data_type', '', 1, '2019-02-11 05:21:56', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/delete/3', 'Delete data trfr at Basic_data_type', '', 1, '2019-02-11 05:22:04', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/delete/4', 'Delete data gsdfgdfh at Basic_data_type', '', 1, '2019-02-11 05:22:09', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(166, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/delete/10', 'Delete data test 2 at Basic_data_type', '', 1, '2019-02-11 05:22:12', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/delete/6', 'Delete data Physical at Basic_data_type', '', 1, '2019-02-11 05:22:33', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data WeatherKK at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-cloud</td><td>fa fa-glass</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-02-11 05:32:08', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/delete/3', 'Delete data Weather progress at Record_Group', '', 1, '2019-02-11 05:33:22', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/delete/2', 'Delete data Financial progress at Record_Group', '', 1, '2019-02-11 05:33:25', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/delete/1', 'Delete data physical progress at Record_Group', '', 1, '2019-02-11 05:33:28', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Milco Project at Record_Group', '', 1, '2019-02-11 05:33:50', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 2 at Basic_data_record_group', '', 1, '2019-02-11 05:36:37', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-11 09:23:33', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-11 09:24:08', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-11 22:02:07', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/module_generator/delete/14', 'Delete data Gallery at Module Generator', '', 1, '2019-02-11 22:07:01', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 7 at Basic_data_Option', '', 1, '2019-02-11 23:51:52', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 8 at Basic_data_Option', '', 1, '2019-02-12 00:01:28', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 9 at Basic_data_Option', '', 1, '2019-02-12 00:08:09', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/delete/1', 'Delete data physical progress at Record_Group', '', 1, '2019-02-12 00:15:29', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/edit-save/2', 'Update data July – 2016 at Album', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Album 2</td><td>July – 2016</td></tr></tbody></table>', 1, '2019-02-12 00:25:06', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/edit-save/1', 'Update data August – 2016 at Album', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Album 1</td><td>August – 2016</td></tr></tbody></table>', 1, '2019-02-12 00:25:19', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data physical progress at Basic_data_type', '', 1, '2019-02-12 00:33:51', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Financial progress at Basic_data_type', '', 1, '2019-02-12 00:34:17', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data confirmations at Basic_data_type', '', 1, '2019-02-12 00:35:12', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data physical progress percentage at Basic_data', '', 1, '2019-02-12 00:39:46', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data financial IPA at Basic_data', '', 1, '2019-02-12 00:40:45', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/2', 'Update data Financial at Basic_data_type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Financial progress</td><td>Financial</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-12 11:34:16</td><td></td></tr></tbody></table>', 1, '2019-02-12 00:41:02', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data CONFIRMATI­ON OF VERBAL INSTRUCTION at Basic_data', '', 1, '2019-02-12 00:42:17', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/edit-save/2', 'Update data Financial StatusIPA at Basic_data', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>financial IPA</td><td>Financial StatusIPA</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-12 11:40:45</td><td></td></tr></tbody></table>', 1, '2019-02-12 00:42:51', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/edit-save/2', 'Update data Financial Status IPA at Basic_data', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Financial StatusIPA</td><td>Financial Status IPA</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-12 11:40:45</td><td></td></tr></tbody></table>', 1, '2019-02-12 00:42:57', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/edit-save/3', 'Update data Confirmation Of Verbel Instruction at Basic_data', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>CONFIRMATI­ON OF VERBAL INSTRUCTION</td><td>Confirmation Of Verbel Instruction</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-12 11:42:17</td><td></td></tr></tbody></table>', 1, '2019-02-12 00:43:57', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 1 at Basic_data_Option', '', 1, '2019-02-12 00:50:03', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 2 at Basic_data_Option', '', 1, '2019-02-12 00:52:23', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 3 at Basic_data_Option', '', 1, '2019-02-12 00:53:58', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Milco Project badalgama at Record_Group', '', 1, '2019-02-12 00:57:17', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 1 at Basic_data_record_group', '', 1, '2019-02-12 01:29:36', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/edit-save/1', 'Update data  at Basic_data_record_group', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>dsds</td><td>ccgvhvmh</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-12 12:29:36</td><td></td></tr></tbody></table>', 1, '2019-02-12 01:30:04', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 2 at Basic_data_record_group', '', 1, '2019-02-12 01:30:30', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 1 at Basic_data_record_group', '', 1, '2019-02-12 01:31:39', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/edit-save/1', 'Update data  at Basic_data_record_group', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>this is BdRg</td><td>This is BdRg</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-12 12:31:39</td><td></td></tr></tbody></table>', 1, '2019-02-12 01:31:47', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/7', 'Delete data 7 at Day status', '', 1, '2019-02-12 01:55:50', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 2 at Basic_data_record_group', '', 1, '2019-02-12 02:19:55', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data RFI at Basic_data_type', '', 1, '2019-02-12 02:23:10', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data RFI at Basic_data', '', 1, '2019-02-12 02:23:30', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 02:43:26', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 02:43:33', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Kandy at Record_Group', '', 1, '2019-02-12 02:47:09', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 02:47:40', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 02:48:05', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 03:33:59', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 03:34:01', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data Test Custom view at Album', '', 1, '2019-02-12 04:40:14', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/delete/3', 'Delete data Test Custom view at Album', '', 1, '2019-02-12 04:40:18', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data test 1 at Album', '', 1, '2019-02-12 04:40:29', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 12 at Gallery', '', 1, '2019-02-12 04:42:05', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 13 at Gallery', '', 1, '2019-02-12 04:43:29', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 14 at Gallery', '', 1, '2019-02-12 04:44:41', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 15 at Gallery', '', 1, '2019-02-12 04:45:02', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 16 at Gallery', '', 1, '2019-02-12 04:45:47', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 17 at Gallery', '', 1, '2019-02-12 04:47:01', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/edit-save/3', 'Update data September – 2016 at Album', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>test 1</td><td>September – 2016</td></tr><tr><td>description</td><td>sasasa</td><td>Front view</td></tr></tbody></table>', 1, '2019-02-12 04:51:27', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/7', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>test 2</td><td>Dark trees</td></tr></tbody></table>', 1, '2019-02-12 04:52:26', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/9', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>jjgyjmggftf</td><td>Dark blue sky</td></tr></tbody></table>', 1, '2019-02-12 04:52:51', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/11', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>wether 2 gif</td><td>wether sky gif</td></tr></tbody></table>', 1, '2019-02-12 04:53:14', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/16', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>fb fbfgbfb</td><td>road side night time</td></tr></tbody></table>', 1, '2019-02-12 04:53:55', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/17', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>,jhmyju</td><td>car -> black color</td></tr></tbody></table>', 1, '2019-02-12 04:54:19', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/edit-save/2', 'Update data July – 2016 at Album', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>test des</td><td>Back side</td></tr></tbody></table>', 1, '2019-02-12 04:55:03', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Sahan at Users Management', '', 1, '2019-02-12 05:38:21', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 05:38:32', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 05:39:27', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Update data Sahan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$uRjM.ouvKbCVGwBcfp2d6OkV3VI8tLSoOJPQTUUYXw81tHyocA2vq</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>2</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 2, '2019-02-12 05:49:31', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 05:50:01', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 05:50:24', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 05:51:23', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-02-12 05:51:47', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 05:52:03', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 05:52:16', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 05:53:13', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 05:53:15', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 05:53:47', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 05:54:09', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 05:54:20', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 05:55:35', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data SMR at Users Management', '', 1, '2019-02-12 05:56:38', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'http://127.0.0.1:8000/admin/forgot', 'Someone with IP 127.0.0.1 request a password for sahannett@gmail.com', '', NULL, '2019-02-12 05:57:02', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/users/edit-save/3', 'Update data SMR at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$4Gg/varl28GXosUcYnv2ROceNkzbzqm7rOKejbfq8UmXqm2PZ8566</td><td>$2y$10$s32na510cwV4DsEhmxAzo.xpJfd.p/h94Os5KaRxu8Jck4LzAaU5G</td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-12 06:01:00', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 06:02:25', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahannett@gmail.com login with IP Address 127.0.0.1', '', 3, '2019-02-12 06:02:42', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahannett@gmail.com logout', '', 3, '2019-02-12 06:03:24', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 06:03:25', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 3 at Basic_data_record_group', '', 1, '2019-02-12 06:10:41', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 22:09:25', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 22:25:05', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:25:33', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:25:47', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 22:25:49', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Update data Sahan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$uRjM.ouvKbCVGwBcfp2d6OkV3VI8tLSoOJPQTUUYXw81tHyocA2vq</td><td>$2y$10$qkOqBZcMbwMJpIBz6W1uHui962LhtQbIWXIEhUt25YMcO42y.smPC</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-12 22:28:21', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 22:28:28', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:28:39', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:30:47', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 22:30:52', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 22:31:17', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:31:35', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:31:57', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 22:32:00', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Album at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-02-12 22:33:13', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/18', 'Update data Day status at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-folder-open-o</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2019-02-12 22:33:22', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 22:33:28', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:33:34', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26', 'Try view the data :name at Day status', '', 2, '2019-02-12 22:33:39', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:36:52', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 22:36:55', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 22:37:30', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:37:38', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17', 'Try view the data :name at Gallery', '', 2, '2019-02-12 22:37:53', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17', 'Try view the data :name at Gallery', '', 2, '2019-02-12 22:39:17', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:45:46', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:45:52', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:46:11', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:46:39', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:47:32', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-02-12 22:48:05', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:48:11', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:49:00', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-02-12 22:49:47', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-02-12 22:49:52', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-02-12 22:50:16', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 22:51:11', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-12 22:51:28', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-12 22:55:19', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data REQUEST FOR INFORMATION at Basic_data_type', '', 1, '2019-02-12 22:59:26', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Activity Relevant to Detail at Basic_data', '', 1, '2019-02-12 23:00:00', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 4 at Basic_data_record_group', '', 1, '2019-02-12 23:01:15', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data physical progress of buildings at Basic_data', '', 1, '2019-02-13 00:47:02', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data physical progress of quarters at Basic_data', '', 1, '2019-02-13 00:48:07', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 4 at Basic_data_Option', '', 1, '2019-02-13 01:54:54', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 1 at Record_Details', '', 1, '2019-02-13 05:50:04', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 2 at Record_Details', '', 1, '2019-02-13 05:51:11', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 3 at Record_Details', '', 1, '2019-02-13 05:51:31', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 4 at Record_Details', '', 1, '2019-02-13 06:00:15', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 5 at Record_Details', '', 1, '2019-02-13 06:00:40', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 6 at Record_Details', '', 1, '2019-02-13 06:02:08', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 7 at Record_Details', '', 1, '2019-02-13 06:02:36', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 3 at Record_Details', '', 1, '2019-02-13 06:10:52', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 8 at Record_Details', '', 1, '2019-02-13 06:11:54', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 9 at Record_Details', '', 1, '2019-02-13 06:13:24', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 5 at Basic_data_Option', '', 1, '2019-02-13 07:38:02', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/module_generator/delete/30', 'Delete data scss at Module Generator', '', 1, '2019-02-13 08:15:27', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/3', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>varchar_1_type</td><td>varchar</td><td>text</td></tr><tr><td>updated</td><td>2019-02-12 17:20:03</td><td></td></tr></tbody></table>', 1, '2019-02-13 08:24:02', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/7', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>updated</td><td>2019-02-13 17:02:36</td><td></td></tr></tbody></table>', 1, '2019-02-13 08:26:05', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 10 at Record_Details', '', 1, '2019-02-13 08:34:54', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/6', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>updated</td><td>2019-02-13 17:02:08</td><td></td></tr></tbody></table>', 1, '2019-02-13 08:36:25', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 11 at Record_Details', '', 1, '2019-02-13 08:52:18', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/5', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-13 18:38:02</td><td></td></tr></tbody></table>', 1, '2019-02-13 09:36:18', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/5', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-13 20:36:18</td><td></td></tr></tbody></table>', 1, '2019-02-13 09:45:18', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/5', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-13 20:45:18</td><td></td></tr></tbody></table>', 1, '2019-02-13 09:45:58', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/5', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-13 20:45:58</td><td></td></tr></tbody></table>', 1, '2019-02-13 09:46:50', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 1 at Option_order', '', 1, '2019-02-13 10:16:39', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 2 at Option_order', '', 1, '2019-02-13 10:19:03', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/2', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-13 21:19:03</td><td></td></tr></tbody></table>', 1, '2019-02-13 10:19:17', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/2', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-13 21:19:03</td><td></td></tr></tbody></table>', 1, '2019-02-13 10:42:08', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/2', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-13 21:19:03</td><td></td></tr></tbody></table>', 1, '2019-02-13 10:42:20', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/2', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-13 21:19:03</td><td></td></tr></tbody></table>', 1, '2019-02-13 10:42:31', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-13 22:23:58', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/8', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-13 17:11:53</td><td></td></tr></tbody></table>', 1, '2019-02-13 22:28:45', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/11', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>updated</td><td>2019-02-13 19:52:18</td><td></td></tr></tbody></table>', 1, '2019-02-13 22:30:14', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 11,10,7,6 at Record_Details', '', 1, '2019-02-13 22:34:30', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/8', 'Delete data 8 at Record_Details', '', 1, '2019-02-13 22:45:28', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/action-selected', 'Delete data 2,1 at Basic_data_record_group', '', 1, '2019-02-13 22:46:06', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/5', 'Delete data Activity Relevant to Detail at Basic_data', '', 1, '2019-02-13 22:47:44', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/4', 'Delete data RFI at Basic_data', '', 1, '2019-02-13 22:49:28', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/2', 'Delete data Financial Status IPA at Basic_data', '', 1, '2019-02-13 22:49:33', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/1', 'Delete data physical progress percentage at Basic_data', '', 1, '2019-02-13 22:49:40', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 7 at Day status', '', 1, '2019-02-14 05:26:11', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/7', 'Delete data 7 at Day status', '', 1, '2019-02-14 05:26:32', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 7 at Day status', '', 1, '2019-02-14 05:26:44', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-14 22:26:26', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 3 at Option_order', '', 1, '2019-02-14 22:28:41', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 4 at Option_order', '', 1, '2019-02-14 22:28:57', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(342, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 5 at Option_order', '', 1, '2019-02-14 22:29:22', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/delete/2', 'Delete data 2 at Option_order', '', 1, '2019-02-14 22:29:57', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 6 at Option_order', '', 1, '2019-02-14 22:30:13', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/5', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-13 20:46:50</td><td></td></tr></tbody></table>', 1, '2019-02-14 23:10:43', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/delete/1', 'Delete data 1 at Option_order', '', 1, '2019-02-14 23:11:14', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 7 at Option_order', '', 1, '2019-02-14 23:11:41', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:46:06</td><td></td></tr></tbody></table>', 1, '2019-02-15 00:46:38', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:46:38</td><td></td></tr></tbody></table>', 1, '2019-02-15 00:47:22', NULL),
(350, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:46:38</td><td></td></tr></tbody></table>', 1, '2019-02-15 00:47:30', NULL),
(351, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:47:30</td><td></td></tr></tbody></table>', 1, '2019-02-15 00:48:18', NULL),
(352, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:48:18</td><td></td></tr></tbody></table>', 1, '2019-02-15 00:48:49', NULL),
(353, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>3</td><td>1</td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:48:49</td><td></td></tr></tbody></table>', 1, '2019-02-15 00:49:03', NULL),
(354, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:50:57</td><td></td></tr></tbody></table>', 1, '2019-02-15 00:51:17', NULL),
(355, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 5 at Basic_data_record_group', '', 1, '2019-02-15 00:52:02', NULL),
(356, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 11:51:17</td><td></td></tr></tbody></table>', 1, '2019-02-15 01:04:42', NULL),
(357, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 12:04:42</td><td></td></tr></tbody></table>', 1, '2019-02-15 01:06:04', NULL),
(358, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-15 23:21:24', NULL),
(359, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 8 at Day status', '', 1, '2019-02-15 23:24:50', NULL),
(360, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 12:06:04</td><td></td></tr></tbody></table>', 1, '2019-02-15 23:31:40', NULL),
(361, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-16 10:31:40</td><td></td></tr></tbody></table>', 1, '2019-02-15 23:31:51', NULL),
(362, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-16 09:47:20', NULL),
(363, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-17 19:48:35', NULL),
(364, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-16 20:48:39</td><td></td></tr></tbody></table>', 1, '2019-02-17 20:39:32', NULL),
(365, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 07:39:32</td><td></td></tr></tbody></table>', 1, '2019-02-17 20:39:50', NULL),
(366, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 07:39:50</td><td></td></tr></tbody></table>', 1, '2019-02-17 20:40:57', NULL),
(367, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 07:40:57</td><td></td></tr></tbody></table>', 1, '2019-02-17 23:33:01', NULL),
(368, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td>4</td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 10:35:27</td><td></td></tr></tbody></table>', 1, '2019-02-18 01:15:15', NULL),
(369, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>3</td><td>2</td></tr><tr><td>int_3_order</td><td>4</td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:15:15</td><td></td></tr></tbody></table>', 1, '2019-02-18 01:15:31', NULL),
(370, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/1', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-13 19:17:07</td><td></td></tr></tbody></table>', 1, '2019-02-18 01:33:49', NULL),
(371, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td>4</td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:28:42</td><td></td></tr></tbody></table>', 1, '2019-02-18 01:34:22', NULL),
(372, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:34:22</td><td></td></tr></tbody></table>', 1, '2019-02-18 01:37:21', NULL),
(373, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td>6</td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 10:41:55</td><td></td></tr></tbody></table>', 1, '2019-02-18 01:39:17', NULL),
(374, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td>6</td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:44:41</td><td></td></tr></tbody></table>', 1, '2019-02-18 01:45:18', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:37:21</td><td></td></tr></tbody></table>', 1, '2019-02-18 02:05:07', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 13:05:07</td><td></td></tr></tbody></table>', 1, '2019-02-18 02:05:24', NULL),
(377, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/9', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>updated</td><td>2019-02-13 17:13:24</td><td></td></tr></tbody></table>', 1, '2019-02-18 02:51:59', NULL),
(378, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/5', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>updated</td><td>2019-02-13 17:00:40</td><td></td></tr></tbody></table>', 1, '2019-02-18 02:52:06', NULL),
(379, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 13:05:24</td><td></td></tr></tbody></table>', 1, '2019-02-18 03:21:13', NULL),
(380, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/1', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-18 12:33:49</td><td></td></tr></tbody></table>', 1, '2019-02-18 03:22:04', NULL),
(381, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td>1</td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 14:21:13</td><td></td></tr></tbody></table>', 1, '2019-02-18 03:22:26', NULL),
(382, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 14:22:26</td><td></td></tr></tbody></table>', 1, '2019-02-18 05:13:52', NULL),
(383, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:38:52</td><td></td></tr></tbody></table>', 1, '2019-02-18 05:40:36', NULL),
(384, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/1', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_lable</td><td>int 3 lable</td><td></td></tr><tr><td>date_1_lable</td><td>lable date 1</td><td></td></tr><tr><td>date_1_type</td><td>datetime</td><td>hidden</td></tr><tr><td>varchar_1_lable</td><td>Month</td><td></td></tr><tr><td>varchar_1_type</td><td>text</td><td>hidden</td></tr><tr><td>updated</td><td>2019-02-18 14:22:04</td><td></td></tr></tbody></table>', 1, '2019-02-18 05:48:07', NULL),
(385, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 06:07:21', NULL),
(386, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 06:07:35', NULL),
(387, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 06:07:46', NULL),
(388, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-18 12:18:29', NULL),
(389, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 12:20:21', NULL),
(390, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td></td></tr><tr><td>int_3_order</td><td>6</td><td></td></tr><tr><td>date_1_order</td><td>3</td><td></td></tr><tr><td>date_2_order</td><td>4</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>5</td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:45:17</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:37:06', NULL),
(391, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td></td></tr><tr><td>int_3_order</td><td>6</td><td></td></tr><tr><td>date_1_order</td><td>3</td><td></td></tr><tr><td>date_2_order</td><td>4</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>5</td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:45:17</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:37:20', NULL),
(392, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td></td></tr><tr><td>int_3_order</td><td>6</td><td></td></tr><tr><td>date_1_order</td><td>3</td><td></td></tr><tr><td>date_2_order</td><td>4</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>5</td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:45:17</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:37:31', NULL),
(393, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td></td></tr><tr><td>int_3_order</td><td>6</td><td></td></tr><tr><td>date_1_order</td><td>3</td><td></td></tr><tr><td>date_2_order</td><td>4</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>5</td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:45:17</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:37:46', NULL),
(394, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td></td></tr><tr><td>int_3_order</td><td>6</td><td></td></tr><tr><td>date_1_order</td><td>3</td><td></td></tr><tr><td>date_2_order</td><td>4</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>5</td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:45:17</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:38:07', NULL),
(395, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:38:30', NULL),
(396, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:38:45', NULL),
(397, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:39:27', NULL),
(398, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td></td></tr><tr><td>int_3_order</td><td>6</td><td></td></tr><tr><td>date_1_order</td><td>3</td><td></td></tr><tr><td>date_2_order</td><td>4</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>5</td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:45:17</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:40:31', NULL),
(399, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>1</td><td></td></tr><tr><td>int_3_order</td><td>6</td><td></td></tr><tr><td>date_1_order</td><td>3</td><td></td></tr><tr><td>date_2_order</td><td>4</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>5</td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 12:45:17</td><td></td></tr></tbody></table>', 1, '2019-02-18 13:40:37', NULL),
(400, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-18 21:52:01', NULL),
(401, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 21:52:32', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(402, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-18 16:40:36</td><td></td></tr></tbody></table>', 1, '2019-02-18 21:54:17', NULL),
(403, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-19 08:56:31</td><td></td></tr></tbody></table>', 1, '2019-02-18 22:00:19', NULL),
(404, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-19 08:56:31</td><td></td></tr></tbody></table>', 1, '2019-02-18 22:00:29', NULL),
(405, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-19 21:47:57', NULL),
(406, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-20 00:49:54', NULL),
(407, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td>2</td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-19 08:56:31</td><td></td></tr></tbody></table>', 1, '2019-02-20 01:11:40', NULL),
(408, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 10 at Record_Details', '', 1, '2019-02-20 01:27:07', NULL),
(409, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/10', 'Delete data 10 at Record_Details', '', 1, '2019-02-20 01:27:59', NULL),
(410, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 10 at Record_Details', '', 1, '2019-02-20 01:28:07', NULL),
(411, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/10', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>int_1</td><td>34</td><td></td></tr><tr><td>int_2</td><td>31</td><td></td></tr><tr><td>int_3</td><td></td><td></td></tr><tr><td>date_1</td><td></td><td></td></tr><tr><td>date_2</td><td></td><td></td></tr><tr><td>date_3</td><td></td><td></td></tr><tr><td>varchar_1</td><td></td><td></td></tr><tr><td>varchar_2</td><td></td><td></td></tr><tr><td>varchar_3</td><td></td><td></td></tr><tr><td>textarea_1</td><td></td><td></td></tr><tr><td>textarea_2</td><td></td><td></td></tr><tr><td>textarea_3</td><td></td><td></td></tr><tr><td>attachment_1</td><td></td><td></td></tr><tr><td>attachment_2</td><td></td><td></td></tr><tr><td>attachment_3</td><td></td><td></td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 12:28:07</td><td></td></tr></tbody></table>', 1, '2019-02-20 01:28:55', NULL),
(412, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 6 at Basic_data_record_group', '', 1, '2019-02-20 01:30:23', NULL),
(413, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 7 at Basic_data_record_group', '', 1, '2019-02-20 01:30:45', NULL),
(414, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 8 at Basic_data_record_group', '', 1, '2019-02-20 01:30:57', NULL),
(415, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/5', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td>1</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td>2</td><td></td></tr><tr><td>varchar_2_order</td><td>4</td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 12:08:04</td><td></td></tr></tbody></table>', 1, '2019-02-20 01:31:56', NULL),
(416, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 11 at Record_Details', '', 1, '2019-02-20 01:38:21', NULL),
(417, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/delete/7', 'Delete data 7 at Option_order', '', 1, '2019-02-20 01:39:35', NULL),
(418, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/delete/6', 'Delete data 6 at Option_order', '', 1, '2019-02-20 01:40:58', NULL),
(419, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/delete/1', 'Delete data 1 at Basic_data_Option', '', 1, '2019-02-20 02:04:17', NULL),
(420, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 6 at Basic_data_Option', '', 1, '2019-02-20 02:05:28', NULL),
(421, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Test Type at Basic_data_type', '', 1, '2019-02-20 02:11:53', NULL),
(422, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/delete/7', 'Delete data 7 at Basic_data_Option', '', 1, '2019-02-20 02:19:41', NULL),
(423, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 7 at Basic_data_Option', '', 1, '2019-02-20 02:20:15', NULL),
(424, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/delete/7', 'Delete data 7 at Basic_data_Option', '', 1, '2019-02-20 02:20:49', NULL),
(425, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/delete/6', 'Delete data Test Type at Basic_data_type', '', 1, '2019-02-20 02:21:03', NULL),
(426, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Labour at Basic_data_type', '', 1, '2019-02-20 02:21:23', NULL),
(427, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 7 at Basic_data_Option', '', 1, '2019-02-20 02:22:01', NULL),
(428, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 6 at Option_order', '', 1, '2019-02-20 02:34:59', NULL),
(429, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/5', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 12:08:04</td><td></td></tr></tbody></table>', 1, '2019-02-20 03:21:37', NULL),
(430, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 7 at Option_order', '', 1, '2019-02-20 03:37:55', NULL),
(431, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 14:37:55</td><td></td></tr></tbody></table>', 1, '2019-02-20 03:38:08', NULL),
(432, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Labour name at Basic_data', '', 1, '2019-02-20 03:40:48', NULL),
(433, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 9 at Basic_data_record_group', '', 1, '2019-02-20 03:41:16', NULL),
(434, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 13:34:59</td><td></td></tr></tbody></table>', 1, '2019-02-20 03:41:43', NULL),
(435, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/7', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-20 13:22:01</td><td></td></tr></tbody></table>', 1, '2019-02-20 03:43:07', NULL),
(436, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_order</td><td></td><td>4</td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td>3</td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td>5</td></tr><tr><td>updated</td><td>2019-02-20 14:41:43</td><td></td></tr></tbody></table>', 1, '2019-02-20 03:43:56', NULL),
(437, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 03:44:23', NULL),
(438, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 04:04:03', NULL),
(439, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 04:04:44', NULL),
(440, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 04:04:48', NULL),
(441, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 04:05:02', NULL),
(442, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/6', 'Update data  at Basic_data_Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_2_lable</td><td>Number</td><td>Actual progress percentage</td></tr><tr><td>varchar_1_lable</td><td>Text</td><td>Month</td></tr><tr><td>updated</td><td>2019-02-20 13:05:28</td><td></td></tr></tbody></table>', 1, '2019-02-20 04:08:01', NULL),
(443, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td>3</td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 14:38:08</td><td></td></tr></tbody></table>', 1, '2019-02-20 04:08:11', NULL),
(444, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 10 at Record_Details', '', 1, '2019-02-20 04:08:53', NULL),
(445, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 10 at Record_Details', '', 1, '2019-02-20 04:11:28', NULL),
(446, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 15:08:11</td><td></td></tr></tbody></table>', 1, '2019-02-20 04:16:54', NULL),
(447, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/10', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>int_1</td><td>34</td><td></td></tr><tr><td>int_2</td><td>45</td><td></td></tr><tr><td>int_3</td><td></td><td></td></tr><tr><td>date_1</td><td></td><td></td></tr><tr><td>date_2</td><td></td><td></td></tr><tr><td>date_3</td><td></td><td></td></tr><tr><td>varchar_1</td><td>January</td><td></td></tr><tr><td>varchar_2</td><td></td><td></td></tr><tr><td>varchar_3</td><td></td><td></td></tr><tr><td>textarea_1</td><td></td><td></td></tr><tr><td>textarea_2</td><td></td><td></td></tr><tr><td>textarea_3</td><td></td><td></td></tr><tr><td>attachment_1</td><td></td><td></td></tr><tr><td>attachment_2</td><td></td><td></td></tr><tr><td>attachment_3</td><td></td><td></td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 15:11:28</td><td></td></tr></tbody></table>', 1, '2019-02-20 04:17:11', NULL),
(448, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 11 at Record_Details', '', 1, '2019-02-20 04:25:08', NULL),
(449, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/11', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>int_2</td><td></td><td></td></tr><tr><td>int_3</td><td></td><td></td></tr><tr><td>date_1</td><td></td><td></td></tr><tr><td>date_2</td><td></td><td></td></tr><tr><td>date_3</td><td></td><td></td></tr><tr><td>varchar_2</td><td></td><td></td></tr><tr><td>varchar_3</td><td></td><td></td></tr><tr><td>textarea_1</td><td></td><td></td></tr><tr><td>textarea_2</td><td></td><td></td></tr><tr><td>textarea_3</td><td></td><td></td></tr><tr><td>attachment_1</td><td></td><td></td></tr><tr><td>attachment_2</td><td></td><td></td></tr><tr><td>attachment_3</td><td></td><td></td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 15:25:08</td><td></td></tr></tbody></table>', 1, '2019-02-20 04:26:05', NULL),
(450, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/11', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>int_2</td><td></td><td>72</td></tr><tr><td>int_3</td><td></td><td></td></tr><tr><td>date_1</td><td></td><td></td></tr><tr><td>date_2</td><td></td><td></td></tr><tr><td>date_3</td><td></td><td></td></tr><tr><td>varchar_2</td><td></td><td></td></tr><tr><td>varchar_3</td><td></td><td></td></tr><tr><td>textarea_1</td><td></td><td></td></tr><tr><td>textarea_2</td><td></td><td></td></tr><tr><td>textarea_3</td><td></td><td></td></tr><tr><td>attachment_1</td><td></td><td></td></tr><tr><td>attachment_2</td><td></td><td></td></tr><tr><td>attachment_3</td><td></td><td></td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 15:25:08</td><td></td></tr></tbody></table>', 1, '2019-02-20 04:27:17', NULL),
(451, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 04:31:55', NULL),
(452, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 04:32:00', NULL),
(453, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 04:33:53', NULL),
(454, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 04:33:58', NULL),
(455, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 04:34:39', NULL),
(456, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 04:34:43', NULL),
(457, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 04:35:49', NULL),
(458, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 04:35:54', NULL),
(459, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 04:38:29', NULL),
(460, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 04:40:27', NULL),
(461, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 04:41:47', NULL),
(462, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 04:42:10', NULL),
(463, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 04:42:20', NULL),
(464, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 04:46:54', NULL),
(465, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 04:47:30', NULL),
(466, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 04:47:51', NULL),
(467, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 14 at Record_Details', '', 1, '2019-02-20 05:01:22', NULL),
(468, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/14', 'Delete data 14 at Record_Details', '', 1, '2019-02-20 05:02:09', NULL),
(469, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 14 at Record_Details', '', 1, '2019-02-20 05:02:25', NULL),
(470, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/14', 'Delete data 14 at Record_Details', '', 1, '2019-02-20 05:04:39', NULL),
(471, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 14 at Record_Details', '', 1, '2019-02-20 05:04:48', NULL),
(472, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/14', 'Delete data 14 at Record_Details', '', 1, '2019-02-20 05:05:04', NULL),
(473, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 14 at Record_Details', '', 1, '2019-02-20 05:10:48', NULL),
(474, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/14', 'Delete data 14 at Record_Details', '', 1, '2019-02-20 05:10:53', NULL),
(475, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 05:10:55', NULL),
(476, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:10:59', NULL),
(477, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/11', 'Delete data 11 at Record_Details', '', 1, '2019-02-20 05:11:01', NULL),
(478, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 11 at Record_Details', '', 1, '2019-02-20 05:11:36', NULL),
(479, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/11', 'Delete data 11 at Record_Details', '', 1, '2019-02-20 05:12:08', NULL),
(480, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 11 at Record_Details', '', 1, '2019-02-20 05:22:02', NULL),
(481, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/11', 'Delete data 11 at Record_Details', '', 1, '2019-02-20 05:22:14', NULL),
(482, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 11 at Record_Details', '', 1, '2019-02-20 05:22:22', NULL),
(483, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:26:01', NULL),
(484, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:27:52', NULL),
(485, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:28:02', NULL),
(486, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:28:07', NULL),
(487, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/delete/7', 'Delete data 7 at Option_order', '', 1, '2019-02-20 05:31:00', NULL),
(488, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 7 at Option_order', '', 1, '2019-02-20 05:31:08', NULL),
(489, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:31:36', NULL),
(490, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 05:35:04', NULL),
(491, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:35:10', NULL),
(492, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 05:35:35', NULL),
(493, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:35:44', NULL),
(494, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:36:36', NULL),
(495, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:36:52', NULL),
(496, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:37:26', NULL),
(497, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:37:42', NULL),
(498, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:38:06', NULL),
(499, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:38:15', NULL),
(500, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 05:48:11', NULL),
(501, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 05:48:29', NULL),
(502, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:48:32', NULL),
(503, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:49:48', NULL),
(504, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:49:53', NULL),
(505, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:51:05', NULL),
(506, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:51:11', NULL),
(507, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:51:18', NULL),
(508, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:51:22', NULL),
(509, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:53:53', NULL),
(510, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record_Details', '', 1, '2019-02-20 05:54:02', NULL),
(511, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 12 at Record_Details', '', 1, '2019-02-20 05:54:10', NULL),
(512, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-20 08:24:18', NULL),
(513, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-20 08:50:28', NULL),
(514, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.38 (KHTML, like Gecko) Version/11.0 Mobile/15A372 Safari/604.1', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-20 09:01:26', NULL),
(515, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/8', 'Delete data 8 at Day status', '', 1, '2019-02-20 12:08:21', NULL),
(516, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/7', 'Delete data 7 at Day status', '', 1, '2019-02-20 12:08:23', NULL),
(517, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/6', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-20 12:11:54', NULL),
(518, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/6', 'Delete data 6 at Day status', '', 1, '2019-02-20 12:12:12', NULL),
(519, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-20 12:12:55', NULL),
(520, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record_Details', '', 1, '2019-02-20 12:13:02', NULL),
(521, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 16:31:08</td><td></td></tr></tbody></table>', 1, '2019-02-20 12:18:19', NULL),
(522, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/5', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 12:08:04</td><td></td></tr></tbody></table>', 1, '2019-02-20 12:48:41', NULL),
(523, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/5', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 23:48:41</td><td></td></tr></tbody></table>', 1, '2019-02-20 12:51:36', NULL),
(524, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 8 at Option_order', '', 1, '2019-02-20 13:00:34', NULL),
(525, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-21 12:08:37', NULL),
(526, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 13 at Record_Details', '', 1, '2019-02-21 12:18:05', NULL),
(527, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 14 at Record_Details', '', 1, '2019-02-21 12:19:18', NULL),
(528, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 15 at Record_Details', '', 1, '2019-02-21 12:21:22', NULL),
(529, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 16 at Record_Details', '', 1, '2019-02-21 12:22:52', NULL),
(530, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 14:43:56</td><td></td></tr></tbody></table>', 1, '2019-02-21 12:23:30', NULL),
(531, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/4', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 09:28:57</td><td></td></tr></tbody></table>', 1, '2019-02-21 12:27:48', NULL),
(532, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/3', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-15 09:28:41</td><td></td></tr></tbody></table>', 1, '2019-02-21 12:29:15', NULL),
(533, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-02/screenshot_from_2018_12_31_11_27_00.png</td></tr><tr><td>password</td><td>$2y$10$e/zIcAFEtTTwc1L2Z3YsQe//2D7XxCLQaqhkeWIhdOvDBOqQrLJxi</td><td>$2y$10$VTCt9rmkBlT82bEA2rPeLuPVLXe1J8blifBpMbKGqP7894mobqMsi</td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-02-21 12:33:30', NULL),
(534, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-21 12:33:43', NULL),
(535, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-21 12:33:51', NULL),
(536, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/action-selected', 'Delete data 15,14,13,12 at Gallery', '', 1, '2019-02-21 12:37:07', NULL),
(537, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-22 07:28:07', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(538, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/8', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td>1</td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-21 00:00:34</td><td></td></tr></tbody></table>', 1, '2019-02-22 07:29:02', NULL),
(539, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/7', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 23:18:19</td><td></td></tr></tbody></table>', 1, '2019-02-22 07:30:50', NULL),
(540, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 17 at Record_Details', '', 1, '2019-02-22 07:36:34', NULL),
(541, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 18 at Record_Details', '', 1, '2019-02-22 07:49:22', NULL),
(542, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 19 at Record_Details', '', 1, '2019-02-22 07:50:22', NULL),
(543, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 20 at Record_Details', '', 1, '2019-02-22 07:51:12', NULL),
(544, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 21 at Record_Details', '', 1, '2019-02-22 07:52:15', NULL),
(545, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 22 at Record_Details', '', 1, '2019-02-22 08:06:56', NULL),
(546, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 23 at Record_Details', '', 1, '2019-02-22 08:07:20', NULL),
(547, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 24 at Record_Details', '', 1, '2019-02-22 08:11:56', NULL),
(548, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 25 at Record_Details', '', 1, '2019-02-22 08:13:34', NULL),
(549, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 26 at Record_Details', '', 1, '2019-02-22 08:19:57', NULL),
(550, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 27 at Record_Details', '', 1, '2019-02-22 08:20:19', NULL),
(551, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-24 22:28:32', NULL),
(552, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/4', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_1_order</td><td></td><td></td></tr><tr><td>date_2_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-21 23:27:48</td><td></td></tr></tbody></table>', 1, '2019-02-24 22:36:38', NULL),
(553, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/8', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-21 00:00:34</td><td></td></tr></tbody></table>', 1, '2019-02-24 22:38:12', NULL),
(554, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/8', 'Update data  at Option_order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-25 09:38:12</td><td></td></tr></tbody></table>', 1, '2019-02-24 22:38:56', NULL),
(555, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Financial progress at Basic_data', '', 1, '2019-02-24 22:39:55', NULL),
(556, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 10 at Basic_data_record_group', '', 1, '2019-02-24 22:40:47', NULL),
(557, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 28 at Record_Details', '', 1, '2019-02-24 22:41:30', NULL),
(558, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/28', 'Delete data 28 at Record_Details', '', 1, '2019-02-24 22:41:36', NULL),
(559, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 28 at Record_Details', '', 1, '2019-02-24 22:42:01', NULL),
(560, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/28', 'Update data  at Record_Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>int_1</td><td></td><td></td></tr><tr><td>int_2</td><td></td><td></td></tr><tr><td>int_3</td><td></td><td></td></tr><tr><td>date_1</td><td></td><td></td></tr><tr><td>date_2</td><td></td><td></td></tr><tr><td>date_3</td><td></td><td></td></tr><tr><td>varchar_1</td><td></td><td></td></tr><tr><td>varchar_2</td><td></td><td></td></tr><tr><td>varchar_3</td><td></td><td></td></tr><tr><td>textarea_1</td><td></td><td></td></tr><tr><td>textarea_2</td><td></td><td></td></tr><tr><td>textarea_3</td><td></td><td></td></tr><tr><td>attachment_1</td><td></td><td></td></tr><tr><td>attachment_2</td><td></td><td></td></tr><tr><td>attachment_3</td><td></td><td></td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-25 09:42:01</td><td></td></tr></tbody></table>', 1, '2019-02-24 22:42:08', NULL),
(561, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/18', 'Delete data 18 at Record_Details', '', 1, '2019-02-24 22:42:29', NULL),
(562, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/17', 'Delete data 17 at Record_Details', '', 1, '2019-02-24 22:42:34', NULL),
(563, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/20', 'Delete data 20 at Record_Details', '', 1, '2019-02-24 22:42:38', NULL),
(564, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/22', 'Delete data 22 at Record_Details', '', 1, '2019-02-24 22:42:42', NULL),
(565, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/27', 'Delete data 27 at Record_Details', '', 1, '2019-02-24 22:42:47', NULL),
(566, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/26', 'Delete data 26 at Record_Details', '', 1, '2019-02-24 22:42:50', NULL),
(567, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/25', 'Delete data 25 at Record_Details', '', 1, '2019-02-24 22:42:53', NULL),
(568, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/24', 'Delete data 24 at Record_Details', '', 1, '2019-02-24 22:42:56', NULL),
(569, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/23', 'Delete data 23 at Record_Details', '', 1, '2019-02-24 22:43:00', NULL),
(570, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/21', 'Delete data 21 at Record_Details', '', 1, '2019-02-24 22:43:03', NULL),
(571, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/19', 'Delete data 19 at Record_Details', '', 1, '2019-02-24 22:43:07', NULL),
(572, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/delete/21', 'Delete data 21 at Gallery', '', 1, '2019-02-24 22:44:07', NULL),
(573, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/delete-image', 'Delete the image of 20 at Gallery', '', 1, '2019-02-24 22:44:14', NULL),
(574, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/20', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-02/1080p_best.jpg</td></tr></tbody></table>', 1, '2019-02-24 22:44:39', NULL),
(575, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/delete-image', 'Delete the image of 19 at Gallery', '', 1, '2019-02-24 22:44:56', NULL),
(576, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/19', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-02/394021_makro_mox_gribochki_1680x1050_wwwgde_foncom.jpg</td></tr></tbody></table>', 1, '2019-02-24 22:45:06', NULL),
(577, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/delete-image', 'Delete the image of 18 at Gallery', '', 1, '2019-02-24 22:59:39', NULL),
(578, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/edit-save/18', 'Update data  at Gallery', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>image</td><td></td><td>uploads/1/2019-02/685670.jpg</td></tr></tbody></table>', 1, '2019-02-24 22:59:46', NULL),
(579, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data iframe at Menu Management', '', 1, '2019-02-24 23:11:42', NULL),
(580, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data iframe at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-film</td><td>fa fa-folder-open-o</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-24 23:13:17', NULL),
(581, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data iframe at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdmindashboardController@getindex</td><td>AdmindashboardController@getIndex</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-24 23:16:05', NULL),
(582, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data iframe at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-24 23:49:50', NULL),
(583, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Album at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-24 23:52:43', NULL),
(584, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-cloud</td><td>fa fa-folder-open-o</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-02-24 23:53:16', NULL),
(585, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Basic Data at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-database</td><td>fa fa-folder-open-o</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-02-24 23:53:55', NULL),
(586, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-25 00:33:24', NULL),
(587, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/5', 'Delete data 5 at Day status', '', 1, '2019-02-25 00:33:32', NULL),
(588, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/4', 'Delete data 4 at Day status', '', 1, '2019-02-25 00:33:36', NULL),
(589, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/3', 'Delete data 3 at Day status', '', 1, '2019-02-25 00:33:38', NULL),
(590, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data Live Camera at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>iframe</td><td>Live Camera</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-25 01:01:34', NULL),
(591, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/10', 'Delete data 10 at Basic Data Record Group', '', 1, '2019-02-25 01:32:45', NULL),
(592, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/10', 'Delete data 10 at Record Details', '', 1, '2019-02-25 01:32:54', NULL),
(593, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/12', 'Delete data 12 at Record Details', '', 1, '2019-02-25 01:32:56', NULL),
(594, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/11', 'Delete data 11 at Record Details', '', 1, '2019-02-25 01:32:59', NULL),
(595, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/5', 'Delete data 5 at Basic Data Record Group', '', 1, '2019-02-25 01:33:04', NULL),
(596, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/6', 'Delete data 6 at Basic Data Record Group', '', 1, '2019-02-25 01:33:11', NULL),
(597, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/7', 'Delete data 7 at Basic Data Record Group', '', 1, '2019-02-25 01:33:18', NULL),
(598, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/8', 'Delete data 8 at Basic Data Record Group', '', 1, '2019-02-25 01:33:25', NULL),
(599, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/16', 'Delete data 16 at Record Details', '', 1, '2019-02-25 01:33:29', NULL),
(600, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/15', 'Delete data 15 at Record Details', '', 1, '2019-02-25 01:33:31', NULL),
(601, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/14', 'Delete data 14 at Record Details', '', 1, '2019-02-25 01:33:33', NULL),
(602, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/13', 'Delete data 13 at Record Details', '', 1, '2019-02-25 01:33:36', NULL),
(603, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/9', 'Delete data 9 at Basic Data Record Group', '', 1, '2019-02-25 01:33:43', NULL),
(604, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/28', 'Delete data 28 at Record Details', '', 1, '2019-02-25 01:33:52', NULL),
(605, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/10', 'Delete data 10 at Basic Data Record Group', '', 1, '2019-02-25 01:33:57', NULL),
(606, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Physical Progress of Dairy Building at Basic Data', '', 1, '2019-02-25 01:36:17', NULL),
(607, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 5 at Basic Data Record Group', '', 1, '2019-02-25 01:37:07', NULL),
(608, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/7', 'Delete data physical progress of quarters at Basic Data', '', 1, '2019-02-25 01:38:14', NULL),
(609, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/6', 'Delete data physical progress of buildings at Basic Data', '', 1, '2019-02-25 01:38:22', NULL),
(610, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/delete/8', 'Delete data Labour name at Basic Data', '', 1, '2019-02-25 01:38:29', NULL),
(611, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Financial Status at Basic Data', '', 1, '2019-02-25 01:39:00', NULL),
(612, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 6 at Basic Data Record Group', '', 1, '2019-02-25 01:39:51', NULL),
(613, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/1', 'Update data physical at Basic Data Type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>physical progress</td><td>physical</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-12 11:33:51</td><td></td></tr></tbody></table>', 1, '2019-02-25 01:41:32', NULL),
(614, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/2', 'Update data  at Basic Data Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_type</td><td>money</td><td>number</td></tr><tr><td>updated</td><td>2019-02-13 19:29:46</td><td></td></tr></tbody></table>', 1, '2019-02-25 01:43:33', NULL),
(615, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/8', 'Update data  at Option Order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date_3_order</td><td></td><td>4</td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-25 09:38:56</td><td></td></tr></tbody></table>', 1, '2019-02-25 01:44:22', NULL),
(616, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 10 at Record Details', '', 1, '2019-02-25 01:45:03', NULL),
(617, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/10', 'Delete data 10 at Record Details', '', 1, '2019-02-25 01:45:06', NULL),
(618, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 7 at Basic Data Record Group', '', 1, '2019-02-25 01:46:34', NULL),
(619, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/5', 'Update data  at Option Order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 23:51:36</td><td></td></tr></tbody></table>', 1, '2019-02-25 01:47:14', NULL),
(620, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/5', 'Update data Requests at Basic Data Type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>REQUEST FOR INFORMATION</td><td>Requests</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-13 09:59:26</td><td></td></tr></tbody></table>', 1, '2019-02-25 01:48:29', NULL),
(621, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data REQUEST FOR INFORMATION at Basic Data', '', 1, '2019-02-25 01:49:06', NULL),
(622, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 8 at Basic Data Record Group', '', 1, '2019-02-25 01:49:32', NULL),
(623, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/3', 'Update data  at Option Order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_order</td><td></td><td></td></tr><tr><td>int_2_order</td><td></td><td></td></tr><tr><td>int_3_order</td><td></td><td></td></tr><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-21 23:29:15</td><td></td></tr></tbody></table>', 1, '2019-02-25 01:50:17', NULL),
(624, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data Live Camera at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-folder-open-o</td><td>fa fa-video-camera</td></tr></tbody></table>', 1, '2019-02-25 02:17:18', NULL),
(625, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Weather at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-folder-open-o</td><td>fa fa-cloud</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-02-25 02:19:21', NULL),
(626, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Records at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-pencil-square-o</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2019-02-25 02:20:28', NULL),
(627, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Configurations at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-folder-open-o</td><td>fa fa-check-square-o</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2019-02-25 02:21:18', NULL),
(628, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data test at Statistic Builder', '', 1, '2019-02-25 04:21:13', NULL),
(629, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Test Charts at Menu Management', '', 1, '2019-02-25 04:52:39', NULL),
(630, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/46', 'Delete data 46 at Record Details', '', 1, '2019-02-25 07:48:16', NULL),
(631, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/40', 'Delete data 40 at Record Details', '', 1, '2019-02-25 07:48:21', NULL),
(632, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/39', 'Delete data 39 at Record Details', '', 1, '2019-02-25 07:48:26', NULL),
(633, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data DashBoard at Menu Management', '', 1, '2019-02-25 07:51:31', NULL),
(634, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Update data DashBoard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>icon</td><td>fa fa-glass</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-25 07:51:42', NULL),
(635, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data Live Camera at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdmindashboardController@getIndex</td><td>AdminDashboardController@getIndex2</td></tr><tr><td>icon</td><td>fa fa-video-camera</td><td>fa fa-glass</td></tr></tbody></table>', 1, '2019-02-25 07:58:30', NULL),
(636, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Update data DashBoard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>URL</td><td>Controller & Method</td></tr><tr><td>path</td><td>dash</td><td>AdminDashboardController@getIndex1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-25 07:59:15', NULL),
(637, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Update data DashBoard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-line-chart</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-25 08:04:04', NULL),
(638, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-25 21:52:08', NULL),
(639, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/6', 'Update data Labour_CARP_BB_MAS at Basic Data Type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Labour</td><td>Labour_CARP_BB_MAS</td></tr><tr><td>value</td><td>Labour</td><td>Labour_value</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 13:21:23</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:01:15', NULL),
(640, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/7', 'Update data  at Basic Data Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_lable</td><td>Test 01</td><td>Skilled carpenty</td></tr><tr><td>int_2_lable</td><td>Int 2 Lable test</td><td>Semi_Skilled carpenty</td></tr><tr><td>date_1_lable</td><td>labours attenders</td><td>Skilled Bar bender</td></tr><tr><td>date_3_lable</td><td>Test Date</td><td>Date</td></tr><tr><td>attachment_3_lable</td><td>labours attend sheet</td><td></td></tr><tr><td>attachment_3_type</td><td>upload</td><td>hidden</td></tr><tr><td>updated</td><td>2019-02-20 14:43:07</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:10:38', NULL),
(641, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option Order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_3_order</td><td></td><td>3</td></tr><tr><td>date_2_order</td><td></td><td>5</td></tr><tr><td>varchar_1_order</td><td></td><td>6</td></tr><tr><td>varchar_2_order</td><td></td><td>7</td></tr><tr><td>varchar_3_order</td><td></td><td>8</td></tr><tr><td>textarea_1_order</td><td></td><td>9</td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-21 23:23:30</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:11:26', NULL),
(642, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Rigger Group at Basic Data Type', '', 1, '2019-02-25 22:26:06', NULL),
(643, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/7', 'Update data Rigger Group at Basic Data Type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>value</td><td>Labour value</td><td>Rigger value</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-26 09:26:06</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:26:18', NULL),
(644, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data 8 at Basic Data Option', '', 1, '2019-02-25 22:32:26', NULL),
(645, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/6', 'Update data Labour_CARP_BB_MAS_RIG at Basic Data Type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Labour_CARP_BB_MAS</td><td>Labour_CARP_BB_MAS_RIG</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-20 13:21:23</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:35:03', NULL),
(646, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/edit-save/7', 'Update data Labour Other at Basic Data Type', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Rigger Group</td><td>Labour Other</td></tr><tr><td>value</td><td>Rigger value</td><td>Labour Other value</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-26 09:26:06</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:35:30', NULL),
(647, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/7', 'Update data  at Basic Data Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-02-26 09:10:38</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:36:55', NULL),
(648, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/6', 'Update data  at Option Order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>textarea_2_order</td><td></td><td>10</td></tr><tr><td>textarea_3_order</td><td></td><td>11</td></tr><tr><td>attachment_1_order</td><td></td><td>12</td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-26 09:23:33</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:37:17', NULL),
(649, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/8', 'Update data  at Basic Data Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>int_1_lable</td><td>Skilled Rigger</td><td>Painter</td></tr><tr><td>int_2_lable</td><td>Semi_Skilled Rigger</td><td>AL Fabricator</td></tr><tr><td>int_3_lable</td><td>Un_Skilled Rigger</td><td></td></tr><tr><td>updated</td><td>2019-02-26 09:32:26</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:38:51', NULL),
(650, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data 9 at Option Order', '', 1, '2019-02-25 22:39:51', NULL),
(651, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Labour_CARP_BB_MAS_RIG Details at Basic Data', '', 1, '2019-02-25 22:43:09', NULL),
(652, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Labour Other Details at Basic Data', '', 1, '2019-02-25 22:44:05', NULL),
(653, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 9 at Basic Data Record Group', '', 1, '2019-02-25 22:44:40', NULL),
(654, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 10 at Basic Data Record Group', '', 1, '2019-02-25 22:45:10', NULL),
(655, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/edit-save/10', 'Update data  at Basic Data Record Group', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Month of May</td><td>labor details - Other</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-26 09:45:10</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:51:55', NULL),
(656, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/edit-save/9', 'Update data  at Basic Data Record Group', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Month of May</td><td>labor details - Carpenters,bar_benders, masons,riggers</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-26 09:44:40</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:53:20', NULL),
(657, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 77 at Record Details', '', 1, '2019-02-25 22:54:05', NULL),
(658, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/edit-save/77', 'Update data  at Record Details', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>int_1</td><td></td><td></td></tr><tr><td>int_2</td><td></td><td></td></tr><tr><td>int_3</td><td></td><td></td></tr><tr><td>date_1</td><td></td><td></td></tr><tr><td>date_2</td><td></td><td></td></tr><tr><td>date_3</td><td></td><td></td></tr><tr><td>varchar_1</td><td></td><td></td></tr><tr><td>varchar_2</td><td></td><td></td></tr><tr><td>varchar_3</td><td></td><td></td></tr><tr><td>textarea_1</td><td></td><td></td></tr><tr><td>textarea_2</td><td></td><td></td></tr><tr><td>textarea_3</td><td></td><td></td></tr><tr><td>attachment_1</td><td></td><td></td></tr><tr><td>attachment_2</td><td></td><td></td></tr><tr><td>attachment_3</td><td></td><td></td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>editor</td><td></td><td></td></tr><tr><td>updated</td><td>2019-02-26 09:54:05</td><td></td></tr></tbody></table>', 1, '2019-02-25 22:54:20', NULL),
(659, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/77', 'Delete data 77 at Record Details', '', 1, '2019-02-25 22:54:36', NULL),
(660, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 3 at Day status', '', 1, '2019-02-26 00:15:17', NULL),
(661, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/3', 'Delete data 3 at Day status', '', 1, '2019-02-26 00:15:35', NULL),
(662, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/23', 'Update data Live Camera at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-video-camera</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-02-26 03:44:51', NULL),
(663, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-26 03:52:05', NULL),
(664, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-26 03:56:11', NULL),
(665, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 3 at Day status', '', 1, '2019-02-26 04:08:34', NULL),
(666, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/3', 'Delete data 3 at Day status', '', 1, '2019-02-26 04:13:42', NULL),
(667, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/1', 'Update data Milco Project badalgama at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>image</td><td></td><td>uploads/1/2019-02/atostogos_sri_lankoje_keliones_tedolt.jpg</td></tr><tr><td>active</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-26 05:26:03', NULL),
(668, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/2', 'Update data Kandy at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>image</td><td></td><td>uploads/1/2019-02/ultra_hd_backgrounds_39.jpg</td></tr><tr><td>active</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-26 05:26:51', NULL),
(669, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data DashBoard Image at Menu Management', '', 1, '2019-02-26 05:57:26', NULL),
(670, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data DashBoard Image at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-dashcube</td><td>fa fa-rotate-right</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-26 05:58:19', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(671, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data DashBoard Image at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-rotate-right</td><td>fa fa-dashcube</td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-02-26 05:58:59', NULL),
(672, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-26 05:59:52', NULL),
(673, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-02-26 06:00:24', NULL),
(674, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-26 06:00:26', NULL),
(675, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-26 21:23:34', NULL),
(676, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/2', 'Update data Kandy at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>start_date</td><td></td><td>2019-02-21</td></tr><tr><td>end_date</td><td></td><td>2025-12-31</td></tr></tbody></table>', 1, '2019-02-26 23:37:43', NULL),
(677, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Colombo at Project Records', '', 1, '2019-02-26 23:48:55', NULL),
(678, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 11 at Basic Data Record Group', '', 1, '2019-02-27 01:50:00', NULL),
(679, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 101 at Record Details', '', 1, '2019-02-27 01:50:13', NULL),
(680, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 102 at Record Details', '', 1, '2019-02-27 02:59:01', NULL),
(681, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 102 at Record Details', '', 1, '2019-02-27 03:00:33', NULL),
(682, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/25', 'Update data DashBoard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-line-chart</td><td>fa fa-glass</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-02-27 03:04:16', NULL),
(683, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 3 at Day status', '', 1, '2019-02-27 03:16:19', NULL),
(684, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data nawala album 1 at Album', '', 1, '2019-02-27 03:29:04', NULL),
(685, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 21 at Gallery', '', 1, '2019-02-27 03:31:09', NULL),
(686, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 4 at Day status', '', 1, '2019-02-27 03:32:48', NULL),
(687, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Galle at Project Records', '', 1, '2019-02-27 03:36:08', NULL),
(688, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 12 at Basic Data Record Group', '', 1, '2019-02-27 04:37:15', NULL),
(689, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 102 at Record Details', '', 1, '2019-02-27 04:37:42', NULL),
(690, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/102', 'Delete data 102 at Record Details', '', 1, '2019-02-27 04:44:04', NULL),
(691, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/12', 'Delete data 12 at Basic Data Record Group', '', 1, '2019-02-27 04:44:11', NULL),
(692, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 12 at Basic Data Record Group', '', 1, '2019-02-27 04:45:00', NULL),
(693, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 102 at Record Details', '', 1, '2019-02-27 04:45:43', NULL),
(694, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Jaffna at Project Records', '', 1, '2019-02-27 04:49:08', NULL),
(695, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 13 at Basic Data Record Group', '', 1, '2019-02-27 04:49:24', NULL),
(696, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 103 at Record Details', '', 1, '2019-02-27 04:49:38', NULL),
(697, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/103', 'Delete data 103 at Record Details', '', 1, '2019-02-27 04:50:01', NULL),
(698, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/13', 'Delete data 13 at Basic Data Record Group', '', 1, '2019-02-27 04:50:05', NULL),
(699, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/1', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-27 05:20:13', NULL),
(700, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 5 at Day status', '', 1, '2019-02-27 05:27:37', NULL),
(701, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/1', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>hour1</td><td>4</td><td>0</td></tr><tr><td>hour2</td><td>4</td><td>0</td></tr><tr><td>hour3</td><td>4</td><td>0</td></tr><tr><td>hour4</td><td>4</td><td>0</td></tr><tr><td>hour5</td><td>4</td><td>0</td></tr><tr><td>hour6</td><td>4</td><td>0</td></tr><tr><td>hour7</td><td>4</td><td>0</td></tr><tr><td>hour19</td><td>4</td><td>0</td></tr><tr><td>hour20</td><td>4</td><td>0</td></tr><tr><td>hour21</td><td>4</td><td>0</td></tr><tr><td>hour22</td><td>4</td><td>0</td></tr><tr><td>hour23</td><td>4</td><td>0</td></tr><tr><td>hour24</td><td>4</td><td>0</td></tr></tbody></table>', 1, '2019-02-27 05:31:34', NULL),
(702, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/1', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-27 05:33:05', NULL),
(703, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/1', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>hour8</td><td>3</td><td>4</td></tr><tr><td>hour9</td><td>3</td><td>4</td></tr><tr><td>hour10</td><td>2</td><td>4</td></tr><tr><td>hour13</td><td>3</td><td>4</td></tr><tr><td>hour14</td><td>2</td><td>1</td></tr></tbody></table>', 1, '2019-02-27 05:47:10', NULL),
(704, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/5', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date</td><td>2019-02-07</td><td>2019-02-27</td></tr></tbody></table>', 1, '2019-02-27 05:49:16', NULL),
(705, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/menu_management/edit-save/26', 'Update data DashBoard Image at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-dashcube</td><td>fa fa-glass</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2019-02-27 05:51:59', NULL),
(706, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/delete/4', 'Delete data Galle at Project Records', '', 1, '2019-02-27 06:10:36', NULL),
(707, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-27 21:42:46', NULL),
(708, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 13 at Basic Data Record Group', '', 1, '2019-02-27 21:44:03', NULL),
(709, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 14 at Basic Data Record Group', '', 1, '2019-02-27 21:44:36', NULL),
(710, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 15 at Basic Data Record Group', '', 1, '2019-02-27 21:44:48', NULL),
(711, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 16 at Basic Data Record Group', '', 1, '2019-02-27 21:44:58', NULL),
(712, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 17 at Basic Data Record Group', '', 1, '2019-02-27 21:45:05', NULL),
(713, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 18 at Basic Data Record Group', '', 1, '2019-02-27 21:45:14', NULL),
(714, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 19 at Basic Data Record Group', '', 1, '2019-02-27 21:45:20', NULL),
(715, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 20 at Basic Data Record Group', '', 1, '2019-02-27 21:45:30', NULL),
(716, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 103 at Record Details', '', 1, '2019-02-27 21:47:26', NULL),
(717, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/103', 'Delete data 103 at Record Details', '', 1, '2019-02-27 21:49:58', NULL),
(718, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 21 at Basic Data Record Group', '', 1, '2019-02-27 21:53:29', NULL),
(719, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 103 at Record Details', '', 1, '2019-02-27 22:19:59', NULL),
(720, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 22 at Basic Data Record Group', '', 1, '2019-02-27 22:21:23', NULL),
(721, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 104 at Record Details', '', 1, '2019-02-27 22:31:41', NULL),
(722, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 105 at Record Details', '', 1, '2019-02-27 22:31:59', NULL),
(723, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 106 at Record Details', '', 1, '2019-02-27 22:32:12', NULL),
(724, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/106', 'Delete data 106 at Record Details', '', 1, '2019-02-27 22:42:32', NULL),
(725, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 101 at Record Details', '', 1, '2019-02-27 22:47:43', NULL),
(726, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 102 at Record Details', '', 1, '2019-02-27 22:49:21', NULL),
(727, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 103 at Record Details', '', 1, '2019-02-27 22:50:34', NULL),
(728, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 104 at Record Details', '', 1, '2019-02-27 22:50:49', NULL),
(729, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 105 at Record Details', '', 1, '2019-02-27 22:51:10', NULL),
(730, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/134', 'Delete data 134 at Record Details', '', 1, '2019-02-27 23:10:15', NULL),
(731, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/135', 'Delete data 135 at Record Details', '', 1, '2019-02-27 23:10:18', NULL),
(732, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/133', 'Delete data 133 at Record Details', '', 1, '2019-02-27 23:10:22', NULL),
(733, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 132,131,130,129,128,127,126,125,124,123,122 at Record Details', '', 1, '2019-02-27 23:10:36', NULL),
(734, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 157,156,155,154,153,152,151,150,149,148,147,146,145,144,143,142,141,140,139,138 at Record Details', '', 1, '2019-02-27 23:31:11', NULL),
(735, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,163,162,161,160 at Record Details', '', 1, '2019-02-27 23:38:28', NULL),
(736, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 159,158,137,136 at Record Details', '', 1, '2019-02-27 23:38:35', NULL),
(737, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 201,200,199,198,197,196,195,194,193,192,191,190 at Record Details', '', 1, '2019-02-27 23:40:56', NULL),
(738, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/3', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-27 23:44:55', NULL),
(739, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/2', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-02-27 23:46:01', NULL),
(740, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 6 at Day status', '', 1, '2019-02-28 02:18:05', NULL),
(741, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data Jaffna first Album at Album', '', 1, '2019-02-28 03:28:57', NULL),
(742, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 22 at Gallery', '', 1, '2019-02-28 03:32:48', NULL),
(743, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-28 03:37:41', NULL),
(744, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-28 03:37:43', NULL),
(745, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-28 03:37:50', NULL),
(746, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-28 03:37:52', NULL),
(747, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 06:13:29', NULL),
(748, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/190', 'Delete data 190 at Record Details', '', 1, '2019-02-28 06:14:17', NULL),
(749, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/12', 'Delete data 12 at Basic Data Record Group', '', 1, '2019-02-28 06:14:22', NULL),
(750, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 23 at Basic Data Record Group', '', 1, '2019-02-28 06:14:31', NULL),
(751, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 06:14:36', NULL),
(752, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/190', 'Delete data 190 at Record Details', '', 1, '2019-02-28 06:14:49', NULL),
(753, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data test 12 at Project Records', '', 1, '2019-02-28 06:16:02', NULL),
(754, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 24 at Basic Data Record Group', '', 1, '2019-02-28 06:16:13', NULL),
(755, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 06:16:17', NULL),
(756, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/190', 'Delete data 190 at Record Details', '', 1, '2019-02-28 06:17:21', NULL),
(757, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/24', 'Delete data 24 at Basic Data Record Group', '', 1, '2019-02-28 06:17:32', NULL),
(758, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/delete/6', 'Delete data test 12 at Project Records', '', 1, '2019-02-28 06:17:51', NULL),
(759, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/6', 'Delete data 6 at Day status', '', 1, '2019-02-28 06:32:13', NULL),
(760, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/5', 'Delete data 5 at Day status', '', 1, '2019-02-28 06:32:24', NULL),
(761, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/delete/22', 'Delete data 22 at Gallery', '', 1, '2019-02-28 06:34:00', NULL),
(762, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data 22 at Gallery', '', 1, '2019-02-28 06:34:19', NULL),
(763, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/gallery17/delete/21', 'Delete data 21 at Gallery', '', 1, '2019-02-28 06:34:27', NULL),
(764, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/album/delete/4', 'Delete data nawala album 1 at Album', '', 1, '2019-02-28 06:34:36', NULL),
(765, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-28 22:02:17', NULL),
(766, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 22:03:13', NULL),
(767, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 5 at Day status', '', 1, '2019-02-28 22:04:24', NULL),
(768, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/190', 'Delete data 190 at Record Details', '', 1, '2019-02-28 22:06:28', NULL),
(769, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/6', 'Delete data 6 at Basic Data Record Group', '', 1, '2019-02-28 23:01:37', NULL),
(770, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 23:16:13', NULL),
(771, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/190', 'Delete data 190 at Record Details', '', 1, '2019-02-28 23:16:30', NULL),
(772, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 23:22:14', NULL),
(773, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/190', 'Delete data 190 at Record Details', '', 1, '2019-02-28 23:22:24', NULL),
(774, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 23:42:07', NULL),
(775, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/190', 'Delete data 190 at Record Details', '', 1, '2019-02-28 23:42:28', NULL),
(776, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 190 at Record Details', '', 1, '2019-02-28 23:42:53', NULL),
(777, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-02-28 23:49:31', NULL),
(778, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-02-28 23:49:32', NULL),
(779, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 6 at Day status', '', 1, '2019-03-01 00:22:19', NULL),
(780, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/6', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date</td><td>2019-03-30</td><td>2019-03-01</td></tr></tbody></table>', 1, '2019-03-01 00:22:43', NULL),
(781, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/5', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date</td><td>2019-03-22</td><td>2019-03-01</td></tr></tbody></table>', 1, '2019-03-01 00:23:31', NULL),
(782, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/add-save', 'Add New Data nawala front view at CCTV', '', 1, '2019-03-01 00:47:54', NULL),
(783, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/add-save', 'Add New Data Milco Project Front View at CCTV', '', 1, '2019-03-01 01:10:15', NULL),
(784, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/add-save', 'Add New Data iuytrew at CCTV', '', 1, '2019-03-01 01:54:00', NULL),
(785, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/delete/3', 'Delete data iuytrew at CCTV', '', 1, '2019-03-01 01:54:27', NULL),
(786, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-01 03:39:43', NULL),
(787, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-01 03:39:45', NULL),
(788, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-01 03:43:43', NULL),
(789, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-01 03:43:44', NULL),
(790, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-01 03:46:16', NULL),
(791, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-01 03:46:18', NULL),
(792, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-03-01 04:47:00', NULL),
(793, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:22:17', NULL),
(794, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:22:21', NULL),
(795, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:22:26', NULL),
(796, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:22:31', NULL),
(797, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:22:46', NULL),
(798, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:22:57', NULL),
(799, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:22:58', NULL),
(800, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:00', NULL),
(801, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:02', NULL),
(802, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:03', NULL),
(803, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:05', NULL),
(804, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:06', NULL),
(805, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:08', NULL),
(806, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:09', NULL),
(807, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:11', NULL),
(808, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:39', NULL),
(809, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:41', NULL),
(810, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:42', NULL),
(811, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:23:43', NULL),
(812, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:24:45', NULL),
(813, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:24:49', NULL),
(814, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:24:53', NULL),
(815, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-03-01 05:26:23', NULL),
(816, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-03-01 05:26:34', NULL),
(817, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:31:11', NULL),
(818, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-01 05:31:15', NULL),
(819, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:31:16', NULL),
(820, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17', 'Try view the data :name at Gallery', '', 2, '2019-03-01 05:32:06', NULL),
(821, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:32:35', NULL),
(822, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:32:39', NULL),
(823, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:32:42', NULL),
(824, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:32:43', NULL),
(825, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:32:44', NULL),
(826, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:32:45', NULL),
(827, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:38:11', NULL),
(828, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:38:15', NULL),
(829, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:38:18', NULL),
(830, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-01 05:38:22', NULL),
(831, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-01 23:20:41', NULL),
(832, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/1', 'Update data Milco- badalgama at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Milco Project badalgama</td><td>Milco- badalgama</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>start_date</td><td></td><td></td></tr><tr><td>end_date</td><td></td><td></td></tr></tbody></table>', 1, '2019-03-01 23:21:36', NULL),
(833, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-02 04:48:55', NULL),
(834, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-03 05:30:39', NULL),
(835, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-03 21:50:22', NULL),
(836, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-03-03 22:00:29', NULL),
(837, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-03 22:00:38', NULL),
(838, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-03 22:00:40', NULL),
(839, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-03 22:00:47', NULL),
(840, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-03 22:01:27', NULL),
(841, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-03 22:01:29', NULL),
(842, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-03 22:01:30', NULL),
(843, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-03 22:01:31', NULL),
(844, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-03 22:01:32', NULL),
(845, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 24 at Basic Data Record Group', '', 1, '2019-03-03 22:05:32', NULL),
(846, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 191 at Record Details', '', 1, '2019-03-03 22:06:08', NULL),
(847, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/191', 'Delete data 191 at Record Details', '', 1, '2019-03-03 22:07:00', NULL),
(848, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/121', 'Delete data 121 at Record Details', '', 1, '2019-03-03 22:25:10', NULL),
(849, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-03 23:00:44', NULL),
(850, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-03 23:00:49', NULL),
(851, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 191 at Record Details', '', 1, '2019-03-03 23:22:54', NULL),
(852, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/191', 'Delete data 191 at Record Details', '', 1, '2019-03-03 23:24:26', NULL),
(853, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-04 00:02:27', NULL),
(854, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-04 00:02:28', NULL),
(855, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data 25 at Basic Data Record Group', '', 1, '2019-03-04 00:12:42', NULL),
(856, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data 191 at Record Details', '', 1, '2019-03-04 00:12:52', NULL),
(857, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/191', 'Delete data 191 at Record Details', '', 1, '2019-03-04 00:13:10', NULL),
(858, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-04 02:24:44', NULL),
(859, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-04 02:24:46', NULL),
(860, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-04 03:09:18', NULL),
(861, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-04 03:09:19', NULL),
(862, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-04 04:31:48', NULL),
(863, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group', 'Try view the data :name at Project Records', '', 2, '2019-03-04 04:32:36', NULL),
(864, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data 7 at Day status', '', 2, '2019-03-04 04:32:54', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(865, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/edit-save/7', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date</td><td>2019-03-23</td><td>2019-03-01</td></tr></tbody></table>', 2, '2019-03-04 04:33:21', NULL),
(866, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group', 'Try view the data :name at Project Records', '', 2, '2019-03-04 04:33:30', NULL),
(867, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group', 'Try view the data :name at Project Records', '', 2, '2019-03-04 04:34:51', NULL),
(868, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28', 'Try view the data :name at Record Details', '', 2, '2019-03-04 04:35:36', NULL),
(869, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-04 05:56:53', NULL),
(870, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/camera', 'Try view the data :name at CCTV', '', 2, '2019-03-04 05:57:08', NULL),
(871, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group', 'Try view the data :name at Basic Data Record Group', '', 2, '2019-03-04 05:57:42', NULL),
(872, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17', 'Try view the data :name at Gallery', '', 2, '2019-03-04 05:57:57', NULL),
(873, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/camera', 'Try view the data :name at CCTV', '', 2, '2019-03-04 06:10:16', NULL),
(874, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/add-save', 'Add New Data Weather at CCTV', '', 1, '2019-03-04 06:11:08', NULL),
(875, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36', 'http://127.0.0.1:8000/admin/camera', 'Try view the data :name at CCTV', '', 2, '2019-03-04 06:12:39', NULL),
(876, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/delete/3', 'Delete data Weather at CCTV', '', 1, '2019-03-04 06:12:54', NULL),
(877, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-08 00:39:56', NULL),
(878, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-08 00:41:37', NULL),
(879, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-08 00:50:57', NULL),
(880, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-08 00:51:08', NULL),
(881, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data madhuranga at Users Management', '', 1, '2019-03-08 01:01:34', NULL),
(882, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-08 01:06:10', NULL),
(883, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-08 01:12:01', NULL),
(884, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-08 03:20:30', NULL),
(885, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-08 03:21:24', NULL),
(886, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/4', 'Update data madhuranga at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$OfVYPhl2bcmIYI5JtPSrseZdMJvDylMIGUUzgfgIKcOX2Xrk4KOZS</td><td>$2y$10$47Ko3NqUH.b0Wq3wZjuvKeNKlQIJXPP4LI3CdTM6DC7ySL/OTMh9m</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-03-08 03:22:14', NULL),
(887, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-08 03:22:18', NULL),
(888, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-08 03:22:34', NULL),
(889, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data Test A at Project Records', '', 4, '2019-03-08 04:18:14', NULL),
(890, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 4, '2019-03-08 04:20:35', NULL),
(891, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-08 04:25:42', NULL),
(892, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-08 04:31:47', NULL),
(893, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-08 04:51:51', NULL),
(894, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/delete/193', 'Delete data 193 at Record Details', '', 4, '2019-03-08 04:51:56', NULL),
(895, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-08 04:52:52', NULL),
(896, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-08 04:53:48', NULL),
(897, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data hjmj, at Basic Data', '', 4, '2019-03-08 05:01:58', NULL),
(898, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/basicdata/delete/15', 'Delete data hjmj, at Basic Data', '', 4, '2019-03-08 05:02:03', NULL),
(899, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-08 05:02:23', NULL),
(900, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/delete/194', 'Delete data 194 at Record Details', '', 4, '2019-03-08 05:02:28', NULL),
(901, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 4, '2019-03-08 05:22:08', NULL),
(902, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-10 22:12:10', NULL),
(903, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-10 22:13:39', NULL),
(904, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-10 22:14:15', NULL),
(905, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/4', 'Update data madhuranga at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$47Ko3NqUH.b0Wq3wZjuvKeNKlQIJXPP4LI3CdTM6DC7ySL/OTMh9m</td><td>$2y$10$TCelYH/i5imnKwDalQf5a.RtXfbL25jJDrjsZYoDvzebfsTMpU7vO</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-03-10 22:14:47', NULL),
(906, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-10 22:14:55', NULL),
(907, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-10 22:15:09', NULL),
(908, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-10 22:15:20', NULL),
(909, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-10 22:27:07', NULL),
(910, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-10 22:27:44', NULL),
(911, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-10 22:27:55', NULL),
(912, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-10 22:29:12', NULL),
(913, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-10 22:29:42', NULL),
(914, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-11 00:30:35', NULL),
(915, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-11 00:30:46', NULL),
(916, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-11 00:31:03', NULL),
(917, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-11 00:32:32', NULL),
(918, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-11 00:32:47', NULL),
(919, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 4, '2019-03-11 00:37:26', NULL),
(920, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/delete/9', 'Delete data 9 at Day status', '', 4, '2019-03-11 00:37:40', NULL),
(921, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-11 21:25:04', NULL),
(922, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-11 21:25:36', NULL),
(923, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 01:05:05', NULL),
(924, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/192', 'Delete data 192 at Record Details', '', 1, '2019-03-12 01:07:28', NULL),
(925, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/delete/26', 'Delete data 26 at Basic Data Record Group', '', 1, '2019-03-12 01:07:33', NULL),
(926, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 01:18:13', NULL),
(927, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 01:20:00', NULL),
(928, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 01:20:10', NULL),
(929, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 01:20:49', NULL),
(930, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-12 01:21:07', NULL),
(931, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 01:21:11', NULL),
(932, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 01:34:27', NULL),
(933, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 01:34:32', NULL),
(934, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 02:11:01', NULL),
(935, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 02:11:03', NULL),
(936, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 02:11:17', NULL),
(937, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 02:11:20', NULL),
(938, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 02:11:41', NULL),
(939, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 02:11:43', NULL),
(940, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 03:10:35', NULL),
(941, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 03:10:36', NULL),
(942, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-12 03:22:47', NULL),
(943, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 03:23:51', NULL),
(944, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-12 03:46:38', NULL),
(945, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-12 03:46:40', NULL),
(946, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-12 04:17:37', NULL),
(947, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 04:18:23', NULL),
(948, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data vfdv at Album', '', 4, '2019-03-12 04:18:40', NULL),
(949, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/delete/6', 'Delete data vfdv at Album', '', 4, '2019-03-12 04:18:44', NULL),
(950, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-12 06:03:06', NULL),
(951, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 06:03:36', NULL),
(952, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-12 06:06:30', NULL),
(953, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 22:23:51', NULL),
(954, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-12 23:12:58', NULL),
(955, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-12 23:13:22', NULL),
(956, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 23:13:34', NULL),
(957, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 23:51:28', NULL),
(958, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-12 23:52:37', NULL),
(959, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-12 23:52:51', NULL),
(960, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 01:32:44', NULL),
(961, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 01:35:02', NULL),
(962, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 01:37:08', NULL),
(963, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 02:43:06', NULL),
(964, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 02:46:12', NULL),
(965, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 02:46:42', NULL),
(966, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 03:37:12', NULL),
(967, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 03:37:42', NULL),
(968, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 03:39:57', NULL),
(969, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 03:40:22', NULL),
(970, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 04:12:20', NULL),
(971, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sahan@gmail.com login with IP Address 127.0.0.1', '', 2, '2019-03-13 04:12:40', NULL),
(972, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 04:21:43', NULL),
(973, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sahan@gmail.com logout', '', 2, '2019-03-13 04:22:20', NULL),
(974, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 04:22:36', NULL),
(975, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 04:32:04', NULL),
(976, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 04:38:00', NULL),
(977, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Test BD Type at Basic Data Type', '', 4, '2019-03-13 04:55:33', NULL),
(978, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data  at Basic Data Option', '', 4, '2019-03-13 05:17:18', NULL),
(979, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_option/edit-save/9', 'Update data  at Basic Data Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-03-13 16:17:18</td><td></td></tr></tbody></table>', 4, '2019-03-13 05:17:50', NULL),
(980, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_option/edit-save/9', 'Update data  at Basic Data Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-03-13 16:17:50</td><td></td></tr></tbody></table>', 4, '2019-03-13 05:18:45', NULL),
(981, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data  at Option Order', '', 4, '2019-03-13 05:19:07', NULL),
(982, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data test contact details at Basic Data', '', 4, '2019-03-13 05:31:45', NULL),
(983, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 4, '2019-03-13 05:33:56', NULL),
(984, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-13 05:34:35', NULL),
(985, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 4, '2019-03-13 06:11:57', NULL),
(986, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete/6', 'Delete data Test A at Project Records', '', 4, '2019-03-13 06:12:06', NULL),
(987, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 06:15:45', NULL),
(988, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-13 06:15:52', NULL),
(989, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 22:17:56', NULL),
(990, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-13 22:18:10', NULL),
(991, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 22:18:26', NULL),
(992, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 22:53:21', NULL),
(993, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 22:53:40', NULL),
(994, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 23:48:52', NULL),
(995, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-13 23:49:24', NULL),
(996, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-13 23:50:19', NULL),
(997, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-14 04:15:16', NULL),
(998, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Labor at Basic Data Type', '', 1, '2019-03-14 04:56:58', NULL),
(999, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data  at Basic Data Option', '', 1, '2019-03-14 04:58:34', NULL),
(1000, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-14 05:04:21', NULL),
(1001, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_option/edit-save/10', 'Update data  at Basic Data Option', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>updated</td><td>2019-03-14 15:58:34</td><td></td></tr></tbody></table>', 1, '2019-03-14 05:05:11', NULL),
(1002, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data  at Option Order', '', 1, '2019-03-14 05:05:49', NULL),
(1003, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Labor Details at Basic Data', '', 1, '2019-03-14 05:06:19', NULL),
(1004, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 1, '2019-03-14 05:07:00', NULL),
(1005, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 1, '2019-03-14 05:11:12', NULL),
(1006, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 1, '2019-03-14 05:41:58', NULL),
(1007, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/team/add-save', 'Add New Data Sahan at Team', '', 1, '2019-03-14 05:57:26', NULL),
(1008, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-14 21:40:55', NULL),
(1009, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/issues/add-save', 'Add New Data  at Issue', '', 1, '2019-03-14 22:08:58', NULL),
(1010, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/issues/add-save', 'Add New Data  at Issue', '', 1, '2019-03-14 22:13:29', NULL),
(1011, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/team/add-save', 'Add New Data maduranga at Team', '', 1, '2019-03-14 22:14:09', NULL),
(1012, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-14 22:24:57', NULL),
(1013, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.75 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-14 22:25:18', NULL),
(1014, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-14 23:53:53', NULL),
(1015, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-14 23:54:07', NULL),
(1016, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-14 23:56:06', NULL),
(1017, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/add-save', 'Add New Data sadfdgv at Team', '', 4, '2019-03-15 03:03:43', NULL),
(1018, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/delete/3', 'Delete data sadfdgv at Team', '', 4, '2019-03-15 03:03:48', NULL),
(1019, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/delete/2', 'Delete data maduranga at Team', '', 4, '2019-03-15 03:05:58', NULL),
(1020, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/add-save', 'Add New Data madhuranga at Team', '', 4, '2019-03-15 03:06:37', NULL),
(1021, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/add-save', 'Add New Data Dulakshi at Team', '', 4, '2019-03-15 03:36:48', NULL),
(1022, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/delete/5', 'Delete data Dulakshi at Team', '', 4, '2019-03-15 03:37:00', NULL),
(1023, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/add-save', 'Add New Data Dulakshi at Team', '', 4, '2019-03-15 03:39:17', NULL),
(1024, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/team/delete/6', 'Delete data Dulakshi at Team', '', 4, '2019-03-15 03:41:46', NULL),
(1025, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/edit-save/1', 'Update data  at Issue', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td></td><td></td></tr></tbody></table>', 4, '2019-03-15 03:52:09', NULL),
(1026, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/edit-save/1', 'Update data  at Issue', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td></td><td>vat</td></tr></tbody></table>', 4, '2019-03-15 03:52:54', NULL),
(1027, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/edit-save/2', 'Update data  at Issue', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td></td><td>vat</td></tr></tbody></table>', 4, '2019-03-15 03:53:12', NULL),
(1028, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-15 04:31:29', NULL),
(1029, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-15 04:32:33', NULL),
(1030, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 4, '2019-03-15 04:41:01', NULL),
(1031, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-15 04:41:32', NULL),
(1032, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/delete/193', 'Delete data 193 at Record Details', '', 4, '2019-03-15 04:41:52', NULL),
(1033, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-15 04:42:05', NULL),
(1034, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-15 04:45:08', NULL),
(1035, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-15 04:50:45', NULL),
(1036, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 05:16:43', NULL),
(1037, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 05:17:54', NULL),
(1038, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 05:24:53', NULL),
(1039, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 21:11:34', NULL),
(1040, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-17 21:11:53', NULL),
(1041, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 21:12:06', NULL),
(1042, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete-image', 'Delete the image of Milco- badalgama at Project Records', '', 4, '2019-03-17 21:19:26', NULL),
(1043, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/edit-save/1', 'Update data Milco at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Milco- badalgama</td><td>Milco</td></tr><tr><td>image</td><td></td><td>uploads/4/2019-03/3.jpg</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>start_date</td><td></td><td></td></tr><tr><td>end_date</td><td></td><td></td></tr></tbody></table>', 4, '2019-03-17 21:20:32', NULL),
(1044, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete-image', 'Delete the image of Kandy at Project Records', '', 4, '2019-03-17 21:22:20', NULL),
(1045, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/edit-save/2', 'Update data Kandy at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr></tbody></table>', 4, '2019-03-17 21:22:42', NULL),
(1046, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/edit-save/2', 'Update data Kandy at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr></tbody></table>', 4, '2019-03-17 21:23:15', NULL),
(1047, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/edit-save/2', 'Update data Kandy at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>image</td><td></td><td>uploads/4/2019-03/03697c9e_ae52_474b_9d0b_e01ea5e34c64.jpeg</td></tr><tr><td>active</td><td></td><td></td></tr></tbody></table>', 4, '2019-03-17 21:27:52', NULL),
(1048, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete-image', 'Delete the image of Colombo at Project Records', '', 4, '2019-03-17 21:29:25', NULL),
(1049, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/edit-save/3', 'Update data VTC at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>name</td><td>Colombo</td><td>VTC</td></tr></tbody></table>', 4, '2019-03-17 21:31:16', NULL),
(1050, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/edit-save/3', 'Update data VTC at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>image</td><td></td><td>uploads/4/2019-03/7ca5b549_8411_41aa_8f62_32b0261f43f6.jpeg</td></tr><tr><td>active</td><td></td><td></td></tr></tbody></table>', 4, '2019-03-17 21:32:23', NULL),
(1051, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete-image', 'Delete the image of Test A at Project Records', '', 4, '2019-03-17 21:32:52', NULL),
(1052, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/edit-save/6', 'Update data Test A at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>ref_id</td><td>1</td><td></td></tr></tbody></table>', 4, '2019-03-17 21:33:08', NULL),
(1053, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-17 21:35:06', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1054, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/24', 'Delete data 24 at Gallery', '', 4, '2019-03-17 21:35:30', NULL),
(1055, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-17 21:35:50', NULL),
(1056, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/27', 'Delete data 27 at Basic Data Record Group', '', 4, '2019-03-17 21:36:18', NULL),
(1057, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/delete/195', 'Delete data 195 at Record Details', '', 4, '2019-03-17 21:36:24', NULL),
(1058, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/27', 'Delete data 27 at Basic Data Record Group', '', 4, '2019-03-17 21:36:30', NULL),
(1059, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete/6', 'Delete data Test A at Project Records', '', 4, '2019-03-17 21:36:46', NULL),
(1060, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/20', 'Delete data 20 at Basic Data Record Group', '', 4, '2019-03-17 21:37:04', NULL),
(1061, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 120,119,118,117,116,115,114,113,112,111,110,109,108,107,105,104,103 at Record Details', '', 4, '2019-03-17 21:43:06', NULL),
(1062, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/19', 'Delete data 19 at Basic Data Record Group', '', 4, '2019-03-17 21:43:12', NULL),
(1063, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/18', 'Delete data 18 at Basic Data Record Group', '', 4, '2019-03-17 21:44:09', NULL),
(1064, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/17', 'Delete data 17 at Basic Data Record Group', '', 4, '2019-03-17 21:44:15', NULL),
(1065, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/action-selected', 'Delete data 189,188,187,186,185,184,183,182,181,180 at Record Details', '', 4, '2019-03-17 21:44:44', NULL),
(1066, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/16', 'Delete data 16 at Basic Data Record Group', '', 4, '2019-03-17 21:44:51', NULL),
(1067, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/delete/102', 'Delete data 102 at Record Details', '', 4, '2019-03-17 21:45:04', NULL),
(1068, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/15', 'Delete data 15 at Basic Data Record Group', '', 4, '2019-03-17 21:45:12', NULL),
(1069, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/14', 'Delete data 14 at Basic Data Record Group', '', 4, '2019-03-17 21:45:39', NULL),
(1070, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/delete/13', 'Delete data 13 at Basic Data Record Group', '', 4, '2019-03-17 21:45:44', NULL),
(1071, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete/5', 'Delete data Jaffna at Project Records', '', 4, '2019-03-17 21:45:53', NULL),
(1072, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/delete/6', 'Delete data 6 at Day status', '', 4, '2019-03-17 21:46:05', NULL),
(1073, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/action-selected', 'Delete data 23,22 at Gallery', '', 4, '2019-03-17 21:46:28', NULL),
(1074, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/delete/5', 'Delete data Jaffna first Album at Album', '', 4, '2019-03-17 21:46:37', NULL),
(1075, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_group/delete/5', 'Delete data Jaffna at Project Records', '', 4, '2019-03-17 21:46:45', NULL),
(1076, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-17 21:47:27', NULL),
(1077, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 22:35:11', NULL),
(1078, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 22:36:06', NULL),
(1079, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 22:48:34', NULL),
(1080, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 22:49:59', NULL),
(1081, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 22:51:04', NULL),
(1082, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 22:51:38', NULL),
(1083, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:17:05', NULL),
(1084, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:19:59', NULL),
(1085, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:20:57', NULL),
(1086, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:21:20', NULL),
(1087, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:25:19', NULL),
(1088, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:25:36', NULL),
(1089, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:26:30', NULL),
(1090, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:32:43', NULL),
(1091, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:33:30', NULL),
(1092, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:43:35', NULL),
(1093, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:44:54', NULL),
(1094, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:45:16', NULL),
(1095, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:48:01', NULL),
(1096, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:49:34', NULL),
(1097, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-17 23:50:42', NULL),
(1098, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-17 23:51:42', NULL),
(1099, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-18 00:15:10', NULL),
(1100, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 00:15:39', NULL),
(1101, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-18 00:20:32', NULL),
(1102, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 00:21:46', NULL),
(1103, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_type/add-save', 'Add New Data Test Reports at Basic Data Type', '', 4, '2019-03-18 00:23:53', NULL),
(1104, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_option/add-save', 'Add New Data  at Basic Data Option', '', 4, '2019-03-18 00:26:57', NULL),
(1105, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bdt_option_order/add-save', 'Add New Data  at Option Order', '', 4, '2019-03-18 00:27:08', NULL),
(1106, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Test Reports at Basic Data', '', 4, '2019-03-18 00:29:09', NULL),
(1107, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 4, '2019-03-18 00:29:31', NULL),
(1108, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/add-save', 'Add New Data  at Issue', '', 4, '2019-03-18 00:52:59', NULL),
(1109, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/delete/3', 'Delete data 3 at Issue', '', 4, '2019-03-18 00:57:43', NULL),
(1110, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/add-save', 'Add New Data  at Issue', '', 4, '2019-03-18 01:04:01', NULL),
(1111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/delete/4', 'Delete data 4 at Issue', '', 4, '2019-03-18 01:04:09', NULL),
(1112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-18 01:04:25', NULL),
(1113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 01:04:45', NULL),
(1114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-18 01:04:57', NULL),
(1115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 01:05:08', NULL),
(1116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/add-save', 'Add New Data  at Issue', '', 4, '2019-03-18 01:05:21', NULL),
(1117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/delete/5', 'Delete data 5 at Issue', '', 4, '2019-03-18 01:05:25', NULL),
(1118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/add-save', 'Add New Data  at Issue', '', 4, '2019-03-18 01:11:59', NULL),
(1119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/delete/6', 'Delete data 6 at Issue', '', 4, '2019-03-18 01:18:02', NULL),
(1120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/add-save', 'Add New Data  at Issue', '', 4, '2019-03-18 01:46:04', NULL),
(1121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/delete/7', 'Delete data 7 at Issue', '', 4, '2019-03-18 01:48:25', NULL),
(1122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 4, '2019-03-18 03:49:00', NULL),
(1123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-18 03:51:10', NULL),
(1124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 4, '2019-03-18 03:51:31', NULL),
(1125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-18 04:16:41', NULL),
(1126, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 04:45:15', NULL),
(1127, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-18 04:45:20', NULL),
(1128, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 04:45:45', NULL),
(1129, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-18 04:45:48', NULL),
(1130, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 04:47:14', NULL),
(1131, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-18 04:55:31', NULL),
(1132, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-18 21:37:18', NULL),
(1133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/delete/2', 'Delete data July – 2016 at Album', '', 4, '2019-03-18 21:37:39', NULL),
(1134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/17', 'Delete data 17 at Gallery', '', 4, '2019-03-18 21:37:56', NULL),
(1135, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/16', 'Delete data 16 at Gallery', '', 4, '2019-03-18 21:37:59', NULL),
(1136, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/11', 'Delete data 11 at Gallery', '', 4, '2019-03-18 21:38:01', NULL),
(1137, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/9', 'Delete data 9 at Gallery', '', 4, '2019-03-18 21:38:03', NULL),
(1138, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/7', 'Delete data 7 at Gallery', '', 4, '2019-03-18 21:38:05', NULL),
(1139, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/delete/2', 'Delete data July – 2016 at Album', '', 4, '2019-03-18 21:38:14', NULL),
(1140, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/10', 'Delete data 10 at Gallery', '', 4, '2019-03-18 21:38:18', NULL),
(1141, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/8', 'Delete data 8 at Gallery', '', 4, '2019-03-18 21:38:21', NULL),
(1142, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/6', 'Delete data 6 at Gallery', '', 4, '2019-03-18 21:38:23', NULL),
(1143, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/delete/1', 'Delete data August – 2016 at Album', '', 4, '2019-03-18 21:38:27', NULL),
(1144, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data Project Design at Album', '', 4, '2019-03-18 21:45:04', NULL),
(1145, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-18 21:46:14', NULL),
(1146, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-18 21:46:31', NULL),
(1147, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-18 21:46:46', NULL),
(1148, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-19 00:44:29', NULL),
(1149, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-03-19 00:45:04', NULL),
(1150, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-19 00:46:15', NULL),
(1151, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-19 00:47:34', NULL),
(1152, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-19 00:47:48', NULL),
(1153, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-03-19 00:47:50', NULL),
(1154, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/add-save', 'Add New Data hjdhdfdfh at Project Records', '', 1, '2019-03-19 01:04:05', NULL),
(1155, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/delete/7', 'Delete data hjdhdfdfh at Project Records', '', 1, '2019-03-19 01:04:56', NULL),
(1156, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/2', 'Update data Kandy at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>chat_id</td><td></td><td>gfv43tbv</td></tr><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>value</td><td></td><td>35353452</td></tr><tr><td>active</td><td></td><td></td></tr></tbody></table>', 1, '2019-03-19 01:05:18', NULL),
(1157, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/1', 'Update data Milco at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>chat_id</td><td></td><td>ascewr4543g</td></tr><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>value</td><td></td><td>23456789</td></tr><tr><td>active</td><td></td><td></td></tr><tr><td>start_date</td><td></td><td>2019-03-19</td></tr><tr><td>end_date</td><td></td><td>2019-03-29</td></tr></tbody></table>', 1, '2019-03-19 01:05:35', NULL),
(1158, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/3', 'Update data VTC at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>chat_id</td><td></td><td>f4532f</td></tr><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>value</td><td></td><td>76543</td></tr><tr><td>active</td><td></td><td></td></tr></tbody></table>', 1, '2019-03-19 01:05:45', NULL),
(1159, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_group/edit-save/4', 'Update data Galle at Project Records', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>chat_id</td><td></td><td>m765</td></tr><tr><td>ref_id</td><td>1</td><td></td></tr><tr><td>value</td><td></td><td>67843</td></tr><tr><td>active</td><td></td><td></td></tr></tbody></table>', 1, '2019-03-19 01:05:58', NULL),
(1160, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/add-save', 'Add New Data aaa at CCTV', '', 1, '2019-03-19 01:08:11', NULL),
(1161, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/camera/delete/3', 'Delete data aaa at CCTV', '', 1, '2019-03-19 01:08:24', NULL),
(1162, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/76', 'Delete data 76 at Record Details', '', 1, '2019-03-19 02:56:45', NULL),
(1163, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/75', 'Delete data 75 at Record Details', '', 1, '2019-03-19 02:56:48', NULL),
(1164, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/74', 'Delete data 74 at Record Details', '', 1, '2019-03-19 02:56:50', NULL),
(1165, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/73', 'Delete data 73 at Record Details', '', 1, '2019-03-19 02:56:52', NULL),
(1166, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/72', 'Delete data 72 at Record Details', '', 1, '2019-03-19 02:56:54', NULL),
(1167, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/delete/71', 'Delete data 71 at Record Details', '', 1, '2019-03-19 02:56:56', NULL),
(1168, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/basicdata/add-save', 'Add New Data Financial Progress of Dairy Building at Basic Data', '', 1, '2019-03-19 03:15:00', NULL),
(1169, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 1, '2019-03-19 03:17:03', NULL),
(1170, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 1, '2019-03-19 03:18:13', NULL),
(1171, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 1, '2019-03-19 03:23:36', NULL),
(1172, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/bd_record_group/add-save', 'Add New Data  at Basic Data Record Group', '', 1, '2019-03-19 03:54:32', NULL),
(1173, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 1, '2019-03-19 03:54:48', NULL),
(1174, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 1, '2019-03-19 04:12:37', NULL),
(1175, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 1, '2019-03-19 04:24:25', NULL),
(1176, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/1', 'Delete data 1 at Day status', '', 1, '2019-03-19 04:24:45', NULL),
(1177, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/2', 'Delete data 2 at Day status', '', 1, '2019-03-19 04:24:48', NULL),
(1178, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/5', 'Delete data 5 at Day status', '', 1, '2019-03-19 04:24:50', NULL),
(1179, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/8', 'Delete data 8 at Day status', '', 1, '2019-03-19 04:24:53', NULL),
(1180, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 1, '2019-03-19 04:44:18', NULL),
(1181, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 1, '2019-03-19 04:44:38', NULL),
(1182, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 1, '2019-03-19 05:04:39', NULL),
(1183, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/13', 'Delete data 13 at Day status', '', 1, '2019-03-19 05:05:15', NULL),
(1184, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/12', 'Delete data 12 at Day status', '', 1, '2019-03-19 05:05:18', NULL),
(1185, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/11', 'Delete data 11 at Day status', '', 1, '2019-03-19 05:05:20', NULL),
(1186, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/delete/10', 'Delete data 10 at Day status', '', 1, '2019-03-19 05:05:23', NULL),
(1187, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 1, '2019-03-19 05:14:43', NULL),
(1188, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:65.0) Gecko/20100101 Firefox/65.0', 'http://127.0.0.1:8000/admin/day_status26/edit-save/10', 'Update data  at Day status', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-03-19 05:16:02', NULL),
(1189, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-19 06:23:01', NULL),
(1190, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-19 06:23:36', NULL),
(1191, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-19 06:23:46', NULL),
(1192, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-19 06:25:13', NULL),
(1193, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-20 21:56:16', NULL),
(1194, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-20 21:56:25', NULL),
(1195, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-20 21:56:41', NULL),
(1196, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-20 21:59:51', NULL),
(1197, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-20 22:06:04', NULL),
(1198, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-20 22:07:38', NULL),
(1199, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-20 22:07:51', NULL),
(1200, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 4, '2019-03-20 22:29:06', NULL),
(1201, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/day_status26/add-save', 'Add New Data  at Day status', '', 4, '2019-03-20 22:39:46', NULL),
(1202, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/delete-image', 'Delete the image of 1 at Issue', '', 4, '2019-03-20 22:54:47', NULL),
(1203, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/edit-save/1', 'Update data  at Issue', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>attachment</td><td></td><td>uploads/4/2019-03/ict_english.pdf</td></tr><tr><td>date</td><td></td><td>2019-03-19</td></tr></tbody></table>', 4, '2019-03-20 22:55:11', NULL),
(1204, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/20', 'Delete data 20 at Gallery', '', 4, '2019-03-20 23:50:45', NULL),
(1205, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/19', 'Delete data 19 at Gallery', '', 4, '2019-03-20 23:50:48', NULL),
(1206, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/delete/18', 'Delete data 18 at Gallery', '', 4, '2019-03-20 23:50:52', NULL),
(1207, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/delete/3', 'Delete data September – 2016 at Album', '', 4, '2019-03-20 23:51:00', NULL),
(1208, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data project plan in 3D view. at Album', '', 4, '2019-03-20 23:59:24', NULL),
(1209, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:00:33', NULL),
(1210, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:02:26', NULL),
(1211, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:02:45', NULL),
(1212, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:03:09', NULL),
(1213, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:03:37', NULL),
(1214, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:03:49', NULL),
(1215, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:04:02', NULL),
(1216, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:04:28', NULL),
(1217, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:04:46', NULL),
(1218, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:05:05', NULL),
(1219, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:05:30', NULL),
(1220, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:05:50', NULL),
(1221, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:06:03', NULL),
(1222, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-21 00:07:39', NULL),
(1223, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-21 00:09:53', NULL),
(1224, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/album/add-save', 'Add New Data project plan in 3D view. at Album', '', 4, '2019-03-21 00:13:46', NULL),
(1225, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:15:54', NULL),
(1226, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:17:27', NULL),
(1227, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:17:45', NULL),
(1228, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:18:06', NULL),
(1229, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:18:55', NULL),
(1230, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/gallery17/add-save', 'Add New Data  at Gallery', '', 4, '2019-03-21 00:19:08', NULL),
(1231, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-21 02:34:45', NULL),
(1232, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/delete-image', 'Delete the image of 1 at Issue', '', 4, '2019-03-21 02:35:05', NULL),
(1233, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/issues/edit-save/1', 'Update data  at Issue', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>issue_type</td><td>vat</td><td>VAT Outstanding</td></tr><tr><td>attachment</td><td></td><td>uploads/4/2019-03/test_reports_february.pdf</td></tr></tbody></table>', 4, '2019-03-21 02:42:36', NULL),
(1234, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-21 03:29:11', NULL),
(1235, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/bdt_option_order/edit-save/11', 'Update data  at Option Order', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>date_3_order</td><td></td><td></td></tr><tr><td>varchar_1_order</td><td></td><td></td></tr><tr><td>varchar_2_order</td><td></td><td></td></tr><tr><td>varchar_3_order</td><td></td><td></td></tr><tr><td>textarea_1_order</td><td></td><td></td></tr><tr><td>textarea_2_order</td><td></td><td></td></tr><tr><td>textarea_3_order</td><td></td><td></td></tr><tr><td>attachment_1_order</td><td></td><td></td></tr><tr><td>attachment_2_order</td><td></td><td></td></tr><tr><td>attachment_3_order</td><td></td><td></td></tr><tr><td>updated</td><td>2019-03-14 16:05:49</td><td></td></tr></tbody></table>', 4, '2019-03-21 03:57:27', NULL),
(1236, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-21 04:18:56', NULL),
(1237, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-21 04:41:06', NULL),
(1238, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://localhost:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-21 05:22:55', NULL),
(1239, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', ' logout', '', NULL, '2019-03-21 05:36:17', NULL),
(1240, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'madhuranga@mgconsultants.lk login with IP Address 127.0.0.1', '', 4, '2019-03-21 05:36:50', NULL),
(1241, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/delete/194', 'Delete data 194 at Record Details', '', 4, '2019-03-21 06:23:52', NULL),
(1242, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-21 06:24:00', NULL),
(1243, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/delete/204', 'Delete data 204 at Record Details', '', 4, '2019-03-21 06:24:09', NULL),
(1244, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/record_details28/add-save', 'Add New Data  at Record Details', '', 4, '2019-03-21 06:26:03', NULL),
(1245, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'madhuranga@mgconsultants.lk logout', '', 4, '2019-03-21 06:35:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(2, 'Contact Us', 'Route', 'AdminContactUsControllerGetIndex', 'normal', 'fa fa-glass', 0, 0, 0, 1, 18, '2018-01-09 07:36:02', '2019-02-11 03:47:22'),
(3, 'Album', 'Route', 'AdminAlbumControllerGetIndex', 'yellow', 'fa fa-folder-open-o', 0, 0, 0, 1, 4, '2019-01-23 06:23:50', '2019-02-24 23:52:42'),
(4, 'Gallery', 'Route', 'AdminGallery17ControllerGetIndex', 'normal', 'fa fa-rotate-right', 0, 0, 0, 1, 15, '2019-01-23 06:33:42', '2019-02-11 02:30:39'),
(5, 'WeatherKK', 'Controller & Method', 'WeatherChartController@getIndex', 'aqua', 'fa fa-glass', 0, 0, 0, 1, 16, '2019-01-24 01:05:06', '2019-02-11 05:32:08'),
(6, 'Weather', 'Controller & Method', 'WeatherChartController@getIndex1', 'aqua', 'fa fa-cloud', 0, 0, 0, 1, 10, '2019-01-24 02:04:59', '2019-02-25 02:19:20'),
(7, 'Basic Data Type', 'Route', 'AdminBdTypeControllerGetIndex', NULL, 'fa fa-glass', 14, 1, 0, 1, 1, '2019-01-28 03:15:00', NULL),
(8, 'Basic Data', 'Route', 'AdminBasicdataControllerGetIndex', NULL, 'fa fa-glass', 14, 1, 0, 1, 2, '2019-01-28 03:20:54', NULL),
(9, 'Basic Data Option', 'Route', 'AdminBdtOptionControllerGetIndex', NULL, 'fa fa-glass', 0, 0, 0, 1, 12, '2019-01-28 03:26:30', NULL),
(10, 'Project Records', 'Route', 'AdminRecordGroupControllerGetIndex', 'green', 'fa fa-pencil-square-o', 0, 1, 0, 1, 2, '2019-01-28 03:29:10', '2019-02-25 02:20:28'),
(11, 'Basic Data Record Group', 'Route', 'AdminBdRecordGroupControllerGetIndex', NULL, 'fa fa-glass', 15, 0, 0, 1, 1, '2019-01-28 03:31:26', NULL),
(13, 'Weather Data', 'Route', 'AdminWeatherDataControllerGetIndex', 'normal', 'fa fa-glass', 0, 0, 0, 1, 17, '2019-01-29 00:57:14', '2019-02-11 03:47:03'),
(14, 'Configurations', 'URL', '#', 'red', 'fa fa-check-square-o', 0, 1, 0, 1, 3, '2019-01-30 04:16:01', '2019-02-25 02:21:18'),
(15, 'Records', 'URL', '#', NULL, 'fa fa-pencil-square-o', 0, 0, 0, 1, 13, '2019-01-30 04:17:21', NULL),
(16, 'Test View', 'URL', 'http://127.0.0.1:8000/test', 'light-blue', 'fa fa-rotate-right', 0, 0, 0, 1, 7, '2019-01-31 03:29:21', '2019-02-11 02:30:28'),
(18, 'Day status', 'Route', 'AdminDayStatus26ControllerGetIndex', 'normal', 'fa fa-folder-open-o', 0, 0, 0, 1, 5, '2019-02-04 22:21:23', '2019-02-12 22:33:22'),
(20, 'Record Details', 'Route', 'AdminRecordDetails28ControllerGetIndex', NULL, 'fa fa-glass', 15, 0, 0, 1, 2, '2019-02-05 09:42:37', NULL),
(21, 'Gallery View', 'Module', 'gallery', 'normal', 'fa fa-th', 0, 0, 0, 1, 3, '2019-02-06 22:56:21', NULL),
(22, 'Option Order', 'Route', 'AdminBdtOptionOrderControllerGetIndex', NULL, 'fa fa-reorder', 0, 0, 0, 1, 14, '2019-02-13 06:21:29', NULL),
(23, 'Live Camera', 'Controller & Method', 'AdminDashboardController@getIndex2', 'light-blue', 'fa fa-video-camera', 0, 0, 0, 1, 8, '2019-02-24 23:11:42', '2019-02-26 03:44:51'),
(24, 'Test Charts', 'Controller & Method', 'WeatherChartController@getIndex2', 'normal', 'fa fa-line-chart', 0, 0, 0, 1, 11, '2019-02-25 04:52:39', NULL),
(25, 'DashBoard', 'Controller & Method', 'AdminDashboardController@getIndex1', 'normal', 'fa fa-glass', 0, 0, 0, 1, 9, '2019-02-25 07:51:30', '2019-02-27 03:04:16'),
(26, 'DashBoard Image', 'Controller & Method', 'AdminDashboardController@getdash', 'normal', 'fa fa-glass', 0, 1, 1, 1, 1, '2019-02-26 05:57:25', '2019-02-27 05:51:59'),
(27, 'CCTV', 'Route', 'AdminCameraControllerGetIndex', NULL, 'fa fa-camera', 0, 0, 0, 1, 6, '2019-03-01 00:43:38', NULL),
(28, 'Issue', 'Route', 'AdminIssuesControllerGetIndex', NULL, 'fa fa-glass', 0, 0, 0, 1, 2, '2019-03-14 04:45:39', NULL),
(29, 'Team', 'Route', 'AdminTeamControllerGetIndex', NULL, 'fa fa-glass', 0, 0, 0, 1, 1, '2019-03-14 04:48:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(4, 1, 1),
(10, 7, 1),
(11, 8, 1),
(12, 9, 1),
(14, 11, 1),
(15, 12, 1),
(18, 15, 1),
(20, 17, 1),
(22, 19, 1),
(23, 20, 1),
(26, 21, 1),
(27, 16, 1),
(28, 4, 1),
(29, 13, 1),
(30, 2, 1),
(31, 5, 1),
(34, 18, 1),
(35, 18, 1),
(36, 22, 1),
(40, 3, 1),
(41, 3, 1),
(42, 3, 1),
(52, 6, 1),
(53, 6, 1),
(54, 6, 1),
(55, 10, 1),
(56, 14, 1),
(57, 14, 1),
(58, 14, 1),
(59, 24, 1),
(60, 24, 1),
(61, 24, 1),
(71, 23, 1),
(72, 23, 1),
(73, 23, 1),
(77, 25, 1),
(78, 25, 1),
(79, 25, 1),
(80, 26, 1),
(81, 26, 1),
(82, 26, 1),
(83, 27, 1),
(84, 28, 1),
(85, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2017-11-06 17:35:00', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2017-11-06 17:35:00', NULL, NULL),
(12, 'Request Lagu', 'fa fa-music', 'request_lagu', 'request_lagu', 'AdminRequestLaguController', 0, 0, '2017-11-06 17:57:59', NULL, '2018-01-08 17:02:30'),
(13, 'Cari Lagu', 'fa fa-search', 'cari_lagu', 'cari_lagu', 'AdminCariLaguController', 0, 0, '2017-11-06 18:12:23', NULL, '2018-01-08 17:02:17'),
(15, 'Contact Us', 'fa fa-envelope-o', 'contact_us', 'contact_us', 'AdminContactUsController', 0, 0, '2018-01-09 07:36:01', NULL, NULL),
(16, 'Album', 'fa fa-glass', 'album', 'album', 'AdminAlbumController', 0, 0, '2019-01-23 06:23:50', NULL, NULL),
(17, 'Gallery', 'fa fa-glass', 'gallery17', 'gallery', 'AdminGallery17Controller', 0, 0, '2019-01-23 06:33:42', NULL, NULL),
(18, 'Basic Data Type', 'fa fa-glass', 'bd_type', 'bd_type', 'AdminBdTypeController', 0, 0, '2019-01-28 03:14:59', NULL, NULL),
(19, 'Basic Data', 'fa fa-glass', 'basicdata', 'basicdata', 'AdminBasicdataController', 0, 0, '2019-01-28 03:20:54', NULL, NULL),
(20, 'Basic Data Option', 'fa fa-glass', 'bd_option', 'bdt_option', 'AdminBdtOptionController', 0, 0, '2019-01-28 03:26:30', NULL, NULL),
(21, 'Project Records', 'fa fa-glass', 'record_group', 'record_group', 'AdminRecordGroupController', 0, 0, '2019-01-28 03:29:10', NULL, NULL),
(22, 'Basic Data Record Group', 'fa fa-glass', 'bd_record_group', 'bd_record_group', 'AdminBdRecordGroupController', 0, 0, '2019-01-28 03:31:26', NULL, NULL),
(24, 'Weather_Data', 'fa fa-glass', 'weather_data', 'weather_data', 'AdminWeatherDataController', 0, 0, '2019-01-29 00:57:14', NULL, NULL),
(26, 'Day status', 'fa fa-glass', 'day_status26', 'day_status', 'AdminDayStatus26Controller', 0, 0, '2019-02-04 22:21:23', NULL, NULL),
(28, 'Record Details', 'fa fa-glass', 'record_details28', 'record_details', 'AdminRecordDetails28Controller', 0, 0, '2019-02-05 09:42:37', NULL, NULL),
(29, 'Option Order', 'fa fa-reorder', 'bdt_option_order', 'bdt_option_order', 'AdminBdtOptionOrderController', 0, 0, '2019-02-13 06:21:28', NULL, NULL),
(30, 'Gallery 	 	 	 	 	', 'fa fa-photo', 'gallery', 'gallery', 'AdminGalleryController', 0, 0, '2018-01-08 18:23:20', '2018-01-08 18:23:20', NULL),
(31, 'CCTV', 'fa fa-camera', 'camera', 'camera', 'AdminCameraController', 0, 0, '2019-03-01 00:43:38', NULL, NULL),
(32, 'Issue', 'fa fa-glass', 'issues', 'issues', 'AdminIssuesController', 0, 0, '2019-03-14 04:45:39', NULL, NULL),
(33, 'Team', 'fa fa-glass', 'team', 'team', 'AdminTeamController', 0, 0, '2019-03-14 04:48:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-blue', '2017-11-06 17:35:00', NULL),
(2, 'Member', 0, 'skin-blue', NULL, NULL),
(3, 'User', 0, 'skin-blue', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2017-11-06 17:35:00', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2017-11-06 17:35:00', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2017-11-06 17:35:00', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2017-11-06 17:35:00', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2017-11-06 17:35:00', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2017-11-06 17:35:00', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2017-11-06 17:35:00', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2017-11-06 17:35:00', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2017-11-06 17:35:00', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2017-11-06 17:35:00', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2017-11-06 17:35:00', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(20, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(22, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(23, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 26, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(28, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(29, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(30, 1, 1, 1, 1, 1, 2, 26, NULL, NULL),
(31, 0, 0, 1, 1, 1, 2, 21, NULL, NULL),
(32, 1, 0, 0, 0, 0, 2, 4, NULL, NULL),
(33, 1, 1, 1, 1, 1, 3, 16, NULL, NULL),
(34, 1, 1, 1, 1, 1, 3, 19, NULL, NULL),
(35, 1, 1, 1, 1, 1, 3, 20, NULL, NULL),
(36, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(37, 1, 1, 1, 1, 1, 3, 26, NULL, NULL),
(38, 1, 1, 1, 1, 1, 3, 21, NULL, NULL),
(39, 1, 1, 1, 1, 1, 2, 18, NULL, NULL),
(40, 1, 1, 1, 1, 1, 1, 29, NULL, NULL),
(41, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(42, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(43, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(44, 1, 1, 1, 1, 1, 1, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2017-11-06 17:35:01', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2017-11-06 17:35:01', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2019-03/58b73f8fe9c07a9fb420381b020567b6.jpg', 'upload_image', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2017-11-06 17:35:01', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2017-11-06 17:35:01', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Rinsight:Design Build', 'text', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2017-11-06 17:35:01', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-03/96dc253624b8773190b28372acbc7c07.png', 'upload_image', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-03/73811a36456e9f03298390c6023c31e6.png', 'upload_image', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2017-11-06 17:35:01', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2017-11-06 17:35:01', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'about_us', 'uploads/2018-01/7ebd466746eb4ee012a7167e37e0f24f.jpg', 'upload_image', NULL, NULL, '2018-01-08 18:37:35', '2018-01-08 18:38:48', 'About Us', 'Photo'),
(18, 'description', 'Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.\n\nThe Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.', 'textarea', NULL, NULL, '2018-01-08 18:38:18', NULL, 'About Us', 'Description');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'dashboard', '2017-11-06 22:41:27', NULL),
(2, 'test', 'test', '2019-02-25 04:21:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '22e57372f661359bc4741758ec977733', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Request Lagu\",\"icon\":\"ion-ios-musical-notes\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/crocodic.net\\/karaoke_dangdut\\/public\\/admin\\/request_lagu\",\"sql\":\"select count(id) from `request_lagu`\"}', '2017-11-06 22:41:36', NULL),
(2, 1, 'f7979899979fc8722008d8896b58bf27', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Master Cari Lagu\",\"icon\":\"ion-ios-musical-note\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/crocodic.net\\/karaoke_dangdut\\/public\\/admin\\/cari_lagu\",\"sql\":\"select count(id) from `cari_lagu`\"}', '2017-11-06 22:43:34', NULL),
(3, 2, '234ac499251e3b9d8a226dcd93dd7fc9', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Project Status\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"#\",\"sql\":null}', '2019-02-25 04:21:32', NULL),
(4, 2, '9f200d3acc88dddb418bc68cf8f553dc', 'chartline', 'area2', 0, NULL, '{\"name\":\"Physicial S-curve\",\"sql\":\"select varchar_1 as label, int_1 as value from record_details where bd_rg_id=5; select varchar_1 as label, int_2 as value from record_details where bd_rg_id=5\",\"area_name\":\"Planned; Actual\",\"goals\":null}', '2019-02-25 04:24:10', NULL),
(5, 2, 'f4579ee92e1794e3e8420da1b879be44', 'chartbar', 'area3', 0, 'Untitled', NULL, '2019-02-25 04:29:22', NULL),
(6, 2, '43ce3a1bb22a9fcebbb4c318729f1b16', 'table', 'area5', 0, NULL, '{\"name\":\"Physical Progress Details\",\"sql\":\"select varchar_1 as  Month, int_1 as Planned, int_2 as Actual from record_details where bd_rg_id=5;\"}', '2019-02-25 04:30:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin', 'uploads/1/2019-02/screenshot_from_2018_12_31_11_27_00.png', 'admin@crudbooster.com', '$2y$10$e/zIcAFEtTTwc1L2Z3YsQe//2D7XxCLQaqhkeWIhdOvDBOqQrLJxi', 1, '2017-11-06 17:35:00', '2019-02-21 12:33:30', 'Active'),
(2, 'Sahan', 'uploads/1/2019-02/screenshot_from_2018_12_31_11_29_59.png', 'sahan@gmail.com', '$2y$10$qkOqBZcMbwMJpIBz6W1uHui962LhtQbIWXIEhUt25YMcO42y.smPC', 2, '2019-02-12 05:38:21', '2019-02-12 22:28:21', NULL),
(3, 'SMR', 'uploads/1/2019-02/7036997bf92756f732298c79c523f4b041c188f5.jpg', 'sahannett@gmail.com', '$2y$10$s32na510cwV4DsEhmxAzo.xpJfd.p/h94Os5KaRxu8Jck4LzAaU5G', 3, '2019-02-12 05:56:37', '2019-02-12 06:01:00', NULL),
(4, 'madhuranga', 'uploads/1/2019-03/i00.png', 'madhuranga@mgconsultants.lk', '$2y$10$UKclnbgag2uO.pbNypBf3eYy.YpfUrUjD/lm6clWQa7BZpR0MHzKG', 1, '2019-03-08 01:01:34', '2019-03-10 22:14:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `full_name`, `email`, `message`, `created_at`) VALUES
(1, 'Adam Projo', 'adamprojo@gmail.com', 'test hay did this is work ?', '2018-01-09 14:52:43'),
(2, 'Adam Projo', 'adamprojo@gmail.com', 'test hay did this is work ?', '2019-01-24 23:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `day_status`
--

CREATE TABLE `day_status` (
  `id` int(11) NOT NULL,
  `rg_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour1` varchar(90) NOT NULL DEFAULT 'non',
  `hour2` varchar(90) NOT NULL DEFAULT 'non',
  `hour3` varchar(90) NOT NULL DEFAULT 'non',
  `hour4` varchar(90) NOT NULL DEFAULT 'non',
  `hour5` varchar(90) NOT NULL DEFAULT 'non',
  `hour6` varchar(90) NOT NULL DEFAULT 'non',
  `hour7` varchar(90) NOT NULL DEFAULT 'non',
  `hour8` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour9` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour10` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour11` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour12` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour13` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour14` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour15` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour16` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour17` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour18` varchar(90) NOT NULL DEFAULT 'Sunny',
  `hour19` varchar(90) NOT NULL DEFAULT 'non',
  `hour20` varchar(90) NOT NULL DEFAULT 'non',
  `hour21` varchar(90) NOT NULL DEFAULT 'non',
  `hour22` varchar(90) NOT NULL DEFAULT 'non',
  `hour23` varchar(90) NOT NULL DEFAULT 'non',
  `hour24` varchar(90) NOT NULL DEFAULT 'non'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day_status`
--

INSERT INTO `day_status` (`id`, `rg_id`, `date`, `hour1`, `hour2`, `hour3`, `hour4`, `hour5`, `hour6`, `hour7`, `hour8`, `hour9`, `hour10`, `hour11`, `hour12`, `hour13`, `hour14`, `hour15`, `hour16`, `hour17`, `hour18`, `hour19`, `hour20`, `hour21`, `hour22`, `hour23`, `hour24`) VALUES
(3, 2, '2019-02-27', '0', '0', '0', '0', '0', '0', '0', '3', '3', '2', '1', '4', '4', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0'),
(4, 3, '2019-02-27', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(7, 2, '2019-03-01', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0'),
(9, 1, '2019-03-15', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0'),
(10, 4, '2019-03-19', '0', '0', '0', '0', '0', '0', '0', '4', '1', '1', '1', '3', '3', '2', '2', '4', '1', '1', '0', '0', '0', '0', '0', '0'),
(11, 1, '2019-03-21', '0', '0', '4', '0', '0', '0', '0', '1', '1', '1', '3', '2', '4', '', '', '', '', '', '0', '0', '0', '0', '0', '0'),
(12, 2, '2019-03-21', '0', '0', '4', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `album_id`, `image`, `description`, `created_at`) VALUES
(25, 6, 'uploads/4/2019-03/9a90183c_89c6_4881_9eec_4f0e5ec99cad.jpeg', 'project plan 3D 1', '2019-03-18 21:46:14'),
(26, 6, 'uploads/4/2019-03/90244e15_62b3_4800_ae88_89bf55e12706.jpeg', 'Project plan 3D 2', '2019-03-18 21:46:31'),
(27, 6, 'uploads/4/2019-03/fb7bc37e_8728_4845_841f_76d981187e81.jpeg', 'project plan 3D 3', '2019-03-18 21:46:46'),
(28, 7, 'uploads/4/2019-03/200.jpeg', '3D view 1', '2019-03-21 00:00:33'),
(29, 7, 'uploads/4/2019-03/201.jpeg', 'Front View 1', '2019-03-21 00:02:26'),
(30, 7, 'uploads/4/2019-03/202.jpeg', 'front view with lake', '2019-03-21 00:02:45'),
(31, 7, 'uploads/4/2019-03/204.jpeg', 'front side view with lake', '2019-03-21 00:03:09'),
(32, 7, 'uploads/4/2019-03/205.jpeg', 'front veiw 2', '2019-03-21 00:03:37'),
(33, 7, 'uploads/4/2019-03/206.jpeg', 'side view 1', '2019-03-21 00:03:49'),
(34, 7, 'uploads/4/2019-03/207.jpeg', 'Internal view 1', '2019-03-21 00:04:02'),
(35, 7, 'uploads/4/2019-03/208.jpeg', 'front view 3', '2019-03-21 00:04:28'),
(36, 7, 'uploads/4/2019-03/209.jpeg', 'front view 4', '2019-03-21 00:04:45'),
(37, 7, 'uploads/4/2019-03/210.jpeg', 'night side view 1', '2019-03-21 00:05:05'),
(38, 7, 'uploads/4/2019-03/211.jpeg', 'night front view 2', '2019-03-21 00:05:30'),
(39, 7, 'uploads/4/2019-03/212.jpeg', 'night front side view 2', '2019-03-21 00:05:50'),
(40, 7, 'uploads/4/2019-03/213.jpeg', 'front view 3', '2019-03-21 00:06:03'),
(41, 8, 'uploads/4/2019-03/01.jpg', 'plan 3D view 1', '2019-03-21 00:15:54'),
(42, 8, 'uploads/4/2019-03/301.jpeg', '3D plan view 2', '2019-03-21 00:17:27'),
(43, 8, 'uploads/4/2019-03/302.jpeg', 'project plan 3D view 3', '2019-03-21 00:17:45'),
(44, 8, 'uploads/4/2019-03/303.jpeg', 'project plan view 3D 4', '2019-03-21 00:18:06'),
(45, 8, 'uploads/4/2019-03/304.jpeg', '3D plan view 4', '2019-03-21 00:18:55'),
(46, 8, 'uploads/4/2019-03/305.jpeg', '3D plan view 6', '2019-03-21 00:19:08');

-- --------------------------------------------------------

--
-- Stand-in structure for view `heavy_count`
-- (See below for the actual view)
--
CREATE TABLE `heavy_count` (
`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` int(11) NOT NULL,
  `rg_id` int(11) NOT NULL,
  `issue_type` varchar(150) DEFAULT NULL,
  `attachment` longtext,
  `description` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `rg_id`, `issue_type`, `attachment`, `description`, `date`, `updated_at`) VALUES
(1, 1, 'VAT Outstanding', 'uploads/4/2019-03/test_reports_february.pdf', 'feww', '2019-03-19', '2019-03-21 02:42:36'),
(2, 2, 'vat', 'uploads/1/2019-03/tm.pdf', 'images', NULL, '2019-03-15 03:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_01_15_053227_create_cms_apicustom_table', 1),
(2, '2018_01_15_053227_create_cms_apikey_table', 1),
(3, '2018_01_15_053227_create_cms_dashboard_table', 1),
(4, '2018_01_15_053227_create_cms_email_queues_table', 1),
(5, '2018_01_15_053227_create_cms_email_templates_table', 1),
(6, '2018_01_15_053227_create_cms_logs_table', 1),
(7, '2018_01_15_053227_create_cms_menus_privileges_table', 1),
(8, '2018_01_15_053227_create_cms_menus_table', 1),
(9, '2018_01_15_053227_create_cms_moduls_table', 1),
(10, '2018_01_15_053227_create_cms_notifications_table', 1),
(11, '2018_01_15_053227_create_cms_privileges_roles_table', 1),
(12, '2018_01_15_053227_create_cms_privileges_table', 1),
(13, '2018_01_15_053227_create_cms_settings_table', 1),
(14, '2018_01_15_053227_create_cms_statistic_components_table', 1),
(15, '2018_01_15_053227_create_cms_statistics_table', 1),
(16, '2018_01_15_053227_create_cms_users_table', 1),
(17, '2018_01_15_053227_create_contact_us_table', 1),
(18, '2018_01_15_053227_create_gallery_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `raindata`
--

CREATE TABLE `raindata` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `raindata`
--

INSERT INTO `raindata` (`id`, `date`, `hour`, `status`, `color`) VALUES
(1, '2019-01-22', 1, 'rainy', 'blue'),
(2, '2019-01-22', 2, 'rainy', 'blue'),
(3, '2019-01-21', 1, 'Sunny', 'green'),
(4, '2019-01-18', 1, 'Heavy Rain', 'red'),
(5, '2019-01-22', 3, 'Heavy Rain', 'red'),
(5, '2019-01-22', 3, 'Heavy Rain', 'red'),
(6, '2019-01-22', 4, 'Heavy Rain', 'red'),
(7, '2019-01-22', 5, 'Heavy Rain', 'red'),
(8, '2019-01-22', 6, 'Heavy Rain', 'red'),
(9, '2019-01-22', 7, 'Heavy Rain', 'red'),
(10, '2019-01-22', 8, 'Heavy Rain', 'red'),
(11, '2019-01-22', 9, 'Heavy Rain', 'red'),
(12, '2019-01-22', 10, 'Heavy Rain', 'red'),
(13, '2019-01-22', 11, 'Heavy Rain', 'red'),
(14, '2019-01-22', 12, 'Heavy Rain', 'red'),
(15, '2019-01-22', 13, 'Heavy Rain', 'red'),
(16, '2019-01-22', 14, 'Heavy Rain', 'red'),
(17, '2019-01-22', 15, 'Heavy Rain', 'red'),
(18, '2019-01-22', 16, 'Heavy Rain', 'red');

-- --------------------------------------------------------

--
-- Stand-in structure for view `rain_count`
-- (See below for the actual view)
--
CREATE TABLE `rain_count` (
`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Table structure for table `record_details`
--

CREATE TABLE `record_details` (
  `id` int(11) NOT NULL,
  `ref_id` varchar(255) NOT NULL DEFAULT '1',
  `bd_rg_id` int(11) NOT NULL,
  `int_1` varchar(111) DEFAULT NULL,
  `int_2` varchar(34) DEFAULT NULL,
  `int_3` varchar(34) DEFAULT NULL,
  `date_1` varchar(111) DEFAULT NULL,
  `date_2` varchar(111) DEFAULT NULL,
  `date_3` varchar(111) DEFAULT NULL,
  `varchar_1` varchar(255) DEFAULT NULL,
  `varchar_2` varchar(255) DEFAULT NULL,
  `varchar_3` varchar(255) DEFAULT NULL,
  `textarea_1` text,
  `textarea_2` text,
  `textarea_3` text,
  `attachment_1` varchar(255) DEFAULT NULL,
  `attachment_2` varchar(255) DEFAULT NULL,
  `attachment_3` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `editor` int(11) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record_details`
--

INSERT INTO `record_details` (`id`, `ref_id`, `bd_rg_id`, `int_1`, `int_2`, `int_3`, `date_1`, `date_2`, `date_3`, `varchar_1`, `varchar_2`, `varchar_3`, `textarea_1`, `textarea_2`, `textarea_3`, `attachment_1`, `attachment_2`, `attachment_3`, `active`, `editor`, `updated`) VALUES
(1, '1', 4, '', '', '', '2019-02-13 00:00:00', '2019-02-13 00:00:00', '', 'dfgdfgd', 'dfsbgdfxgdf', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:20:04'),
(2, '1', 4, '', '', '', '2019-02-15 00:00:00', '2019-02-16 00:00:00', '', 'lkjhgfds', 'mnbvcx', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:21:11'),
(3, '1', 4, '', '', '', '2019-02-13 00:00:00', '2019-02-13 00:00:00', '', 'gfdyfg', 'gjghjghj', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:30:14'),
(4, '1', 3, '', '', '', '2019-02-03 00:00:00', '2019-02-04 00:00:00', '', '9876543', 'gfdsa', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:30:40'),
(5, '1', 3, '', '', '', '2019-02-26 00:00:00', '2019-02-27 00:00:00', '', '65432', 'Activity Relevant to Detail', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(6, '1', 8, '', '', '', '21/03/2017', '21/03/2017', '', 'BEL/BG/RFI/035', 'Clarification of foundation and plinth beams at dairy building', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(7, '1', 8, '', '', '', '21/03/2017', '03/04/17', '', 'BEL/BG/RFI/036', 'Valance board of Administration building.\nHeight of waterproofing at toilet wall admin building', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(8, '1', 8, '', '', '', '21/03/2017', '21/03/2017', '', 'BEL/BG/RFI/037', 'Clarification of HR3 in Admin building, no any provision in the BOQ for this item.', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(9, '1', 8, '', '', '', '03/05/17', '04/05/17', '', 'BEL/BG/RFI/038', 'Clarification of details of tie beams and stiffener columns at dairy building', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(10, '1', 8, '', '', '', '16/05/2017', '16/05/2017', '', 'BEL/BG/RFI/039', 'Clarification of thickness of GI pipe at chain link fence', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(11, '1', 8, '', '', '', '18/05/2017', '18/05/2017', '', 'BEL/BG/RFI/040', 'Clarification of levels of chain link fence', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(12, '1', 8, '', '', '', '19/05/2017', '31/08/2017', '', 'BEL/BG/RFI/041', 'Admin, Canteen eave and valance detail\nElectrical details in kitchen area of canteen building', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(13, '1', 8, '', '', '', '19/05/2017', '08/08/17', '', 'BEL/BG/RFI/042', 'Inlet Pipe – water sump', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(14, '1', 8, '', '', '', '29/05/2017', '10/07/17', '', 'BEL/BG/RFI/043', 'Clarification in water sump', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(15, '1', 8, '', '', '', '29/05/2017', '31/08/2017', '', 'BEL/BG/RFI/044', 'Dairy details for covering UB and C purlins', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(16, '1', 8, '', '', '', '01/06/17', '07/06/17', '', 'BEL/BG/RFI/045', 'Dairy Building - Colour of Aluminum section, size of wall tile, water proof paint, colour of internal and external paint.', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(17, '1', 8, '', '', '', '07/06/17', '22/06/2017', '', 'BEL/BG/RFI/046', 'Admin Building – colour of internal and external paint, Zn/Al eave ceiling, Aluminum section of doors, windows and aluminum partitions.', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(18, '1', 7, '', '', '', '26/07/2017', '27/07/2017', '', 'BEL/BG/CVI/018', 'Steel track system at transformer room\nIncrease the width of D2 at transformer room by 300mm (1500x2400mm)', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(19, '1', 7, '', '', '', '24/08/2017', '25/08/2017', '', 'BEL/BG/CVI/019', 'Concrete drain shifted 3m', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(20, '1', 7, '', '', '', '02/09/17', '04/09/17', '', 'BEL/BG/CVI/020', 'Junior manager quarters RCC base for rubble foundation', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(21, '1', 7, '', '', '', '04/09/17', '04/09/17', '', 'BEL/BG/CVI/021', 'To use HEGA wall putty for hygiene areas in dairy building', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(22, '1', 7, '', '', '', '16/10/2017', '16/10/2017', '', 'BEL/BG/CVI/022', 'To proceed the wall tile work at dairy building as sample area which was done at UHT filling area', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(23, '1', 7, '', '', '', '31/08/2017', '25/10/2017', '', 'BEL/BG/CVI/023', 'Commence the wall tiling in dairy building', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(24, '1', 6, '21989138.01', '19661949.81', '19661949.81', '31/7/2016', '15/9/2016', '01/08/16', '1', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(25, '1', 6, '22510860.42', '20318871.98', '39980821.79', '15/9/2016', '10/10/16', '23/09/2016', '2', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(26, '1', 6, '18577501.76', '16533882.59', '56514704.38', '15/10/2016', '30/11/2016', '24/10/2016', '3', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(27, '1', 6, '18458292.83', '26577294.35', '83091998.73', '30/11/2017', '28/12/2016', '05/12/16', '4', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(28, '1', 6, '21853761.03', '18000000', '101091998.73', '31/12/2016', '09/02/17', '10/07/17', '5', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(29, '1', 6, '22805213.37', '15775200.61', '116867199.34', '31/01/2017', '07/03/17', '17/02/2017', '6', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(30, '1', 6, '35173262.22', '30011326.42', '146878525.78', '28/02/2017', '29/03/2017', '10/03/17', '7', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(31, '1', 6, '45134221.87', '30011326.42', '182519396.6', '31/03/2017', '03/05/2017\n18/05/2017', '10/04/17', '8', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(32, '1', 6, '24471722.5', '19470908.93', '201990305.5', '31/05/2017', '19/06/2017', '01/06/17', '9', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(33, '1', 6, '27625448.13', '22476733.6', '224467039.1', '30/06/2017', '26/07/2017', '06/07/17', '10', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(34, '1', 6, '22242699.59', '18638730.39', '243105769.5', '31/07/2017', '25/08/2017', '10/08/17', '11', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(35, '1', 6, '24915032.88', '19523097.38', '262628866.9', '30/08/2017', '06/10/17', '10/09/17', '12', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(36, '1', 6, '36261540.86', '28024723.57', '290653590.47', '30/09/2017', '09/11/17', '10/10/17', '13', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(37, '1', 6, '26574769.07', '24180108.51', '314833698.98', '31/10/2017', '08/12/17', '10/11/17', '14', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(38, '1', 6, '20974331.66', '13248539.61', '328082238.6', '30/11/2017', '10/01/18', '10/12/17', '15', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(41, '1', 6, '27309560.61', '25200329.3', '363862839.8', '31/12/2017', '16/02/2018', '25/01/2018', '16', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(42, '1', 6, '31455740.7', '26270290.1', '390133129.9', '31/1/2018', '10/03/18', '25/02/2018', '17', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(43, '1', 6, '33530565.19', '26832423.15', '416965553.05', '28/02/2018', '10/04/18', '10/03/18', '18', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(44, '1', 6, '33328218.61', '30295687.02', '447261240.07', '31/03/2018', '18/05/2018', '26/04/2018', '19', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(45, '1', 6, '31605405.39', '10000000', '457261240.07', '30/04/2018', '19/06/2018', '30/05/2018', '20', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(47, '1', 6, '24714297.49', '20528980.77', '495954249.94', '31/05/2018', '31/07/2018', '30/06/2018', '21', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(48, '1', 6, '29898234.88', '26584550.52', '522538800.36', '30/06/18', '14/09/2018', '10/08/18', '22', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(49, '1', 5, '1', '1', '', '', '', '', 'July – 2016', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(50, '1', 5, '4', '3', '', '', '', '', 'August – 2016', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(51, '1', 5, '9', '7', '', '', '', '', 'September – 2016', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(52, '1', 5, '14', '12', '', '', '', '', 'October - 2016', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(53, '1', 5, '19', '18', '', '', '', '', 'November - 2016', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(54, '1', 5, '26', '25', '', '', '', '', 'December - 2016', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(55, '1', 5, '32', '30', '', '', '', '', 'January - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(56, '1', 5, '36', '34', '', '', '', '', 'February - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(57, '1', 5, '41', '39', '', '', '', '', 'March - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(58, '1', 5, '44', '43', '', '', '', '', 'April - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(59, '1', 5, '52', '50', '', '', '', '', 'May - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(60, '1', 5, '58', '56', '', '', '', '', 'June - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(61, '1', 5, '65', '64', '', '', '', '', 'July - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(62, '1', 5, '77', '75', '', '', '', '', 'August - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(63, '1', 5, '83', '80', '', '', '', '', 'September - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(64, '1', 5, '85', '83', '', '', '', '', 'October - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(65, '1', 5, '88', '85', '', '', '', '', 'November - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(66, '1', 5, '92', '88', '', '', '', '', 'December - 2017', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(67, '1', 5, '94', '91', '', '', '', '', 'January - 2018', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(68, '1', 5, '95', '92', '', '', '', '', 'February - 2018', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(69, '1', 5, '96', '93', '', '', '', '', 'March - 2018', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(70, '1', 5, '97', '94', '', '', '', '', 'April - 2018', '', '', '', '', '', '', '', '', 0, 0, '0000-00-00 00:00:00'),
(77, '1', 10, '', '1', '', '2019-02-13', '1', '', '1', '5', '1', '2', '1', '', '', '', '', NULL, NULL, '2019-02-13 11:20:04'),
(78, '1', 10, '', '1', '', '2019-02-14', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:21:11'),
(79, '1', 10, '', '', '', '2019-02-15', '1', '', '2', '8', '3', '2', '1', '10', '1', '', '', NULL, NULL, '2019-02-13 11:30:14'),
(80, '1', 10, '', '', '', '2019-02-16', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:30:40'),
(81, '1', 10, '', '1', '', '2019-02-17', '1', '', '2', '9', '3', '2', '1', '', '1', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(82, '1', 10, '', '1', '2', '2019-02-18', '1', '', '', '8', '3', '2', '5', '9', '3', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(83, '1', 10, '', '1', '', '2019-02-19', '1', '', '', '', '', '', '2', '', '', '2', '2', NULL, NULL, '2019-02-13 11:43:24'),
(84, '1', 10, '', '1', '', '2019-02-20', '1', '', '', '', '', '', '2', '', '', '2', '2', NULL, NULL, '2019-02-13 11:43:24'),
(85, '1', 10, '', '1', '', '2019-02-21', '1', '', '', '', '', '', '2', '', '', '2', '2', NULL, NULL, '2019-02-13 11:43:24'),
(86, '1', 10, '', '1', '', '2019-02-22', '1', '', '', '', '', '', '2', '', '', '2', '2', NULL, NULL, '2019-02-13 11:43:24'),
(87, '1', 10, '4', '1', '1', '2019-02-23', '1', '', '2', '11', '2', '2', '2', '8', '1', '1', '3', NULL, NULL, '2019-02-13 11:43:24'),
(88, '1', 10, '3', '1', '1', '2019-02-24', '3', '', '', '2', '10', '3', '2', '3', '3', '9', '4', NULL, NULL, '2019-02-13 11:43:24'),
(89, '1', 9, '3', '3', '', '', '', '2019-02-13', '', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(90, '1', 9, '4', '', '', '', '', '2019-02-14', '', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(91, '1', 9, '4', '', '', '', '', '2019-02-15', '', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(92, '1', 9, '4', '1', '1', '', '', '2019-02-16', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(93, '1', 9, '5', '2', '1', '', '', '2019-02-17', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(94, '1', 9, '3', '', '1', '', '', '2019-02-18', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(95, '1', 9, '4', '', '1', '', '', '2019-02-19', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(96, '1', 9, '4', '', '1', '', '', '2019-02-20', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(97, '1', 9, '4', '', '1', '', '', '2019-02-21', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(98, '1', 9, '4', '', '1', '', '', '2019-02-22', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(99, '1', 9, '4', '', '1', '', '', '2019-02-23', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(100, '1', 9, '4', '', '1', '', '', '2019-02-24', '1', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-13 11:43:24'),
(101, '1', 11, '65', '45', '', '', '', '', 'june', '', '', '', '', '', '', '', '', NULL, NULL, '2019-02-27 04:17:43'),
(190, '1', 11, '85', '65', '', '', '', '', 'july', '', '', '', '', '', '', '', '', NULL, NULL, '2019-03-01 05:12:53'),
(191, '1', 26, '1', '12346789', NULL, NULL, NULL, NULL, 'vsdfgvf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-13 11:04:35'),
(192, '1', 28, '32', '54', '23', '45', '2019-03-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-14 10:41:12'),
(196, '1', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-18 03:17:27'),
(197, '1', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-18 09:21:10'),
(198, '1', 30, 'hguj', 'guhu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-18 10:25:31'),
(199, '1', 33, '32', '23', NULL, NULL, NULL, NULL, 'January', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 08:48:13'),
(200, '1', 33, '56', '45', NULL, NULL, NULL, NULL, 'february', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 08:53:36'),
(201, '1', 34, '34', '22', NULL, NULL, NULL, NULL, 'may', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 09:24:48'),
(202, '1', 33, '76', '66', NULL, NULL, NULL, NULL, 'june', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-19 09:42:36'),
(203, '1', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-21 08:59:11'),
(205, '1', 28, '45', '62', '37', '60', '2019-03-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-21 11:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `record_group`
--

CREATE TABLE `record_group` (
  `id` int(11) NOT NULL,
  `chat_id` varchar(255) NOT NULL,
  `ref_id` varchar(100) DEFAULT '1',
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `contractor` varchar(255) DEFAULT NULL,
  `image` longtext,
  `active` tinyint(1) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `rivised_end_date` date DEFAULT NULL,
  `revised_budget` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record_group`
--

INSERT INTO `record_group` (`id`, `chat_id`, `ref_id`, `name`, `value`, `contractor`, `image`, `active`, `start_date`, `end_date`, `rivised_end_date`, `revised_budget`, `updated_at`) VALUES
(1, 'ascewr4543g', '1', 'Milco', '23456789', NULL, 'uploads/4/2019-03/3.jpg', NULL, '2019-03-19', '2019-03-29', NULL, NULL, '2019-03-19 01:05:35'),
(2, 'gfv43tbv', '1', 'Kandy', '35353452', NULL, 'uploads/4/2019-03/03697c9e_ae52_474b_9d0b_e01ea5e34c64.jpeg', NULL, '2019-02-21', '2025-12-31', NULL, NULL, '2019-03-19 01:05:18'),
(3, 'f4532f', '1', 'VTC', '76543', NULL, 'uploads/4/2019-03/7ca5b549_8411_41aa_8f62_32b0261f43f6.jpeg', NULL, '2019-02-27', '2030-03-18', NULL, NULL, '2019-03-19 01:05:45'),
(4, 'm765', '1', 'Galle', '67843', NULL, 'uploads/1/2019-02/galle.jpg', NULL, '2019-12-31', '2019-12-31', NULL, NULL, '2019-03-19 01:05:58');

-- --------------------------------------------------------

--
-- Stand-in structure for view `rg_cloudy_count`
-- (See below for the actual view)
--
CREATE TABLE `rg_cloudy_count` (
`RG` int(11)
,`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rg_heavy_count`
-- (See below for the actual view)
--
CREATE TABLE `rg_heavy_count` (
`RG` int(11)
,`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rg_night_count`
-- (See below for the actual view)
--
CREATE TABLE `rg_night_count` (
`RG` int(11)
,`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rg_non_count`
-- (See below for the actual view)
--
CREATE TABLE `rg_non_count` (
`RG` int(11)
,`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rg_rain_count`
-- (See below for the actual view)
--
CREATE TABLE `rg_rain_count` (
`RG` int(11)
,`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `rg_sunny_count`
-- (See below for the actual view)
--
CREATE TABLE `rg_sunny_count` (
`RG` int(11)
,`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sunny_count`
-- (See below for the actual view)
--
CREATE TABLE `sunny_count` (
`Date` date
,`count` bigint(44)
);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `rg_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `rg_id`, `name`, `designation`, `contact`, `mail`) VALUES
(1, 1, 'Sahan', 'project leader', 32432432, 'sahan@gmail.com'),
(4, 2, 'madhuranga', 'team leader', 123456789, 'a@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `weather_data`
--

CREATE TABLE `weather_data` (
  `id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather_data`
--

INSERT INTO `weather_data` (`id`, `status_id`, `date`, `hour`) VALUES
(1, 1, '2019-01-24', 1),
(2, 2, '2019-01-24', 2),
(3, 4, '2019-01-24', 3),
(4, 2, '2019-01-24', 4),
(5, 2, '2019-01-24', 5),
(6, 4, '2019-01-24', 6),
(7, 4, '2019-01-24', 7),
(8, 4, '2019-01-24', 8),
(9, 1, '2019-01-24', 9),
(10, 1, '2019-01-24', 10),
(11, 4, '2019-01-24', 11),
(12, 4, '2019-01-24', 12),
(13, 4, '2019-01-24', 13),
(14, 4, '2019-01-24', 14),
(15, 1, '2019-01-24', 15),
(16, 1, '2019-01-24', 16),
(17, 1, '2019-01-24', 17),
(18, 2, '2019-01-24', 18),
(19, 2, '2019-01-24', 19),
(20, 1, '2019-01-24', 20),
(21, 3, '2019-01-24', 21),
(22, 3, '2019-01-24', 22),
(23, 3, '2019-01-24', 23),
(24, 1, '2019-01-24', 24),
(25, 2, '2019-01-25', 1),
(26, 2, '2019-01-25', 2),
(27, 1, '2019-01-25', 3),
(28, 2, '2019-01-25', 4),
(29, 2, '2019-01-25', 5),
(30, 1, '2019-01-25', 6),
(31, 2, '2019-01-25', 7),
(32, 2, '2019-01-25', 8),
(33, 2, '2019-01-25', 9),
(34, 2, '2019-01-25', 10),
(35, 2, '2019-01-25', 11),
(36, 2, '2019-01-25', 12),
(37, 1, '2019-01-25', 13),
(38, 1, '2019-01-25', 14),
(39, 2, '2019-01-25', 15),
(40, 2, '2019-01-25', 16),
(41, 2, '2019-01-25', 17),
(42, 2, '2019-01-25', 18),
(43, 3, '2019-01-25', 19),
(44, 3, '2019-01-25', 20),
(45, 3, '2019-01-25', 21),
(46, 2, '2019-01-25', 22),
(47, 1, '2019-01-25', 23),
(48, 3, '2019-01-25', 24),
(49, 3, '2019-01-26', 1),
(50, 3, '2019-01-26', 2),
(51, 3, '2019-01-26', 3),
(52, 3, '2019-01-26', 4),
(53, 3, '2019-01-26', 5),
(54, 3, '2019-01-26', 6),
(55, 4, '2019-01-26', 7),
(56, 3, '2019-01-26', 8),
(57, 1, '2019-01-26', 9),
(58, 2, '2019-01-26', 24),
(59, 3, '2019-01-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `weather_status`
--

CREATE TABLE `weather_status` (
  `id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `weather_status`
--

INSERT INTO `weather_status` (`id`, `status`, `color`) VALUES
(0, 'NWH', '#e0e0e0'),
(1, 'Cloudy', '#58574f'),
(2, 'Rain', '#00b0ff'),
(3, 'Heavy Rain', '#1f13ad'),
(4, 'Sunny', ' #ff8d33 '),
(5, 'Night\r\n', '#0a2d09');

-- --------------------------------------------------------

--
-- Structure for view `cloudy_count`
--
DROP TABLE IF EXISTS `cloudy_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cloudy_count`  AS  select `t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select (case when (`day_status`.`hour1` = 1) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 1) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 1) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 1) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 1) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 1) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 1) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 1) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 1) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 1) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 1) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 1) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 1) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 1) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 1) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 1) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 1) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 1) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 1) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 1) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 1) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 1) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 1) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 1) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date` ;

-- --------------------------------------------------------

--
-- Structure for view `heavy_count`
--
DROP TABLE IF EXISTS `heavy_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `heavy_count`  AS  select `t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select (case when (`day_status`.`hour1` = 3) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 3) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 3) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 3) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 3) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 3) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 3) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 3) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 3) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 3) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 3) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 3) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 3) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 3) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 3) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 3) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 3) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 3) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 3) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 3) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 3) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 3) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 3) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 3) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date` ;

-- --------------------------------------------------------

--
-- Structure for view `rain_count`
--
DROP TABLE IF EXISTS `rain_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rain_count`  AS  select `t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select (case when (`day_status`.`hour1` = 2) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 2) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 2) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 2) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 2) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 2) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 2) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 2) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 2) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 2) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 2) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 2) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 2) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 2) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 2) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 2) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 2) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 2) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 2) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 2) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 2) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 2) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 2) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 2) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date` ;

-- --------------------------------------------------------

--
-- Structure for view `rg_cloudy_count`
--
DROP TABLE IF EXISTS `rg_cloudy_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rg_cloudy_count`  AS  select `t`.`RG` AS `RG`,`t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select `day_status`.`rg_id` AS `RG`,(case when (`day_status`.`hour1` = 1) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 1) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 1) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 1) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 1) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 1) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 1) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 1) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 1) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 1) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 1) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 1) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 1) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 1) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 1) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 1) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 1) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 1) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 1) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 1) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 1) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 1) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 1) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 1) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date`,`t`.`RG` ;

-- --------------------------------------------------------

--
-- Structure for view `rg_heavy_count`
--
DROP TABLE IF EXISTS `rg_heavy_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rg_heavy_count`  AS  select `t`.`RG` AS `RG`,`t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select `day_status`.`rg_id` AS `RG`,(case when (`day_status`.`hour1` = 3) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 3) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 3) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 3) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 3) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 3) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 3) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 3) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 3) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 3) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 3) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 3) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 3) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 3) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 3) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 3) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 3) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 3) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 3) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 3) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 3) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 3) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 3) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 3) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date`,`t`.`RG` ;

-- --------------------------------------------------------

--
-- Structure for view `rg_night_count`
--
DROP TABLE IF EXISTS `rg_night_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rg_night_count`  AS  select `t`.`RG` AS `RG`,`t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select `day_status`.`rg_id` AS `RG`,(case when (`day_status`.`hour1` = 5) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 5) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 5) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 5) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 5) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 5) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 5) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 5) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 5) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 5) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 5) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 5) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 5) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 5) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 5) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 5) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 5) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 5) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 5) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 5) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 5) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 5) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 5) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 5) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date`,`t`.`RG` ;

-- --------------------------------------------------------

--
-- Structure for view `rg_non_count`
--
DROP TABLE IF EXISTS `rg_non_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rg_non_count`  AS  select `t`.`RG` AS `RG`,`t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select `day_status`.`rg_id` AS `RG`,(case when (`day_status`.`hour1` = 0) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 0) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 0) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 0) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 0) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 0) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 0) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 0) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 0) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 0) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 0) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 0) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 0) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 0) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 0) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 0) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 0) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 0) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 0) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 0) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 0) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 0) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 0) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 0) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date`,`t`.`RG` ;

-- --------------------------------------------------------

--
-- Structure for view `rg_rain_count`
--
DROP TABLE IF EXISTS `rg_rain_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rg_rain_count`  AS  select `t`.`RG` AS `RG`,`t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select `day_status`.`rg_id` AS `RG`,(case when (`day_status`.`hour1` = 2) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 2) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 2) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 2) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 2) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 2) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 2) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 2) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 2) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 2) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 2) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 2) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 2) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 2) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 2) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 2) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 2) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 2) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 2) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 2) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 2) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 2) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 2) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 2) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date`,`t`.`RG` ;

-- --------------------------------------------------------

--
-- Structure for view `rg_sunny_count`
--
DROP TABLE IF EXISTS `rg_sunny_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rg_sunny_count`  AS  select `t`.`RG` AS `RG`,`t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select `day_status`.`rg_id` AS `RG`,(case when (`day_status`.`hour1` = 4) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 4) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 4) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 4) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 4) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 4) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 4) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 4) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 4) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 4) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 4) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 4) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 4) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 4) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 4) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 4) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 4) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 4) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 4) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 4) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 4) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 4) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 4) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 4) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date`,`t`.`RG` ;

-- --------------------------------------------------------

--
-- Structure for view `sunny_count`
--
DROP TABLE IF EXISTS `sunny_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sunny_count`  AS  select `t`.`date` AS `Date`,(((((((((((((((((((((((count(`t`.`Hour1`) + count(`t`.`Hour2`)) + count(`t`.`Hour3`)) + count(`t`.`Hour4`)) + count(`t`.`Hour5`)) + count(`t`.`Hour6`)) + count(`t`.`Hour7`)) + count(`t`.`Hour8`)) + count(`t`.`Hour9`)) + count(`t`.`Hour10`)) + count(`t`.`Hour11`)) + count(`t`.`Hour12`)) + count(`t`.`Hour13`)) + count(`t`.`Hour14`)) + count(`t`.`Hour15`)) + count(`t`.`Hour16`)) + count(`t`.`Hour17`)) + count(`t`.`Hour18`)) + count(`t`.`Hour19`)) + count(`t`.`Hour20`)) + count(`t`.`Hour21`)) + count(`t`.`Hour22`)) + count(`t`.`Hour23`)) + count(`t`.`Hour24`)) AS `count` from (select (case when (`day_status`.`hour1` = 0) then `day_status`.`hour1` end) AS `Hour1`,(case when (`day_status`.`hour2` = 0) then `day_status`.`hour2` end) AS `Hour2`,(case when (`day_status`.`hour3` = 0) then `day_status`.`hour3` end) AS `Hour3`,(case when (`day_status`.`hour4` = 0) then `day_status`.`hour4` end) AS `Hour4`,(case when (`day_status`.`hour5` = 0) then `day_status`.`hour5` end) AS `Hour5`,(case when (`day_status`.`hour6` = 0) then `day_status`.`hour6` end) AS `Hour6`,(case when (`day_status`.`hour7` = 0) then `day_status`.`hour7` end) AS `Hour7`,(case when (`day_status`.`hour8` = 0) then `day_status`.`hour8` end) AS `Hour8`,(case when (`day_status`.`hour9` = 0) then `day_status`.`hour9` end) AS `Hour9`,(case when (`day_status`.`hour10` = 0) then `day_status`.`hour10` end) AS `Hour10`,(case when (`day_status`.`hour11` = 0) then `day_status`.`hour11` end) AS `Hour11`,(case when (`day_status`.`hour12` = 0) then `day_status`.`hour12` end) AS `Hour12`,(case when (`day_status`.`hour13` = 0) then `day_status`.`hour13` end) AS `Hour13`,(case when (`day_status`.`hour14` = 0) then `day_status`.`hour14` end) AS `Hour14`,(case when (`day_status`.`hour15` = 0) then `day_status`.`hour15` end) AS `Hour15`,(case when (`day_status`.`hour16` = 0) then `day_status`.`hour16` end) AS `Hour16`,(case when (`day_status`.`hour17` = 0) then `day_status`.`hour17` end) AS `Hour17`,(case when (`day_status`.`hour18` = 0) then `day_status`.`hour18` end) AS `Hour18`,(case when (`day_status`.`hour19` = 0) then `day_status`.`hour19` end) AS `Hour19`,(case when (`day_status`.`hour20` = 0) then `day_status`.`hour20` end) AS `Hour20`,(case when (`day_status`.`hour21` = 0) then `day_status`.`hour21` end) AS `Hour21`,(case when (`day_status`.`hour22` = 0) then `day_status`.`hour22` end) AS `Hour22`,(case when (`day_status`.`hour23` = 0) then `day_status`.`hour23` end) AS `Hour23`,(case when (`day_status`.`hour24` = 0) then `day_status`.`hour24` end) AS `Hour24`,`day_status`.`date` AS `date` from `day_status`) `t` group by `t`.`date` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_album_record_group` (`rg_id`);

--
-- Indexes for table `basicdata`
--
ALTER TABLE `basicdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreingkey_bdt_id` (`bdt_id`);

--
-- Indexes for table `bdt_option`
--
ALTER TABLE `bdt_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bd_id` (`bdt_id`),
  ADD KEY `foreingkey_bd_id2` (`bdt_id`);

--
-- Indexes for table `bdt_option_order`
--
ALTER TABLE `bdt_option_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bd_id` (`bdt_option_id`),
  ADD KEY `foreingkey_bd_id2` (`bdt_option_id`);

--
-- Indexes for table `bd_record_group`
--
ALTER TABLE `bd_record_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreingkey_bd_id` (`bd_id`),
  ADD KEY `foriegnkey_rg_id` (`rg_id`);

--
-- Indexes for table `bd_type`
--
ALTER TABLE `bd_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_camera_recordgroup` (`rg_id`);

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day_status`
--
ALTER TABLE `day_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_weather_record_group` (`rg_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_gallery_album` (`album_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rg_issues` (`rg_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record_details`
--
ALTER TABLE `record_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreingkey_rg_id` (`bd_rg_id`);

--
-- Indexes for table `record_group`
--
ALTER TABLE `record_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rg_team` (`rg_id`);

--
-- Indexes for table `weather_data`
--
ALTER TABLE `weather_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_weather_status` (`status_id`);

--
-- Indexes for table `weather_status`
--
ALTER TABLE `weather_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `basicdata`
--
ALTER TABLE `basicdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `bdt_option`
--
ALTER TABLE `bdt_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `bdt_option_order`
--
ALTER TABLE `bdt_option_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `bd_record_group`
--
ALTER TABLE `bd_record_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `bd_type`
--
ALTER TABLE `bd_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `camera`
--
ALTER TABLE `camera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1246;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `day_status`
--
ALTER TABLE `day_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `record_details`
--
ALTER TABLE `record_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `record_group`
--
ALTER TABLE `record_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `weather_data`
--
ALTER TABLE `weather_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `weather_status`
--
ALTER TABLE `weather_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `fk_album_record_group` FOREIGN KEY (`rg_id`) REFERENCES `record_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `basicdata`
--
ALTER TABLE `basicdata`
  ADD CONSTRAINT `foreingkey_bdt_id` FOREIGN KEY (`bdt_id`) REFERENCES `bd_type` (`id`);

--
-- Constraints for table `bdt_option`
--
ALTER TABLE `bdt_option`
  ADD CONSTRAINT `foreingkey_bd_id2` FOREIGN KEY (`bdt_id`) REFERENCES `bd_type` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `bdt_option_order`
--
ALTER TABLE `bdt_option_order`
  ADD CONSTRAINT `bdt_option_order_ibfk_1` FOREIGN KEY (`bdt_option_id`) REFERENCES `bdt_option` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `bd_record_group`
--
ALTER TABLE `bd_record_group`
  ADD CONSTRAINT `bd_record_group_ibfk_1` FOREIGN KEY (`bd_id`) REFERENCES `basicdata` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bd_record_group_ibfk_2` FOREIGN KEY (`rg_id`) REFERENCES `record_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `camera`
--
ALTER TABLE `camera`
  ADD CONSTRAINT `fk_camera_recordgroup` FOREIGN KEY (`rg_id`) REFERENCES `record_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `day_status`
--
ALTER TABLE `day_status`
  ADD CONSTRAINT `fk_weather_record_group` FOREIGN KEY (`rg_id`) REFERENCES `record_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `fk_gallery_album` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `fk_rg_issues` FOREIGN KEY (`rg_id`) REFERENCES `record_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `record_details`
--
ALTER TABLE `record_details`
  ADD CONSTRAINT `record_details_ibfk_1` FOREIGN KEY (`bd_rg_id`) REFERENCES `bd_record_group` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `fk_rg_team` FOREIGN KEY (`rg_id`) REFERENCES `record_group` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
