-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Gru 2021, 17:58
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `database`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `id` int(11) DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `gender`) VALUES
(1, 'Emmalyn', 'Thewles', 'ethewles0@csmonitor.com', 'Genderqueer'),
(2, 'Jobina', 'Eric', 'jeric1@elegantthemes.com', 'Agender'),
(3, 'Ursola', 'Spelling', 'uspelling2@shop-pro.jp', 'Polygender'),
(4, 'Nealon', 'Bacher', 'nbacher3@elegantthemes.com', 'Agender'),
(5, 'Spense', 'Dincke', 'sdincke4@godaddy.com', 'Bigender'),
(6, 'Doro', 'Churching', 'dchurching5@pen.io', 'Female'),
(7, 'Burk', 'Escoffier', 'bescoffier6@buzzfeed.com', 'Female'),
(8, 'Babara', 'Daal', 'bdaal7@rediff.com', 'Genderfluid'),
(9, 'Reggie', 'Penhearow', 'rpenhearow8@google.nl', 'Genderfluid'),
(10, 'Asia', 'Dawid', 'adawid9@163.com', 'Agender'),
(11, 'Symon', 'Bayly', 'sbaylya@nytimes.com', 'Agender'),
(12, 'Aguie', 'Yate', 'ayateb@behance.net', 'Polygender'),
(13, 'Caro', 'Mithan', 'cmithanc@netlog.com', 'Genderfluid'),
(14, 'Liesa', 'Wale', 'lwaled@pagesperso-orange.fr', 'Genderqueer'),
(15, 'Dorice', 'Wildber', 'dwildbere@facebook.com', 'Male'),
(16, 'Mavra', 'Della', 'mdellaf@sfgate.com', 'Genderfluid'),
(17, 'Monica', 'Lydiatt', 'mlydiattg@twitpic.com', 'Genderqueer'),
(18, 'Obadias', 'Thirst', 'othirsth@parallels.com', 'Bigender'),
(19, 'Melly', 'Semiraz', 'msemirazi@delicious.com', 'Male'),
(20, 'Avril', 'Musla', 'amuslaj@posterous.com', 'Polygender'),
(21, 'Rodd', 'Fesby', 'rfesbyk@unc.edu', 'Genderqueer'),
(22, 'Zuzana', 'Vousden', 'zvousdenl@etsy.com', 'Non-binary'),
(23, 'Rosemaria', 'Zold', 'rzoldm@e-recht24.de', 'Male'),
(24, 'Karylin', 'Shiril', 'kshiriln@lulu.com', 'Non-binary'),
(25, 'Stavro', 'Matuszynski', 'smatuszynskio@xing.com', 'Female'),
(26, 'Rosella', 'Butler-Bowdon', 'rbutlerbowdonp@pinterest.com', 'Non-binary'),
(27, 'Marni', 'Quadrio', 'mquadrioq@bandcamp.com', 'Genderqueer'),
(28, 'Luciano', 'Behninck', 'lbehninckr@comcast.net', 'Bigender'),
(29, 'Arnie', 'Banaszczyk', 'abanaszczyks@odnoklassniki.ru', 'Agender'),
(30, 'Ronni', 'Divver', 'rdivvert@squarespace.com', 'Bigender');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `name`) VALUES
(1, 'admin', 'admin', 'Administrator');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
