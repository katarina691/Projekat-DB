-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2020 at 05:28 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `medicinskicentar`
--

-- --------------------------------------------------------

--
-- Table structure for table `dijagnoza`
--

CREATE TABLE `dijagnoza` (
  `ID_DIJAGNOZE` int(11) NOT NULL,
  `NAZIV_DOJAGNOZE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dijagnoza`
--

INSERT INTO `dijagnoza` (`ID_DIJAGNOZE`, `NAZIV_DOJAGNOZE`) VALUES
(1, 'povisen pritisak'),
(2, 'upala pluca'),
(3, 'bronhitis'),
(4, 'upala grla'),
(5, 'upala bubrega');

-- --------------------------------------------------------

--
-- Table structure for table `dosije_pacijenta`
--

CREATE TABLE `dosije_pacijenta` (
  `BR_DOSIJEA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosije_pacijenta`
--

INSERT INTO `dosije_pacijenta` (`BR_DOSIJEA`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `lek`
--

CREATE TABLE `lek` (
  `SIFRA_LEKA` int(11) NOT NULL,
  `ID_RECEPTA` int(11) DEFAULT NULL,
  `NAZIV_LEKA` text DEFAULT NULL,
  `NACIN_UPOTREBE` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lek`
--

INSERT INTO `lek` (`SIFRA_LEKA`, `ID_RECEPTA`, `NAZIV_LEKA`, `NACIN_UPOTREBE`) VALUES
(1, 1, 'brufen', 'ssasjsasjajskajskal'),
(2, 3, 'ksalol', 'wuhuahsahsahushSHUAHSUKQS'),
(3, 4, 'andol', 'kakakakakakakaknaks'),
(4, 2, 'paracetamol', 'jsxjksjsjsahshsahshasasahhas'),
(5, 6, 'dovicin', 'jssjsjaksjalsak'),
(6, 5, 'panklav', 'sjsjaksjasjkakjsl');

-- --------------------------------------------------------

--
-- Table structure for table `lekar`
--

CREATE TABLE `lekar` (
  `ID_LEKARA` int(11) NOT NULL,
  `IME_LEKARA` text DEFAULT NULL,
  `PREZIME_LEKARA` text DEFAULT NULL,
  `TELEFON_LEKARA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lekar`
--

INSERT INTO `lekar` (`ID_LEKARA`, `IME_LEKARA`, `PREZIME_LEKARA`, `TELEFON_LEKARA`) VALUES
(1, 'Milos', 'Avramovic', '064 5667901'),
(2, 'Ana', 'Vukadinovic', '062 1357680'),
(3, 'Predrag', 'Jovasevic', '063 2233581'),
(4, 'Miodrag', 'Petrovic', '065 4371862'),
(5, 'Violeta', 'Andjelic', '065 2436175'),
(6, 'Stefan', 'Ilic', '069 8832447'),
(7, 'Nina', 'Stanisavljevic', '064 6175433'),
(8, 'Teodora', 'Jevtic', '062 4577901'),
(9, 'Nadja', 'Jovanovic', '066 7491355'),
(10, 'Milan', 'Stevanovic', '063 5569021'),
(11, 'Silvija', 'Lukic', '062 7722277'),
(12, 'Dejan', 'Petrovic', '062 3554722');

-- --------------------------------------------------------

--
-- Table structure for table `pacijent`
--

CREATE TABLE `pacijent` (
  `JMBG` int(11) NOT NULL,
  `PIB` int(11) DEFAULT NULL,
  `IME_PACIJENTA` text DEFAULT NULL,
  `TELEFON_PACIJENTA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pacijent`
--

INSERT INTO `pacijent` (`JMBG`, `PIB`, `IME_PACIJENTA`, `TELEFON_PACIJENTA`) VALUES
(1056783822, 478900012, 'Anastasija', '062 6778993'),
(1156334421, 623146718, 'Ivana', '065 4556732'),
(1466782921, 125679033, 'Jovan', '065 2358719'),
(1543251619, 401159923, 'Lazar', '066 9368239'),
(1835628191, 216743517, 'Kristina', '066 2564872'),
(1935367272, 345789013, 'Snezana', '062 7685924'),
(2045628171, 567890341, 'Vera', '063 5528910'),
(2057346123, 401159923, 'Nikola', '064 1379536'),
(2114523647, 390057126, 'Miroslav', '065 2381794'),
(2134457787, 401159923, 'Julija', '069 2381457');

-- --------------------------------------------------------

--
-- Table structure for table `poliklinika`
--

CREATE TABLE `poliklinika` (
  `PIB` int(11) NOT NULL,
  `NAZIV` text DEFAULT NULL,
  `GRAD` text DEFAULT NULL,
  `TELEFON` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poliklinika`
--

INSERT INTO `poliklinika` (`PIB`, `NAZIV`, `GRAD`, `TELEFON`) VALUES
(125679033, 'Dom zdravlja', 'Nis', '018 303503\r\n'),
(216743517, 'Dom zdravlja', 'Krusevac', '037 441885'),
(345789013, 'KCS-Poliklinika', 'Beograd', '011 3617777'),
(390057126, 'Bel Medic', 'Beograd', '011 3091000'),
(401159923, 'Studentska poliklinika', 'Beograd', '011 2430814'),
(478900012, 'Kragujemedic', 'Kragujevac', '066 064034'),
(567890341, 'Poliklinika Atina', 'Novi Sad', '060 3823150\r\n'),
(623146718, 'Poliklinika Consilium', 'Pirot', '010 311988');

-- --------------------------------------------------------

--
-- Table structure for table `pregled1`
--

CREATE TABLE `pregled1` (
  `DATUM_` timestamp NULL DEFAULT NULL,
  `DATUM_PREGLEDA` timestamp NULL DEFAULT NULL,
  `ID_PREGLEDA` int(11) NOT NULL,
  `ID_ZAPOSLENJA` int(11) DEFAULT NULL,
  `JMBG` int(11) DEFAULT NULL,
  `BR_DOSIJEA` int(11) DEFAULT NULL,
  `ID_DIJAGNOZE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pregled1`
--

INSERT INTO `pregled1` (`DATUM_`, `DATUM_PREGLEDA`, `ID_PREGLEDA`, `ID_ZAPOSLENJA`, `JMBG`, `BR_DOSIJEA`, `ID_DIJAGNOZE`) VALUES
('2017-05-05 22:00:00', '2017-05-11 22:00:00', 1, 1, 1056783822, 1, 1),
('2017-07-06 22:00:00', '2017-07-13 22:00:00', 2, 1, 1156334421, 2, 2),
('2018-04-04 22:00:00', '2018-04-09 22:00:00', 3, 3, 1466782921, 3, 3),
('2019-01-11 23:00:00', '2019-01-19 23:00:00', 4, 4, 1543251619, 4, 4),
('2018-09-03 22:00:00', '2018-09-08 22:00:00', 5, 5, 1835628191, 5, 2),
('2019-04-09 22:00:00', '2019-05-09 22:00:00', 6, 6, 1935367272, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `recept`
--

CREATE TABLE `recept` (
  `ID_RECEPTA` int(11) NOT NULL,
  `ID_LEKARA` int(11) DEFAULT NULL,
  `ID_PREGLEDA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recept`
--

INSERT INTO `recept` (`ID_RECEPTA`, `ID_LEKARA`, `ID_PREGLEDA`) VALUES
(1, 2, 1),
(2, 1, 5),
(3, 3, 2),
(4, 4, 3),
(5, 9, 4),
(6, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `specijalizacija`
--

CREATE TABLE `specijalizacija` (
  `SPECIJALNOST` text DEFAULT NULL,
  `ID_SPECIJALIZACIJE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specijalizacija`
--

INSERT INTO `specijalizacija` (`SPECIJALNOST`, `ID_SPECIJALIZACIJE`) VALUES
('hirurg', 1),
('urolog', 2),
('kardiolog', 3),
('opsta', 4),
('neurolog', 5),
('onkolog', 6);

-- --------------------------------------------------------

--
-- Table structure for table `zaposlenje`
--

CREATE TABLE `zaposlenje` (
  `DATUM_ZAPOSLENJA` date DEFAULT NULL,
  `ID_ZAPOSLENJA` int(11) NOT NULL,
  `PIB` int(11) DEFAULT NULL,
  `ID_LEKARA` int(11) DEFAULT NULL,
  `ID_SPECIJALIZACIJE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zaposlenje`
--

INSERT INTO `zaposlenje` (`DATUM_ZAPOSLENJA`, `ID_ZAPOSLENJA`, `PIB`, `ID_LEKARA`, `ID_SPECIJALIZACIJE`) VALUES
('2019-05-01', 1, 390057126, 1, 1),
('2019-04-01', 2, 216743517, 2, 4),
('2019-09-09', 3, 125679033, 3, 4),
('2019-10-14', 4, 345789013, 4, 3),
('2019-06-10', 5, 478900012, 5, 1),
('2019-03-18', 6, 567890341, 6, 3),
('2018-04-02', 7, 567890341, 7, 6),
('2018-08-13', 8, 567890341, 8, 2),
('2017-11-09', 10, 623146718, 10, 4),
('2017-06-01', 11, 401159923, 9, 1),
('2017-04-08', 12, 401159923, 11, 3),
('2017-10-23', 13, 125679033, 12, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dijagnoza`
--
ALTER TABLE `dijagnoza`
  ADD PRIMARY KEY (`ID_DIJAGNOZE`);

--
-- Indexes for table `dosije_pacijenta`
--
ALTER TABLE `dosije_pacijenta`
  ADD PRIMARY KEY (`BR_DOSIJEA`);

--
-- Indexes for table `lek`
--
ALTER TABLE `lek`
  ADD PRIMARY KEY (`SIFRA_LEKA`),
  ADD KEY `RELATIONSHIP_7_FK` (`ID_RECEPTA`);

--
-- Indexes for table `lekar`
--
ALTER TABLE `lekar`
  ADD PRIMARY KEY (`ID_LEKARA`);

--
-- Indexes for table `pacijent`
--
ALTER TABLE `pacijent`
  ADD PRIMARY KEY (`JMBG`),
  ADD KEY `RELATIONSHIP_11_FK` (`PIB`);

--
-- Indexes for table `poliklinika`
--
ALTER TABLE `poliklinika`
  ADD PRIMARY KEY (`PIB`);

--
-- Indexes for table `pregled1`
--
ALTER TABLE `pregled1`
  ADD PRIMARY KEY (`ID_PREGLEDA`),
  ADD KEY `JMBG` (`JMBG`),
  ADD KEY `BR_DOSIJEA` (`BR_DOSIJEA`),
  ADD KEY `ID_DIJAGNOZE` (`ID_DIJAGNOZE`),
  ADD KEY `ID_ZAPOSLENJA` (`ID_ZAPOSLENJA`);

--
-- Indexes for table `recept`
--
ALTER TABLE `recept`
  ADD PRIMARY KEY (`ID_RECEPTA`),
  ADD KEY `RELATIONSHIP_6_FK` (`ID_LEKARA`),
  ADD KEY `RELATIONSHIP_8_FK` (`ID_PREGLEDA`);

--
-- Indexes for table `specijalizacija`
--
ALTER TABLE `specijalizacija`
  ADD PRIMARY KEY (`ID_SPECIJALIZACIJE`);

--
-- Indexes for table `zaposlenje`
--
ALTER TABLE `zaposlenje`
  ADD PRIMARY KEY (`ID_ZAPOSLENJA`),
  ADD KEY `RELATIONSHIP_1_FK` (`PIB`),
  ADD KEY `RELATIONSHIP_2_FK` (`ID_LEKARA`),
  ADD KEY `RELATIONSHIP_3_FK` (`ID_SPECIJALIZACIJE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dijagnoza`
--
ALTER TABLE `dijagnoza`
  MODIFY `ID_DIJAGNOZE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lek`
--
ALTER TABLE `lek`
  MODIFY `SIFRA_LEKA` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zaposlenje`
--
ALTER TABLE `zaposlenje`
  MODIFY `ID_ZAPOSLENJA` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lek`
--
ALTER TABLE `lek`
  ADD CONSTRAINT `FK_LEK_RELATIONS_RECEPT` FOREIGN KEY (`ID_RECEPTA`) REFERENCES `recept` (`ID_RECEPTA`);

--
-- Constraints for table `pacijent`
--
ALTER TABLE `pacijent`
  ADD CONSTRAINT `FK_PACIJENT_RELATIONS_POLIKLIN` FOREIGN KEY (`PIB`) REFERENCES `poliklinika` (`PIB`);

--
-- Constraints for table `pregled1`
--
ALTER TABLE `pregled1`
  ADD CONSTRAINT `pregled1_ibfk_1` FOREIGN KEY (`JMBG`) REFERENCES `pacijent` (`JMBG`),
  ADD CONSTRAINT `pregled1_ibfk_2` FOREIGN KEY (`BR_DOSIJEA`) REFERENCES `dosije_pacijenta` (`BR_DOSIJEA`),
  ADD CONSTRAINT `pregled1_ibfk_3` FOREIGN KEY (`ID_DIJAGNOZE`) REFERENCES `dijagnoza` (`ID_DIJAGNOZE`),
  ADD CONSTRAINT `pregled1_ibfk_4` FOREIGN KEY (`ID_ZAPOSLENJA`) REFERENCES `zaposlenje` (`ID_ZAPOSLENJA`);

--
-- Constraints for table `recept`
--
ALTER TABLE `recept`
  ADD CONSTRAINT `FK_RECEPT_RELATIONS_LEKAR` FOREIGN KEY (`ID_LEKARA`) REFERENCES `lekar` (`ID_LEKARA`),
  ADD CONSTRAINT `FK_RECEPT_RELATIONS_PREGLED` FOREIGN KEY (`ID_PREGLEDA`) REFERENCES `pregled` (`ID_PREGLEDA`);

--
-- Constraints for table `zaposlenje`
--
ALTER TABLE `zaposlenje`
  ADD CONSTRAINT `FK_ZAPOSLEN_RELATIONS_LEKAR` FOREIGN KEY (`ID_LEKARA`) REFERENCES `lekar` (`ID_LEKARA`),
  ADD CONSTRAINT `FK_ZAPOSLEN_RELATIONS_POLIKLIN` FOREIGN KEY (`PIB`) REFERENCES `poliklinika` (`PIB`),
  ADD CONSTRAINT `FK_ZAPOSLEN_RELATIONS_SPECIJAL` FOREIGN KEY (`ID_SPECIJALIZACIJE`) REFERENCES `specijalizacija` (`ID_SPECIJALIZACIJE`);
COMMIT;
