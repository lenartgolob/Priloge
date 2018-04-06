-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 20. dec 2017 ob 10.04
-- Različica strežnika: 10.1.28-MariaDB
-- Različica PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `pohod`
--

-- --------------------------------------------------------

--
-- Struktura tabele `admin`
--

CREATE TABLE `admin` (
  `username` tinytext COLLATE utf8_slovenian_ci NOT NULL,
  `password` tinytext COLLATE utf8_slovenian_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `admin`
--

INSERT INTO `admin` (`username`, `password`, `id`) VALUES
('admin', 'geslo123', 1);

-- --------------------------------------------------------

--
-- Struktura tabele `dijaki`
--

CREATE TABLE `dijaki` (
  `id_d` int(11) NOT NULL,
  `id_r` int(11) NOT NULL,
  `ime` varchar(20) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `priimek` varchar(40) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `id_sk` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `dijaki`
--

INSERT INTO `dijaki` (`id_d`, `id_r`, `ime`, `priimek`, `id_sk`) VALUES
(1, 4, 'Enis', 'Bećarević', 5),
(2, 4, 'Marcel Andrej', 'Beliš', 2),
(3, 4, 'Lovro', 'Breznik', 3),
(4, 4, 'Žak', 'Bršek', 5),
(5, 4, 'Lenart', 'Golob', 1),
(6, 4, 'Dominik', 'Jurak', 5),
(7, 4, 'Tilen', 'Kelc', 3),
(8, 4, 'Jan', 'Konečnik', 1),
(9, 4, 'Tilen', 'Krivec', 2),
(10, 4, 'Alen', 'Martinović', 5),
(11, 4, 'Tilen', 'Nabernik', 3),
(12, 4, 'Marko', 'Oljača', 1),
(13, 4, 'Janko', 'Oštir', 2),
(14, 4, 'Emanuel', 'Planko', 2),
(15, 4, 'Jan', 'Plazovnik', 4),
(16, 4, 'Žan', 'Pukmajster', 4),
(17, 4, 'Niko', 'Ružič', 2),
(18, 4, 'Timen', 'Smajilović', 5),
(19, 4, 'Mitja', 'Stramec', 4),
(20, 4, 'Tilen', 'Tićević', 1),
(21, 4, 'Jan', 'Topolovec', 3),
(22, 4, 'Ivo', 'Videmšek', 3),
(23, 4, 'Žiga', 'Zupanc', 4);

-- --------------------------------------------------------

--
-- Struktura tabele `kontrolne`
--

CREATE TABLE `kontrolne` (
  `id_k` int(11) NOT NULL,
  `stevilka` int(11) NOT NULL,
  `opis` text COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `kontrolne`
--

INSERT INTO `kontrolne` (`id_k`, `stevilka`, `opis`) VALUES
(1, 1, 'Začetna - KT0'),
(2, 2, 'KT1'),
(3, 3, 'KT2'),
(4, 4, 'KT3'),
(5, 5, 'KT4'),
(6, 6, 'KT5'),
(7, 7, 'Končna - KT6');

-- --------------------------------------------------------

--
-- Struktura tabele `odgovori`
--

CREATE TABLE `odgovori` (
  `id_o` int(11) NOT NULL,
  `odgovor` text COLLATE utf8_slovenian_ci,
  `id_v` int(11) NOT NULL,
  `moznost` char(4) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `pravilen` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `odgovori`
--

INSERT INTO `odgovori` (`id_o`, `odgovor`, `id_v`, `moznost`, `pravilen`) VALUES
(1, 'Ne', 1, 'a', 1),
(2, 'Da', 1, 'b', 0),
(3, 'Ne, to število je pozitivno.', 2, 'a', 1),
(4, 'Da.', 2, 'b', 1),
(5, 'Ne, to število je negativno.', 2, 'c', 0),
(6, 'Luksemburg', 3, 'a', 1),
(7, 'Slovenija', 3, 'b', 0),
(8, 'Enako', 3, 'c', 1),
(10, 'Stol', 4, 'a', 1),
(11, 'Grintovec', 4, 'b', 0),
(12, 'Snežnik', 4, 'c', 1),
(13, 'U = R * I', 5, 'a', 1),
(14, 'P = I * n', 5, 'b', 1),
(15, 'P = U * I', 5, 'c', 0),
(16, '230V', 6, 'a', 0),
(17, '220V', 6, 'b', 1),
(18, '180V', 6, 'c', 1),
(19, 'C++', 7, 'a', 1),
(20, 'LibreOffice', 7, 'b', 1),
(21, 'Ubuntu', 7, 'c', 0),
(22, 'Tipkovnica', 8, 'a', 0),
(23, 'Zvočniki', 8, 'b', 1),
(24, 'Monitor', 8, 'c', 1),
(25, 'Josip Jurčič, 1589', 9, 'a', 1),
(26, 'Primož Trubar, 1555', 9, 'b', 1),
(27, 'Primož Trubar, 1550', 9, 'c', 0),
(28, '1991', 10, 'a', 1),
(29, '2004', 10, 'b', 0),
(30, '2007', 10, 'c', 1);

-- --------------------------------------------------------

--
-- Struktura tabele `odgovori_skupine`
--

CREATE TABLE `odgovori_skupine` (
  `id_os` int(11) NOT NULL,
  `id_v` int(11) NOT NULL,
  `id_sk` int(11) NOT NULL,
  `tocke` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `predmeti`
--

CREATE TABLE `predmeti` (
  `id_p` int(11) NOT NULL,
  `predmet` varchar(40) COLLATE utf8_slovenian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `predmeti`
--

INSERT INTO `predmeti` (`id_p`, `predmet`) VALUES
(1, 'Matematika'),
(2, 'Geografija'),
(3, 'Elektrika'),
(4, 'Računalništvo'),
(5, 'Zgodovina');

-- --------------------------------------------------------

--
-- Struktura tabele `razredi`
--

CREATE TABLE `razredi` (
  `id_r` int(11) NOT NULL,
  `razred` varchar(20) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `id_s` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `razredi`
--

INSERT INTO `razredi` (`id_r`, `razred`, `id_s`) VALUES
(1, '1.TRA', 1),
(2, '1.TRB', 1),
(3, '2.TRA', 1),
(4, '2.TRB', 1);

-- --------------------------------------------------------

--
-- Struktura tabele `rezultati`
--

CREATE TABLE `rezultati` (
  `id_rez` int(11) NOT NULL,
  `prihod` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `st_tock` int(11) DEFAULT '0',
  `id_sk` int(11) NOT NULL,
  `id_k` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Struktura tabele `skupine`
--

CREATE TABLE `skupine` (
  `id_sk` int(11) NOT NULL,
  `geslo` varchar(80) COLLATE utf8_slovenian_ci DEFAULT NULL,
  `st_skupine` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `skupine`
--

INSERT INTO `skupine` (`id_sk`, `geslo`, `st_skupine`) VALUES
(1, '1111', 1),
(2, '2222', 2),
(3, '3333', 3),
(4, '4444', 4),
(5, '5555', 5);

-- --------------------------------------------------------

--
-- Struktura tabele `sole`
--

CREATE TABLE `sole` (
  `id_s` int(11) NOT NULL,
  `sola` varchar(80) COLLATE utf8_slovenian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `sole`
--

INSERT INTO `sole` (`id_s`, `sola`) VALUES
(1, 'ERŠ'),
(2, 'GIM');

-- --------------------------------------------------------

--
-- Struktura tabele `vprasanja`
--

CREATE TABLE `vprasanja` (
  `id_v` int(11) NOT NULL,
  `id_p` int(11) NOT NULL,
  `vprasanje` text COLLATE utf8_slovenian_ci,
  `stopnja` int(11) NOT NULL,
  `id_k` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Odloži podatke za tabelo `vprasanja`
--

INSERT INTO `vprasanja` (`id_v`, `id_p`, `vprasanje`, `stopnja`, `id_k`) VALUES
(1, 1, 'Ali je 23 praštevilo?', 1, 2),
(2, 1, 'Od 0 odštejemo 5, ali je dano število naravno?', 2, 2),
(3, 2, 'Katera država je večja Luksemburg ali Slovenija?', 1, 3),
(4, 2, 'Katera izmed naštetih gor je največja?', 2, 3),
(5, 3, 'Kakšna je formula za moč?', 1, 4),
(7, 4, 'Katero izmed naštetega je operacijski sistem?', 1, 5),
(8, 4, 'Katera o naslednjih naprav je vhodna?', 2, 5),
(9, 5, 'Kdo je napisal prvo slovensko knjigo in kdaj?', 1, 6),
(10, 5, 'Kdaj se je Slovenija pridružila Evropski Uniji?', 2, 6),
(6, 3, 'Koliko V imajo vticnice v vsakdanji uporabi?', 2, 4);

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `dijaki`
--
ALTER TABLE `dijaki`
  ADD PRIMARY KEY (`id_d`),
  ADD KEY `id_r` (`id_r`),
  ADD KEY `id_sk` (`id_sk`);

--
-- Indeksi tabele `kontrolne`
--
ALTER TABLE `kontrolne`
  ADD PRIMARY KEY (`id_k`);

--
-- Indeksi tabele `odgovori`
--
ALTER TABLE `odgovori`
  ADD PRIMARY KEY (`id_o`),
  ADD KEY `id_v` (`id_v`);

--
-- Indeksi tabele `odgovori_skupine`
--
ALTER TABLE `odgovori_skupine`
  ADD PRIMARY KEY (`id_os`),
  ADD KEY `id_sk` (`id_sk`),
  ADD KEY `id_v` (`id_v`);

--
-- Indeksi tabele `predmeti`
--
ALTER TABLE `predmeti`
  ADD PRIMARY KEY (`id_p`);

--
-- Indeksi tabele `razredi`
--
ALTER TABLE `razredi`
  ADD PRIMARY KEY (`id_r`),
  ADD KEY `id_s` (`id_s`);

--
-- Indeksi tabele `rezultati`
--
ALTER TABLE `rezultati`
  ADD PRIMARY KEY (`id_rez`),
  ADD KEY `id_sk` (`id_sk`),
  ADD KEY `id_k` (`id_k`);

--
-- Indeksi tabele `skupine`
--
ALTER TABLE `skupine`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indeksi tabele `sole`
--
ALTER TABLE `sole`
  ADD PRIMARY KEY (`id_s`);

--
-- Indeksi tabele `vprasanja`
--
ALTER TABLE `vprasanja`
  ADD PRIMARY KEY (`id_v`),
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_k` (`id_k`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT tabele `dijaki`
--
ALTER TABLE `dijaki`
  MODIFY `id_d` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT tabele `kontrolne`
--
ALTER TABLE `kontrolne`
  MODIFY `id_k` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT tabele `odgovori`
--
ALTER TABLE `odgovori`
  MODIFY `id_o` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT tabele `odgovori_skupine`
--
ALTER TABLE `odgovori_skupine`
  MODIFY `id_os` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `predmeti`
--
ALTER TABLE `predmeti`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT tabele `razredi`
--
ALTER TABLE `razredi`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT tabele `rezultati`
--
ALTER TABLE `rezultati`
  MODIFY `id_rez` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `skupine`
--
ALTER TABLE `skupine`
  MODIFY `id_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT tabele `sole`
--
ALTER TABLE `sole`
  MODIFY `id_s` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT tabele `vprasanja`
--
ALTER TABLE `vprasanja`
  MODIFY `id_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
