-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 04. bře 2019, 08:31
-- Verze serveru: 10.1.30-MariaDB
-- Verze PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `week9_v2`
--

--
-- Vypisuji data pro tabulku `images`
--

INSERT INTO `images` (`id`, `path`, `description`, `created_at`, `updated_at`) VALUES
(1, 'media/another-sherlock-holmes.jpg', 'Another Sherlock Holmes.', NULL, NULL),
(2, 'media/hercule-with-hat.jpg', 'Hercule Poirot waving his hat.', NULL, NULL),
(3, 'media/hercule-with-moustache.jpg', 'A different Hercule Poirot with his signature moustache.', NULL, NULL),
(4, 'media/sherlock-holmes.jpg', 'Sherlock Holmes lost all his color.', NULL, NULL),
(5, 'media/yet-another-sherlock-holmes.jpg', 'Yet another Sherlock Holmes. And not the last one.', NULL, NULL);

--
-- Vypisuji data pro tabulku `detectives`
--

INSERT INTO `detectives` (`id`, `slug`, `name`, `history`, `available_from`, `available_until`, `created_at`, `updated_at`) VALUES
(1, 'holmes', 'Sherlock Holmes', 'Sherlock Holmes is a fictional private detective created by British author Sir Arthur Conan Doyle. Referring to himself as a "consulting detective" in the stories, Holmes is known for his proficiency with observation, forensic science, and logical reasoning that borders on the fantastic, which he employs when investigating cases for a wide variety of clients, including Scotland Yard.', '20:00:00', '06:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(2, 'poirot', 'Hercule Poirot', 'Hercule Poirot is a fictional Belgian detective, created by Agatha Christie. Poirot is one of Christie\'s most famous and long-running characters, appearing in 33 novels, one play (Black Coffee), and more than 50 short stories published between 1920 and 1975.', '10:00:00', '16:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(3, 'marple', 'Miss Marple', 'Miss Marple is a fictional character in Agatha Christie\'s crime novels and short stories. An elderly spinster who lives in the village of St. Mary Mead and acts as an amateur consulting detective, she is one of the best known of Christie\'s characters and has been portrayed numerous times on screen.', '09:00:00', '17:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(4, 'marlow', 'Phil Marlowe', 'Philip Marlowe is a fictional character created by Raymond Chandler. Marlowe first appeared under that name in The Big Sleep, published in 1939. Chandler\'s early short stories, published in pulp magazines like Black Mask and Dime Detective, featured similar characters with names like "Carmady" and "John Dalmas".', '17:00:00', '23:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(5, 'colombo', 'Inspector Colombo', 'Columbo is a shrewd but inelegant blue-collar homicide detective whose trademarks include his rumpled beige raincoat, unassuming demeanor, and frequent cigar smoking. His suspects are often affluent members of high society who try to carefully cover their tracks. Initially dismissive of Columbo\'s circumstantial speech and apparent ineptitude, they become increasingly unsettled as his pestering behavior leads him to tease out incriminating evidence.', '03:00:00', '23:59:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36');

--
-- Vypisuji data pro tabulku `detective_image`
--

INSERT INTO `detective_image` (`detective_id`, `image_id`) VALUES
(1, 1),
(1, 4),
(1, 5),
(2, 2),
(2, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
