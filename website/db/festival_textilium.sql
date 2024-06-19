-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Gegenereerd op: 06 sep 2022 om 09:53
-- Serverversie: 5.7.34
-- PHP-versie: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `festival_textilium`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_aanbodresultaat`
--

DROP TABLE IF EXISTS `custom_aanbodresultaat`;
CREATE TABLE `custom_aanbodresultaat` (
  `id` int(11) NOT NULL,
  `aanbod` int(11) NOT NULL,
  `reactie` int(11) NOT NULL,
  `reden` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `event` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_aanbodvragen`
--

DROP TABLE IF EXISTS `custom_aanbodvragen`;
CREATE TABLE `custom_aanbodvragen` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `aanbodid` int(11) NOT NULL,
  `vraag` text NOT NULL,
  `volgorde` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_acties`
--

DROP TABLE IF EXISTS `custom_acties`;
CREATE TABLE `custom_acties` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `actie` text NOT NULL,
  `groep` varchar(150) NOT NULL,
  `categorie` varchar(150) NOT NULL,
  `tabblad` int(11) NOT NULL,
  `checked` int(3) NOT NULL,
  `medewerker` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `opmerkingen` text NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `afgerond` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_acties`
--

INSERT INTO `custom_acties` (`id`, `festivalevent`, `event`, `persoon`, `vrijwilliger`, `podia`, `actie`, `groep`, `categorie`, `tabblad`, `checked`, `medewerker`, `datum`, `opmerkingen`, `copyof`, `copyitem`, `afgerond`, `del`) VALUES
(1, 1, 5, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-16 14:14:00', '', 0, 'e4db1576c00932c6b2e8f4f88e968066', 1, 0),
(2, 1, 29, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-16 20:00:00', '', 0, 'ee612cc5ae8c573858fbd0af67632e85', 1, 0),
(3, 1, 30, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-16 20:05:00', '', 0, 'b7e8a47bbde092cac2bbf76a0b47bde0', 1, 0),
(4, 1, 31, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-16 20:49:00', '', 0, 'e1693b19a7965d7df0816035e755ff3b', 1, 0),
(5, 1, 3, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 64, '2021-09-16 00:00:00', '', 0, 'b42ddf34509da7db29ecc0b89ce79a4c', 2, 0),
(6, 1, 3, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 64, '2021-09-16 21:54:46', '', 0, '7c064a15a4e9dfaf8e086a72331358e5', 2, 0),
(7, 1, 3, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-16 21:55:00', '', 0, '074f8cd992076e9b6e88a50c80bb642e', 1, 0),
(8, 1, 10, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-21 15:00:00', '', 0, '5916b8619bc6a15fe21f00574a5295c4', 1, 0),
(9, 1, 10, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 63, '2021-09-21 10:00:00', '', 0, '64e5fcc04e9a939f8418536a92ddfa8f', 2, -1),
(10, 1, 34, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-17 00:06:00', '', 0, 'a692d5539a2377a32b301dbc921ab1bb', 2, 0),
(11, 1, 36, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-17 00:20:14', '', 0, 'f539a3b2f3b5e7d2085c8fae9ce6371d', 2, 0),
(12, 1, 14, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-10-04 00:00:00', '', 0, '8f8f93393fe4b405e617c23fc873d462', 2, 0),
(13, 1, 67, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-09-10 00:00:00', '', 0, 'ac4f54aa22bb2fd3c5de147824c37cbf', 2, 0),
(14, 1, 32, 0, 0, 0, 'Bellen met 1026386540', '', '', 0, 0, 71, '2021-10-05 11:38:00', '', 0, '12215fc86c28cb38514f43a3dac9f7c8', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_adressen`
--

DROP TABLE IF EXISTS `custom_adressen`;
CREATE TABLE `custom_adressen` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `contactpersoon` int(11) NOT NULL,
  `adres` varchar(150) NOT NULL,
  `postcode` varchar(150) NOT NULL,
  `plaats` varchar(150) NOT NULL,
  `telefoon` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `verhuur` int(3) NOT NULL,
  `postadres` int(3) NOT NULL,
  `factuuradres` int(3) NOT NULL,
  `bezoekadres` int(3) NOT NULL,
  `opmerkingen` text NOT NULL,
  `datum` datetime NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_antwoorden`
--

DROP TABLE IF EXISTS `custom_antwoorden`;
CREATE TABLE `custom_antwoorden` (
  `id` int(11) NOT NULL,
  `thema` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `aanbod` int(11) NOT NULL,
  `antwoord` int(11) NOT NULL,
  `synoniem` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_benodigdheden`
--

DROP TABLE IF EXISTS `custom_benodigdheden`;
CREATE TABLE `custom_benodigdheden` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `benodigdheid` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  `opmerkingen` text NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_catering`
--

DROP TABLE IF EXISTS `custom_catering`;
CREATE TABLE `custom_catering` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `planningsregelid` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `ontbijt` int(3) NOT NULL,
  `lunch` int(3) NOT NULL,
  `diner` int(3) NOT NULL,
  `nacht` int(3) NOT NULL,
  `lunchcoupon` int(3) NOT NULL DEFAULT '0',
  `dinercoupon` int(3) NOT NULL DEFAULT '0',
  `ontbijtlocatie` int(11) NOT NULL,
  `lunchlocatie` int(11) NOT NULL,
  `dinerlocatie` int(11) NOT NULL,
  `nachtlocatie` int(11) NOT NULL,
  `consumptiemunten` int(3) NOT NULL,
  `opmerkingen` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `custom_catering`
--

INSERT INTO `custom_catering` (`id`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `planningsregelid`, `datum`, `ontbijt`, `lunch`, `diner`, `nacht`, `lunchcoupon`, `dinercoupon`, `ontbijtlocatie`, `lunchlocatie`, `dinerlocatie`, `nachtlocatie`, `consumptiemunten`, `opmerkingen`, `del`) VALUES
(1, 3, 0, 0, 0, 0, '2021-10-02 00:00:00', 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', -1),
(2, 32, 0, 0, 0, 0, '2021-10-08 00:00:00', 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 50, '', 0),
(3, 3, 0, 0, 0, 0, '2021-10-02 00:00:00', 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(4, 0, 0, 1, 0, 7, '2021-10-01 15:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1),
(5, 0, 0, 1, 0, 7, '2021-10-01 15:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1),
(6, 0, 0, 1, 0, 7, '2021-10-01 15:00:00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', -1),
(7, 0, 0, 10, 0, 49, '2021-10-08 14:00:00', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(8, 0, 0, 105, 0, 50, '2021-10-08 14:00:00', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(9, 0, 0, 10, 0, 225, '2021-10-10 10:30:00', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(10, 0, 0, 10, 0, 225, '2021-10-10 10:30:00', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0),
(11, 4, 0, 0, 0, 0, '2021-10-02 00:00:00', 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_cateringvoorkeur`
--

DROP TABLE IF EXISTS `custom_cateringvoorkeur`;
CREATE TABLE `custom_cateringvoorkeur` (
  `id` int(11) NOT NULL,
  `catering` int(11) NOT NULL,
  `cateringvoorkeur` int(11) NOT NULL,
  `aantal` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `custom_cateringvoorkeur`
--

INSERT INTO `custom_cateringvoorkeur` (`id`, `catering`, `cateringvoorkeur`, `aantal`, `del`) VALUES
(1, 1, 5, 0, 0),
(2, 1, 3, 0, 0),
(3, 1, 4, 0, 0),
(4, 1, 2, 0, 0),
(5, 1, 1, 0, 0),
(6, 2, 5, 0, 0),
(7, 2, 3, 1, 0),
(8, 2, 4, 0, 0),
(9, 2, 2, 1, 0),
(10, 2, 1, 2, 0),
(11, 3, 5, 0, 0),
(12, 3, 3, 0, 0),
(13, 3, 4, 0, 0),
(14, 3, 2, 0, 0),
(15, 3, 1, 4, 0),
(16, 4, 5, 0, 0),
(17, 0, 5, 0, 0),
(18, 5, 5, 1, 0),
(19, 6, 5, 0, 0),
(20, 7, 5, 1, 0),
(21, 9, 5, 1, 0),
(22, 11, 5, 0, 0),
(23, 11, 3, 0, 0),
(24, 11, 4, 0, 0),
(25, 11, 2, 0, 0),
(26, 11, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_centralemeldingen`
--

DROP TABLE IF EXISTS `custom_centralemeldingen`;
CREATE TABLE `custom_centralemeldingen` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL DEFAULT '0',
  `categorie` int(11) NOT NULL DEFAULT '0',
  `kraamnummer` int(11) NOT NULL DEFAULT '0',
  `melding` text,
  `mobiel` varchar(150) DEFAULT NULL,
  `terugbelverzoek` int(3) NOT NULL DEFAULT '0',
  `toegevoegd` datetime DEFAULT NULL,
  `herinnering` datetime DEFAULT NULL,
  `afgehandeld` datetime DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_chat`
--

DROP TABLE IF EXISTS `custom_chat`;
CREATE TABLE `custom_chat` (
  `id` int(11) NOT NULL,
  `reactieid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `aanbodid` int(11) NOT NULL,
  `reactie` text NOT NULL,
  `verstuurd` datetime NOT NULL,
  `verstuurddoor` varchar(150) NOT NULL,
  `gelezen` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_composities`
--

DROP TABLE IF EXISTS `custom_composities`;
CREATE TABLE `custom_composities` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `volgorde` int(3) NOT NULL,
  `componist` varchar(150) NOT NULL,
  `titelwerk` varchar(150) NOT NULL,
  `lengtewerk` varchar(150) NOT NULL,
  `bijzonderhedenwerk` text NOT NULL,
  `bezetting` text NOT NULL,
  `techniekvisuals` text,
  `lichtwensen` text,
  `versterkt` text,
  `pdf` int(11) NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_composities`
--

INSERT INTO `custom_composities` (`id`, `festivalevent`, `event`, `persoon`, `vrijwilliger`, `podia`, `volgorde`, `componist`, `titelwerk`, `lengtewerk`, `bijzonderhedenwerk`, `bezetting`, `techniekvisuals`, `lichtwensen`, `versterkt`, `pdf`, `copyof`, `copyitem`, `checksum`, `del`) VALUES
(1, 1, 5, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '8bf3a4956aa7e88cacab0d9a9e47b6ab', 'ba302713ad938da49272e5d9cfba4032', 0),
(2, 1, 31, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'fdf0b3f352f660854bbece4481bb2ab6', 'cc83be779f3cbdb49996c49d786be5cb', 0),
(3, 1, 31, 0, 0, 0, 2, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'ce832a39ba984219ee8dffa6002c205b', '99a649acef1e567ccd406119fb5b3371', 0),
(4, 1, 31, 0, 0, 0, 3, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'bb9351e04f98288a392a0baae7dffcd0', '9019e845a760a14ef8ee88c7ea038421', 0),
(5, 1, 31, 0, 0, 0, 4, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'ebb023ca848769d3b4a87a5dd415ede2', 'b003cc0be34f03bb07754db1ffd3081c', 0),
(6, 1, 31, 0, 0, 0, 5, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'ec2abc58148ee5854fede8114a621e1a', '1f9f981f8684bfbe2d4394c765c415fe', 0),
(7, 1, 31, 0, 0, 0, 6, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '279c083d79bdc100216e7405129524db', '90d1f0fabab265fda27728cd41945d12', 0),
(8, 1, 31, 0, 0, 0, 7, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '4a290d5df28eec693e0884f024e6c8f9', '20308aeecb3791ae76c799c75c4bf825', 0),
(9, 1, 31, 0, 0, 0, 8, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '0f3e534754d5008665512ab1571d6969', '7ed8f34012a6f47220631ef606b1b121', 0),
(10, 1, 31, 0, 0, 0, 8, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'b96aea132059ddca8d7b18ae48c82d5e', '896ad1de4c9741c1a660d4d2d1c51421', 0),
(11, 1, 31, 0, 0, 0, 9, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'cb9b1cf6d869e314d8451a170e0b6dc7', '325be6c6b0cfd97fc1d1d40995fc47b9', 0),
(12, 1, 31, 0, 0, 0, 10, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'f7705cbaf97ccd694524ddd1508ecea8', 'aa76b31dc6c16f52c7132ed36ec38a26', 0),
(13, 1, 31, 0, 0, 0, 11, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'e630d87423fcfb3bc7877ef7d077fa51', '87f026b526cbffb6bbaad1af765c92f1', 0),
(14, 1, 31, 0, 0, 0, 12, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'f50316e832dc26369279b65374bb512a', '4e175525eaeed84b3f42671cb26ff17e', 0),
(15, 1, 31, 0, 0, 0, 13, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '72e5d96f0d11814a8e531c5e021cbe2c', 'ee66b56dc8c49f61f6b8e90458af12ab', 0),
(16, 1, 6, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'c01d45155b851a3f43b4a50b768b7ce2', 'f85d563b66c3c7aa3e61569ef3b5369b', 0),
(17, 1, 6, 0, 0, 0, 2, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '6a7b81852ee53eb4695097d706457586', 'e82dc398b076a45d4e66cc38e859a0e8', 0),
(18, 1, 6, 0, 0, 0, 3, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '9921540128667fe6fe90c17fa55845ce', 'e9910a447a400263b55c70aca6f54d0e', 0),
(19, 1, 6, 0, 0, 0, 4, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '14bc3fc997d79b12fa4e559e2609eeab', 'd1dea20baad662beb8c52f22b9ae8f84', 0),
(20, 1, 6, 0, 0, 0, 5, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '9b35c24aa63c482fb7e440d2133f7a24', 'e35b486a7b03929c3e9b60d8951235af', 0),
(21, 1, 4, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'c26b02be76b633d7aa586b22e40fdb3c', 'e757e1641ee6295639e6f24182c26c4c', 0),
(22, 1, 4, 0, 0, 0, 2, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'e500abfe6227b1ff4f3b1cf848aab523', 'f5177fb00a209abb91798ee90f5633d7', 0),
(23, 1, 4, 0, 0, 0, 3, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '0c7a379d060f83566c44dadef59275e7', 'c232abfeb9cd07108fd8db486b4923cb', 0),
(24, 1, 4, 0, 0, 0, 4, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'f9a6b6e4bf30b457a84bd26d4559e638', '9a6a537bd1a64c90b291bbf4f5c3f90b', 0),
(25, 1, 4, 0, 0, 0, 5, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '1f9c5fd9dc1bc13b206a2e4f3e014a3f', '21af25948806005cb52d777203686584', 0),
(26, 1, 36, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'ba41120677b31678ca1a7c374cdb42fe', 'c80f6489510ab55275886f10e475471b', 0),
(27, 1, 36, 0, 0, 0, 2, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '43eea08079196ea84be4b569900ad5ba', '1d1fe26cb9e5ef5fd823bbff5b9a2530', 0),
(28, 1, 36, 0, 0, 0, 4, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '4086cb4da22e0c51b281d0cb42899852', '2f38b5372634b55aa84f7763bce17fd6', 0),
(29, 1, 36, 0, 0, 0, 5, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '2fa10c5c46fc61d24f49108323300c96', '6b5678d0f73b063fb1afc279e3e9112b', 0),
(30, 1, 36, 0, 0, 0, 7, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '8faf0ac7c632febbd5eab3d42a92b6e7', '33b27404f4bdc21dd7361fdd5e822e28', 0),
(31, 1, 36, 0, 0, 0, 6, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '166daa0f205ba6f936a8176862621c7b', '190970795779f7f7410d1556a33a91b6', 0),
(32, 1, 36, 0, 0, 0, 3, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'f8ce7def420891460461fbcf0cae8c1a', '84a6007c6b521321126b26ef7c500090', 0),
(33, 1, 47, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '5f47f8c910a4e0533f908027eee1c2d9', '401b732ad333e8bdffe538f533c5e314', 0),
(34, 1, 49, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '0e83b283b159675383d93cf884f85d94', '4e734a5e8a67c9e779cd3b7991424475', 0),
(35, 1, 50, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '5e592e525872268d9f02577dcccad35e', '0fdf2a581074fd25dbd9cd9ed0ae6ec5', 0),
(36, 1, 67, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, 'd1386c2dada9063b859481c2884aa23d', '57f3a438d296d90095f977713e0a50b2', 0),
(37, 1, 71, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '209953a6d638d4e3c42141b0202b8bb1', 'a003aa2139c355102ec895589164846c', 0),
(38, 1, 94, 0, 0, 0, 1, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '2ae57f29feff16e13c55fff0dc4f10cc', '0ef18ed5ea3daac57a18cbaa38c7cc06', 0),
(39, 1, 94, 0, 0, 0, 2, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '187fe720442022727be65d96ca12a744', '0f12f22d3f3ec715dce0c40556f10644', 0),
(40, 1, 94, 0, 0, 0, 3, 'Componistnaam', '1185923831', '1054048717', '424547657', '1856305551', NULL, NULL, NULL, 0, 0, '4f5db3b3d027acfba0dab3b62e7ea364', 'ee986f73a0bbfb9c5e22bd4ef14a6c78', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_contactpersonen`
--

DROP TABLE IF EXISTS `custom_contactpersonen`;
CREATE TABLE `custom_contactpersonen` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `organisatieid` int(11) NOT NULL,
  `aanbodid` int(11) NOT NULL,
  `soortcontactpersoon` int(11) NOT NULL,
  `medewerker` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `organisatie` int(11) NOT NULL,
  `aanbod` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `adres` varchar(150) NOT NULL,
  `postcode` varchar(150) NOT NULL,
  `plaats` varchar(150) NOT NULL,
  `telefoon` varchar(150) NOT NULL,
  `mobiel` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `functie` varchar(150) NOT NULL,
  `opmerkingen` text NOT NULL,
  `del` int(3) NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_contactpersonen`
--

INSERT INTO `custom_contactpersonen` (`id`, `festivalevent`, `event`, `persoonid`, `vrijwilligerid`, `podiaid`, `organisatieid`, `aanbodid`, `soortcontactpersoon`, `medewerker`, `vrijwilliger`, `persoon`, `podia`, `organisatie`, `aanbod`, `naam`, `adres`, `postcode`, `plaats`, `telefoon`, `mobiel`, `email`, `functie`, `opmerkingen`, `del`, `copyof`, `copyitem`) VALUES
(1, 0, 3, 0, 0, 0, 0, 0, 5, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '8037b5a3d6596e4932549cca3f9dce72'),
(2, 0, 5, 0, 0, 0, 0, 0, 5, 0, 0, 3, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '631ffd583443586a2f6ee6371b728b6b'),
(3, 0, 5, 0, 0, 0, 0, 0, 5, 0, 0, 4, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '8744a4d4954774e7ff6c72c337ed8a3d'),
(4, 0, 21, 0, 0, 0, 0, 0, 5, 0, 0, 5, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '5b88a84d2c7878e1ab9b3994b9bfabdc'),
(5, 0, 26, 0, 0, 0, 0, 0, 5, 0, 0, 6, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '722a6352b63826ad36118627adc445f1'),
(6, 0, 0, 0, 0, 19, 0, 0, 5, 0, 0, 7, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '1f63d6d953b4c84650cca1e8ce5535ee'),
(7, 0, 32, 0, 0, 0, 0, 0, 5, 0, 0, 9, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '07647d6bbcc420058913c6a47b00e1d4'),
(8, 0, 32, 0, 0, 0, 0, 0, 5, 0, 0, 10, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '9d3e7f4de1238fdd04f2f78f761c50b3'),
(9, 0, 8, 0, 0, 0, 0, 0, 5, 0, 0, 12, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'f06d14c2fc631350f84b5d4b69f07237'),
(10, 0, 6, 0, 0, 0, 0, 0, 5, 0, 0, 13, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '19747b2031be5a1e84571aac40ba4145'),
(11, 0, 1, 0, 0, 0, 0, 0, 5, 0, 0, 14, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '1739fb6648e961d4c339c863715fe624'),
(12, 0, 4, 0, 0, 0, 0, 0, 5, 0, 0, 15, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'fcca5a2b32a2b0eb9a01a89340d34a8a'),
(13, 0, 12, 0, 0, 0, 0, 0, 5, 0, 0, 16, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '0350ec4363cce1be3086a18fa446035d'),
(14, 0, 10, 0, 0, 0, 0, 0, 5, 0, 0, 20, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '95a7be7fd98e8ddac854ac37dc58ae14'),
(15, 0, 11, 0, 0, 0, 0, 0, 5, 0, 0, 18, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '9be2f3856a91ab10b17d5501efeedb7f'),
(16, 0, 14, 0, 0, 0, 0, 0, 5, 0, 0, 22, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '5e69d874b8eef75590046e31098f9dd1'),
(17, 0, 13, 0, 0, 0, 0, 0, 5, 0, 0, 22, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '36a4d269693c814697b52f8ec418fe87'),
(18, 0, 34, 0, 0, 0, 0, 0, 5, 0, 0, 23, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '2e3ad13286fa015edb19c595dda26bdc'),
(19, 0, 35, 0, 0, 0, 0, 0, 5, 0, 0, 18, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'b19989c9b87d014e7bb277c7b3500ca7'),
(20, 0, 36, 0, 0, 0, 0, 0, 5, 0, 0, 24, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'c9662bdc3931344d033dc4712be1f073'),
(21, 0, 19, 0, 0, 0, 0, 0, 5, 0, 0, 25, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '9f9f816135df369c2cc1d2d0fe3f95e0'),
(22, 0, 20, 0, 0, 0, 0, 0, 5, 0, 0, 26, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '501df383a86bdf461cac7d7059535056'),
(23, 0, 38, 0, 0, 0, 0, 0, 5, 0, 0, 27, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'f78e603c563017aead84498cba142d03'),
(24, 0, 39, 0, 0, 0, 0, 0, 5, 0, 0, 28, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '10946d268e7db8cbc1fcbfc8418440bf'),
(25, 0, 40, 0, 0, 0, 0, 0, 5, 0, 0, 29, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '55ed70a891cd3533b1138b33109e8480'),
(26, 0, 43, 0, 0, 0, 0, 0, 5, 0, 0, 30, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '0e386a08fc7430eca476e96f75aac181'),
(27, 0, 0, 0, 0, 14, 0, 0, 5, 0, 0, 31, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '8dbb2b1ef039a4e7775324755a59432d'),
(28, 0, 45, 0, 0, 0, 0, 0, 5, 0, 0, 30, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '56c45bae048f1202b83f7c28643f8afc'),
(29, 0, 37, 0, 0, 0, 0, 0, 5, 0, 0, 32, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'c776e223d9dae5e14311b67513247e91'),
(30, 0, 37, 0, 0, 0, 0, 0, 5, 0, 0, 33, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'd500a0a811bb89c6eed59121a8196534'),
(31, 0, 31, 0, 0, 0, 0, 0, 5, 0, 0, 34, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '7b1147c377c532d416e90f57fcc96278'),
(32, 0, 30, 0, 0, 0, 0, 0, 5, 0, 0, 35, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'e49cd81630ba411bf6c0dbccd3afaf99'),
(33, 0, 47, 0, 0, 0, 0, 0, 5, 0, 0, 36, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '0121545ee3b8ec66344d80668bde670d'),
(34, 0, 48, 0, 0, 0, 0, 0, 5, 0, 0, 37, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'e5a40f404de205738da92daba67714c7'),
(35, 0, 49, 0, 0, 0, 0, 0, 5, 0, 0, 38, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '271eab75181a848da13be93a6bf67e5d'),
(36, 0, 50, 0, 0, 0, 0, 0, 5, 0, 0, 39, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'd49b0f4470150a7abbdd12d5c8e67421'),
(37, 0, 56, 0, 0, 0, 0, 0, 5, 0, 0, 26, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '046605e682294ecbe0bad5fdee6442be'),
(38, 0, 59, 0, 0, 0, 0, 0, 5, 0, 0, 40, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'fdaa3793d5bfca64201f9f4caf4d5204'),
(39, 0, 61, 0, 0, 0, 0, 0, 5, 0, 0, 41, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '2768200a7bf922503ef95758f6e3926a'),
(40, 0, 67, 0, 0, 0, 0, 0, 5, 0, 0, 42, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'dddba917788cce373a246ac5c8bf33cb'),
(41, 0, 0, 0, 0, 13, 0, 0, 5, 0, 0, 43, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '0b58a0df9816c203ae745673736f3210'),
(42, 0, 71, 0, 0, 0, 0, 0, 5, 0, 0, 44, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'eee9cc89e91aa6215d3212c3b8c81a39'),
(43, 0, 0, 0, 0, 18, 0, 0, 5, 0, 0, 45, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '1baf70498065bab55ef0941592a77a44'),
(44, 0, 0, 0, 0, 17, 0, 0, 5, 0, 0, 49, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '210d53008117b7008333843c7091aba8'),
(45, 0, 0, 0, 0, 17, 0, 0, 5, 0, 0, 46, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '43420868638bf80a192d4ca0fd413205'),
(46, 0, 0, 0, 0, 17, 0, 0, 5, 0, 0, 50, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '83d1bb380f69ce760d62979c5e281717'),
(47, 0, 0, 0, 0, 18, 0, 0, 5, 0, 0, 45, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', -1, 0, 'b419ea18c34b106e8ea06214a97e2c9d'),
(48, 0, 0, 0, 0, 18, 0, 0, 5, 0, 0, 49, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', -1, 0, '5d0d5d3db079fd8d7b3a56d0b08cedb3'),
(49, 0, 70, 0, 0, 0, 0, 0, 5, 0, 0, 51, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'f21acccee1d12644d7a272a9d9769914'),
(50, 0, 74, 0, 0, 0, 0, 0, 5, 0, 0, 52, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '3a2ed059fac9e5166b954b8ffd655823'),
(51, 0, 0, 0, 0, 7, 0, 0, 5, 0, 0, 54, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'e6fc2e1a40c7736b0bfcaf6331e05c16'),
(52, 0, 0, 0, 0, 3, 0, 0, 5, 0, 0, 54, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '01f37c4b57e4f4405dcdb6248eb5e854'),
(53, 0, 0, 0, 0, 18, 0, 0, 5, 0, 0, 46, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '8d0bfbfe3c364b804bcdbe065362267b'),
(54, 0, 0, 0, 0, 18, 0, 0, 5, 0, 0, 50, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'd5a8619e9daa9305f925760bf61d6231'),
(55, 0, 82, 0, 0, 0, 0, 0, 5, 0, 0, 58, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '0c1ff818283cb5f4a615faa95801c302'),
(56, 0, 92, 0, 0, 0, 0, 0, 5, 0, 0, 65, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '27b3d6d7f3b42f558ea42eac352a94ec'),
(57, 0, 93, 0, 0, 0, 0, 0, 5, 0, 0, 66, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'fcaf0b736557415a8789daed235af8b2'),
(58, 0, 41, 0, 0, 0, 0, 0, 5, 0, 0, 18, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '02327497aae762c50bd2b022e0d4915c'),
(59, 0, 94, 0, 0, 0, 0, 0, 5, 0, 0, 67, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'e2b2f2d39fb6ce3d90e6fc56cb59402c'),
(60, 0, 0, 0, 0, 8, 0, 0, 5, 0, 0, 68, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'a2385c99ec5a27f23056d70c73cf749e'),
(61, 0, 0, 0, 0, 6, 0, 0, 5, 0, 0, 69, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '8a773ac49d94248e39498007324ae20f'),
(62, 0, 0, 0, 0, 6, 0, 0, 5, 0, 0, 70, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '02d55f51f218c39fb0b098442a190c9f'),
(63, 0, 0, 0, 0, 6, 0, 0, 5, 0, 0, 71, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'b8e7640172e7036a8f57695e841f7f00'),
(64, 0, 37, 0, 0, 0, 0, 0, 5, 0, 0, 72, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'd47628ebc4166d165d8f811797eba58a'),
(65, 0, 37, 0, 0, 0, 0, 0, 5, 0, 0, 73, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, '62b83e57469e3a8e9c604508e9d30c20'),
(66, 0, 0, 0, 0, 26, 0, 0, 5, 0, 0, 19, 0, 0, 0, '', '', '', '', '', '', '', 'Functie', '', 0, 0, 'ba26f40f88d711fc55afe62394a26aba');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_defaultacties`
--

DROP TABLE IF EXISTS `custom_defaultacties`;
CREATE TABLE `custom_defaultacties` (
  `id` int(11) NOT NULL,
  `actie` text NOT NULL,
  `groep` varchar(150) NOT NULL,
  `categorie` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_diensten`
--

DROP TABLE IF EXISTS `custom_diensten`;
CREATE TABLE `custom_diensten` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL DEFAULT '0',
  `persoon` int(11) NOT NULL DEFAULT '0',
  `vrijwilliger` int(11) NOT NULL DEFAULT '0',
  `podia` int(11) NOT NULL DEFAULT '0',
  `betreft` int(11) NOT NULL DEFAULT '0',
  `tabblad` int(11) NOT NULL DEFAULT '0',
  `benodigdheidfaciliteit` int(3) NOT NULL DEFAULT '0',
  `specifiek` text,
  `dienst` int(11) NOT NULL DEFAULT '0',
  `van` date NOT NULL DEFAULT '1970-01-01',
  `tm` date NOT NULL DEFAULT '1970-01-01',
  `aantal` int(11) NOT NULL DEFAULT '0',
  `opmerkingen` text,
  `contractopmerkingen` text,
  `relatie` int(11) NOT NULL DEFAULT '0',
  `leveringdatum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `leveringlocatie` int(11) NOT NULL DEFAULT '0',
  `ophalendatum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `ophalenlocatie` int(11) NOT NULL DEFAULT '0',
  `planningsstatus` int(11) NOT NULL DEFAULT '0',
  `copyof` int(11) NOT NULL DEFAULT '0',
  `copyitem` varchar(150) DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_diensten`
--

INSERT INTO `custom_diensten` (`id`, `festivalevent`, `event`, `persoon`, `vrijwilliger`, `podia`, `betreft`, `tabblad`, `benodigdheidfaciliteit`, `specifiek`, `dienst`, `van`, `tm`, `aantal`, `opmerkingen`, `contractopmerkingen`, `relatie`, `leveringdatum`, `leveringlocatie`, `ophalendatum`, `ophalenlocatie`, `planningsstatus`, `copyof`, `copyitem`, `del`) VALUES
(1, 1, 3, 0, 0, 0, 0, 0, -1, '1185923831', 1, '2021-10-02', '2021-10-02', 1, '', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '0cadf3318f73ca26b7782c366d4ae037', -1),
(2, 1, 5, 0, 0, 0, 0, 0, -1, '1185923831', 3, '2021-10-02', '2021-10-02', 1, '', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '04b93062990485ddb81a2387cb05a415', 0),
(3, 1, 5, 0, 0, 0, 0, 0, -1, '1185923831', 4, '2021-10-02', '2021-10-02', 2, '', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '15bce31fbe71b73c2b1913379dda2f38', 0),
(4, 1, 21, 0, 0, 0, 0, 0, -1, '1185923831', 5, '2021-10-10', '2021-10-10', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '74ef2cf21aeb43175dc387fa09ae0ab8', 0),
(5, 1, 21, 0, 0, 0, 0, 0, -1, '1185923831', 6, '2021-10-10', '2021-10-10', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '2640573f152bfc0daa3365e2e92810c8', 0),
(6, 1, 26, 0, 0, 0, 0, 0, 0, '1185923831', 1, '2021-10-10', '2021-10-10', 3, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 3, 0, 'f440a463a66ed4945bb55688a0355aaa', 0),
(7, 1, 26, 0, 0, 0, 0, 0, 0, '1185923831', 7, '2021-10-10', '2021-10-10', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 3, 0, '76d52d0c26ef84e0562f55b69e6488a0', 0),
(8, 1, 29, 0, 0, 0, 0, 0, -1, '1185923831', 8, '2021-10-08', '2021-10-08', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'b372c4be9753b021714396ef39368a3e', 0),
(9, 1, 30, 0, 0, 0, 0, 0, -1, '1185923831', 9, '2021-10-08', '2021-10-08', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '20bf009058f3cb397aa712925044311b', 0),
(10, 1, 30, 0, 0, 0, 0, 0, -1, '1185923831', 10, '2021-10-08', '2021-10-08', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '4a8d63b19c50de6c5d71bbcc6b7cc001', 0),
(11, 1, 31, 0, 0, 0, 0, 0, -1, '1185923831', 8, '2021-10-08', '2021-10-08', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '6e12e4a0795b0fd7cb74f986116c3038', 0),
(12, 1, 32, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-08', '2021-10-08', 1, '', NULL, 11, '2021-10-08 14:00:00', 11, '2021-10-08 22:00:00', 11, 4, 0, 'cbfabb9025bc05c97a4bf26c6acc9079', 0),
(13, 1, 3, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-02', '2021-10-02', 1, '', NULL, 75, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, '9643e0a1a75a3eb93a106ffed6a3416f', 0),
(14, 1, 3, 0, 0, 0, 0, 0, 0, '1185923831', 13, '2021-10-02', '2021-10-02', 3, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, '6baf633268f92c6fedbad86f244b7dde', 0),
(15, 1, 3, 0, 0, 0, 0, 0, -1, '1185923831', 13, '2021-10-02', '2021-10-02', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'fc18a54eb54c6934b4d9f93d6d9610b6', -1),
(16, 1, 3, 0, 0, 0, 0, 0, -1, '1185923831', 14, '2021-10-02', '2021-10-02', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'e3725b0d1675bdde72c88102c518ab72', 0),
(17, 1, 4, 0, 0, 0, 0, 0, -1, '1185923831', 15, '2021-10-02', '2021-10-02', 4, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '9a0dc57d19d47e955681d41781ced86c', 0),
(18, 1, 10, 0, 0, 0, 0, 0, -1, '1185923831', 15, '2021-10-03', '2021-10-03', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'bd4cd813fd6644461489a690f341b897', 0),
(19, 1, 12, 0, 0, 0, 0, 0, -1, '1185923831', 16, '2021-10-03', '2021-10-03', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '7a56fac62deafdb4d1baef5377f7588b', 0),
(20, 1, 14, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-04', '2021-10-04', 1, '', NULL, 11, '2021-10-04 17:00:00', 9, '2021-10-04 21:30:00', 9, 4, 0, 'a980376d035efaa4d2bda83c0cbe620a', 0),
(21, 1, 14, 0, 0, 0, 0, 0, -1, '1185923831', 17, '2021-10-04', '2021-10-04', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '746c21a1cdada60f777d80eecd13323e', 0),
(22, 1, 34, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-05', '2021-10-05', 1, '', NULL, 75, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, 'ddf9040b8e0449330428fcc3b6e102b4', 0),
(23, 1, 34, 0, 0, 0, 0, 0, -1, '1185923831', 18, '2021-10-05', '2021-10-05', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '06ee01f94af46ef3685f4a93df26b730', 0),
(24, 1, 34, 0, 0, 0, 0, 0, 0, '1185923831', 19, '2021-10-05', '2021-10-05', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, '69099c0094b3d3d8f11edb5537d62cfa', 0),
(25, 1, 36, 0, 0, 0, 0, 0, 0, '1185923831', 15, '2021-10-07', '2021-10-07', 4, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, '8a8cb2a3fa7278fe0363dfc5d8e4fa84', 0),
(26, 1, 36, 0, 0, 0, 0, 0, 0, '1185923831', 20, '2021-10-07', '2021-10-07', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, 'd8c22cf07867608df051604b235dbda2', 0),
(27, 1, 19, 0, 0, 0, 0, 0, 0, '1185923831', 21, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, '639c1f2faa9b94a368680d10006d8b45', 0),
(28, 1, 19, 0, 0, 0, 0, 0, 0, '1185923831', 19, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, '80d2b26ecfbe841d9bcbda2905d0e800', 0),
(29, 1, 37, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-10', '2021-10-10', 1, '', NULL, 11, '2021-10-10 10:30:00', 11, '2021-10-10 18:30:00', 11, 4, 0, '6065bc541d825d1dfc8624428e29aeb2', 0),
(30, 1, 5, 0, 0, 0, 0, 0, 0, '1185923831', 22, '2021-10-02', '2021-10-02', 1, '', NULL, 11, '2021-10-02 10:30:00', 3, '2021-10-02 16:00:00', 3, 4, 0, 'aa35ede28a59b790fdebbbf01dfa3ee9', 0),
(31, 1, 3, 0, 0, 0, 0, 0, 0, '1185923831', 21, '2021-10-02', '2021-10-02', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '25fa76e744fdd31685364b6cfb952840', 0),
(32, 1, 20, 0, 0, 0, 0, 0, -1, '1185923831', 9, '2021-10-09', '2021-10-09', 70, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '40abde07fa4577e5e058fc34da42a052', 0),
(33, 1, 20, 0, 0, 0, 0, 0, -1, '1185923831', 13, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'a7bb2682e6858a0c3b0305beee3e8b90', 0),
(34, 1, 20, 0, 0, 0, 0, 0, -1, '1185923831', 10, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, '16381c1a1717120730295e4322e6c116', 0),
(35, 1, 20, 0, 0, 0, 0, 0, -1, '1185923831', 14, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '15310eed1d6622bfd99c47a7c20da9db', 0),
(36, 1, 38, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-09', '2021-10-09', 1, '', NULL, 11, '2021-10-09 15:00:00', 11, '2021-10-09 18:30:00', 11, 4, 0, '790bc0b9c8ef816e2471c42964f90b01', 0),
(37, 1, 39, 0, 0, 0, 0, 0, -1, '1185923831', 19, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'a59a66fa34f93ffa4217b52c0f247550', 0),
(38, 1, 43, 0, 0, 0, 0, 0, -1, '1185923831', 23, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '165cd2a43a8ecb48526481dfa4a8be76', 0),
(39, 1, 43, 0, 0, 0, 0, 0, -1, '1185923831', 3, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'd4e61ee994f522781d37968c43a9b254', 0),
(40, 1, 43, 0, 0, 0, 0, 0, -1, '1185923831', 24, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '0a9514d03d436fad9b35b422be8d7b1d', 0),
(41, 1, 48, 0, 0, 0, 0, 0, -1, '1185923831', 25, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '87c625c73271f9227e2d6f0c6db0b1fb', 0),
(42, 1, 56, 0, 0, 0, 0, 0, -1, '1185923831', 26, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '7be75c33e0771ff2d9c7dd260c295768', 0),
(43, 1, 56, 0, 0, 0, 0, 0, -1, '1185923831', 13, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, 0, 0, 'e43a40a14fea63ca5e52fd41f669fa47', 0),
(44, 1, 61, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-10', '2021-10-10', 1, '', NULL, 11, '2021-10-10 10:30:00', 11, '2021-10-10 18:30:00', 11, 4, 0, '5cd3ada1e3c55edcf845b83a0739f44d', 0),
(45, 1, 67, 0, 0, 0, 0, 0, -1, '1185923831', 17, '2021-10-10', '2021-10-10', 5, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '1988e5ac991716b808fb0ee017be55ba', 0),
(46, 1, 71, 0, 0, 0, 0, 0, -1, '1185923831', 27, '2021-10-10', '2021-10-10', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '149910c545648f316c30088e07130e13', 0),
(47, 1, 71, 0, 0, 0, 0, 0, 0, '1185923831', 28, '2021-10-10', '2021-10-10', 4, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 3, 0, '0ced39887de8f4e1057dfbdca6cd69ce', -1),
(48, 1, 10, 0, 0, 0, 0, 0, -1, '1185923831', 19, '2021-10-03', '2021-10-03', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'c6a9c9068d2dfab0805f298ec2de7046', 0),
(49, 1, 10, 0, 0, 0, 0, 0, 0, '1185923831', 29, '2021-10-03', '2021-10-03', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, '5575b00b87f8e9053cc8c8f7ccd9102f', 0),
(50, 1, 10, 0, 0, 0, 0, 0, 0, '1185923831', 30, '2021-10-03', '2021-10-03', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 3, 0, 'afbc4ffc7398ef34dc0dfd34e430d178', -1),
(51, 1, 10, 0, 0, 0, 0, 0, 0, '1185923831', 30, '2021-10-03', '2021-10-03', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 3, 0, '0385f17032ac9aee99d46b7bed8de1c9', 0),
(52, 1, 70, 0, 0, 0, 0, 0, 0, '1185923831', 31, '2021-10-10', '2021-10-10', 1, '', NULL, 45, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, '3917756426b173690f0e17ed8e69f97d', 0),
(53, 1, 70, 0, 0, 0, 0, 0, 0, '1185923831', 32, '2021-10-10', '2021-10-10', 1, '', NULL, 45, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, 'a3432a9b2b69ad87688fc132dab181a0', 0),
(54, 1, 74, 0, 0, 0, 0, 0, -1, '1185923831', 9, '2021-10-09', '2021-10-09', 3, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '1642c2989ecc142c682534c89a834fbe', 0),
(55, 1, 47, 0, 0, 0, 0, 0, 0, '1185923831', 33, '2021-10-09', '2021-10-09', 2, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 1, 0, '4d6294811aa08f853eb56a000c7f8e23', 0),
(56, 1, 94, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-09', '2021-10-09', 1, '', NULL, 11, '2021-10-09 13:30:00', 9, '2021-10-09 17:00:00', 9, 4, 0, '42b7bfba440714586567e499401b0c19', 0),
(57, 1, 95, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-09', '2021-10-09', 1, '', NULL, 75, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, 'e42f03989d468834a93a75ed74f166ff', 0),
(58, 1, 92, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-09', '2021-10-09', 1, '', NULL, 75, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, '20e3421d4531052fdecddfb689e14cbf', 0),
(59, 1, 31, 0, 0, 0, 0, 0, 0, '1185923831', 8, '2021-10-08', '2021-10-08', 2, '', NULL, 8, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 3, 0, 'ea732894d7319bcd6a99399346bdf43c', 0),
(60, 1, 31, 0, 0, 0, 0, 0, 0, '1185923831', 12, '2021-10-08', '2021-10-08', 1, '', NULL, 11, '2021-10-08 14:00:00', 11, '2021-10-08 22:00:00', 11, 4, 0, '5c23f5869b2d536ea6fc2df3f47143de', 0),
(61, 1, 32, 0, 0, 0, 0, 0, -1, '1185923831', 8, '2021-10-08', '2021-10-08', 2, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '7c8e41742664ab0a2960e40782bf4aa9', 0),
(62, 1, 32, 0, 0, 0, 0, 0, 0, '1185923831', 11, '2021-10-08', '2021-10-08', 3, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, '5cbdcda049ffe6919de23b86f6ad2d8d', 0),
(63, 1, 31, 0, 0, 0, 0, 0, 0, '1185923831', 11, '2021-10-08', '2021-10-08', 4, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 4, 0, 'a09c8c64b8dee0579fe222ad715d9329', 0),
(64, 1, 61, 0, 0, 0, 0, 0, -1, '1185923831', 26, '2021-10-10', '2021-10-10', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '9a4fa1a24f31f806ebaabb1552dc5669', 0),
(65, 1, 61, 0, 0, 0, 0, 0, -1, '1185923831', 13, '2021-10-10', '2021-10-10', 1, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, 'ad5ab268d5dba90972cbe3bc6918b8ac', 0),
(66, 1, 94, 0, 0, 0, 0, 0, 0, '1185923831', 35, '2021-10-09', '2021-10-09', 1, '', NULL, 0, '2021-10-08 15:00:00', 9, '2021-10-09 16:30:00', 9, 4, 0, '91279b7305e90ba82a5ef4f96ff9ef6a', 0),
(67, 1, 4, 0, 0, 0, 0, 0, -1, '', 36, '2021-10-02', '2021-10-02', 10, '', NULL, 0, '1970-01-01 00:00:00', 0, '1970-01-01 00:00:00', 0, 0, 0, '64b4cec67b85625dceb6d225d30150e6', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_doelgroepen`
--

DROP TABLE IF EXISTS `custom_doelgroepen`;
CREATE TABLE `custom_doelgroepen` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `doelgroep` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_donatie`
--

DROP TABLE IF EXISTS `custom_donatie`;
CREATE TABLE `custom_donatie` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL DEFAULT '0',
  `persoonid` int(11) NOT NULL DEFAULT '0',
  `vrijwilligerid` int(11) NOT NULL DEFAULT '0',
  `podiaid` int(11) NOT NULL DEFAULT '0',
  `aanmelding` datetime DEFAULT NULL,
  `bedrag` float(7,2) NOT NULL DEFAULT '0.00',
  `permaandjaar` int(3) NOT NULL DEFAULT '0',
  `rekeninghouder` varchar(150) DEFAULT NULL,
  `bic` varchar(150) DEFAULT NULL,
  `iban` varchar(150) DEFAULT NULL,
  `machtigingsnummer` varchar(150) DEFAULT NULL,
  `datummachtiging` date DEFAULT NULL,
  `opgezegd` int(3) NOT NULL DEFAULT '0',
  `opgezegddatum` date DEFAULT NULL,
  `redenopzegging` text,
  `opmerkingen` text,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_evaluatie`
--

DROP TABLE IF EXISTS `custom_evaluatie`;
CREATE TABLE `custom_evaluatie` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `bevinding` text NOT NULL,
  `oorzaak` text NOT NULL,
  `maatregel` text NOT NULL,
  `datum` datetime NOT NULL,
  `medewerker` int(11) NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_favorieten`
--

DROP TABLE IF EXISTS `custom_favorieten`;
CREATE TABLE `custom_favorieten` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `aanbodid` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_financieel`
--

DROP TABLE IF EXISTS `custom_financieel`;
CREATE TABLE `custom_financieel` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `podia` int(11) NOT NULL,
  `betreft` int(11) NOT NULL,
  `specifiek` text NOT NULL,
  `categorie` int(11) NOT NULL,
  `pdf` int(11) NOT NULL,
  `bedragexclbtw` varchar(150) NOT NULL,
  `bedragbtw` varchar(150) NOT NULL,
  `bedraginclbtw` varchar(150) NOT NULL,
  `opmerkingen` text NOT NULL,
  `status` int(11) NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_financieel`
--

INSERT INTO `custom_financieel` (`id`, `festivalevent`, `event`, `persoon`, `vrijwilliger`, `podia`, `betreft`, `specifiek`, `categorie`, `pdf`, `bedragexclbtw`, `bedragbtw`, `bedraginclbtw`, `opmerkingen`, `status`, `copyof`, `copyitem`, `checksum`, `del`) VALUES
(1, 1, 6, 0, 0, 0, 0, '1185923831', 1, 2, '', '', '100', '424547657', 0, 0, 'b3a735f476cd356d74c9b10f33b86933', '9e9e9744074cd7b0f96cfbbd34eaadca', 0),
(2, 1, 3, 0, 0, 0, 0, '1185923831', 1, 17, '', '', '100', '424547657', 0, 0, '5600afe522d8e206783eb24bf24f9cc2', 'cda07dadac337d3bbffcb6712356e85e', 0),
(3, 1, 4, 0, 0, 0, 0, '', 1, 17, '0', '0', '100', '', 0, 0, 'd17c47101ea100fbcda033f30b2f04d7', '2afa8264dbf4a701620909aad166d24b', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_fotos`
--

DROP TABLE IF EXISTS `custom_fotos`;
CREATE TABLE `custom_fotos` (
  `id` int(11) NOT NULL,
  `thema` int(11) NOT NULL,
  `antwoord` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_gasten`
--

DROP TABLE IF EXISTS `custom_gasten`;
CREATE TABLE `custom_gasten` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `gastenlijst` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `gasttype` int(11) NOT NULL,
  `aantalpersonen` int(3) NOT NULL,
  `datumtoegevoegd` datetime NOT NULL,
  `toegevoegdviaportaal` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_hotel`
--

DROP TABLE IF EXISTS `custom_hotel`;
CREATE TABLE `custom_hotel` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `locatie` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `uitcheckdatum` datetime NOT NULL,
  `aantal` int(3) NOT NULL,
  `opmerkingen` text NOT NULL,
  `aanpasbaardoor` int(11) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `custom_hotel`
--

INSERT INTO `custom_hotel` (`id`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `locatie`, `datum`, `uitcheckdatum`, `aantal`, `opmerkingen`, `aanpasbaardoor`, `checksum`, `del`) VALUES
(1, 26, 0, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '56489219-B035-4319-9B73-18CACA335AD8', 0),
(2, 29, 0, 0, 0, 20, '2021-10-05 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '2D4443F2-CA0D-4189-BBB6-895E1D92DCFC', 0),
(3, 30, 0, 0, 0, 0, '2021-10-06 00:00:00', '2021-10-08 00:00:00', 1, '', 0, '229334D6-D7F3-4F05-89F2-08D4AE08D68F', -1),
(4, 0, 53, 0, 0, 20, '2021-10-07 00:00:00', '2021-10-08 00:00:00', 1, '', 0, '756C3413-6BA7-428A-B37B-95155E48388F', 0),
(5, 0, 55, 0, 0, 20, '2021-10-06 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '477AD9D9-6124-43DC-8D1D-0C12E3C6060A', 0),
(6, 30, 0, 0, 0, 20, '2021-10-05 00:00:00', '2021-10-08 00:00:00', 1, '', 0, '56561522-7445-41C4-9E74-931E3C67845F', 0),
(7, 0, 0, 97, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, 'FF3D5ED9-5003-4732-A717-66FDAAA0CCC9', -1),
(8, 0, 56, 0, 0, 20, '2021-10-07 00:00:00', '2021-10-10 00:00:00', 1, '', 0, 'A6E4267C-E4C8-4FF7-923F-AAAEF0EC1217', 0),
(9, 0, 57, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-09 00:00:00', 1, '', 0, 'C4A2A456-152D-4D00-9001-5F9893CCD15D', 0),
(10, 0, 0, 51, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '14C66EC5-6AC7-42F4-8E35-776832A1520E', -1),
(11, 0, 0, 16, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '2AAC9729-9154-490F-848D-A35B48446D66', -1),
(12, 0, 48, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, 'E4C14486-1A15-4424-B075-F30BB55DA84D', 0),
(13, 82, 0, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '1D73C38B-DBD1-474A-A3EB-791BD23B200B', 0),
(14, 0, 59, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '3A99A721-DAA5-4ED2-8994-8AB65CC0AA72', 0),
(15, 0, 60, 0, 0, 20, '2021-10-07 00:00:00', '2021-10-10 00:00:00', 1, '', 0, 'AB74E5CA-EC6C-4FF9-86EF-9B37671F7363', 0),
(16, 0, 61, 0, 0, 20, '2021-10-07 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '26D4060C-58BA-4E29-B3B2-7CD0F66C60E9', 0),
(17, 0, 62, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, 'A28B29AF-F7E3-47D1-AAA8-49C0B588DEBD', -1),
(18, 0, 63, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '76C6FBC3-9EEE-4B85-A25B-604018D6F9DC', 0),
(19, 24, 0, 0, 0, 20, '2021-10-09 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '3AB905D9-31C8-4AD8-B796-1DC6DFE146F9', 0),
(20, 0, 0, 10, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '8A1A42B9-5FA2-460A-B7E1-EBF8ED4887C1', 0),
(21, 0, 76, 0, 0, 20, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, 'EBE676D6-963D-4485-A3F2-58476A598C00', 0),
(22, 0, 0, 3, 0, 21, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '38E264C6-13ED-487E-BCDD-DE3FC0736D31', 0),
(23, 0, 0, 54, 0, 21, '2021-10-08 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '37EA61B2-A4BD-484C-8456-863270536414', 0),
(24, 71, 0, 0, 0, 21, '2021-10-09 00:00:00', '2021-10-10 00:00:00', 1, '', 0, '0816BF14-D070-4D96-8E59-BFF8738A1363', 0),
(25, 71, 0, 0, 0, 21, '2021-10-09 00:00:00', '2021-10-10 00:00:00', 1, '', 0, 'ADE75622-4A51-4F93-AD06-A49B52EB1CB2', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_hotelbeschikbaarheid`
--

DROP TABLE IF EXISTS `custom_hotelbeschikbaarheid`;
CREATE TABLE `custom_hotelbeschikbaarheid` (
  `id` int(11) NOT NULL,
  `locatie` int(11) NOT NULL,
  `startdatum` datetime NOT NULL,
  `einddatum` datetime NOT NULL,
  `geheledag` int(3) NOT NULL,
  `aantal` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `custom_hotelbeschikbaarheid`
--

INSERT INTO `custom_hotelbeschikbaarheid` (`id`, `locatie`, `startdatum`, `einddatum`, `geheledag`, `aantal`, `del`) VALUES
(1, 20, '2021-10-05 00:00:00', '2021-10-10 00:00:00', 1, 20, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_hotelgasten`
--

DROP TABLE IF EXISTS `custom_hotelgasten`;
CREATE TABLE `custom_hotelgasten` (
  `id` int(11) NOT NULL,
  `hotel` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `telefoon` varchar(150) NOT NULL,
  `opmerkingen` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_items`
--

DROP TABLE IF EXISTS `custom_items`;
CREATE TABLE `custom_items` (
  `id` int(11) NOT NULL,
  `evenement` int(11) NOT NULL DEFAULT '0',
  `persoon` int(11) NOT NULL DEFAULT '0',
  `vrijwilliger` int(11) NOT NULL DEFAULT '0',
  `podia` int(11) NOT NULL DEFAULT '0',
  `specificdate` date NOT NULL DEFAULT '1970-01-01',
  `specificevent` int(11) NOT NULL DEFAULT '0',
  `organisatie` int(11) NOT NULL DEFAULT '0',
  `vertegenwoordiger` varchar(150) NOT NULL,
  `vertegenwoordigeradres` varchar(150) NOT NULL,
  `vertegenwoordigerpostcode` varchar(150) NOT NULL,
  `vertegenwoordigerwoonplaats` varchar(150) NOT NULL,
  `vertegenwoordigertelefoon` varchar(150) NOT NULL,
  `vertegenwoordigeremail` varchar(150) NOT NULL,
  `opmerkingen` varchar(150) NOT NULL,
  `genre` int(11) NOT NULL,
  `contractant` varchar(150) NOT NULL,
  `numberofpeople` varchar(150) NOT NULL,
  `numberofsupportpeople` varchar(150) NOT NULL,
  `website` varchar(150) NOT NULL,
  `facebook` varchar(150) NOT NULL,
  `instagram` varchar(150) NOT NULL,
  `linkedin` varchar(150) NOT NULL,
  `twitter` varchar(150) NOT NULL,
  `aantalledeneninstrumenten` text NOT NULL,
  `benodigdhedenenopstelling` text NOT NULL,
  `geschiedenisachtergrond` text NOT NULL,
  `inclusiethema` text NOT NULL,
  `favorietemuziek` text NOT NULL,
  `vakeropcityproms` text NOT NULL,
  `herinneringcityproms` text NOT NULL,
  `allermooisteconcert` text NOT NULL,
  `vervolgconcerten` text NOT NULL,
  `financieelland` varchar(150) NOT NULL,
  `vertegenwoordigerland` varchar(150) NOT NULL,
  `btwnummer` varchar(150) NOT NULL,
  `kvknummer` varchar(150) NOT NULL,
  `iban` varchar(150) NOT NULL,
  `capaciteitcorona` text NOT NULL,
  `standpromotiedoeleinden` text NOT NULL,
  `parkeren` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_items`
--

INSERT INTO `custom_items` (`id`, `evenement`, `persoon`, `vrijwilliger`, `podia`, `specificdate`, `specificevent`, `organisatie`, `vertegenwoordiger`, `vertegenwoordigeradres`, `vertegenwoordigerpostcode`, `vertegenwoordigerwoonplaats`, `vertegenwoordigertelefoon`, `vertegenwoordigeremail`, `opmerkingen`, `genre`, `contractant`, `numberofpeople`, `numberofsupportpeople`, `website`, `facebook`, `instagram`, `linkedin`, `twitter`, `aantalledeneninstrumenten`, `benodigdhedenenopstelling`, `geschiedenisachtergrond`, `inclusiethema`, `favorietemuziek`, `vakeropcityproms`, `herinneringcityproms`, `allermooisteconcert`, `vervolgconcerten`, `financieelland`, `vertegenwoordigerland`, `btwnummer`, `kvknummer`, `iban`, `capaciteitcorona`, `standpromotiedoeleinden`, `parkeren`) VALUES
(1, 5, 0, 0, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 0, 0, 0, 24, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 32, 0, 0, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 0, 0, 2, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 0, 56, 0, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 1, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 4, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 6, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 8, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 3, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 10, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 12, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 11, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 13, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 14, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 34, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 35, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 36, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 115, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 30, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 31, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 29, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 88, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 47, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 48, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 49, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 93, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 50, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 38, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 56, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 59, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 20, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 39, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 40, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 41, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 19, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 45, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 94, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 74, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 95, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, 92, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, 90, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 61, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 65, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, 37, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, 67, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, 21, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 24, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, 70, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, 71, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, 26, 0, 0, 0, '0000-00-00', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, 35, 0, 0, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, 1, 0, 0, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, 4, 0, 0, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, 0, 0, 112, 0, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 120, 0, 0, 0, '1970-01-01', 0, 0, '', 'test', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 0, 0, 0, 12, '1970-01-01', 0, 0, '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_log_scan`
--

DROP TABLE IF EXISTS `custom_log_scan`;
CREATE TABLE `custom_log_scan` (
  `id` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL DEFAULT '0',
  `vrijwilligerid` int(11) NOT NULL DEFAULT '0',
  `action` varchar(150) NOT NULL,
  `actiontype` varchar(150) DEFAULT NULL,
  `materiaalid` int(11) NOT NULL DEFAULT '0',
  `materiaalitemid` int(11) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL,
  `handmatigedatum` datetime DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_marketingcontent`
--

DROP TABLE IF EXISTS `custom_marketingcontent`;
CREATE TABLE `custom_marketingcontent` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `omschrijving` text NOT NULL,
  `publicatiein` varchar(150) NOT NULL,
  `typecontent` varchar(150) NOT NULL,
  `aantalitems` int(3) NOT NULL,
  `doel` text NOT NULL,
  `medewerker` int(11) NOT NULL,
  `contactpersoon` int(11) NOT NULL,
  `contactvrijwilliger` int(11) NOT NULL,
  `planning` date NOT NULL,
  `vergoeding` varchar(150) NOT NULL,
  `gefactureerd` int(3) NOT NULL,
  `tekst` text NOT NULL,
  `status` int(3) NOT NULL,
  `opmerkingen` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `custom_marketingcontent`
--

INSERT INTO `custom_marketingcontent` (`id`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `omschrijving`, `publicatiein`, `typecontent`, `aantalitems`, `doel`, `medewerker`, `contactpersoon`, `contactvrijwilliger`, `planning`, `vergoeding`, `gefactureerd`, `tekst`, `status`, `opmerkingen`, `del`) VALUES
(1, 10, 0, 0, 0, 'Programmaboekjes', '', '', 0, '', 0, 0, 0, '2021-10-03', '', 0, '', -1, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_match`
--

DROP TABLE IF EXISTS `custom_match`;
CREATE TABLE `custom_match` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `aanbodid` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  `matchitem` text NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_multivalue`
--

DROP TABLE IF EXISTS `custom_multivalue`;
CREATE TABLE `custom_multivalue` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `specificdate` date NOT NULL,
  `specificevent` int(11) NOT NULL,
  `dblist` varchar(150) NOT NULL,
  `veld` varchar(150) NOT NULL,
  `waarde` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_planningsregels`
--

DROP TABLE IF EXISTS `custom_planningsregels`;
CREATE TABLE `custom_planningsregels` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL DEFAULT '0',
  `persoon` int(11) NOT NULL DEFAULT '0',
  `vrijwilliger` int(11) NOT NULL DEFAULT '0',
  `podia` int(11) NOT NULL DEFAULT '0',
  `functie` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `text` varchar(150) DEFAULT NULL,
  `afwijkendeingezettetijd` float(5,2) NOT NULL DEFAULT '0.00',
  `locatie` int(11) NOT NULL DEFAULT '0',
  `gekoppeldepersoon` int(11) NOT NULL DEFAULT '0',
  `gekoppeldevrijwilliger` int(11) NOT NULL DEFAULT '0',
  `opmerkingen` text,
  `planningsstatus` int(11) NOT NULL DEFAULT '0',
  `bevestigddoorvrijwilliger` int(3) NOT NULL DEFAULT '0',
  `verkeersregelaarsexamen` varchar(150) DEFAULT NULL,
  `portofoonkanaal` varchar(150) DEFAULT NULL,
  `portofoontype` varchar(150) DEFAULT NULL,
  `portofoonstatus` varchar(150) DEFAULT NULL,
  `copyof` int(11) NOT NULL DEFAULT '0',
  `copyitem` varchar(150) DEFAULT NULL,
  `checksum` varchar(150) DEFAULT NULL,
  `ontbijt` int(3) NOT NULL DEFAULT '0',
  `lunch` int(3) NOT NULL DEFAULT '0',
  `diner` int(3) NOT NULL DEFAULT '0',
  `nacht` int(3) NOT NULL DEFAULT '0',
  `ontbijtlocatie` int(11) NOT NULL DEFAULT '0',
  `lunchlocatie` int(11) NOT NULL DEFAULT '0',
  `dinerlocatie` int(11) NOT NULL DEFAULT '0',
  `nachtlocatie` int(11) NOT NULL DEFAULT '0',
  `consumptiemunten` int(3) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_planningsregels`
--

INSERT INTO `custom_planningsregels` (`id`, `festivalevent`, `event`, `persoon`, `vrijwilliger`, `podia`, `functie`, `start_date`, `end_date`, `text`, `afwijkendeingezettetijd`, `locatie`, `gekoppeldepersoon`, `gekoppeldevrijwilliger`, `opmerkingen`, `planningsstatus`, `bevestigddoorvrijwilliger`, `verkeersregelaarsexamen`, `portofoonkanaal`, `portofoontype`, `portofoonstatus`, `copyof`, `copyitem`, `checksum`, `ontbijt`, `lunch`, `diner`, `nacht`, `ontbijtlocatie`, `lunchlocatie`, `dinerlocatie`, `nachtlocatie`, `consumptiemunten`, `del`) VALUES
(1, 1, 0, 0, 0, 12, 21, '2021-10-04 11:00:00', '2021-10-04 15:00:00', 'Super jongere Schilderlocatie ', 0.00, 12, 0, 0, '', 1, 0, '', '', '', '', 0, 'f5535d667c338123b5f15cbf9699bc9c', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 1, 0, 0, 0, 12, 7, '2021-10-05 10:00:00', '2021-10-05 17:00:00', 'Gewone jongere Schilderlocatie ', 0.00, 12, 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 0, 'bcc1b6de877db8cfde959812d6f25147', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 1, 0, 0, 0, 12, 7, '2021-10-05 10:00:00', '2021-10-05 17:00:00', 'Gewone jongere Schilderlocatie ', 0.00, 12, 0, 0, '', 1, 0, '', '', '', '', 2, 'bcc1b6de877db8cfde959812d6f25147', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 1, 0, 0, 0, 12, 7, '2021-10-05 10:00:00', '2021-10-05 17:00:00', 'Gewone jongere Schilderlocatie ', 0.00, 12, 0, 0, '', 1, 0, NULL, NULL, NULL, NULL, 2, 'bcc1b6de877db8cfde959812d6f25147', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_poules`
--

DROP TABLE IF EXISTS `custom_poules`;
CREATE TABLE `custom_poules` (
  `id` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `poule` int(11) NOT NULL,
  `inzientussenpersoontel_datum` datetime NOT NULL,
  `inzientussenpersoontel_content` text NOT NULL,
  `inzientussenpersoonemail_datum` datetime NOT NULL,
  `inzientussenpersoonemail_content` text NOT NULL,
  `inzienorgtel_datum` datetime NOT NULL,
  `inzienorgtel_content` text NOT NULL,
  `inzienorgemail_datum` datetime NOT NULL,
  `inzienorgemail_content` text NOT NULL,
  `opmerkingen` text NOT NULL,
  `toegevoegd` datetime NOT NULL,
  `gewijzigd` datetime NOT NULL,
  `verwijderd` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_reacties`
--

DROP TABLE IF EXISTS `custom_reacties`;
CREATE TABLE `custom_reacties` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `aanbodid` int(11) NOT NULL,
  `datumingediend` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `enqueteingediend` datetime NOT NULL,
  `aangenomen` int(3) NOT NULL,
  `nietaangenomen` int(3) NOT NULL,
  `nietbenaderd` int(3) NOT NULL,
  `orggereageerdopchat` int(3) NOT NULL,
  `orgcontactanders` int(3) NOT NULL,
  `vrijwcontactopgenomen` int(3) NOT NULL,
  `benaangenomen` int(3) NOT NULL,
  `nietmeergeinteresseerd` int(3) NOT NULL,
  `opmerkingen` text NOT NULL,
  `deelnameonderzoek` datetime NOT NULL,
  `tekstonderzoek` text NOT NULL,
  `datumgewijzigd` datetime NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `validation` datetime NOT NULL,
  `validationorg` datetime NOT NULL,
  `eigennaam` varchar(150) NOT NULL,
  `eigenemail` varchar(150) NOT NULL,
  `eigentelefoon` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_rollen`
--

DROP TABLE IF EXISTS `custom_rollen`;
CREATE TABLE `custom_rollen` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `organisatieid` int(11) NOT NULL,
  `aanbodid` int(11) NOT NULL,
  `rol` int(11) NOT NULL,
  `opmerkingen` text NOT NULL,
  `del` int(3) NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_rollen`
--

INSERT INTO `custom_rollen` (`id`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `organisatieid`, `aanbodid`, `rol`, `opmerkingen`, `del`, `copyof`, `copyitem`) VALUES
(3, 0, 17, 0, 0, 0, 0, 6, '', 0, 0, ''),
(5, 0, 21, 0, 0, 0, 0, 7, '', 0, 0, ''),
(8, 0, 19, 0, 0, 0, 0, 6, '', 0, 0, ''),
(9, 0, 18, 0, 0, 0, 0, 6, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_rooms`
--

DROP TABLE IF EXISTS `custom_rooms`;
CREATE TABLE `custom_rooms` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `custom_rooms`
--

INSERT INTO `custom_rooms` (`id`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `room`, `del`) VALUES
(1, 0, 2, 0, 0, 19, 0),
(2, 0, 3, 0, 0, 19, 0),
(3, 0, 4, 0, 0, 19, 0),
(4, 0, 5, 0, 0, 19, 0),
(5, 0, 6, 0, 0, 19, 0),
(6, 0, 7, 0, 0, 19, 0),
(7, 0, 9, 0, 0, 19, 0),
(8, 0, 10, 0, 0, 19, 0),
(9, 0, 12, 0, 0, 19, 0),
(10, 0, 13, 0, 0, 19, 0),
(11, 0, 14, 0, 0, 19, 0),
(12, 0, 15, 0, 0, 19, 0),
(13, 0, 16, 0, 0, 19, 0),
(14, 0, 20, 0, 0, 19, 0),
(15, 0, 22, 0, 0, 19, 0),
(16, 0, 23, 0, 0, 19, 0),
(17, 0, 24, 0, 0, 19, 0),
(18, 0, 25, 0, 0, 19, 0),
(19, 0, 26, 0, 0, 19, 0),
(20, 0, 27, 0, 0, 19, 0),
(21, 0, 28, 0, 0, 19, 0),
(22, 0, 29, 0, 0, 19, 0),
(23, 0, 30, 0, 0, 19, 0),
(24, 0, 31, 0, 0, 19, 0),
(25, 0, 32, 0, 0, 19, 0),
(26, 0, 33, 0, 0, 19, 0),
(27, 0, 34, 0, 0, 19, 0),
(28, 0, 35, 0, 0, 19, 0),
(29, 0, 36, 0, 0, 19, 0),
(30, 0, 37, 0, 0, 19, 0),
(31, 0, 38, 0, 0, 19, 0),
(32, 0, 39, 0, 0, 19, 0),
(33, 0, 40, 0, 0, 19, 0),
(34, 0, 41, 0, 0, 19, 0),
(35, 0, 42, 0, 0, 19, 0),
(36, 0, 43, 0, 0, 19, 0),
(37, 0, 44, 0, 0, 19, 0),
(38, 0, 45, 0, 0, 19, 0),
(39, 0, 49, 0, 0, 19, 0),
(40, 0, 50, 0, 0, 19, 0),
(41, 0, 51, 0, 0, 19, 0),
(42, 0, 52, 0, 0, 19, 0),
(43, 0, 54, 0, 0, 19, 0),
(44, 0, 58, 0, 0, 19, 0),
(45, 0, 65, 0, 0, 19, 0),
(46, 0, 66, 0, 0, 19, 0),
(47, 0, 67, 0, 0, 19, 0),
(48, 0, 68, 0, 0, 19, 0),
(49, 0, 69, 0, 0, 19, 0),
(50, 0, 70, 0, 0, 19, 0),
(51, 0, 71, 0, 0, 19, 0),
(52, 0, 72, 0, 0, 19, 0),
(53, 0, 73, 0, 0, 19, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_ticketextraproducts`
--

DROP TABLE IF EXISTS `custom_ticketextraproducts`;
CREATE TABLE `custom_ticketextraproducts` (
  `id` int(11) NOT NULL,
  `sales` int(11) NOT NULL DEFAULT '0',
  `product` int(11) NOT NULL DEFAULT '0',
  `numberof` int(3) NOT NULL DEFAULT '0',
  `price` float(6,2) NOT NULL DEFAULT '0.00',
  `total` float(6,2) NOT NULL DEFAULT '0.00',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_ticketsales`
--

DROP TABLE IF EXISTS `custom_ticketsales`;
CREATE TABLE `custom_ticketsales` (
  `id` int(11) NOT NULL,
  `ticket` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL DEFAULT '0',
  `aantalpersonen` int(3) NOT NULL DEFAULT '0',
  `aantalpersonenkorting1` int(11) NOT NULL DEFAULT '0',
  `zitplaatsen` int(3) NOT NULL DEFAULT '0',
  `groepvoorkeur` varchar(150) DEFAULT NULL,
  `voornaam` varchar(150) DEFAULT NULL,
  `achternaam` varchar(150) DEFAULT NULL,
  `email` text,
  `telefoon` varchar(150) DEFAULT NULL,
  `custom1` varchar(150) DEFAULT NULL,
  `custom2` varchar(150) DEFAULT NULL,
  `custom3` varchar(150) DEFAULT NULL,
  `custom4` varchar(150) DEFAULT NULL,
  `custom5` varchar(150) DEFAULT NULL,
  `custom6` varchar(150) DEFAULT NULL,
  `custom7` varchar(150) DEFAULT NULL,
  `custom8` varchar(150) DEFAULT NULL,
  `custom9` varchar(150) DEFAULT NULL,
  `custom10` varchar(150) DEFAULT NULL,
  `privacyakkoord` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `privacytekst` text,
  `coronacheck` int(11) NOT NULL DEFAULT '0',
  `voorkeur1` int(3) NOT NULL DEFAULT '0',
  `voorkeur2` int(3) NOT NULL DEFAULT '0',
  `voorkeur3` int(3) NOT NULL DEFAULT '0',
  `voorkeur4` int(3) NOT NULL DEFAULT '0',
  `voorkeur5` int(3) NOT NULL DEFAULT '0',
  `voorkeurenopm1` text,
  `opmerkingen` text,
  `totaalbedrag` varchar(150) DEFAULT NULL,
  `checksum` varchar(150) DEFAULT NULL,
  `betaalverificatie` varchar(150) DEFAULT NULL,
  `toegevoegd` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `paymentid` varchar(150) DEFAULT NULL,
  `paymentstatus` varchar(150) DEFAULT NULL,
  `paymentamount` varchar(150) DEFAULT NULL,
  `paymentprofile` varchar(150) DEFAULT NULL,
  `paymentlastcheck` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `document` text,
  `gevalideerdescan` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `custom_vervoer`
--

DROP TABLE IF EXISTS `custom_vervoer`;
CREATE TABLE `custom_vervoer` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `persoonid` int(11) NOT NULL,
  `vrijwilligerid` int(11) NOT NULL,
  `podiaid` int(11) NOT NULL,
  `typevervoer` varchar(150) NOT NULL,
  `vervoer` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `vervoerlocatie` int(11) NOT NULL,
  `aantalpersonen` int(3) NOT NULL,
  `vervoersnummer` varchar(150) NOT NULL,
  `transferdoor` text NOT NULL,
  `opmerkingen` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `custom_vervoer`
--

INSERT INTO `custom_vervoer` (`id`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `typevervoer`, `vervoer`, `datum`, `vervoerlocatie`, `aantalpersonen`, `vervoersnummer`, `transferdoor`, `opmerkingen`, `del`) VALUES
(1, 0, 56, 0, 0, 'Heenreis', 2, '2021-10-04 07:45:00', 1, 1, 'KL0642', 'KLM ', 'Boeing 787-9', 0),
(2, 0, 56, 0, 0, 'Heenreis', 2, '2021-10-04 00:00:00', 1, 1, '', '', '', -1),
(3, 0, 1, 0, 0, 'Heenreis', 4, '2021-10-02 12:00:00', 1, -1, 'KL-123', 'Jan', 'test transfer', -1),
(4, 0, 1, 0, 0, 'Terugreis', 2, '2021-10-08 11:00:00', 1, -1, 'KL-9866', 'Karel', '12.00 uur wegbrengen', -1),
(5, 0, 0, 1, 0, 'Lokale transfers', 4, '2021-10-02 12:00:00', 1, 1, 'Buslijn 6', 'Buschauffeur', '', -1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_color`
--

DROP TABLE IF EXISTS `ek_gantt_color`;
CREATE TABLE `ek_gantt_color` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `color_background` varchar(150) NOT NULL,
  `color_text` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ek_gantt_color`
--

INSERT INTO `ek_gantt_color` (`id`, `description`, `color_background`, `color_text`, `del`) VALUES
(6, 'Paars', '7f0f7e', 'ffffff', 0),
(7, 'Groen', '0f7f12', 'ffffff', 0),
(8, 'Geel', 'fffd38', '000000', 0),
(9, 'Rood', 'fc0d1b', 'ffffff', 0),
(10, 'aa', 'dd', 'ff', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_functie`
--

DROP TABLE IF EXISTS `ek_gantt_functie`;
CREATE TABLE `ek_gantt_functie` (
  `id` int(11) NOT NULL,
  `organisation` int(11) NOT NULL,
  `functie` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ek_gantt_functie`
--

INSERT INTO `ek_gantt_functie` (`id`, `organisation`, `functie`, `del`) VALUES
(1, 0, 'Wiersma', 0),
(2, 0, 'Interstage', 0),
(3, 0, 'Verno', 0),
(4, 0, 'AAS', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_functieevent`
--

DROP TABLE IF EXISTS `ek_gantt_functieevent`;
CREATE TABLE `ek_gantt_functieevent` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `functie` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `ek_gantt_functieevent`
--

INSERT INTO `ek_gantt_functieevent` (`id`, `event`, `functie`, `del`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_links`
--

DROP TABLE IF EXISTS `ek_gantt_links`;
CREATE TABLE `ek_gantt_links` (
  `id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_locatie`
--

DROP TABLE IF EXISTS `ek_gantt_locatie`;
CREATE TABLE `ek_gantt_locatie` (
  `id` int(11) NOT NULL,
  `location` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_planningtype`
--

DROP TABLE IF EXISTS `ek_gantt_planningtype`;
CREATE TABLE `ek_gantt_planningtype` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `defaultitem` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ek_gantt_planningtype`
--

INSERT INTO `ek_gantt_planningtype` (`id`, `description`, `defaultitem`, `del`) VALUES
(3, 'Productie', 1, 0),
(4, 'Catering', 0, 0),
(5, 'Werkrooster', 0, 0),
(6, 'Concerten', 0, 0),
(7, 'Soundchecks', 0, 0),
(8, 'Repetities', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_tasks`
--

DROP TABLE IF EXISTS `ek_gantt_tasks`;
CREATE TABLE `ek_gantt_tasks` (
  `id` int(11) NOT NULL,
  `timeperiodday` int(11) NOT NULL,
  `planning` int(11) NOT NULL,
  `text` text NOT NULL,
  `start_date` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `progress` float NOT NULL,
  `sortorder` int(11) NOT NULL,
  `stage` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `numberof` int(11) NOT NULL,
  `kleur` int(11) NOT NULL,
  `benodigd` text NOT NULL,
  `opmerking` text NOT NULL,
  `diensten` text NOT NULL,
  `parent` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `ek_gantt_tasks`
--

INSERT INTO `ek_gantt_tasks` (`id`, `timeperiodday`, `planning`, `text`, `start_date`, `duration`, `progress`, `sortorder`, `stage`, `user`, `numberof`, `kleur`, `benodigd`, `opmerking`, `diensten`, `parent`, `del`) VALUES
(1, 2019, 3, 'doe iets', '2020-01-27 15:00:00', 1, 0, 0, 0, 0, 1, 0, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ek_gantt_timeperiod`
--

DROP TABLE IF EXISTS `ek_gantt_timeperiod`;
CREATE TABLE `ek_gantt_timeperiod` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_activities`
--

DROP TABLE IF EXISTS `lst_activities`;
CREATE TABLE `lst_activities` (
  `id` int(11) NOT NULL,
  `festivalevent` int(11) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `tijdendefinitief` int(3) NOT NULL DEFAULT '0',
  `tijdloos` int(3) NOT NULL DEFAULT '0',
  `bevestigd` int(3) NOT NULL DEFAULT '0',
  `definitief` int(3) NOT NULL DEFAULT '0',
  `sub_from` int(11) NOT NULL DEFAULT '0',
  `inschrijving` int(11) NOT NULL DEFAULT '0',
  `text` text,
  `uitvoerders` text,
  `composities` text,
  `email` text,
  `location` int(11) NOT NULL DEFAULT '0',
  `room` int(11) DEFAULT NULL,
  `doelgroep` int(11) NOT NULL DEFAULT '0',
  `categorie` int(11) NOT NULL DEFAULT '0',
  `sector` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `lid` int(3) NOT NULL DEFAULT '0',
  `catering` int(11) NOT NULL DEFAULT '0',
  `publiceren` int(11) NOT NULL DEFAULT '0',
  `kleur` int(11) NOT NULL DEFAULT '0',
  `genre` int(11) NOT NULL DEFAULT '0',
  `alert` text,
  `totaalbedrag` varchar(150) DEFAULT NULL,
  `bedragopmerking` text,
  `is_paid` tinyint(1) DEFAULT NULL,
  `checksum` varchar(150) NOT NULL DEFAULT '',
  `aanpasbaartm` date DEFAULT NULL,
  `readonly` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `lastlogin` varchar(150) DEFAULT NULL,
  `lastip` varchar(150) DEFAULT NULL,
  `checkId` varchar(150) DEFAULT NULL,
  `copyof` int(11) NOT NULL DEFAULT '0',
  `timeperiodday` int(11) NOT NULL DEFAULT '0',
  `soort` int(11) NOT NULL DEFAULT '0',
  `progress` float DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT '0',
  `numberof` int(11) NOT NULL DEFAULT '0',
  `benodigd` text,
  `opmerking` text,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `user` int(11) NOT NULL DEFAULT '0',
  `foto` text,
  `aanpasbaardoor` text NOT NULL,
  `reserveringsstatus` int(11) NOT NULL DEFAULT '0',
  `programma` int(11) NOT NULL DEFAULT '0',
  `wettelijketaak` int(11) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_activities_categorie`
--

DROP TABLE IF EXISTS `lst_activities_categorie`;
CREATE TABLE `lst_activities_categorie` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_activities_defintiefstatus`
--

DROP TABLE IF EXISTS `lst_activities_defintiefstatus`;
CREATE TABLE `lst_activities_defintiefstatus` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_activities_statuses`
--

DROP TABLE IF EXISTS `lst_activities_statuses`;
CREATE TABLE `lst_activities_statuses` (
  `id` int(11) NOT NULL,
  `name` text,
  `status` varchar(150) NOT NULL,
  `volgorde` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_activities_statuses`
--

INSERT INTO `lst_activities_statuses` (`id`, `name`, `status`, `volgorde`, `del`) VALUES
(1, 'Niet aanpasbaar op portaal door artiest', 'datareadonly', 1, 0),
(2, 'Aanpasbaar op portaal door artiest', 'dataedit', 2, 0),
(3, '3 - Controle gegevens', 'datareadonly', 3, 1),
(4, '4 - Ondertekenen contract door artiest', 'contractsign', 4, 1),
(5, '5 - Contract ondertekend', 'contractreadonly', 5, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_activities_wettelijketaak`
--

DROP TABLE IF EXISTS `lst_activities_wettelijketaak`;
CREATE TABLE `lst_activities_wettelijketaak` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_benodigdheden`
--

DROP TABLE IF EXISTS `lst_benodigdheden`;
CREATE TABLE `lst_benodigdheden` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `team` int(11) NOT NULL,
  `emailsjabloon` int(11) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_benodigdhedenperstatus`
--

DROP TABLE IF EXISTS `lst_benodigdhedenperstatus`;
CREATE TABLE `lst_benodigdhedenperstatus` (
  `id` int(11) NOT NULL,
  `benodigdheid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_categorie`
--

DROP TABLE IF EXISTS `lst_categorie`;
CREATE TABLE `lst_categorie` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `isdonateur` int(3) NOT NULL DEFAULT '0',
  `isleverancier` int(3) DEFAULT '0',
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_categorie`
--

INSERT INTO `lst_categorie` (`id`, `naam`, `isdonateur`, `isleverancier`, `del`) VALUES
(1, 'Leverancier', 0, 0, 0),
(2, 'Sponsor', 0, 0, 0),
(4, 'Algemeen', 0, 0, 0),
(5, 'Partner', 0, 0, 0),
(7, 'Pers', 0, 0, 0),
(12, 'Medewerker', 0, 0, 0),
(13, 'Artiest', 0, 0, 0),
(14, 'Donateur', 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_cateringvoorkeuren`
--

DROP TABLE IF EXISTS `lst_cateringvoorkeuren`;
CREATE TABLE `lst_cateringvoorkeuren` (
  `id` int(11) NOT NULL,
  `naamnl` varchar(150) NOT NULL,
  `naamen` varchar(150) NOT NULL,
  `positie` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_cateringvoorkeuren`
--

INSERT INTO `lst_cateringvoorkeuren` (`id`, `naamnl`, `naamen`, `positie`, `del`) VALUES
(1, 'Vegetarisch', 'Vegetarian', 2, 0),
(2, 'Veganistisch', 'Vegan', 2, 0),
(3, 'Glutenvrij', 'Gluten', 2, 0),
(4, 'Lactrosevrij', 'Lactrose', 2, 0),
(5, 'Geen cateringwensen', 'No catering wishes', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_centralemeldingcategorie`
--

DROP TABLE IF EXISTS `lst_centralemeldingcategorie`;
CREATE TABLE `lst_centralemeldingcategorie` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `lst_centralemeldingcategorie`
--

INSERT INTO `lst_centralemeldingcategorie` (`id`, `name`, `del`) VALUES
(1, 'Stroom', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_contactpersoonsoorten`
--

DROP TABLE IF EXISTS `lst_contactpersoonsoorten`;
CREATE TABLE `lst_contactpersoonsoorten` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `typecontactpersoon` varchar(150) NOT NULL,
  `standaard` int(3) NOT NULL,
  `positie` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_contactpersoonsoorten`
--

INSERT INTO `lst_contactpersoonsoorten` (`id`, `naam`, `typecontactpersoon`, `standaard`, `positie`, `del`) VALUES
(1, 'Medewerker', 'medewerker', 2, 3, 0),
(2, 'Externe contactpersoon', 'gast', 2, 0, 1),
(3, 'Vrijwilliger', 'vrijwilliger', 2, 2, 1),
(5, 'Relatie', 'persoon', 2, 1, 0),
(6, 'Horecapartners', 'persoon', 2, 0, 1),
(7, 'bands', 'persoon', 1, 0, 1),
(8, 'musici', 'medewerker', 2, 0, 1),
(9, 'Musici', 'medewerker', 2, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_contributie`
--

DROP TABLE IF EXISTS `lst_contributie`;
CREATE TABLE `lst_contributie` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_dienstcategorieen`
--

DROP TABLE IF EXISTS `lst_dienstcategorieen`;
CREATE TABLE `lst_dienstcategorieen` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `positie` int(3) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_dienstcategorieen`
--

INSERT INTO `lst_dienstcategorieen` (`id`, `name`, `positie`, `del`) VALUES
(1, 'Constructie', 0, 0),
(2, 'Podiumtechniek', 0, 0),
(3, 'Instrument', 0, 0),
(4, 'Meubilair', 0, 0),
(5, 'Transport', 0, 0),
(6, 'Maaltijd', 0, 0),
(7, 'Overnachting', 0, 0),
(8, 'Geluids/video opname', 0, 0),
(9, 'Sponsor', 0, 0),
(10, 'Catering', 0, 0),
(11, 'Munten', 0, 0),
(12, 'Banners', 0, 0),
(13, 'Overige', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_diensten`
--

DROP TABLE IF EXISTS `lst_diensten`;
CREATE TABLE `lst_diensten` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `soort` int(3) NOT NULL,
  `categorie` int(11) NOT NULL,
  `groep` varchar(150) NOT NULL,
  `isovernachting` int(3) NOT NULL,
  `islocatiefaciliteit` int(3) NOT NULL,
  `istransport` int(3) NOT NULL,
  `ismaaltijd` int(3) NOT NULL,
  `isconstructie` int(3) NOT NULL,
  `ispodiumtechniek` int(3) NOT NULL,
  `isdecoratie` int(3) NOT NULL,
  `isinstrument` int(3) NOT NULL,
  `ismeubilair` int(3) NOT NULL,
  `isopname` int(3) NOT NULL,
  `emailsjabloon` int(11) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_diensten`
--

INSERT INTO `lst_diensten` (`id`, `name`, `soort`, `categorie`, `groep`, `isovernachting`, `islocatiefaciliteit`, `istransport`, `ismaaltijd`, `isconstructie`, `ispodiumtechniek`, `isdecoratie`, `isinstrument`, `ismeubilair`, `isopname`, `emailsjabloon`, `del`) VALUES
(1, 'Benodigdheid', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'Benodigdheid', 0, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'Benodigdheid', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'Benodigdheid', 0, 13, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'Benodigdheid', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'Benodigdheid', 0, 13, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'Benodigdheid', 1, 3, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'Benodigdheid', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'Benodigdheid', 1, 3, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'Benodigdheid', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'Benodigdheid', 0, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'Benodigdheid', 1, 3, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 'Benodigdheid', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 'Benodigdheid', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 'Benodigdheid', 0, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 'Benodigdheid', 1, 13, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 'Benodigdheid', 0, 3, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'Benodigdheid', 1, 2, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 'Stoelen', 1, 4, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_documentsoort`
--

DROP TABLE IF EXISTS `lst_documentsoort`;
CREATE TABLE `lst_documentsoort` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `verplicht` int(3) NOT NULL,
  `soort` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_documentsoort`
--

INSERT INTO `lst_documentsoort` (`id`, `naam`, `verplicht`, `soort`, `del`) VALUES
(1, 'Gageverklaring', 1, 'financieel', 0),
(2, 'IHPV', 1, 'financieel', 0),
(3, 'Kopie paspoort', 1, 'financieel', 0),
(4, 'Technische rider', 1, 'techniek', 0),
(5, 'Priklijst', 0, 'techniek', 0),
(6, 'Persfoto', 1, 'promotie', 0),
(7, 'Artiestencontract', 0, 'financieel', 0),
(8, 'Factuur', 1, 'financieel', 0),
(9, 'Stageplan', 0, 'techniek', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_doelgroep`
--

DROP TABLE IF EXISTS `lst_doelgroep`;
CREATE TABLE `lst_doelgroep` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `naammeervoud` varchar(150) NOT NULL,
  `planningsmogelijkheden` int(3) NOT NULL,
  `doelgroeptype` varchar(150) NOT NULL,
  `positie` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_doelgroep`
--

INSERT INTO `lst_doelgroep` (`id`, `naam`, `naammeervoud`, `planningsmogelijkheden`, `doelgroeptype`, `positie`, `del`) VALUES
(7, 'Activiteit / programmaonderdeel', 'Activiteiten / Programma onderdelen', 1, '1', 3, 1),
(15, 'Relatie', 'Relaties', 2, '2', 2, 1),
(16, 'Vrijwilliger', 'Vrijwilligers', 2, '3', 3, 0),
(17, 'Locatie', 'Locaties', 2, '4', 3, 0),
(18, 'Adres', 'Adres', 2, '1', 5, 1),
(19, 'Meeting', 'Meeting', 1, '1', 7, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_doelgroepen`
--

DROP TABLE IF EXISTS `lst_doelgroepen`;
CREATE TABLE `lst_doelgroepen` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_email`
--

DROP TABLE IF EXISTS `lst_email`;
CREATE TABLE `lst_email` (
  `id` int(11) NOT NULL,
  `organisation` int(11) NOT NULL,
  `project` int(11) NOT NULL,
  `emailtype` varchar(150) NOT NULL,
  `geadresseerde` varchar(50) NOT NULL,
  `activity_status` int(11) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_financieelcategorieen`
--

DROP TABLE IF EXISTS `lst_financieelcategorieen`;
CREATE TABLE `lst_financieelcategorieen` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `standaardopmerkingen` text NOT NULL,
  `soort` int(3) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_financieelcategorieen`
--

INSERT INTO `lst_financieelcategorieen` (`id`, `name`, `standaardopmerkingen`, `soort`, `del`) VALUES
(1, 'Uitkoop', '', 0, 0),
(2, 'Reiskosten', '', 0, 0),
(3, 'Perdiem', '', 0, 0),
(4, 'Auteursrecht', '', 0, 0),
(5, 'Compositieopdracht', '', 0, 0),
(6, 'Hotel', '', 0, 0),
(7, 'Managementfee', '', 0, 0),
(8, 'Commission contract composers', '', 0, 0),
(9, 'Covid Attendee form', '', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_functies`
--

DROP TABLE IF EXISTS `lst_functies`;
CREATE TABLE `lst_functies` (
  `id` int(11) NOT NULL,
  `team` int(11) NOT NULL DEFAULT '0',
  `name` varchar(150) DEFAULT NULL,
  `toegangsniveaus` text,
  `functiecategorieen` text,
  `portofoon` int(3) NOT NULL DEFAULT '0',
  `issteward` int(3) NOT NULL DEFAULT '0',
  `starttarief` float(10,2) NOT NULL DEFAULT '0.00',
  `uurtarief` float(10,2) NOT NULL DEFAULT '0.00',
  `coordinator` varchar(200) DEFAULT NULL,
  `email` text,
  `groep` int(11) NOT NULL DEFAULT '0',
  `informatie` text,
  `icon` varchar(150) DEFAULT NULL,
  `toonopportaal` int(3) NOT NULL DEFAULT '0',
  `checksum` varchar(150) DEFAULT NULL,
  `vrijwilligerteams` text,
  `materialen` text,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `lst_functies`
--

INSERT INTO `lst_functies` (`id`, `team`, `name`, `toegangsniveaus`, `functiecategorieen`, `portofoon`, `issteward`, `starttarief`, `uurtarief`, `coordinator`, `email`, `groep`, `informatie`, `icon`, `toonopportaal`, `checksum`, `vrijwilligerteams`, `materialen`, `del`) VALUES
(1, 0, 'Algemeen Producent', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(2, 0, 'Artiesten Handeling', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(3, 0, 'Chauffeur', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '8', '', -1),
(4, 0, 'Fotografie', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '2', '', -1),
(5, 0, 'Gastheer/gastvrouw', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '3', '', -1),
(6, 0, 'Hand- en spandiensten', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '7', '', -1),
(7, 0, 'Gewone jongere', '', '', 0, 0, 0.00, 10.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '9', '', 0),
(8, 0, 'Marketing en communicatie', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '6', '', -1),
(9, 0, 'Natuurmuseum', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '16', '', -1),
(10, 0, 'Presentator', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '5', '', -1),
(11, 0, 'Productie', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(12, 0, 'Productieteam CityProms', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(13, 0, 'Stage Producent', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(14, 0, 'Stagehand', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(15, 0, 'Technisch Producent', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(16, 0, 'Uitdelen van flyers', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '4', '', -1),
(17, 0, 'Hoofd marketing/communicatie', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(18, 0, 'Festivalcoördinator', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(19, 0, 'Projectleider', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(20, 0, 'Directeur/bestuurder', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(21, 0, 'Super jongere', '', '', 0, 0, 0.00, 10.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '3', '', 0),
(22, 0, 'Bemensing accreditatie cabine', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '7', '', -1),
(23, 0, 'Publieksbegeleiding', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '3', '', -1),
(24, 0, 'Tickets scannen', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '17', '', -1),
(25, 0, 'Parkeerplaatsen aanwijzen', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '7', '', -1),
(26, 0, 'Koffie/thee/fris schenken', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '3', '', -1),
(27, 0, 'Vrijwilligersbegeleiding', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(28, 0, 'Opnametechnicus', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(29, 0, 'EHBO', '1', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(30, 0, 'Geluidsopname', '', NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', -1),
(31, 0, 'Algehele ondersteuning', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(32, 0, 'Kleding, bandjes, instructies uitdelen', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(33, 0, 'Bladomslaander', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(34, 0, 'Oppas', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1),
(35, 0, 'Ticketcontrole', NULL, NULL, 0, 0, 0.00, 0.00, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, -1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_gastenlijsten`
--

DROP TABLE IF EXISTS `lst_gastenlijsten`;
CREATE TABLE `lst_gastenlijsten` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `event` int(11) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_gasttypes`
--

DROP TABLE IF EXISTS `lst_gasttypes`;
CREATE TABLE `lst_gasttypes` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gastenlijst` int(11) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_inschrijfstatus`
--

DROP TABLE IF EXISTS `lst_inschrijfstatus`;
CREATE TABLE `lst_inschrijfstatus` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `positie` int(3) NOT NULL,
  `positief` int(3) NOT NULL,
  `email` int(11) NOT NULL DEFAULT '0',
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_locatie`
--

DROP TABLE IF EXISTS `lst_locatie`;
CREATE TABLE `lst_locatie` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_lookup`
--

DROP TABLE IF EXISTS `lst_lookup`;
CREATE TABLE `lst_lookup` (
  `id` int(11) NOT NULL,
  `lookupcategory` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_lookup`
--

INSERT INTO `lst_lookup` (`id`, `lookupcategory`, `name`, `position`, `del`) VALUES
(1, 1, 'Ja', 0, 0),
(2, 1, 'Nee', 0, 0),
(3, 2, 'Factuur sturen', 0, 0),
(4, 2, 'Gageverklaring', 0, 0),
(5, 3, '01', 0, 0),
(6, 3, '02', 0, 0),
(7, 3, '03', 0, 0),
(8, 3, '04', 0, 0),
(9, 3, '05', 0, 0),
(10, 3, '06', 0, 0),
(11, 3, '07', 0, 0),
(12, 3, '08', 0, 0),
(13, 3, '09', 0, 0),
(14, 3, '10', 0, 0),
(15, 3, '11', 0, 0),
(16, 3, '12', 0, 0),
(17, 3, '13', 0, 0),
(18, 3, '14', 0, 0),
(19, 3, '15', 0, 0),
(20, 3, '16', 0, 0),
(21, 3, '17', 0, 0),
(22, 2, 'Onbekend', 0, 1),
(23, 4, 'Website', 0, 0),
(24, 4, 'Facebook eerste bekendmaking', 0, 0),
(25, 4, 'Krant', 0, 0),
(26, 4, 'Andere kranten', 0, 0),
(27, 4, 'Instagram', 0, 0),
(28, 4, 'Facebook tweede bekendmaking', 0, 0),
(29, 4, 'Facebook derde bekendmaking', 0, 0),
(67, 11, 'Klassiek', 0, 0),
(68, 11, 'Jeugd', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_lookupcategories`
--

DROP TABLE IF EXISTS `lst_lookupcategories`;
CREATE TABLE `lst_lookupcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `hide` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_lookupcategories`
--

INSERT INTO `lst_lookupcategories` (`id`, `name`, `hide`, `del`) VALUES
(1, 'ja / nee', 0, 0),
(2, 'Betaalwijze artiest', 0, 0),
(3, 'Aantal', 0, 0),
(4, 'Mediakanalen', 0, 0),
(5, 'Kaartverkoop', 0, 0),
(11, 'Genre', 0, 0),
(12, 'Overnachten', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_materiaalitems`
--

DROP TABLE IF EXISTS `lst_materiaalitems`;
CREATE TABLE `lst_materiaalitems` (
  `id` int(11) NOT NULL,
  `materiaal` int(11) NOT NULL DEFAULT '0',
  `omschrijving` varchar(150) DEFAULT NULL,
  `checksum` varchar(150) DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_materialen`
--

DROP TABLE IF EXISTS `lst_materialen`;
CREATE TABLE `lst_materialen` (
  `id` int(11) NOT NULL,
  `omschrijving` text NOT NULL,
  `instructie` text NOT NULL,
  `qrcodegenereren` int(3) NOT NULL DEFAULT '0',
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_pdf`
--

DROP TABLE IF EXISTS `lst_pdf`;
CREATE TABLE `lst_pdf` (
  `id` int(11) NOT NULL,
  `organisation` int(11) NOT NULL DEFAULT '0',
  `project` int(11) NOT NULL DEFAULT '0',
  `event` int(3) NOT NULL DEFAULT '0',
  `persoon` int(3) NOT NULL DEFAULT '0',
  `vrijwilliger` int(3) NOT NULL DEFAULT '0',
  `podia` int(3) NOT NULL DEFAULT '0',
  `name` varchar(150) DEFAULT NULL,
  `soort` varchar(150) DEFAULT NULL,
  `content` text,
  `adresalgemeen` text,
  `adrespersoon` text,
  `individueel` int(3) NOT NULL DEFAULT '0',
  `font` varchar(150) DEFAULT NULL,
  `fontsize` varchar(30) DEFAULT NULL,
  `orientatie` varchar(30) DEFAULT NULL,
  `template` varchar(150) DEFAULT NULL,
  `marginleft` varchar(150) DEFAULT NULL,
  `margintop` varchar(150) DEFAULT NULL,
  `marginright` varchar(150) DEFAULT NULL,
  `taal` varchar(150) NOT NULL,
  `standaardlinkbij` varchar(150) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_pdf`
--

INSERT INTO `lst_pdf` (`id`, `organisation`, `project`, `event`, `persoon`, `vrijwilliger`, `podia`, `name`, `soort`, `content`, `adresalgemeen`, `adrespersoon`, `individueel`, `font`, `fontsize`, `orientatie`, `template`, `marginleft`, `margintop`, `marginright`, `taal`, `standaardlinkbij`, `checksum`, `del`) VALUES
(15, 0, 0, 0, 0, 0, 0, 'Ticket', 'Ticket', '<table width=\"500\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n<tr>\r\n<td valign=\"top\">\r\n<strong>Ticket [ticket_naam]</strong><br />\r\nAantal personen: [aantalpersonen] \r\n<br /><br />\r\n[ticket_orderprefix][orderid]<br />[voornaam] [achternaam]<br />\r\n[email]\r\n</td><td valign=\"top\">\r\n</td></tr></table>', '', '', 0, '', '11', 'P', '', '10', '20', '10', 'ned', '', 'a81411a38btrtr1beba93311001352a8jgh73633b57c927dd1315fe150', 0),
(16, 0, 0, 0, 0, 0, 0, 'Factsheet', 'productieform', '<table>\r\n<tr>\r\n<td style=\"width:100%;font-size:18px;font-family:[fontbold];\">\r\n\r\n<strong>Factsheet [activiteitnaam]</strong>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Locatie</div>\r\n<br/>\r\n[kamer]<br />\r\n[kameradres]<br />\r\n\r\n\r\n<br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Contactpersonen</div>\r\n<br/>\r\n[contactpersonenoverzicht]\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Tijden</div>\r\n<br/>\r\n[tijdenoverzicht]\r\n\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Benodigdheden</div>\r\n<br/>\r\n[benodigdhedenoverzicht]\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Acties</div>\r\n<br/>\r\n[actieoverzicht]\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Composities</div>\r\n<br/>\r\n[compositieoverzicht]\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Personeel</div>\r\n<br/>\r\n[crewoverzicht]\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Documenten</div>\r\n<br/>\r\n[documentenoverzicht]\r\n', NULL, NULL, 0, '', '10', 'P', 'textilium.pdf', '10', '40', '10', 'ned', 'locatieprogramma', 'a81411a38b9d3a81beba933110013nmbnb3248dde2b57c927dd1315fe150', 0),
(17, 0, 0, 0, 0, 0, 0, 'Contract', 'contract', '<table>\r\n<tr>\r\n<td style=\"width:100%;font-size:18px;font-family:[fontbold];\">\r\n\r\n<strong>Contract</strong>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n\r\nadresalgemeen	text	\r\n	\r\nadrespersoon	text	\r\n	\r\nindividueel	int(3)	\r\n\r\nfont	varchar(150)	\r\n	\r\nfontsize	varchar(30)	\r\n	\r\norientatie	varchar(30)	\r\n	\r\ntemplate	varchar(150)	\r\n	\r\nmarginleft	varchar(150)	\r\n	\r\nmargintop	varchar(150)	\r\n	\r\nmarginright	varchar(150)	\r\n	\r\ntaal	varchar(150)	\r\n\r\nstandaardlinkbij	varchar(150)	\r\n\r\nchecksum	varchar(150)	\r\n\r\ndel	int(3)	\r\n  \r\n\r\n\r\n\r\n   en dan   	\r\n	\r\n', NULL, NULL, 0, '', '10', 'P', 'textilium.pdf', '10', '40', '10', 'ned', '', 'irueu837733treter1352a8ac13b3248dde2b57c927dd1315fe150', 0),
(18, 0, 0, 0, 0, 0, 0, 'Locatieoverzicht', 'locatie', '<table>\r\n<tr>\r\n<td style=\"width:100%;font-size:18px;font-family:[fontbold];\">\r\n\r\n<strong>Locatie [podialabel]</strong>\r\n\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n[podiadifferentlabel]\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Parkeren</div>\r\n<br/>\r\n\r\n[locatieparkeren]\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Contactpersonen</div>\r\n<br/>\r\n[contactpersonenoverzicht]\r\n\r\n\r\n\r\n<br /><br />\r\n<div style=\"font-size:14px;font-family:[fontbold];\">Documenten</div>\r\n<br/>\r\n[documentenoverzicht]\r\n', NULL, NULL, 0, '', '10', 'P', 'textilium.pdf', '10', '40', '10', 'ned', '', 'afa3d0bc98ghgh0e68eed40ddf2f68', 0),
(19, 0, 0, 0, 0, 0, 0, 'Vrijwilliger planning', 'vrijwilliger', '<table>\r\n<tr>\r\n<td style=\"width:100%;font-size:18px;font-family:[fontbold];\">\r\nPlanningsoverzicht [vrijwilligergehelenaam]\r\n</td>\r\n</tr>\r\n</table>\r\n\r\n<br /><br />\r\n[crewoverzicht]', NULL, NULL, 0, '', '10', 'P', 'textilium.pdf', '10', '40', '10', 'ned', '', '4c1ed07c52cfb66656affdb9a6144', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_planningstatus`
--

DROP TABLE IF EXISTS `lst_planningstatus`;
CREATE TABLE `lst_planningstatus` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `kleur` varchar(150) NOT NULL,
  `positie` int(3) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_planningstatus`
--

INSERT INTO `lst_planningstatus` (`id`, `name`, `kleur`, `positie`, `del`) VALUES
(1, 'Nog niet gepland', '#e57c35', 1, 0),
(2, 'Gepland', '#e57c35', 2, 0),
(3, 'Aangevraagd', '#e57c35', 3, 0),
(4, 'Bevestigd', '#4ed334', 4, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_portaalontwerp`
--

DROP TABLE IF EXISTS `lst_portaalontwerp`;
CREATE TABLE `lst_portaalontwerp` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `soort` varchar(150) NOT NULL,
  `basisbackground` varchar(150) NOT NULL,
  `buttontext` varchar(150) NOT NULL,
  `buttontexthover` varchar(150) NOT NULL,
  `terugbuttonbackground` varchar(150) NOT NULL,
  `terugbuttontext` varchar(150) NOT NULL,
  `terugbuttontexthover` varchar(150) NOT NULL,
  `logo` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `lst_portaalontwerp`
--

INSERT INTO `lst_portaalontwerp` (`id`, `name`, `soort`, `basisbackground`, `buttontext`, `buttontexthover`, `terugbuttonbackground`, `terugbuttontext`, `terugbuttontexthover`, `logo`, `del`) VALUES
(5, 'Textilium', 'ticket', '#1d2a67', '#ffffff', '#2A331C', '#cfc7b8', '#666666', '#6d7f52', '../share/tickets/textilium.jpg', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_poules`
--

DROP TABLE IF EXISTS `lst_poules`;
CREATE TABLE `lst_poules` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `korteomschrijving` text NOT NULL,
  `langeomschrijving` text NOT NULL,
  `foto` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_programma`
--

DROP TABLE IF EXISTS `lst_programma`;
CREATE TABLE `lst_programma` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `volgorde` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_programma`
--

INSERT INTO `lst_programma` (`id`, `naam`, `volgorde`, `del`) VALUES
(1, 'Hoofdprogramma', 1, 0),
(2, 'Contextprogramma', 2, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_rapportages`
--

DROP TABLE IF EXISTS `lst_rapportages`;
CREATE TABLE `lst_rapportages` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `toonbijevent` int(3) NOT NULL,
  `toonbijpersoon` int(3) NOT NULL,
  `toonbijvrijwilliger` int(3) NOT NULL,
  `toonbijpodia` int(3) NOT NULL,
  `sortby` varchar(150) NOT NULL,
  `toonalstegel` int(3) NOT NULL,
  `toonalleentitel` int(3) NOT NULL,
  `toonperdatum` int(3) NOT NULL,
  `toonperprogrammadatum` int(3) NOT NULL,
  `toonperevenement` int(3) NOT NULL,
  `legehorizontaleregel` int(3) NOT NULL,
  `rapportageveldeneerst` int(3) NOT NULL,
  `basisgegevenswijzigbaar` int(3) NOT NULL,
  `opmerkingen` text NOT NULL,
  `icon` varchar(150) NOT NULL,
  `tab` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_rapportages`
--

INSERT INTO `lst_rapportages` (`id`, `name`, `toonbijevent`, `toonbijpersoon`, `toonbijvrijwilliger`, `toonbijpodia`, `sortby`, `toonalstegel`, `toonalleentitel`, `toonperdatum`, `toonperprogrammadatum`, `toonperevenement`, `legehorizontaleregel`, `rapportageveldeneerst`, `basisgegevenswijzigbaar`, `opmerkingen`, `icon`, `tab`, `del`) VALUES
(1, 'Test', 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'fas fa-bars', 0, 1),
(2, 'Excel', 1, 0, 0, 0, '', 0, 0, 0, 0, 0, 1, 0, 0, '', 'fas fa-bars', 0, 0),
(3, 'Capaciteit', 0, 0, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'fas fa-bars', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_rapportagevelden`
--

DROP TABLE IF EXISTS `lst_rapportagevelden`;
CREATE TABLE `lst_rapportagevelden` (
  `id` int(11) NOT NULL,
  `rapportageid` int(11) NOT NULL,
  `veld` int(11) NOT NULL,
  `tabel` varchar(150) DEFAULT NULL,
  `tabelid` int(11) NOT NULL DEFAULT '0',
  `positie` int(11) NOT NULL,
  `breedte` varchar(50) NOT NULL DEFAULT '200',
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_rapportagevelden`
--

INSERT INTO `lst_rapportagevelden` (`id`, `rapportageid`, `veld`, `tabel`, `tabelid`, `positie`, `breedte`, `del`) VALUES
(1, 1, 214, NULL, 0, 0, '200', 0),
(2, 2, 214, NULL, 0, 8, '684', 0),
(3, 3, 213, NULL, 0, 5, '402', 0),
(4, 3, 29, NULL, 0, 6, '402', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_rapportagezichtbaarheid`
--

DROP TABLE IF EXISTS `lst_rapportagezichtbaarheid`;
CREATE TABLE `lst_rapportagezichtbaarheid` (
  `id` int(11) NOT NULL,
  `rapportage` int(11) NOT NULL,
  `gebruiker` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `lst_rapportagezichtbaarheid`
--

INSERT INTO `lst_rapportagezichtbaarheid` (`id`, `rapportage`, `gebruiker`, `del`) VALUES
(3, 1, 1, 0),
(9, 2, 1, 0),
(10, 2, 73, 0),
(11, 3, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_reserveringsstatus`
--

DROP TABLE IF EXISTS `lst_reserveringsstatus`;
CREATE TABLE `lst_reserveringsstatus` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_rollen`
--

DROP TABLE IF EXISTS `lst_rollen`;
CREATE TABLE `lst_rollen` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `issponsor` int(3) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_rollen`
--

INSERT INTO `lst_rollen` (`id`, `name`, `issponsor`, `del`) VALUES
(1, 'Organisatie', 0, 1),
(2, 'Horeca', 0, 1),
(3, 'Veiligheid', 0, 1),
(4, 'Locaties', 0, 1),
(5, 'Leveranciers', 0, 1),
(6, 'Medewerker', 0, 1),
(7, 'Opnametechnicus (vrijwilliger)', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_roomevent`
--

DROP TABLE IF EXISTS `lst_roomevent`;
CREATE TABLE `lst_roomevent` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `lst_roomevent`
--

INSERT INTO `lst_roomevent` (`id`, `event`, `room`, `del`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 1, 11, 1),
(12, 1, 12, 0),
(13, 1, 13, 1),
(14, 1, 14, 1),
(15, 1, 15, 1),
(16, 1, 16, 1),
(17, 1, 17, 1),
(18, 1, 18, 1),
(19, 1, 19, 1),
(20, 1, 20, 1),
(21, 1, 21, 1),
(22, 1, 22, 1),
(23, 1, 23, 0),
(24, 1, 24, 1),
(25, 1, 25, 0),
(26, 1, 26, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_rooms`
--

DROP TABLE IF EXISTS `lst_rooms`;
CREATE TABLE `lst_rooms` (
  `id` int(11) NOT NULL,
  `label` text NOT NULL,
  `differentlabel` varchar(150) NOT NULL,
  `shortlabel` varchar(150) NOT NULL,
  `calendarid` text NOT NULL,
  `location` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `doelgroep` int(11) NOT NULL,
  `categorie` int(11) NOT NULL,
  `sector` int(11) NOT NULL,
  `alert` text NOT NULL,
  `positie` int(3) NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `longitude` varchar(150) NOT NULL,
  `capaciteit` int(3) NOT NULL,
  `foto` text NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `externverhuren` int(3) NOT NULL DEFAULT '0',
  `tarief4uur` float(6,2) NOT NULL DEFAULT '0.00',
  `tarief8uur` float(6,2) NOT NULL DEFAULT '0.00',
  `tariefextrauur` float(6,2) NOT NULL DEFAULT '0.00',
  `telefoon` varchar(150) DEFAULT NULL,
  `email` text,
  `route` text,
  `technischespecs` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_rooms`
--

INSERT INTO `lst_rooms` (`id`, `label`, `differentlabel`, `shortlabel`, `calendarid`, `location`, `type`, `status`, `room`, `doelgroep`, `categorie`, `sector`, `alert`, `positie`, `latitude`, `longitude`, `capaciteit`, `foto`, `copyof`, `copyitem`, `checksum`, `externverhuren`, `tarief4uur`, `tarief8uur`, `tariefextrauur`, `telefoon`, `email`, `route`, `technischespecs`, `del`) VALUES
(1, 'Locatie 1773941439', 'Adres 1194780770', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '33c2709a6b0813a9c83c8ee3613a3cfc', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(2, 'Locatie 906060724', 'Adres 29833371', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 328, '', 0, '', '33c2709a6b0813a9c83c8ee3613a3cfc', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(3, 'Locatie 1678743322', 'Adres 1254338351', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'fa96e62dd97ac36f9df22003f7eed453', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(4, 'Locatie 602075869', 'Adres 1317365992', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'fa96e62dd97ac36f9df22003f7eed453', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(5, 'Locatie 645883872', 'Adres 969571170', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'fa96e62dd97ac36f9df22003f7eed453', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(6, 'Locatie 1414301479', 'Adres 1653907364', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'fa96e62dd97ac36f9df22003f7eed453', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(7, 'Locatie 1989604938', 'Adres 1625480072', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'fa96e62dd97ac36f9df22003f7eed453', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(8, 'Locatie 471104680', 'Adres 1290931198', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'fa96e62dd97ac36f9df22003f7eed453', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(9, 'Locatie 619199176', 'Adres 1900260392', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'fa96e62dd97ac36f9df22003f7eed453', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(10, 'Locatie 1210187858', 'Adres 1496091187', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'eaf33b329406a28950c16a453bcb64a5', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(11, 'Locatie 1543239708', 'Adres 1199214093', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'eaf33b329406a28950c16a453bcb64a5', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(12, 'Schilderlocatie', 'Schilderlocatie', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'eaf33b329406a28950c16a453bcb64a5', 0, 0.00, 0.00, 0.00, '', '', '', '', 0),
(13, 'Locatie 1479061491', 'Adres 119195333', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'eaf33b329406a28950c16a453bcb64a5', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(14, 'Locatie 530683095', 'Adres 980589208', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'eaf33b329406a28950c16a453bcb64a5', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(15, 'Locatie 379417804', 'Adres 134444136', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'b18d6e270e1da62af2c871c41ef2cb72', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(16, 'Locatie 855557892', 'Adres 2085918818', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'b18d6e270e1da62af2c871c41ef2cb72', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(17, 'Locatie 997648249', 'Adres 1780907092', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', 'b18d6e270e1da62af2c871c41ef2cb72', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(18, 'Locatie 2045318904', 'Adres 1276741641', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '3fd2743eca161134874547103fcedf2c', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(19, 'Locatie 1848798058', 'Adres 392234884', '', '', 3, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '19933f3927d6b3601a8f6978b4ae95e7', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(20, 'Locatie 293135636', 'Adres 1636336471', '', '', 5, 0, 0, 0, 17, 0, 0, '', 1, '', '', 20, '', 0, '', '10bc754ee5141c3060bfdefb3158174b', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(21, 'Locatie 526985281', 'Adres 570639023', '', '', 5, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '10bc754ee5141c3060bfdefb3158174b', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(22, 'Locatie 738874626', 'Adres 1442906925', '', '', 2, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '645f7f843fe7c1a73668411572f20575', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0),
(23, 'Locatie 1754770110', 'Adres 1903708711', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '16d288afb7eae8057d1e26eb6fef69e3', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', -1),
(24, 'Locatie 58949452', 'Adres 336571744', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '1826fa89e70d2019aaae5690b57f998f', 0, 0.00, 0.00, 0.00, '', '', '', '', 0),
(25, 'Locatie 989987223', 'Adres 1723576138', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '87d5efad33f4f3725673bc71dd5552cf', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', -1),
(26, 'Locatie 908302976', 'Adres 993093268', '', '', 1, 0, 0, 0, 17, 0, 0, '', 1, '', '', 0, '', 0, '', '441705f7239a5db026e53e2ba0e7196d', 0, 0.00, 0.00, 0.00, NULL, NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_room_locations`
--

DROP TABLE IF EXISTS `lst_room_locations`;
CREATE TABLE `lst_room_locations` (
  `id` int(11) NOT NULL,
  `name` text,
  `event` int(11) NOT NULL,
  `overnachting` int(3) NOT NULL,
  `positie` int(3) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `soort` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_room_locations`
--

INSERT INTO `lst_room_locations` (`id`, `name`, `event`, `overnachting`, `positie`, `checksum`, `soort`, `del`) VALUES
(1, 'Programmalocatie', 1, 0, 1, '', 'programma', 0),
(2, 'Productielocatie', 1, 0, 2, '', '', 0),
(3, 'Overige locatie', 1, 0, 5, '', '', 0),
(4, 'Kleedkamer', 1, 0, 3, '', 'kleedkamer', 0),
(5, 'Hotel', 1, 1, 4, '', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_room_statuses`
--

DROP TABLE IF EXISTS `lst_room_statuses`;
CREATE TABLE `lst_room_statuses` (
  `id` int(11) NOT NULL,
  `name` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_room_types`
--

DROP TABLE IF EXISTS `lst_room_types`;
CREATE TABLE `lst_room_types` (
  `id` int(11) NOT NULL,
  `name` text,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_sector`
--

DROP TABLE IF EXISTS `lst_sector`;
CREATE TABLE `lst_sector` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `event` varchar(150) NOT NULL,
  `persoon` varchar(150) NOT NULL,
  `vrijwilliger` varchar(150) NOT NULL,
  `aanbod` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_teambenodigdheid`
--

DROP TABLE IF EXISTS `lst_teambenodigdheid`;
CREATE TABLE `lst_teambenodigdheid` (
  `id` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `periode` int(11) NOT NULL,
  `aantalpersonen` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_teamgroepen`
--

DROP TABLE IF EXISTS `lst_teamgroepen`;
CREATE TABLE `lst_teamgroepen` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `omschrijving` text NOT NULL,
  `foto` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_teamperioden`
--

DROP TABLE IF EXISTS `lst_teamperioden`;
CREATE TABLE `lst_teamperioden` (
  `id` int(11) NOT NULL,
  `datumvan` datetime NOT NULL,
  `datumtot` datetime NOT NULL,
  `periode` varchar(150) NOT NULL,
  `groep` varchar(150) NOT NULL,
  `programmaid` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `lst_teamperioden`
--

INSERT INTO `lst_teamperioden` (`id`, `datumvan`, `datumtot`, `periode`, `groep`, `programmaid`, `del`) VALUES
(1, '2021-10-02 09:00:00', '2021-10-02 13:00:00', 'Zaterdagochtend 2 oktober', '', 0, 0),
(2, '2021-09-02 19:00:00', '2021-09-02 22:30:00', 'Zaterdagavond 2 september', '', 0, 0),
(3, '2021-10-02 19:00:00', '2021-10-02 22:30:00', 'Zaterdagavond 2 oktober', '', 0, 0),
(4, '2021-10-03 10:00:00', '2021-10-03 17:30:00', 'Zondag 3 oktober', '', 0, 0),
(5, '2021-10-04 14:00:00', '2021-10-04 21:30:00', 'Maandag 4 oktober', '', 0, 0),
(6, '2021-10-05 19:00:00', '2021-10-05 21:30:00', 'Dinsdag 5 oktober', '', 0, 0),
(7, '2021-10-02 13:00:00', '2021-10-02 18:00:00', 'Zaterdagmiddag 2 oktober', '', 0, 0),
(8, '2021-10-01 13:00:00', '2021-10-01 18:00:00', 'vrijdagmiddag 1 oktober', '', 0, 1),
(9, '2021-10-06 18:00:00', '2021-10-06 22:00:00', 'Woensdag 6 oktober', '', 0, 0),
(10, '2021-10-07 19:00:00', '2021-10-07 22:00:00', 'Donderdag 7 oktober', '', 0, 0),
(11, '2021-10-08 15:00:00', '2021-10-08 18:30:00', 'Vrijdagmiddag 8 oktober', '', 0, 0),
(12, '2021-10-08 19:00:00', '2021-10-08 22:00:00', 'Vrijdagavond 8 oktober', '', 0, 0),
(13, '2021-10-09 09:00:00', '2021-10-09 13:00:00', 'Zaterdagochtend 9 oktober', '', 0, 0),
(14, '2021-10-09 13:00:00', '2021-10-09 18:00:00', 'Zaterdagmiddag 9 oktober', '', 0, 0),
(15, '2021-10-09 18:30:00', '2021-10-09 22:30:00', 'Zaterdagavond 9 oktober', '', 0, 0),
(16, '2021-10-10 09:00:00', '2021-10-10 13:00:00', 'Zondagochtend 10 oktober', '', 0, 0),
(17, '2021-10-10 12:00:00', '2021-10-10 18:00:00', 'Zondagavond 10 oktober', '', 0, 0),
(18, '2022-04-01 10:00:00', '2022-04-01 16:00:00', '', '', 0, 0),
(19, '2022-04-03 10:00:00', '2022-04-03 16:00:00', '', '', 0, 0),
(20, '2022-04-04 10:00:00', '2022-04-04 16:00:00', '', '', 0, 0),
(21, '2022-04-05 10:00:00', '2022-04-05 16:00:00', '', '', 0, 0),
(22, '2022-04-06 10:00:00', '2022-04-06 16:00:00', '', '', 0, 0),
(23, '2022-04-07 10:00:00', '2022-04-07 16:00:00', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_teams`
--

DROP TABLE IF EXISTS `lst_teams`;
CREATE TABLE `lst_teams` (
  `id` int(11) NOT NULL,
  `sub_from` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `coordinator` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `groep` int(11) NOT NULL,
  `informatie` text NOT NULL,
  `icon` varchar(150) NOT NULL,
  `toonopportaal` int(3) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `lst_teams`
--

INSERT INTO `lst_teams` (`id`, `sub_from`, `name`, `coordinator`, `email`, `groep`, `informatie`, `icon`, `toonopportaal`, `checksum`, `del`) VALUES
(1, 0, 'Productieteam CityProms', '', '', 0, '', '', 0, '30501eab6cdc57e7256d53fe191c14ea', 1),
(2, 0, 'Fotografie', '', '', 0, '', '', 1, '5dbe89ffba059fdc5bf4982990f770c3', 1),
(3, 0, 'Super jongere', '', '', 0, 'Als super jongere ben je super creatief en heb je al best wat ervaring met street art', '', 1, '81c88a8a84cc7329c6dee16c9faa8a36', 0),
(4, 0, 'Uitdelen van flyers', '', '', 0, '', '', 1, '81c88a8a84cc7329c6dee16c9faa8a36', 1),
(5, 0, 'Presentator', '', '', 0, '', '', 1, '730adca1ae17c5c69a855a50c645caca', 1),
(6, 0, 'Marketing en communicatie', '', '', 0, '', '', 1, '730adca1ae17c5c69a855a50c645caca', 1),
(7, 0, 'Hand- en spandiensten', '', '', 0, '', '', 0, '730adca1ae17c5c69a855a50c645caca', 1),
(8, 0, 'Chauffeur', '', '', 0, 'Vind je het leuk om artiesten en materialen van punt A naar punt B te brengen? Geef je dan op als chauffeur!', '', 1, '730adca1ae17c5c69a855a50c645caca', 1),
(9, 0, 'Gewone jongere', '', '', 0, 'Heb je nog niet zoveel ervaring met street art, geef je dan op als gewone jongere!', '', 1, '5b9f90dfb50b07e83e9ed56e6c168ee0', 0),
(10, 0, 'Technisch Producent', '', '', 0, '', '', 0, '978f2f45d89649cd2e5791e58159265d', 1),
(11, 0, 'Stage Producent', '', '', 0, '', '', 0, '978f2f45d89649cd2e5791e58159265d', 1),
(12, 0, 'Productie', '', '', 0, '', '', 0, '978f2f45d89649cd2e5791e58159265d', 1),
(13, 0, 'Algemeen Producent', '', '', 0, '', '', 0, '978f2f45d89649cd2e5791e58159265d', 1),
(14, 0, 'Stagehand', '', '', 0, '', '', 0, '27400731ceb135cdd553f503d80d5ba4', 1),
(15, 0, 'Artiesten Handeling', '', '', 0, '', '', 0, '27400731ceb135cdd553f503d80d5ba4', 1),
(16, 0, 'Natuurmuseum', '', '', 0, '', '', 0, '27400731ceb135cdd553f503d80d5ba4', 1),
(17, 0, 'Ticketscanning', '', '', 0, 'Op diverse locaties', '', 1, '1c3fe1c7b842bac8a14c65f6396ab861', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_thema`
--

DROP TABLE IF EXISTS `lst_thema`;
CREATE TABLE `lst_thema` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `opzoeklijst` varchar(150) NOT NULL,
  `lookupcategory` int(11) NOT NULL,
  `matchweging` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_themavragen`
--

DROP TABLE IF EXISTS `lst_themavragen`;
CREATE TABLE `lst_themavragen` (
  `id` int(11) NOT NULL,
  `doelgroep` int(11) NOT NULL,
  `thema` int(11) NOT NULL,
  `vraag` varchar(150) NOT NULL,
  `toelichting` text NOT NULL,
  `volgorde` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_toegangszones`
--

DROP TABLE IF EXISTS `lst_toegangszones`;
CREATE TABLE `lst_toegangszones` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `symbool` varchar(150) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_toegangszones`
--

INSERT INTO `lst_toegangszones` (`id`, `name`, `symbool`, `del`) VALUES
(1, 'Alle zones', 'ALL', 0),
(3, 'Kleedkamer', 'KL', 0),
(4, 'Backstage', 'B', 0),
(5, 'Dinerkamer', 'D', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_vervoer`
--

DROP TABLE IF EXISTS `lst_vervoer`;
CREATE TABLE `lst_vervoer` (
  `id` int(11) NOT NULL,
  `naamnl` text,
  `naamen` varchar(150) NOT NULL,
  `positie` int(3) NOT NULL,
  `isvliegtuig` int(3) NOT NULL,
  `istransportdoorfestival` int(3) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_vervoer`
--

INSERT INTO `lst_vervoer` (`id`, `naamnl`, `naamen`, `positie`, `isvliegtuig`, `istransportdoorfestival`, `del`) VALUES
(1, 'Eigen vervoer', 'Own transportation', 0, 0, 0, 0),
(2, 'Vliegtuig', 'Airplane', 0, 0, 0, 0),
(3, 'Trein', 'Train', 0, 1, 0, 0),
(4, 'Bus', 'Bus', 0, 0, 0, 0),
(5, 'Lokaal transport', 'Local transport by festival', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_vervoerlocaties`
--

DROP TABLE IF EXISTS `lst_vervoerlocaties`;
CREATE TABLE `lst_vervoerlocaties` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) DEFAULT NULL,
  `positie` int(3) NOT NULL,
  `instructiesnl` text NOT NULL,
  `instructiesen` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `lst_vervoerlocaties`
--

INSERT INTO `lst_vervoerlocaties` (`id`, `naam`, `positie`, `instructiesnl`, `instructiesen`, `del`) VALUES
(1, 'Amsterdam', 0, '', '', 0),
(2, 'Rotterdam', 0, '', '', 0),
(3, 'Eindhoven', 0, '', '', 0),
(4, 'Groningen', 0, '', '', 0),
(5, 'Maastricht', 0, '', '', 0),
(6, 'Brussel', 0, '', '', 0),
(7, 'Düsseldorf', 0, '', '', 0),
(8, 'Utrecht', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_voorwaarden`
--

DROP TABLE IF EXISTS `lst_voorwaarden`;
CREATE TABLE `lst_voorwaarden` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `voorwaarden` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lst_wettelijketaak`
--

DROP TABLE IF EXISTS `lst_wettelijketaak`;
CREATE TABLE `lst_wettelijketaak` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_aanbod`
--

DROP TABLE IF EXISTS `map_aanbod`;
CREATE TABLE `map_aanbod` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `eventcontact` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `aanbod` int(11) NOT NULL,
  `typeaanvraag` varchar(150) NOT NULL,
  `titel` varchar(150) NOT NULL,
  `korteomschrijving` text NOT NULL,
  `langeomschrijving` text NOT NULL,
  `specificaties` text NOT NULL,
  `wijbieden` text NOT NULL,
  `aanvullendeinfo` text NOT NULL,
  `adres` text NOT NULL,
  `specifiekedatum` date NOT NULL,
  `emailnotificatie` text NOT NULL,
  `datumgewijzigd` datetime NOT NULL,
  `datum` datetime NOT NULL,
  `foto` text NOT NULL,
  `doelgroep` int(11) NOT NULL,
  `alert` text NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `organisator_naam` varchar(150) NOT NULL,
  `organisator_email` text NOT NULL,
  `wijken` varchar(300) NOT NULL,
  `sector` varchar(150) NOT NULL,
  `definitief` int(3) NOT NULL,
  `thema1` varchar(300) NOT NULL,
  `thema2` varchar(300) NOT NULL,
  `thema3` varchar(300) NOT NULL,
  `thema4` varchar(300) NOT NULL,
  `thema5` varchar(300) NOT NULL,
  `thema6` varchar(300) NOT NULL,
  `thema7` varchar(300) NOT NULL,
  `thema8` varchar(300) NOT NULL,
  `thema9` varchar(300) NOT NULL,
  `thema10` varchar(300) NOT NULL,
  `thema11` varchar(300) NOT NULL,
  `thema12` varchar(300) NOT NULL,
  `thema13` varchar(300) NOT NULL,
  `thema14` varchar(300) NOT NULL,
  `thema15` varchar(300) NOT NULL,
  `validation` datetime NOT NULL,
  `validationreacties` datetime NOT NULL,
  `hyperlink` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_aandacht`
--

DROP TABLE IF EXISTS `map_aandacht`;
CREATE TABLE `map_aandacht` (
  `id` int(11) NOT NULL,
  `aandachtnaam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_api`
--

DROP TABLE IF EXISTS `map_api`;
CREATE TABLE `map_api` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `accesstoken` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_apikoppelingen`
--

DROP TABLE IF EXISTS `map_apikoppelingen`;
CREATE TABLE `map_apikoppelingen` (
  `id` int(11) NOT NULL,
  `api` int(11) NOT NULL,
  `apiveld` varchar(150) NOT NULL,
  `veld` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_articles`
--

DROP TABLE IF EXISTS `map_articles`;
CREATE TABLE `map_articles` (
  `id` int(11) NOT NULL,
  `articlename` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_auth`
--

DROP TABLE IF EXISTS `map_auth`;
CREATE TABLE `map_auth` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `checksum` text NOT NULL,
  `password` text NOT NULL,
  `lastlogin` datetime NOT NULL,
  `numberoflogins` int(11) NOT NULL,
  `resetlinkvalid` datetime NOT NULL,
  `added` datetime NOT NULL,
  `priv_akkoord_nieuwsbrief` datetime NOT NULL,
  `priv_akkoord_nieuwsbrief_content` text NOT NULL,
  `priv_akkoord_voorwaarden` datetime NOT NULL,
  `priv_akkoord_voorwaarden_content` text NOT NULL,
  `priv_akkoord_privacy` datetime NOT NULL,
  `priv_akkoord_privacy_content` text NOT NULL,
  `priv_akkoord_match` datetime NOT NULL,
  `priv_akkoord_match_content` text NOT NULL,
  `priv_akkoord_losseklus` datetime NOT NULL,
  `priv_akkoord_losseklus_content` text NOT NULL,
  `priv_akkoord_organisaties` datetime NOT NULL,
  `priv_akkoord_organisaties_content` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_autorisatie`
--

DROP TABLE IF EXISTS `map_autorisatie`;
CREATE TABLE `map_autorisatie` (
  `id` int(11) NOT NULL,
  `autorisatierol` int(11) DEFAULT NULL,
  `tabblad` int(11) DEFAULT NULL,
  `waarde` int(3) DEFAULT NULL,
  `del` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_autorisatie`
--

INSERT INTO `map_autorisatie` (`id`, `autorisatierol`, `tabblad`, `waarde`, `del`) VALUES
(2, 4, 1, 2, -1),
(4, 4, 9, 2, -1),
(5, 4, 7, 2, -1),
(6, 4, 2, 2, -1),
(7, 6, 1, 2, -1),
(10, 6, 7, 2, -1),
(11, 6, 2, 2, -1),
(12, 6, 5, 2, -1),
(13, 6, 2, 2, -1),
(15, 4, 5, 2, -1),
(17, 6, 1, 2, 0),
(18, 6, 11, 2, -1),
(19, 6, 2, 2, -1),
(20, 6, 9, 2, -1),
(21, 6, 7, 2, -1),
(22, 4, 1, 2, 0),
(23, 4, 11, 2, -1),
(24, 4, 2, 2, -1),
(25, 4, 9, 2, 0),
(26, 4, 7, 2, -1),
(27, 6, 9, 2, -1),
(28, 6, -3, 2, 0),
(29, 6, -4, 2, 0),
(30, 4, -3, 2, 0),
(31, 4, -4, 2, 0),
(32, 7, 1, 1, 0),
(33, 7, 11, 1, -1),
(34, 7, 2, 1, -1),
(35, 7, 7, 1, -1),
(36, 7, -3, 1, 0),
(37, 7, -4, 1, 0),
(38, 4, 12, 2, 0),
(39, 6, 12, 2, 0),
(40, 7, 12, 1, 0),
(41, 6, 13, 2, 0),
(42, 4, 13, 2, 0),
(43, 7, 13, 1, 0),
(44, 6, 17, 2, 0),
(45, 6, 18, 2, 0),
(46, 6, 19, 2, 0),
(47, 6, 20, 2, 0),
(48, 6, 14, 2, 0),
(49, 6, 15, 2, 0),
(50, 6, 16, 2, 0),
(51, 4, 17, 2, 0),
(52, 4, 18, 2, 0),
(53, 4, 19, 2, 0),
(54, 4, 20, 2, 0),
(55, 4, 14, 2, 0),
(56, 4, 15, 2, 0),
(57, 4, 16, 2, 0),
(58, 7, 17, 1, 0),
(59, 7, 18, 1, 0),
(60, 7, 19, 1, 0),
(61, 7, 20, 1, 0),
(62, 7, 14, 1, 0),
(63, 7, 15, 1, 0),
(64, 7, 16, 1, 0),
(65, 4, 21, 2, 0),
(66, 6, 21, 2, 0),
(67, 7, 21, 1, 0),
(68, 6, 22, 2, 0),
(69, 4, 22, 2, 0),
(70, 7, 22, 1, 0),
(71, 6, 23, 2, 0),
(72, 4, 23, 2, 0),
(73, 7, 23, 1, 0),
(74, 6, 24, 2, 0),
(75, 4, 24, 2, 0),
(76, 7, 24, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_autorisatierol`
--

DROP TABLE IF EXISTS `map_autorisatierol`;
CREATE TABLE `map_autorisatierol` (
  `id` int(11) NOT NULL,
  `naam` char(150) DEFAULT NULL,
  `positie` int(3) NOT NULL,
  `del` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_autorisatierol`
--

INSERT INTO `map_autorisatierol` (`id`, `naam`, `positie`, `del`) VALUES
(4, 'Alle rechten, inclusief financieel', 0, 0),
(6, 'Alle rechten, exclusief financieel', 0, 0),
(7, 'View only', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_bereiding`
--

DROP TABLE IF EXISTS `map_bereiding`;
CREATE TABLE `map_bereiding` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_blokkenschema`
--

DROP TABLE IF EXISTS `map_blokkenschema`;
CREATE TABLE `map_blokkenschema` (
  `id` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `xstep` int(8) NOT NULL,
  `xsize` int(8) NOT NULL,
  `xlength` int(8) NOT NULL,
  `xstart` int(8) NOT NULL,
  `toonkosten` int(3) NOT NULL,
  `naamkosten` varchar(150) NOT NULL,
  `color1name` varchar(150) NOT NULL,
  `color1code` varchar(20) NOT NULL,
  `color1isshow` int(3) NOT NULL,
  `color2name` varchar(150) NOT NULL,
  `color2code` varchar(20) NOT NULL,
  `color2isshow` int(3) NOT NULL,
  `color3name` varchar(150) NOT NULL,
  `color3code` varchar(150) NOT NULL,
  `color3isshow` int(3) NOT NULL,
  `color4name` varchar(150) NOT NULL,
  `color4code` varchar(150) NOT NULL,
  `color4isshow` int(3) NOT NULL,
  `color5name` varchar(150) NOT NULL,
  `color5code` varchar(150) NOT NULL,
  `color5isshow` int(3) NOT NULL,
  `color6name` varchar(150) NOT NULL,
  `color6code` varchar(150) NOT NULL,
  `color6isshow` int(3) NOT NULL,
  `color7name` varchar(150) NOT NULL,
  `color7code` varchar(150) NOT NULL,
  `color7isshow` int(3) NOT NULL,
  `color8name` varchar(150) NOT NULL,
  `color8code` varchar(150) NOT NULL,
  `color8isshow` int(3) NOT NULL,
  `color9name` varchar(150) NOT NULL,
  `color9code` varchar(150) NOT NULL,
  `color9isshow` int(3) NOT NULL,
  `color10name` varchar(150) NOT NULL,
  `color10code` varchar(150) NOT NULL,
  `color10isshow` int(3) NOT NULL,
  `color11name` varchar(150) NOT NULL,
  `color11code` varchar(150) NOT NULL,
  `color12name` varchar(150) NOT NULL,
  `color12code` varchar(150) NOT NULL,
  `color13name` varchar(150) NOT NULL,
  `color13code` varchar(150) NOT NULL,
  `color14name` varchar(150) NOT NULL,
  `color14code` varchar(150) NOT NULL,
  `color15name` varchar(150) NOT NULL,
  `color15code` varchar(150) NOT NULL,
  `description1show` int(3) NOT NULL,
  `description1title` varchar(150) NOT NULL,
  `description2show` int(3) NOT NULL,
  `description2title` varchar(150) NOT NULL,
  `description3show` int(3) NOT NULL,
  `description3title` varchar(150) NOT NULL,
  `description4show` int(3) NOT NULL,
  `description4title` varchar(150) NOT NULL,
  `description5show` int(3) NOT NULL,
  `description5title` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_blokkenschema`
--

INSERT INTO `map_blokkenschema` (`id`, `startdate`, `xstep`, `xsize`, `xlength`, `xstart`, `toonkosten`, `naamkosten`, `color1name`, `color1code`, `color1isshow`, `color2name`, `color2code`, `color2isshow`, `color3name`, `color3code`, `color3isshow`, `color4name`, `color4code`, `color4isshow`, `color5name`, `color5code`, `color5isshow`, `color6name`, `color6code`, `color6isshow`, `color7name`, `color7code`, `color7isshow`, `color8name`, `color8code`, `color8isshow`, `color9name`, `color9code`, `color9isshow`, `color10name`, `color10code`, `color10isshow`, `color11name`, `color11code`, `color12name`, `color12code`, `color13name`, `color13code`, `color14name`, `color14code`, `color15name`, `color15code`, `description1show`, `description1title`, `description2show`, `description2title`, `description3show`, `description3title`, `description4show`, `description4title`, `description5show`, `description5title`, `del`) VALUES
(29, '2020-11-05', 15, 60, 96, 36, 1, 'Uitkoop', 'Programma', '#FF9933', 0, 'Setup time', '#b9bbb6', 0, 'Reheasal', '#0288d1', 0, 'Final rehearsal', '#9574ce', 0, 'Tuning', '#fd8ce1', 0, 'Introduction', '#e05b63', 0, 'Masterclass', '#ffdd77', 0, 'Meeting', '#ba6522', 0, 'Extra programma', '#009966', 0, '', '#b8dc78', 0, '', '', '', '', '', '', '', '', '', '', 0, '', 0, '', 0, '', 0, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_changes`
--

DROP TABLE IF EXISTS `map_changes`;
CREATE TABLE `map_changes` (
  `id` int(11) NOT NULL,
  `gebruiker` int(11) NOT NULL DEFAULT '0',
  `portaalgebruiker` int(3) NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL DEFAULT '0',
  `persoonid` int(11) NOT NULL DEFAULT '0',
  `vrijwilligerid` int(11) NOT NULL DEFAULT '0',
  `podiaid` int(11) NOT NULL DEFAULT '0',
  `part` varchar(150) DEFAULT NULL,
  `partid` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL,
  `deelname` int(11) NOT NULL,
  `changeaction` varchar(50) NOT NULL,
  `changefield` varchar(150) NOT NULL,
  `oldvalue` text,
  `changevalue` varchar(150) NOT NULL,
  `changedate` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_changes`
--

INSERT INTO `map_changes` (`id`, `gebruiker`, `portaalgebruiker`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `part`, `partid`, `event`, `deelname`, `changeaction`, `changefield`, `oldvalue`, `changevalue`, `changedate`, `del`) VALUES
(1, 1, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '1', '2021-09-15 09:17:16', 0),
(2, 1, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '1', '2021-09-15 12:45:03', 0),
(3, 1, 0, 1, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'dienst Opklaptafels', NULL, '', '2021-09-15 12:45:17', 0),
(4, 1, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, 'test', '2021-09-15 14:45:42', 0),
(5, 1, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, '', '2021-09-15 14:45:46', 0),
(6, 1, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '1', '2021-09-15 16:44:53', 0),
(7, 1, 0, 2, 0, 0, 0, NULL, 2, 0, 0, 'edit', 'dienst 1', NULL, '', '2021-09-15 16:45:06', 0),
(8, 1, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'contractant', NULL, 'Test', '2021-09-15 16:47:28', 0),
(9, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 13:27:32', 0),
(10, 71, 0, 2, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '100 % 328', '2021-09-16 13:32:10', 0),
(11, 71, 0, 2, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '100 % 328\\\\r\\\\n75%', '2021-09-16 13:32:28', 0),
(12, 71, 0, 3, 0, 0, 0, NULL, 1, 0, 0, 'delete', 'dienst 1', NULL, '', '2021-09-16 13:33:41', 0),
(13, 1, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'testfotojpg06e5a57c23d2183b16f9abe7f8a236d4.jpg', '2021-09-16 13:45:58', 0),
(14, 1, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, 'testfotojpg06e5a57c23d2183b16f9abe7f8a236d4.jpg', '2021-09-16 13:46:05', 0),
(15, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CircusCharmsdocx3c127dcece6c72550e8b04a1e4985c1e.docx', '2021-09-16 13:47:25', 0),
(16, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021ingevdocx0f5f8cea9b2a37a5415879ab8095b76e.docx', '2021-09-16 13:47:35', 0),
(17, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00140947copyHansHijmering-scaledjpg8548241381b1ed4d3f5cd2709545abe7.jpg', '2021-09-16 13:47:41', 0),
(18, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '2800146307HansHijmering-scaledjpgc03360c19a9ba0230085195ba35f40c6.jpg', '2021-09-16 13:48:27', 0),
(19, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00091592HansHijmering-scaledjpgc03360c19a9ba0230085195ba35f40c6.jpg', '2021-09-16 13:48:27', 0),
(20, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '2500141297HansHijmering-scaledjpg7693f5abbeaac8beb4caf471acd55ae5.jpg', '2021-09-16 13:52:33', 0),
(21, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '2800146307HansHijmering-scaledjpg7693f5abbeaac8beb4caf471acd55ae5.jpg', '2021-09-16 13:52:33', 0),
(22, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '2800146307HansHijmering-scaledjpgdf7f407a6e87349aa8b56e25fba82014.jpg', '2021-09-16 13:52:40', 0),
(23, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00091592HansHijmering-scaledjpgdf7f407a6e87349aa8b56e25fba82014.jpg', '2021-09-16 13:52:40', 0),
(24, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00097281copyHansHijmering-scaledjpg1838ed2eb0291c4ac9eb4dc6ed70910a.jpg', '2021-09-16 13:52:44', 0),
(25, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00091592HansHijmering-scaledjpg1838ed2eb0291c4ac9eb4dc6ed70910a.jpg', '2021-09-16 13:52:44', 0),
(26, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00097281copyHansHijmering-scaledjpg21f7ea62739a0ac1002e69cc4326e812.jpg', '2021-09-16 13:52:48', 0),
(27, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00099955copyHansHijmering-scaledjpgda7516bf173503c15cd99a29620bffed.jpg', '2021-09-16 13:52:52', 0),
(28, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00100953copyHansHijmering-scaledjpgda7516bf173503c15cd99a29620bffed.jpg', '2021-09-16 13:52:52', 0),
(29, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '2500141297HansHijmering-scaledjpgda8b45f7ecf7096c60ad051ba332df9d.jpg', '2021-09-16 13:53:20', 0),
(30, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00136951r-scaledjpgda8b45f7ecf7096c60ad051ba332df9d.jpg', '2021-09-16 13:53:20', 0),
(31, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '00140947copyHansHijmering-scaledjpg4e89afec4640eb47ec6aaac48c726999.jpg', '2021-09-16 13:53:27', 0),
(32, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, '2800146307HansHijmering-scaledjpgdf7f407a6e87349aa8b56e25fba82014.jpg', '2021-09-16 13:53:53', 0),
(33, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, '00097281copyHansHijmering-scaledjpg21f7ea62739a0ac1002e69cc4326e812.jpg', '2021-09-16 13:54:27', 0),
(34, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, '00091592HansHijmering-scaledjpg1838ed2eb0291c4ac9eb4dc6ed70910a.jpg', '2021-09-16 13:54:58', 0),
(35, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, '2800146307HansHijmering-scaledjpgc03360c19a9ba0230085195ba35f40c6.jpg', '2021-09-16 13:56:21', 0),
(36, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FrankenRenjpegf3cd81456a8cd51aeef99dd8439d85dd.jpeg', '2021-09-16 13:57:23', 0),
(37, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'mailjpegdac37835ef1a2a530ac70b1fae53d83a.jpeg', '2021-09-16 13:57:39', 0),
(38, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'mailpng49376e6ba524b9dd3db12e9513646edc.png', '2021-09-16 14:00:22', 0),
(39, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 14:04:24', 0),
(40, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 14:08:07', 0),
(41, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 14:10:11', 0),
(42, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '2 acteurs\\\\r\\\\n1 VJ/acteur\\\\r\\\\n1 violist \\\\r\\\\n1 cellist\\\\r\\\\n1 contrabassist\\\\r\\\\n1 fluitist\\\\r\\\\n1 hoboist\\\\r\\\\n1 hoornist\\\\r\\\\n1 slagwerker\\\\r\\\\n1', '2021-09-16 14:11:09', 0),
(43, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'Vleugel', '2021-09-16 14:11:23', 0),
(44, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Vleugel\r\nDezelfde dag stemmen', '2021-09-16 14:14:35', 0),
(45, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '3', '2021-09-16 14:17:33', 0),
(46, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '4', '2021-09-16 14:18:32', 0),
(47, 71, 0, 3, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'dienst 2 ervaren theatertechnici', NULL, '', '2021-09-16 14:18:53', 0),
(48, 71, 0, 3, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'dienst 2 ervaren theatertechnici', NULL, '', '2021-09-16 14:20:06', 0),
(49, 71, 0, 5, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'actie Vleugel\r\nDezelfde dag stemmen', NULL, '', '2021-09-16 14:20:52', 0),
(50, 71, 0, 5, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'actie Vleugel\r\nDezelfde dag stemmen op 442 Hz', NULL, '', '2021-09-16 14:21:25', 0),
(51, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'website', NULL, 'butwhatabout.nl', '2021-09-16 15:48:07', 0),
(52, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Jannelieke Schmidt, spreekstalmeesteres\\\\r\\\\nToon Oomen, percussie\\\\r\\\\nVincent Martig, klarinetten\\\\r\\\\nWilco Oomkes, accordeon\\\\r\\\\n\\\\r\\\\n', '2021-09-16 15:49:40', 0),
(53, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 15:51:11', 0),
(54, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '5', '2021-09-16 15:54:51', 0),
(55, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '6', '2021-09-16 15:55:55', 0),
(56, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Justpressplaydocx25db292a5b43cd87c482f0c255579959.docx', '2021-09-16 15:57:19', 0),
(57, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Trailerdocx0e9b2a4c0d7f1072fa7b830df2e0eef6.docx', '2021-09-16 15:57:20', 0),
(58, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VRAGEN1DOC64e1f02d54694bbd2ec0f6ca0899382f.DOC', '2021-09-16 15:59:54', 0),
(59, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'DSC6164-42-5x7900x643png5a33834e11d71bfd9ea1d8da3121601c.png', '2021-09-16 16:02:32', 0),
(60, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'DSC6164-42-5x7jpg200d89e9c018211b049f6f2be5937b40.jpg', '2021-09-16 16:02:46', 0),
(61, 71, 0, 26, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 16:24:13', 0),
(62, 71, 0, 26, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '1', '2021-09-16 16:25:04', 0),
(63, 71, 0, 26, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '7', '2021-09-16 16:26:41', 0),
(64, 71, 0, 7, 0, 0, 0, NULL, 7, 0, 0, 'edit', 'dienst klapstoelen', NULL, '', '2021-09-16 16:27:31', 0),
(65, 71, 0, 6, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'dienst Opklaptafels', NULL, '', '2021-09-16 16:27:43', 0),
(66, 71, 0, 26, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-16 16:28:58', 0),
(67, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'Flyer BresK festival', '2021-09-16 16:45:56', 0),
(68, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'Flyers BresK festival', '2021-09-16 16:46:04', 0),
(69, 71, 0, 2, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'dienst Afstopping in overleg vanwege akoestiek', NULL, '', '2021-09-16 16:51:47', 0),
(70, 71, 0, 3, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'dienst theatertechnici', NULL, '', '2021-09-16 16:52:02', 0),
(71, 71, 0, 2, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'dienst Afstopping in overleg vanwege akoestiek', NULL, '', '2021-09-16 16:53:05', 0),
(72, 71, 0, 3, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'dienst theatertechnici', NULL, '', '2021-09-16 16:53:12', 0),
(73, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 18:53:09', 0),
(74, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '3', '2021-09-16 18:55:00', 0),
(75, 71, 0, 1, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'functie 3', NULL, '', '2021-09-16 18:55:23', 0),
(76, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021Janneliekedocx1ee9aa07bf7caed15a650fca72eaf1d5.docx', '2021-09-16 19:56:44', 0),
(77, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '20200123Jannelieke-125-1HenryFaberjpgcb172ee2a91548c189c49dfc82035a18.jpg', '2021-09-16 19:58:09', 0),
(78, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '20200123Jannelieke-148-2HenryFaberjpg9796e9fd9996d72d26f7afecc32a2d5a.jpg', '2021-09-16 19:58:24', 0),
(79, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '20200123Jannelieke-206HenryFaberjpg8499f37498edff491c9b88fd5db15e59.jpg', '2021-09-16 19:58:50', 0),
(80, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '20200123Jannelieke-156-1HenryFaberjpg4e535dfe397206016c29adedfb13cf4c.jpg', '2021-09-16 19:59:19', 0),
(81, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Bloemen', '2021-09-16 20:00:00', 0),
(82, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '8', '2021-09-16 20:00:27', 0),
(83, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Bloemen', '2021-09-16 20:05:40', 0),
(84, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '9', '2021-09-16 20:07:28', 0),
(85, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '10', '2021-09-16 20:08:42', 0),
(86, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021-ENGdocx0088cbc19d47ebcf4cba2a56f844d1c5.docx', '2021-09-16 20:09:35', 0),
(87, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:25:00', 0),
(88, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:26:44', 0),
(89, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:27:52', 0),
(90, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:29:08', 0),
(91, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:32:31', 0),
(92, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:34:21', 0),
(93, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:35:15', 0),
(94, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:36:38', 0),
(95, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:37:29', 0),
(96, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:38:18', 0),
(97, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:43:04', 0),
(98, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:43:57', 0),
(99, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:46:55', 0),
(100, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 20:47:51', 0),
(101, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '8', '2021-09-16 20:49:16', 0),
(102, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Bloemen', '2021-09-16 20:49:27', 0),
(103, 71, 0, 31, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-09-16 20:50:25', 0),
(104, 71, 0, 31, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-09-16 20:50:53', 0),
(105, 71, 0, 30, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-09-16 20:51:23', 0),
(106, 71, 0, 29, 0, 0, 0, NULL, 2, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-09-16 20:51:46', 0),
(107, 71, 0, 29, 0, 0, 0, NULL, 2, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-09-16 20:53:18', 0),
(108, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'HCJOCgospelnightinconcertgebouwfotoericvannieuwland204343jpgb118170259df8c0458e0ff8e32098dd8.jpg', '2021-09-16 21:03:54', 0),
(109, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'RiderJazzOrchestraoftheConcertgebouwmetzangversieDEFpdff7ccfffced55eae8c14fa086f277af47.pdf', '2021-09-16 21:04:07', 0),
(110, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'StevieWonderaangepastetekstdocxa2e589da0416087a12a24ebfd65f3903.docx', '2021-09-16 21:04:14', 0),
(111, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 21:11:48', 0),
(112, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 21:12:50', 0),
(113, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-16 21:15:10', 0),
(114, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'Merchandise tafel met stroom', '2021-09-16 21:22:20', 0),
(115, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '20 leden, dirigent en solist', '2021-09-16 21:22:50', 0),
(116, 71, 0, 3, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-16 21:33:59', 0),
(117, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4 leden\\\\r\\\\nLaurens: piano, synth.\\\\r\\\\nNathalie: contrabas, zang\\\\r\\\\nKasper: saxofoon, effecten\\\\r\\\\nTimon: visuals', '2021-09-16 21:39:16', 0),
(118, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'Zie TR', '2021-09-16 21:39:46', 0),
(119, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MedanTrioHospitalityrider1pdf552d4cc94d4875e80f3caa95a5da46dd.pdf', '2021-09-16 21:40:31', 0),
(120, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'TechnicalRiderStageplot-MedanTrioHetVerhaalvanTareqpdfc52f7c9c501470c035f5fd93ea71e04f.pdf', '2021-09-16 21:40:50', 0),
(121, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021MedanTriopdf62886eb1cc735724b193ed56e24f3786.pdf', '2021-09-16 21:40:56', 0),
(122, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'medanfotohiresjpgc100b7441eaadc3c3ea2dc7f298e4fb6.jpg', '2021-09-16 21:41:36', 0),
(123, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-16 21:43:06', 0),
(124, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '13', '2021-09-16 21:45:00', 0),
(125, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '13', '2021-09-16 21:46:13', 0),
(126, 71, 0, 14, 0, 0, 0, NULL, 13, 0, 0, 'edit', 'dienst Zangmicrofoon', NULL, '', '2021-09-16 21:47:04', 0),
(127, 71, 0, 3, 0, 0, 0, NULL, 15, 0, 0, 'delete', 'dienst 13', NULL, '', '2021-09-16 21:47:09', 0),
(128, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '14', '2021-09-16 21:47:38', 0),
(129, 71, 0, 14, 0, 0, 0, NULL, 13, 0, 0, 'edit', 'dienst Zangmicrofoon', NULL, '', '2021-09-16 21:49:45', 0),
(130, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Techniek regelen', '2021-09-16 21:50:42', 0),
(131, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'EP\\\\\\\'s verkopen', '2021-09-16 21:53:10', 0),
(132, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, '2 parkeerkaarten', '2021-09-16 21:54:46', 0),
(133, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Spiegel', '2021-09-16 21:55:50', 0),
(134, 71, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoEvadeWildejpg0578386a5ee4d02a115d7acf49ecd35c.jpg', '2021-09-16 21:57:38', 0),
(135, 71, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoNikkivanVlietjpgdedd1b94327e9b22676b56eb302d40dd.jpg', '2021-09-16 21:57:44', 0),
(136, 71, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021tbvNHLStendenkoordocxf361909065966017e230429d018fe4d6.docx', '2021-09-16 21:57:50', 0),
(137, 71, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 22:02:27', 0),
(138, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 22:05:53', 0),
(139, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '19 strijkers\\\\r\\\\nColori Ensemble (fluit,hobo,marimba en piano\\\\r\\\\ntenorsolist', '2021-09-16 22:06:47', 0),
(140, 71, 0, 6, 0, 0, 0, NULL, 10, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-16 22:07:17', 0),
(141, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021InnocentYouthdocx46defcd1501746b7e53344e39f795ba9.docx', '2021-09-16 22:07:39', 0),
(142, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'WilliamKnightTenorjpgjpge6dae0e3e7e5aa52ff073ee6128e7a3b.jpg', '2021-09-16 22:07:49', 0),
(143, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CITYPROMSPosterA42021InnocentYouthv3pdf1bedbb7b578d998cbd93f1c36359c29f.pdf', '2021-09-16 22:08:53', 0),
(144, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'ColoriensembleFoppeSchutlowres7FS7852jpgjpgf7600691a16e3751f6a008cebf9f1a3a.jpg', '2021-09-16 22:09:08', 0),
(145, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:10:49', 0),
(146, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:11:15', 0),
(147, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:11:44', 0),
(148, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:12:43', 0),
(149, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:13:12', 0),
(150, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Daan Verlaan: Harp en tenor\\\\r\\\\nYung-Tuan Ku: Percussie', '2021-09-16 22:16:02', 0),
(151, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Daan Verlaan: Harp en tenor\\\\r\\\\nYung-Tuan Ku: Percussie\\\\r\\\\nRudi van Hest: Techniek', '2021-09-16 22:16:46', 0),
(152, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'Speelvlak 6x10 meter podium op podium (incl. publiek)', '2021-09-16 22:17:26', 0),
(153, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 22:21:16', 0),
(154, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'LichtplanStapel22juni2021pdf1359067bb34c13694b8bb1fbfcea5973.pdf', '2021-09-16 22:21:49', 0),
(155, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'TechnischelijstStapelpdfe9a043d3cba2e724097726eb1d878383.pdf', '2021-09-16 22:21:56', 0),
(156, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Stapeljpeg44b779ae9267e04c43bd3058fecd0b25.jpeg', '2021-09-16 22:22:16', 0),
(157, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'Speelvlak 6x10 meter podium op podium (incl. publiek)\\\\r\\\\nZie TR en lichtplan', '2021-09-16 22:23:16', 0),
(158, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 22:25:25', 0),
(159, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Reina: sopraansax\\\\r\\\\nJoke: altsax\\\\r\\\\nErik: tenorsax\\\\r\\\\nGerjanne: baritonsax\\\\r\\\\n', '2021-09-16 22:26:32', 0),
(160, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, '4 stoelen zonder leuning', '2021-09-16 22:26:50', 0),
(161, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '15', '2021-09-16 22:27:31', 0),
(162, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, '4 stoelen zonder leuning in een halve circel', '2021-09-16 22:28:12', 0),
(163, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, '4 stoelen zonder armleuning in een halve circel', '2021-09-16 22:28:33', 0),
(164, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, '4 stoelen zonder armleuningen in een halve circel', '2021-09-16 22:28:49', 0),
(165, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'QuatreForte2jpge0e85266dc006e93d19b695fb48737cb.jpg', '2021-09-16 22:32:09', 0),
(166, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021QuatreFortepdf0f9bd46e4115bf8acbd7ab8facdb3f63.pdf', '2021-09-16 22:32:13', 0),
(167, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:34:29', 0),
(168, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:35:01', 0),
(169, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:35:41', 0),
(170, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:36:22', 0),
(171, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-16 22:36:52', 0),
(172, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Channa: zang\\\\r\\\\nIzhar: gitaar', '2021-09-16 22:53:57', 0),
(173, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, '1 stoel zonder leuning', '2021-09-16 22:54:19', 0),
(174, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '15', '2021-09-16 22:55:02', 0),
(175, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Overleg met Paleis van Justitie', '2021-09-16 22:56:26', 0),
(176, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Overleg Paleis van Justitie', '2021-09-16 22:56:59', 0),
(177, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021MalkinenEliasdocx0578386a5ee4d02a115d7acf49ecd35c.docx', '2021-09-16 22:57:38', 0),
(178, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MD-MalkinElias129-fotograafMerlijnDoomernik900x675jpgjpg9a1c1b315b852a77dc3fe80c1d1f844f.jpg', '2021-09-16 22:57:46', 0),
(179, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'duomalkineliasokt2021leeuwardencitypromspdf2946a8aec6dbf91385a98ad67fec3b21.pdf', '2021-09-16 22:57:59', 0),
(180, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'duomalkineliasokt2021leeuwardencitypromsdocx2fb76910a573a8de87eb3565d7fa073f.docx', '2021-09-16 22:58:11', 0),
(181, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MD-MalkinElias129-fotograafMerlijnDoomernikjpgjpg49376e6ba524b9dd3db12e9513646edc.jpg', '2021-09-16 23:00:22', 0),
(182, 71, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 23:03:24', 0),
(183, 71, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021Workshopinclusiviteitdocx12c7b513e65b4fdd5a9eb412a10e1596.docx', '2021-09-16 23:08:52', 0),
(184, 71, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'HoomanNassimiportrait2020jpg4ce56cc3016bd7640f3f31d4fa2d3b52.jpg', '2021-09-16 23:09:04', 0),
(185, 71, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '16', '2021-09-16 23:11:37', 0),
(186, 71, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '17', '2021-09-16 23:14:28', 0),
(187, 71, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '18', '2021-09-16 23:17:02', 0),
(188, 71, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '19', '2021-09-16 23:18:23', 0),
(189, 71, 0, 4, 0, 0, 0, NULL, 19, 0, 0, 'edit', 'functie 19', NULL, '', '2021-09-16 23:18:37', 0),
(190, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 23:20:24', 0),
(191, 71, 0, 11, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 23:21:29', 0),
(192, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '12 zangers\\\\r\\\\n1 pianist\\\\r\\\\n1 dirigent', '2021-09-16 23:34:18', 0),
(193, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'vleugel en een lessenaar', '2021-09-16 23:34:56', 0),
(194, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-16 23:35:37', 0),
(195, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '17', '2021-09-16 23:36:26', 0),
(196, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CVPAdamenMariavanNieukerkenCityPromsdocx6df6c0bff9de41d0c5f2e6f0594a9fff.docx', '2021-09-16 23:51:45', 0),
(197, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MozartsRequiemprogrammabeschrijvingversie4julidocx2ec9a193997d438883897f707f2624a4.docx', '2021-09-16 23:51:54', 0),
(198, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MariavanNieukerken-fotoLouWolfsversie6septjpga4e15130fef885faa6dbc3107e8cfd3e.jpg', '2021-09-16 23:52:02', 0),
(199, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'GroepsfotoPAdamjpgc195a3d35df67f963e4c1a07021a4318.jpg', '2021-09-16 23:52:12', 0),
(200, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'PAdamMozartsRequiemnajaar2021jpg1838ed2eb0291c4ac9eb4dc6ed70910a.jpg', '2021-09-16 23:52:44', 0),
(201, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 23:54:35', 0),
(202, 71, 0, 13, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-16 23:55:50', 0),
(203, 71, 0, 13, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4 zangers en een pianist', '2021-09-16 23:58:14', 0),
(204, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '1 pianist', '2021-09-17 00:00:38', 0),
(205, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-17 00:02:02', 0),
(206, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'BiografieFransDouweSlotdocx4e3e6a7e8e60c20f8db3a2d3731e3b18.docx', '2021-09-17 00:02:45', 0),
(207, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021FDSlotdocx0346f83d3b0e3705c55f914a03f9142e.docx', '2021-09-17 00:02:54', 0),
(208, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '0C195B1A-2942-46A5-BEED-AC22F3699382InskedeVriesJPG491b9dfc7f708e20007990c67525a52c.JPG', '2021-09-17 00:03:07', 0),
(209, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '8E2603BC-4164-42FF-9458-56ACAB4F79ABInskedeVriesJPG9d297313e6fbf4640ee34b22ecf65687.JPG', '2021-09-17 00:03:14', 0),
(210, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '4205A9F7-88A9-4BBF-BD55-8CF4A9B13324InskedeVriesJPG4134f8782fe770990f02cb4d6e34c297.JPG', '2021-09-17 00:03:20', 0),
(211, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '88795C0C-0630-4D75-B4B1-45686CD85E0BInskedeVriezJPGca32bdefba950acfda4d391d6763028e.JPG', '2021-09-17 00:03:25', 0),
(212, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '97065450-87F2-4E3D-ACCE-4503C37B09F1InskedeVriesJPG328546fe17c854d7bd8126f4e181016b.JPG', '2021-09-17 00:03:30', 0),
(213, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'A63E6A7B-135A-4886-A69B-29B5BD3CDB6CInskedeVriesJPG66e8d056755394a2f929ba423faa0851.JPG', '2021-09-17 00:03:36', 0),
(214, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'E2DEA1CA-F9E5-424F-81BD-6062713133C8InskedeVriesJPG680bc5e66ccc05d9dfe26c5535d0dc40.JPG', '2021-09-17 00:03:42', 0),
(215, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-17 00:04:24', 0),
(216, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Stemmen', '2021-09-17 00:06:04', 0),
(217, 71, 0, 34, 0, 0, 0, NULL, 10, 0, 0, 'edit', 'actie Stemmen', NULL, '', '2021-09-17 00:06:24', 0),
(218, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '18', '2021-09-17 00:12:14', 0),
(219, 71, 0, 34, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '19', '2021-09-17 00:13:16', 0),
(220, 71, 0, 35, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-17 00:15:20', 0),
(221, 71, 0, 35, 0, 0, 0, NULL, 19, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-17 00:15:31', 0),
(222, 71, 0, 35, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'anders-header-pcko8yiotwqbe3tmxqsbwiq7fifq470wqwzoojv53cjpgfe9b43ac9f446f61a6ab3580f29f6041.jpg', '2021-09-17 00:16:11', 0),
(223, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4 leden', '2021-09-17 00:19:22', 0),
(224, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Programma checken. ', '2021-09-17 00:20:14', 0),
(225, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-17 00:21:23', 0),
(226, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-17 00:22:04', 0),
(227, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-17 00:22:29', 0),
(228, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-17 00:23:09', 0),
(229, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-17 00:23:59', 0),
(230, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-17 00:25:05', 0),
(231, 71, 0, 2, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '100 % 328\\\\r\\\\n75% indien koffie en thee', '2021-09-17 00:25:51', 0),
(232, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-17 00:28:36', 0),
(233, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FwdFestivalriderCityProms2021diverselocatieszipb8e21fc128a83de055bb395f5608da00.zip', '2021-09-17 11:02:42', 0),
(234, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, 'FwdFestivalriderCityProms2021diverselocatieszipb8e21fc128a83de055bb395f5608da00.zip', '2021-09-17 11:02:57', 0),
(235, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CitypromsdeclaratieformulierMatangixlsxca145a4a310d552bc4a3cb2f8e6f9f51.xlsx', '2021-09-17 11:05:20', 0),
(236, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CityPromsvragenlijst2021Matangidocxca145a4a310d552bc4a3cb2f8e6f9f51.docx', '2021-09-17 11:05:20', 0),
(237, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MatangibioNLdocx0a74c493e255b4aa3fcefadbd9526b10.docx', '2021-09-17 11:05:21', 0),
(238, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MatangiGalaxystudios2019DeSchaapjesfabriek-2051jpgb56acba253998cd8569a65c370beacac.jpg', '2021-09-17 11:05:29', 0),
(239, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'matingistudiovanoostrumjpgefd503e2dd6cbe46a480ce65e2b3374a.jpg', '2021-09-17 11:05:39', 0),
(240, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, 'CitypromsdeclaratieformulierMatangixlsxca145a4a310d552bc4a3cb2f8e6f9f51.xlsx', '2021-09-17 11:07:20', 0),
(241, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CitypromsdeclaratieformulierMatangixlsxe58057289f4ba94da3ed5bca4da5428b.xlsx', '2021-09-17 11:07:33', 0),
(242, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '15', '2021-09-17 11:10:31', 0),
(243, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '20', '2021-09-17 11:23:29', 0),
(244, 71, 0, 26, 0, 0, 0, NULL, 20, 0, 0, 'edit', 'dienst afspeelapparatuur', NULL, '', '2021-09-17 11:23:49', 0),
(245, 1, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '7', '2021-09-17 11:24:27', 0),
(246, 71, 0, 26, 0, 0, 0, NULL, 20, 0, 0, 'edit', 'dienst afspeelapparatuur', NULL, '', '2021-09-17 11:24:28', 0),
(247, 71, 0, 26, 0, 0, 0, NULL, 26, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-17 11:25:25', 0),
(248, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-17 11:26:41', 0),
(249, 71, 0, 28, 0, 0, 0, NULL, 28, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-17 11:27:09', 0),
(250, 71, 0, 29, 0, 0, 0, NULL, 29, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-17 11:27:31', 0),
(251, 71, 0, 31, 0, 0, 0, NULL, 31, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-17 11:28:33', 0),
(252, 71, 0, 31, 0, 0, 0, NULL, 31, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-17 11:28:49', 0),
(253, 71, 0, 30, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-17 11:29:05', 0),
(254, 71, 0, 31, 0, 0, 0, NULL, 31, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-17 11:29:15', 0),
(255, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 44, 1, 44, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-17 12:05:42', 0),
(256, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 44, 1, 44, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-17 12:09:49', 0),
(257, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 44, 1, 44, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-17 12:18:58', 0),
(258, 71, 0, 3, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-17 12:30:26', 0),
(259, 1, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'parkeren', NULL, 'test1\\\\r\\\\n2\\\\r\\\\n3', '2021-09-17 13:58:12', 0),
(260, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 11:25:14', 0),
(261, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '21', '2021-09-18 11:27:22', 0),
(262, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Hosannah jeugdorkest olv Renee van der Veen\\\\r\\\\nOn the Move jeugdorkest olv Tseard Verbeek 12.00-13.00', '2021-09-18 11:29:47', 0),
(263, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Hosannah jeugdorkest olv Renee van der Veen 11.15\\\\r\\\\nOn the Move jeugdorkest olv Tseard Verbeek 12.00-13.00', '2021-09-18 11:30:10', 0),
(264, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'Beamer ivm film historie', '2021-09-18 11:30:44', 0),
(265, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '19', '2021-09-18 11:31:08', 0),
(266, 71, 0, 28, 0, 0, 0, NULL, 19, 0, 0, 'edit', 'dienst Spreekmicrofoon', NULL, '', '2021-09-18 11:31:22', 0),
(267, 71, 0, 28, 0, 0, 0, NULL, 19, 0, 0, 'edit', 'dienst Spreekmicrofoon', NULL, '', '2021-09-18 11:31:49', 0),
(268, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'opstellingklassiek2019pdf464b91fe461a128c6bbed41bd979e5e1.pdf', '2021-09-18 11:38:17', 0),
(269, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'podiumafmetingenpdf73d0109fede8402d4883c7912b2b165f.pdf', '2021-09-18 11:38:24', 0),
(270, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CVMarinierskapel2021docx3cf5d6e6debd9694ff8813a5eb8c7455.docx', '2021-09-18 11:38:30', 0),
(271, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoMarkap1jpg0befb43a966c0c745a398ebeb1b64b5c.jpg', '2021-09-18 11:38:41', 0),
(272, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoMarkap2jpg4493c782b34afaf020f54f5acb2ef457.jpg', '2021-09-18 11:38:46', 0),
(273, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoMarkap3jpgaacb06736ece335aab5edb52884bbcd2.jpg', '2021-09-18 11:38:51', 0),
(274, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoMarkap4jpgd15eefd6b9b6c51c23b0dfcb54928a21.jpg', '2021-09-18 11:38:56', 0),
(275, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoMarkap5jpg93a820836ed14c5885986d7e045ffd8e.jpg', '2021-09-18 11:39:01', 0),
(276, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoMarkap6jpg6bb571518b46f420e1abcd74c380964a.jpg', '2021-09-18 11:39:06', 0),
(277, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-18 11:39:56', 0),
(278, 71, 0, 5, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '22', '2021-09-18 11:42:33', 0),
(279, 71, 0, 30, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-18 11:43:12', 0),
(280, 71, 0, 30, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-18 11:43:28', 0),
(281, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '21', '2021-09-18 11:46:45', 0),
(282, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'KopievanPodiumplanNNJOpdf73c306a1c08d8907c46b5c80766d66c3.pdf', '2021-09-18 11:57:00', 0),
(283, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'NNJO1jpgc80711cd6d9eb066ffd9de44b7f9dba0.jpg', '2021-09-18 11:57:07', 0),
(284, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'NNJO2jpg3b9d395e35602b129c4a5fb49c3fc0c4.jpg', '2021-09-18 11:57:11', 0),
(285, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'NNJO3jpg56cf273b3b0eacd56b71330be0d5885a.jpg', '2021-09-18 11:57:16', 0),
(286, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'NNJO4jpg7001555c98b8a28533ba6586c1098d20.jpg', '2021-09-18 11:57:20', 0),
(287, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'RIDERCityPromsNNJOdocx97caadcdb03d56aa41fe0076bf60b515.docx', '2021-09-18 11:57:25', 0),
(288, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021docxfddbc9dc6fdd26f883c59156233f87b7.docx', '2021-09-18 11:57:29', 0),
(289, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Slagwerklijstdocxf3af0e732cc20988dded92aced065615.docx', '2021-09-18 12:03:47', 0),
(290, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'RIDERCityPromsNNJO1docxe4b4a9e4328ff7bd8fdf1212d5a9c80d.docx', '2021-09-18 12:03:56', 0),
(291, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '9', '2021-09-18 12:07:15', 0),
(292, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '70', '2021-09-18 12:09:44', 0),
(293, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'Zie TR', '2021-09-18 12:09:52', 0),
(294, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '13', '2021-09-18 12:15:55', 0),
(295, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '10', '2021-09-18 12:16:31', 0),
(296, 71, 0, 34, 0, 0, 0, NULL, 10, 0, 0, 'edit', 'dienst Microfoon', NULL, '', '2021-09-18 12:17:26', 0),
(297, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '14', '2021-09-18 12:17:53', 0),
(298, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 12:25:22', 0),
(299, 71, 0, 38, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021docx3f3c9b8e453b207581d7f6fa8db4b53b.docx', '2021-09-18 13:11:37', 0),
(300, 71, 0, 38, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'JVGfotopngSimonCremerpnge99f78fcc703a3ecd69ff741f4e75140.png', '2021-09-18 13:11:43', 0),
(301, 71, 0, 38, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '26 leden\\\\r\\\\n1 dirigent\\\\r\\\\n1 pianist', '2021-09-18 13:19:42', 0),
(302, 71, 0, 38, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-18 13:20:43', 0),
(303, 71, 0, 36, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-18 13:25:03', 0),
(304, 71, 0, 5, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'actie Vleugel\r\nDezelfde dag stemmen op 442 Hz\r\nKlep moet eraf', NULL, '', '2021-09-18 13:26:41', 0),
(305, 71, 0, 38, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 14:03:57', 0),
(306, 71, 0, 39, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Ingevuldevragenlijstdocx77ed3a4ed038b3f643202689d9f7374c.docx', '2021-09-18 14:21:35', 0),
(307, 71, 0, 39, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'mailjpegd39b33c8b5284d67968182fea775d01f.jpeg', '2021-09-18 14:21:39', 0),
(308, 71, 0, 39, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'IMG6425JPGHRopgevraagdJPG543b8ff232f2b83bec642a3956e950c3.JPG', '2021-09-18 14:21:43', 0),
(309, 71, 0, 39, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 14:25:01', 0),
(310, 71, 0, 39, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '19', '2021-09-18 14:25:27', 0),
(311, 71, 0, 40, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 14:27:25', 0),
(312, 71, 0, 40, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Friso Valkema\\\\r\\\\nChristelle van den Berg\\\\r\\\\nRiane van Kooten\\\\r\\\\nPiet Durk Meijer\\\\r\\\\nMatthijs Leffers', '2021-09-18 14:28:03', 0),
(313, 71, 0, 24, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'PRTekst-CreditsLiedvanBoomdocxd4a118f660cc9417c70452a14ed22513.docx', '2021-09-18 14:36:17', 0),
(314, 71, 0, 24, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Boom-1900x550png560d727b7de52d91d767389356aa18b0.png', '2021-09-18 14:36:35', 0),
(315, 71, 0, 24, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Boom-1tif3c656d8ebdb9dda336e1be111c63a741.tif', '2021-09-18 14:37:16', 0),
(316, 71, 0, 24, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'PRTekst-CreditsLiedvanBoompdf9ac906d20608112eeaf906747af249b1.pdf', '2021-09-18 14:37:35', 0),
(317, 71, 0, 24, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Boom-4tif0dd95ccdea9282815d28ecc71209c863.tif', '2021-09-18 14:38:07', 0),
(318, 71, 0, 24, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Boom-3tifaacb06736ece335aab5edb52884bbcd2.tif', '2021-09-18 14:38:51', 0),
(319, 71, 0, 24, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Boom-2tif5f8a052cc925160e9312f0f95dd39650.tif', '2021-09-18 14:39:33', 0),
(320, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '210223FObrochure2020-2021DEFpdf62d830eb5bf427d7ea459b41735c2559.pdf', '2021-09-18 16:37:20', 0),
(321, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'LichtplanStrekpdfa996a0a4c01a04f17abb1cb870c5b580.pdf', '2021-09-18 16:37:28', 0),
(322, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'TechnischelijstStrekpdfeb1ab17e45a3644fc17b8a2babab8690.pdf', '2021-09-18 16:37:34', 0),
(323, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'wervelwindensemblestrek-pa1t2ej7vqo5gai6jqcbozo3n52xz0ue8dvl51kux4jpgb9fda4f4b6737246d07f60f6b907364f.jpg', '2021-09-18 16:37:46', 0),
(324, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4 leden\\\\r\\\\n1 eigen technicus', '2021-09-18 16:39:25', 0),
(325, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 16:41:15', 0),
(326, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '23', '2021-09-18 16:42:28', 0),
(327, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '3', '2021-09-18 16:43:04', 0),
(328, 71, 0, 43, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '24', '2021-09-18 16:43:32', 0),
(329, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 17:04:04', 0),
(330, 71, 0, 45, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '210223FObrochure2020-2021DEFpdf5c1cc8ca2785ecef9cbaf5c0cff3a434.pdf', '2021-09-18 17:05:18', 0),
(331, 71, 0, 45, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'LichtplanStrekpdf7a4d93b5d117d4cc6bccb3a2f342cf59.pdf', '2021-09-18 17:05:29', 0),
(332, 71, 0, 45, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'wervelwindensemblestrek-pa1t2ej7vqo5gai6jqcbozo3n52xz0ue8dvl51kux4jpgfc0c220f3a6e8b278bc34e650200d1fa.jpg', '2021-09-18 17:05:43', 0),
(333, 71, 0, 45, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'TechnischelijstStrekpdf9a083a23de24d4f9e84df41ba10b502b.pdf', '2021-09-18 17:05:50', 0),
(334, 71, 0, 45, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-18 17:06:27', 0),
(335, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-19 22:10:27', 0),
(336, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-19 22:12:24', 0),
(337, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, 'Zie TR', '2021-09-19 22:13:35', 0),
(338, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-19 22:20:38', 0),
(339, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-19 22:25:38', 0),
(340, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-19 22:27:43', 0),
(341, 71, 0, 47, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'OrkestopstellingEuphoniaWommelsxls4aca609774e19edc1a61ad8c5923753b.xls', '2021-09-20 03:40:23', 0),
(342, 71, 0, 47, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021docxe22f2b1531393e221b9e386db0832f12.docx', '2021-09-20 03:40:42', 0),
(343, 71, 0, 47, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 03:49:06', 0),
(344, 71, 0, 47, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '45', '2021-09-20 03:49:25', 0),
(345, 71, 0, 47, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-20 03:52:01', 0),
(346, 71, 0, 33, 0, 0, 0, NULL, 33, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-20 03:52:50', 0),
(347, 71, 0, 48, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021GSMGBragidocx531c3169eb587b918db061e6a235d10a.docx', '2021-09-20 03:55:38', 0),
(348, 71, 0, 48, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 03:58:24', 0),
(349, 71, 0, 48, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Totaal aantal leden orkest: 33:\\\\r\\\\nEerste viool: 7\\\\r\\\\nTweede viool: 9\\\\r\\\\nAltviool: 4\\\\r\\\\nCello: 9\\\\r\\\\nContrabas: 1\\\\r\\\\nHout: 2\\\\r\\\\nKoper: 1\\', '2021-09-20 04:00:18', 0),
(350, 71, 0, 48, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '25', '2021-09-20 04:01:19', 0),
(351, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'PodiumopstellingExcelsiorSchraardcitypromsxlsxbb3c5a121c318129a33a4c236e8dca36.xlsx', '2021-09-20 04:03:56', 0),
(352, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Concert2Themadocx3d07b90510691d546c919a366fe485ce.docx', '2021-09-20 04:04:10', 0),
(353, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021ExcelsiorSchraarddocxdf266fc77398faa1d9c720081e0ff3d7.docx', '2021-09-20 04:04:19', 0),
(354, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '20210607Citypromspdf05ed0d8db4b6a369f78c35e6de3a413c.pdf', '2021-09-20 04:04:46', 0),
(355, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'MG2689jpgjpgabc0a770fbda4cc53bb383ea85a86a8d.jpg', '2021-09-20 04:05:33', 0),
(356, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'delete', 'document', NULL, '20210607Citypromspdf05ed0d8db4b6a369f78c35e6de3a413c.pdf', '2021-09-20 04:07:35', 0),
(357, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-20 04:08:07', 0),
(358, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 04:12:47', 0),
(359, 71, 0, 49, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '45', '2021-09-20 04:13:31', 0),
(360, 71, 0, 50, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-20 04:18:04', 0),
(361, 71, 0, 50, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021CWOdocxccfd0846e897bed3c3be4da01283f26a.docx', '2021-09-20 04:18:50', 0),
(362, 71, 0, 50, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '6297F67B-979A-41C2-96A4-AC30C85C1547jpegb870a9f3cea23ac6050fe74c5b5c9c17.jpeg', '2021-09-20 04:19:08', 0),
(363, 71, 0, 50, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 04:21:00', 0),
(364, 71, 0, 50, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Sopraan sax		2\\\\r\\\\nAlt sax		4\\\\r\\\\nTenor sax		1\\\\r\\\\nBariton sax		1\\\\r\\\\nBugels		9\\\\r\\\\nHoorns		4\\\\r\\\\nTrompetten		5\\\\r\\\\nEuphoniums	4\\\\r\\\\nTrombones', '2021-09-20 04:21:44', 0),
(365, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 04:28:45', 0),
(366, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'KopievanPodiumplanNNJOpdfb8f0ec83b426454d1274be49f23dbeee.pdf', '2021-09-20 04:29:39', 0),
(367, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'RIDERCityPromsNNJO1docxc49419330494fc5fc21666522fb8c9fc.docx', '2021-09-20 04:29:55', 0),
(368, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Slagwerklijstdocx05af76698551db7375ba1a32c3e2f4b3.docx', '2021-09-20 04:30:08', 0),
(369, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021docx767a824890d33eca0398b54b39969acf.docx', '2021-09-20 04:30:29', 0),
(370, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Klarinet		16\\\\r\\\\nEs Klarinet		1\\\\r\\\\nBasklarinet		2\\\\r\\\\nHobo		2\\\\r\\\\nFagot		1\\\\r\\\\nDwarsfluit		7\\\\r\\\\nAlt sax		6\\\\r\\\\nTenor sax		4\\\\r\\\\nBaritonsax		', '2021-09-20 04:31:37', 0),
(371, 71, 0, 56, 0, 0, 0, NULL, 37, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-20 04:32:21', 0),
(372, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '26', '2021-09-20 04:34:18', 0),
(373, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '13', '2021-09-20 04:34:40', 0),
(374, 71, 0, 43, 0, 0, 0, NULL, 13, 0, 0, 'edit', 'dienst Zangmicrofoon', NULL, '', '2021-09-20 04:35:09', 0),
(375, 71, 0, 59, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '2020301-DSC-Rider-road-PA-festivalpdfaf3fec298af599d1b5e1fc7807022f9f.pdf', '2021-09-20 04:42:27', 0),
(376, 71, 0, 59, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Stageplan-DSC-Band-2021-2022pdf048e73c23a3ab5bb7117155a6c968ca0.pdf', '2021-09-20 04:42:39', 0),
(377, 71, 0, 59, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021DSCdocxb0676585847ed811002ae75d0138d6ef.docx', '2021-09-20 04:42:50', 0),
(378, 71, 0, 59, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 04:44:52', 0);
INSERT INTO `map_changes` (`id`, `gebruiker`, `portaalgebruiker`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `part`, `partid`, `event`, `deelname`, `changeaction`, `changefield`, `oldvalue`, `changevalue`, `changedate`, `del`) VALUES
(379, 71, 0, 59, 0, 0, 0, NULL, 38, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-20 04:48:48', 0),
(380, 71, 0, 59, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'Keesjan Hoogeboom – trompet\\\\r\\\\nDavid Lukács – klarinet, saxofoon\\\\r\\\\nBert Boeren – trombone\\\\r\\\\nPeter Kanters – banjo, gitaar\\\\r\\\\nAdrie Braat – c', '2021-09-20 04:51:54', 0),
(381, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021NieuwlichtProjectorkestdocxa786eac20931a7da8342c0169c37da69.docx', '2021-09-20 04:55:34', 0),
(382, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-20 04:57:33', 0),
(383, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 04:59:27', 0),
(384, 71, 0, 67, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'CALEFAXVragenlijstCityProms2021-marketingingevulddoorLarissadocx1799ae83a956e9c56f8af0630b4b90a9.docx', '2021-09-20 05:07:26', 0),
(385, 71, 0, 67, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 05:11:02', 0),
(386, 71, 0, 67, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '5 leden\\\\r\\\\nOliver Boekhoorn hobo\\\\r\\\\nRaaf Hekkema saxofoon\\\\r\\\\nJelte Althuis basklarinet\\\\r\\\\nAlban Wesley fagot\\\\r\\\\nBart de Kater klarinet', '2021-09-20 05:12:47', 0),
(387, 71, 0, 67, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-20 05:13:56', 0),
(388, 71, 0, 67, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '17', '2021-09-20 05:14:34', 0),
(389, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-20 05:18:34', 0),
(390, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-20 05:19:55', 0),
(391, 71, 0, 36, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'dienst ', NULL, '', '2021-09-20 05:20:34', 0),
(392, 71, 0, 12, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-09-20 05:30:01', 0),
(393, 71, 0, 13, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 14:19:13', 0),
(394, 71, 0, 0, 0, 0, 0, NULL, 41, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-20 14:19:34', 0),
(395, 71, 0, 13, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'parkeren', NULL, 'Parkeergarage Zaailand\\\\r\\\\nZaailand 5, 8911 BL  Leeuwarden\\\\r\\\\nInrijhoogte max. 2,10 meter', '2021-09-20 14:21:27', 0),
(396, 71, 0, 11, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'parkeren', NULL, 'Parkeergarage Zaailand\\\\r\\\\nZaailand 5, 8911 BL  Leeuwarden\\\\r\\\\nInrijhoogte max. 2,10 meter', '2021-09-20 14:24:00', 0),
(397, 71, 0, 11, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, 'Bij aankomst kan er worden uitgeladen bij het loadingdock aan de achterzijde van het podium. Als de backline is uitgeladen verzoeken wij u vriendelijk', '2021-09-20 14:32:28', 0),
(398, 71, 0, 16, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '25 kinderen 20 volwassen', '2021-09-20 14:37:52', 0),
(399, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '45', '2021-09-20 14:38:22', 0),
(400, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'parkeren', NULL, 'Blokhuisplein 40\\\\r\\\\n8911 LJ  Leeuwarden', '2021-09-20 14:40:02', 0),
(401, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, 'Uitladen', '2021-09-20 14:40:13', 0),
(402, 71, 0, 71, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021AmstelQuartetpdf1069231094e269020846a409eac77e38.pdf', '2021-09-20 14:52:46', 0),
(403, 71, 0, 71, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 14:54:56', 0),
(404, 71, 0, 71, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4 saxofoons, 4 ewi\\\\r\\\\n', '2021-09-20 14:55:26', 0),
(405, 71, 0, 71, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '27', '2021-09-20 14:56:49', 0),
(406, 71, 0, 71, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '28', '2021-09-20 14:58:01', 0),
(407, 71, 0, 71, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-09-20 14:59:16', 0),
(408, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-20 15:02:04', 0),
(409, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'parkeren', NULL, 'Parkeergarage Zaailand\\\\r\\\\nZaailand 5, 8911 BL  Leeuwarden', '2021-09-20 15:41:10', 0),
(410, 71, 0, 10, 0, 0, 0, NULL, 9, 0, 0, 'delete', 'actie', NULL, 'Overleg Paleis van Justitie', '2021-09-20 15:59:23', 0),
(411, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, 'Afhankelijk van het bouwbesluit. Ventilatiemogelijkheid.\\\\r\\\\n\\\\r\\\\nwordt donderdag besloten.', '2021-09-21 15:08:06', 0),
(412, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, 'Zaal A\\\\r\\\\nAfhankelijk van het bouwbesluit. Ventilatiemogelijkheid.\\\\r\\\\nwordt donderdag besloten.\\\\r\\\\n\\\\r\\\\nNormaal meer dan 100 in de hal.\\\\r\\\\n\\\\', '2021-09-21 15:11:07', 0),
(413, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, 'Zaal A?\\\\r\\\\nAfhankelijk van het bouwbesluit. Ventilatiemogelijkheid.\\\\r\\\\nwordt donderdag besloten.\\\\r\\\\n\\\\r\\\\nNormaal meer dan 100 in de hal.\\\\r\\\\n\\', '2021-09-21 15:13:27', 0),
(414, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '19', '2021-09-21 15:29:23', 0),
(415, 71, 0, 10, 0, 0, 0, NULL, 8, 0, 0, 'edit', 'actie Overleg met Paleis van Justitie', NULL, '', '2021-09-21 15:29:51', 0),
(416, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, 'Zaal A?\\\\r\\\\nAfhankelijk van het bouwbesluit. Ventilatiemogelijkheid.\\\\r\\\\nwordt donderdag besloten.\\\\r\\\\n\\\\r\\\\nNormaal meer dan 100 in de hal.\\\\r\\\\n', '2021-09-21 15:37:04', 0),
(417, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, '\\\\r\\\\nExterne Beveiliger voor coronacheck', '2021-09-21 15:37:34', 0),
(418, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, 'Zaal A?\\\\r\\\\nAfhankelijk van het bouwbesluit. Ventilatiemogelijkheid.\\\\r\\\\nWordt donderdag besloten.\\\\r\\\\n\\\\r\\\\nNormaal meer dan 100 in de hal.\\\\r\\\\n', '2021-09-21 15:37:47', 0),
(419, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '29', '2021-09-21 15:41:28', 0),
(420, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '30', '2021-09-21 15:44:04', 0),
(421, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '30', '2021-09-21 16:02:44', 0),
(422, 71, 0, 10, 0, 0, 0, NULL, 50, 0, 0, 'delete', 'dienst 30', NULL, '', '2021-09-21 16:03:27', 0),
(423, 71, 0, 51, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'dienst Programmaboekjes', NULL, '', '2021-09-21 16:10:59', 0),
(424, 71, 0, 17, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-21 21:43:24', 0),
(425, 71, 0, 17, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-21 21:44:56', 0),
(426, 71, 0, 17, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-21 21:46:47', 0),
(427, 71, 0, 0, 0, 0, 0, NULL, 46, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-21 21:47:14', 0),
(428, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-21 21:48:48', 0),
(429, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-21 21:49:11', 0),
(430, 71, 0, 0, 0, 0, 0, NULL, 48, 0, 0, 'delete', 'contactpersoon 0', NULL, '', '2021-09-21 21:49:29', 0),
(431, 71, 0, 0, 0, 0, 0, NULL, 47, 0, 0, 'delete', 'contactpersoon 0', NULL, '', '2021-09-21 21:49:31', 0),
(432, 71, 0, 70, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '31', '2021-09-21 21:57:38', 0),
(433, 71, 0, 70, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '32', '2021-09-21 21:59:18', 0),
(434, 71, 0, 52, 0, 0, 0, NULL, 31, 0, 0, 'edit', 'dienst Beeldscherm', NULL, '', '2021-09-21 21:59:30', 0),
(435, 71, 0, 70, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-21 22:01:50', 0),
(436, 71, 0, 74, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-21 22:10:11', 0),
(437, 71, 0, 74, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '9', '2021-09-21 22:11:50', 0),
(438, 71, 0, 74, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '3 fluitisten', '2021-09-21 22:12:33', 0),
(439, 71, 0, 74, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, '3 krukken of stoelen zonder leuning. \\\\r\\\\nOpstelling: in hoefijzer formatie, waarbij de verteller in het midden zit.', '2021-09-21 22:13:23', 0),
(440, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-22 07:47:39', 0),
(441, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '150 indien voorstelling op het podium is', '2021-09-22 08:09:18', 0),
(442, 71, 0, 7, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '70', '2021-09-22 08:09:56', 0),
(443, 71, 0, 7, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'parkeren', NULL, 'https://neushoorn.nl/wp-content/uploads/2021/07/specs.pdf', '2021-09-22 08:16:48', 0),
(444, 71, 0, 7, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-22 08:18:57', 0),
(445, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-22 08:20:06', 0),
(446, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-22 08:29:30', 0),
(447, 71, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-22 08:32:15', 0),
(448, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-22 08:33:50', 0),
(449, 71, 0, 22, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '10', '2021-09-22 12:57:46', 0),
(450, 71, 0, 18, 0, 0, 0, NULL, 10, 0, 0, 'edit', 'functie 10', NULL, '', '2021-09-22 12:58:08', 0),
(451, 71, 0, 18, 0, 0, 0, NULL, 20, 0, 0, 'edit', 'functie 20', NULL, '', '2021-09-22 13:03:29', 0),
(452, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-22 15:23:56', 0),
(453, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-22 15:24:21', 0),
(454, 71, 0, 0, 0, 0, 0, NULL, 43, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-22 15:25:06', 0),
(455, 71, 0, 0, 0, 0, 0, NULL, 53, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-22 15:26:02', 0),
(456, 71, 0, 0, 0, 0, 0, NULL, 54, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-22 15:26:27', 0),
(457, 71, 0, 7, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-23 10:52:34', 0),
(458, 71, 0, 7, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-09-23 10:53:37', 0),
(459, 71, 0, 24, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'functie 3', NULL, '', '2021-09-23 10:53:47', 0),
(460, 71, 0, 17, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-23 13:43:26', 0),
(461, 71, 0, 17, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-23 13:45:06', 0),
(462, 71, 0, 28, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-09-23 13:46:36', 0),
(463, 71, 0, 28, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-09-23 13:47:04', 0),
(464, 71, 0, 32, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-23 13:47:23', 0),
(465, 71, 0, 33, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-23 13:47:38', 0),
(466, 71, 0, 30, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-23 13:50:26', 0),
(467, 71, 0, 5, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'actie Vleugel\r\nDezelfde dag stemmen op 442 Hz\r\nKlep moet eraf', NULL, '', '2021-09-23 13:50:55', 0),
(468, 71, 0, 20, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-23 13:54:02', 0),
(469, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Lessenaar brengen', '2021-09-23 13:55:09', 0),
(470, 71, 0, 82, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-23 14:19:50', 0),
(471, 72, 0, 82, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '7', '2021-09-23 15:26:11', 0),
(472, 71, 0, 56, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, 'Gastprogrammeur CP2021', '2021-09-23 16:22:36', 0),
(473, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 96, 1, 96, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 10:43:49', 0),
(474, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 8, 1, 8, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 10:54:58', 0),
(475, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 8, 1, 8, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 10:57:36', 0),
(476, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 8, 1, 8, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 12:05:55', 0),
(477, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 6, 1, 6, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 12:33:12', 0),
(478, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 12:42:52', 0),
(479, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 12:43:31', 0),
(480, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 12:44:28', 0),
(481, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 97, 1, 97, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 16:10:34', 0),
(482, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 97, 1, 97, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 16:12:26', 0),
(483, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 97, 1, 97, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 16:16:27', 0),
(484, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 97, 1, 97, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 16:21:53', 0),
(485, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 4, 1, 4, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 17:11:23', 0),
(486, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 4, 1, 4, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 17:13:47', 0),
(487, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 4, 1, 4, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 17:17:39', 0),
(488, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 78, 1, 78, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 18:56:52', 0),
(489, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 18:59:49', 0),
(490, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 98, 1, 98, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 20:36:15', 0),
(491, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 59, 1, 59, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 20:43:00', 0),
(492, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 59, 1, 59, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 20:43:41', 0),
(493, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 59, 1, 59, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-26 20:49:15', 0),
(494, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:44:52', 0),
(495, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:46:40', 0),
(496, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:47:35', 0),
(497, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:48:21', 0),
(498, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:49:06', 0),
(499, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:49:25', 0),
(500, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:49:45', 0),
(501, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:50:14', 0),
(502, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:50:30', 0),
(503, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:50:57', 0),
(504, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:51:17', 0),
(505, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:51:39', 0),
(506, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:51:56', 0),
(507, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:52:08', 0),
(508, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:52:31', 0),
(509, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:52:49', 0),
(510, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:53:13', 0),
(511, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:53:38', 0),
(512, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:54:07', 0),
(513, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:54:31', 0),
(514, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:55:06', 0),
(515, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 06:55:45', 0),
(516, 71, 0, 92, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4', '2021-09-27 08:00:57', 0),
(517, 71, 0, 92, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-27 08:03:33', 0),
(518, 71, 0, 93, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-27 08:11:06', 0),
(519, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '22', '2021-09-27 08:20:19', 0),
(520, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '23', '2021-09-27 08:24:08', 0),
(521, 71, 0, 44, 0, 0, 0, NULL, 23, 0, 0, 'edit', 'functie 23', NULL, '', '2021-09-27 08:24:29', 0),
(522, 71, 0, 88, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-27 08:33:21', 0),
(523, 71, 0, 45, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-09-27 08:33:37', 0),
(524, 71, 0, 88, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-27 08:35:42', 0),
(525, 71, 0, 46, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-09-27 08:35:57', 0),
(526, 71, 0, 41, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-27 08:42:41', 0),
(527, 71, 0, 14, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-27 09:09:25', 0),
(528, 71, 0, 11, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-27 09:09:33', 0),
(529, 71, 0, 23, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-09-27 09:12:15', 0),
(530, 71, 0, 13, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '5000', '2021-09-27 11:54:32', 0),
(531, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 23, 1, 23, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 13:50:46', 0),
(532, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 95, 1, 95, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 14:57:47', 0),
(533, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 95, 1, 95, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 15:01:00', 0),
(534, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 99, 1, 99, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 16:52:53', 0),
(535, 71, 0, 9, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '400-450', '2021-09-27 17:59:40', 0),
(536, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 95, 1, 95, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-27 18:06:37', 0),
(537, 71, 0, 47, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '33', '2021-09-28 07:50:27', 0),
(538, 71, 0, 105, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2021-09-28 08:27:05', 0),
(539, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 23, 1, 23, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 08:30:04', 0),
(540, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 101, 1, 101, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 08:40:40', 0),
(541, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 101, 1, 101, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 08:41:29', 0),
(542, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 101, 1, 101, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 08:58:42', 0),
(543, 71, 0, 10, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-28 09:07:22', 0),
(544, 71, 0, 20, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, 'Route van Rudolf', '2021-09-28 09:32:07', 0),
(545, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-28 09:36:30', 0),
(546, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4', '2021-09-28 09:36:50', 0),
(547, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-28 09:37:33', 0),
(548, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, 'Route van Rudolf', '2021-09-28 09:38:12', 0),
(549, 71, 0, 95, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-28 09:43:27', 0),
(550, 71, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-28 11:41:48', 0),
(551, 71, 0, 101, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '27', '2021-09-28 12:06:21', 0),
(552, 71, 0, 101, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '27', '2021-09-28 12:08:14', 0),
(553, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'CD verkoop', '2021-09-28 12:29:17', 0),
(554, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'CD verkoop Amstelquartet', '2021-09-28 12:29:43', 0),
(555, 71, 0, 18, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'CD verkoop Amstel Quartet', '2021-09-28 12:29:56', 0),
(556, 71, 0, 71, 0, 0, 0, NULL, 47, 0, 0, 'delete', 'dienst 28', NULL, '', '2021-09-28 12:43:56', 0),
(557, 71, 0, 31, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'dienst Beamer', NULL, '', '2021-09-28 14:00:00', 0),
(558, 71, 0, 3, 0, 0, 0, NULL, 7, 0, 0, 'edit', 'actie Spiegel', NULL, '', '2021-09-28 14:00:42', 0),
(559, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 33, 1, 33, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 14:29:17', 0),
(560, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 33, 1, 33, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 14:30:23', 0),
(561, 71, 0, 13, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, '4 zangers en een pianist\\\\r\\\\nFrederique Klooster, sopraan\\\\r\\\\n\\\\r\\\\nKaren Langendonk,  alt\\\\r\\\\n\\\\r\\\\nJoost van Velzen, tenor\\\\r\\\\n\\\\r\\\\nAngus van G', '2021-09-28 15:00:24', 0),
(562, 71, 0, 88, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'benodigdhedenenopstelling', NULL, '9x9 meter speelvlak', '2021-09-28 15:03:21', 0),
(563, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 17:43:22', 0),
(564, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 17:44:12', 0),
(565, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 17:45:41', 0),
(566, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 17:46:09', 0),
(567, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-28 17:48:27', 0),
(568, 71, 0, 87, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-29 11:04:13', 0),
(569, 71, 0, 87, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-29 11:27:44', 0),
(570, 71, 0, 21, 0, 0, 0, NULL, 6, 0, 0, 'edit', 'functie 6', NULL, '', '2021-09-29 11:38:08', 0),
(571, 71, 0, 10, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, '110', '2021-09-29 11:49:13', 0),
(572, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'capaciteitcorona', NULL, 'Zaal A\\\\r\\\\nIvm ventilatienorm is de capaciteit op 80 gezet.\\\\r\\\\nVoor de hal is dat 75.\\\\r\\\\nNormaal meer dan 100 in de hal.\\\\r\\\\n', '2021-09-29 11:58:46', 0),
(573, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'opmerkingen', NULL, 'Twee interne beveiligers aanwezig (ambtenaren) Externe beveiliger gewenst. Geen EHBO/BHV aanwezig.', '2021-09-29 11:58:59', 0),
(574, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-29 12:00:19', 0),
(575, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-29 12:01:11', 0),
(576, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-29 12:06:07', 0),
(577, 71, 0, 45, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-09-29 12:21:46', 0),
(578, 71, 0, 46, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-09-29 12:21:56', 0),
(579, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '29', '2021-09-29 12:51:41', 0),
(580, 71, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '29', '2021-09-29 12:53:51', 0),
(581, 71, 0, 66, 0, 0, 0, NULL, 29, 0, 0, 'edit', 'functie 29', NULL, '', '2021-09-29 12:54:08', 0),
(582, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 103, 1, 103, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-29 15:13:49', 0),
(583, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 103, 1, 103, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-29 15:14:23', 0),
(584, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 13, 1, 13, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-29 17:18:09', 0),
(585, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-29 18:00:41', 0),
(586, 71, 0, 37, 0, 0, 0, NULL, 64, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-09-29 18:01:07', 0),
(587, 71, 0, 37, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-09-29 18:02:12', 0),
(588, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 104, 1, 104, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-29 21:17:29', 0),
(589, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 95, 1, 95, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-29 22:06:42', 0),
(590, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 06:14:40', 0),
(591, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 06:17:44', 0),
(592, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 64, 1, 64, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 06:19:28', 0),
(593, 71, 0, 81, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-09-30 07:22:00', 0),
(594, 71, 0, 81, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-09-30 07:22:21', 0),
(595, 71, 0, 76, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-09-30 07:22:53', 0),
(596, 71, 0, 77, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-09-30 07:24:20', 0),
(597, 71, 0, 35, 0, 0, 0, NULL, 7, 0, 0, 'edit', 'functie 7', NULL, '', '2021-09-30 08:01:40', 0),
(598, 71, 0, 40, 0, 0, 0, NULL, 7, 0, 0, 'edit', 'functie 7', NULL, '', '2021-09-30 08:01:53', 0),
(599, 71, 0, 59, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-30 08:04:47', 0),
(600, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-30 09:13:43', 0),
(601, 71, 0, 6, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-30 09:15:39', 0),
(602, 71, 0, 94, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-09-30 09:15:51', 0),
(603, 71, 0, 8, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-30 09:17:54', 0),
(604, 71, 0, 103, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-30 09:22:06', 0),
(605, 71, 0, 103, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-30 09:24:03', 0),
(606, 71, 0, 103, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-09-30 09:25:21', 0),
(607, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'standpromotiedoeleinden', NULL, 'CD verkoop\\\\r\\\\nDoen zij zelf.', '2021-09-30 09:47:13', 0),
(608, 71, 0, 0, 0, 0, 0, NULL, 23, 0, 0, 'delete', 'dienst 5', NULL, '', '2021-09-30 10:08:16', 0),
(609, 71, 0, 110, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-30 10:13:50', 0),
(610, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 2, 1, 2, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 13:07:34', 0),
(611, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 2, 1, 2, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 13:15:12', 0),
(612, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 2, 1, 2, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 14:40:16', 0),
(613, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 2, 1, 2, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 14:44:51', 0),
(614, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 2, 1, 2, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 14:45:52', 0),
(615, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 2, 1, 2, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 14:46:22', 0),
(616, 71, 0, 30, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 16:48:21', 0),
(617, 71, 0, 20, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 16:49:45', 0),
(618, 71, 0, 56, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 16:51:52', 0),
(619, 71, 0, 44, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 17:09:12', 0),
(620, 71, 0, 29, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 17:10:58', 0),
(621, 71, 0, 67, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'uitrijkaarten', '2021-09-30 17:12:25', 0),
(622, 71, 0, 44, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 17:13:22', 0),
(623, 71, 0, 36, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 17:15:42', 0),
(624, 71, 0, 12, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 17:34:01', 0),
(625, 71, 0, 36, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 17:37:49', 0),
(626, 71, 0, 13, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-09-30 17:38:21', 0),
(627, 71, 0, 22, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-09-30 17:38:57', 0),
(628, 71, 0, 57, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-09-30 17:39:36', 0),
(629, 71, 0, 20, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-09-30 17:40:14', 0),
(630, 71, 0, 36, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-09-30 17:41:56', 0),
(631, 71, 0, 57, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-09-30 18:07:17', 0),
(632, 71, 0, 13, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 18:09:01', 0),
(633, 71, 0, 22, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-09-30 18:09:55', 0),
(634, 71, 0, 92, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-09-30 18:11:08', 0),
(635, 71, 0, 64, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-09-30 18:28:43', 0),
(636, 71, 0, 32, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-30 18:29:00', 0),
(637, 71, 0, 15, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-30 18:29:22', 0),
(638, 71, 0, 14, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-30 18:31:40', 0),
(639, 71, 0, 101, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-30 18:32:28', 0),
(640, 71, 0, 15, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-30 18:33:35', 0),
(641, 71, 0, 97, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-09-30 18:34:04', 0),
(642, 71, 0, 86, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '5', '2021-09-30 19:50:22', 0),
(643, 71, 0, 102, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-09-30 19:51:00', 0),
(644, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 106, 1, 106, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-09-30 20:00:32', 0),
(645, 71, 0, 93, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-10-01 09:47:17', 0),
(646, 71, 0, 6, 0, 0, 0, NULL, 94, 0, 0, 'delete', 'dienst 24', NULL, '', '2021-10-01 10:01:55', 0),
(647, 71, 0, 105, 0, 0, 0, NULL, 6, 0, 0, 'edit', 'functie 6', NULL, '', '2021-10-01 10:30:26', 0),
(648, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '23', '2021-10-01 10:40:24', 0),
(649, 71, 0, 118, 0, 0, 0, NULL, 23, 0, 0, 'edit', 'functie 23', NULL, '', '2021-10-01 10:40:43', 0),
(650, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '23', '2021-10-01 10:41:30', 0),
(651, 71, 0, 57, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '31', '2021-10-01 10:59:46', 0),
(652, 71, 0, 57, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2021-10-01 11:01:15', 0),
(653, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '31', '2021-10-01 11:05:12', 0),
(654, 71, 0, 21, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '31', '2021-10-01 11:06:30', 0),
(655, 71, 0, 124, 0, 0, 0, NULL, 31, 0, 0, 'edit', 'functie 31', NULL, '', '2021-10-01 11:06:52', 0),
(656, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-01 11:08:53', 0),
(657, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-01 11:10:19', 0),
(658, 71, 0, 122, 0, 0, 0, NULL, 31, 0, 0, 'edit', 'functie 31', NULL, '', '2021-10-01 11:10:54', 0),
(659, 71, 0, 2, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '25', '2021-10-01 11:14:45', 0),
(660, 71, 0, 2, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-01 11:17:25', 0),
(661, 71, 0, 2, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-01 11:19:17', 0),
(662, 71, 0, 0, 0, 0, 0, NULL, 51, 0, 0, 'delete', 'dienst 27', NULL, '', '2021-10-01 11:46:45', 0),
(663, 72, 0, 0, 0, 0, 0, NULL, 42, 0, 0, 'delete', 'dienst 7', NULL, '', '2021-10-01 11:51:09', 0),
(664, 71, 0, 26, 0, 0, 0, NULL, 0, 0, 0, 'add', 'contactpersoon', NULL, '', '2021-10-01 11:56:30', 0),
(665, 71, 0, 21, 0, 0, 0, NULL, 32, 0, 0, 'edit', 'functie 32', NULL, '', '2021-10-01 12:37:10', 0),
(666, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 11, 1, 11, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-01 12:40:39', 0),
(667, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 11, 1, 11, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-01 12:41:17', 0),
(668, 71, 0, 52, 0, 0, 0, NULL, 27, 0, 0, 'edit', 'functie 27', NULL, '', '2021-10-01 12:52:59', 0),
(669, 71, 0, 101, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '27', '2021-10-01 12:54:30', 0),
(670, 71, 0, 131, 0, 0, 0, NULL, 27, 0, 0, 'edit', 'functie 27', NULL, '', '2021-10-01 12:55:53', 0),
(671, 71, 0, 104, 0, 0, 0, NULL, 32, 0, 0, 'edit', 'functie 32', NULL, '', '2021-10-01 12:57:28', 0),
(672, 71, 0, 104, 0, 0, 0, NULL, 6, 0, 0, 'edit', 'functie 6', NULL, '', '2021-10-01 12:58:14', 0),
(673, 71, 0, 70, 0, 0, 0, NULL, 29, 0, 0, 'edit', 'functie 29', NULL, '', '2021-10-01 13:10:10', 0),
(674, 71, 0, 92, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-10-01 13:11:56', 0),
(675, 71, 0, 78, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-10-01 13:12:23', 0),
(676, 71, 0, 97, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-10-01 13:13:10', 0),
(677, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '33', '2021-10-01 15:18:41', 0),
(678, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '34', '2021-10-01 15:19:02', 0),
(679, 71, 0, 134, 0, 0, 0, NULL, 34, 0, 0, 'edit', 'functie 34', NULL, '', '2021-10-01 15:19:12', 0),
(680, 71, 0, 95, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '35', '2021-10-01 16:14:23', 0),
(681, 71, 0, 142, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-01 16:15:06', 0),
(682, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 59, 1, 59, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-01 17:09:48', 0),
(683, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 99, 1, 99, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-01 20:12:54', 0),
(684, 72, 0, 37, 0, 0, 0, NULL, 7, 0, 0, 'edit', 'functie 7', NULL, '', '2021-10-02 14:44:24', 0),
(685, 71, 0, 64, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '30', '2021-10-02 22:20:53', 0),
(686, 71, 0, 22, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '25', '2021-10-02 23:21:45', 0),
(687, 71, 0, 64, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '30', '2021-10-03 07:27:28', 0),
(688, 71, 0, 161, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-10-03 07:28:09', 0),
(689, 71, 0, 83, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-10-03 07:28:54', 0),
(690, 71, 0, 161, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-10-03 07:29:32', 0),
(691, 71, 0, 82, 0, 0, 0, NULL, 30, 0, 0, 'edit', 'functie 30', NULL, '', '2021-10-03 07:29:55', 0),
(692, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-03 13:09:42', 0),
(693, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-03 21:38:03', 0),
(694, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-03 21:41:35', 0),
(695, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-03 22:14:32', 0),
(696, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-03 22:15:40', 0),
(697, 71, 0, 47, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'PodiumopstellingEuphoniaV01-10-21jpg4ec4f807577a92501f180b76201e04ec.jpg', '2021-10-04 16:11:42', 0),
(698, 71, 0, 40, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'FotoMajestic5JPG84752a255d6805cbcaf308d998c3ce58.JPG', '2021-10-04 16:18:01', 0),
(699, 71, 0, 40, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021Majestic5docxd58037be21ff68cb0520dc1d9daba9d9.docx', '2021-10-04 16:18:05', 0),
(700, 71, 0, 0, 0, 0, 0, NULL, 84, 0, 0, 'delete', 'dienst 30', NULL, '', '2021-10-04 23:07:14', 0),
(701, 71, 0, 65, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-10-04 23:08:19', 0),
(702, 71, 0, 71, 0, 0, 0, NULL, 29, 0, 0, 'edit', 'functie 29', NULL, '', '2021-10-04 23:09:26', 0),
(703, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 95, 1, 95, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-05 00:34:40', 0),
(704, 71, 0, 12, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-10-05 11:04:10', 0),
(705, 71, 0, 12, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-10-05 11:05:02', 0),
(706, 71, 0, 12, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst 12', NULL, '', '2021-10-05 11:09:01', 0),
(707, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '8', '2021-10-05 11:26:54', 0),
(708, 71, 0, 59, 0, 0, 0, NULL, 8, 0, 0, 'edit', 'dienst Bloemen', NULL, '', '2021-10-05 11:27:42', 0),
(709, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '12', '2021-10-05 11:30:33', 0),
(710, 71, 0, 60, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-10-05 11:32:09', 0),
(711, 71, 0, 60, 0, 0, 0, NULL, 12, 0, 0, 'edit', 'dienst Vleugel', NULL, '', '2021-10-05 11:32:19', 0),
(712, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '8', '2021-10-05 11:36:40', 0),
(713, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '11', '2021-10-05 11:37:48', 0),
(714, 71, 0, 32, 0, 0, 0, NULL, 0, 0, 0, 'add', 'actie', NULL, 'Bloemen', '2021-10-05 11:38:28', 0),
(715, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '11', '2021-10-05 11:58:37', 0),
(716, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2021-10-05 12:04:28', 0),
(717, 71, 0, 29, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2021-10-05 12:06:19', 0),
(718, 71, 0, 191, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-10-05 12:06:34', 0),
(719, 1, 0, 99, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-10-05 14:14:17', 0),
(720, 1, 0, 99, 0, 0, 0, NULL, 5, 0, 0, 'edit', 'functie 5', NULL, '', '2021-10-05 14:14:25', 0),
(721, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'podiumplanpdf8a5e677f905b592e84fde282ebc411f3.pdf', '2021-10-05 14:44:41', 0),
(722, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '26', '2021-10-05 14:47:39', 0),
(723, 71, 0, 61, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '13', '2021-10-05 14:47:58', 0),
(724, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021Toeterbende9oktdocxde7e60b8efa66860cb8e6e557f230d01.docx', '2021-10-05 14:54:55', 0),
(725, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021ingevulddocx613df61f8bbc2b68ff0c330e5988aff9.docx', '2021-10-05 14:55:03', 0),
(726, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'VragenlijstCityProms2021docx7285d2e8e53a5de885a778251054fff9.docx', '2021-10-05 14:55:13', 0),
(727, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'Openingcultureelseizoen2021-2022inTheaterSneekjpgf4ea151c003da71da60e37320d8084a4.jpg', '2021-10-05 14:55:34', 0),
(728, 71, 0, 19, 0, 0, 0, NULL, 0, 0, 0, 'edit', 'aantalledeneninstrumenten', NULL, 'De Toeterbende olv Christina van der Bijl 10.30-11.00\\\\r\\\\nHosannah jeugdorkest olv Renee van der Veen 11.15-11.45\\\\r\\\\nOn the Move jeugdorkest olv Ts', '2021-10-05 15:05:17', 0),
(729, 71, 0, 59, 0, 0, 0, NULL, 8, 0, 0, 'edit', 'dienst 8', NULL, '', '2021-10-05 15:15:12', 0),
(730, 1, 0, 108, 0, 0, 0, NULL, 11, 0, 0, 'edit', 'functie 11', NULL, '', '2021-10-05 15:16:59', 0),
(731, 1, 0, 108, 0, 0, 0, NULL, 11, 0, 0, 'edit', 'functie 11', NULL, '', '2021-10-05 15:17:11', 0),
(732, 1, 0, 47, 0, 0, 0, NULL, 6, 0, 0, 'edit', 'functie 6', NULL, '', '2021-10-05 15:17:21', 0),
(733, 1, 0, 47, 0, 0, 0, NULL, 6, 0, 0, 'edit', 'functie 6', NULL, '', '2021-10-05 15:17:31', 0),
(734, 71, 0, 187, 0, 0, 0, NULL, 23, 0, 0, 'edit', 'functie 23', NULL, '', '2021-10-05 23:13:24', 0),
(735, 71, 0, 87, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-05 23:15:29', 0),
(736, 71, 0, 170, 0, 0, 0, NULL, 32, 0, 0, 'edit', 'functie 32', NULL, '', '2021-10-05 23:30:43', 0),
(737, 71, 0, 172, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-05 23:31:28', 0),
(738, 71, 0, 195, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'functie 3', NULL, '', '2021-10-05 23:37:20', 0),
(739, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-06 00:42:11', 0),
(740, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-06 01:00:44', 0),
(741, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 22, 1, 22, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-06 01:02:53', 0),
(742, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '31', '2021-10-06 11:12:17', 0),
(743, 71, 0, 30, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '31', '2021-10-06 11:13:50', 0),
(744, 1, 0, 65, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, 'stageplotpnge07f1334b4d67821fd76cebf7ba24945.png', '2021-10-06 12:16:31', 0),
(745, 71, 0, 194, 0, 0, 0, NULL, 31, 0, 0, 'edit', 'functie 31', NULL, '', '2021-10-06 12:39:49', 0),
(746, 71, 0, 193, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-06 12:40:01', 0),
(747, 71, 0, 193, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-06 12:40:29', 0),
(748, 71, 0, 43, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'functie 22', NULL, '', '2021-10-06 12:49:59', 0),
(749, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2021-10-06 12:51:32', 0),
(750, 71, 0, 184, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-10-06 12:52:04', 0),
(751, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 33, 1, 33, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-06 13:12:09', 0),
(752, 1, 0, 3, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-10-06 15:54:54', 0),
(753, 1, 0, 3, 0, 0, 0, NULL, 1, 0, 0, 'edit', 'contactpersoon 0', NULL, '', '2021-10-06 15:55:20', 0),
(754, 71, 0, 79, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-06 17:09:40', 0),
(755, 71, 0, 79, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-06 17:11:11', 0),
(756, 71, 0, 79, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-06 17:12:40', 0),
(757, 1, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'document', NULL, '2140draaiboekxlsx94453eb832cae8e73ec5466a43f5b8b7.xlsx', '2021-10-06 17:16:13', 0),
(758, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-10-06 17:35:25', 0),
(759, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-10-06 17:35:57', 0),
(760, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '', '2021-10-06 17:36:35', 0),
(761, 71, 0, 94, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '35', '2021-10-06 17:38:31', 0),
(762, 71, 0, 66, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'dienst Verlichting', NULL, '', '2021-10-06 17:39:00', 0),
(763, 71, 0, 229, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-07 06:53:23', 0),
(764, 71, 0, 184, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-10-07 07:50:38', 0),
(765, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '22', '2021-10-07 07:52:02', 0),
(766, 71, 0, 232, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'functie 22', NULL, '', '2021-10-07 07:52:36', 0),
(767, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '22', '2021-10-07 07:57:36', 0),
(768, 71, 0, 3, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '22', '2021-10-07 07:59:11', 0),
(769, 71, 0, 232, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'functie 22', NULL, '', '2021-10-07 07:59:31', 0),
(770, 71, 0, 233, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'functie 22', NULL, '', '2021-10-07 07:59:41', 0),
(771, 71, 0, 234, 0, 0, 0, NULL, 22, 0, 0, 'edit', 'functie 22', NULL, '', '2021-10-07 08:00:05', 0),
(772, 71, 0, 188, 0, 0, 0, NULL, 23, 0, 0, 'edit', 'functie 23', NULL, '', '2021-10-07 12:11:48', 0),
(773, 1, 0, 100, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'functie 4', NULL, '', '2021-10-07 14:48:01', 0),
(774, 1, 0, 28, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-10-07 14:48:35', 0),
(775, 71, 0, 45, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '35', '2021-10-07 21:15:55', 0),
(776, 71, 0, 240, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-07 21:16:57', 0),
(777, 71, 0, 240, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-07 21:18:12', 0),
(778, 71, 0, 45, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-07 21:18:58', 0),
(779, 71, 0, 39, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-07 21:23:33', 0),
(780, 71, 0, 242, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-10-07 21:23:57', 0),
(781, 71, 0, 105, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2021-10-07 21:32:22', 0),
(782, 71, 0, 243, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-10-07 21:33:53', 0),
(783, 71, 0, 105, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '35', '2021-10-07 21:36:14', 0),
(784, 71, 0, 243, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2021-10-07 21:38:49', 0),
(785, 71, 0, 244, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-07 21:39:26', 0);
INSERT INTO `map_changes` (`id`, `gebruiker`, `portaalgebruiker`, `eventid`, `persoonid`, `vrijwilligerid`, `podiaid`, `part`, `partid`, `event`, `deelname`, `changeaction`, `changefield`, `oldvalue`, `changevalue`, `changedate`, `del`) VALUES
(786, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 11, 1, 11, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-08 10:59:22', 0),
(787, 71, 0, 31, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-10-08 11:44:10', 0),
(788, 71, 0, 30, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-10-08 11:45:00', 0),
(789, 71, 0, 29, 0, 0, 0, NULL, 2, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-10-08 11:45:53', 0),
(790, 71, 0, 32, 0, 0, 0, NULL, 14, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-10-08 11:50:16', 0),
(791, 71, 0, 31, 0, 0, 0, NULL, 4, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-10-08 11:51:27', 0),
(792, 71, 0, 30, 0, 0, 0, NULL, 3, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-10-08 11:52:23', 0),
(793, 71, 0, 29, 0, 0, 0, NULL, 2, 0, 0, 'edit', 'actie Bloemen', NULL, '', '2021-10-08 11:53:50', 0),
(794, 71, 0, 240, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-08 22:41:01', 0),
(795, 71, 0, 241, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-10-08 22:42:26', 0),
(796, 71, 0, 87, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-09 00:55:56', 0),
(797, 71, 0, 248, 0, 0, 0, NULL, 24, 0, 0, 'edit', 'functie 24', NULL, '', '2021-10-09 00:56:21', 0),
(798, 71, 0, 59, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '31', '2021-10-09 00:58:16', 0),
(799, 71, 0, 126, 0, 0, 0, NULL, 6, 0, 0, 'edit', 'functie 6', NULL, '', '2021-10-09 01:05:02', 0),
(800, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '31', '2021-10-09 01:06:17', 0),
(801, 71, 0, 250, 0, 0, 0, NULL, 6, 0, 0, 'edit', 'functie 6', NULL, '', '2021-10-09 01:07:10', 0),
(802, 71, 0, 31, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '35', '2021-10-09 01:08:34', 0),
(803, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-09 01:10:01', 0),
(804, 71, 0, 1, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-09 01:11:28', 0),
(805, 71, 0, 65, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '6', '2021-10-09 01:13:35', 0),
(806, 71, 0, 111, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-09 01:25:33', 0),
(807, 71, 0, 103, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '24', '2021-10-09 01:30:39', 0),
(808, 71, 0, 101, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '27', '2021-10-09 01:36:42', 0),
(809, 71, 0, 251, 0, 0, 0, NULL, 35, 0, 0, 'edit', 'functie 35', NULL, '', '2021-10-09 01:41:22', 0),
(810, 71, 0, 95, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2021-10-09 12:19:19', 0),
(811, 71, 0, 101, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '27', '2021-10-10 07:48:28', 0),
(812, 1, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'dienst', NULL, '36', '2021-10-27 11:10:06', 0),
(813, 1, 0, 4, 0, 0, 0, NULL, 0, 0, 0, 'add', 'financieen', NULL, '1', '2021-10-27 11:13:10', 0),
(814, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 108, 1, 108, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2021-10-27 11:27:31', 0),
(815, 0, 1, 120, 0, 0, 0, 'custom_items', 20, 0, 0, 'edit', 'Adres', '', 'test', '2022-01-31 20:34:08', 0),
(816, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 108, 1, 108, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2022-02-09 21:58:35', 0),
(817, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 108, 1, 108, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2022-02-09 21:59:42', 0),
(818, 0, 0, 0, 0, 0, 0, 'nieuwevrijwilliger', 108, 1, 108, 'nieuwevrijwilliger', 'een nieuw vrijwilligersformulier ingevuld', NULL, '', '2022-02-09 22:30:43', 0),
(819, 1, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '21', '2022-02-09 22:35:58', 0),
(820, 1, 0, 1, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2022-02-09 22:36:04', 0),
(821, 1, 0, 1, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2022-02-09 22:36:27', 0),
(822, 1, 0, 1, 0, 0, 0, NULL, 21, 0, 0, 'edit', 'functie 21', NULL, '', '2022-02-09 22:36:33', 0),
(823, 1, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '7', '2022-02-09 22:37:21', 0),
(824, 1, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '7', '2022-02-09 22:37:21', 0),
(825, 1, 0, 12, 0, 0, 0, NULL, 0, 0, 0, 'add', 'planningsregel', NULL, '7', '2022-02-09 22:37:21', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_combination`
--

DROP TABLE IF EXISTS `map_combination`;
CREATE TABLE `map_combination` (
  `id` int(11) NOT NULL,
  `map` int(11) NOT NULL,
  `mapitem1` int(11) NOT NULL,
  `mapitem2` int(11) NOT NULL,
  `mapitem3` int(11) NOT NULL,
  `mapitem4` int(11) NOT NULL,
  `mapitem5` int(11) NOT NULL,
  `usagetype` varchar(50) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_config`
--

DROP TABLE IF EXISTS `map_config`;
CREATE TABLE `map_config` (
  `id` int(11) NOT NULL,
  `organisatie` varchar(150) NOT NULL,
  `organisatoradres` varchar(150) NOT NULL,
  `organisatortelefoon` varchar(150) NOT NULL,
  `organisatoremail` text NOT NULL,
  `naam` varchar(150) NOT NULL,
  `authenticatornaam` varchar(150) NOT NULL,
  `sessiename` varchar(150) NOT NULL,
  `vanafvandaag` int(3) NOT NULL DEFAULT '0',
  `filtervanaf` date NOT NULL,
  `filtertm` date NOT NULL,
  `programmavanaf` date NOT NULL,
  `programmatm` date NOT NULL,
  `readonly` int(3) NOT NULL,
  `active` int(3) NOT NULL,
  `url` text NOT NULL,
  `urlorg` text NOT NULL,
  `matchnaam` varchar(150) NOT NULL,
  `voorwaardenvrijwilligers` text NOT NULL,
  `privacystatement` text NOT NULL,
  `vrijwilligersportaaltaal` varchar(150) NOT NULL,
  `vrijwilligersportaalintroductie` text NOT NULL,
  `vrijwilligersportaalintroductieen` text,
  `vrijwilligersportaalbeschikbaarheid` text NOT NULL,
  `vrijwilligersportaalbeschikbaarheiden` text,
  `vrijwilligersportaalactief` int(3) NOT NULL,
  `vrijwilligersportaaltijden` int(3) NOT NULL,
  `vrijwilligersportaaltshirtmaten` text,
  `vrijwilligersportaaltshirtmatenen` text NOT NULL,
  `vrijwilligerstoonshirt` int(3) NOT NULL DEFAULT '1',
  `vrijwilligerstoonjas` int(3) NOT NULL DEFAULT '0',
  `vrijwilligerstoonbroek` int(3) NOT NULL DEFAULT '0',
  `attentieverjaardag` int(3) NOT NULL,
  `vrijwilligerscontact` text NOT NULL,
  `planvoorkeur` int(3) NOT NULL,
  `websitepublicatie` int(3) NOT NULL,
  `toondraaiboek` int(3) NOT NULL,
  `financieeltabblad` int(3) NOT NULL,
  `benodigdhedentabblad` int(3) NOT NULL,
  `actietabblad` int(3) NOT NULL,
  `documententabblad` int(3) NOT NULL,
  `compositietabblad` int(3) NOT NULL,
  `toonhistorietabblad` int(3) NOT NULL DEFAULT '0',
  `tooncorrespondentietabblad` int(3) NOT NULL DEFAULT '0',
  `mtm_organisatiesaanmelden` int(3) NOT NULL,
  `mtm_eigenorganisatiedomein` varchar(150) NOT NULL,
  `crewtabblad` int(3) NOT NULL,
  `toonuitvoerders` int(3) NOT NULL,
  `toonuitvoerderspositie` int(3) NOT NULL,
  `naamuitvoerders` varchar(150) NOT NULL,
  `tooncomposities` int(3) NOT NULL,
  `naamcomposities` varchar(150) NOT NULL,
  `toonwettelijketaak` int(3) NOT NULL DEFAULT '0',
  `toonreserveringsstatus` int(3) NOT NULL DEFAULT '0',
  `toonprogramma` int(3) NOT NULL DEFAULT '0',
  `tooncoordinaten` int(3) NOT NULL DEFAULT '0',
  `toonrollen` int(3) NOT NULL DEFAULT '1',
  `toonpersonenmaten` int(3) NOT NULL DEFAULT '1',
  `artiestportaalactief` int(3) NOT NULL,
  `artiestportaaltijden` int(3) NOT NULL,
  `checkin_programma` text NOT NULL,
  `checkin_persoonlijk` text NOT NULL,
  `checkin_techniek` text NOT NULL,
  `checkin_promotie` text NOT NULL,
  `checkin_factuur` text NOT NULL,
  `checkin_toonprogramma` int(3) NOT NULL DEFAULT '1',
  `checkin_tooninformatie` int(3) NOT NULL DEFAULT '1',
  `checkin_toontechniek` int(3) NOT NULL DEFAULT '1',
  `checkin_toonpromotie` int(3) NOT NULL DEFAULT '1',
  `checkin_toonfactuur` int(3) NOT NULL DEFAULT '1',
  `artiestlocatie` int(3) NOT NULL DEFAULT '1',
  `artiestopmerkingen` int(3) NOT NULL DEFAULT '0',
  `betaalapikey` varchar(150) NOT NULL,
  `startpage` varchar(150) NOT NULL,
  `continueplanning` int(3) NOT NULL,
  `tooninschrijving` int(3) NOT NULL,
  `api_timesquare` text NOT NULL,
  `inplannen_relaties` int(3) NOT NULL DEFAULT '0',
  `inplannen_vrijwilligers` int(3) NOT NULL DEFAULT '0',
  `inplannen_alleenbeschikbaar` int(3) NOT NULL DEFAULT '0',
  `inplannenopvrijwilligersdata` int(3) NOT NULL DEFAULT '0',
  `inplannen_minutenmarge` int(3) NOT NULL,
  `inplannen_ontbijt` int(3) NOT NULL DEFAULT '0',
  `inplannen_lunch` int(3) NOT NULL DEFAULT '1',
  `inplannen_diner` int(3) NOT NULL DEFAULT '1',
  `inplannen_nacht` int(3) NOT NULL DEFAULT '0',
  `inplannen_consumptiemunten` int(3) NOT NULL DEFAULT '1',
  `vrijwextraveld1titel` text,
  `vrijwextraveld1type` varchar(150) NOT NULL,
  `vrijwextraveld1waarden` text NOT NULL,
  `vrijwextraveld1tabblad` int(11) DEFAULT NULL,
  `vrijwextraveld1verplicht` int(11) DEFAULT NULL,
  `vrijwextraveld2titel` text,
  `vrijwextraveld2type` varchar(150) NOT NULL,
  `vrijwextraveld2waarden` text NOT NULL,
  `vrijwextraveld2tabblad` int(11) DEFAULT NULL,
  `vrijwextraveld2verplicht` int(11) DEFAULT NULL,
  `vrijwextraveld3titel` text,
  `vrijwextraveld3type` varchar(150) NOT NULL,
  `vrijwextraveld3waarden` text NOT NULL,
  `vrijwextraveld3tabblad` int(11) DEFAULT NULL,
  `vrijwextraveld3verplicht` int(11) DEFAULT NULL,
  `vrijwextraveld4titel` text,
  `vrijwextraveld4type` varchar(150) DEFAULT NULL,
  `vrijwextraveld4waarden` text,
  `vrijwextraveld4tabblad` int(11) DEFAULT NULL,
  `vrijwextraveld4verplicht` int(11) DEFAULT NULL,
  `vrijwextraveld5titel` text,
  `vrijwextraveld5type` varchar(150) DEFAULT NULL,
  `vrijwextraveld5waarden` text,
  `vrijwextraveld5tabblad` int(11) DEFAULT NULL,
  `vrijwextraveld5verplicht` int(11) DEFAULT NULL,
  `vrijwextraveld6titel` text,
  `vrijwextraveld6type` varchar(150) DEFAULT NULL,
  `vrijwextraveld6waarden` text,
  `vrijwextraveld6tabblad` int(11) DEFAULT NULL,
  `vrijwextraveld6verplicht` int(11) DEFAULT NULL,
  `staffmeerderepersonenzelfdetijdstip` int(3) NOT NULL,
  `selfservicewachtwoord` varchar(150) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `reserveringactief` int(3) NOT NULL DEFAULT '0',
  `reserveringemail` text,
  `reserveringemailintroductie` text,
  `reserveringemailafsluiting` text,
  `reserveringfinancielecategorie` int(11) NOT NULL DEFAULT '0',
  `reserveringdocumentgeneratie` int(11) NOT NULL DEFAULT '0',
  `pdflocaltransportopmerking` text,
  `nieuwwatwilje` int(3) NOT NULL DEFAULT '1',
  `nieuwtijdloos` int(3) NOT NULL DEFAULT '1',
  `nieuwstatus` int(3) NOT NULL DEFAULT '0',
  `nieuwcategorie` int(3) NOT NULL DEFAULT '0',
  `nieuwwettelijketaak` int(3) NOT NULL DEFAULT '0',
  `controledubbeleactiviteit` int(3) NOT NULL DEFAULT '1',
  `vandaagalleenprogramma` int(3) NOT NULL DEFAULT '1',
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_config`
--

INSERT INTO `map_config` (`id`, `organisatie`, `organisatoradres`, `organisatortelefoon`, `organisatoremail`, `naam`, `authenticatornaam`, `sessiename`, `vanafvandaag`, `filtervanaf`, `filtertm`, `programmavanaf`, `programmatm`, `readonly`, `active`, `url`, `urlorg`, `matchnaam`, `voorwaardenvrijwilligers`, `privacystatement`, `vrijwilligersportaaltaal`, `vrijwilligersportaalintroductie`, `vrijwilligersportaalintroductieen`, `vrijwilligersportaalbeschikbaarheid`, `vrijwilligersportaalbeschikbaarheiden`, `vrijwilligersportaalactief`, `vrijwilligersportaaltijden`, `vrijwilligersportaaltshirtmaten`, `vrijwilligersportaaltshirtmatenen`, `vrijwilligerstoonshirt`, `vrijwilligerstoonjas`, `vrijwilligerstoonbroek`, `attentieverjaardag`, `vrijwilligerscontact`, `planvoorkeur`, `websitepublicatie`, `toondraaiboek`, `financieeltabblad`, `benodigdhedentabblad`, `actietabblad`, `documententabblad`, `compositietabblad`, `toonhistorietabblad`, `tooncorrespondentietabblad`, `mtm_organisatiesaanmelden`, `mtm_eigenorganisatiedomein`, `crewtabblad`, `toonuitvoerders`, `toonuitvoerderspositie`, `naamuitvoerders`, `tooncomposities`, `naamcomposities`, `toonwettelijketaak`, `toonreserveringsstatus`, `toonprogramma`, `tooncoordinaten`, `toonrollen`, `toonpersonenmaten`, `artiestportaalactief`, `artiestportaaltijden`, `checkin_programma`, `checkin_persoonlijk`, `checkin_techniek`, `checkin_promotie`, `checkin_factuur`, `checkin_toonprogramma`, `checkin_tooninformatie`, `checkin_toontechniek`, `checkin_toonpromotie`, `checkin_toonfactuur`, `artiestlocatie`, `artiestopmerkingen`, `betaalapikey`, `startpage`, `continueplanning`, `tooninschrijving`, `api_timesquare`, `inplannen_relaties`, `inplannen_vrijwilligers`, `inplannen_alleenbeschikbaar`, `inplannenopvrijwilligersdata`, `inplannen_minutenmarge`, `inplannen_ontbijt`, `inplannen_lunch`, `inplannen_diner`, `inplannen_nacht`, `inplannen_consumptiemunten`, `vrijwextraveld1titel`, `vrijwextraveld1type`, `vrijwextraveld1waarden`, `vrijwextraveld1tabblad`, `vrijwextraveld1verplicht`, `vrijwextraveld2titel`, `vrijwextraveld2type`, `vrijwextraveld2waarden`, `vrijwextraveld2tabblad`, `vrijwextraveld2verplicht`, `vrijwextraveld3titel`, `vrijwextraveld3type`, `vrijwextraveld3waarden`, `vrijwextraveld3tabblad`, `vrijwextraveld3verplicht`, `vrijwextraveld4titel`, `vrijwextraveld4type`, `vrijwextraveld4waarden`, `vrijwextraveld4tabblad`, `vrijwextraveld4verplicht`, `vrijwextraveld5titel`, `vrijwextraveld5type`, `vrijwextraveld5waarden`, `vrijwextraveld5tabblad`, `vrijwextraveld5verplicht`, `vrijwextraveld6titel`, `vrijwextraveld6type`, `vrijwextraveld6waarden`, `vrijwextraveld6tabblad`, `vrijwextraveld6verplicht`, `staffmeerderepersonenzelfdetijdstip`, `selfservicewachtwoord`, `checksum`, `reserveringactief`, `reserveringemail`, `reserveringemailintroductie`, `reserveringemailafsluiting`, `reserveringfinancielecategorie`, `reserveringdocumentgeneratie`, `pdflocaltransportopmerking`, `nieuwwatwilje`, `nieuwtijdloos`, `nieuwstatus`, `nieuwcategorie`, `nieuwwettelijketaak`, `controledubbeleactiviteit`, `vandaagalleenprogramma`, `del`) VALUES
(1, 'Floriade 2022', '', '', 'dennisdekriek@gmail.com', 'Floriade 2022', 'Demo EventKit', 'festival_eventkitdemo_', 0, '2021-10-04', '2021-10-10', '2021-10-04', '2021-10-10', 0, 1, 'http://localhost:8888/github/festivalmanager/', 'http://localhost:8888/github/festivalmanager/org/test/', '', '', '', 'nl', 'Hey leuk dat je er bent!\r\n\r\nVoor de Floriade in Almere zoeken we creatieve jongeren uit Almere die een 700 meter lange street art tekening willen schilderen. In 60 dagen proberen we een zo\'n cool mogelijk kunstwerk te creëren.\r\n\r\nWil je meedoen? Schrijf je dan in via deze website.\r\n\r\n', 'Hey nice to have you here!\r\n\r\nFor the Floriade in Almere we are looking for creative young people from Almere who want to paint a 700 meter long street art drawing. In 60 days we try to create as cool a piece of art as possible.\r\n\r\nDo you want to join? Then register via this website.', 'Geef hieronder aan op welke dagen je beschikbaar bent om te vrijwilligen.', 'Please let us know which days you are available to volunteer.', 1, 0, 'XS=XS;S=S;M=M;L=L;XL=XL;XXL=XXL;XXXL=XXXL', 'XS=XS;S=S;M=M;L=L;XL=XL;XXL=XXL;XXXL=XXXL', 1, 0, 0, 1, '', 1, 0, 0, 9, 2, 2, 12, 1, 0, 0, 0, '', 13, 1, 1, 'Uitvoerders', 0, '', 0, 0, 0, 0, 1, 1, 1, 1, '', '', '', '', '', 1, 1, 1, 1, 1, 1, 0, '', 'index.php?page=alleVrijwilligers', 0, 0, '', 0, 0, 0, 0, 15, 0, 1, 1, 0, 1, '', '', '', 0, 0, '', '', '', 0, 0, '', '', '', 0, 0, '', '', '', 0, 0, '', '', NULL, 0, 0, '', '', '', 0, 0, 0, '', '', 0, '', '', '', 0, 0, NULL, 1, 1, 0, 0, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_contractsjablonen`
--

DROP TABLE IF EXISTS `map_contractsjablonen`;
CREATE TABLE `map_contractsjablonen` (
  `id` int(11) NOT NULL,
  `organisatie` int(11) NOT NULL,
  `soort` varchar(150) NOT NULL,
  `contractnaam` varchar(150) NOT NULL,
  `contractinhoud` text NOT NULL,
  `top` text NOT NULL,
  `footer` text NOT NULL,
  `footerparaaftext` varchar(150) NOT NULL,
  `footerparaafuitgeslotenpagina` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_correspondentie`
--

DROP TABLE IF EXISTS `map_correspondentie`;
CREATE TABLE `map_correspondentie` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL DEFAULT '0',
  `orderid` int(11) NOT NULL DEFAULT '0',
  `vrijwilligerid` int(11) NOT NULL DEFAULT '0',
  `organisatieid` int(11) NOT NULL DEFAULT '0',
  `aanbodid` int(11) NOT NULL DEFAULT '0',
  `eventid` int(11) NOT NULL DEFAULT '0',
  `inschrijvingid` int(11) NOT NULL DEFAULT '0',
  `persoonid` int(11) NOT NULL DEFAULT '0',
  `podiaid` int(11) NOT NULL DEFAULT '0',
  `deelnemer` int(11) NOT NULL DEFAULT '0',
  `deelname` int(11) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL DEFAULT '0',
  `bericht` text,
  `email` text,
  `verzonden` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `gebruiker` int(11) NOT NULL DEFAULT '0',
  `pdfinschrijving` varchar(150) DEFAULT NULL,
  `pdffactuur` varchar(150) DEFAULT NULL,
  `pdfadministratiekosten` varchar(150) DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_correspondentie`
--

INSERT INTO `map_correspondentie` (`id`, `event`, `orderid`, `vrijwilligerid`, `organisatieid`, `aanbodid`, `eventid`, `inschrijvingid`, `persoonid`, `podiaid`, `deelnemer`, `deelname`, `map`, `bericht`, `email`, `verzonden`, `gebruiker`, `pdfinschrijving`, `pdffactuur`, `pdfadministratiekosten`, `del`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 96, 0, 'Hoi Juanita,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'juanita_koopal@hotmail.com', '2021-09-26 10:45:55', 98, 'maildocs/', NULL, NULL, 0),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 97, 0, 'Hoi Beata ,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'beataheeringa@hotmail.com', '2021-09-26 16:11:01', 100, 'maildocs/', NULL, NULL, 0),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 102, 98, 0, 'Hoi Gert,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'acacadabra1958@gmail.com', '2021-09-26 20:37:37', 102, 'maildocs/', NULL, NULL, 0),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103, 99, 0, 'Hoi Herman,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'hermanhoogendijk@gmail.com', '2021-09-27 16:53:14', 103, 'maildocs/', NULL, NULL, 0),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 101, 0, 'Hoi Anja,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'Avdeijk@telekabel.nl', '2021-09-28 08:41:09', 106, 'maildocs/', NULL, NULL, 0),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 101, 0, 'Hoi Anja,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'Avdeijk@telekabel.nl', '2021-09-28 08:59:07', 106, 'maildocs/', NULL, NULL, 0),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, 103, 0, 'Hoi Gerie,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'gbtadema@hotmail.com', '2021-09-29 15:15:10', 109, 'maildocs/', NULL, NULL, 0),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 106, 0, 'Hoi Monique,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij CityProms!\r\n\r\nGroet\r\nTeam CityProms\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/cityproms/vrijwilligers', 'galamam1967@gmail.com', '2021-09-30 20:01:55', 111, 'maildocs/', NULL, NULL, 0),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112, 108, 0, 'Hoi dfgdf,\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij Textilium!\r\n\r\nGroet\r\nTeam Textilium\r\n\n\n\nJe hebt inzicht op je actuele aanmelding door in te loggen op https://eventkit.online/festivalmanager/org/demo/vrijwilligers', 'dennisdekriek@gmail.com', '2022-02-09 21:59:48', 112, 'maildocs/', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_dailymail`
--

DROP TABLE IF EXISTS `map_dailymail`;
CREATE TABLE `map_dailymail` (
  `id` int(11) NOT NULL,
  `gebruiktaccount` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `verzonden` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_dailymail`
--

INSERT INTO `map_dailymail` (`id`, `gebruiktaccount`, `email`, `verzonden`) VALUES
(1, 'ownietbeantwoorden@inschrijvenbij.nl', 'dennisdekriek@gmail.com', '2022-02-09');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_deelname`
--

DROP TABLE IF EXISTS `map_deelname`;
CREATE TABLE `map_deelname` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `deelnemer` int(11) NOT NULL,
  `definitief` int(3) NOT NULL,
  `map` int(11) NOT NULL,
  `artikelen` int(11) NOT NULL,
  `artikelen2` int(11) NOT NULL,
  `artikelen3` int(11) NOT NULL,
  `handelswaarbeschrijving` text NOT NULL,
  `bereiding` int(11) NOT NULL,
  `voorkeursplaats` text NOT NULL,
  `opmerkingen` text NOT NULL,
  `stroomgebruik` text NOT NULL,
  `stroomgebruikanders` text NOT NULL,
  `stroomgebruikwatt` varchar(150) NOT NULL,
  `stroomstekkers` text NOT NULL,
  `aandacht` int(11) NOT NULL,
  `interneopmerkingen` text NOT NULL,
  `opmerkingennaarklant` text NOT NULL,
  `bedrag` varchar(150) NOT NULL,
  `vat` varchar(150) NOT NULL,
  `bedragexclbtw` varchar(150) NOT NULL,
  `checksum` text NOT NULL,
  `toonakkoordspecifiek1` varchar(50) NOT NULL,
  `akkoordalgemenevoorwaarden` varchar(100) NOT NULL,
  `akkoordopmerkingenorganisatie` varchar(100) NOT NULL,
  `akkoordspecifiek1` varchar(100) NOT NULL,
  `foto1` text NOT NULL,
  `foto2` text NOT NULL,
  `foto3` text NOT NULL,
  `foto4` text NOT NULL,
  `foto5` text NOT NULL,
  `deelnameakkoord` int(3) NOT NULL,
  `deelnamecompleet` int(3) NOT NULL,
  `latestdocument` text NOT NULL,
  `toegevoegd` datetime NOT NULL,
  `gewijzigd` datetime NOT NULL,
  `verloopt` date NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_deelnemers`
--

DROP TABLE IF EXISTS `map_deelnemers`;
CREATE TABLE `map_deelnemers` (
  `id` int(11) NOT NULL,
  `typeorganisatie` varchar(150) NOT NULL,
  `bedrijfsnaam` varchar(300) NOT NULL,
  `adres` varchar(300) NOT NULL,
  `postcode` varchar(300) NOT NULL,
  `woonplaats` varchar(300) NOT NULL,
  `land` varchar(200) NOT NULL,
  `factuuradres` varchar(300) NOT NULL,
  `factuurpostcode` varchar(300) NOT NULL,
  `factuurwoonplaats` varchar(300) NOT NULL,
  `factuurland` varchar(200) NOT NULL,
  `aanhef` varchar(150) NOT NULL,
  `contactvoornaam` varchar(300) NOT NULL,
  `contacttussenvoegsels` varchar(300) NOT NULL,
  `contactachternaam` varchar(300) NOT NULL,
  `telefoon` varchar(300) NOT NULL,
  `mobiel` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `website` text NOT NULL,
  `kvk` varchar(300) NOT NULL,
  `kvkuitreksel` text NOT NULL,
  `btwnummer` varchar(100) NOT NULL,
  `rekeningnummer` varchar(300) NOT NULL,
  `wachtwoord` varchar(300) NOT NULL,
  `goedgekeurd` int(3) NOT NULL,
  `datumtoegevoegd` datetime NOT NULL,
  `checksum` text NOT NULL,
  `blacklist` int(3) NOT NULL,
  `blacklistreason` text NOT NULL,
  `voorkeurnieuwsbrief` datetime NOT NULL,
  `voorkeurvolgendjaar` datetime NOT NULL,
  `alcoholhoudendeverkoop` int(3) NOT NULL,
  `alcoholvolledigenaam` varchar(150) NOT NULL,
  `alcoholgeboortedatum` varchar(150) NOT NULL,
  `alcoholgeboorteplaats` varchar(150) NOT NULL,
  `alcoholhuisadres` varchar(150) NOT NULL,
  `alcoholpostcode` varchar(150) NOT NULL,
  `alcoholwoonplaats` varchar(150) NOT NULL,
  `btwverleggen` int(3) NOT NULL,
  `lastlogin_date` datetime NOT NULL,
  `lastlogin_ip` varchar(50) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_documentgeneratie`
--

DROP TABLE IF EXISTS `map_documentgeneratie`;
CREATE TABLE `map_documentgeneratie` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) DEFAULT NULL,
  `doelgroep` int(11) NOT NULL,
  `path` text NOT NULL,
  `financieel` int(3) NOT NULL,
  `volgorde` int(5) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_email`
--

DROP TABLE IF EXISTS `map_email`;
CREATE TABLE `map_email` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `emailtype` varchar(150) NOT NULL,
  `geadresseerde` varchar(50) NOT NULL,
  `taal` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `afwijkendemailadres` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_email`
--

INSERT INTO `map_email` (`id`, `event`, `emailtype`, `geadresseerde`, `taal`, `subject`, `message`, `afwijkendemailadres`, `del`) VALUES
(5, 1, 'newvolunteer', 'deelnemer', 'nl', 'Welkom als vrijwilliger bij de Floriade', 'Hoi [voornaam],\r\n\r\nBedankt voor het inschrijven als vrijwilliger bij Floriade!\r\n\r\nGroet\r\nTeam Floriade / Stichting James\r\n', '', 0),
(6, 1, 'paid', 'beide', 'nl', 'Textilium tickets', 'Beste [voornaam] [achternaam],\r\n\r\nHierbij uw tickets voor Textilium.\r\n\r\nGroet\r\nTeam Textilium\r\n\r\n', '', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_enquete`
--

DROP TABLE IF EXISTS `map_enquete`;
CREATE TABLE `map_enquete` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `beschrijving` text NOT NULL,
  `bedankt` text NOT NULL,
  `versturenbutton` varchar(150) NOT NULL DEFAULT 'Versturen',
  `foutmeldingverplichtveld` varchar(150) NOT NULL DEFAULT 'Vul deze vraag in',
  `foutmeldinggeefantwoord` varchar(150) NOT NULL DEFAULT 'Geef een antwoord op alle vragen',
  `actief` int(3) NOT NULL,
  `datum` datetime NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `email` int(11) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_enqueteantwoorden`
--

DROP TABLE IF EXISTS `map_enqueteantwoorden`;
CREATE TABLE `map_enqueteantwoorden` (
  `id` int(11) NOT NULL,
  `enqueteid` int(11) NOT NULL,
  `email` text NOT NULL,
  `antwoorden` text NOT NULL,
  `inschrijfstatus` int(11) NOT NULL,
  `afspraken` text NOT NULL,
  `opmerkingen` text NOT NULL,
  `datum` datetime NOT NULL,
  `ip` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_enqueteverwerken`
--

DROP TABLE IF EXISTS `map_enqueteverwerken`;
CREATE TABLE `map_enqueteverwerken` (
  `id` int(11) NOT NULL,
  `enqueteid` int(11) NOT NULL DEFAULT '0',
  `volgorde` int(3) NOT NULL DEFAULT '0',
  `tabel` varchar(150) DEFAULT NULL,
  `koppelveld` varchar(150) DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_enquetevragen`
--

DROP TABLE IF EXISTS `map_enquetevragen`;
CREATE TABLE `map_enquetevragen` (
  `id` int(11) NOT NULL,
  `enqueteid` int(11) NOT NULL,
  `positie` int(3) NOT NULL,
  `type` text NOT NULL,
  `inputType` text NOT NULL,
  `name` text NOT NULL,
  `isRequired` text NOT NULL,
  `visibleIf` text NOT NULL,
  `isAllRowRequired` text NOT NULL,
  `title` text NOT NULL,
  `placeholder` text NOT NULL,
  `extra` text NOT NULL,
  `validators` text NOT NULL,
  `columns` text NOT NULL,
  `rows` text NOT NULL,
  `ratevalues` text NOT NULL,
  `isemailveld` int(3) NOT NULL DEFAULT '0',
  `tabel` varchar(150) DEFAULT NULL,
  `tabelveld` varchar(150) DEFAULT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_evenementen`
--

DROP TABLE IF EXISTS `map_evenementen`;
CREATE TABLE `map_evenementen` (
  `id` int(11) NOT NULL,
  `actief` int(11) NOT NULL,
  `jaar` varchar(150) NOT NULL,
  `titel` varchar(150) NOT NULL,
  `subtitel` varchar(150) NOT NULL,
  `authenticatornaam` varchar(150) NOT NULL,
  `sessiename` varchar(150) NOT NULL,
  `organisatornaam` varchar(150) NOT NULL,
  `organisatoradres` varchar(150) NOT NULL,
  `organisatortelefoon` varchar(150) NOT NULL,
  `organisatoremail` varchar(150) NOT NULL,
  `organisatorwebsite` text NOT NULL,
  `welcometext` text NOT NULL,
  `categorietitel` varchar(150) NOT NULL,
  `aantaldagengoedkeuring` int(11) NOT NULL,
  `aantaldagenreservering` int(3) NOT NULL,
  `orderprefix` varchar(150) NOT NULL,
  `reserveringsprefix` varchar(150) NOT NULL,
  `algemenevoorwaarden` text NOT NULL,
  `privacystatement` text NOT NULL,
  `disclaimer` text NOT NULL,
  `ikverkooptext` varchar(150) NOT NULL,
  `consumptieartikelenbereiden` int(3) NOT NULL,
  `alcoholhoudendeverkoop` int(3) NOT NULL,
  `stroomverbruik` int(3) NOT NULL,
  `maximumkramen` int(3) NOT NULL,
  `maximumtekst` text NOT NULL,
  `directfactureren` int(3) NOT NULL,
  `titelafschrift` varchar(150) NOT NULL,
  `administratiekosten` float(5,2) NOT NULL,
  `administratiekostenbtw` float(5,2) NOT NULL,
  `map` int(11) NOT NULL,
  `aantalcategorieen` int(11) NOT NULL,
  `categorietekst` text NOT NULL,
  `toonbeschrijving` int(3) NOT NULL,
  `toonfotos` int(3) NOT NULL,
  `voorkeursplaatsopmerking` text NOT NULL,
  `precarioopmerking` text NOT NULL,
  `prijzenopmerking` text NOT NULL,
  `url` text NOT NULL,
  `urlorg` text NOT NULL,
  `betaalapikey` varchar(150) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `foto1` varchar(150) NOT NULL,
  `foto2` varchar(150) NOT NULL,
  `foto3` varchar(150) NOT NULL,
  `foto4` varchar(150) NOT NULL,
  `foto5` varchar(150) NOT NULL,
  `pdftemplate` varchar(150) NOT NULL,
  `toonkvk` int(3) NOT NULL DEFAULT '0',
  `toonbtwnummer` int(3) NOT NULL DEFAULT '0',
  `toonrekeningnummer` int(3) NOT NULL DEFAULT '0',
  `tekstartikelenverkopen` text,
  `tekstextraartikel` varchar(150) DEFAULT NULL,
  `fotouploaden` int(3) NOT NULL DEFAULT '1',
  `btwverleggen` int(3) NOT NULL DEFAULT '1',
  `beschrijvingvanproducten` int(3) NOT NULL DEFAULT '1',
  `facturenzichtbaar` int(3) NOT NULL DEFAULT '1',
  `gegevensaanpassen` int(3) NOT NULL DEFAULT '1',
  `controlereservering` int(3) NOT NULL DEFAULT '1',
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_fasering`
--

DROP TABLE IF EXISTS `map_fasering`;
CREATE TABLE `map_fasering` (
  `id` int(11) NOT NULL,
  `fasenaam` varchar(150) NOT NULL,
  `date_from` date NOT NULL,
  `date_until` date NOT NULL,
  `active` int(3) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_files`
--

DROP TABLE IF EXISTS `map_files`;
CREATE TABLE `map_files` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL DEFAULT '0',
  `persoonid` int(11) NOT NULL DEFAULT '0',
  `vrijwilligerid` int(11) NOT NULL DEFAULT '0',
  `vrijwilligerdeelname` int(11) NOT NULL DEFAULT '0',
  `podiaid` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `schermnaam` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `groep` varchar(150) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `financieel` int(3) NOT NULL DEFAULT '0',
  `documentsoort` int(11) NOT NULL DEFAULT '0',
  `toegevoegddoorvrijwilliger` int(3) NOT NULL DEFAULT '0',
  `toegevoegddoorevent` int(3) NOT NULL DEFAULT '0',
  `event` int(3) NOT NULL DEFAULT '0',
  `deelnemerid` int(3) NOT NULL DEFAULT '0',
  `deelnameid` int(3) NOT NULL DEFAULT '0',
  `toegevoegddoorhandelaar` int(3) NOT NULL DEFAULT '0',
  `opmerkingen` text CHARACTER SET utf8,
  `actueel` int(3) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `map_files`
--

INSERT INTO `map_files` (`id`, `eventid`, `persoonid`, `vrijwilligerid`, `vrijwilligerdeelname`, `podiaid`, `file_name`, `schermnaam`, `groep`, `financieel`, `documentsoort`, `toegevoegddoorvrijwilliger`, `toegevoegddoorevent`, `event`, `deelnemerid`, `deelnameid`, `toegevoegddoorhandelaar`, `opmerkingen`, `actueel`, `datum`) VALUES
(2, 5, 0, 0, 0, 0, 'CircusCharmsdocx3c127dcece6c72550e8b04a1e4985c1e.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:47:25'),
(3, 5, 0, 0, 0, 0, 'VragenlijstCityProms2021ingevdocx0f5f8cea9b2a37a5415879ab8095b76e.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:47:35'),
(4, 5, 0, 0, 0, 0, '00140947copyHansHijmering-scaledjpg8548241381b1ed4d3f5cd2709545abe7.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:47:41'),
(6, 5, 0, 0, 0, 0, '00091592HansHijmering-scaledjpgc03360c19a9ba0230085195ba35f40c6.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:48:27'),
(7, 5, 0, 0, 0, 0, '2500141297HansHijmering-scaledjpg7693f5abbeaac8beb4caf471acd55ae5.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:52:33'),
(8, 5, 0, 0, 0, 0, '2800146307HansHijmering-scaledjpg7693f5abbeaac8beb4caf471acd55ae5.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:52:33'),
(10, 5, 0, 0, 0, 0, '00091592HansHijmering-scaledjpgdf7f407a6e87349aa8b56e25fba82014.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:52:40'),
(11, 5, 0, 0, 0, 0, '00097281copyHansHijmering-scaledjpg1838ed2eb0291c4ac9eb4dc6ed70910a.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:52:44'),
(14, 5, 0, 0, 0, 0, '00099955copyHansHijmering-scaledjpgda7516bf173503c15cd99a29620bffed.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:52:52'),
(15, 5, 0, 0, 0, 0, '00100953copyHansHijmering-scaledjpgda7516bf173503c15cd99a29620bffed.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:52:52'),
(16, 5, 0, 0, 0, 0, '2500141297HansHijmering-scaledjpgda8b45f7ecf7096c60ad051ba332df9d.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:53:20'),
(17, 5, 0, 0, 0, 0, '00136951r-scaledjpgda8b45f7ecf7096c60ad051ba332df9d.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:53:20'),
(18, 5, 0, 0, 0, 0, '00140947copyHansHijmering-scaledjpg4e89afec4640eb47ec6aaac48c726999.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:53:27'),
(19, 5, 0, 0, 0, 0, 'FrankenRenjpegf3cd81456a8cd51aeef99dd8439d85dd.jpeg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:57:23'),
(20, 5, 0, 0, 0, 0, 'mailjpegdac37835ef1a2a530ac70b1fae53d83a.jpeg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 13:57:39'),
(21, 5, 0, 0, 0, 0, 'mailpng49376e6ba524b9dd3db12e9513646edc.png', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 14:00:22'),
(22, 21, 0, 0, 0, 0, 'Justpressplaydocx25db292a5b43cd87c482f0c255579959.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 15:57:19'),
(23, 21, 0, 0, 0, 0, 'Trailerdocx0e9b2a4c0d7f1072fa7b830df2e0eef6.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 15:57:20'),
(24, 21, 0, 0, 0, 0, 'VRAGEN1DOC64e1f02d54694bbd2ec0f6ca0899382f.DOC', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 15:59:54'),
(25, 21, 0, 0, 0, 0, 'DSC6164-42-5x7900x643png5a33834e11d71bfd9ea1d8da3121601c.png', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 16:02:32'),
(26, 21, 0, 0, 0, 0, 'DSC6164-42-5x7jpg200d89e9c018211b049f6f2be5937b40.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 16:02:46'),
(27, 29, 0, 0, 0, 0, 'VragenlijstCityProms2021Janneliekedocx1ee9aa07bf7caed15a650fca72eaf1d5.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 19:56:44'),
(28, 29, 0, 0, 0, 0, '20200123Jannelieke-125-1HenryFaberjpgcb172ee2a91548c189c49dfc82035a18.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 19:58:09'),
(29, 29, 0, 0, 0, 0, '20200123Jannelieke-148-2HenryFaberjpg9796e9fd9996d72d26f7afecc32a2d5a.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 19:58:24'),
(30, 29, 0, 0, 0, 0, '20200123Jannelieke-206HenryFaberjpg8499f37498edff491c9b88fd5db15e59.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 19:58:50'),
(31, 29, 0, 0, 0, 0, '20200123Jannelieke-156-1HenryFaberjpg4e535dfe397206016c29adedfb13cf4c.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 19:59:19'),
(32, 30, 0, 0, 0, 0, 'VragenlijstCityProms2021-ENGdocx0088cbc19d47ebcf4cba2a56f844d1c5.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 20:09:35'),
(33, 32, 0, 0, 0, 0, 'HCJOCgospelnightinconcertgebouwfotoericvannieuwland204343jpgb118170259df8c0458e0ff8e32098dd8.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:03:54'),
(34, 32, 0, 0, 0, 0, 'RiderJazzOrchestraoftheConcertgebouwmetzangversieDEFpdff7ccfffced55eae8c14fa086f277af47.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:04:07'),
(35, 32, 0, 0, 0, 0, 'StevieWonderaangepastetekstdocxa2e589da0416087a12a24ebfd65f3903.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:04:14'),
(36, 3, 0, 0, 0, 0, 'MedanTrioHospitalityrider1pdf552d4cc94d4875e80f3caa95a5da46dd.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:40:31'),
(37, 3, 0, 0, 0, 0, 'TechnicalRiderStageplot-MedanTrioHetVerhaalvanTareqpdfc52f7c9c501470c035f5fd93ea71e04f.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:40:50'),
(38, 3, 0, 0, 0, 0, 'VragenlijstCityProms2021MedanTriopdf62886eb1cc735724b193ed56e24f3786.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:40:56'),
(39, 3, 0, 0, 0, 0, 'medanfotohiresjpgc100b7441eaadc3c3ea2dc7f298e4fb6.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:41:36'),
(40, 8, 0, 0, 0, 0, 'FotoEvadeWildejpg0578386a5ee4d02a115d7acf49ecd35c.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:57:38'),
(41, 8, 0, 0, 0, 0, 'FotoNikkivanVlietjpgdedd1b94327e9b22676b56eb302d40dd.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:57:44'),
(42, 8, 0, 0, 0, 0, 'VragenlijstCityProms2021tbvNHLStendenkoordocxf361909065966017e230429d018fe4d6.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 21:57:50'),
(43, 6, 0, 0, 0, 0, 'VragenlijstCityProms2021InnocentYouthdocx46defcd1501746b7e53344e39f795ba9.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:07:39'),
(44, 6, 0, 0, 0, 0, 'WilliamKnightTenorjpgjpge6dae0e3e7e5aa52ff073ee6128e7a3b.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:07:49'),
(45, 6, 0, 0, 0, 0, 'CITYPROMSPosterA42021InnocentYouthv3pdf1bedbb7b578d998cbd93f1c36359c29f.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:08:53'),
(46, 6, 0, 0, 0, 0, 'ColoriensembleFoppeSchutlowres7FS7852jpgjpgf7600691a16e3751f6a008cebf9f1a3a.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:09:08'),
(47, 1, 0, 0, 0, 0, 'LichtplanStapel22juni2021pdf1359067bb34c13694b8bb1fbfcea5973.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:21:49'),
(48, 1, 0, 0, 0, 0, 'TechnischelijstStapelpdfe9a043d3cba2e724097726eb1d878383.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:21:56'),
(49, 1, 0, 0, 0, 0, 'Stapeljpeg44b779ae9267e04c43bd3058fecd0b25.jpeg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:22:16'),
(50, 4, 0, 0, 0, 0, 'QuatreForte2jpge0e85266dc006e93d19b695fb48737cb.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:32:09'),
(51, 4, 0, 0, 0, 0, 'VragenlijstCityProms2021QuatreFortepdf0f9bd46e4115bf8acbd7ab8facdb3f63.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:32:13'),
(52, 10, 0, 0, 0, 0, 'VragenlijstCityProms2021MalkinenEliasdocx0578386a5ee4d02a115d7acf49ecd35c.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:57:38'),
(53, 10, 0, 0, 0, 0, 'MD-MalkinElias129-fotograafMerlijnDoomernik900x675jpgjpg9a1c1b315b852a77dc3fe80c1d1f844f.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:57:46'),
(54, 10, 0, 0, 0, 0, 'duomalkineliasokt2021leeuwardencitypromspdf2946a8aec6dbf91385a98ad67fec3b21.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:57:59'),
(55, 10, 0, 0, 0, 0, 'duomalkineliasokt2021leeuwardencitypromsdocx2fb76910a573a8de87eb3565d7fa073f.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 22:58:11'),
(56, 10, 0, 0, 0, 0, 'MD-MalkinElias129-fotograafMerlijnDoomernikjpgjpg49376e6ba524b9dd3db12e9513646edc.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:00:22'),
(57, 12, 0, 0, 0, 0, 'VragenlijstCityProms2021Workshopinclusiviteitdocx12c7b513e65b4fdd5a9eb412a10e1596.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:08:52'),
(58, 12, 0, 0, 0, 0, 'HoomanNassimiportrait2020jpg4ce56cc3016bd7640f3f31d4fa2d3b52.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:09:04'),
(59, 14, 0, 0, 0, 0, 'CVPAdamenMariavanNieukerkenCityPromsdocx6df6c0bff9de41d0c5f2e6f0594a9fff.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:51:45'),
(60, 14, 0, 0, 0, 0, 'MozartsRequiemprogrammabeschrijvingversie4julidocx2ec9a193997d438883897f707f2624a4.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:51:54'),
(61, 14, 0, 0, 0, 0, 'MariavanNieukerken-fotoLouWolfsversie6septjpga4e15130fef885faa6dbc3107e8cfd3e.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:52:02'),
(62, 14, 0, 0, 0, 0, 'GroepsfotoPAdamjpgc195a3d35df67f963e4c1a07021a4318.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:52:12'),
(63, 14, 0, 0, 0, 0, 'PAdamMozartsRequiemnajaar2021jpg1838ed2eb0291c4ac9eb4dc6ed70910a.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-16 23:52:44'),
(64, 34, 0, 0, 0, 0, 'BiografieFransDouweSlotdocx4e3e6a7e8e60c20f8db3a2d3731e3b18.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:02:45'),
(65, 34, 0, 0, 0, 0, 'VragenlijstCityProms2021FDSlotdocx0346f83d3b0e3705c55f914a03f9142e.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:02:54'),
(66, 34, 0, 0, 0, 0, '0C195B1A-2942-46A5-BEED-AC22F3699382InskedeVriesJPG491b9dfc7f708e20007990c67525a52c.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:03:07'),
(67, 34, 0, 0, 0, 0, '8E2603BC-4164-42FF-9458-56ACAB4F79ABInskedeVriesJPG9d297313e6fbf4640ee34b22ecf65687.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:03:14'),
(68, 34, 0, 0, 0, 0, '4205A9F7-88A9-4BBF-BD55-8CF4A9B13324InskedeVriesJPG4134f8782fe770990f02cb4d6e34c297.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:03:20'),
(69, 34, 0, 0, 0, 0, '88795C0C-0630-4D75-B4B1-45686CD85E0BInskedeVriezJPGca32bdefba950acfda4d391d6763028e.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:03:25'),
(70, 34, 0, 0, 0, 0, '97065450-87F2-4E3D-ACCE-4503C37B09F1InskedeVriesJPG328546fe17c854d7bd8126f4e181016b.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:03:30'),
(71, 34, 0, 0, 0, 0, 'A63E6A7B-135A-4886-A69B-29B5BD3CDB6CInskedeVriesJPG66e8d056755394a2f929ba423faa0851.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:03:36'),
(72, 34, 0, 0, 0, 0, 'E2DEA1CA-F9E5-424F-81BD-6062713133C8InskedeVriesJPG680bc5e66ccc05d9dfe26c5535d0dc40.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:03:42'),
(73, 35, 0, 0, 0, 0, 'anders-header-pcko8yiotwqbe3tmxqsbwiq7fifq470wqwzoojv53cjpgfe9b43ac9f446f61a6ab3580f29f6041.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 00:16:11'),
(76, 36, 0, 0, 0, 0, 'CityPromsvragenlijst2021Matangidocxca145a4a310d552bc4a3cb2f8e6f9f51.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 11:05:20'),
(77, 36, 0, 0, 0, 0, 'MatangibioNLdocx0a74c493e255b4aa3fcefadbd9526b10.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 11:05:21'),
(78, 36, 0, 0, 0, 0, 'MatangiGalaxystudios2019DeSchaapjesfabriek-2051jpgb56acba253998cd8569a65c370beacac.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 11:05:29'),
(79, 36, 0, 0, 0, 0, 'matingistudiovanoostrumjpgefd503e2dd6cbe46a480ce65e2b3374a.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 11:05:39'),
(80, 36, 0, 0, 0, 0, 'CitypromsdeclaratieformulierMatangixlsxe58057289f4ba94da3ed5bca4da5428b.xlsx', '1865476465.pdf', 'factuur', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-17 11:07:33'),
(81, 37, 0, 0, 0, 0, 'opstellingklassiek2019pdf464b91fe461a128c6bbed41bd979e5e1.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:38:17'),
(82, 37, 0, 0, 0, 0, 'podiumafmetingenpdf73d0109fede8402d4883c7912b2b165f.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:38:24'),
(83, 37, 0, 0, 0, 0, 'CVMarinierskapel2021docx3cf5d6e6debd9694ff8813a5eb8c7455.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:38:30'),
(84, 37, 0, 0, 0, 0, 'FotoMarkap1jpg0befb43a966c0c745a398ebeb1b64b5c.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:38:41'),
(85, 37, 0, 0, 0, 0, 'FotoMarkap2jpg4493c782b34afaf020f54f5acb2ef457.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:38:46'),
(86, 37, 0, 0, 0, 0, 'FotoMarkap3jpgaacb06736ece335aab5edb52884bbcd2.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:38:51'),
(87, 37, 0, 0, 0, 0, 'FotoMarkap4jpgd15eefd6b9b6c51c23b0dfcb54928a21.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:38:56'),
(88, 37, 0, 0, 0, 0, 'FotoMarkap5jpg93a820836ed14c5885986d7e045ffd8e.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:39:01'),
(89, 37, 0, 0, 0, 0, 'FotoMarkap6jpg6bb571518b46f420e1abcd74c380964a.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:39:06'),
(90, 20, 0, 0, 0, 0, 'KopievanPodiumplanNNJOpdf73c306a1c08d8907c46b5c80766d66c3.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:57:00'),
(91, 20, 0, 0, 0, 0, 'NNJO1jpgc80711cd6d9eb066ffd9de44b7f9dba0.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:57:07'),
(92, 20, 0, 0, 0, 0, 'NNJO2jpg3b9d395e35602b129c4a5fb49c3fc0c4.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:57:11'),
(93, 20, 0, 0, 0, 0, 'NNJO3jpg56cf273b3b0eacd56b71330be0d5885a.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:57:16'),
(94, 20, 0, 0, 0, 0, 'NNJO4jpg7001555c98b8a28533ba6586c1098d20.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:57:20'),
(95, 20, 0, 0, 0, 0, 'RIDERCityPromsNNJOdocx97caadcdb03d56aa41fe0076bf60b515.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:57:25'),
(96, 20, 0, 0, 0, 0, 'VragenlijstCityProms2021docxfddbc9dc6fdd26f883c59156233f87b7.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 11:57:29'),
(97, 20, 0, 0, 0, 0, 'Slagwerklijstdocxf3af0e732cc20988dded92aced065615.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 12:03:47'),
(98, 20, 0, 0, 0, 0, 'RIDERCityPromsNNJO1docxe4b4a9e4328ff7bd8fdf1212d5a9c80d.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 12:03:56'),
(99, 38, 0, 0, 0, 0, 'VragenlijstCityProms2021docx3f3c9b8e453b207581d7f6fa8db4b53b.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 13:11:37'),
(100, 38, 0, 0, 0, 0, 'JVGfotopngSimonCremerpnge99f78fcc703a3ecd69ff741f4e75140.png', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 13:11:43'),
(101, 39, 0, 0, 0, 0, 'Ingevuldevragenlijstdocx77ed3a4ed038b3f643202689d9f7374c.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:21:35'),
(102, 39, 0, 0, 0, 0, 'mailjpegd39b33c8b5284d67968182fea775d01f.jpeg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:21:39'),
(103, 39, 0, 0, 0, 0, 'IMG6425JPGHRopgevraagdJPG543b8ff232f2b83bec642a3956e950c3.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:21:43'),
(104, 24, 0, 0, 0, 0, 'PRTekst-CreditsLiedvanBoomdocxd4a118f660cc9417c70452a14ed22513.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:36:17'),
(105, 24, 0, 0, 0, 0, 'Boom-1900x550png560d727b7de52d91d767389356aa18b0.png', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:36:35'),
(106, 24, 0, 0, 0, 0, 'Boom-1tif3c656d8ebdb9dda336e1be111c63a741.tif', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:37:16'),
(107, 24, 0, 0, 0, 0, 'PRTekst-CreditsLiedvanBoompdf9ac906d20608112eeaf906747af249b1.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:37:35'),
(108, 24, 0, 0, 0, 0, 'Boom-4tif0dd95ccdea9282815d28ecc71209c863.tif', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:38:07'),
(109, 24, 0, 0, 0, 0, 'Boom-3tifaacb06736ece335aab5edb52884bbcd2.tif', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:38:51'),
(110, 24, 0, 0, 0, 0, 'Boom-2tif5f8a052cc925160e9312f0f95dd39650.tif', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 14:39:33'),
(111, 43, 0, 0, 0, 0, '210223FObrochure2020-2021DEFpdf62d830eb5bf427d7ea459b41735c2559.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 16:37:20'),
(112, 43, 0, 0, 0, 0, 'LichtplanStrekpdfa996a0a4c01a04f17abb1cb870c5b580.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 16:37:28'),
(113, 43, 0, 0, 0, 0, 'TechnischelijstStrekpdfeb1ab17e45a3644fc17b8a2babab8690.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 16:37:34'),
(114, 43, 0, 0, 0, 0, 'wervelwindensemblestrek-pa1t2ej7vqo5gai6jqcbozo3n52xz0ue8dvl51kux4jpgb9fda4f4b6737246d07f60f6b907364f.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 16:37:46'),
(115, 45, 0, 0, 0, 0, '210223FObrochure2020-2021DEFpdf5c1cc8ca2785ecef9cbaf5c0cff3a434.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 17:05:18'),
(116, 45, 0, 0, 0, 0, 'LichtplanStrekpdf7a4d93b5d117d4cc6bccb3a2f342cf59.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 17:05:29'),
(117, 45, 0, 0, 0, 0, 'wervelwindensemblestrek-pa1t2ej7vqo5gai6jqcbozo3n52xz0ue8dvl51kux4jpgfc0c220f3a6e8b278bc34e650200d1fa.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 17:05:43'),
(118, 45, 0, 0, 0, 0, 'TechnischelijstStrekpdf9a083a23de24d4f9e84df41ba10b502b.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-18 17:05:50'),
(119, 47, 0, 0, 0, 0, 'OrkestopstellingEuphoniaWommelsxls4aca609774e19edc1a61ad8c5923753b.xls', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 03:40:23'),
(120, 47, 0, 0, 0, 0, 'VragenlijstCityProms2021docxe22f2b1531393e221b9e386db0832f12.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 03:40:42'),
(121, 48, 0, 0, 0, 0, 'VragenlijstCityProms2021GSMGBragidocx531c3169eb587b918db061e6a235d10a.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 03:55:38'),
(122, 49, 0, 0, 0, 0, 'PodiumopstellingExcelsiorSchraardcitypromsxlsxbb3c5a121c318129a33a4c236e8dca36.xlsx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:03:56'),
(123, 49, 0, 0, 0, 0, 'Concert2Themadocx3d07b90510691d546c919a366fe485ce.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:04:10'),
(124, 49, 0, 0, 0, 0, 'VragenlijstCityProms2021ExcelsiorSchraarddocxdf266fc77398faa1d9c720081e0ff3d7.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:04:19'),
(126, 49, 0, 0, 0, 0, 'MG2689jpgjpgabc0a770fbda4cc53bb383ea85a86a8d.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:05:33'),
(127, 50, 0, 0, 0, 0, 'VragenlijstCityProms2021CWOdocxccfd0846e897bed3c3be4da01283f26a.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:18:50'),
(128, 50, 0, 0, 0, 0, '6297F67B-979A-41C2-96A4-AC30C85C1547jpegb870a9f3cea23ac6050fe74c5b5c9c17.jpeg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:19:08'),
(129, 56, 0, 0, 0, 0, 'KopievanPodiumplanNNJOpdfb8f0ec83b426454d1274be49f23dbeee.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:29:39'),
(130, 56, 0, 0, 0, 0, 'RIDERCityPromsNNJO1docxc49419330494fc5fc21666522fb8c9fc.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:29:55'),
(131, 56, 0, 0, 0, 0, 'Slagwerklijstdocx05af76698551db7375ba1a32c3e2f4b3.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:30:08'),
(132, 56, 0, 0, 0, 0, 'VragenlijstCityProms2021docx767a824890d33eca0398b54b39969acf.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:30:29'),
(133, 59, 0, 0, 0, 0, '2020301-DSC-Rider-road-PA-festivalpdfaf3fec298af599d1b5e1fc7807022f9f.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:42:27'),
(134, 59, 0, 0, 0, 0, 'Stageplan-DSC-Band-2021-2022pdf048e73c23a3ab5bb7117155a6c968ca0.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:42:39'),
(135, 59, 0, 0, 0, 0, 'VragenlijstCityProms2021DSCdocxb0676585847ed811002ae75d0138d6ef.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:42:50'),
(136, 61, 0, 0, 0, 0, 'VragenlijstCityProms2021NieuwlichtProjectorkestdocxa786eac20931a7da8342c0169c37da69.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 04:55:34'),
(137, 67, 0, 0, 0, 0, 'CALEFAXVragenlijstCityProms2021-marketingingevulddoorLarissadocx1799ae83a956e9c56f8af0630b4b90a9.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 05:07:26'),
(138, 71, 0, 0, 0, 0, 'VragenlijstCityProms2021AmstelQuartetpdf1069231094e269020846a409eac77e38.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-09-20 14:52:47'),
(139, 47, 0, 0, 0, 0, 'PodiumopstellingEuphoniaV01-10-21jpg4ec4f807577a92501f180b76201e04ec.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-04 16:11:42'),
(140, 40, 0, 0, 0, 0, 'FotoMajestic5JPG84752a255d6805cbcaf308d998c3ce58.JPG', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-04 16:18:01'),
(141, 40, 0, 0, 0, 0, 'VragenlijstCityProms2021Majestic5docxd58037be21ff68cb0520dc1d9daba9d9.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-04 16:18:05'),
(142, 61, 0, 0, 0, 0, 'podiumplanpdf8a5e677f905b592e84fde282ebc411f3.pdf', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-05 14:44:41'),
(143, 19, 0, 0, 0, 0, 'VragenlijstCityProms2021Toeterbende9oktdocxde7e60b8efa66860cb8e6e557f230d01.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-05 14:54:55'),
(144, 19, 0, 0, 0, 0, 'VragenlijstCityProms2021ingevulddocx613df61f8bbc2b68ff0c330e5988aff9.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-05 14:55:03'),
(145, 19, 0, 0, 0, 0, 'VragenlijstCityProms2021docx7285d2e8e53a5de885a778251054fff9.docx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-05 14:55:13'),
(146, 19, 0, 0, 0, 0, 'Openingcultureelseizoen2021-2022inTheaterSneekjpgf4ea151c003da71da60e37320d8084a4.jpg', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-05 14:55:34'),
(147, 65, 0, 0, 0, 0, 'stageplotpnge07f1334b4d67821fd76cebf7ba24945.png', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-06 12:16:31'),
(148, 31, 0, 0, 0, 0, '2140draaiboekxlsx94453eb832cae8e73ec5466a43f5b8b7.xlsx', '1865476465.pdf', 'algemeen', 0, 0, 0, 0, 0, 0, 0, 0, 'Testopmerking', 0, '2021-10-06 17:16:13');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_gebruikerlocaties`
--

DROP TABLE IF EXISTS `map_gebruikerlocaties`;
CREATE TABLE `map_gebruikerlocaties` (
  `id` int(11) NOT NULL,
  `gebruiker` int(11) NOT NULL,
  `locatie` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_gebruikers`
--

DROP TABLE IF EXISTS `map_gebruikers`;
CREATE TABLE `map_gebruikers` (
  `id` int(11) NOT NULL,
  `gebruikersnaam` varchar(255) DEFAULT NULL,
  `wachtwoord` varchar(255) NOT NULL,
  `volledigenaam` varchar(50) DEFAULT NULL,
  `email` text NOT NULL,
  `telefoon` varchar(150) NOT NULL,
  `afdelingstelefoon` varchar(150) NOT NULL,
  `team` int(11) NOT NULL,
  `functie` text NOT NULL,
  `foto` text NOT NULL,
  `twofactor` varchar(150) NOT NULL,
  `twofactorreset` int(3) NOT NULL,
  `twofactoronoff` int(3) NOT NULL DEFAULT '1',
  `recht_lezenschrijven` int(3) NOT NULL,
  `recht_financieel` int(3) NOT NULL,
  `recht_beheer` int(3) NOT NULL,
  `recht_meerderegebruikersinloggen` int(3) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `lastip` varchar(150) NOT NULL,
  `checkId` varchar(50) NOT NULL,
  `menugrootte` varchar(150) NOT NULL DEFAULT 'small',
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `map_gebruikers`
--

INSERT INTO `map_gebruikers` (`id`, `gebruikersnaam`, `wachtwoord`, `volledigenaam`, `email`, `telefoon`, `afdelingstelefoon`, `team`, `functie`, `foto`, `twofactor`, `twofactorreset`, `twofactoronoff`, `recht_lezenschrijven`, `recht_financieel`, `recht_beheer`, `recht_meerderegebruikersinloggen`, `lastlogin`, `lastip`, `checkId`, `menugrootte`, `del`) VALUES
(1, 'dennis', '$2y$12$ftsowIfOj/Mctp7jRLuNge24V6Yny6salwUAxsOL8VW5YxrszU2QW', 'Demogegbruiker', 'dennis@dekrieksoftware.nl', '0615490734', '', 0, '', '', 'Q4KNTHRK4PVMKHMRWP2A5TMPKU2Q4QHO', 0, 1, 2, 1, 1, 0, '2022-02-10 08:17:10', '::1', 'bc414b53395f6586e6eb769191cb3402', 'small', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_gebruikersautorisatierol`
--

DROP TABLE IF EXISTS `map_gebruikersautorisatierol`;
CREATE TABLE `map_gebruikersautorisatierol` (
  `id` int(11) NOT NULL,
  `gebruiker` int(11) NOT NULL,
  `autorisatierol` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_gebruikersautorisatierol`
--

INSERT INTO `map_gebruikersautorisatierol` (`id`, `gebruiker`, `autorisatierol`, `del`) VALUES
(1, 1, 4, 0),
(11, 64, 6, 0),
(12, 65, 6, 0),
(13, 68, 6, 0),
(14, 63, 6, 0),
(15, 69, 6, 0),
(16, 71, 4, 0),
(17, 66, 6, 0),
(18, 67, 6, 0),
(19, 70, 4, 0),
(20, 72, 6, 0),
(21, 73, 4, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_gebruikertoegang`
--

DROP TABLE IF EXISTS `map_gebruikertoegang`;
CREATE TABLE `map_gebruikertoegang` (
  `id` int(11) NOT NULL,
  `gebruiker` int(11) NOT NULL,
  `tabblad` int(11) NOT NULL,
  `readwrite` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_hyperlinks`
--

DROP TABLE IF EXISTS `map_hyperlinks`;
CREATE TABLE `map_hyperlinks` (
  `id` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `omschrijving` text COLLATE utf8_unicode_ci NOT NULL,
  `datum` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_inschrijvingen`
--

DROP TABLE IF EXISTS `map_inschrijvingen`;
CREATE TABLE `map_inschrijvingen` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL DEFAULT '0',
  `naam` varchar(150) DEFAULT NULL,
  `antwoorden` text,
  `datum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `opmerkingen` text,
  `afgesprokenbedrag` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_log`
--

DROP TABLE IF EXISTS `map_log`;
CREATE TABLE `map_log` (
  `id` int(11) NOT NULL,
  `gebeurtenis` varchar(150) NOT NULL,
  `event` int(11) NOT NULL,
  `persoon` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `aanbod` int(11) NOT NULL,
  `sleutel` varchar(150) NOT NULL,
  `waarde` text NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_mailadressen`
--

DROP TABLE IF EXISTS `map_mailadressen`;
CREATE TABLE `map_mailadressen` (
  `id` int(11) NOT NULL,
  `mailadres` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_mailadressen`
--

INSERT INTO `map_mailadressen` (`id`, `mailadres`, `del`) VALUES
(1, 'demofestivalnietbeantwoorden', 0),
(2, 'demofestivalnoreply', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_mailchimp`
--

DROP TABLE IF EXISTS `map_mailchimp`;
CREATE TABLE `map_mailchimp` (
  `id` int(11) NOT NULL,
  `soort` varchar(150) NOT NULL,
  `api` varchar(150) NOT NULL,
  `audience` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_mapitems`
--

DROP TABLE IF EXISTS `map_mapitems`;
CREATE TABLE `map_mapitems` (
  `id` int(11) NOT NULL,
  `map` int(11) NOT NULL,
  `itemname` varchar(150) NOT NULL,
  `mappart` int(11) NOT NULL,
  `maplocation` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `article` int(11) NOT NULL,
  `article2` int(11) NOT NULL,
  `article3` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_maplocations`
--

DROP TABLE IF EXISTS `map_maplocations`;
CREATE TABLE `map_maplocations` (
  `id` int(11) NOT NULL,
  `location` varchar(150) NOT NULL,
  `del` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_mapparts`
--

DROP TABLE IF EXISTS `map_mapparts`;
CREATE TABLE `map_mapparts` (
  `id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL,
  `attachment` text NOT NULL,
  `del` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_maps`
--

DROP TABLE IF EXISTS `map_maps`;
CREATE TABLE `map_maps` (
  `id` int(11) NOT NULL,
  `organisation` int(11) NOT NULL,
  `mapname` varchar(150) NOT NULL,
  `mapdescription` text NOT NULL,
  `mapdate` date NOT NULL,
  `model` text NOT NULL,
  `showbuyer` int(3) NOT NULL,
  `activateinvoice` int(3) NOT NULL,
  `welkom` text NOT NULL,
  `contact` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_orderregels`
--

DROP TABLE IF EXISTS `map_orderregels`;
CREATE TABLE `map_orderregels` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `deelnemer` int(11) NOT NULL,
  `deelname` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `map` int(11) NOT NULL,
  `mapitem` int(11) NOT NULL,
  `mapcomments` text NOT NULL,
  `itemname` varchar(150) NOT NULL,
  `product` int(11) NOT NULL,
  `numberpriceper` varchar(150) NOT NULL,
  `vat` int(3) NOT NULL,
  `priceexclvat` decimal(10,2) NOT NULL,
  `pricevat` decimal(10,2) NOT NULL,
  `priceinclvat` decimal(10,2) NOT NULL,
  `invoice` int(11) NOT NULL,
  `validation` varchar(150) NOT NULL,
  `paid` varchar(50) NOT NULL,
  `added` datetime NOT NULL,
  `edited` datetime NOT NULL,
  `deleted` datetime NOT NULL,
  `validationdate` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_orders`
--

DROP TABLE IF EXISTS `map_orders`;
CREATE TABLE `map_orders` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `deelnemer` int(11) NOT NULL,
  `deelname` int(11) NOT NULL,
  `map` int(11) NOT NULL,
  `bedrag` varchar(150) NOT NULL,
  `vat` varchar(150) NOT NULL,
  `btwverleggen` int(3) NOT NULL,
  `bedragexclbtw` varchar(150) NOT NULL,
  `precarioorder` double(10,2) NOT NULL,
  `administratieorder` varchar(150) NOT NULL,
  `administratieorderbtw` varchar(150) NOT NULL,
  `checksum` text NOT NULL,
  `betaalverificatie` text NOT NULL,
  `betaalstatus` varchar(100) NOT NULL,
  `paymentid` varchar(150) NOT NULL,
  `paymentstatus` varchar(150) NOT NULL,
  `paymentamount` varchar(150) NOT NULL,
  `paymentprofile` varchar(150) NOT NULL,
  `paymentlastcheck` datetime NOT NULL,
  `validation` varchar(150) NOT NULL,
  `validationdate` datetime NOT NULL,
  `manual` varchar(150) NOT NULL,
  `attachment` text NOT NULL,
  `toegevoegd` datetime NOT NULL,
  `gewijzigd` datetime NOT NULL,
  `verloopt` date NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_organisaties`
--

DROP TABLE IF EXISTS `map_organisaties`;
CREATE TABLE `map_organisaties` (
  `id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `text` text,
  `email` text NOT NULL,
  `location` int(11) NOT NULL,
  `room` int(11) DEFAULT NULL,
  `doelgroep` int(11) NOT NULL,
  `categorie` int(11) NOT NULL,
  `sector` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `lid` int(3) NOT NULL,
  `contributie` int(11) NOT NULL,
  `alert` text NOT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `checksum` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `lastlogin` varchar(150) NOT NULL,
  `lastip` varchar(150) NOT NULL,
  `checkId` varchar(150) NOT NULL,
  `copyof` int(11) NOT NULL,
  `thema1` varchar(300) NOT NULL,
  `thema2` varchar(300) NOT NULL,
  `thema3` varchar(300) NOT NULL,
  `thema4` varchar(300) NOT NULL,
  `thema5` varchar(300) NOT NULL,
  `thema6` varchar(300) NOT NULL,
  `thema7` varchar(300) NOT NULL,
  `thema8` varchar(300) NOT NULL,
  `thema9` varchar(300) NOT NULL,
  `thema10` varchar(300) NOT NULL,
  `thema11` varchar(300) NOT NULL,
  `thema12` varchar(300) NOT NULL,
  `thema13` varchar(300) NOT NULL,
  `thema14` varchar(300) NOT NULL,
  `thema15` varchar(300) NOT NULL,
  `doelstelling` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_organisationproduct`
--

DROP TABLE IF EXISTS `map_organisationproduct`;
CREATE TABLE `map_organisationproduct` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `gebruikersgroep` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_personen`
--

DROP TABLE IF EXISTS `map_personen`;
CREATE TABLE `map_personen` (
  `id` int(11) NOT NULL,
  `organisatienaam` varchar(150) NOT NULL,
  `voornaam` varchar(150) NOT NULL,
  `tussenvoegsel` varchar(150) NOT NULL,
  `volledigenaam` varchar(50) DEFAULT NULL,
  `adres` text NOT NULL,
  `postcode` varchar(150) DEFAULT NULL,
  `plaats` varchar(150) DEFAULT NULL,
  `land` varchar(150) DEFAULT NULL,
  `email` text NOT NULL,
  `telefoon` varchar(150) NOT NULL,
  `mobiel` varchar(150) NOT NULL,
  `website` text NOT NULL,
  `geboortedatum` date DEFAULT NULL,
  `aanhef` varchar(150) NOT NULL,
  `aanspreekvorm` varchar(150) NOT NULL,
  `location` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `doelgroep` int(11) NOT NULL,
  `categorie` int(11) NOT NULL,
  `sector` int(11) NOT NULL,
  `contributie` int(11) NOT NULL,
  `alert` text NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `inplanbaar` int(3) NOT NULL,
  `foto` text NOT NULL,
  `shirtmaat` varchar(150) DEFAULT NULL,
  `jasmaat` varchar(150) DEFAULT NULL,
  `broekmaat` varchar(150) DEFAULT NULL,
  `cateringvoorkeur` int(11) NOT NULL DEFAULT '0',
  `cateringdieet` text,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `map_personen`
--

INSERT INTO `map_personen` (`id`, `organisatienaam`, `voornaam`, `tussenvoegsel`, `volledigenaam`, `adres`, `postcode`, `plaats`, `land`, `email`, `telefoon`, `mobiel`, `website`, `geboortedatum`, `aanhef`, `aanspreekvorm`, `location`, `room`, `doelgroep`, `categorie`, `sector`, `contributie`, `alert`, `copyof`, `copyitem`, `checksum`, `inplanbaar`, `foto`, `shirtmaat`, `jasmaat`, `broekmaat`, `cateringvoorkeur`, `cateringdieet`, `del`) VALUES
(1, 'Organisatie 591362144', 'Voornaam', 'de', 'Achternaam 1937831497', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', 'cb7016c780c5b76cd2315c71980f41c8', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(2, 'Organisatie 1670849193', 'Voornaam', '', 'Achternaam 494744699', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '547155c856dac79df85c3b7e44ed8724', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(3, 'Organisatie 2019230291', 'Voornaam', '', 'Achternaam 80458281', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'c77f3dae53588e5f2ac92a84bcf63447', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(4, 'Organisatie 1046941424', 'Voornaam', '', 'Achternaam 1898792898', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '67e414668b6520db1e87f297851632eb', 1, '', '0', '0', '0', 5, NULL, 0),
(5, 'Organisatie 274415489', 'Voornaam', '', 'Achternaam 2012242890', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '08b379b54e6ff17b77c606a9650e43d6', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(6, 'Organisatie 1411706517', 'Voornaam', '', 'Achternaam 532756985', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '1882c65207eff6914240ba92ddaf05fb', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(7, 'Organisatie 367062897', 'Voornaam', '', 'Achternaam 243940411', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'f9b0a730cfa6caf4a6fa4d185c014716', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(8, 'Organisatie 1924436062', 'Voornaam', '', 'Achternaam 1365467017', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', '652a0382588ddcfb790f06f0e06c759a', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(9, 'Organisatie 1637654755', 'Voornaam', '', 'Achternaam 878519829', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '6be127b38cb17784a1be8785d879bde6', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(10, 'Organisatie 2124589499', 'Voornaam', '', 'Achternaam 1682045679', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'cf6c232957bdf02d260e51557de79901', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(11, 'Organisatie 1300197866', 'Voornaam', '', 'Achternaam 571489703', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', 'd69bd6e8254fcf6ca4450c60bfef52b1', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(12, 'Organisatie 393775011', 'Voornaam', '', 'Achternaam 297714718', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '49262127289e2cd169bbb666e8f69847', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(13, 'Organisatie 357473336', 'Voornaam', '', 'Achternaam 1641512837', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'ee3f7ffd56be6b85185ed42ab35184fe', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(14, 'Organisatie 671034739', 'Voornaam', '', 'Achternaam 1882602787', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '8ae47ee5b7afa37e4811ed8dbb949fc3', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(15, 'Organisatie 947264243', 'Voornaam', '', 'Achternaam 610150226', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '52d22ce2b2807f5ca3e1132d8df2c32b', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(16, 'Organisatie 1461608779', 'Voornaam', '', 'Achternaam 83664525', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'e2d986a412c1cced7ce9ce3d802961c4', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(17, 'Organisatie 964292270', 'Voornaam', '', 'Achternaam 922349908', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', '11854ee6a1fbabd4d30d649afba0c89b', 0, '', NULL, NULL, NULL, 0, NULL, -1),
(18, 'Organisatie 586142186', 'Voornaam', 'van den', 'Achternaam 1317079999', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', 'd65ea9a3b810e0f1a5aa259c989ffb4a', 1, '', '0', '0', '0', 5, NULL, 0),
(19, 'Organisatie 1852523676', 'Voornaam', '', 'Achternaam 1774809604', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', 'd65ea9a3b810e0f1a5aa259c989ffb4a', 1, '', '0', '0', '0', 5, NULL, 0),
(20, 'Organisatie 1312665675', 'Voornaam', '', 'Achternaam 2110003626', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '83c5a2ee6fa850fcfaa6da541318bf29', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(21, 'Organisatie 297363549', 'Voornaam', '', 'Achternaam 725377124', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', '86a2bc12de083db14e61bb88ba2e9ca8', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(22, 'Organisatie 336732080', 'Voornaam', '', 'Achternaam 815861445', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '3f3aa6d897ab0fa95289fea7f89e2679', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(23, 'Organisatie 383415209', 'Voornaam', '', 'Achternaam 950661952', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '1d6af5625776f3d6ef16482fce02552e', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(24, 'Organisatie 1501640213', 'Voornaam', '', 'Achternaam 1774639588', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'dc1df145303ab120a684554d6a949ba8', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(25, 'Organisatie 379228859', 'Voornaam', '', 'Achternaam 788195107', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'd9e1e8c327929df9bdb229459041aa22', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(26, 'Organisatie 775906274', 'Voornaam', '', 'Achternaam 1252749223', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '35d2ecd6fffc3972365e8abc1ed3b924', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(27, 'Organisatie 994607238', 'Voornaam', '', 'Achternaam 2067469824', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '9ec372f72d48fbecb8597b7a37acc971', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(28, 'Organisatie 1890189262', 'Voornaam', '', 'Achternaam 487766043', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '8bf0d076e4f6dcfe1375705f8a1ab7b4', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(29, 'Organisatie 1222748499', 'Voornaam', '', 'Achternaam 1941406859', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'b39030329c1bbf27c9d0e7e23402f375', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(30, 'Organisatie 1659063230', 'Voornaam', '', 'Achternaam 1520004154', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'abed58fe5c292d3fc677ad460d0dcd32', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(31, 'Organisatie 822391424', 'Voornaam', '', 'Achternaam 1256743677', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '5835912eee9ca8ddd8041972b4313245', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(32, 'Organisatie 1326887635', 'Voornaam', '', 'Achternaam 1247483458', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '9fa8fc2a9b18abbe5b5ba756139449e3', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(33, 'Organisatie 198797370', 'Voornaam', '', 'Achternaam 299972385', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '216f5a0864fc353d7fd1c37141aafac5', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(34, 'Organisatie 2035810263', 'Voornaam', '', 'Achternaam 464958497', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'c2ed5332157eaf55932d6d09d30f4f89', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(35, 'Organisatie 479847476', 'Voornaam', '', 'Achternaam 723847635', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'afa80e142d5a473e19eaeefddcde98c9', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(36, 'Organisatie 951523408', 'Voornaam', '', 'Achternaam 555946212', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '9f82759af0f61b9f688f6d0443cf2988', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(37, 'Organisatie 952111207', 'Voornaam', '', 'Achternaam 1442286883', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '7525028c8d54a1c43e4ffd9e93d61b6d', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(38, 'Organisatie 810218092', 'Voornaam', '', 'Achternaam 538651237', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '2af591a074dbb30bc321ccdbcbcfda57', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(39, 'Organisatie 2075456118', 'Voornaam', '', 'Achternaam 590089512', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'ff949648ca0ece6804fddd91173f28f8', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(40, 'Organisatie 746733477', 'Voornaam', '', 'Achternaam 436132335', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'f815fee1e7cc96d6888270a8280a4718', 0, '', '0', '0', '0', 5, NULL, 0),
(41, 'Organisatie 811206641', 'Voornaam', '', 'Achternaam 2006260632', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '8dde787d101d9d7588290d8162bec594', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(42, 'Organisatie 600757715', 'Voornaam', '', 'Achternaam 1340665225', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '11ada34b46a5b585bc9a196c2515be29', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(43, 'Organisatie 1122480151', 'Voornaam', '', 'Achternaam 1963367087', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '246fc51e4374f6dae829378d5fa9ce3d', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(44, 'Organisatie 91785921', 'Voornaam', '', 'Achternaam 490655048', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '6fde86fb9183d59a353eda7e95186774', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(45, 'Organisatie 792976682', 'Voornaam', '', 'Achternaam 2108105816', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '21fbbc5b7865f1bf127743f04f8f8d46', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(46, 'Organisatie 1098349883', 'Voornaam', '', 'Achternaam 200861792', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 5, 0, 0, '', 0, '', 'ddd4327f689af96c3e1de5be7c0a6125', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(47, 'Organisatie 1922180860', 'Voornaam', '', 'Achternaam 1580546341', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', '10339fe8b35cc9008825da1519c4d1d4', 1, '', 'XXXL', 'XXL', '0', 5, NULL, 0),
(48, 'Organisatie 959090193', 'Voornaam', '', 'Achternaam 364448451', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 12, 0, 0, '', 0, '', 'e8f94ec2c947837661f9748bd239c48a', 1, '', 'XL', 'L', '0', 5, NULL, 0),
(49, 'Organisatie 1408532767', 'Voornaam', '', 'Achternaam 1821716282', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '398ba6f42631abec08925e189db3f3d7', 1, '', '0', '0', '0', 5, NULL, 0),
(50, 'Organisatie 1292297276', 'Voornaam', '', 'Achternaam 1017133352', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '6d1b386695149f896323fd02cc7ec78f', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(51, 'Organisatie 1743491280', 'Voornaam', '', 'Achternaam 434484813', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '8dc8af111058fe701fc9f876d0254635', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(52, 'Organisatie 875282461', 'Voornaam', '', 'Achternaam 1464109982', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'b3dc12f083b1ce9735aadffee67663ee', 0, '', '0', '0', '0', 5, NULL, 0),
(53, 'Organisatie 1631840594', 'Voornaam', '', 'Achternaam 2115955530', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', 'dc7f472295453df559ed4e6b833e8502', 1, '', '0', '0', '0', 5, NULL, 0),
(54, 'Organisatie 1905886717', 'Voornaam', '', 'Achternaam 1399281079', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '8b4cc69a6e9e1d7296965907693a7795', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(55, 'Organisatie 1595088597', 'Voornaam', 'van', 'Achternaam 538619742', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 12, 0, 0, '', 0, '', 'b4e46007a48fad00a0a4e61d2cd3411b', 1, '', 'M', 'M', '0', 5, NULL, 0),
(56, 'Organisatie 1853511596', 'Voornaam', '', 'Achternaam 503449872', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 13, 0, 0, '', 0, '', '6bc178ffea60faf3aed96cec35af0c8c', 1, '', '0', '0', '0', 5, NULL, 0),
(57, 'Organisatie 1628658216', 'Voornaam', '', 'Achternaam 293828257', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', '23f3a1e6a5f0287cde93b9aa8d17baa1', 1, '', '0', '0', '0', 5, NULL, 0),
(58, 'Organisatie 773128377', 'Voornaam', '', 'Achternaam 1806911964', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '8bf2fa6f9717c292c0266592a2d8aa0e', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(59, 'Organisatie 1845745026', 'Voornaam', '', 'Achternaam 254382664', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', 'ad77cba04d364a15e2e244660fb31510', 1, '', '0', '0', '0', 5, NULL, 0),
(60, 'Organisatie 2069949643', 'Voornaam', '', 'Achternaam 1262661932', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', 'c4055f6551c2be3d7b6419df6ea597a0', 1, '', '0', '0', '0', 5, NULL, 0),
(61, 'Organisatie 104108018', 'Voornaam', '', 'Achternaam 1849887097', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', '006bf196731e0bb17629aa075f74f576', 1, '', '0', '0', '0', 5, NULL, 0),
(62, 'Organisatie 1655028411', 'Voornaam', '', 'Achternaam 1035526792', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', 'ece81e1637891e50447d686bf6cb8405', 1, '', '0', '0', '0', 5, NULL, 0),
(63, 'Organisatie 1616738647', 'Voornaam', '', 'Achternaam 518509480', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', '3a3ec807aa07bc96b186aa7e96584bce', 0, '', '0', '0', '0', 5, NULL, 0),
(64, 'Organisatie 368472199', 'Voornaam', '', 'Achternaam 978320857', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', 'ce47c59c299aad99324939061307ed05', 1, '', '0', '0', '0', 5, NULL, 0),
(65, 'Organisatie 2052729670', 'Voornaam', '', 'Achternaam 711733091', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '272035ef62c935798ff204465d2e0296', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(66, 'Organisatie 1804936246', 'Voornaam', '', 'Achternaam 711098334', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'b8383196e8d6718eab7159711b104279', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(67, 'Organisatie 664686044', 'Voornaam', '', 'Achternaam 622352409', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '08457712ffa15436d538a0c6574d7574', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(68, 'Organisatie 394951141', 'Voornaam', '', 'Achternaam 1221553037', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'a37dcb487e905b97fb3f86080051e70a', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(69, 'Organisatie 2013953402', 'Voornaam', '', 'Achternaam 532897442', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '5b771eaab1fb15da54cbc5ee11ffc747', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(70, 'Organisatie 138721287', 'Voornaam', '', 'Achternaam 1908163290', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'bae8741bae2fba8655cadc4e6e85c811', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(71, 'Organisatie 1156876133', 'Voornaam', '', 'Achternaam 1034606211', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '702b7bd336c6d1a04d13a9b22d510cc3', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(72, 'Organisatie 2978556', 'Voornaam', '', 'Achternaam 1254060586', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', '9bdd69fb046c00f3f6531d2d4af88669', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(73, 'Organisatie 1228317299', 'Voornaam', '', 'Achternaam 260218356', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 21, 0, 15, 0, 0, 0, '', 0, '', 'e56293886b1ebcacce7f3b5f98cd0689', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(74, 'Organisatie 1652391793', 'Voornaam', '', 'Achternaam 855680397', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', 'ea242f854aa74bfe2d3256c1310fbf8c', 1, '', '0', '0', '0', 5, NULL, 0),
(75, 'Organisatie 290955414', 'Voornaam', '', 'Achternaam 714162382', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 5, 0, 0, '', 0, '', '2c2af5839fd29c8eab1619d6d847d9a5', 0, '', NULL, NULL, NULL, 0, NULL, 0),
(76, 'Organisatie 1422830353', 'Voornaam', '', 'Achternaam 1227244465', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', 'cef866e298b0c77d5a4628c3835db316', 1, '', '0', '0', '0', 5, NULL, 0),
(77, 'Organisatie 1499059500', 'Voornaam', '', 'Achternaam 18185816', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', '1573acaa2da8842e603fc81121a9a487', 1, '', '0', '0', '0', 5, NULL, 0),
(78, 'Organisatie 313377560', 'Voornaam', '', 'Achternaam 158279996', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', 'fec7c6e9b6762b806e00ad4003188553', 1, '', '0', '0', '0', 5, NULL, 0),
(79, 'Organisatie 2050879632', 'Voornaam', '', 'Achternaam 1803344980', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 1, 0, 0, '', 0, '', 'c785b04e56f14d32597462446ca094de', 1, '', '0', '0', '0', 5, NULL, 0),
(80, 'Organisatie 1059083334', 'Voornaam', '', 'Achternaam 2106817622', '', NULL, NULL, NULL, 'email@emailadres.nl', '', '06-12345678', '', NULL, '', '', 0, 0, 15, 4, 0, 0, '', 0, '', 'd3a2f1fbd876f1668aacc865be24560a', 1, '', '0', '0', '0', 5, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_podia`
--

DROP TABLE IF EXISTS `map_podia`;
CREATE TABLE `map_podia` (
  `id` int(11) NOT NULL,
  `locatienaam` varchar(150) NOT NULL,
  `alternatievenaam` varchar(150) NOT NULL,
  `voornaam` varchar(150) NOT NULL,
  `tussenvoegsel` varchar(150) NOT NULL,
  `volledigenaam` varchar(50) DEFAULT NULL,
  `email` text NOT NULL,
  `telefoon` varchar(150) NOT NULL,
  `mobiel` varchar(150) NOT NULL,
  `aanhef` varchar(150) NOT NULL,
  `aanspreekvorm` varchar(150) NOT NULL,
  `location` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `doelgroep` int(11) NOT NULL,
  `categorie` int(11) NOT NULL,
  `sector` int(11) NOT NULL,
  `alert` text NOT NULL,
  `copyof` int(11) NOT NULL,
  `copyitem` varchar(150) NOT NULL,
  `checksum` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_portaal`
--

DROP TABLE IF EXISTS `map_portaal`;
CREATE TABLE `map_portaal` (
  `id` int(11) NOT NULL,
  `naam` varchar(150) DEFAULT NULL,
  `typeportaal` varchar(150) DEFAULT NULL,
  `standaardtaal` varchar(150) NOT NULL DEFAULT 'nl',
  `foto` text,
  `aanpasbaartot` datetime DEFAULT NULL,
  `titelbrowsernl` varchar(150) DEFAULT NULL,
  `titelbrowseren` varchar(150) DEFAULT NULL,
  `titelheadernl` varchar(150) DEFAULT NULL,
  `titelheaderen` varchar(150) DEFAULT NULL,
  `welkomnl` text,
  `welkomen` text,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_portaal`
--

INSERT INTO `map_portaal` (`id`, `naam`, `typeportaal`, `standaardtaal`, `foto`, `aanpasbaartot`, `titelbrowsernl`, `titelbrowseren`, `titelheadernl`, `titelheaderen`, `welkomnl`, `welkomen`, `del`) VALUES
(1, 'Artiestenportaal', 'artiest', 'nl', '../images/checkin.jpg', NULL, 'Check-in', 'Check-in', '[projectname]', '[projectname]', 'Hi [eventname], laten we je geplande [projectname] optreden doorlopen.', 'Hi [eventname], let\'s walk through your [projectname] performance.', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_portaalakkoord`
--

DROP TABLE IF EXISTS `map_portaalakkoord`;
CREATE TABLE `map_portaalakkoord` (
  `id` int(11) NOT NULL,
  `portaal` int(11) NOT NULL DEFAULT '0',
  `portaalonderdeel` int(11) NOT NULL DEFAULT '0',
  `event` int(11) NOT NULL DEFAULT '0',
  `persoon` int(11) NOT NULL DEFAULT '0',
  `vrijwilliger` int(11) NOT NULL DEFAULT '0',
  `podia` int(11) NOT NULL DEFAULT '0',
  `datum` datetime DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_portaalakkoord`
--

INSERT INTO `map_portaalakkoord` (`id`, `portaal`, `portaalonderdeel`, `event`, `persoon`, `vrijwilliger`, `podia`, `datum`, `del`) VALUES
(1, 1, 2, 120, 0, 0, 0, '2022-01-31 20:34:08', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_portaalonderdeel`
--

DROP TABLE IF EXISTS `map_portaalonderdeel`;
CREATE TABLE `map_portaalonderdeel` (
  `id` int(11) NOT NULL,
  `portaal` int(11) NOT NULL DEFAULT '0',
  `titelnl` varchar(150) NOT NULL,
  `titeleng` varchar(150) NOT NULL,
  `volgorde` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_portaalonderdeel`
--

INSERT INTO `map_portaalonderdeel` (`id`, `portaal`, `titelnl`, `titeleng`, `volgorde`, `del`) VALUES
(1, 1, 'Controleer je tijdschema', 'Check your timeschedule', 1, 0),
(2, 1, 'Wie ben je', 'Who are you', 2, 0),
(3, 1, 'Hospitality', 'Hospitality', 3, 0),
(4, 1, 'Technisch', 'Technical', 4, 0),
(5, 1, 'Promotie', 'Promotion', 5, 0),
(6, 1, 'Factuur/financieel', 'Invoice/financial', 6, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_portaalvelden`
--

DROP TABLE IF EXISTS `map_portaalvelden`;
CREATE TABLE `map_portaalvelden` (
  `id` int(11) NOT NULL,
  `portaal` int(11) NOT NULL DEFAULT '0',
  `portaalonderdeel` int(11) NOT NULL DEFAULT '0',
  `positie` int(3) NOT NULL DEFAULT '0',
  `soort` varchar(150) DEFAULT NULL,
  `aantalregels` int(3) NOT NULL DEFAULT '0',
  `veld` int(11) NOT NULL DEFAULT '0',
  `alleentonen` int(3) NOT NULL DEFAULT '0',
  `naamnl` text,
  `naamen` text,
  `verplicht` int(3) NOT NULL DEFAULT '0',
  `opmerkingnl` text,
  `opmerkingen` text,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_portaalvelden`
--

INSERT INTO `map_portaalvelden` (`id`, `portaal`, `portaalonderdeel`, `positie`, `soort`, `aantalregels`, `veld`, `alleentonen`, `naamnl`, `naamen`, `verplicht`, `opmerkingnl`, `opmerkingen`, `del`) VALUES
(1, 1, 1, 1, 'tijden', 0, 0, 0, '', '', 0, '', '', 0),
(2, 1, 2, 2, 'title', 0, 0, 0, 'Vertegenwoordiger', 'Representive', 0, '', '', 0),
(3, 1, 2, 3, 'text', 0, 0, 0, 'Graag willen we iets meer over je weten\r\n\r\n', 'Lets talk a little bit about you\r\n\r\n', 0, '', '', 0),
(4, 1, 2, 4, 'veld', 0, 20, 0, 'Adres', 'Address', 1, '', '', 0),
(5, 1, 2, 1, 'veld', 5, 206, 0, 'Allermooiste concert', 'Nicest concert', 0, 'Vertel in het kort iets over het allermooiste concert waar je ooit geweest bent', '', 0),
(6, 1, 2, 6, 'composities', 0, 0, 0, '', '', 0, '', '', 0),
(7, 1, 2, 5, 'title', 0, 0, 0, '\r\nComposities', '\r\nCompositions', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_products`
--

DROP TABLE IF EXISTS `map_products`;
CREATE TABLE `map_products` (
  `id` int(11) NOT NULL,
  `productname` varchar(150) NOT NULL,
  `productshortname` varchar(150) NOT NULL,
  `productdescription` text NOT NULL,
  `pricedays` varchar(150) NOT NULL,
  `productalert` text NOT NULL,
  `productphoto` text NOT NULL,
  `needproductdescription` int(3) NOT NULL,
  `valuta` varchar(150) NOT NULL,
  `priceexclvat` double(10,2) NOT NULL,
  `vat` int(3) NOT NULL,
  `administrationcosts` double(10,2) NOT NULL,
  `priceinclvat` double(10,2) NOT NULL,
  `priceper` int(3) NOT NULL,
  `pricepername` varchar(150) NOT NULL,
  `precario` double(10,2) NOT NULL,
  `vierkantemeters` varchar(150) NOT NULL,
  `additional` int(3) NOT NULL,
  `maxsales` int(11) NOT NULL,
  `volgorde` int(11) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_share`
--

DROP TABLE IF EXISTS `map_share`;
CREATE TABLE `map_share` (
  `id` int(11) NOT NULL,
  `aangemaaktdoor` int(11) NOT NULL DEFAULT '0',
  `aangemaaktop` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `bezoekers` int(11) NOT NULL DEFAULT '0',
  `laatstebezoek` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `checksum` varchar(150) DEFAULT NULL,
  `soort` varchar(150) DEFAULT NULL,
  `eventid` int(11) NOT NULL DEFAULT '0',
  `locatie` int(11) NOT NULL DEFAULT '0',
  `functie` int(11) NOT NULL,
  `persoon` varchar(150) DEFAULT NULL,
  `startdatum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `einddatum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `planningstype` varchar(150) DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_share`
--

INSERT INTO `map_share` (`id`, `aangemaaktdoor`, `aangemaaktop`, `bezoekers`, `laatstebezoek`, `checksum`, `soort`, `eventid`, `locatie`, `functie`, `persoon`, `startdatum`, `einddatum`, `planningstype`, `del`) VALUES
(1, 1, '2021-09-16 13:44:35', 0, '1970-01-01 00:00:00', '84a21a35fd5fc08ab25d1bf9747528ad9facff23cd8b709acfe5ba29de02e1a9', 'locatieprogramma', 0, 3, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(2, 71, '2021-09-16 13:44:37', 0, '1970-01-01 00:00:00', 'c95ea71e1a2c2b21db7677f37c2afaf3cb4e730d0753814a5574d2f7c9ad1943', 'locatieprogramma', 0, 3, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(3, 1, '2021-09-16 17:46:59', 1, '2021-09-16 17:47:04', 'a81411a38b9d3a81beba93311001352a8ac13b3248dde2b57c927dd1315fe150', 'locatieprogramma', 0, 1, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(4, 1, '2021-09-16 18:20:01', 1, '2021-09-16 18:20:05', '8b270efbf65fa27b2add78258d9b2820bd46c7ef9f5cdda91eb49c87123a916c', 'locatieprogramma', 0, 3, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(5, 1, '2021-09-17 12:44:27', 1, '2021-09-17 12:44:38', 'cc9f1b95a764a0d63618296ef22cc8818e3b07a3037de685ba40dcb5e3a0e9be', 'locatieprogramma', 0, 3, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(6, 71, '2021-09-17 12:44:28', 1, '2021-09-17 12:44:41', 'd5421b9a12566f8d55b21c128b9a85bb5a6828bcfbf2c3d7371fe696c3759178', 'locatieprogramma', 0, 3, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(7, 72, '2021-09-17 13:01:43', 32, '2021-10-05 20:05:02', '6aafd91ab14c4c5ed6eeaba12f50ec0831d49700b1ae3c17449495aa52b2c91b', 'locatieprogramma', 0, 3, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(8, 72, '2021-09-17 13:02:35', 18, '2021-10-08 20:39:49', 'c80861ec90e132f1377ee16a9c68470d49cc74ea5fa3c312ea585e2b6a99ac1a', 'locatieprogramma', 0, 7, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(9, 72, '2021-09-17 13:03:10', 7, '2021-09-30 15:25:10', '2f62b0930ddeb11d423bce1830bd30c996fe1aed66096525d5a8e6458f9129cd', 'locatieprogramma', 0, 1, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(10, 71, '2021-09-18 16:57:53', 12, '2021-10-08 22:02:38', '80538e485f16d8e2d0f7d36026438157003f2dab232d20d4f40298568b2b166e', 'locatieprogramma', 0, 14, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(11, 71, '2021-09-20 14:35:46', 56, '2021-10-11 12:22:40', '9987c36198a237e0f079e44cac87032b585bfbbcee8f5dd1f3c6db1ba647754d', 'locatieprogramma', 0, 11, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(12, 71, '2021-09-20 15:42:13', 6, '2021-09-29 10:52:00', '0e7667605bb0e7ae37c58a5e0ce9856e38372eab33213aeccfd913d00ae4794f', 'locatieprogramma', 0, 6, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(13, 71, '2021-09-22 15:26:39', 7, '2021-09-28 10:45:38', '1a45bd267b60d5d23f12ca77c417b638dea664a0bc089cb794691abb9295aa92', 'locatieprogramma', 0, 18, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(14, 71, '2021-09-22 15:30:47', 6, '2021-10-06 10:52:04', 'd5aa01a003b99973695f16bb0540fdc19660b3597a37367a202136a2be685f62', 'locatieprogramma', 0, 16, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(15, 71, '2021-09-22 15:32:19', 3, '2021-10-06 10:47:40', '75f06c91631c62e42761ae5a2a0ec4641d52bddbdbc7cd890579f69d2bb8f0e5', 'locatieprogramma', 0, 17, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(16, 71, '2021-09-25 11:39:18', 14, '2021-10-09 17:07:18', 'be4071db82a724a564f8f7826bf2b45f016fb75127d3d5e9d8c690e864283c07', 'locatieprogramma', 0, 11, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(17, 71, '2021-09-28 12:30:42', 0, '1970-01-01 00:00:00', 'dd9e05a44149df905022274816f18cb906e10e134e3edcaada29d393440556b9', 'locatieprogramma', 0, 18, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(18, 1, '2021-09-29 14:33:17', 1, '2021-09-29 14:33:20', 'a7ea0d11b16cf16985adafc93d280340ea9455e75fb7c13a29dbceb3f3a422f5', 'personeelsplanning', 0, 0, 29, '0', '2021-10-02 00:00:00', '2021-10-11 00:00:00', 'personeelsplanning', 0),
(19, 71, '2021-10-01 11:42:39', 0, '1970-01-01 00:00:00', 'f05e7a3df972403e9f8e3672c5ebb1f30e8524e24cdd9c67e26ce89f35b482db', 'personeelsplanning', 0, 0, 0, '0', '2021-10-02 00:00:00', '2021-10-02 00:00:00', 'personeelsplanning', 0),
(20, 1, '2021-10-01 11:42:41', 0, '1970-01-01 00:00:00', '1aa88eaa989fba3537263e0d441466d8c47531af1fbb0c9b5698f36bdd76f86d', 'personeelsplanning', 0, 0, 0, '0', '2021-10-02 00:00:00', '2021-10-02 00:00:00', 'personeelsplanning', 0),
(21, 71, '2021-10-01 13:07:34', 6, '2021-10-03 10:24:25', 'c927e0cdb9d82aa409d8d5ce0548812a17ee1990677054ca13a934a0bb8314be', 'locatieprogramma', 0, 9, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(22, 71, '2021-10-01 16:26:53', 0, '1970-01-01 00:00:00', '97f3cea79a4067754a6e9eb5e9d285ad6877bdf1ab7bfae6fbaadb85249cc2e2', 'personeelsplanning', 0, 0, 0, '0', '2021-10-02 00:00:00', '2021-10-02 00:00:00', 'personeelsplanning', 0),
(23, 71, '2021-10-01 16:33:09', 0, '1970-01-01 00:00:00', '1976496546c4c29c299d83ab47451f128c54c9aed144255061b534feb5e59bce', 'personeelsplanning', 0, 0, 0, '0', '2021-10-02 00:00:00', '2021-10-02 00:00:00', 'personeelsplanning', 0),
(24, 71, '2021-10-01 16:39:56', 36, '2021-10-10 07:58:29', 'e480f578410c7a57842fbe40a5aab69249441107fddd800f9fc503d546415d6e', 'personeelsplanning', 0, 0, 0, '0', '2021-10-02 00:00:00', '2021-10-02 00:00:00', 'personeelsplanning', 0),
(25, 71, '2021-10-02 18:33:22', 6, '2021-10-06 23:37:02', '68edfc6b9a4e08476970e4224c81434acfcc3adf724108e7f7928c9d7af9100c', 'locatieprogramma', 0, 6, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(26, 71, '2021-10-02 21:20:16', 16, '2021-10-05 23:24:05', '318142d7e44737979f9caaa63ce47d50df75e97130714d37ae7e5684eede45f0', 'personeelsplanning', 0, 0, 0, '0', '2021-10-03 00:00:00', '2021-10-03 00:00:00', 'personeelsplanning', 0),
(27, 71, '2021-10-03 10:09:16', 3, '2021-10-03 19:38:57', 'edf8082172be8e37f5a1e596118fa7149b5cc921e2f75c3f2c5cbcc0e003eea2', 'personeelsplanning', 0, 6, 0, '0', '2021-10-03 00:00:00', '2021-10-03 00:00:00', 'personeelsplanning', 0),
(28, 71, '2021-10-03 10:11:59', 13, '2021-10-06 23:34:46', '0736bc3818c087b8941142f831a5b64b468422ded34318235970d5fb8fef2347', 'personeelsplanning', 0, 6, 0, '0', '2021-10-03 00:00:00', '2021-10-03 00:00:00', 'personeelsplanning', 0),
(29, 71, '2021-10-03 20:41:56', 0, '1970-01-01 00:00:00', '4d8212c777d4166327d932c8b2423ce1f8574bfbbb2bb1f5ed75e816534a9941', 'personeelsplanning', 0, 0, 0, '0', '2021-10-04 00:00:00', '2021-10-04 00:00:00', 'personeelsplanning', 0),
(30, 71, '2021-10-03 20:46:19', 13, '2021-10-06 23:35:02', '13623767e975d097cbac255b93af7f94e39af650ac89a2a3eab15d534f636057', 'personeelsplanning', 0, 0, 0, '0', '2021-10-04 00:00:00', '2021-10-04 00:00:00', 'personeelsplanning', 0),
(31, 71, '2021-10-04 23:31:53', 22, '2021-10-09 12:00:06', 'd2ce6f1ef0526e4dae35f8ded8da76925aff21f7a5318b3ed914f0bedb0c653e', 'personeelsplanning', 0, 0, 0, '0', '2021-10-05 00:00:00', '2021-10-05 00:00:00', 'personeelsplanning', 0),
(32, 71, '2021-10-05 23:31:45', 11, '2021-10-09 07:37:15', '2488426837677bb5ff0355c096b11618bfec65bf4c3f4042fa8c4f10f3e024f4', 'personeelsplanning', 0, 0, 0, '0', '2021-10-06 00:00:00', '2021-10-06 00:00:00', 'personeelsplanning', 0),
(33, 71, '2021-10-05 23:43:51', 28, '2021-10-16 20:03:22', '4014019926dcd4838ec9a002c891a73a5df32ebe8290930e22d989a8c6ac4768', 'personeelsplanning', 0, 0, 0, '0', '2021-10-06 00:00:00', '2021-10-06 00:00:00', 'personeelsplanning', 0),
(34, 71, '2021-10-07 00:05:18', 39, '2021-10-10 00:41:52', 'c80f86e9390a891ac4dbddb713ade93a7f88b1c086f5409a644a5450a96d6c1a', 'personeelsplanning', 0, 0, 0, '0', '2021-10-07 00:00:00', '2021-10-07 00:00:00', 'personeelsplanning', 0),
(35, 71, '2021-10-07 07:00:16', 116, '2021-10-11 14:23:14', '0699c6c83f5ac17a159247eabecbb3fd01772f0fc34da8a3ff7c6b24b9a5f9ec', 'personeelsplanning', 0, 0, 0, '0', '2021-10-08 00:00:00', '2021-10-08 00:00:00', 'personeelsplanning', 0),
(36, 71, '2021-10-08 12:12:36', 0, '1970-01-01 00:00:00', '00f0c7119689326469c38c26ae5af0e4a78d11ef2f9c34a6f58c4d1fbfec529e', 'locatieprogramma', 0, 18, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(37, 71, '2021-10-08 12:13:16', 0, '1970-01-01 00:00:00', '0b60f0e4fdc3d0e4d9e6f858f4a9c822eb8ac93f3cfa404fbd21dc237313512a', 'locatieprogramma', 0, 16, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(38, 71, '2021-10-08 12:14:03', 0, '1970-01-01 00:00:00', 'c72fd184fd18c2a2bd1af198105abf2904c393213d4093c549766be3a55b2597', 'locatieprogramma', 0, 17, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(39, 71, '2021-10-08 19:02:25', 1, '2021-10-08 19:03:18', 'b54c825f1dba6fff0fd78e01657daa8d22b4bb3e27dfef61b3b93f7333320ea7', 'locatieprogramma', 0, 14, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(40, 71, '2021-10-09 01:41:54', 86, '2021-10-16 21:30:19', '744c8c6fdf40309ea543cd6cad584a60f3469cb4a01fced4eeb476e4d0ed7a1a', 'personeelsplanning', 0, 0, 0, '0', '2021-10-09 00:00:00', '2021-10-09 00:00:00', 'personeelsplanning', 0),
(41, 71, '2021-10-09 02:28:25', 1, '2021-10-09 02:28:54', '5632b650ee6e887caf87750c885a2b2606c1c22fedc8d7786a75ab2ae44d693e', 'locatieprogramma', 0, 12, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(42, 71, '2021-10-09 02:29:33', 4, '2021-10-09 08:30:08', '08bbb12cd18ac0e8a3a36e099dbdd3fd28470b1d7236dc3a8742c9513bfebe7f', 'locatieprogramma', 0, 12, 0, NULL, '2021-09-29 00:00:00', '2021-10-12 00:00:00', NULL, 0),
(43, 71, '2021-10-09 21:36:13', 6, '2021-10-23 22:00:48', '45947b3ef41005ed1d6831188b0d34d2fe71534abb07f884533118b4401c16ec', 'personeelsplanning', 0, 0, 0, '0', '2021-10-10 00:00:00', '2021-10-10 00:00:00', 'personeelsplanning', 0),
(44, 71, '2021-10-10 00:41:11', 83, '2021-10-16 21:30:19', 'f7d01694ab6dca7c76289dfe63696ddcb0b4d3014809928d5f42148c83f21337', 'personeelsplanning', 0, 0, 0, '0', '2021-10-10 00:00:00', '2021-10-10 00:00:00', 'personeelsplanning', 0),
(45, 1, '2022-02-09 22:18:52', 0, '1970-01-01 00:00:00', '26e5c264c4397381f1c5cf8b1433ff25199fbcc0d08e248afe601c42c3bbb47c', 'locatieprogramma', 0, 12, 0, NULL, '2021-10-01 00:00:00', '2021-10-14 00:00:00', NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_soortdeelnemer`
--

DROP TABLE IF EXISTS `map_soortdeelnemer`;
CREATE TABLE `map_soortdeelnemer` (
  `id` int(11) NOT NULL,
  `soort` varchar(150) NOT NULL,
  `zakelijk` int(3) NOT NULL,
  `voorwaarden` text NOT NULL,
  `volgorde` int(11) NOT NULL,
  `opmerking` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_soorten`
--

DROP TABLE IF EXISTS `map_soorten`;
CREATE TABLE `map_soorten` (
  `id` int(11) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `blokkenschemapositie` int(3) NOT NULL DEFAULT '0',
  `blokkenschemakleur` varchar(150) DEFAULT NULL,
  `blokkenschemakleurnietbevestigd` varchar(150) DEFAULT NULL,
  `draaiboekpositie` int(3) NOT NULL DEFAULT '0',
  `draaiboekdefaultitem` int(3) NOT NULL DEFAULT '0',
  `draaiboekreadonly` int(3) NOT NULL DEFAULT '0',
  `ishoofdactiviteit` int(3) NOT NULL DEFAULT '0',
  `pdfcontract` int(3) NOT NULL DEFAULT '0',
  `isprogramma` int(3) NOT NULL DEFAULT '0',
  `iskleedkamer` int(3) NOT NULL DEFAULT '0',
  `iscatering` int(3) NOT NULL DEFAULT '0',
  `hoortbijprogramma` int(3) NOT NULL DEFAULT '1',
  `defaultexternal` int(3) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_soorten`
--

INSERT INTO `map_soorten` (`id`, `description`, `blokkenschemapositie`, `blokkenschemakleur`, `blokkenschemakleurnietbevestigd`, `draaiboekpositie`, `draaiboekdefaultitem`, `draaiboekreadonly`, `ishoofdactiviteit`, `pdfcontract`, `isprogramma`, `iskleedkamer`, `iscatering`, `hoortbijprogramma`, `defaultexternal`, `del`) VALUES
(1, 'Optreden', 1, '#ffd300', '#ffd400', 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0),
(2, 'Extra optreden', 1, '#ffd403', '#ffd400', 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0),
(3, 'Presentator', 1, '#b0c6df', '#aec6e0', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0),
(4, 'Load-in /Set-up', 2, '#0288d1', '', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, -1),
(5, 'Soundcheck', 3, '#9574ce', '', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, -1),
(6, 'Line check in C/O', 4, '#fd8ce1', '', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, -1),
(7, 'Ombouw', 1, '#d9e2f0', '#d7e3ef', 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0),
(16, 'Kleedkamer', 9, '#0061ff', '', 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, -1),
(17, 'Internals', 10, '#f28f85', '', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, -1),
(18, 'Soundcheck', 1, '#ededed', '#ededec', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
(19, 'Aankomst artiest', 1, '#669d34', '#669d34', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(20, 'Opbouw', 1, '#669d34', '#669d34', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(21, 'Inspelen', 1, '#669d34', '#669d34', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(22, 'Soundcheck', 1, '#669d34', '#669d34', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(23, 'Inloop', 1, '#669d34', '#669d34', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(24, 'Afbouw', 1, '#70aa55', '#000000', 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0),
(25, 'Presentator', 1, '#00ffff', '#00ffff', 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_soortevent`
--

DROP TABLE IF EXISTS `map_soortevent`;
CREATE TABLE `map_soortevent` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL DEFAULT '0',
  `soort` int(11) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_soortevent`
--

INSERT INTO `map_soortevent` (`id`, `event`, `soort`, `del`) VALUES
(1, 1, 17, 1),
(2, 1, 1, 0),
(3, 1, 2, 0),
(4, 1, 7, 0),
(5, 1, 3, 0),
(6, 1, 18, 0),
(7, 1, 19, 0),
(8, 1, 20, 0),
(9, 1, 21, 0),
(10, 1, 22, 0),
(11, 1, 23, 0),
(12, 1, 24, 0),
(13, 1, 25, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_startmenu`
--

DROP TABLE IF EXISTS `map_startmenu`;
CREATE TABLE `map_startmenu` (
  `id` int(11) NOT NULL,
  `sub` varchar(150) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `subnaam` varchar(150) NOT NULL,
  `pagecheck` varchar(150) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `link` text NOT NULL,
  `positie` int(3) NOT NULL,
  `tonenalstegel` int(3) NOT NULL,
  `toneninmenu` int(3) NOT NULL,
  `financieel` int(3) NOT NULL,
  `target` varchar(150) NOT NULL,
  `del` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_startmenu`
--

INSERT INTO `map_startmenu` (`id`, `sub`, `naam`, `subnaam`, `pagecheck`, `icon`, `link`, `positie`, `tonenalstegel`, `toneninmenu`, `financieel`, `target`, `del`) VALUES
(1, '', 'Producties', 'producties', 'producties,login', 'fa-music', 'index.php?page=producties', 1, 0, 0, 0, '_self', 0),
(2, '', 'Blokkenschema', 'blokkenschema', 'blokkenschema', 'fa-map', 'blokkenschema/', 2, 0, 0, 0, '_self', 0),
(3, '', 'Draaiboek', 'planning', 'planning', 'fa-link', 'planning/', 3, 0, 0, 0, '_self', 0),
(4, '', 'Overzichten', 'leveranciers', 'overzichten', 'fa-truck', 'index.php?page=overzichten', 5, 0, 0, 0, '_self', 0),
(5, '', 'seperator', '', '', '', 'mensen', 10, 0, 0, 0, '_self', 0),
(6, '', 'Personeelsplanning', 'personeel', 'personeelsplanning', 'fa-users', 'index.php?page=personeelsplanning', 3, 0, 1, 0, '_self', 0),
(7, '', 'Ingepland personeelsoverzicht', 'ingeplandpersoneelsoverzicht', '', 'fa-clock', '#\" class=\"openpersoneelsplanning', 14, 0, 0, 0, '_self', 1),
(9, '', 'seperator', '', '', '', 'verkoop', 20, 0, 0, 0, '_self', 0),
(10, '', 'Tickets', 'tickets', 'tickets,ticketdetails,ticketoverzicht', 'fa-ticket-alt', 'index.php?page=ticketoverzicht', 21, 0, 0, 1, '_self', 0),
(11, '', 'Markt', 'markt', 'alledeelnames,deelnemerdetails', 'fa-store', 'index.php?page=alledeelnames', 22, 0, 0, 0, '_self', 1),
(13, '', 'Marketing', 'marketing', 'marketing', 'fa-bullhorn', 'index.php?page=marketing', 23, 0, 0, 0, '_self', 0),
(14, '', 'Locaties', 'locaties', 'allePodia', 'fa-warehouse', 'index.php?page=allePodia', 2, 0, 1, 0, '_self', 0),
(15, '', 'Automatische berekeningen', 'automatisch', 'automatisch', 'fa-magic', 'automatisch/', 33, 0, 0, 0, '_self', 0),
(19, '', 'seperator', '', '', '', 'event', 0, 0, 0, 0, '_self', 0),
(20, '', 'Relaties', 'relaties', 'alleRelaties', 'fa-address-card', 'index.php?page=alleRelaties', 11, 0, 0, 0, '_self', 0),
(21, 'locaties', 'Locaties', '', 'allePodia', 'fa-warehouse', 'index.php?page=allePodia', 1, 1, 0, 0, '_self', 0),
(29, 'markt', 'Beoordelen', '', 'alledeelnames', 'fa-users', 'index.php?page=alledeelnames', 1, 1, 0, 0, '_self', 0),
(30, 'markt', 'Facturatie', '', 'allefacturen', 'fa-euro-sign', 'index.php?page=allefacturen', 3, 1, 0, 0, '_self', 0),
(31, 'markt', 'Verkoop', '', 'mapdashboard,mapdashboarddeelnemers,mapcredit,mapdashboardproduct,mapdashboardcategorydetails,mapdashboardcategorie,rapVerkoop', 'fa-tachometer-alt', 'index.php?page=mapdashboard', 7, 1, 0, 0, '_self', 0),
(32, 'markt', 'Indelen', '', 'allenietingedeeldelocaties,locatiebezetting', 'fa-map-marked-alt', 'index.php?page=allenietingedeeldelocaties', 5, 1, 0, 0, '_self', 0),
(33, 'markt', 'Downloads', '', 'mapmailing', 'fa-download', 'index.php?page=mapmailing', 8, 1, 0, 0, '_self', 0),
(34, 'markt', 'Accounts', '', 'mapdeelnemers', 'fa-address-book', 'index.php?page=mapdeelnemers', 9, 1, 0, 0, '_self', 0),
(35, 'markt', 'Wachtwoord en uitloggen', '', 'user', 'fa-user', 'index.php?page=user', 10, 0, 0, 0, '_self', 0),
(36, 'markt', 'Aanmeldportaal', '', '', 'fa-external-link-alt', 'markt/', 10, 1, 0, 0, '_blank', 0),
(37, 'markt', 'Welkomstpakket', '', 'alleNietVerstuurdeWelkomstpakketten,alleVerstuurdeWelkomstpakketten', 'fa-envelope-open-text', 'index.php?page=alleNietVerstuurdeWelkomstpakketten', 6, 1, 0, 0, '_self', 0),
(38, 'producties', 'Programma', '', 'producties,login', 'fa-music', 'index.php?page=producties', 1, 1, 0, 0, '_self', 0),
(39, 'producties', 'Productietijden', '', 'alleItems', 'fa-calendar-alt', 'index.php?page=alleItems', 2, 1, 0, 0, '_self', 0),
(40, 'producties', 'Bestanden', '', 'bestanden', 'fa-file-alt', 'index.php?page=bestanden', 4, 1, 0, 0, '_self', 1),
(41, 'producties', 'Composities', '', 'compositieoverzicht', 'fa-table', 'index.php?page=compositieoverzicht', 8, 0, 0, 0, '_self', 0),
(42, 'producties', 'Contract checklist', '', 'contractchecklist', 'fa-file-contract', 'index.php?page=contractchecklist', 6, 0, 0, 1, '_self', 0),
(43, 'producties', 'Contractstatus', '', 'financienoverzicht', 'fa-file-signature', 'index.php?page=financienoverzicht', 7, 1, 0, 1, '_self', 0),
(44, 'leveranciers', 'Maaltijden', '', 'overzichtmaaltijden', 'fa-utensils', 'index.php?page=overzichtmaaltijden', 8, 1, 0, 0, '_self', 0),
(45, 'producties', 'Kleedkamers', '', 'kleedkamers', 'fa-person-booth', 'index.php?page=kleedkamers', 5, 1, 0, 0, '_self', 1),
(46, 'producties', 'Blokkenschema', '', 'blokkenschema', 'fa-map', 'blokkenschema/', 3, 1, 0, 0, '_self', 0),
(47, 'leveranciers', 'Benodigdheden', '', 'overzichten', 'fa-truck', 'index.php?page=overzichten', 1, 1, 0, 0, '_self', 0),
(49, 'leveranciers', 'Bestellingen', '', 'leverancierbestellingen', 'fa-file-signature', 'index.php?page=leverancierbestellingen', 2, 0, 0, 0, '_self', 0),
(51, 'relaties', 'Relaties', '', 'alleRelaties', 'fa-address-card', 'index.php?page=alleRelaties', 1, 1, 0, 0, '_self', 0),
(52, 'personeel', 'Ingeplande werktijden', '', 'personeelsplanning', 'fa-users', 'index.php?page=personeelsplanning', 1, 1, 0, 0, '_self', 0),
(53, 'tickets', 'Gasten', '', 'gasten', 'fa-heart', 'index.php?page=gasten', 2, 0, 0, 0, '_self', 0),
(54, 'tickets', 'Sponsoren', '', 'sponsoren', 'fa-hands-helping', 'index.php?page=sponsoren', 3, 0, 0, 0, '_self', 0),
(55, 'tickets', 'Tickets', '', 'tickets,ticketdetails,ticketoverzicht', 'fa-ticket-alt', 'index.php?page=ticketoverzicht', 1, 1, 0, 0, '_self', 0),
(56, 'marketing', 'Nieuwsbrieven', '', 'marketing', 'fa-bullhorn', 'index.php?page=marketing', 1, 1, 0, 0, '_self', 0),
(57, 'marketing', 'Enquete', '', 'enquete', 'fa-bullhorn', 'index.php?page=enquete', 2, 1, 0, 0, '_self', 0),
(58, 'tickets', 'Facturatie', '', 'sponsorfacturen', 'fa-euro-sign', 'index.php?page=sponsorfacturen', 5, 0, 0, 0, '_self', 0),
(59, 'vrijwilligers', 'Vrijwilligers evenement', '', 'alleVrijwilligers', 'fa-smile-beam', 'index.php?page=alleVrijwilligers', 1, 1, 0, 0, '_self', 0),
(61, 'personeel', 'Toegangszones', '', 'accreditatie', 'fa-eye', '#\" class=\"openpersoneelsplanningaccreditatie', 5, 1, 0, 0, '_self', 1),
(62, 'personeel', 'Portofoon', '', 'portofoon', 'fa-mobile', 'index.php?page=portofoon', 4, 1, 0, 0, '_self', 1),
(63, 'personeel', 'Personeels planning per dag', '', '', 'fa-clock', '#\" class=\"openpersoneelsplanning', 20, 1, 0, 0, '_self', 0),
(65, 'personeel', 'Vrijwilligers portaal', '', '', 'fa-external-link-alt', 'crew/', 8, 0, 0, 0, '_blank', 0),
(66, 'personeel', 'Leveranciers portaal', '', '', 'fa-external-link-alt', 'leverancier/', 9, 0, 0, 0, '_blank', 0),
(67, 'leveranciers', 'Leveranciers portaal', '', '', 'fa-external-link-alt', 'leverancier/', 3, 0, 0, 0, '_blank', 0),
(70, 'tickets', 'Fondsenwerving', '', 'fondsenwerving', 'fa-hand-holding-usd', 'index.php?page=fondsenwerving', 4, 0, 0, 0, '_self', 0),
(71, 'locaties', 'Faciliteiten', '', '', 'fa-list-alt', '#\" class=\"openfaciliteitenoverzicht', 2, 0, 0, 0, '_self', 0),
(76, '', 'Vrijwilligers', 'vrijwilligers', 'alleVrijwilligers', 'fa-smile-beam', 'index.php?page=alleVrijwilligers', 1, 0, 1, 0, '_self', 0),
(77, 'vrijwilligers', 'Benodigde teams', '', 'lstTeams', 'fa-user-friends', 'index.php?page=lstTeams', 3, 1, 0, 0, '_self', 0),
(78, 'vrijwilligers', 'Benodigde data', '', 'lstTeamBenodigdeData', 'fa-calendar-alt', 'index.php?page=lstTeamBenodigdeData', 4, 1, 0, 0, '_self', 0),
(79, 'vrijwilligers', 'Aanmeldportaal', '', '', 'fa-external-link-alt', 'crew/', 6, 1, 0, 0, '_blank', 0),
(80, 'personeel', 'Beschikbaar-heidsoverzicht', '', 'inplannen', 'fa-map-pin', 'team/', 7, 1, 0, 0, '_self', 0),
(81, 'vrijwilligers', 'Aantallen', '', 'aantallen', 'fa-list-ol', 'team/overview.php', 5, 1, 0, 0, '_self', 1),
(82, 'vrijwilligers', 'Alle vrijwilligers', '', 'alleOverzichtVrijwilligers', 'fa-grin-alt', 'index.php?page=alleOverzichtVrijwilligers', 2, 1, 0, 0, '_self', 0),
(83, 'personeel', 'Urencontrole', '', 'personeelscontrole', 'fa-user-clock', 'index.php?page=personeelscontrole', 9, 1, 0, 0, '_self', 1),
(84, 'personeel', 'Planningsfuncties', '', 'functies', 'fa-user-tie', 'index.php?page=functies', 1, 1, 0, 0, '_self', 0),
(85, 'personeel', 'Materialen', '', 'materialen', 'fa-trailer', 'index.php?page=materialen', 7, 1, 0, 0, '_self', 1),
(86, 'personeel', 'Materiaalitems', '', 'materiaalitems', 'fa-box-open', 'index.php?page=materiaalitems', 8, 1, 0, 0, '_self', 1),
(87, '', 'Crewplanning', 'crewplanning', '', 'fa-clock', 'crewplanning', 4, 0, 1, 0, '_self', 1),
(88, 'leveranciers', 'Shirts', '', 'overzichtsshirts', 'fa-tshirt', 'index.php?page=overzichtsshirts', 8, 1, 0, 0, '_self', 0),
(89, 'producties', 'Artiesten', '', 'alleActs', 'fa-microphone', 'index.php?page=alleActs', 2, 1, 0, 0, '_self', 0),
(90, 'leveranciers', 'Hotelgasten', '', 'overzichthotelgasten', 'fa-suitcase-rolling', 'index.php?page=overzichthotelgasten', 9, 1, 0, 0, '_self', 0),
(91, 'leveranciers', 'Travel transfers', '', 'overzichttransfers', 'fa-plane', 'index.php?page=overzichttransfers', 10, 1, 0, 0, '_self', 0),
(92, 'producties', 'Producties', '', 'voorstellingen', 'fa-drum', 'index.php?page=voorstellingen', 0, 1, 0, 0, '_self', 1),
(93, 'personeel', 'Personeels planning volledig', '', '', 'fa-clock', 'crewplanning/', 21, 1, 0, 0, '_self', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_subproducts`
--

DROP TABLE IF EXISTS `map_subproducts`;
CREATE TABLE `map_subproducts` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `subproduct` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_tabbladen`
--

DROP TABLE IF EXISTS `map_tabbladen`;
CREATE TABLE `map_tabbladen` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dblist` varchar(150) NOT NULL,
  `volgorde` int(11) NOT NULL DEFAULT '0',
  `actief` int(3) NOT NULL DEFAULT '0',
  `veldenperdatum` int(3) NOT NULL DEFAULT '0',
  `veldenperevenement` int(3) NOT NULL DEFAULT '0',
  `toondiensten` int(11) NOT NULL DEFAULT '0',
  `toondienstenpertabblad` int(3) NOT NULL DEFAULT '0',
  `toonbenodigdheden` int(3) NOT NULL DEFAULT '0',
  `toonevaluatie` int(3) NOT NULL DEFAULT '0',
  `toonadressen` int(3) NOT NULL DEFAULT '0',
  `tooncontact` int(3) NOT NULL DEFAULT '0',
  `toonacties` int(3) NOT NULL DEFAULT '0',
  `toonactiespertabblad` int(3) NOT NULL DEFAULT '0',
  `toonfinancieel` int(3) NOT NULL DEFAULT '0',
  `toonsubactivities` int(3) NOT NULL DEFAULT '0',
  `tooncomposities` int(3) NOT NULL DEFAULT '0',
  `tooncrewplanning` int(3) NOT NULL DEFAULT '0',
  `tooncatering` int(3) NOT NULL DEFAULT '0',
  `toonovernachtingen` int(3) NOT NULL DEFAULT '0',
  `toontransfers` int(3) NOT NULL DEFAULT '0',
  `toonmarketingcontent` int(3) NOT NULL DEFAULT '0',
  `toonbeschikbaarheidovernachting` int(3) NOT NULL DEFAULT '0',
  `toonovernachtingenperlocatie` int(3) NOT NULL DEFAULT '0',
  `toondoctechniek` int(3) NOT NULL DEFAULT '0',
  `toondocpromotie` int(3) NOT NULL DEFAULT '0',
  `toondocfinancieel` int(3) NOT NULL DEFAULT '0',
  `toondocalgemeen` int(3) NOT NULL DEFAULT '0',
  `toonactiviteitenperlocatie` int(3) NOT NULL DEFAULT '0',
  `tooninschrijving` int(3) NOT NULL DEFAULT '0',
  `toondonatie` int(3) NOT NULL DEFAULT '0',
  `actiecategorie` varchar(150) DEFAULT NULL,
  `toonbijevent` int(3) NOT NULL DEFAULT '0',
  `toonbijpersoon` int(3) NOT NULL DEFAULT '0',
  `toonbijvrijwilliger` int(3) NOT NULL DEFAULT '0',
  `toonbijpodia` int(3) NOT NULL DEFAULT '0',
  `kopleft1` varchar(150) DEFAULT NULL,
  `kopleft2` varchar(150) DEFAULT NULL,
  `kopleft3` varchar(150) DEFAULT NULL,
  `kopleft4` varchar(150) DEFAULT NULL,
  `kopleft5` varchar(150) DEFAULT NULL,
  `kopright1` varchar(150) DEFAULT NULL,
  `kopright2` varchar(150) DEFAULT NULL,
  `kopright3` varchar(150) DEFAULT NULL,
  `kopright4` varchar(150) DEFAULT NULL,
  `kopright5` varchar(150) DEFAULT NULL,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_tabbladen`
--

INSERT INTO `map_tabbladen` (`id`, `name`, `dblist`, `volgorde`, `actief`, `veldenperdatum`, `veldenperevenement`, `toondiensten`, `toondienstenpertabblad`, `toonbenodigdheden`, `toonevaluatie`, `toonadressen`, `tooncontact`, `toonacties`, `toonactiespertabblad`, `toonfinancieel`, `toonsubactivities`, `tooncomposities`, `tooncrewplanning`, `tooncatering`, `toonovernachtingen`, `toontransfers`, `toonmarketingcontent`, `toonbeschikbaarheidovernachting`, `toonovernachtingenperlocatie`, `toondoctechniek`, `toondocpromotie`, `toondocfinancieel`, `toondocalgemeen`, `toonactiviteitenperlocatie`, `tooninschrijving`, `toondonatie`, `actiecategorie`, `toonbijevent`, `toonbijpersoon`, `toonbijvrijwilliger`, `toonbijpodia`, `kopleft1`, `kopleft2`, `kopleft3`, `kopleft4`, `kopleft5`, `kopright1`, `kopright2`, `kopright3`, `kopright4`, `kopright5`, `del`) VALUES
(1, 'Algemeen', 'custom_items', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 1, 1, 1, 1, 'Algemeen', 'Opmerkingen', '', '', '', '', 'Socials', 'Marketing', '', '', 0),
(2, 'Benodigdheden en acties', 'custom_items', 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'publieksbegeleiding', 1, 1, 1, 1, '', '', '', '', '', '', '', '', '', '', -1),
(5, 'Productie', 'custom_items', 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', -1),
(6, 'Benodigdheden', 'custom_items', 5, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, '', '', '', '', '', '', '', '', '', '', -1),
(7, 'Promotie', 'custom_items', 5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', -1),
(9, 'Financieel', 'custom_items', 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, '', 1, 1, 1, 0, 'Algemene contractant', '', '', '', '', '', '', '', '', '', -1),
(10, 'Techniek', 'custom_items', 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', -1),
(11, 'Tijden', 'custom_items', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', -1),
(12, 'Alle bestanden', 'custom_items', 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 1, 1, 1, 1, '', '', '', '', '', '', '', '', '', '', 0),
(13, 'Personeelsplanning', 'custom_items', 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, '', '', '', '', '', '', '', '', '', '', 0),
(14, 'Accreditatie / Catering', 'custom_items', 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 0, 'Polsbanden', 'Extra\'s', 'Maaltijden', 'Opmerkingen', '', 'Coupons en munten', 'Opbouw', 'Aantallen tijdens festival', '', '', -1),
(15, 'Travel / hotel', 'custom_items', 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 0, 0, 'Hotel', 'Vervoer', '', '', '', '', 'Vlucht heen', '', 'Vlucht terug', '', -1),
(16, 'Tech', 'custom_items', 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, 'Backline & DJ', 'Notities', 'Overige', '', '', '', '', '', '', '', -1),
(17, 'Crew / Overig', 'custom_items', 4, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Specificaties', 'Enveloppen', 'Contactpersonen', 'Kleedkamers', '', '', '', '', '', '', -1),
(18, 'Productiekantoor', 'custom_items', 5, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Specificaties', 'Bouwen', 'Breken', 'Pauzemuziek', '', '', '', '', '', '', -1),
(19, 'Backline', 'custom_items', 6, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Specificaties', 'Levering', 'Ophalen', '', '', '', '', '', '', '', -1),
(20, 'Triomf', 'custom_items', 7, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 1, 'Specificaties', 'Personen', 'Bouwen', 'Breken', '', '', '', '', '', '', -1),
(21, 'Totaaloverzicht', 'custom_items', 8, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', -1),
(22, 'Hospitality', 'custom_items', 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, '', '', '', '', '', '', '', '', '', '', -1),
(23, 'Marketing', 'custom_items', 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', -1),
(24, 'Benodigdheden en Acties', 'custom_items', 2, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 1, 0, '', '', '', '', '', '', '', '', '', '', -1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_ticketevent`
--

DROP TABLE IF EXISTS `map_ticketevent`;
CREATE TABLE `map_ticketevent` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `ticketsverkopen` int(3) NOT NULL,
  `introductie` text NOT NULL,
  `portaalontwerp` int(11) NOT NULL,
  `foto` text NOT NULL,
  `stylesheet` varchar(150) NOT NULL,
  `maxaantalkaarten` int(3) NOT NULL,
  `tekstaantalkaarten` varchar(150) NOT NULL,
  `naamvoornaam` varchar(150) NOT NULL DEFAULT 'Voornaam',
  `naamachternaam` varchar(150) NOT NULL DEFAULT 'Achternaam',
  `naamemailadres` varchar(150) NOT NULL DEFAULT 'E-mailadres',
  `naamtelefoon` varchar(150) NOT NULL DEFAULT 'Telefoon',
  `naamcustom1` varchar(150) NOT NULL,
  `naamcustom2` varchar(150) NOT NULL,
  `naamcustom3` varchar(150) NOT NULL,
  `naamcustom4` varchar(150) NOT NULL,
  `naamcustom5` varchar(150) NOT NULL,
  `naamcustom6` varchar(150) NOT NULL,
  `naamcustom7` varchar(150) NOT NULL,
  `naamcustom8` varchar(150) NOT NULL,
  `naamcustom9` varchar(150) NOT NULL,
  `naamcustom10` varchar(150) NOT NULL,
  `contactpersoon` text NOT NULL,
  `tabcatering` int(3) NOT NULL,
  `tabcorona` int(3) NOT NULL,
  `tabextras` int(3) NOT NULL,
  `item_zitplaatsen` int(3) NOT NULL,
  `item_groepsindeling` int(3) NOT NULL,
  `buttonafrekenen` varchar(150) NOT NULL,
  `emailadres` varchar(150) NOT NULL,
  `algemenevoorwaarden` int(3) NOT NULL,
  `aantalbestellingenperemailadres` int(3) NOT NULL,
  `startdatum` datetime NOT NULL,
  `einddatum` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_ticketevent`
--

INSERT INTO `map_ticketevent` (`id`, `event`, `naam`, `ticketsverkopen`, `introductie`, `portaalontwerp`, `foto`, `stylesheet`, `maxaantalkaarten`, `tekstaantalkaarten`, `naamvoornaam`, `naamachternaam`, `naamemailadres`, `naamtelefoon`, `naamcustom1`, `naamcustom2`, `naamcustom3`, `naamcustom4`, `naamcustom5`, `naamcustom6`, `naamcustom7`, `naamcustom8`, `naamcustom9`, `naamcustom10`, `contactpersoon`, `tabcatering`, `tabcorona`, `tabextras`, `item_zitplaatsen`, `item_groepsindeling`, `buttonafrekenen`, `emailadres`, `algemenevoorwaarden`, `aantalbestellingenperemailadres`, `startdatum`, `einddatum`, `del`) VALUES
(1, 1, 'Textilium', 1, 'Leuk dat je naar Textilium komt! Wij hebben de nieuwe trends die jij zo kunt komen ontdekken.', 5, '', '', 0, 'Aantal personen', 'Voornaam', 'Achternaam', 'E-mailadres', 'Telefoon', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 'Afrekenen', 'dennisdekriek@gmail.com', 0, 0, '2021-10-24 00:00:00', '2021-12-31 00:00:00', 0),
(2, 1, 'Nog een', 1, 'fff', 5, '', '', 0, 'Aantal personen', 'Voornaam', 'Achternaam', 'E-mailadres', 'Telefoon', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 'Afrekenen', 'dennisdekriek@gmail.com', 0, 0, '2021-10-25 00:00:00', '2021-10-29 00:00:00', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_ticketextraproducts`
--

DROP TABLE IF EXISTS `map_ticketextraproducts`;
CREATE TABLE `map_ticketextraproducts` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `naam` varchar(150) NOT NULL,
  `prijs` float(6,2) NOT NULL,
  `volgorde` int(3) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_ticketsales`
--

DROP TABLE IF EXISTS `map_ticketsales`;
CREATE TABLE `map_ticketsales` (
  `id` int(11) NOT NULL,
  `ticket` int(11) NOT NULL,
  `aantalpersonen` int(3) NOT NULL,
  `zitplaatsen` int(3) NOT NULL,
  `groep` varchar(150) NOT NULL,
  `voornaam` varchar(150) NOT NULL,
  `achternaam` varchar(150) NOT NULL,
  `email` text NOT NULL,
  `telefoon` varchar(150) NOT NULL,
  `privacyakkoord` datetime NOT NULL,
  `privacytekst` text NOT NULL,
  `extracheckbox1akkoord` datetime NOT NULL,
  `extracheckbox1tekst` text NOT NULL,
  `extrajanee1` int(3) NOT NULL,
  `voorkeur1` int(3) NOT NULL,
  `voorkeur2` int(3) NOT NULL,
  `voorkeur3` int(3) NOT NULL,
  `voorkeur4` int(3) NOT NULL,
  `voorkeur5` int(3) NOT NULL,
  `voorkeurenopm1` text NOT NULL,
  `opmerkingen` text NOT NULL,
  `paymentid` varchar(150) NOT NULL,
  `paymentstatus` varchar(150) NOT NULL,
  `paymentamount` varchar(150) NOT NULL,
  `paymentprofile` varchar(150) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_ticketsoorten`
--

DROP TABLE IF EXISTS `map_ticketsoorten`;
CREATE TABLE `map_ticketsoorten` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL DEFAULT '0',
  `naam` varchar(150) DEFAULT NULL,
  `positie` int(3) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `prijs` float(5,2) NOT NULL DEFAULT '0.00',
  `aantaltickets` int(3) NOT NULL DEFAULT '0',
  `naamkorting1` varchar(150) DEFAULT NULL,
  `prijskorting1` float(5,2) NOT NULL DEFAULT '0.00',
  `aantalticketskorting1` int(3) NOT NULL DEFAULT '0',
  `orderprefix` varchar(150) DEFAULT NULL,
  `pdf` int(11) NOT NULL DEFAULT '0',
  `email` int(11) NOT NULL DEFAULT '0',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_ticketsoorten`
--

INSERT INTO `map_ticketsoorten` (`id`, `event`, `naam`, `positie`, `datum`, `prijs`, `aantaltickets`, `naamkorting1`, `prijskorting1`, `aantalticketskorting1`, `orderprefix`, `pdf`, `email`, `del`) VALUES
(1, 1, 'Middag ticket', 0, '2021-12-31 10:00:00', 10.50, 70, '', 0.00, 0, '', 15, 6, 0),
(2, 1, 'Avondticket', 0, '2021-12-31 20:00:00', 15.00, 70, '', 0.00, 0, '', 15, 6, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_ticketvalidatie`
--

DROP TABLE IF EXISTS `map_ticketvalidatie`;
CREATE TABLE `map_ticketvalidatie` (
  `id` int(11) NOT NULL,
  `ticketsale` int(11) NOT NULL,
  `melding` text NOT NULL,
  `datum` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_transacties`
--

DROP TABLE IF EXISTS `map_transacties`;
CREATE TABLE `map_transacties` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `soorttransactie` varchar(150) NOT NULL,
  `organisatie` varchar(150) NOT NULL,
  `orderid` varchar(150) NOT NULL,
  `vorigestatus` varchar(150) NOT NULL,
  `statusorganisatie` varchar(150) NOT NULL,
  `betaalstatus` varchar(150) NOT NULL,
  `datum` datetime NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_velden`
--

DROP TABLE IF EXISTS `map_velden`;
CREATE TABLE `map_velden` (
  `id` int(11) NOT NULL,
  `tabblad` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `typeveld` varchar(100) NOT NULL,
  `dbveld` varchar(150) NOT NULL,
  `opzoeken` varchar(150) NOT NULL,
  `typewaarden` text NOT NULL,
  `multivalue` int(3) NOT NULL,
  `volgorde` int(11) NOT NULL,
  `volgordeinpdf` int(11) NOT NULL,
  `privacygevoelig` int(3) NOT NULL,
  `tooninportaal` int(3) NOT NULL,
  `portaalonderdeel` int(11) NOT NULL,
  `volgordeopportaal` int(11) NOT NULL,
  `tekstopportaal` varchar(150) NOT NULL,
  `tekstopportaaleng` varchar(150) NOT NULL,
  `portaalveldgrootte` int(3) NOT NULL,
  `verplichtopportaal` int(3) NOT NULL,
  `doel` text NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_velden`
--

INSERT INTO `map_velden` (`id`, `tabblad`, `position`, `name`, `typeveld`, `dbveld`, `opzoeken`, `typewaarden`, `multivalue`, `volgorde`, `volgordeinpdf`, `privacygevoelig`, `tooninportaal`, `portaalonderdeel`, `volgordeopportaal`, `tekstopportaal`, `tekstopportaaleng`, `portaalveldgrootte`, `verplichtopportaal`, `doel`, `del`) VALUES
(19, 9, 'left1', 'Vertegenwoordiger', 'text', 'vertegenwoordiger', '', '', 0, 1, 0, 0, 2, 1, 1, 'Voor- en achternaam', 'Full name', 0, 2, '', 0),
(20, 9, 'left1', 'Adres', 'text', 'vertegenwoordigeradres', '', '', 0, 2, 0, 0, 2, 1, 2, 'Adres', 'Address', 0, 2, '', 0),
(21, 9, 'left1', 'Postcode', 'text', 'vertegenwoordigerpostcode', '', '', 0, 3, 0, 0, 2, 1, 3, 'Postcode', 'ZIP code', 0, 2, '', 0),
(22, 9, 'left1', 'Woonplaats', 'text', 'vertegenwoordigerwoonplaats', '', '', 0, 4, 0, 0, 2, 1, 4, 'Plaats', 'City', 0, 2, '', 0),
(23, 9, 'left1', 'Telefoon', 'text', 'vertegenwoordigertelefoon', '', '', 0, 5, 0, 0, 2, 1, 6, 'Telefoon', 'Phone number', 0, 2, '', 0),
(24, 9, 'left1', 'E-mail', 'text', 'vertegenwoordigeremail', '', '', 0, 7, 0, 0, 2, 1, 5, 'E-mail', 'E-mail', 0, 2, '', 0),
(29, 1, 'left2', 'Opmerkingen', 'longtext', 'opmerkingen', '', '', 0, 1, 0, 0, 0, 0, 0, '', '', 0, 0, '', 0),
(42, 1, 'left1', 'Genre', 'lookup', 'genre', '14', '', 1, 1, 0, 0, 1, 0, 0, '', '', 1, 1, '', -1),
(56, 9, 'left1', 'Contractant', 'text', 'contractant', '', '', 0, 1, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(70, 1, 'left2', 'Aantal personen', 'text', 'numberofpeople', '', '', 0, 1, 0, 0, 1, 0, 0, '', '', 1, 1, '', -1),
(71, 1, 'left2', 'Aantal support', 'text', 'numberofsupportpeople', '', '', 0, 2, 0, 0, 1, 0, 0, '', '', 1, 1, '', -1),
(194, 1, 'right2', 'Website', 'text', 'website', '', '', 0, 1, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(195, 1, 'right2', 'Facebook', 'text', 'facebook', '', '', 0, 2, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(196, 1, 'right2', 'Instagram', 'text', 'instagram', '', '', 0, 3, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(197, 1, 'right2', 'LinkedIn', 'text', 'linkedin', '', '', 0, 4, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(198, 1, 'right2', 'Twitter', 'text', 'twitter', '', '', 0, 5, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(199, 1, 'right3', 'Aantal leden en instrumenten', 'longtext', 'aantalledeneninstrumenten', '', '', 0, 1, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(200, 1, 'right3', 'Benodigdheden en opstelling', 'longtext', 'benodigdhedenenopstelling', '', '', 0, 2, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(201, 1, 'right3', 'Geschiedenis/ achtergrond', 'longtext', 'geschiedenisachtergrond', '', '', 0, 3, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(202, 1, 'right3', 'Inclusie thema', 'longtext', 'inclusiethema', '', '', 0, 4, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(203, 1, 'right3', 'Favoriete muziek', 'longtext', 'favorietemuziek', '', '', 0, 5, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(204, 1, 'right3', 'Vaker geweest', 'longtext', 'vakeropcityproms', '', '', 0, 6, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(205, 1, 'right3', 'Herinnering', 'longtext', 'herinneringcityproms', '', '', 0, 7, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(206, 1, 'right3', 'Allermooiste concert', 'longtext', 'allermooisteconcert', '', '', 0, 8, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(207, 1, 'right3', 'Vervolgconcerten', 'longtext', 'vervolgconcerten', '', '', 0, 9, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(208, 9, 'left1', 'financieelland', 'text', 'financieelland', '', '', 0, 8, 0, 0, 1, 0, 0, '', '', 1, 1, '', -1),
(209, 9, 'left1', 'Land', 'text', 'vertegenwoordigerland', '', '', 0, 8, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(210, 9, 'right1', 'BTW nummer', 'text', 'btwnummer', '', '', 0, 1, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(211, 9, 'right1', 'KVK nummer', 'text', 'kvknummer', '', '', 0, 2, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(212, 9, 'right1', 'IBAN', 'text', 'iban', '', '', 0, 3, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(213, 1, 'left1', 'Capaciteit Corona', 'longtext', 'capaciteitcorona', '', '', 0, 1, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(214, 1, 'right3', 'Stand promotiedoeleinden', 'longtext', 'standpromotiedoeleinden', '', '', 0, 10, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0),
(215, 1, 'left1', 'Parkeren', 'longtext', 'parkeren', '', '', 0, 2, 0, 0, 1, 0, 0, '', '', 1, 1, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_veldendoelgroepen`
--

DROP TABLE IF EXISTS `map_veldendoelgroepen`;
CREATE TABLE `map_veldendoelgroepen` (
  `id` int(11) NOT NULL,
  `veld` int(11) NOT NULL,
  `doelgroep` int(11) NOT NULL,
  `del` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_veldendoelgroepen`
--

INSERT INTO `map_veldendoelgroepen` (`id`, `veld`, `doelgroep`, `del`) VALUES
(1, 42, 7, 0),
(57, 0, 7, 0),
(373, 56, 7, 0),
(374, 19, 7, 0),
(375, 20, 7, 0),
(376, 21, 7, 0),
(377, 22, 7, 0),
(378, 23, 7, 0),
(379, 24, 7, 0),
(381, 194, 7, 0),
(382, 195, 7, 0),
(383, 196, 7, 0),
(384, 197, 7, 0),
(385, 198, 7, 0),
(386, 70, 7, 0),
(388, 71, 7, 0),
(389, 199, 7, 0),
(390, 200, 7, 0),
(392, 202, 7, 0),
(393, 203, 7, 0),
(395, 204, 7, 0),
(396, 205, 7, 0),
(397, 206, 7, 0),
(398, 207, 7, 0),
(399, 201, 7, 0),
(400, 208, 7, 0),
(402, 209, 7, 0),
(403, 210, 7, 0),
(404, 211, 7, 0),
(405, 212, 7, 0),
(406, 213, 17, 0),
(408, 214, 7, 0),
(409, 214, 17, 0),
(410, 215, 17, 0),
(415, 29, 7, 0),
(416, 29, 15, 0),
(417, 29, 16, 0),
(418, 29, 17, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_vrijwilligers`
--

DROP TABLE IF EXISTS `map_vrijwilligers`;
CREATE TABLE `map_vrijwilligers` (
  `id` int(11) NOT NULL,
  `voornaam` varchar(150) NOT NULL DEFAULT '',
  `tussenvoegsel` varchar(150) NOT NULL DEFAULT '',
  `volledigenaam` varchar(150) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `telefoon` varchar(150) NOT NULL DEFAULT '',
  `mobiel` varchar(150) NOT NULL DEFAULT '',
  `shirtmaat` varchar(150) NOT NULL DEFAULT '',
  `jasmaat` varchar(150) DEFAULT NULL,
  `broekmaat` varchar(150) DEFAULT NULL,
  `attentieontvangen` int(3) NOT NULL DEFAULT '0',
  `geboortedatum` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `adres` varchar(150) NOT NULL DEFAULT '',
  `postcode` varchar(150) NOT NULL DEFAULT '',
  `woonplaats` varchar(150) NOT NULL DEFAULT '',
  `aanhef` varchar(150) NOT NULL DEFAULT '',
  `aanspreekvorm` varchar(150) NOT NULL DEFAULT '',
  `location` int(11) NOT NULL DEFAULT '0',
  `room` int(11) NOT NULL DEFAULT '0',
  `doelgroep` int(11) NOT NULL DEFAULT '0',
  `categorie` int(11) NOT NULL DEFAULT '0',
  `sector` int(11) NOT NULL DEFAULT '0',
  `alert` text,
  `copyof` int(11) NOT NULL DEFAULT '0',
  `copyitem` varchar(150) NOT NULL DEFAULT '',
  `checksum` varchar(150) NOT NULL DEFAULT '',
  `wachtwoord` text NOT NULL,
  `goedgekeurd` int(3) NOT NULL DEFAULT '0',
  `datumtoegevoegd` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `extraveld1` text NOT NULL,
  `extraveld2` text NOT NULL,
  `extraveld3` text NOT NULL,
  `extraveld4` text,
  `extraveld5` text,
  `extraveld6` text,
  `priv_akkoord_nieuwsbrief` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `priv_akkoord_nieuwsbrief_content` text,
  `priv_akkoord_voorwaarden` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `priv_akkoord_voorwaarden_content` text,
  `priv_akkoord_privacy` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `priv_akkoord_privacy_content` text,
  `priv_akkoord_match` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `priv_akkoord_match_content` text,
  `priv_akkoord_losseklus` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `priv_akkoord_losseklus_content` text,
  `priv_akkoord_organisaties` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `priv_akkoord_organisaties_content` text,
  `voorkeurnieuwsbrief` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `voorkeurvolgendjaar` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `zoekmachine` int(3) NOT NULL DEFAULT '0',
  `mondopmond` int(3) NOT NULL DEFAULT '0',
  `viaspui93` int(3) NOT NULL DEFAULT '0',
  `doorgestuurd` varchar(150) NOT NULL DEFAULT '',
  `leeftijd` varchar(150) NOT NULL DEFAULT '',
  `resetmatch` int(3) NOT NULL DEFAULT '0',
  `resetmatchdate` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `nickname` varchar(150) NOT NULL DEFAULT '',
  `loginname` varchar(150) NOT NULL DEFAULT '',
  `thema1` varchar(300) NOT NULL DEFAULT '',
  `thema2` varchar(300) NOT NULL DEFAULT '',
  `thema3` varchar(300) NOT NULL DEFAULT '',
  `thema4` varchar(300) NOT NULL DEFAULT '',
  `thema5` varchar(300) NOT NULL DEFAULT '',
  `thema6` varchar(300) NOT NULL DEFAULT '',
  `thema7` varchar(300) NOT NULL DEFAULT '',
  `thema8` varchar(300) NOT NULL DEFAULT '',
  `thema9` varchar(300) NOT NULL DEFAULT '',
  `thema10` varchar(300) NOT NULL DEFAULT '',
  `thema11` varchar(300) NOT NULL DEFAULT '',
  `thema12` varchar(300) NOT NULL DEFAULT '',
  `thema13` varchar(300) NOT NULL DEFAULT '',
  `thema14` varchar(300) NOT NULL DEFAULT '',
  `thema15` varchar(300) NOT NULL DEFAULT '',
  `foto` text,
  `cateringvoorkeur` int(11) NOT NULL DEFAULT '0',
  `cateringdieet` text,
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Gegevens worden geëxporteerd voor tabel `map_vrijwilligers`
--

INSERT INTO `map_vrijwilligers` (`id`, `voornaam`, `tussenvoegsel`, `volledigenaam`, `email`, `telefoon`, `mobiel`, `shirtmaat`, `jasmaat`, `broekmaat`, `attentieontvangen`, `geboortedatum`, `adres`, `postcode`, `woonplaats`, `aanhef`, `aanspreekvorm`, `location`, `room`, `doelgroep`, `categorie`, `sector`, `alert`, `copyof`, `copyitem`, `checksum`, `wachtwoord`, `goedgekeurd`, `datumtoegevoegd`, `extraveld1`, `extraveld2`, `extraveld3`, `extraveld4`, `extraveld5`, `extraveld6`, `priv_akkoord_nieuwsbrief`, `priv_akkoord_nieuwsbrief_content`, `priv_akkoord_voorwaarden`, `priv_akkoord_voorwaarden_content`, `priv_akkoord_privacy`, `priv_akkoord_privacy_content`, `priv_akkoord_match`, `priv_akkoord_match_content`, `priv_akkoord_losseklus`, `priv_akkoord_losseklus_content`, `priv_akkoord_organisaties`, `priv_akkoord_organisaties_content`, `voorkeurnieuwsbrief`, `voorkeurvolgendjaar`, `zoekmachine`, `mondopmond`, `viaspui93`, `doorgestuurd`, `leeftijd`, `resetmatch`, `resetmatchdate`, `nickname`, `loginname`, `thema1`, `thema2`, `thema3`, `thema4`, `thema5`, `thema6`, `thema7`, `thema8`, `thema9`, `thema10`, `thema11`, `thema12`, `thema13`, `thema14`, `thema15`, `foto`, `cateringvoorkeur`, `cateringdieet`, `del`) VALUES
(1, 'Voornaam', '', 'Achternaam 136758598', 'email@emailadres.nl', '', '06-12345678', 'M', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'f644638cb957b508ed12997f516f0c0b', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 16:09:00', '2021-09-18 16:09:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(2, 'Voornaam', '', 'Achternaam 1001552740', 'email@emailadres.nl', '', '06-12345678', 'XL', 'XL', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '14c07d8ba03c3194a03ab17e07657eb8', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-30 14:40:07', '2021-09-30 14:40:07', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(3, 'Voornaam', '', 'Achternaam 1505680165', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1409ae6db13d3a25393c330a66a6a24e', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-10-04 14:56:38', '2021-10-04 14:56:38', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(4, 'Voornaam', '', 'Achternaam 1704920588', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 2, '1957-08-15 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'b1f41f00fdcf47787e4abec8c1702abe', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-26 17:17:05', '2021-09-26 17:17:05', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(5, 'Voornaam', '', 'Achternaam 960654851', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '7d86056a909fd151f7ccb0ac5d179606', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(6, 'Voornaam', '', 'Achternaam 1682796277', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'db3e5f99bf247c0643f13ea8b6ebb65c', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-26 12:27:25', '2021-09-26 12:27:25', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(7, 'Voornaam', '', 'Achternaam 990080235', 'email@emailadres.nl', '', '06-12345678', 'XL', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '10013a6101a44104eea3a78b2134e07f', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:08:51', '2021-09-18 15:08:51', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(8, 'Voornaam', 'van der', 'Achternaam 380903293', 'email@emailadres.nl', '', '06-12345678', 'M', NULL, NULL, 2, '1961-04-11 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1deb85174b8ecd7c53317d035aef5e7e', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-30 18:25:00', '2021-09-30 18:25:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(9, 'Voornaam', 'van der', 'Achternaam 1509937506', 'email@emailadres.nl', '', '06-12345678', 'XL', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '01bc61579adf5f30f09b851305efc5de', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-28 11:56:31', '2021-09-28 11:56:31', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(10, 'Voornaam', '', 'Achternaam 1070335784', 'email@emailadres.nl', '', '06-12345678', 'S', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '58513d6b2243233b5e017fcfb26f5432', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:06:17', '2021-09-18 15:06:17', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(11, 'Voornaam', '', 'Achternaam 838889712', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '5264f6676bb434603e4ae05cd3b7093f', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-10-01 12:41:06', '2021-10-01 12:41:06', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(12, 'Voornaam', 'van', 'Achternaam 62450782', 'email@emailadres.nl', '', '06-12345678', 'XL', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '66d29f8bb4b500fa23cf0b15f6a37342', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:29:24', '2021-09-18 15:29:24', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(13, 'Voornaam', '', 'Achternaam 1737770846', 'email@emailadres.nl', '', '06-12345678', 'S', 'M', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '3f68a560e84cdb2c08e5f3312ef2c665', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-30 19:48:33', '2021-09-30 19:48:33', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(14, 'Voornaam', '', 'Achternaam 730072322', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '425c4c49f4086cb9c1ea7987539d8590', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(15, 'Voornaam', '', 'Achternaam 1912415423', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1c573000439e277b1a26a92004d5de1c', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(16, 'Voornaam', '', 'Achternaam 1591407800', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1e98f44bd84b98d4d0a28098bf83bd96', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:29:40', '2021-09-18 15:29:40', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(17, 'Voornaam', '', 'Achternaam 906444734', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '5d5fd010bbd2fbdc65ceec5d49760b1d', 'GEEN-NONE', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-28 17:55:13', '2021-09-28 17:55:13', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(18, 'Voornaam', '', 'Achternaam 899142448', 'email@emailadres.nl', '', '06-12345678', 'S', 'S', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '629dabc772bcc76377411cdf58a568a8', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:11:35', '2021-09-18 15:11:35', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(19, 'Voornaam', '', 'Achternaam 1708909459', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1b1c8c6502c6f45894e8da05f0fb0902', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(20, 'Voornaam', '', 'Achternaam 1486195950', 'email@emailadres.nl', '', '06-12345678', 'XL', NULL, NULL, 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '2e40908245d3e85b1d5ff5418427f552', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-26 10:59:51', '2021-09-26 10:59:51', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(21, 'Voornaam', '', 'Achternaam 1804718289', 'email@emailadres.nl', '', '06-12345678', 'M', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'b19468fea8884942783e365a7695aea3', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:12:40', '2021-09-18 15:12:40', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(22, 'Voornaam', '', 'Achternaam 415602704', 'email@emailadres.nl', '', '06-12345678', 'L', 'M', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c33f7d65fcc0d9911bf2a7f59bb988b3', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '2021-10-06 01:02:06', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(23, 'Voornaam', '', 'Achternaam 1890787819', 'email@emailadres.nl', '', '06-12345678', 'S', 'M', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'af738d69338d1bc237464ab54ae293e0', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-27 13:45:00', '2021-09-27 13:45:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(24, 'Voornaam', '', 'Achternaam 2090183329', 'email@emailadres.nl', '', '06-12345678', '0', '0', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '8b27bc56f4136ce7e89401eeec22e6f3', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-28 17:55:36', '2021-09-28 17:55:36', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(25, 'Voornaam', '', 'Achternaam 2055817230', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '35a4b6704fbd78d20a3c45d5eb06351e', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(26, 'Voornaam', '', 'Achternaam 1836987882', 'email@emailadres.nl', '', '06-12345678', 'S', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '07a5d4244f23e9531a70cac4f360b506', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(27, 'Voornaam', '', 'Achternaam 404695261', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'f382f601dd545301705249334142f81f', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(28, 'Voornaam', '', 'Achternaam 1140231369', 'email@emailadres.nl', '', '06-12345678', 'S', 'S', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'a82c8f751463e22a0cbf452942d28428', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 16:05:25', '2021-09-18 16:05:25', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(29, 'Voornaam', 'van', 'Achternaam 1969720602', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '96cf2d59c3bcd5fd803f032b2147622c', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(30, 'Voornaam', '', 'Achternaam 442462316', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XXL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'd32f9badf374220f97076c5f8888ef0b', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:41:16', '2021-09-18 15:41:16', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(31, 'Voornaam', '', 'Achternaam 564446748', 'email@emailadres.nl', '', '06-12345678', 'L', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '3db23bd7957c7b34417c3a839c5f1609', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:55:42', '2021-09-18 15:55:42', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(32, 'Voornaam', '', 'Achternaam 1651980178', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '6623e86cf667c307502dbb24d0350489', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:40:53', '2021-09-18 15:40:53', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(33, 'Voornaam', '', 'Achternaam 1527176546', 'email@emailadres.nl', '', '06-12345678', 'S', 'S', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'e8f1d69254b739c7af35d1afb33517f4', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-10-06 13:10:33', '2021-10-06 13:10:33', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(34, 'Voornaam', '', 'Achternaam 1165509814', 'email@emailadres.nl', '', '06-12345678', 'L', 'M', '0', 2, '1968-05-09 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '89af779690d76ce38fc69b00cf66bc87', 'GEEN-NONE', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:15:04', '2021-09-18 15:15:04', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, -1),
(35, 'Voornaam', '', 'Achternaam 1248703706', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '6cd711bc03fff1730b90d8e5877bae71', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 1),
(36, 'Voornaam', 'ten', 'Achternaam 561774692', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c6c247a9139716a39f754b782499b7fa', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(37, 'Voornaam', '', 'Achternaam 183824334', 'email@emailadres.nl', '', '06-12345678', 'M', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'cfb8602b7f308028747d5df43bb0609c', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:24:56', '2021-09-18 15:24:56', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(38, 'Voornaam', '', 'Achternaam 494858853', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1a64f68fdfcdf004f2cd98998ea6fe6d', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(39, 'Voornaam', '', 'Achternaam 2075278449', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XXL', '0', 2, '1951-10-18 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '7ba2e7fe1c0be40f9ea4904e2a927ad5', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-26 12:01:21', '2021-09-26 12:01:21', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(40, 'Voornaam', '', 'Achternaam 1331758119', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'ba576e347ac115508386f52d73b575e6', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(41, 'Voornaam', 'van', 'Achternaam 2090355289', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'd54cb043b163812650fba50e54d6cbc1', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(42, 'Voornaam', 'van', 'Achternaam 1619253581', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XXL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '2d6d51d0530148a08b6640a6bf105137', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:39:22', '2021-09-18 15:39:22', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(43, 'Voornaam', '', 'Achternaam 495697832', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'bf681855ef6f4bdf139f4d3222e34964', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, -1),
(44, 'Voornaam', '', 'Achternaam 1804210184', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '2a7ff6c02e51a6ca95a2f8210433deec', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:40:07', '2021-09-18 15:40:07', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(45, 'Voornaam', '', 'Achternaam 1826125573', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'ec15c32775e48c2254a27284717ca8bc', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-28 15:39:25', '2021-09-28 15:39:25', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(46, 'Voornaam', '', 'Achternaam 388722592', 'email@emailadres.nl', '', '06-12345678', 'M', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'd7ae4e9808b3801fa16cab81dd4c4cef', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:55:19', '2021-09-18 15:55:19', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, -1),
(47, 'Voornaam', 'van', 'Achternaam 1332412279', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XXL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '77f5fa626453b739bab16af4046e3aa6', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:43:31', '2021-09-18 15:43:31', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(48, 'Voornaam', '', 'Achternaam 1477473333', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 2, '1957-09-06 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'b11f8bf6b20e2a8a056790495b6c490c', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-27 15:21:44', '2021-09-27 15:21:44', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(49, 'Voornaam', '', 'Achternaam 1228339190', 'email@emailadres.nl', '', '06-12345678', 'XL', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '47fcedc6210d241fd70cd75c46fde8df', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:48:19', '2021-09-18 15:48:19', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(50, 'Voornaam', '', 'Achternaam 1912934433', 'email@emailadres.nl', '', '06-12345678', 'M', 'M', '0', 2, '1970-04-13 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c27b189ddc14aebc3a6c7414c916ebd9', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(51, 'Voornaam', '', 'Achternaam 726787649', 'email@emailadres.nl', '', '06-12345678', 'S', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '913bedcaafc2af20c6715cbe213e9299', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:27:44', '2021-09-18 15:27:44', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(52, 'Voornaam', '', 'Achternaam 1380773691', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '65ab502a2a20a8da72241dd1fd36329c', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(53, 'Voornaam', '', 'Achternaam 1837796136', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '2b7961632e5543a357842ddc496e243f', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(54, 'Voornaam', '', 'Achternaam 630403954', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'fd97b58c1af3a488421a8a8b9e57981e', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:28:17', '2021-09-18 15:28:17', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(55, 'Voornaam', '', 'Achternaam 1859196821', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '6d3268124cd5d1bc9f0135cfea60cb2b', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(56, 'Voornaam', '', 'Achternaam 281535138', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'f4dcccea230549e2f199ea6cac1c8b2d', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 1),
(57, 'Voornaam', '', 'Achternaam 591458472', 'email@emailadres.nl', '', '06-12345678', 'L', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '8a733119bfe4e4fb3abdc3066fa2ebfd', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:36:02', '2021-09-18 15:36:02', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(58, 'Voornaam', '', 'Achternaam 1191711253', 'email@emailadres.nl', '', '06-12345678', 'L', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '4364e1c69e81691adbb2891e4250597d', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:33:02', '2021-09-18 15:33:02', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(59, 'Voornaam', '', 'Achternaam 2089197918', 'email@emailadres.nl', '', '06-12345678', 'M', 'L', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'f0f64cbc3cc73adccc37be57112f0700', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-10-01 17:07:10', '2021-10-01 17:07:10', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(60, 'Voornaam', '', 'Achternaam 217333490', 'email@emailadres.nl', '', '06-12345678', 'M', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '8a85a21337d60d0f78c86b46603f0ff3', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:30:45', '2021-09-18 15:30:45', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, -1),
(61, 'Voornaam', '', 'Achternaam 559952142', 'email@emailadres.nl', '', '06-12345678', 'S', 'S', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c9476d1784fbd31062f5ca58f56c46b9', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:37:05', '2021-09-18 15:37:05', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(62, 'Voornaam', '', 'Achternaam 747712058', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c859585c03f20c4202bd072f28ddcfb7', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(63, 'Voornaam', '', 'Achternaam 386887360', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1943fd4400fe48c24e006c8b6005a591', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(64, 'Voornaam', '', 'Achternaam 995951325', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XXL', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '2b82f3dbdbf99e7280ffe64b57d4327d', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-27 06:44:48', '2021-09-27 06:44:48', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(65, 'Voornaam', '', 'Achternaam 2107449879', 'email@emailadres.nl', '', '06-12345678', 'XL', '0', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'ea6166c820f78983e6d694c31b930db9', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-28 17:54:58', '2021-09-28 17:54:58', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(66, 'Voornaam', '', 'Achternaam 116620348', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XL', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c2922d20b7ff8cac9e7fa96ed0f3f996', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-21 18:13:15', '2021-09-21 18:13:15', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(67, 'Voornaam', '', 'Achternaam 1953953368', 'email@emailadres.nl', '', '06-12345678', 'S', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '70ac46e3d8c1443664a11de57071e5c9', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:37:41', '2021-09-18 15:37:41', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, 0),
(68, 'Voornaam', '', 'Achternaam 1812376478', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'b361cb0aa6eb3b50b54402f812c0a491', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(69, 'Voornaam', '', 'Achternaam 677402739', 'email@emailadres.nl', '', '06-12345678', 'XXL', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '4ab02b32442e9dea0ba033c6ace68812', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:38:43', '2021-09-18 15:38:43', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(70, 'Voornaam', '', 'Achternaam 158633868', 'email@emailadres.nl', '', '06-12345678', 'XXXL', 'XXXL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'a1ee82d66a777e837607f437f8aadc88', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:45:17', '2021-09-18 15:45:17', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(71, 'Voornaam', '', 'Achternaam 283795618', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '2462575cc74be4120e9be8b8f5122943', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(72, 'Voornaam', '', 'Achternaam 881483907', 'email@emailadres.nl', '', '06-12345678', 'XL', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '7351e26a02cc4290529f7f9378ed4d21', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:45:51', '2021-09-18 15:45:51', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(73, 'Voornaam', '', 'Achternaam 452953660', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'a0fe81187bf6c2b3656ff54c74ed926a', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(74, 'Voornaam', '', 'Achternaam 548835501', 'email@emailadres.nl', '', '06-12345678', 'XL', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'decac7993ff6737c3c2619a6697ecbf1', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:46:29', '2021-09-18 15:46:29', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(75, 'Voornaam', '', 'Achternaam 1906867124', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'f167d1ef8a93a3c154811ec89196c5c9', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(76, 'Voornaam', '', 'Achternaam 1989698126', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'f43d092cd6a84297644b909e99fdfc98', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(77, 'Voornaam', '', 'Achternaam 1339105111', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '5cc2c88e6b59dfd760ea156ffc79a683', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(78, 'Voornaam', '', 'Achternaam 181649271', 'email@emailadres.nl', '', '06-12345678', 'XL', NULL, NULL, 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'abc2176e1f63c56739751a4d34e1f2fe', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-26 18:55:08', '2021-09-26 18:55:08', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0);
INSERT INTO `map_vrijwilligers` (`id`, `voornaam`, `tussenvoegsel`, `volledigenaam`, `email`, `telefoon`, `mobiel`, `shirtmaat`, `jasmaat`, `broekmaat`, `attentieontvangen`, `geboortedatum`, `adres`, `postcode`, `woonplaats`, `aanhef`, `aanspreekvorm`, `location`, `room`, `doelgroep`, `categorie`, `sector`, `alert`, `copyof`, `copyitem`, `checksum`, `wachtwoord`, `goedgekeurd`, `datumtoegevoegd`, `extraveld1`, `extraveld2`, `extraveld3`, `extraveld4`, `extraveld5`, `extraveld6`, `priv_akkoord_nieuwsbrief`, `priv_akkoord_nieuwsbrief_content`, `priv_akkoord_voorwaarden`, `priv_akkoord_voorwaarden_content`, `priv_akkoord_privacy`, `priv_akkoord_privacy_content`, `priv_akkoord_match`, `priv_akkoord_match_content`, `priv_akkoord_losseklus`, `priv_akkoord_losseklus_content`, `priv_akkoord_organisaties`, `priv_akkoord_organisaties_content`, `voorkeurnieuwsbrief`, `voorkeurvolgendjaar`, `zoekmachine`, `mondopmond`, `viaspui93`, `doorgestuurd`, `leeftijd`, `resetmatch`, `resetmatchdate`, `nickname`, `loginname`, `thema1`, `thema2`, `thema3`, `thema4`, `thema5`, `thema6`, `thema7`, `thema8`, `thema9`, `thema10`, `thema11`, `thema12`, `thema13`, `thema14`, `thema15`, `foto`, `cateringvoorkeur`, `cateringdieet`, `del`) VALUES
(79, 'Voornaam', '', 'Achternaam 1057610295', 'email@emailadres.nl', '', '06-12345678', 'XXXL', 'XXL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'f07b7420bdb1f170be6245d738d16d47', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:46:52', '2021-09-18 15:46:52', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(80, 'Voornaam', '', 'Achternaam 1845277200', 'email@emailadres.nl', '', '06-12345678', 'M', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '3e439d26e3f0c34e99a8f6a249f492d7', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:47:04', '2021-09-18 15:47:04', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(81, 'Voornaam', '', 'Achternaam 2110208516', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '1163b75600ae082667305051c4707c4c', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(82, 'Voornaam', '', 'Achternaam 1412142791', 'email@emailadres.nl', '', '06-12345678', 'XL', 'XXL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '6bbec8e28985b4aed968c3a9d502c4d9', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:47:26', '2021-09-18 15:47:26', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(83, 'Voornaam', 'van der', 'Achternaam 867252740', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '862fe44e1362ddbcd413762fd15eb52d', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:47:40', '2021-09-18 15:47:40', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(84, 'Voornaam', '', 'Achternaam 1669600466', 'email@emailadres.nl', '', '06-12345678', 'XXL', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '82dccf3594c207d85ca99941fa4e982e', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(85, 'Voornaam', '', 'Achternaam 559257684', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'b40416a0cae309d417025fc33e570d81', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(86, 'Voornaam', '', 'Achternaam 1980357845', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '56628707481c870c07b2f1327e01b336', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(87, 'Voornaam', '', 'Achternaam 322544354', 'email@emailadres.nl', '', '06-12345678', 'L', 'L', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '71fb17b4987383cffb579d4274176e3f', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:47:54', '2021-09-18 15:47:54', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(88, 'Voornaam', '', 'Achternaam 1320552753', 'email@emailadres.nl', '', '06-12345678', 'S', 'M', '0', 2, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '9d66c747e3ca84e55f54297f23073897', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(89, 'Voornaam', '', 'Achternaam 233790751', 'email@emailadres.nl', '', '06-12345678', 'S', 'M', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '9e410d423c0f27cc89a8c911eeea9922', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:48:39', '2021-09-18 15:48:39', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(90, 'Voornaam', '', 'Achternaam 1586805305', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'ea1d1a2f3e8607e43061cc8184dea1a2', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(91, 'Voornaam', '', 'Achternaam 1917144605', 'email@emailadres.nl', '', '06-12345678', 'XL', 'XL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '604ee1d1e6178d4a952f1a0c2ad12edc', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 15:49:32', '2021-09-18 15:49:32', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(92, 'Voornaam', '', 'Achternaam 685374027', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '29ce05c137f34c81782bbbd06b0fd76e', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(93, 'Voornaam', '', 'Achternaam 1387090171', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'a7e61ce68118bc2230ed591e6a0889e3', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(94, 'Voornaam', '', 'Achternaam 597622249', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '9f3bb1810503e6347df704a5646c1718', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(95, 'Voornaam', 'de', 'Achternaam 884769566', 'email@emailadres.nl', '', '06-12345678', 'XXXL', 'XXXL', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'bde399d50c61d25d9c941b61e1cf2cd1', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-27 15:00:56', '2021-09-27 15:00:56', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(96, 'Voornaam', '', 'Achternaam 1055875308', 'email@emailadres.nl', '', '06-12345678', 'XXXL', 'XXL', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'daa9504ff5f0f16d8e3a85a6efc62e9a', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-18 16:02:32', '2021-09-18 16:02:32', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(97, 'Voornaam', '', 'Achternaam 1536642321', 'email@emailadres.nl', '', '06-12345678', '0', '0', '0', 1, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '33bd019661f493d17d4ed9e64023c6d3', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-23 17:11:10', '2021-09-23 17:11:10', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, NULL, 1),
(98, 'Voornaam', '', 'Achternaam 1878856411', 'email@emailadres.nl', '', '06-12345678', 'S', NULL, NULL, 2, '1991-11-27 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '7d3dfd21375a50f3f898c126c689a3eb', 'GEEN-NONE', 0, '2021-09-26 10:38:25', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '2021-09-26 10:38:25', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(99, 'Voornaam', '', 'Achternaam 782141496', 'email@emailadres.nl', '', '06-12345678', 'XXL', NULL, NULL, 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c286e2432b0918d1c4e1c1b6e77360c3', 'GEEN-NONE', 0, '2021-09-26 12:33:01', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(100, 'Voornaam', '', 'Achternaam 1915178808', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '39252c21d6a0cdeb0abce8064d4801d3', 'GEEN-NONE', 0, '2021-09-26 16:09:33', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 1),
(101, 'Voornaam', '', 'Achternaam 650596540', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 2, '1966-06-30 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '43fa8fdd693dbfc717afb6563575d3bf', 'GEEN-NONE', 0, '2021-09-26 20:14:38', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-28 08:36:42', '2021-09-28 08:36:42', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(102, 'Voornaam', '', 'Achternaam 1489528691', 'email@emailadres.nl', '', '06-12345678', 'XL', NULL, NULL, 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '6b826f6140eccbb43042002c760f4ed6', 'GEEN-NONE', 0, '2021-09-26 20:32:28', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-26 20:32:28', '2021-09-26 20:32:28', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 1),
(103, 'Voornaam', '', 'Achternaam 158273659', 'email@emailadres.nl', '', '06-12345678', 'XL', NULL, NULL, 2, '1965-06-29 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'ac06a8682c0d2e7235e3737ea684836d', 'GEEN-NONE', 0, '2021-09-27 16:51:40', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-27 16:51:40', '2021-09-27 16:51:40', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(104, 'Voornaam', '', 'Achternaam 1692726826', 'email@emailadres.nl', '', '06-12345678', 'XL', NULL, NULL, 2, '1952-04-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'a285fa3808828d319105bbbeb74b9223', 'GEEN-NONE', 0, '2021-09-27 19:34:52', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-27 19:34:52', '2021-09-27 19:34:52', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(105, 'Voornaam', '', 'Achternaam 1984940623', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '32c6962c49cfcb66ad55c532329d3659', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(106, 'Voornaam', 'Van der ', 'Achternaam 1181798678', 'email@emailadres.nl', '', '06-12345678', 'XXL', NULL, NULL, 2, '1965-01-04 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '58b3354d81c0839b3019ec9291e1cdd0', 'GEEN-NONE', 0, '2021-09-28 08:39:15', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-28 08:58:37', '2021-09-28 08:58:37', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, -1),
(107, 'Voornaam', '', 'Achternaam 1116381093', 'email@emailadres.nl', '', '06-12345678', 'XL', NULL, NULL, 2, '1958-02-18 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'c5039d5b2b244f5f3978cd0de528909a', 'GEEN-NONE', 0, '2021-09-29 11:27:16', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-29 11:27:16', '2021-09-29 11:27:16', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(108, 'Voornaam', '', 'Achternaam 1527208482', 'email@emailadres.nl', '', '06-12345678', '', NULL, NULL, 0, '1970-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '3063d122a3f5ce1339ffd38d78d4532f', '', 0, '1970-01-01 00:00:00', '', '', '', NULL, NULL, NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(109, 'Voornaam', '', 'Achternaam 810514412', 'email@emailadres.nl', '', '06-12345678', 'L', NULL, NULL, 2, '1968-05-09 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '6af230abbcbc7179fcb290d0a27b326a', 'GEEN-NONE', 0, '2021-09-29 15:11:42', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 5, NULL, 0),
(110, 'Voornaam', '', 'Achternaam 699189775', 'email@emailadres.nl', '', '06-12345678', 'M', NULL, NULL, 2, '1963-06-11 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '03004bb75f0e6ec048b669864e881001', 'GEEN-NONE', 0, '2021-09-29 20:23:26', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-29 21:14:12', '2021-09-29 21:14:12', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(111, 'Voornaam', '', 'Achternaam 394399369', 'email@emailadres.nl', '', '06-12345678', 'XL', NULL, NULL, 2, '1967-08-02 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', '33b021c28184a8e98e2d4802c7fb7f3c', 'GEEN-NONE', 0, '2021-09-30 19:41:50', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '2021-09-30 19:41:50', '2021-09-30 19:41:50', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, NULL, 0),
(112, 'Dennis', '', 'de Kriek', 'dennisdekriek@gmail.com', '', '5456456456', 'XS', '0', '0', 1, '1900-01-01 00:00:00', '', '', '', '', '', 0, 0, 16, 0, 0, '', 0, '', 'a8d7299e6eab8ca3e91edb078a719dbc', 'GEEN-NONE', 0, '2021-10-27 11:26:28', '', '', '', '', '', '', '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '1970-01-01 00:00:00', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, '', '', 0, '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'share/itemfotos/112-108-PasfototenbehoevevanVisaChinaJPG-faf972df3004e6d0a9e62807e19bbac2.JPG', 5, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_vrijwilligersbeschikbaarheid`
--

DROP TABLE IF EXISTS `map_vrijwilligersbeschikbaarheid`;
CREATE TABLE `map_vrijwilligersbeschikbaarheid` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `vrijwilligerdeelname` int(3) NOT NULL DEFAULT '0',
  `periode` int(3) NOT NULL DEFAULT '0',
  `ingeplandteam` int(3) NOT NULL DEFAULT '0',
  `added` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `deleted` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `map_vrijwilligersbeschikbaarheid`
--

INSERT INTO `map_vrijwilligersbeschikbaarheid` (`id`, `event`, `vrijwilliger`, `vrijwilligerdeelname`, `periode`, `ingeplandteam`, `added`, `deleted`, `del`) VALUES
(1, 1, 1, 0, 7, 9, '2021-09-17 11:23:25', '1970-01-01 00:00:00', -1),
(8, 1, 44, 44, 7, 0, '2021-09-17 12:18:58', '1970-01-01 00:00:00', -1),
(9, 1, 44, 44, 1, 0, '2021-09-17 12:18:58', '1970-01-01 00:00:00', -1),
(10, 1, 44, 44, 3, 0, '2021-09-17 12:18:58', '1970-01-01 00:00:00', -1),
(11, 1, 98, 96, 8, 0, '2021-09-26 10:43:49', '1970-01-01 00:00:00', 0),
(12, 1, 98, 96, 6, 0, '2021-09-26 10:43:49', '1970-01-01 00:00:00', 0),
(17, 1, 8, 8, 1, 0, '2021-09-26 12:05:55', '1970-01-01 00:00:00', 0),
(18, 1, 8, 8, 4, 0, '2021-09-26 12:05:55', '1970-01-01 00:00:00', 0),
(19, 1, 6, 6, 7, 0, '2021-09-26 12:33:12', '1970-01-01 00:00:00', 0),
(20, 1, 6, 6, 1, 0, '2021-09-26 12:33:12', '1970-01-01 00:00:00', 0),
(21, 1, 6, 6, 3, 0, '2021-09-26 12:33:12', '1970-01-01 00:00:00', 0),
(22, 1, 6, 6, 4, 0, '2021-09-26 12:33:12', '1970-01-01 00:00:00', 0),
(32, 1, 17, 97, 5, 0, '2021-09-26 16:21:53', '1970-01-01 00:00:00', 0),
(33, 1, 17, 97, 6, 0, '2021-09-26 16:21:53', '1970-01-01 00:00:00', 0),
(34, 1, 78, 78, 3, 0, '2021-09-26 18:56:52', '1970-01-01 00:00:00', 0),
(35, 1, 78, 78, 5, 0, '2021-09-26 18:56:52', '1970-01-01 00:00:00', 0),
(36, 1, 78, 78, 6, 0, '2021-09-26 18:56:52', '1970-01-01 00:00:00', 0),
(40, 1, 107, 98, 3, 0, '2021-09-26 20:36:15', '1970-01-01 00:00:00', 0),
(96, 1, 23, 23, 1, 0, '2021-09-28 08:30:04', '1970-01-01 00:00:00', 0),
(97, 1, 23, 23, 3, 0, '2021-09-28 08:30:04', '1970-01-01 00:00:00', 0),
(112, 1, 106, 101, 8, 0, '2021-09-28 08:58:42', '1970-01-01 00:00:00', 0),
(113, 1, 106, 101, 7, 0, '2021-09-28 08:58:42', '1970-01-01 00:00:00', 0),
(114, 1, 106, 101, 1, 0, '2021-09-28 08:58:42', '1970-01-01 00:00:00', 0),
(115, 1, 106, 101, 3, 0, '2021-09-28 08:58:42', '1970-01-01 00:00:00', 0),
(116, 1, 106, 101, 4, 0, '2021-09-28 08:58:43', '1970-01-01 00:00:00', 0),
(117, 1, 106, 101, 5, 0, '2021-09-28 08:58:43', '1970-01-01 00:00:00', 0),
(118, 1, 106, 101, 6, 0, '2021-09-28 08:58:43', '1970-01-01 00:00:00', 0),
(132, 1, 88, 0, 11, 6, '2021-09-29 12:24:23', '1970-01-01 00:00:00', 0),
(133, 1, 88, 0, 12, 6, '2021-09-29 12:46:54', '1970-01-01 00:00:00', 0),
(134, 1, 88, 0, 13, 6, '2021-09-29 12:47:13', '1970-01-01 00:00:00', 0),
(135, 1, 88, 0, 14, 6, '2021-09-29 12:47:31', '1970-01-01 00:00:00', 0),
(136, 1, 88, 0, 15, 6, '2021-09-29 12:47:42', '1970-01-01 00:00:00', 0),
(137, 1, 88, 0, 17, 6, '2021-09-29 12:48:11', '1970-01-01 00:00:00', 0),
(142, 1, 109, 103, 9, 0, '2021-09-29 15:14:23', '1970-01-01 00:00:00', 0),
(143, 1, 109, 103, 11, 0, '2021-09-29 15:14:23', '1970-01-01 00:00:00', 0),
(144, 1, 109, 103, 12, 0, '2021-09-29 15:14:23', '1970-01-01 00:00:00', 0),
(145, 1, 109, 103, 14, 0, '2021-09-29 15:14:23', '1970-01-01 00:00:00', 0),
(146, 1, 13, 13, 14, 3, '2021-09-29 17:18:09', '1970-01-01 00:00:00', 0),
(147, 1, 110, 104, 12, 0, '2021-09-29 21:17:29', '1970-01-01 00:00:00', 0),
(148, 1, 110, 104, 13, 3, '2021-09-29 21:17:29', '1970-01-01 00:00:00', 0),
(160, 1, 64, 64, 3, 0, '2021-09-30 06:19:28', '1970-01-01 00:00:00', 0),
(161, 1, 64, 64, 16, 0, '2021-09-30 06:19:28', '1970-01-01 00:00:00', 0),
(162, 1, 64, 64, 17, 0, '2021-09-30 06:19:28', '1970-01-01 00:00:00', 0),
(163, 1, 103, 0, 7, 17, '2021-09-30 09:03:31', '1970-01-01 00:00:00', -1),
(179, 1, 2, 2, 7, 0, '2021-09-30 14:46:22', '1970-01-01 00:00:00', 0),
(180, 1, 2, 2, 9, 0, '2021-09-30 14:46:22', '1970-01-01 00:00:00', 0),
(181, 1, 2, 2, 13, 0, '2021-09-30 14:46:22', '1970-01-01 00:00:00', 0),
(182, 1, 2, 2, 14, 0, '2021-09-30 14:46:22', '1970-01-01 00:00:00', 0),
(183, 1, 111, 106, 4, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(184, 1, 111, 106, 6, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(185, 1, 111, 106, 10, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(186, 1, 111, 106, 12, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(187, 1, 111, 106, 14, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(188, 1, 111, 106, 15, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(189, 1, 111, 106, 16, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(190, 1, 111, 106, 17, 0, '2021-09-30 20:00:32', '1970-01-01 00:00:00', 0),
(195, 1, 59, 59, 13, 0, '2021-10-01 17:09:48', '1970-01-01 00:00:00', 0),
(196, 1, 59, 59, 14, 0, '2021-10-01 17:09:48', '1970-01-01 00:00:00', 0),
(197, 1, 59, 59, 15, 0, '2021-10-01 17:09:48', '1970-01-01 00:00:00', 0),
(198, 1, 103, 99, 5, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(199, 1, 103, 99, 9, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(200, 1, 103, 99, 10, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(201, 1, 103, 99, 11, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(202, 1, 103, 99, 12, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(203, 1, 103, 99, 13, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(204, 1, 103, 99, 14, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(205, 1, 103, 99, 15, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(206, 1, 103, 99, 16, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(207, 1, 103, 99, 17, 0, '2021-10-01 20:12:54', '1970-01-01 00:00:00', 0),
(224, 1, 95, 95, 3, 0, '2021-10-05 00:34:40', '1970-01-01 00:00:00', 0),
(225, 1, 95, 95, 9, 0, '2021-10-05 00:34:40', '1970-01-01 00:00:00', 0),
(232, 1, 22, 22, 3, 0, '2021-10-06 01:02:53', '1970-01-01 00:00:00', 0),
(233, 1, 22, 22, 13, 0, '2021-10-06 01:02:53', '1970-01-01 00:00:00', 0),
(234, 1, 22, 22, 17, 0, '2021-10-06 01:02:53', '1970-01-01 00:00:00', 0),
(235, 1, 33, 33, 10, 0, '2021-10-06 13:12:09', '1970-01-01 00:00:00', 0),
(236, 1, 33, 33, 11, 0, '2021-10-06 13:12:09', '1970-01-01 00:00:00', 0),
(237, 1, 33, 33, 12, 0, '2021-10-06 13:12:09', '1970-01-01 00:00:00', 0),
(238, 1, 33, 33, 15, 0, '2021-10-06 13:12:09', '1970-01-01 00:00:00', 0),
(239, 1, 11, 11, 1, 0, '2021-10-08 10:59:22', '1970-01-01 00:00:00', 0),
(247, 1, 112, 108, 5, 0, '2022-02-09 22:30:43', '1970-01-01 00:00:00', 0),
(248, 1, 112, 108, 6, 0, '2022-02-09 22:30:43', '1970-01-01 00:00:00', 0),
(249, 1, 112, 108, 11, 0, '2022-02-09 22:30:43', '1970-01-01 00:00:00', 0),
(250, 1, 112, 108, 12, 0, '2022-02-09 22:30:43', '1970-01-01 00:00:00', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `map_vrijwilligersdeelname`
--

DROP TABLE IF EXISTS `map_vrijwilligersdeelname`;
CREATE TABLE `map_vrijwilligersdeelname` (
  `id` int(11) NOT NULL,
  `event` int(11) NOT NULL,
  `vrijwilliger` int(11) NOT NULL,
  `definitief` int(3) NOT NULL DEFAULT '0',
  `voorkeur1` int(11) NOT NULL DEFAULT '0',
  `voorkeur2` int(11) NOT NULL DEFAULT '0',
  `voorkeur3` int(11) NOT NULL DEFAULT '0',
  `opmerkingen` text CHARACTER SET utf8,
  `interneopmerkingen` text CHARACTER SET utf8,
  `checksum` text CHARACTER SET utf8,
  `akkoordalgemenevoorwaarden` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `deelnameakkoord` int(3) NOT NULL DEFAULT '0',
  `deelnamecompleet` int(3) NOT NULL DEFAULT '0',
  `latestdocument` text CHARACTER SET utf8,
  `toegevoegd` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `gewijzigd` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `verloopt` date NOT NULL DEFAULT '1970-01-01',
  `del` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `map_vrijwilligersdeelname`
--

INSERT INTO `map_vrijwilligersdeelname` (`id`, `event`, `vrijwilliger`, `definitief`, `voorkeur1`, `voorkeur2`, `voorkeur3`, `opmerkingen`, `interneopmerkingen`, `checksum`, `akkoordalgemenevoorwaarden`, `deelnameakkoord`, `deelnamecompleet`, `latestdocument`, `toegevoegd`, `gewijzigd`, `verloopt`, `del`) VALUES
(1, 1, 1, 1, 7, 0, 0, ' - MarCom / Jacob Plooij assisteren', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(2, 1, 2, 1, 2, 4, 0, ' - fotografie, \'vliegende kiep-fotograaf, op bovenstaande dagen', NULL, 'e98fc966399abaac1b813b93cb188ebb', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-30 14:46:22', '1970-01-01', 0),
(3, 1, 3, 1, 0, 0, 0, ' - Productiecabine', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(4, 1, 4, 1, 17, 9, 4, ' - ', '', '1fed8aef0a0ed9e63d05ae0a8eedb9f8', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-26 17:17:39', '1970-01-01', 0),
(5, 1, 5, 1, 0, 0, 0, ' - uidelen van flyers,posters en festivalkranten,Begeleiden van Artiesten,Gastvrouw zijn,Vlogger', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(6, 1, 6, 1, 2, 6, 0, ' - Fotografie (ook doorgegeven aan Radboud)\r\nhet verhaal van Tareq, Circus Charms, Izhar Elias en Channa Malkin.\r\nza 9-9 en zo 10-9 Wilhelminaplein.', NULL, '87e3335f354e811f1c8ad239c144d975', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-26 12:33:12', '1970-01-01', 0),
(7, 1, 7, 1, 3, 7, 0, '', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(8, 1, 8, 1, 9, 4, 3, ' Ik zou wel graag met Omaira worden ingedeeld maar ik weet niet of zij zich voor deze dagen heeft aangemeld.', NULL, 'a1b221191faf5a0cc4f3f0f0137f5e14', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-26 12:05:55', '1970-01-01', 0),
(9, 1, 9, 1, 0, 0, 0, ' - Da Capo Leeuwarden', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(10, 1, 10, 1, 0, 0, 0, ' - Presentatie/(Top)artiestenbegeleiding', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(11, 1, 11, 1, 5, 3, 9, 'gastvrouw zijn, info stand bemensen, artiesten begeleiden, veel ervaring met spreken in het openbaar/op een podium.', '', 'b9626446e22f0e9dea4c8925fda2090a', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-10-08 10:59:22', '1970-01-01', 0),
(12, 1, 12, 1, 0, 0, 0, ' - Fotografie', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(13, 1, 13, 1, 3, 9, 0, ' ', NULL, 'b86ca30cb69f02644853f1e160b4df69', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-29 17:18:09', '1970-01-01', 0),
(14, 1, 14, 1, 0, 0, 0, ' - begeleiden artiesten/ gastvrouw ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(15, 1, 15, 1, 0, 0, 0, ' - MarCom', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(16, 1, 16, 1, 0, 0, 0, ' - Ass. Workshops instr. Maken', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(17, 1, 17, 1, 3, 9, 0, ' - Presentatie/Gastvrouw', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(18, 1, 18, 1, 0, 0, 0, ' - MarCom / Kleding en make-up ANDERS!', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(19, 1, 19, 1, 0, 0, 0, 'niet in 2021 - Gastvrouw', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(20, 1, 20, 1, 3, 9, 0, ' - Gastvrouw binnenlocatie/infostand', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(21, 1, 21, 1, 0, 0, 0, ' - ass. repetities en uitvoering ANDERS! /Fotograaf / gastvrouw PvJ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(22, 1, 22, 1, 9, 17, 4, ' - ', NULL, '25d4025489d7eabeafe72fc4c851144c', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-10-06 01:02:53', '1970-01-01', 0),
(23, 1, 23, 1, 3, 17, 0, ' - Da Capo Leeuwarden. Vipontvangst/Gastvrouw (Paleis van Justitie)\r\n', NULL, '507adff67e9e09ec04b6f34611ec5cca', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-28 08:30:04', '1970-01-01', 0),
(24, 1, 24, 1, 0, 0, 0, ' - ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(25, 1, 25, 0, 0, 0, 0, ' - infostand (via operakoor Amadeus)', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(26, 1, 26, 1, 0, 9, 0, ' - MarCom / Kleding en make-up ANDERS!', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(27, 1, 27, 1, 0, 0, 0, ' - MarCom', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(28, 1, 28, 1, 3, 9, 0, ' - Gastvrouw  ', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(29, 1, 29, 1, 0, 0, 0, ' - Fotografie', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(30, 1, 30, 1, 0, 0, 0, ' - Da Capo Leeuwarden. Gastvrouw de Bres', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(31, 1, 31, 1, 0, 0, 0, ' - Productie', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(32, 1, 32, 1, 0, 0, 0, ' - Fotografie', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(33, 1, 33, 1, 17, 4, 9, 'Kan niet 2 en 3 okt - Da Capo Leeuwarden\r\n', '', 'c54068b202ebc6890aadd4877d6f70d0', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-10-06 13:12:09', '1970-01-01', 0),
(34, 1, 34, 1, 8, 9, 0, 'Weekends. Overige dagen afhankelijk van rooster.   - Is docent. Met Mensen/chauffeur/runner. Niet tillen, Bewaken of vloggen.', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(35, 1, 35, 1, 0, 0, 0, ' - ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(36, 1, 36, 1, 0, 0, 0, ' - Fotografie Route van Rudolf 2019', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(37, 1, 37, 1, 0, 0, 0, ' - Catering', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(38, 1, 38, 1, 0, 0, 0, 'beschikbaar in 2022 - Begeleiding Noors orkest. Heeft Noors gestudeerd', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(39, 1, 39, 1, 0, 0, 0, 'beschikbaar - Fotografie', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(40, 1, 40, 1, 0, 0, 0, ' - Hand-en spandiensten. Chauffeur.', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(41, 1, 41, 1, 0, 0, 0, ' - ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(42, 1, 42, 1, 0, 0, 0, ' - Catering', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(43, 1, 43, 1, 0, 0, 0, ' - diverse werkzaamheden. Techniek', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(44, 1, 44, 1, 9, 3, 0, ' - infostand', '', '8e05eb8b3300c1cbab734dd6b144e85c', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-17 12:18:58', '1970-01-01', 0),
(45, 1, 45, 1, 9, 0, 0, ' - Da Capo Leeuwarden', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(46, 1, 46, 1, 0, 0, 0, ' - artiesten/publieksbegeleiding', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(47, 1, 47, 1, 0, 0, 0, ' - Marketing/communicatie', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(48, 1, 48, 1, 9, 0, 0, 'za.mo. 2 en 9 okt niet beschikbaar - infostand (via operakoor Amadeus)', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(49, 1, 49, 1, 9, 0, 0, 'za.mo. 2 en 9 okt niet beschikbaar - infostand (via operakoor Amadeus)', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(50, 1, 50, 1, 0, 0, 0, ' - Fotograaf, gastvrouw', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(51, 1, 51, 1, 0, 0, 0, ' - ANDERS 3.0', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(52, 1, 52, 0, 0, 0, 0, ' - infostand (via operakoor Amadeus)', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(53, 1, 53, 0, 0, 0, 0, ' - Fotografie. Chauffeur', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(54, 1, 54, 1, 0, 0, 0, ' - Fotografie', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(55, 1, 55, 1, 0, 0, 0, ' - ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(56, 1, 56, 1, 0, 0, 0, ' - Artist host. Backstage manager', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(57, 1, 57, 1, 0, 9, 0, '', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(58, 1, 58, 0, 0, 0, 0, 'Niet beschikbaar - Fotografie', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(59, 1, 59, 1, 8, 17, 3, ' - Familie Marianne. ', NULL, 'c1031298bfe2936b1eecd129c1f2de17', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-10-01 17:09:48', '1970-01-01', 0),
(60, 1, 60, 1, 0, 0, 0, ' - Familie Marianne ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(61, 1, 61, 1, 0, 0, 0, '2 t/m 10 okt - publieksbegeleiding', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(62, 1, 62, 1, 0, 0, 0, ' - dbieb (marketing/communicatie)', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(63, 1, 63, 1, 9, 0, 0, ' - ', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(64, 1, 64, 1, 2, 2, 0, 'fotografie alleen mogelijk: za. 2 okt vanaf 1800 uur.    zo. 3 okt vanaf 1400 uur.   zo 10 okt de hele dag.', NULL, '5b35079cce04fa5203a778441226b29e', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-30 06:19:28', '1970-01-01', 0),
(65, 1, 65, 1, 0, 0, 0, ' - Pleinassistent', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(66, 1, 66, 1, 0, 0, 0, ' - Vip ontvangst', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(67, 1, 67, 1, 0, 0, 0, ' - Vip ontvangst', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(68, 1, 68, 1, 0, 0, 0, ' - artiestenbegeleiding', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(69, 1, 69, 1, 0, 0, 0, ' - Symposium', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(70, 1, 70, 1, 0, 0, 0, ' - Da Capo Leeuwarden', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(71, 1, 71, 1, 0, 9, 0, ' - Kleding en make-up ANDERS!', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(72, 1, 72, 1, 0, 0, 0, ' - Chauffeur (top)artiesten', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(73, 1, 73, 1, 0, 0, 0, '', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(74, 1, 74, 1, 9, 0, 0, ' - Da Capo Leeuwarden', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(75, 1, 75, 1, 0, 0, 0, ' - Flyeraar samen met Anita van der Sluis', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(76, 1, 76, 1, 0, 9, 0, ' - Kleding en make-up ANDERS!', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(77, 1, 77, 0, 3, 9, 0, ' - Gastheer en/of bemensen infostands', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(78, 1, 78, 1, 2, 8, 0, ' - fotografie', NULL, 'bfbac746e1c8e0584896e0b057ca8832', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-09-26 18:56:52', '1970-01-01', 0),
(79, 1, 79, 1, 0, 0, 0, ' - Hand-en spandiensten', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(80, 1, 80, 1, 0, 0, 0, ' -  artiesten- en publieksbegeleiding en gastheerschap op locatie.', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(81, 1, 81, 0, 0, 0, 0, ' - Fotografie', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(82, 1, 82, 1, 3, 9, 0, ' - Da Capo Leeuwarden. Gastvrouw (Doopsgezinde kerk)', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(83, 1, 83, 0, 0, 0, 0, ' - Klank- en pleinregisseur', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(84, 1, 84, 1, 0, 0, 0, ' - Social Media', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(85, 1, 85, 1, 0, 0, 0, ' - infostand (via operakoor Amadeus)', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(86, 1, 86, 1, 9, 0, 0, ' - Da Capo Leeuwarden', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(87, 1, 87, 1, 0, 0, 0, ' - kindervoorstellingen', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(88, 1, 88, 1, 0, 0, 0, ' - MarComteam', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(89, 1, 89, 1, 0, 9, 0, ' - Kleding en make-up ANDERS!', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(90, 1, 90, 1, 0, 0, 0, ' - Vip ontvangst/ANDERS!', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', -1),
(91, 1, 91, 1, 0, 9, 0, 'weekends overdag - Kindervoorstellingen', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(92, 1, 92, 1, 0, 0, 0, ' - bemensen informatiestand', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(93, 1, 93, 1, 0, 0, 0, 'niet laatste weekend - ', NULL, NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(94, 1, 94, 1, 3, 9, 0, ' - gastvrouw, informatie stand etc', '', NULL, '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(95, 1, 95, 1, 9, 17, 4, '', '', 'b77a9ebad16e11101eef75bcee0df796', '', 0, 0, NULL, '1970-01-01 00:00:00', '2021-10-05 00:34:40', '1970-01-01', 0),
(96, 1, 98, 1, 3, 3, 0, 'Bij de functies heb ik maar even wat ingevuld ivm dat het verplicht is en ik anders dit formulier niet kan versturen. \r\n\r\nGraag wil ik worden ingezet als backstage manager en of als artiesten begeleidster (artisthost) deze taken doe ik al jaren. Jan gaastra weet van mijn kwaliteiten. Heb wel eens een productie van hem verzorgd.\r\n\r\nPs ook wil ik tussendoor ook wel foto\'s maken voor sociaal media zoals Facebook, ik heb eigen data.\r\n\r\nWhatsApp mij gerust bij vragen\r\nOf mailen kan uiteraard ook ', NULL, 'ff27ba77e9af6ff54570152efa106af3', '2021-09-26 10:45:55', 0, 0, NULL, '2021-09-26 10:43:49', '2021-09-26 10:43:49', '1970-01-01', 0),
(97, 1, 100, 1, 3, 9, 0, 'Door de week na 18 uur. Verder voor 8,9 en 10 al doorgegeven. Maar zie ik niet terug hier.', NULL, '9921daf3514545656cf8ea2020f2cae2', '2021-09-26 16:11:00', 0, 0, NULL, '2021-09-26 16:10:34', '2021-09-26 16:21:53', '1970-01-01', 0),
(98, 1, 102, 1, 8, 17, 9, 'Ik had me al opgegeven voor een drietal dagen. Ik begreep dat het tot en met 10 oktober zou duren. ', NULL, '6c7908de20eac5e2a476475600b54ef6', '2021-09-26 20:37:37', 0, 0, NULL, '2021-09-26 20:36:15', '2021-09-26 20:36:15', '1970-01-01', 0),
(99, 1, 103, 1, 17, 4, 9, '', NULL, '060d1ef31d6e2081299b378cb5db4654', '2021-09-27 16:53:13', 0, 0, NULL, '2021-09-27 16:52:53', '2021-10-01 20:12:54', '1970-01-01', 0),
(100, 1, 105, 1, 0, 0, 0, '', '', '7a8c3068a0dda1fba67a07fb13c0a69a', '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(101, 1, 106, 1, 3, 9, 4, '', '', 'edbc56d2d9b8aef1862deb7991afc1b4', '2021-09-28 08:59:07', 0, 0, NULL, '2021-09-28 08:40:40', '2021-09-28 08:58:42', '1970-01-01', 0),
(102, 1, 108, 1, 0, 0, 0, '', '', 'cd47e2ab0a7faa5636a229bbb41bbbc5', '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(103, 1, 109, 1, 9, 8, 3, '', NULL, 'fc1cc31c58b484e3df6cd56dbf13e6b8', '2021-09-29 15:15:09', 0, 0, NULL, '2021-09-29 15:13:49', '2021-09-29 15:14:23', '1970-01-01', 0),
(104, 1, 110, 1, 3, 17, 0, 'Ivm met ingelaste repetities kan ik helaas niet heel veel. ', '', 'c23de9a379becc4e587a1abbad5f7c7d', '', 0, 0, NULL, '2021-09-29 21:17:29', '2021-09-29 21:17:29', '1970-01-01', 0),
(105, 1, 107, 1, 0, 0, 0, '', '', '80ef9a5c8c0300f8cd54a540f5515fbe', '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(106, 1, 111, 1, 17, 4, 3, 'Opmerkingen: geen.\r\nIngedeeld: leuk als dit met mede Da Capo lid is, maar ieder ander is ook geen probleem, zijn met z\'n allen voor hetzelfde bezig.\r\nSpecifiek optreden: zijn er veel; Saxofoonkwartet*, Euphonia Wommels, Oranje Bolsward, On the move, Excelsior Schraard*, Dutch Swing Collegeband*, Nieuwlicht projectorkest, Frysk Fanfare, Calefax* (* voorkeur)', NULL, '7304ee9c90a241b5b8fc9a24344679be', '2021-09-30 20:01:55', 0, 0, NULL, '2021-09-30 20:00:32', '2021-09-30 20:00:32', '1970-01-01', 0),
(107, 1, 101, 1, 0, 0, 0, '', '', '37b0e3c5df9a360566420c31a572c833', '', 0, 0, NULL, '1970-01-01 00:00:00', '1970-01-01 00:00:00', '1970-01-01', 0),
(108, 1, 112, 1, 9, 3, 0, '', NULL, 'e0b692cc1cded34813f26c0f230c3dfc', '2022-02-09 21:59:47', 0, 0, NULL, '2021-10-27 11:27:31', '2022-02-09 22:30:43', '1970-01-01', 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `custom_aanbodresultaat`
--
ALTER TABLE `custom_aanbodresultaat`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_aanbodvragen`
--
ALTER TABLE `custom_aanbodvragen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_acties`
--
ALTER TABLE `custom_acties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_adressen`
--
ALTER TABLE `custom_adressen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_antwoorden`
--
ALTER TABLE `custom_antwoorden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_benodigdheden`
--
ALTER TABLE `custom_benodigdheden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_catering`
--
ALTER TABLE `custom_catering`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_cateringvoorkeur`
--
ALTER TABLE `custom_cateringvoorkeur`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_centralemeldingen`
--
ALTER TABLE `custom_centralemeldingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_chat`
--
ALTER TABLE `custom_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_composities`
--
ALTER TABLE `custom_composities`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_contactpersonen`
--
ALTER TABLE `custom_contactpersonen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_defaultacties`
--
ALTER TABLE `custom_defaultacties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_diensten`
--
ALTER TABLE `custom_diensten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_doelgroepen`
--
ALTER TABLE `custom_doelgroepen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_donatie`
--
ALTER TABLE `custom_donatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_evaluatie`
--
ALTER TABLE `custom_evaluatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_favorieten`
--
ALTER TABLE `custom_favorieten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_financieel`
--
ALTER TABLE `custom_financieel`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_fotos`
--
ALTER TABLE `custom_fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_gasten`
--
ALTER TABLE `custom_gasten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_hotel`
--
ALTER TABLE `custom_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_hotelbeschikbaarheid`
--
ALTER TABLE `custom_hotelbeschikbaarheid`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_hotelgasten`
--
ALTER TABLE `custom_hotelgasten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_items`
--
ALTER TABLE `custom_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_log_scan`
--
ALTER TABLE `custom_log_scan`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_marketingcontent`
--
ALTER TABLE `custom_marketingcontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_match`
--
ALTER TABLE `custom_match`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_multivalue`
--
ALTER TABLE `custom_multivalue`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_planningsregels`
--
ALTER TABLE `custom_planningsregels`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_poules`
--
ALTER TABLE `custom_poules`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_reacties`
--
ALTER TABLE `custom_reacties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_rollen`
--
ALTER TABLE `custom_rollen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_rooms`
--
ALTER TABLE `custom_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_ticketextraproducts`
--
ALTER TABLE `custom_ticketextraproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_ticketsales`
--
ALTER TABLE `custom_ticketsales`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `custom_vervoer`
--
ALTER TABLE `custom_vervoer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_color`
--
ALTER TABLE `ek_gantt_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_functie`
--
ALTER TABLE `ek_gantt_functie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_functieevent`
--
ALTER TABLE `ek_gantt_functieevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_links`
--
ALTER TABLE `ek_gantt_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_locatie`
--
ALTER TABLE `ek_gantt_locatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_planningtype`
--
ALTER TABLE `ek_gantt_planningtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_tasks`
--
ALTER TABLE `ek_gantt_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ek_gantt_timeperiod`
--
ALTER TABLE `ek_gantt_timeperiod`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_activities`
--
ALTER TABLE `lst_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_activities_categorie`
--
ALTER TABLE `lst_activities_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_activities_defintiefstatus`
--
ALTER TABLE `lst_activities_defintiefstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_activities_statuses`
--
ALTER TABLE `lst_activities_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_activities_wettelijketaak`
--
ALTER TABLE `lst_activities_wettelijketaak`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_benodigdheden`
--
ALTER TABLE `lst_benodigdheden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_benodigdhedenperstatus`
--
ALTER TABLE `lst_benodigdhedenperstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_categorie`
--
ALTER TABLE `lst_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_cateringvoorkeuren`
--
ALTER TABLE `lst_cateringvoorkeuren`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_centralemeldingcategorie`
--
ALTER TABLE `lst_centralemeldingcategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_contactpersoonsoorten`
--
ALTER TABLE `lst_contactpersoonsoorten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_contributie`
--
ALTER TABLE `lst_contributie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_dienstcategorieen`
--
ALTER TABLE `lst_dienstcategorieen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_diensten`
--
ALTER TABLE `lst_diensten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_documentsoort`
--
ALTER TABLE `lst_documentsoort`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_doelgroep`
--
ALTER TABLE `lst_doelgroep`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_doelgroepen`
--
ALTER TABLE `lst_doelgroepen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_email`
--
ALTER TABLE `lst_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_financieelcategorieen`
--
ALTER TABLE `lst_financieelcategorieen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_functies`
--
ALTER TABLE `lst_functies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_gastenlijsten`
--
ALTER TABLE `lst_gastenlijsten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_gasttypes`
--
ALTER TABLE `lst_gasttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_inschrijfstatus`
--
ALTER TABLE `lst_inschrijfstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_locatie`
--
ALTER TABLE `lst_locatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_lookup`
--
ALTER TABLE `lst_lookup`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_lookupcategories`
--
ALTER TABLE `lst_lookupcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_materiaalitems`
--
ALTER TABLE `lst_materiaalitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_materialen`
--
ALTER TABLE `lst_materialen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_pdf`
--
ALTER TABLE `lst_pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_planningstatus`
--
ALTER TABLE `lst_planningstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_portaalontwerp`
--
ALTER TABLE `lst_portaalontwerp`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_poules`
--
ALTER TABLE `lst_poules`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_programma`
--
ALTER TABLE `lst_programma`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_rapportages`
--
ALTER TABLE `lst_rapportages`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_rapportagevelden`
--
ALTER TABLE `lst_rapportagevelden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_rapportagezichtbaarheid`
--
ALTER TABLE `lst_rapportagezichtbaarheid`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_reserveringsstatus`
--
ALTER TABLE `lst_reserveringsstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_rollen`
--
ALTER TABLE `lst_rollen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_roomevent`
--
ALTER TABLE `lst_roomevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_rooms`
--
ALTER TABLE `lst_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_room_locations`
--
ALTER TABLE `lst_room_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_room_statuses`
--
ALTER TABLE `lst_room_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_room_types`
--
ALTER TABLE `lst_room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_sector`
--
ALTER TABLE `lst_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_teambenodigdheid`
--
ALTER TABLE `lst_teambenodigdheid`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_teamgroepen`
--
ALTER TABLE `lst_teamgroepen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_teamperioden`
--
ALTER TABLE `lst_teamperioden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_teams`
--
ALTER TABLE `lst_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_thema`
--
ALTER TABLE `lst_thema`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_themavragen`
--
ALTER TABLE `lst_themavragen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_toegangszones`
--
ALTER TABLE `lst_toegangszones`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_vervoer`
--
ALTER TABLE `lst_vervoer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_vervoerlocaties`
--
ALTER TABLE `lst_vervoerlocaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_voorwaarden`
--
ALTER TABLE `lst_voorwaarden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `lst_wettelijketaak`
--
ALTER TABLE `lst_wettelijketaak`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_aanbod`
--
ALTER TABLE `map_aanbod`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_aandacht`
--
ALTER TABLE `map_aandacht`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_api`
--
ALTER TABLE `map_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_apikoppelingen`
--
ALTER TABLE `map_apikoppelingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_articles`
--
ALTER TABLE `map_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_auth`
--
ALTER TABLE `map_auth`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_autorisatie`
--
ALTER TABLE `map_autorisatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_autorisatierol`
--
ALTER TABLE `map_autorisatierol`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_bereiding`
--
ALTER TABLE `map_bereiding`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_blokkenschema`
--
ALTER TABLE `map_blokkenschema`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_changes`
--
ALTER TABLE `map_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_combination`
--
ALTER TABLE `map_combination`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_config`
--
ALTER TABLE `map_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_contractsjablonen`
--
ALTER TABLE `map_contractsjablonen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_correspondentie`
--
ALTER TABLE `map_correspondentie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_dailymail`
--
ALTER TABLE `map_dailymail`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_deelname`
--
ALTER TABLE `map_deelname`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_deelnemers`
--
ALTER TABLE `map_deelnemers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_documentgeneratie`
--
ALTER TABLE `map_documentgeneratie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_email`
--
ALTER TABLE `map_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_enquete`
--
ALTER TABLE `map_enquete`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_enqueteantwoorden`
--
ALTER TABLE `map_enqueteantwoorden`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `map_enqueteantwoorden` ADD FULLTEXT KEY `antwoorden` (`antwoorden`);

--
-- Indexen voor tabel `map_enqueteverwerken`
--
ALTER TABLE `map_enqueteverwerken`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_enquetevragen`
--
ALTER TABLE `map_enquetevragen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_evenementen`
--
ALTER TABLE `map_evenementen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_fasering`
--
ALTER TABLE `map_fasering`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_files`
--
ALTER TABLE `map_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_gebruikerlocaties`
--
ALTER TABLE `map_gebruikerlocaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_gebruikers`
--
ALTER TABLE `map_gebruikers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_gebruikersautorisatierol`
--
ALTER TABLE `map_gebruikersautorisatierol`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_gebruikertoegang`
--
ALTER TABLE `map_gebruikertoegang`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_hyperlinks`
--
ALTER TABLE `map_hyperlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_inschrijvingen`
--
ALTER TABLE `map_inschrijvingen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_log`
--
ALTER TABLE `map_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_mailadressen`
--
ALTER TABLE `map_mailadressen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_mailchimp`
--
ALTER TABLE `map_mailchimp`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_mapitems`
--
ALTER TABLE `map_mapitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_maplocations`
--
ALTER TABLE `map_maplocations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_mapparts`
--
ALTER TABLE `map_mapparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_maps`
--
ALTER TABLE `map_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_orderregels`
--
ALTER TABLE `map_orderregels`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_orders`
--
ALTER TABLE `map_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_organisaties`
--
ALTER TABLE `map_organisaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_organisationproduct`
--
ALTER TABLE `map_organisationproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_personen`
--
ALTER TABLE `map_personen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_podia`
--
ALTER TABLE `map_podia`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_portaal`
--
ALTER TABLE `map_portaal`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_portaalakkoord`
--
ALTER TABLE `map_portaalakkoord`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_portaalonderdeel`
--
ALTER TABLE `map_portaalonderdeel`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_portaalvelden`
--
ALTER TABLE `map_portaalvelden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_products`
--
ALTER TABLE `map_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_share`
--
ALTER TABLE `map_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_soortdeelnemer`
--
ALTER TABLE `map_soortdeelnemer`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_soorten`
--
ALTER TABLE `map_soorten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_soortevent`
--
ALTER TABLE `map_soortevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_startmenu`
--
ALTER TABLE `map_startmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_subproducts`
--
ALTER TABLE `map_subproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_tabbladen`
--
ALTER TABLE `map_tabbladen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_ticketevent`
--
ALTER TABLE `map_ticketevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_ticketextraproducts`
--
ALTER TABLE `map_ticketextraproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_ticketsales`
--
ALTER TABLE `map_ticketsales`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_ticketsoorten`
--
ALTER TABLE `map_ticketsoorten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_ticketvalidatie`
--
ALTER TABLE `map_ticketvalidatie`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_transacties`
--
ALTER TABLE `map_transacties`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_velden`
--
ALTER TABLE `map_velden`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_veldendoelgroepen`
--
ALTER TABLE `map_veldendoelgroepen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_vrijwilligers`
--
ALTER TABLE `map_vrijwilligers`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_vrijwilligersbeschikbaarheid`
--
ALTER TABLE `map_vrijwilligersbeschikbaarheid`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `map_vrijwilligersdeelname`
--
ALTER TABLE `map_vrijwilligersdeelname`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `custom_aanbodresultaat`
--
ALTER TABLE `custom_aanbodresultaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_aanbodvragen`
--
ALTER TABLE `custom_aanbodvragen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_acties`
--
ALTER TABLE `custom_acties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `custom_adressen`
--
ALTER TABLE `custom_adressen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_antwoorden`
--
ALTER TABLE `custom_antwoorden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_benodigdheden`
--
ALTER TABLE `custom_benodigdheden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_catering`
--
ALTER TABLE `custom_catering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `custom_cateringvoorkeur`
--
ALTER TABLE `custom_cateringvoorkeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `custom_centralemeldingen`
--
ALTER TABLE `custom_centralemeldingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_chat`
--
ALTER TABLE `custom_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_composities`
--
ALTER TABLE `custom_composities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT voor een tabel `custom_contactpersonen`
--
ALTER TABLE `custom_contactpersonen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT voor een tabel `custom_defaultacties`
--
ALTER TABLE `custom_defaultacties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_diensten`
--
ALTER TABLE `custom_diensten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT voor een tabel `custom_doelgroepen`
--
ALTER TABLE `custom_doelgroepen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_donatie`
--
ALTER TABLE `custom_donatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_evaluatie`
--
ALTER TABLE `custom_evaluatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_favorieten`
--
ALTER TABLE `custom_favorieten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_financieel`
--
ALTER TABLE `custom_financieel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `custom_fotos`
--
ALTER TABLE `custom_fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_gasten`
--
ALTER TABLE `custom_gasten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_hotel`
--
ALTER TABLE `custom_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT voor een tabel `custom_hotelbeschikbaarheid`
--
ALTER TABLE `custom_hotelbeschikbaarheid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `custom_hotelgasten`
--
ALTER TABLE `custom_hotelgasten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_items`
--
ALTER TABLE `custom_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT voor een tabel `custom_log_scan`
--
ALTER TABLE `custom_log_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_marketingcontent`
--
ALTER TABLE `custom_marketingcontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `custom_match`
--
ALTER TABLE `custom_match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_multivalue`
--
ALTER TABLE `custom_multivalue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_planningsregels`
--
ALTER TABLE `custom_planningsregels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `custom_poules`
--
ALTER TABLE `custom_poules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_reacties`
--
ALTER TABLE `custom_reacties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_rollen`
--
ALTER TABLE `custom_rollen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `custom_rooms`
--
ALTER TABLE `custom_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT voor een tabel `custom_ticketextraproducts`
--
ALTER TABLE `custom_ticketextraproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_ticketsales`
--
ALTER TABLE `custom_ticketsales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `custom_vervoer`
--
ALTER TABLE `custom_vervoer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_color`
--
ALTER TABLE `ek_gantt_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_functie`
--
ALTER TABLE `ek_gantt_functie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_functieevent`
--
ALTER TABLE `ek_gantt_functieevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_links`
--
ALTER TABLE `ek_gantt_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_locatie`
--
ALTER TABLE `ek_gantt_locatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_planningtype`
--
ALTER TABLE `ek_gantt_planningtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_tasks`
--
ALTER TABLE `ek_gantt_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `ek_gantt_timeperiod`
--
ALTER TABLE `ek_gantt_timeperiod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_activities`
--
ALTER TABLE `lst_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_activities_categorie`
--
ALTER TABLE `lst_activities_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_activities_defintiefstatus`
--
ALTER TABLE `lst_activities_defintiefstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_activities_statuses`
--
ALTER TABLE `lst_activities_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `lst_activities_wettelijketaak`
--
ALTER TABLE `lst_activities_wettelijketaak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_benodigdheden`
--
ALTER TABLE `lst_benodigdheden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_benodigdhedenperstatus`
--
ALTER TABLE `lst_benodigdhedenperstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_categorie`
--
ALTER TABLE `lst_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `lst_cateringvoorkeuren`
--
ALTER TABLE `lst_cateringvoorkeuren`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `lst_centralemeldingcategorie`
--
ALTER TABLE `lst_centralemeldingcategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `lst_contactpersoonsoorten`
--
ALTER TABLE `lst_contactpersoonsoorten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `lst_contributie`
--
ALTER TABLE `lst_contributie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_dienstcategorieen`
--
ALTER TABLE `lst_dienstcategorieen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `lst_diensten`
--
ALTER TABLE `lst_diensten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT voor een tabel `lst_documentsoort`
--
ALTER TABLE `lst_documentsoort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `lst_doelgroep`
--
ALTER TABLE `lst_doelgroep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `lst_doelgroepen`
--
ALTER TABLE `lst_doelgroepen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_email`
--
ALTER TABLE `lst_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_financieelcategorieen`
--
ALTER TABLE `lst_financieelcategorieen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `lst_functies`
--
ALTER TABLE `lst_functies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT voor een tabel `lst_gastenlijsten`
--
ALTER TABLE `lst_gastenlijsten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_gasttypes`
--
ALTER TABLE `lst_gasttypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_inschrijfstatus`
--
ALTER TABLE `lst_inschrijfstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_locatie`
--
ALTER TABLE `lst_locatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_lookup`
--
ALTER TABLE `lst_lookup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT voor een tabel `lst_lookupcategories`
--
ALTER TABLE `lst_lookupcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `lst_materiaalitems`
--
ALTER TABLE `lst_materiaalitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_materialen`
--
ALTER TABLE `lst_materialen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_pdf`
--
ALTER TABLE `lst_pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `lst_planningstatus`
--
ALTER TABLE `lst_planningstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `lst_portaalontwerp`
--
ALTER TABLE `lst_portaalontwerp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `lst_poules`
--
ALTER TABLE `lst_poules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_programma`
--
ALTER TABLE `lst_programma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `lst_rapportages`
--
ALTER TABLE `lst_rapportages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `lst_rapportagevelden`
--
ALTER TABLE `lst_rapportagevelden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `lst_rapportagezichtbaarheid`
--
ALTER TABLE `lst_rapportagezichtbaarheid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `lst_reserveringsstatus`
--
ALTER TABLE `lst_reserveringsstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_rollen`
--
ALTER TABLE `lst_rollen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `lst_roomevent`
--
ALTER TABLE `lst_roomevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `lst_rooms`
--
ALTER TABLE `lst_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `lst_room_locations`
--
ALTER TABLE `lst_room_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `lst_room_statuses`
--
ALTER TABLE `lst_room_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_room_types`
--
ALTER TABLE `lst_room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_sector`
--
ALTER TABLE `lst_sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_teambenodigdheid`
--
ALTER TABLE `lst_teambenodigdheid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_teamgroepen`
--
ALTER TABLE `lst_teamgroepen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_teamperioden`
--
ALTER TABLE `lst_teamperioden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT voor een tabel `lst_teams`
--
ALTER TABLE `lst_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `lst_thema`
--
ALTER TABLE `lst_thema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_themavragen`
--
ALTER TABLE `lst_themavragen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_toegangszones`
--
ALTER TABLE `lst_toegangszones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `lst_vervoer`
--
ALTER TABLE `lst_vervoer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `lst_vervoerlocaties`
--
ALTER TABLE `lst_vervoerlocaties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `lst_voorwaarden`
--
ALTER TABLE `lst_voorwaarden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lst_wettelijketaak`
--
ALTER TABLE `lst_wettelijketaak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_aanbod`
--
ALTER TABLE `map_aanbod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_aandacht`
--
ALTER TABLE `map_aandacht`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_api`
--
ALTER TABLE `map_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_apikoppelingen`
--
ALTER TABLE `map_apikoppelingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_articles`
--
ALTER TABLE `map_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_auth`
--
ALTER TABLE `map_auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_autorisatie`
--
ALTER TABLE `map_autorisatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT voor een tabel `map_autorisatierol`
--
ALTER TABLE `map_autorisatierol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `map_bereiding`
--
ALTER TABLE `map_bereiding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_blokkenschema`
--
ALTER TABLE `map_blokkenschema`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT voor een tabel `map_changes`
--
ALTER TABLE `map_changes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=826;

--
-- AUTO_INCREMENT voor een tabel `map_combination`
--
ALTER TABLE `map_combination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_config`
--
ALTER TABLE `map_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `map_contractsjablonen`
--
ALTER TABLE `map_contractsjablonen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_correspondentie`
--
ALTER TABLE `map_correspondentie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `map_dailymail`
--
ALTER TABLE `map_dailymail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `map_deelname`
--
ALTER TABLE `map_deelname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_deelnemers`
--
ALTER TABLE `map_deelnemers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_documentgeneratie`
--
ALTER TABLE `map_documentgeneratie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_email`
--
ALTER TABLE `map_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `map_enquete`
--
ALTER TABLE `map_enquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_enqueteantwoorden`
--
ALTER TABLE `map_enqueteantwoorden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_enqueteverwerken`
--
ALTER TABLE `map_enqueteverwerken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_enquetevragen`
--
ALTER TABLE `map_enquetevragen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_evenementen`
--
ALTER TABLE `map_evenementen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_fasering`
--
ALTER TABLE `map_fasering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_files`
--
ALTER TABLE `map_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT voor een tabel `map_gebruikerlocaties`
--
ALTER TABLE `map_gebruikerlocaties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_gebruikers`
--
ALTER TABLE `map_gebruikers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `map_gebruikersautorisatierol`
--
ALTER TABLE `map_gebruikersautorisatierol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `map_gebruikertoegang`
--
ALTER TABLE `map_gebruikertoegang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_hyperlinks`
--
ALTER TABLE `map_hyperlinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_inschrijvingen`
--
ALTER TABLE `map_inschrijvingen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_log`
--
ALTER TABLE `map_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_mailadressen`
--
ALTER TABLE `map_mailadressen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `map_mailchimp`
--
ALTER TABLE `map_mailchimp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_mapitems`
--
ALTER TABLE `map_mapitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_maplocations`
--
ALTER TABLE `map_maplocations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_mapparts`
--
ALTER TABLE `map_mapparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_maps`
--
ALTER TABLE `map_maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_orderregels`
--
ALTER TABLE `map_orderregels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_orders`
--
ALTER TABLE `map_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_organisaties`
--
ALTER TABLE `map_organisaties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_organisationproduct`
--
ALTER TABLE `map_organisationproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_personen`
--
ALTER TABLE `map_personen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT voor een tabel `map_podia`
--
ALTER TABLE `map_podia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_portaal`
--
ALTER TABLE `map_portaal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `map_portaalakkoord`
--
ALTER TABLE `map_portaalakkoord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `map_portaalonderdeel`
--
ALTER TABLE `map_portaalonderdeel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `map_portaalvelden`
--
ALTER TABLE `map_portaalvelden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `map_products`
--
ALTER TABLE `map_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_share`
--
ALTER TABLE `map_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT voor een tabel `map_soortdeelnemer`
--
ALTER TABLE `map_soortdeelnemer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_soorten`
--
ALTER TABLE `map_soorten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT voor een tabel `map_soortevent`
--
ALTER TABLE `map_soortevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT voor een tabel `map_startmenu`
--
ALTER TABLE `map_startmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT voor een tabel `map_subproducts`
--
ALTER TABLE `map_subproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_tabbladen`
--
ALTER TABLE `map_tabbladen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT voor een tabel `map_ticketevent`
--
ALTER TABLE `map_ticketevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `map_ticketextraproducts`
--
ALTER TABLE `map_ticketextraproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_ticketsales`
--
ALTER TABLE `map_ticketsales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_ticketsoorten`
--
ALTER TABLE `map_ticketsoorten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `map_ticketvalidatie`
--
ALTER TABLE `map_ticketvalidatie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_transacties`
--
ALTER TABLE `map_transacties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `map_velden`
--
ALTER TABLE `map_velden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT voor een tabel `map_veldendoelgroepen`
--
ALTER TABLE `map_veldendoelgroepen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT voor een tabel `map_vrijwilligers`
--
ALTER TABLE `map_vrijwilligers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT voor een tabel `map_vrijwilligersbeschikbaarheid`
--
ALTER TABLE `map_vrijwilligersbeschikbaarheid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT voor een tabel `map_vrijwilligersdeelname`
--
ALTER TABLE `map_vrijwilligersdeelname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
