-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Sty 2017, 20:36
-- Wersja serwera: 10.1.16-MariaDB
-- Wersja PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `ssi`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `konta_login` varchar(20) NOT NULL,
  `imie` varchar(20) NOT NULL,
  `nazwisko` varchar(20) NOT NULL,
  `nr_tel` varchar(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `adres_nr` varchar(11) NOT NULL,
  `adres_ulica` varchar(20) DEFAULT NULL,
  `adres_miasto` varchar(20) NOT NULL,
  `adres_kod_pocztowy` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konta`
--

CREATE TABLE `konta` (
  `login` varchar(20) NOT NULL,
  `haslo` varchar(20) NOT NULL,
  `typ` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `konta`
--

INSERT INTO `konta` (`login`, `haslo`, `typ`) VALUES
('admin', 'admin', 4),
('kierownik', 'kierownik', 3),
('user', 'user', 1),
('worker', 'worker', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferty`
--

CREATE TABLE `oferty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) DEFAULT NULL,
  `opis` varchar(100) DEFAULT NULL,
  `cena` int(11) NOT NULL,
  `data_start` date NOT NULL,
  `data_koniec` date DEFAULT NULL,
  `id_pokoju` smallint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pokoj`
--

CREATE TABLE `pokoj` (
  `id` smallint(6) NOT NULL,
  `ilosc_miejsc` tinyint(4) NOT NULL,
  `standard` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `login` varchar(20) NOT NULL,
  `imie` int(20) NOT NULL,
  `nazwisko` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id` int(11) NOT NULL,
  `data_start` date NOT NULL,
  `data_koniec` date NOT NULL,
  `data_zrobienia` date NOT NULL,
  `data_zaplaty` date DEFAULT NULL,
  `ilosc_osob` tinyint(4) NOT NULL,
  `id_oferty` int(11) NOT NULL,
  `stan` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`konta_login`);

--
-- Indexes for table `konta`
--
ALTER TABLE `konta`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `oferty`
--
ALTER TABLE `oferty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pokoj`
--
ALTER TABLE `pokoj`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `konta_login` FOREIGN KEY (`konta_login`) REFERENCES `konta` (`login`);

--
-- Ograniczenia dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD CONSTRAINT `pracownik_ibfk_1` FOREIGN KEY (`login`) REFERENCES `konta` (`login`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
