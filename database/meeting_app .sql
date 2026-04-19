-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2026 at 12:57 PM
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
-- Database: `meeting_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `gd_scores`
--

CREATE TABLE `gd_scores` (
  `id` int(11) NOT NULL,
  `meeting_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `topic` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `created_at`, `topic`) VALUES
('34b5349c-5734-4940-a28a-cc7c340fc6cc', '2026-04-18 10:28:15', 'Live Meeting'),
('d37f1cc8-c253-4623-a769-996852fc22fe', '2026-04-18 10:30:39', 'Live Meeting');

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `meeting_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `left_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `meeting_id`, `user_id`, `joined_at`, `left_at`) VALUES
(31, '34b5349c-5734-4940-a28a-cc7c340fc6cc', 'Smriti Kumari', '2026-04-18 10:28:15', NULL),
(32, 'd37f1cc8-c253-4623-a769-996852fc22fe', 'Smriti Kumari', '2026-04-18 10:30:39', NULL),
(33, 'd37f1cc8-c253-4623-a769-996852fc22fe', 'KRANTI KUMARI', '2026-04-18 10:31:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transcripts`
--

CREATE TABLE `transcripts` (
  `id` int(11) NOT NULL,
  `meeting_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transcripts`
--

INSERT INTO `transcripts` (`id`, `meeting_id`, `user_id`, `text`, `created_at`) VALUES
(488, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hi. How are you?', '2026-04-08 17:01:34'),
(489, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hello?', '2026-04-08 17:01:36'),
(490, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hello? But you', '2026-04-08 17:01:48'),
(491, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Okay.', '2026-04-08 17:01:51'),
(492, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hello?', '2026-04-08 17:01:53'),
(493, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Okay.', '2026-04-08 17:02:06'),
(494, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Something', '2026-04-08 17:02:16'),
(495, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Something', '2026-04-08 17:02:22'),
(496, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hello?', '2026-04-08 17:02:58'),
(497, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hello? This is Grant.', '2026-04-08 17:03:00'),
(498, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hello?', '2026-04-08 17:03:01'),
(499, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'This is Praniti.', '2026-04-08 17:03:02'),
(500, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'This is Praniti.', '2026-04-08 17:03:02'),
(501, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hello? This is Grant.', '2026-04-08 17:03:03'),
(502, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'This is', '2026-04-08 17:03:04'),
(503, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'This is.', '2026-04-08 17:03:06'),
(504, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'This is', '2026-04-08 17:03:06'),
(505, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'This is Kranti Kumari.', '2026-04-08 17:03:07'),
(506, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Yes. Yes.', '2026-04-08 17:03:08'),
(507, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Yes.', '2026-04-08 17:03:08'),
(508, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Yes. Speaking.', '2026-04-08 17:03:11'),
(509, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Yes. Yes.', '2026-04-08 17:03:11'),
(510, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Yes. Speaking.', '2026-04-08 17:03:11'),
(511, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Speaking.', '2026-04-08 17:03:12'),
(512, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Speaking.', '2026-04-08 17:03:15'),
(513, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Yes.', '2026-04-08 17:03:16'),
(514, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hey, guys.', '2026-04-08 17:03:22'),
(515, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Hey, guys.', '2026-04-08 17:03:22'),
(516, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hey, guys. I don\'t know anything.', '2026-04-08 17:03:24'),
(517, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I don\'t know anything. What should I speak?', '2026-04-08 17:03:24'),
(518, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hey, guys. I don\'t know anything.', '2026-04-08 17:03:25'),
(519, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I don\'t know anything. What should I speak?', '2026-04-08 17:03:26'),
(520, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'What should I speak? I have no idea.', '2026-04-08 17:03:26'),
(521, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Have no idea.', '2026-04-08 17:03:28'),
(522, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Have no idea.', '2026-04-08 17:03:28'),
(523, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'What should I speak? I have no idea.', '2026-04-08 17:03:29'),
(524, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Should I', '2026-04-08 17:03:31'),
(525, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Should I, what\'s the topic?', '2026-04-08 17:03:32'),
(526, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Should I, what\'s the topic?', '2026-04-08 17:03:33'),
(527, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'What\'s the topic actually?', '2026-04-08 17:03:33'),
(528, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Actually,', '2026-04-08 17:03:35'),
(529, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'What\'s the topic actually?', '2026-04-08 17:03:35'),
(530, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Actually,', '2026-04-08 17:03:35'),
(531, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Should I', '2026-04-08 17:03:35'),
(532, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I think the topic is automated.', '2026-04-08 17:03:37'),
(533, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Think the topic is automated from discussion and it\'s', '2026-04-08 17:03:38'),
(534, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I think the topic is automated.', '2026-04-08 17:03:38'),
(535, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Think the topic is automatic group discussion is', '2026-04-08 17:03:39'),
(536, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Group discussion in the scoring system.', '2026-04-08 17:03:40'),
(537, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'System.', '2026-04-08 17:03:41'),
(538, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'System.', '2026-04-08 17:03:41'),
(539, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Oh, that was project.', '2026-04-08 17:03:46'),
(540, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Oh, that was project.', '2026-04-08 17:03:49'),
(541, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Uh-oh. That was prod', '2026-04-08 17:03:50'),
(542, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'It is out of my mind.', '2026-04-08 17:03:52'),
(543, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Uh-huh. That was', '2026-04-08 17:03:52'),
(544, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Out of my mind.', '2026-04-08 17:03:53'),
(545, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Just out of my mind.', '2026-04-08 17:03:53'),
(546, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Uh-huh.', '2026-04-08 17:03:55'),
(547, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Uh-huh.', '2026-04-08 17:03:57'),
(548, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Uh-huh.', '2026-04-08 17:04:00'),
(549, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I\'m very poor at speaking', '2026-04-08 17:04:01'),
(550, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Poor at speaking English.', '2026-04-08 17:04:02'),
(551, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I\'m very poor at speaking', '2026-04-08 17:04:02'),
(552, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Poor at speaking English.', '2026-04-08 17:04:03'),
(553, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'English.', '2026-04-08 17:04:03'),
(554, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'English.', '2026-04-08 17:04:04'),
(555, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'And even reading English.', '2026-04-08 17:04:06'),
(556, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Reading English, whatever is', '2026-04-08 17:04:07'),
(557, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Whatever is transcribing, I can\'t read proper.', '2026-04-08 17:04:09'),
(558, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Whatever is transcribing, I can\'t read proper.', '2026-04-08 17:04:10'),
(559, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Uh-huh.', '2026-04-08 17:04:10'),
(560, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Group discussion in the scoring system.', '2026-04-08 17:04:10'),
(561, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Reading English, whatever', '2026-04-08 17:04:12'),
(562, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Unscribing, I can\'t read properly.', '2026-04-08 17:04:12'),
(563, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hello?', '2026-04-08 17:04:12'),
(564, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Transcribing, I can\'t read properly.', '2026-04-08 17:04:16'),
(565, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I want said hello. Still', '2026-04-08 17:04:18'),
(566, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Said hello, still it is', '2026-04-08 17:04:20'),
(567, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Said hello. Still it is', '2026-04-08 17:04:20'),
(568, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Turning the bathroom.', '2026-04-08 17:04:21'),
(569, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Turning the', '2026-04-08 17:04:22'),
(570, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'In the bathroom.', '2026-04-08 17:04:23'),
(571, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'I want said hello. Still', '2026-04-08 17:04:23'),
(572, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'And even reading English.', '2026-04-08 17:04:26'),
(573, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'No. No. No. No. I\'m not in the past', '2026-04-08 17:04:39'),
(574, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'No. No. No. I\'m not in the bathroom. Actually, I\'m', '2026-04-08 17:04:41'),
(575, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'No. No. No. No. I\'m not in the past', '2026-04-08 17:04:42'),
(576, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Actually, I\'m in my bedroom.', '2026-04-08 17:04:42'),
(577, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'In my bedroom.', '2026-04-08 17:04:44'),
(578, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'No. No. No. I\'m not in the pass through. Actually, I\'m', '2026-04-08 17:04:44'),
(579, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'My bedroom.', '2026-04-08 17:04:45'),
(580, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'It\'s out of my mind.', '2026-04-08 17:04:45'),
(581, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'And just', '2026-04-08 17:04:46'),
(582, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'I\'m just testing the system.', '2026-04-08 17:04:47'),
(583, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'I\'m just testing the system.', '2026-04-08 17:04:47'),
(584, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Actually, I\'m in my bedroom.', '2026-04-08 17:04:48'),
(585, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'The system.', '2026-04-08 17:04:48'),
(586, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'The system.', '2026-04-08 17:04:50'),
(587, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'And just', '2026-04-08 17:04:51'),
(588, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Thank you. Look. You have', '2026-04-08 17:04:57'),
(589, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Thank you. Look. Yeah.', '2026-04-08 17:04:57'),
(590, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Thank you. Look. You have', '2026-04-08 17:04:58'),
(591, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Thank you. Look. You have', '2026-04-08 17:04:58'),
(592, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'The system and just', '2026-04-08 17:05:00'),
(593, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'The system and just', '2026-04-08 17:05:00'),
(594, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'With the system and just', '2026-04-08 17:05:00'),
(595, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'With the system and just', '2026-04-08 17:05:00'),
(596, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Guys. Guys.', '2026-04-08 17:05:03'),
(597, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Guys. Guys.', '2026-04-08 17:05:03'),
(598, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Guys. Guys.', '2026-04-08 17:05:03'),
(599, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Guys. Guys.', '2026-04-08 17:05:04'),
(600, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Should I leave now? Is it', '2026-04-08 17:05:06'),
(601, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Should I leave now?', '2026-04-08 17:05:06'),
(602, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Should I leave now?', '2026-04-08 17:05:06'),
(603, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Should I leave now?', '2026-04-08 17:05:06'),
(604, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Enough for testing purpose.', '2026-04-08 17:05:09'),
(605, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Is it enough for testing purpose?', '2026-04-08 17:05:09'),
(606, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Is it enough for testing purpose?', '2026-04-08 17:05:10'),
(607, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Enough for testing purpose.', '2026-04-08 17:05:10'),
(608, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Thank you. Bye bye.', '2026-04-08 17:05:14'),
(609, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Thank you. Bye bye.', '2026-04-08 17:05:15'),
(610, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Thank you. Bye bye.', '2026-04-08 17:05:17'),
(611, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Thank you. Bye bye.', '2026-04-08 17:05:17'),
(612, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hi, Tada. Take care.', '2026-04-08 17:05:17'),
(613, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Take care.', '2026-04-08 17:05:18'),
(614, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hi, Tada. Take care.', '2026-04-08 17:05:18'),
(615, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Take care.', '2026-04-08 17:05:20'),
(616, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Tata.', '2026-04-08 17:05:21'),
(617, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Tata.', '2026-04-08 17:05:22'),
(618, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Company', '2026-04-08 17:05:26'),
(619, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Company', '2026-04-08 17:05:27'),
(620, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Company', '2026-04-08 17:05:30'),
(621, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'So in in call for everyone ticket.', '2026-04-08 17:05:39'),
(622, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'In in call for everyone ticket.', '2026-04-08 17:05:39'),
(623, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'The ages in in call for everyone ticket.', '2026-04-08 17:05:39'),
(624, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'The ages in in call for everyone ticket.', '2026-04-08 17:05:39'),
(625, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'KRANTI KUMARI', 'Hello?', '2026-04-08 17:05:52'),
(626, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Clear', '2026-04-08 17:06:02'),
(627, 'f3962e4c-3032-41ef-8469-31c4d2a6d11f', 'SMRITI KUMARI', 'Clear', '2026-04-08 17:06:02'),
(628, 'e6ba75c0-c09c-4af2-8156-ade5c67222a9', 'SMRITI KUMARI', 'Hello? Hello? Hello?', '2026-04-09 06:16:02'),
(629, 'e6ba75c0-c09c-4af2-8156-ade5c67222a9', 'SMRITI KUMARI', 'Hello? Hello? Hello?', '2026-04-09 06:16:02'),
(630, 'e6ba75c0-c09c-4af2-8156-ade5c67222a9', 'SMRITI KUMARI', 'Hello? Am I audible?', '2026-04-09 06:16:11'),
(631, 'e6ba75c0-c09c-4af2-8156-ade5c67222a9', 'SMRITI KUMARI', 'Hello? Am I audible?', '2026-04-09 06:16:11'),
(632, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'SMRITI KUMARI', 'Yeah. He', '2026-04-09 06:27:06'),
(633, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'SMRITI KUMARI', 'Hello?', '2026-04-09 06:27:21'),
(634, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Two', '2026-04-09 06:27:35'),
(635, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Duplicate the skip post.', '2026-04-09 06:27:42'),
(636, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Duplicate the skip post.', '2026-04-09 06:27:53'),
(637, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'KRANTI KUMARI', 'Hello?', '2026-04-09 06:28:02'),
(638, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Hello? Hello?', '2026-04-09 06:28:08'),
(639, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'SMRITI KUMARI', 'Am I audible?', '2026-04-09 06:28:12'),
(640, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Hello?', '2026-04-09 06:28:12'),
(641, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'KRANTI KUMARI', 'Can you hear me?', '2026-04-09 06:28:18'),
(642, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'KRANTI KUMARI', 'Hello?', '2026-04-09 06:28:29'),
(643, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Hello?', '2026-04-09 06:28:38'),
(644, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Good morning.', '2026-04-09 06:28:44'),
(645, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Good evening.', '2026-04-09 06:28:50'),
(646, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'SMRITI KUMARI', 'Hello?', '2026-04-09 06:29:12'),
(647, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Hello?', '2026-04-09 06:29:17'),
(648, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Good', '2026-04-09 06:29:18'),
(649, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'SMRITI KUMARI', 'Good morning.', '2026-04-09 06:29:18'),
(650, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'Smriti Kumari', 'Morning. Hello?', '2026-04-09 06:29:20'),
(651, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'SMRITI KUMARI', 'Problem.', '2026-04-09 06:29:45'),
(652, 'ee9403f2-5f33-4b08-bc67-c75dfb511bc4', 'SMRITI KUMARI', 'Okay.', '2026-04-09 06:30:00'),
(653, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Transcription at', '2026-04-09 07:32:34'),
(654, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Transcription at.', '2026-04-09 07:32:34'),
(655, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 07:32:58'),
(656, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Adi.', '2026-04-09 07:33:01'),
(657, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Sir, from different domain.', '2026-04-09 07:33:28'),
(658, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Some', '2026-04-09 07:33:31'),
(659, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Have you missed', '2026-04-09 07:33:58'),
(660, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay. Yeah. What\'s good, bud?', '2026-04-09 07:34:25'),
(661, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 07:34:58'),
(662, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So why we have? Why we have to', '2026-04-09 07:36:26'),
(663, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Never technical SMS.', '2026-04-09 07:36:46'),
(664, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Just within DNN DNN, the', '2026-04-09 07:36:58'),
(665, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 07:37:01'),
(666, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '1930', '2026-04-09 07:37:14'),
(667, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Supportive. Why? Because it\'s', '2026-04-09 07:37:50'),
(668, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'CSC only most of the post that you', '2026-04-09 07:37:53'),
(669, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Mhmm. Go for the printing. What is the big deal?', '2026-04-09 07:37:56'),
(670, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'That. What is the big deal in', '2026-04-09 07:37:58'),
(671, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Postal.', '2026-04-09 07:38:25'),
(672, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Has to know that actually,', '2026-04-09 07:38:38'),
(673, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Hello?', '2026-04-09 07:39:02'),
(674, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'No. No. Not', '2026-04-09 07:39:22'),
(675, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Hello?', '2026-04-09 07:39:59'),
(676, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Because', '2026-04-09 07:40:16'),
(677, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'I need to test the theme in Sumit. That\'s what the', '2026-04-09 07:40:41'),
(678, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'But now it\'s 9 thirty room.', '2026-04-09 07:40:43'),
(679, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'He\'s not up and down.', '2026-04-09 07:41:11'),
(680, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'The students', '2026-04-09 07:41:14'),
(681, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Do not worry.', '2026-04-09 07:41:19'),
(682, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Maybe able to get it. Wait.', '2026-04-09 07:41:53'),
(683, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Good. This second thing was connected with that. Well, I can with', '2026-04-09 07:41:56'),
(684, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'That will get active with interest.', '2026-04-09 07:42:08'),
(685, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 07:42:25'),
(686, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Daniel, one minute. Hold on. I can get that over', '2026-04-09 07:42:44'),
(687, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes.', '2026-04-09 07:42:47'),
(688, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Thank you. I\'d missed the pay.', '2026-04-09 07:42:49'),
(689, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Hello?', '2026-04-09 07:42:52'),
(690, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 07:42:55'),
(691, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '15 will be pandra.', '2026-04-09 07:43:17'),
(692, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes. So, maybe we update here.', '2026-04-09 07:43:38'),
(693, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 07:43:49'),
(694, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'What\'s that?', '2026-04-09 07:44:19'),
(695, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'What is that?', '2026-04-09 07:44:19'),
(696, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'It has good dinner? Yes, sir.', '2026-04-09 07:44:38'),
(697, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. We can\'t reach other what\'s that? Yeah.', '2026-04-09 07:44:41'),
(698, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. Yeah. No problem.', '2026-04-09 07:44:46'),
(699, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Text over the may download', '2026-04-09 07:44:49'),
(700, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Text over the may download.', '2026-04-09 07:44:49'),
(701, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes.', '2026-04-09 07:44:52'),
(702, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Individual user', '2026-04-09 07:45:08'),
(703, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So individual users have download the shortcut something.', '2026-04-09 07:45:11'),
(704, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Actually, we\'ll get a I think you', '2026-04-09 07:45:14'),
(705, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Actually, we\'ll get a I think you', '2026-04-09 07:45:14'),
(706, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User to be me download. Sorry.', '2026-04-09 07:45:17'),
(707, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 07:45:23'),
(708, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'In the okay, ma\'am.', '2026-04-09 07:45:25'),
(709, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User ID code, say, as I can unique user.', '2026-04-09 07:45:28'),
(710, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'To I\'ll tell you a user ID here.', '2026-04-09 07:46:20'),
(711, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'To actually, your user ID here.', '2026-04-09 07:46:20'),
(712, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. Automatic', '2026-04-09 07:46:26'),
(713, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'We download', '2026-04-09 07:46:29'),
(714, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'To direct database research transcript', '2026-04-09 07:46:44'),
(715, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You have a username?', '2026-04-09 07:46:49'),
(716, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Mhmm. Supposedly', '2026-04-09 07:46:56'),
(717, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You wanna go do? Yes. That doesn\'t matter.', '2026-04-09 07:47:26'),
(718, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Transcript. Adi? Yes.', '2026-04-09 07:47:55'),
(719, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'A window window window', '2026-04-09 07:47:58'),
(720, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Video one or video two.', '2026-04-09 07:48:02'),
(721, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Two, video three. You said I said to score for that. Sure.', '2026-04-09 07:48:04'),
(722, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes, sir.', '2026-04-09 07:48:08'),
(723, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'This right here. User one. A window one.', '2026-04-09 07:48:13'),
(724, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User one', '2026-04-09 07:48:17'),
(725, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Let us say, the time is from ten', '2026-04-09 07:48:19'),
(726, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'AM to 11AM. That is it.', '2026-04-09 07:48:23'),
(727, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay. The discussion, user wants to look', '2026-04-09 07:48:25'),
(728, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '$10.10 budget. Yes, sir. Stop', '2026-04-09 07:48:29'),
(729, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '104. User', '2026-04-09 07:48:32'),
(730, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You may start with the 104 o.', '2026-04-09 07:48:35'),
(731, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Completely at ten five four. Yes. User', '2026-04-09 07:48:38'),
(732, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '3 105', '2026-04-09 07:48:41'),
(733, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Ten ten tech.', '2026-04-09 07:48:44'),
(734, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User four ten ten', '2026-04-09 07:48:46'),
(735, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '10 fifteen test. Again, user', '2026-04-09 07:48:50'),
(736, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Again, user two. Yes.', '2026-04-09 07:48:53'),
(737, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '15 then', '2026-04-09 07:48:56'),
(738, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '20. User one idea. 10.', '2026-04-09 07:48:59'),
(739, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Disselector.', '2026-04-09 07:49:01'),
(740, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '1025. These are two', '2026-04-09 07:49:05'),
(741, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '1025. User two.', '2026-04-09 07:49:05'),
(742, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. 1025.', '2026-04-09 07:49:07'),
(743, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So different. 30. Yes. Yes. So now', '2026-04-09 07:49:11'),
(744, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Now sum of user one, user', '2026-04-09 07:49:13'),
(745, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User two user two user two.', '2026-04-09 07:49:17'),
(746, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay. To no. I\'ll be transcribed.', '2026-04-09 07:49:20'),
(747, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. Which we got the upload.', '2026-04-09 07:49:22'),
(748, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User one all user one time', '2026-04-09 07:49:26'),
(749, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Text one.', '2026-04-09 07:49:29'),
(750, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Plus text two must be completed.', '2026-04-09 07:49:32'),
(751, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Excellent. Okay.', '2026-04-09 07:49:35'),
(752, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'This card user one card.', '2026-04-09 07:49:38'),
(753, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'This objective. Yeah. This', '2026-04-09 07:49:41'),
(754, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Objective. Yeah. Is', '2026-04-09 07:49:41'),
(755, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes.', '2026-04-09 07:49:46'),
(756, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'That\'s the unlockable current cover. Yeah.', '2026-04-09 07:49:50'),
(757, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'That\'s the unlockable current cover.', '2026-04-09 07:49:50'),
(758, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So', '2026-04-09 07:50:08'),
(759, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. A 100 parameters there are sentiments', '2026-04-09 07:50:17'),
(760, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'If I generate', '2026-04-09 07:50:26'),
(761, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Transcribe', '2026-04-09 07:50:32'),
(762, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes. Okay. 85.', '2026-04-09 07:50:34'),
(763, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes.', '2026-04-09 07:50:44'),
(764, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. That is', '2026-04-09 07:50:59'),
(765, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'This is automatically', '2026-04-09 07:51:17'),
(766, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User one automatically has to be get', '2026-04-09 07:51:19'),
(767, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'User one automatically has to begin', '2026-04-09 07:51:20'),
(768, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You know, map will be the, generated text by', '2026-04-09 07:51:23'),
(769, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'On this topic and go for the similar.', '2026-04-09 07:51:26'),
(770, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Let us say, the similarity', '2026-04-09 07:51:32'),
(771, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Equals to match. 67', '2026-04-09 07:51:35'),
(772, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Equals to match 67%.', '2026-04-09 07:51:35'),
(773, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So you user one user one.', '2026-04-09 07:51:38'),
(774, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '67. User two card.', '2026-04-09 07:51:44'),
(775, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'One. You just took a 90. That\'s a 90%.', '2026-04-09 07:51:47'),
(776, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '50 percentage. User four.', '2026-04-09 07:51:53'),
(777, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '83.', '2026-04-09 07:51:56'),
(778, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'E percentage mark sign.', '2026-04-09 07:51:59'),
(779, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'E percentage marks.', '2026-04-09 07:51:59'),
(780, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Keep the percentage. This is matching with this.', '2026-04-09 07:52:05'),
(781, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay, sir. So if I make topic, then I', '2026-04-09 07:52:11'),
(782, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'T five me topic then I jo topic in logon', '2026-04-09 07:52:14'),
(783, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'T five me topic then I topic in Logan', '2026-04-09 07:52:14'),
(784, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'T five.', '2026-04-09 07:52:24'),
(785, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'T five.', '2026-04-09 07:52:24'),
(786, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'A score. Finally, this score has to be get stored.', '2026-04-09 07:52:25'),
(787, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'In a bar with database.', '2026-04-09 07:52:28'),
(788, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'In a bar with database who access it.', '2026-04-09 07:52:29'),
(789, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'I\'m done.', '2026-04-09 07:52:59'),
(790, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Addiction. Okay.', '2026-04-09 07:53:02'),
(791, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'And this will become the project title', '2026-04-09 07:53:04'),
(792, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'And this will encounter the project title', '2026-04-09 07:53:05'),
(793, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So', '2026-04-09 07:53:19'),
(794, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'But so that\'ll be it\'s not just the papyrus.', '2026-04-09 07:53:38'),
(795, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Monday. Monday, it has to be completed at any', '2026-04-09 07:53:40'),
(796, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Monday, Tuesday, maybe,', '2026-04-09 07:53:50'),
(797, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Have to be ready with the system.', '2026-04-09 07:53:55'),
(798, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Fifteenth.', '2026-04-09 07:53:59'),
(799, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'I do not have any option.', '2026-04-09 07:54:19'),
(800, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Have any option. You have also no', '2026-04-09 07:54:26'),
(801, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Get back.', '2026-04-09 07:54:37'),
(802, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yep. That', '2026-04-09 07:54:38'),
(803, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Local. Lancashire.', '2026-04-09 07:54:50'),
(804, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 07:54:50'),
(805, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Video', '2026-04-09 07:54:59'),
(806, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Be delayed.', '2026-04-09 07:55:08'),
(807, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay. I\'m not finding any work of such', '2026-04-09 07:55:11'),
(808, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'All here.', '2026-04-09 07:55:14'),
(809, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Over here.', '2026-04-09 07:55:14'),
(810, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'I do not want to interfere.', '2026-04-09 07:55:23'),
(811, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Goes to all all of you for now. Yeah.', '2026-04-09 07:55:32'),
(812, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'This is', '2026-04-09 07:55:44'),
(813, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Eight month. Eight or ninth month.', '2026-04-09 07:55:47'),
(814, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Students will', '2026-04-09 07:55:56'),
(815, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 07:56:17'),
(816, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Six semester.', '2026-04-09 07:56:26'),
(817, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Six semester. We eight to task. I upload number nine.', '2026-04-09 07:56:26'),
(818, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You are free from every', '2026-04-09 07:56:28'),
(819, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Each and every task. You are free.', '2026-04-09 07:56:32'),
(820, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'The diploma of the students by', '2026-04-09 07:57:23'),
(821, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Diploma students by', '2026-04-09 07:57:23'),
(822, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', '100 pages', '2026-04-09 07:57:26'),
(823, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'And, GPT output data.', '2026-04-09 07:57:32'),
(824, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Speaking.', '2026-04-09 07:57:38'),
(825, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Speaking.', '2026-04-09 07:57:38'),
(826, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Bus, live partner live delay.', '2026-04-09 07:57:40'),
(827, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Bus, line partner line later.', '2026-04-09 07:57:41'),
(828, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 07:57:44'),
(829, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 07:57:44'),
(830, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'The homework', '2026-04-09 07:57:46'),
(831, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'The homework', '2026-04-09 07:57:46'),
(832, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'It\'s a big cut data. Data. Something is not now. Okay.', '2026-04-09 07:57:52'),
(833, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'It\'s a big cut data. Data. Something is not no. Okay.', '2026-04-09 07:57:52'),
(834, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah. It\'s generating.', '2026-04-09 07:57:53'),
(835, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 07:57:58'),
(836, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 07:58:08'),
(837, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Is what I\'m gonna see. You have to handle. Don\'t tell all the', '2026-04-09 07:58:10'),
(838, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'A bit time I get. Now I can tap I must have', '2026-04-09 07:58:17'),
(839, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'A bit time I get. Now I can tap I\'m also', '2026-04-09 07:58:17'),
(840, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Understand all the problems.', '2026-04-09 07:58:41'),
(841, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'We are looking at the kind of bit.', '2026-04-09 07:59:11'),
(842, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Hello?', '2026-04-09 07:59:14'),
(843, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes.', '2026-04-09 07:59:23'),
(844, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes.', '2026-04-09 07:59:31'),
(845, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You', '2026-04-09 07:59:44'),
(846, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yes.', '2026-04-09 07:59:53'),
(847, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 08:00:04'),
(848, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Are you getting my point? You are going', '2026-04-09 08:00:16'),
(849, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'As a pay as you go base. Paid something', '2026-04-09 08:00:20'),
(850, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'As a pay as you go base. Paid something', '2026-04-09 08:00:20'),
(851, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So that they have provided, you can use it.', '2026-04-09 08:00:22'),
(852, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You know, we have to go through', '2026-04-09 08:00:28'),
(853, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'This procedure is about a border banana.', '2026-04-09 08:00:32'),
(854, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'This procedure.', '2026-04-09 08:00:32'),
(855, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 08:00:56'),
(856, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'You have to admit it.', '2026-04-09 08:00:59'),
(857, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'How', '2026-04-09 08:01:14'),
(858, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Clarity, matter concept clear clearly.', '2026-04-09 08:01:35'),
(859, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'I\'ll be last', '2026-04-09 08:01:50'),
(860, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'I\'ll be last to', '2026-04-09 08:01:50'),
(861, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'And is that does it secure?', '2026-04-09 08:01:56'),
(862, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'So last eight', '2026-04-09 08:01:59'),
(863, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Everything in blue three.', '2026-04-09 08:02:02'),
(864, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'As well as that girl who who make us something.', '2026-04-09 08:02:04'),
(865, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Alright. You four, guys. What\'s up? Last', '2026-04-09 08:02:08'),
(866, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Alright. You four, guys. What\'s up? Last', '2026-04-09 08:02:08'),
(867, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'June.', '2026-04-09 08:02:20'),
(868, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Python program', '2026-04-09 08:02:35'),
(869, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Open Gmail', '2026-04-09 08:02:38'),
(870, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Oh, Vienna? What are your Google settings?', '2026-04-09 08:02:41'),
(871, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'I don\'t like credit should jump with separate authentication.', '2026-04-09 08:03:05'),
(872, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Are going. Thereby, you are selecting okay.', '2026-04-09 08:03:08'),
(873, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 08:03:14'),
(874, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Hello?', '2026-04-09 08:04:04'),
(875, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay. Domain.', '2026-04-09 08:04:20'),
(876, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay.', '2026-04-09 08:04:23'),
(877, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'How many time I have? You know, how much time do we', '2026-04-09 08:04:38'),
(878, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'But, hey, Mandy. Why do you have', '2026-04-09 08:05:14'),
(879, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Then, the last eight months then?', '2026-04-09 08:05:17'),
(880, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Last last this May.', '2026-04-09 08:05:23'),
(881, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Last is we have to move in case I', '2026-04-09 08:05:29'),
(882, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Smriti, try to understand.', '2026-04-09 08:05:35'),
(883, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Try to', '2026-04-09 08:05:38'),
(884, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Try to', '2026-04-09 08:05:38'),
(885, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Task me after group', '2026-04-09 08:05:41'),
(886, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'By Monday, it has to become', '2026-04-09 08:06:04'),
(887, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Okay. Now presentation', '2026-04-09 08:06:14'),
(888, '14c747bd-ba95-4976-8651-05d5457c2c11', 'SMRITI KUMARI', 'Yeah.', '2026-04-09 08:06:16'),
(889, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Hello?', '2026-04-12 10:48:59'),
(890, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Okay. Hello? Am I audible?', '2026-04-12 10:49:00'),
(891, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Hello? Hello?', '2026-04-12 10:49:03'),
(892, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Hello? Hello? Hello?', '2026-04-12 10:49:07'),
(893, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Hello. Hello. Hello.', '2026-04-12 10:49:07'),
(894, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Hello,', '2026-04-12 10:49:10'),
(895, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Can you listen to me?', '2026-04-12 10:49:16'),
(896, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Is it being trans?', '2026-04-12 10:49:25'),
(897, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Is it being trans', '2026-04-12 10:49:25'),
(898, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Encrypted. This is being transcribed.', '2026-04-12 10:49:28'),
(899, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Can I download this?', '2026-04-12 10:49:31'),
(900, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'So, like, choose a topic.', '2026-04-12 10:49:34'),
(901, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Speak up, man. Hello?', '2026-04-12 10:49:37'),
(902, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Speak of March. Hello?', '2026-04-12 10:49:37'),
(903, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Can I download this transcript?', '2026-04-12 10:49:40'),
(904, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Is it possible?', '2026-04-12 10:49:43'),
(905, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Will it be summarized?', '2026-04-12 10:49:46'),
(906, '162a3a7f-4ffc-4238-a7b2-54e593467cd6', 'Smriti Kumari', 'Hello?', '2026-04-12 10:49:49'),
(907, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Hello?', '2026-04-12 10:55:16'),
(908, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Name is.', '2026-04-12 10:55:20'),
(909, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'My name', '2026-04-12 10:55:23'),
(910, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Is Smriti Kumar', '2026-04-12 10:55:26'),
(911, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'It\'s not Kumar. It\'s Kumani.', '2026-04-12 10:55:32'),
(912, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'It\'s not Kumar. It\'s Kumar.', '2026-04-12 10:55:32'),
(913, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Hello?', '2026-04-12 10:55:41'),
(914, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'It\'s Kumari.', '2026-04-12 10:55:44'),
(915, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'K u m a r I.', '2026-04-12 10:55:47'),
(916, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Understand?', '2026-04-12 10:55:53'),
(917, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Should we talk on something?', '2026-04-12 10:55:59'),
(918, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Another topic.', '2026-04-12 10:56:03'),
(919, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Have another topic.', '2026-04-12 10:56:03'),
(920, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Like eating food.', '2026-04-12 10:56:05'),
(921, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Eating tasty food.', '2026-04-12 10:56:08'),
(922, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'As for example, some', '2026-04-12 10:56:11'),
(923, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'As for example,', '2026-04-12 10:56:11'),
(924, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Samosa, not some', '2026-04-12 10:56:17'),
(925, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Samosa.', '2026-04-12 10:56:20'),
(926, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'But it is expensive.', '2026-04-12 10:56:26'),
(927, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Thirty four three pieces.', '2026-04-12 10:56:29'),
(928, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Fly skip net.', '2026-04-12 10:56:32'),
(929, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Fly skimmed it.', '2026-04-12 10:56:32'),
(930, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Now I hate Somoza.', '2026-04-12 10:56:35'),
(931, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Now I hate Somoza. Skim', '2026-04-12 10:56:36'),
(932, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Not skipped it.', '2026-04-12 10:56:38'),
(933, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Skipped it.', '2026-04-12 10:56:38'),
(934, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Yes.', '2026-04-12 10:56:44'),
(935, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Let\'s download the transcript.', '2026-04-12 10:56:52'),
(936, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Hello?', '2026-04-12 10:57:14'),
(937, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Do you like samosa?', '2026-04-12 10:57:18'),
(938, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'You like samosa?', '2026-04-12 10:57:20'),
(939, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Like samosa?', '2026-04-12 10:57:20'),
(940, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'I also like samosa.', '2026-04-12 10:57:23'),
(941, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'I also like samosa. But', '2026-04-12 10:57:24');
INSERT INTO `transcripts` (`id`, `meeting_id`, `user_id`, `text`, `created_at`) VALUES
(942, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'But same here, which is all, it has', '2026-04-12 10:57:26'),
(943, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'But same here, which is all it has', '2026-04-12 10:57:26'),
(944, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Year, which is it has become expensive.', '2026-04-12 10:57:28'),
(945, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'I\'m expensive.', '2026-04-12 10:57:29'),
(946, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'I\'m not expensive. Samosa', '2026-04-12 10:57:33'),
(947, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Not expensive. Samosa is expensive. You\'re not', '2026-04-12 10:57:36'),
(948, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Expensive. Samosa is expensive. You\'re not get', '2026-04-12 10:57:36'),
(949, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'It\'s got it.', '2026-04-12 10:57:38'),
(950, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Think it\'s correct.', '2026-04-12 10:57:38'),
(951, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'It\'s expensive. You\'re not getting it correct.', '2026-04-12 10:57:38'),
(952, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Santi Kumari.', '2026-04-12 10:57:47'),
(953, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Money.', '2026-04-12 10:57:55'),
(954, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Money.', '2026-04-12 10:57:55'),
(955, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'No.', '2026-04-12 10:57:56'),
(956, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'No.', '2026-04-12 10:57:56'),
(957, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'No Santi Kumar is here. It\'s', '2026-04-12 10:57:57'),
(958, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Here. It\'s Kranti Kumari.', '2026-04-12 10:57:59'),
(959, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'See it. It\'s.', '2026-04-12 10:58:00'),
(960, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'What\'s', '2026-04-12 10:58:03'),
(961, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'What\'s it?', '2026-04-12 10:58:05'),
(962, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', '8. You added it you are', '2026-04-12 10:58:06'),
(963, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'You are detect you are detecting wrong.', '2026-04-12 10:58:08'),
(964, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Acting wrong.', '2026-04-12 10:58:09'),
(965, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Wrong.', '2026-04-12 10:58:09'),
(966, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Uh-huh.', '2026-04-12 10:58:14'),
(967, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Hello?', '2026-04-12 10:58:20'),
(968, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Hello?', '2026-04-12 10:58:29'),
(969, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Not Santi.', '2026-04-12 10:58:35'),
(970, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Not Santi.', '2026-04-12 10:58:35'),
(971, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Kranti is Kranti not Santi.', '2026-04-12 10:58:36'),
(972, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Pranti is Pranti, not Santi.', '2026-04-12 10:58:37'),
(973, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'It\'s', '2026-04-12 10:58:48'),
(974, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'It\'s same.', '2026-04-12 10:58:50'),
(975, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'It\'s same.', '2026-04-12 10:58:50'),
(976, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'It doesn\'t make any difference.', '2026-04-12 10:58:53'),
(977, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'It doesn\'t business.', '2026-04-12 10:58:56'),
(978, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Hello?', '2026-04-12 10:58:57'),
(979, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Hello?', '2026-04-12 10:58:57'),
(980, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'It doesn\'t it\'s not.', '2026-04-12 10:58:57'),
(981, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Hello? Is it safe?', '2026-04-12 10:58:59'),
(982, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Is it safe?', '2026-04-12 10:59:00'),
(983, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Is there any difference?', '2026-04-12 10:59:06'),
(984, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Tell me.', '2026-04-12 10:59:09'),
(985, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Problem.', '2026-04-12 10:59:26'),
(986, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'Smriti Kumari', 'Yeah.', '2026-04-12 10:59:27'),
(987, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'User', '2026-04-12 10:59:29'),
(988, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Download transcript.', '2026-04-12 10:59:35'),
(989, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Yeah.', '2026-04-12 10:59:41'),
(990, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Problem', '2026-04-12 10:59:56'),
(991, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Text.', '2026-04-12 11:00:02'),
(992, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Not something. It\'s same rookie.', '2026-04-12 11:00:14'),
(993, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Thank you.', '2026-04-12 11:00:20'),
(994, 'a36af84e-f89c-4616-9f85-6615a310c0de', 'KRANTI KUMARI', 'Like in user button', '2026-04-12 11:00:44'),
(995, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'Hello?', '2026-04-18 10:20:52'),
(996, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'Good morning.', '2026-04-18 10:20:55'),
(997, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'Are you doing?', '2026-04-18 10:21:07'),
(998, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'What are you doing?', '2026-04-18 10:21:11'),
(999, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'Is everything okay?', '2026-04-18 10:21:16'),
(1000, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'Hello?', '2026-04-18 10:21:53'),
(1001, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'KRANTI KUMARI', 'I am Chunky.', '2026-04-18 10:22:01'),
(1002, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'I am Tranti.', '2026-04-18 10:22:02'),
(1003, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'I like', '2026-04-18 10:22:04'),
(1004, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'KRANTI KUMARI', 'I like man', '2026-04-18 10:22:19'),
(1005, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'I like mango.', '2026-04-18 10:22:20'),
(1006, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'Smriti Kumari', 'Hello?', '2026-04-18 10:22:22'),
(1007, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'KRANTI KUMARI', 'I like mango.', '2026-04-18 10:22:30'),
(1008, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'KRANTI KUMARI', 'I like macbook.', '2026-04-18 10:22:31'),
(1009, '76096be5-fa8e-4d8b-860f-bbecf2fe8161', 'KRANTI KUMARI', 'Hello?', '2026-04-18 10:22:46'),
(1010, '34b5349c-5734-4940-a28a-cc7c340fc6cc', 'Smriti Kumari', 'Hello?', '2026-04-18 10:29:24'),
(1011, 'd37f1cc8-c253-4623-a769-996852fc22fe', 'KRANTI KUMARI', 'Hello?', '2026-04-18 10:31:04'),
(1012, 'd37f1cc8-c253-4623-a769-996852fc22fe', 'Smriti Kumari', 'Good afternoon.', '2026-04-18 10:31:15'),
(1013, 'd37f1cc8-c253-4623-a769-996852fc22fe', 'KRANTI KUMARI', 'Afternoon.', '2026-04-18 10:31:17'),
(1014, 'd37f1cc8-c253-4623-a769-996852fc22fe', 'Smriti Kumari', 'Hello? It\'s me.', '2026-04-18 10:31:33'),
(1015, 'd37f1cc8-c253-4623-a769-996852fc22fe', 'KRANTI KUMARI', 'Hello?', '2026-04-18 10:31:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gd_scores`
--
ALTER TABLE `gd_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transcripts`
--
ALTER TABLE `transcripts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gd_scores`
--
ALTER TABLE `gd_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `transcripts`
--
ALTER TABLE `transcripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
